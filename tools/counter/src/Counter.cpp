#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Support/Debug.h>
#include <llvm/Support/FileSystem.h>

#include <set>

#include "Counter.h"

using namespace llvm;

bool CareCounter::isMemAccInst(Instruction *Insn) {
  if (isa<StoreInst>(Insn) || isa<LoadInst>(Insn)) return true;
  return false;
}

Value *CareCounter::getPointerOperand(Instruction *Insn) {
  if (auto LI = dyn_cast<LoadInst>(Insn)) {
    return LI->getPointerOperand();
  } else if (auto SI = dyn_cast<StoreInst>(Insn)) {
    return SI->getPointerOperand();
  } else {
    llvm_unreachable("Expecting Load/Store Instruction only");
  }
}
#if MODULE
bool CareCounter::runOnModule(Module &M) {
  Module::FunctionListType &Funcs = M.getFunctionList();
  for (Module::FunctionListType::iterator it = Funcs.begin(); it != Funcs.end();
       it++) {
    Function &F = *it;
    if (F.isDeclaration() || F.isIntrinsic()) continue;

    DEBUG_WITH_TYPE("info",
                    dbgs() << "Working on Function: " << F.getName() << "!\n");

    auto &LI = getAnalysis<LoopInfoWrapperPass>(F).getLoopInfo();
    auto &TL = getAnalysis<TargetLibraryInfoWrapperPass>().getTLI();
    auto &AC = getAnalysis<AssumptionCacheTracker>().getAssumptionCache(F);
    auto &DT = getAnalysis<DominatorTreeWrapperPass>(F).getDomTree();
    ScalarEvolution SE(F, TL, AC, DT, LI);

    for (inst_iterator it = inst_begin(F), end = inst_end(F); it != end; it++) {
      Instruction *I = &*it;
      if (!isMemAccInst(I)) continue;
      auto Addr = getPointerOperand(I);
      Loop *SL = LI.getLoopFor(I->getParent());
      int operations = 0;
      SCEV *AccessFunction = nullptr;
      if (SL) {
        AccessFunction = (SCEV *)SE.getSCEVAtScope(Addr, SL);
        DEBUG_WITH_TYPE("info", dbgs() << "Access Function for: " << *I
                                       << "\n\t" << *AccessFunction << "!\n");
        operations = Count(SE, AccessFunction);
        // operations *= SL->getLoopDepth();

      } else {
        AccessFunction = (SCEV *)SE.getSCEV(Addr);
        DEBUG_WITH_TYPE("info", dbgs() << "Access Function for (NoLoop): " << *I
                                       << "\n\t" << *AccessFunction << "!\n");
        operations = Count(SE, AccessFunction);
      }

      const SCEV *Base = SE.getPointerBase(AccessFunction);
      Value *BasePtr = dyn_cast<SCEVUnknown>(Base)->getValue();
      if (InstToCountMap.find(BasePtr) != InstToCountMap.end()) {
        operations += InstToCountMap[BasePtr];
      }
      InstToCountMap[I] = operations;
      if (!isBaseCalculationOnly(I)) {
        if (SL) {
          InLoopInsts++;
          if (InLoopHistgram.find(operations) == InLoopHistgram.end()) {
            InLoopHistgram[operations] = 0;
          }
          InLoopHistgram[operations] += 1;
        } else {
          OutLoopInsts++;
          if (OutLoopHistgram.find(operations) == OutLoopHistgram.end()) {
            OutLoopHistgram[operations] = 0;
          }
          OutLoopHistgram[operations] += 1;
        }
      }
    }
  }

  // print the statistic info
  dbgs() << "Statistiacs: \n";
  dbgs() << "Out of loop MemAccInsts (" << OutLoopInsts << "): \n";
  dbgs() << "Ops: Insts\n";
  for (auto it = OutLoopHistgram.begin(); it != OutLoopHistgram.end(); it++) {
    int Ops = it->first;
    int Insts = it->second;
    dbgs() << Ops << ": " << Insts << "\n";
  }

  dbgs() << "Inside loop MemAccInsts (" << InLoopInsts << "): \n";
  dbgs() << "Ops: Insts\n";
  for (auto it = InLoopHistgram.begin(); it != InLoopHistgram.end(); it++) {
    int Ops = it->first;
    int Insts = it->second;
    dbgs() << Ops << ": " << Insts << "\n";
  }

  return false;
}
#else
bool CareCounter::runOnFunction(Function &F) {
  if (F.isDeclaration() || F.isIntrinsic()) return false;

  DEBUG_WITH_TYPE("info",
                  dbgs() << "Working on Function: " << F.getName() << "!\n");

  auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
  auto &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();

  for (inst_iterator it = inst_begin(F), end = inst_end(F); it != end; it++) {
    Instruction *I = &*it;
    if (!isMemAccInst(I)) continue;
    auto Addr = getPointerOperand(I);
    Loop *SL = LI.getLoopFor(I->getParent());
    int operations = 0;
    if (SL) {
      const SCEV *AccessFunction = SE.getSCEVAtScope(Addr, SL);
      DEBUG_WITH_TYPE("info", dbgs() << "Access Function for: " << *I << "\n\t"
                                     << *AccessFunction << "!\n");
      operations = Count(SE, AccessFunction);
    } else {
      const SCEV *AccessFunction = SE.getSCEV(Addr);
      DEBUG_WITH_TYPE("info", dbgs() << "Access Function for (NoLoop): " << *I
                                     << "\n\t" << *AccessFunction << "!\n");
      operations = Count(SE, AccessFunction);
    }
    if (Histgram.find(operations) == Histgram.end()) {
      Histgram[operations] = 0;
    }
    Histgram[operations] += 1;
  }

  // print the statistic info
  dbgs() << "Ops: Insts\n";
  for (auto it = Histgram.begin(); it != Histgram.end(); it++) {
    int Ops = it->first;
    int Insts = it->second;
    dbgs() << Ops << ": " << Insts << "\n";
  }

  return false;
}
#endif

bool CareCounter::isBaseCalculationOnly(Instruction *Insn) {
  auto Load = dyn_cast<LoadInst>(Insn);
  if (!Load) return false;
  for (auto U : Load->users()) {
    if (!isa<GetElementPtrInst>(U)) return false;
  }
  return true;
}

int CareCounter::Count(ScalarEvolution &SE, const SCEV *Expr) {
  if (isa<SCEVUnknown>(Expr) || isa<SCEVConstant>(Expr) ||
      isa<SCEVCouldNotCompute>(Expr))
    return 0;
  else if (auto AddRec = dyn_cast<SCEVAddRecExpr>(Expr)) {
    auto Start = AddRec->getStart();
    auto Step = AddRec->getStepRecurrence(SE);
    return Count(SE, Start) + Count(SE, Step) + 2;
  } else if (auto Add = dyn_cast<SCEVAddExpr>(Expr)) {
    int sum = Add->getNumOperands() - 1;
    for (unsigned i = 0; i < Add->getNumOperands(); i++) {
      sum += Count(SE, Add->getOperand(i));
    }
    return sum;
  } else if (auto Mul = dyn_cast<SCEVMulExpr>(Expr)) {
    int sum = Mul->getNumOperands() - 1;
    for (unsigned i = 0; i < Mul->getNumOperands(); i++) {
      sum += Count(SE, Mul->getOperand(i));
    }
    return sum;
  } else if (auto Cast = dyn_cast<SCEVCastExpr>(Expr)) {
    return Count(SE, Cast->getOperand());
  } else if (auto SMax = dyn_cast<SCEVSMaxExpr>(Expr)) {
    int sum = SMax->getNumOperands() - 1;
    for (unsigned i = 0; i < SMax->getNumOperands(); i++) {
      sum += Count(SE, SMax->getOperand(i));
    }
    return sum;
  } else if (auto UMax = dyn_cast<SCEVUMaxExpr>(Expr)) {
    int sum = UMax->getNumOperands() - 1;
    for (unsigned i = 0; i < UMax->getNumOperands(); i++) {
      sum += Count(SE, UMax->getOperand(i));
    }
    return sum;
  } else if (auto UDiv = dyn_cast<SCEVUDivExpr>(Expr)) {
    return Count(SE, UDiv->getLHS()) + Count(SE, UDiv->getRHS()) + 1;
  }
  return 0;
}

char CareCounter::ID = 0;

static RegisterPass<CareCounter> X("Counter", "Counter", false, false);
