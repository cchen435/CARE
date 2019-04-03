#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Operator.h>
#include <llvm/Support/Debug.h>
#include <llvm/Support/FileSystem.h>

#include <mhash.h>
#include <experimental/filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <set>

#include "CarePass.h"
#include "LivenessAnalysis.h"
#include "RKB.h"
#include "tb.h"

using namespace llvm;

bool CarePass::isRecoverableMemAccInst(Instruction *I) {
  if (!isa<StoreInst>(I) && !isa<LoadInst>(I)) return false;
  auto Addr = getPointerOperand(I);
  if (isa<CastInst>(Addr)) Addr = dyn_cast<CastInst>(Addr)->getOperand(0);
  if (isa<AllocaInst>(Addr) || isa<GlobalVariable>(Addr) ||
      isa<ConstantExpr>(Addr))
    return false;
  return true;
}

std::string CarePass::getKey(DebugLoc loc) {
  MHASH mhd = mhash_init(MHASH_MD5);
  assert(mhd != MHASH_FAILED);

  int lineno = loc.getLine();
  int colno = loc.getCol();
  auto scope = dyn_cast<DIScope>(loc.getScope());
  std::string str = getFilename(scope->getFilename());
  str += "/" + std::to_string(lineno) + "/" + std::to_string(colno);

  unsigned char buf[16];
  mhash(mhd, str.c_str(), str.size());
  mhash_deinit(mhd, buf);
  char key[32];
  for (int i = 0; i < 16; i++) sprintf(&key[2 * i], "%02x", buf[i]);

  std::string result(key);

  DEBUG_WITH_TYPE("RTB", {
    dbgs() << "getKey for File: " << getFilename(scope->getFilename())
           << ", Line: " << lineno << ", Col: " << colno
           << "\n\tMD5 CStr: " << result << "\n\tMD5 Char: ";
    for (int i = 0; i < 32; i++) fprintf(stdout, "%c", key[i]);
    dbgs() << "\n";
  });

  return result;
}

/**
 * initialize(). * simiple initialization routine.
 * It will create a DIBuilder for the original module
 * which is used to create dbg data. It will also create
 * a new module for care which is to store recovery routines
 */
void CarePass::initialize(Module &M) {
  // if the module has no debug data (by checking whether the
  // module dwarf version information), a DIBuilder will be created.
  DbgInfoBuilder = new CAREDIBuilder(M);
  CareM = new Module("Care", M.getContext());
  CareM->setTargetTriple(M.getTargetTriple());
  CareM->setDataLayout(M.getDataLayout());
}

bool CarePass::runOnModule(Module &M) {
  initialize(M);

  // the recovery table holding the recovery kernel for MemAccInst
  pb::Table *rtb = care_tb_create();

  Module::FunctionListType &funcs = M.getFunctionList();
  for (Module::FunctionListType::iterator it = funcs.begin(), end = funcs.end();
       it != end; it++) {
    Function &F = *it;

    if (F.isDeclaration() || F.isIntrinsic()) continue;

    if (F.getName() != "chargei_init") continue;
    dbgs() << "Working on Function: " << F.getName() << "!\n";

    LivenessAnalysis LA(F);
    std::set<Value *> AllParams;
    DISubprogram *DIFunc = DbgInfoBuilder->getOrCreateDIFunction(F);
    for (inst_iterator i = inst_begin(F); i != inst_end(F); i++) {
      Instruction *I = &*i;
      if (!isRecoverableMemAccInst(I)) continue;
      // dbgs() << "Preocessing Insruction: " << *I << "\n";
      RKBuilder RKB(I, LA, DbgInfoBuilder, CareM);
      Function *kernel = RKB.getRK();
      if (!kernel) continue;

      std::set<Value *> params = RKB.getRKParams();
      AllParams.insert(params.begin(), params.end());

      // get the debugloc for the memory access instruction.
      // if it does not exist, create one, the debugloc is
      // critical for building recovery table
      DebugLoc loc = DbgInfoBuilder->getOrCreateDebugLoc(&*I, DIFunc);
      std::string key = getKey(loc);
      std::vector<std::string> pnames;
      for (auto it = params.begin(); it != params.end(); it++)
        pnames.push_back(getOrCreateValueName(DbgInfoBuilder, *it));
      care_tb_add_record(rtb, key, kernel, pnames);
      rktable += RKB.getRawRecord(loc);

      DEBUG_WITH_TYPE("RTB", {
        dbgs() << "Create RTB Entry: "
               << "\n\tKey: " << key << "\n\tKernel: " << kernel->getName()
               << "\n\tParams: ";
        for (unsigned i = 0; i < pnames.size(); i++) dbgs() << pnames[i] << " ";
      });

      // promote the debug data to some of its users
      // since in x86 architecture, the some operation could
      // be merged with a memort access instruction
      for (auto U : I->users()) {
        if (auto Insn = dyn_cast<BinaryOperator>(U)) Insn->setDebugLoc(loc);
        if (auto Insn = dyn_cast<CastInst>(U)) Insn->setDebugLoc(loc);
        if (auto Insn = dyn_cast<CmpInst>(U)) Insn->setDebugLoc(loc);
      }
    }

    // Create DILocalVariable for referenced values if it doesnot have
    for (auto it = AllParams.begin(); it != AllParams.end(); it++) {
      Value *V = *it;
      if (!DbgInfoBuilder->hasDbgInfoIntrinsic(V)) {
        std::string VName = getOrCreateValueName(DbgInfoBuilder, V);
        DbgInfoBuilder->createDIVariable(V, VName, DIFunc);
      }
    }
  }

  // save CareM to .bc file
  dbgs() << "Module Name: " << M.getName() << "\n";
  std::error_code EC;
  std::experimental::filesystem::path p =
      M.getName().split('/').second.split('.').first.str();
  std::string FileName, program = p.filename();

  // save recovery table
  FileName = program + "_care.tb";
  care_tb_save(FileName, rtb);

  FileName = program + "_care_raw.tb";
  std::ofstream rkraw;
  rkraw.open(FileName);
  rkraw << rktable;
  rkraw.close();

  dbgs() << "Writing CareM module\n";
  FileName = "lib" + program + "_care.bc";
  llvm::raw_fd_ostream OS(FileName, EC, llvm::sys::fs::F_None);
  WriteBitcodeToFile(CareM, OS);
  OS.flush();

  care_tb_release(rtb);

  return true;
}

char CarePass::ID = 0;

static RegisterPass<CarePass> X("carepass", "carepass", false, false);
