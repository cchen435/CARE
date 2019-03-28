
#ifndef _LIVENESSANALYSIS_H_
#define _LIVENESSANALYSIS_H_

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/Module.h>
#include <llvm/Pass.h>

#include <set>

using namespace llvm;

class LivenessAnalysis {
 public:
  LivenessAnalysis(Function &F, int DbgMode = false) {
    if (!DbgMode) doLivenessAnalysis(F);
  };

  bool isLiveAtPoint(Value *V, Instruction *pos);

 private:
#if 0
  typedef std::map<Instruction *, std::set<Value *>> LivenessMap;
#else
  typedef std::map<BasicBlock *, std::set<Value *> > LivenessMap;
#endif
  LivenessMap In, Out;

 private:
  std::set<Instruction *> getSuccessors(Instruction *I);
  void doLivenessAnalysis(Function &F);
};

#endif