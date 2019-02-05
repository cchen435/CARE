#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Support/Debug.h>
#include <llvm/Support/FileSystem.h>

#include <iomanip>
#include <set>

#include "Care.h"

#include "tb.h"

using namespace llvm;

bool CarePass::isMemAccInst(Instruction *Insn) {
  if (isa<StoreInst>(Insn) || isa<LoadInst>(Insn)) return true;
  return false;
}

Value *CarePass::getPointerOperand(Instruction *Insn) {
  if (auto LI = dyn_cast<LoadInst>(Insn)) {
    return LI->getPointerOperand();
  } else if (auto SI = dyn_cast<StoreInst>(Insn)) {
    return SI->getPointerOperand();
  } else {
    llvm_unreachable("Expecting Load/Store Instruction only");
  }
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
  hasDebugInfo = M.getDwarfVersion() ? true : false;
  if (!hasDebugInfo) DbgInfoBuilder = new CAREDIBuilder(M);
  CareM = new Module("Care", getGlobalContext());
  CareM->setTargetTriple(M.getTargetTriple());
  CareM->setDataLayout(M.getDataLayout());
}

std::string CarePass::getKey(DebugLoc loc) {
  MHASH mhd = mhash_init(MHASH_MD5);
  assert(mhd != MHASH_FAILED);

  int lineno = loc.getLine();
  int colno = loc.getCol();
  auto scope = dyn_cast<DIScope>(loc.getScope());
  std::string str = scope->getFilename();
  str += "/" + std::to_string(lineno) + "/" + std::to_string(colno);

  unsigned char buf[16];
  mhash(mhd, str.c_str(), str.size());
  mhash_deinit(mhd, buf);
  char key[32];
  for (int i = 0; i < 16; i++) sprintf(&key[2 * i], "%02x", buf[i]);

  std::string result(key);

  DEBUG_WITH_TYPE("RTB", {
    dbgs() << "getKey for File: " << scope->getFilename()
           << ", Line: " << lineno << ", Col: " << colno
           << "\n\tMD5 CStr: " << result << "\n\tMD5 Char: ";
    for (int i = 0; i < 32; i++) fprintf(stdout, "%c", key[i]);
    dbgs() << "\n";
  });

  return result;
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

    DEBUG_WITH_TYPE("info",
                    dbgs() << "Working on Function: " << F.getName() << "!\n");

    DISubprogram *DIFunc = nullptr;
    std::set<Value *> Variables;
    if (!hasDebugInfo) DIFunc = DbgInfoBuilder->createDIFunction(F);
    for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
      if (!isMemAccInst(&*I)) continue;

      Function *kernel;
      std::set<Value *> params;
      std::tie(kernel, params) = buildRecoveryKernel(&*I);
      Variables.insert(params.begin(), params.end());

      dbgs() << "created a recovery kernel: "
             << "\n\tname: " << kernel->getName()
             << "\n\tFunctionType: " << *kernel->getFunctionType() << "\n";

      DebugLoc loc;
      // get the debug info for the memory access instruction
      // create one if does not exists
      if (hasDebugInfo)
        loc = I->getDebugLoc();
      else
        loc = DbgInfoBuilder->setDIDebugLoc(&*I, DIFunc);

      // build the recovery kernel table
      std::string key = getKey(loc);
      std::vector<std::string> pnames;
      for (auto it = params.begin(); it != params.end(); it++)
        pnames.push_back(getOrCreateValueName(*it));

      DEBUG_WITH_TYPE("RTB", {
        dbgs() << "Create RTB Entry: "
               << "\n\tKey: " << key << "\n\tKernel: " << kernel->getName()
               << "\n\tParams: ";
        for (unsigned i = 0; i < pnames.size(); i++) dbgs() << pnames[i] << " ";
      });
      care_tb_add_record(rtb, key, kernel, pnames);

      // promote the debug data to all of its binary users
      // since in x86 architecture, the binary operation could
      // be merged with a memort access instruction
      for (auto U : I->users())
        if (auto Insn = dyn_cast<BinaryOperator>(U)) Insn->setDebugLoc(loc);
    }

    if (!hasDebugInfo) {
      for (auto it = Variables.begin(); it != Variables.end(); it++)
        DbgInfoBuilder->createDIVariable(*it, DIFunc);
    }
  }

  if (!hasDebugInfo) DbgInfoBuilder->finalize();

  // save CareM to .bc file
  std::string program = M.getName().ltrim("./").split('.').first.str();
  std::string FileName = "libCARE" + program + ".bc";
  std::error_code EC;
  DEBUG_WITH_TYPE("info",
                  dbgs() << "Writing CareM module to " << FileName << "\n");
  llvm::raw_fd_ostream OS(FileName, EC, llvm::sys::fs::F_None);
  WriteBitcodeToFile(CareM, OS);
  OS.flush();

  // save recovery table
  FileName = program + ".tb";
  care_tb_save(FileName, rtb);

  DEBUG_WITH_TYPE("RTB", {
    dbgs() << "Recovery Table (" << FileName << "): \n";
    care_tb_print(rtb);
    pb::Table *tb = care_tb_load((char *)FileName.c_str());
    care_tb_print(tb);
    care_tb_release(tb);
  });

  care_tb_release(rtb);
  return true;
}

std::pair<Function *, std::set<Value *>> CarePass::buildRecoveryKernel(
    Instruction *Insn) {
  std::vector<Value *> Stmts;
  std::set<Value *> Params;
  DEBUG_WITH_TYPE("info",
                  dbgs() << "Build recovery kernel for: " << *Insn << "\n");

  Type *RetTy = getParamsAndStmts(Insn, Params, Stmts);

  Function *RK = createFunction(RetTy, Params, Stmts);
  return std::make_pair(RK, Params);
}

Type *CarePass::getParamsAndStmts(Instruction *I, std::set<Value *> &Params,
                                  std::vector<Value *> &Stmts) {
  std::vector<Value *> Workspace;

  DEBUG_WITH_TYPE("info", dbgs() << "Retriving calculations for Instruction: "
                                 << *I << "\n");

  Value *Addr = getPointerOperand(I);

  Workspace.insert(Workspace.begin(), Addr);
  while (Workspace.size()) {
    Value *V = Workspace.back();
    Workspace.pop_back();

    if (isa<Argument>(V) || isa<PHINode>(V) || isa<GlobalValue>(V) ||
        isa<CallInst>(V)) {
      Params.insert(V);
    } else if (auto I = dyn_cast<Instruction>(V)) {
      Stmts.push_back(V);
      DEBUG_WITH_TYPE("debug", dbgs() << "Working on: " << *V << "\n");
      for (unsigned i = 0; i < I->getNumOperands(); i++) {
        Value *Op = I->getOperand(i);
        if (isa<Constant>(Op)) continue;
        Workspace.insert(Workspace.begin(), Op);
      }
    } else {
      DEBUG_WITH_TYPE("debug",
                      dbgs() << "Meet an Unknown Value: " << *V << ": \n");
      llvm_unreachable("Unconsidered Value");
    }
  }
  std::reverse(Stmts.begin(), Stmts.end());

  DEBUG_WITH_TYPE("info", dbgs() << "Params:\n");
  DEBUG_WITH_TYPE("info", {
    int i = 0;
    for (auto it = Params.begin(); it != Params.end(); it++) {
      dbgs() << "\tParam[" << i++ << "]: " << **it << "\n";
    }
  });

  DEBUG_WITH_TYPE("info", dbgs() << "Body:\n");
  DEBUG_WITH_TYPE("info", for (unsigned i = 0; i < Stmts.size(); i++) {
    dbgs() << "\tStmt[" << i << "]: " << *Stmts[i] << "\n";
  });
  DEBUG_WITH_TYPE("info", dbgs() << "\n\n");

  return Addr->getType();
}

Function *CarePass::createFunction(Type *RetTy, std::set<Value *> Params,
                                   std::vector<Value *> Stmts) {
  DEBUG_WITH_TYPE("info", dbgs() << "Create Recovery Kernel Function\n");

  // a map from value in program module to the value in Care Module
  std::map<Value *, Value *> VMap;

  // create a new recovery kernel function to the CareM Module
  FunctionType *FuncTy = getFunctionType(Params);

  DEBUG_WITH_TYPE("info", dbgs() << "Create Function Type: " << FuncTy << "\n");

  std::string fname = getFunctionName();
  Function *RK = dyn_cast<Function>(CareM->getOrInsertFunction(fname, FuncTy));

  DEBUG_WITH_TYPE("info", dbgs() << "Init arguments and VMap with Params\n");

  // make sure we did the thing correctly, the number of Params is equal to
  // the number of arguments
  assert(Params.size() == RK->getArgumentList().size());

  // set the argument name based on related parameter name
  // and create a map from original values to function arguments
  std::set<Value *>::iterator pit;
  llvm::Function::arg_iterator ait;
  for (ait = RK->arg_begin(), pit = Params.begin(); ait != RK->arg_end();
       ait++, pit++) {
    ait->setName(getOrCreateValueName(*pit));
    VMap[(*pit)] = dyn_cast<Value>(ait);
  }

  DEBUG_WITH_TYPE("info", dbgs() << "Insert/Copying Instructions:\n");

  BasicBlock *BB = BasicBlock::Create(getGlobalContext(), "entry", RK);
  IRBuilder<> IRB(BB);
  for (Value *V : Stmts) {
    // avoid duplications, since vector is used when retrieving
    // computing instructions
    if (VMap.find(V) != VMap.end()) continue;
    DEBUG_WITH_TYPE("info", dbgs() << "Working on inst :" << *V << "\n");

    auto Insn = dyn_cast<Instruction>(V);
    if (!Insn) {
      DEBUG_WITH_TYPE(
          "dbg", dbgs() << "non-instruction value in Stmts: " << *V << "\n");
      llvm_unreachable("Meet a non-instruction Value in Stmts ");
    }

    std::vector<Value *> Operands;

    // get the operands for the instruction. For every
    // instruction, its operands should be created firstly.
    // if not, it means something is wrong
    DEBUG_WITH_TYPE("info", dbgs() << "Preparing Operands:\n");
    for (unsigned i = 0; i < Insn->getNumOperands(); i++) {
      Value *Op = Insn->getOperand(i);
      if (isa<Constant>(Op)) {
        Operands.push_back(Op);
      } else if (VMap.find(Op) != VMap.end()) {
        Operands.push_back(VMap[Op]);
      } else {
        dbgs() << "Unprocessed Op: " << *Op << "\n\tInstruction: " << *Insn
               << "\n";
        llvm_unreachable("The operand has not been processed");
      }
    }

    // create the instruction
    DEBUG_WITH_TYPE("info", dbgs() << "Create/Copy Inst:\n");

    Value *Inst = createInstruction(IRB, Insn, Operands);

    DEBUG_WITH_TYPE("info",
                    dbgs() << "New Instruction: " << *Inst << " is created.\n");

    VMap[Insn] = Inst;
  }

  DEBUG_WITH_TYPE("info", {
    Type *STy = Stmts.back()->getType();
    dbgs() << "Final Type Conv Inst: " << *(Stmts.back()) << "\tType: " << *STy
           << "\n";
  });

  Value *Final = IRB.CreateSExtOrBitCast(
      VMap[Stmts.back()], Type::getInt8PtrTy(getGlobalContext()));
  IRB.CreateRet(Final);

  DEBUG_WITH_TYPE("info", dbgs() << "Function: \n" << *RK);
  return RK;
}

FunctionType *CarePass::getFunctionType(std::set<Value *> Params) {
  std::vector<Type *> ParamTys;
  LLVMContext &Ctx = CareM->getContext();

  for (auto it = Params.begin(); it != Params.end(); it++) {
    Value *V = *it;
    Type *Ty = V->getType();
    ParamTys.push_back(Ty);
  }

  Type *RetTy = Type::getInt8PtrTy(Ctx);

  return FunctionType::get(RetTy, ParamTys, false /* VarArg */);
}

Value *CarePass::createInstruction(IRBuilder<> &IRB, Instruction *Insn,
                                   std::vector<Value *> Operands) {
  Value *Inst;
  Value *Callee;
  switch (Insn->getOpcode()) {
    case Instruction::Add:
      Inst = IRB.CreateAdd(Operands[0], Operands[1]);
      break;
    case Instruction::GetElementPtr:
      Inst = IRB.CreateGEP(
          Operands[0],
          std::vector<Value *>(Operands.begin() + 1, Operands.end()));
      break;
    case Instruction::SExt:
      Inst = IRB.CreateSExt(Operands[0], Insn->getType());
      break;
    case Instruction::Load:
      Inst = IRB.CreateLoad(Operands[0]);
      break;
    case Instruction::Mul:
      Inst = IRB.CreateMul(Operands[0], Operands[1]);
      break;
    case Instruction::Sub:
      Inst = IRB.CreateSub(Operands[0], Operands[1]);
      break;
    case Instruction::Shl:
      Inst = IRB.CreateShl(Operands[0], Operands[1]);
      break;
    case Instruction::BitCast:
      Inst = IRB.CreateBitCast(Operands[0], Insn->getType());
      break;
    case Instruction::Or:
      Inst = IRB.CreateOr(Operands[0], Operands[1]);
      break;
    case Instruction::Call:
      Callee = Operands.back();
      Operands.pop_back();
      Inst = IRB.CreateCall(Callee, Operands);
      break;

    default:
      DEBUG_WITH_TYPE("dbg", {
        dbgs() << "Unsupported Instruction: " << *Insn << "\n";
        for (unsigned i = 0; i < Operands.size(); i++) {
          dbgs() << "\n\tOperand[" << i << "]: " << *Operands[i];
        }
        for (unsigned i = 0; i < Insn->getNumOperands(); i++) {
          dbgs() << "\n\tOperand[" << i << "]: " << *Insn->getOperand(i);
        }
        dbgs() << "\n";
      });
      llvm_unreachable("Unsupported Instruction\n");
  }
  return Inst;
}

char CarePass::ID = 0;

static RegisterPass<CarePass> X("care", "care", false, false);