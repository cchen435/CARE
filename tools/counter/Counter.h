#ifndef _CARE_COUNTER_H_
#define _CARE_COUNTER_H_

#include <llvm/Analysis/AssumptionCache.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Analysis/ScalarEvolution.h>
#include <llvm/Analysis/ScalarEvolutionExpressions.h>
#include <llvm/Analysis/TargetLibraryInfo.h>
#include <llvm/IR/Dominators.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/Pass.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>

using namespace llvm;

#define MODULE 1

#if MODULE
struct CareCounter : public ModulePass {
#else
struct CareCounter : public FunctionPass {
#endif
 public:
  static char ID;
#if MODULE
  CareCounter() : ModulePass(ID) {
    InLoopHistgram.clear();
    OutLoopHistgram.clear();
    InLoopInsts = 0;
    OutLoopInsts = 0;
  }
#else
  CareCounter() : FunctionPass(ID) {}
#endif

  ~CareCounter() {
    // if (!DbgInfoBuilder) delete DbgInfoBuilder;
    // if (CareM) delete CareM;
  }
#if MODULE
  virtual bool runOnModule(Module &M) override;
#else
  virtual bool runOnFunction(Function &F) override;
#endif

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.setPreservesAll();
    AU.addRequired<LoopInfoWrapperPass>();
#if MODULE
    AU.addRequired<DominatorTreeWrapperPass>();
    AU.addRequired<TargetLibraryInfoWrapperPass>();
    AU.addRequired<AssumptionCacheTracker>();
#else
    AU.addRequired<ScalarEvolutionWrapperPass>();
#endif
  }

 private:
  int InLoopInsts, OutLoopInsts;
  std::map<int, int> InLoopHistgram;
  std::map<int, int> OutLoopHistgram;

  std::map<const Value *, int> InstToCountMap;

 private:
  bool isMemAccInst(Instruction *Insn);
  Value *getPointerOperand(Instruction *Insn);
  void getAddrInsts(Instruction *I, std::set<Instruction *> &AddrInsts);
  bool isBaseCalculationOnly(Instruction *Insn);
  int Count(ScalarEvolution &SE, const SCEV *Expr);
};

#endif