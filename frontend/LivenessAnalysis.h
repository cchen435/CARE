
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
  LivenessAnalysis(Function &F) { doLivenessAnalysis(F); };

  bool isLiveAtPoint(Instruction *insn, Instruction *pos);

 private:
  typedef std::map<Instruction *, std::set<Value *>> LivenessMap;
  LivenessMap In, Out;

 private:
  std::set<Instruction *> getSuccessors(Instruction *I);
  void doLivenessAnalysis(Function &F);
};

#endif