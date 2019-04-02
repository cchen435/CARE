#ifndef _RKB_H_
#define _RKB_H_

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/Module.h>
#include <llvm/Pass.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>

#include "DbgInfo.h"
#include "LivenessAnalysis.h"
#include "tb.h"

using namespace llvm;

Value *getPointerOperand(Instruction *Insn);
std::string getFilename(StringRef filename);
std::string getOrCreateValueName(CAREDIBuilder *DIB, Value *V);

class RKBuilder {
 private:
  std::map<Value *, bool> Expandable;
  Instruction *MemAccInst;
  LivenessAnalysis &LA;
  CAREDIBuilder *DbgInfoBuilder;
  Module *CareM;
  std::set<Value *> Params;
  std::vector<Value *> Stmts;
  Function *RK;

 public:
  RKBuilder(Instruction *MemAccInst, LivenessAnalysis &LA, CAREDIBuilder *DIB,
            Module *M);
  std::set<Value *> getRKParams() { return Params; };
  Function *getRK() { return RK; };
  std::string getRawRecord(DebugLoc loc);

 private:
  bool isLive(Value *V);
  bool isCallingSimpleKernel(CallInst *CI);
  bool isStdlibVariable(Value *V);
  bool isTerminalValue(Value *V);
  /**
   * A Value V is expandable if it is a instruction
   * and its operands are live at memory access instruction
   * or Its operands are expandable
   */
  bool isExpandable(Value *V);

  bool isMemAlloc(Function *F);
  bool isMathKernel(Function *F);

 private:
  std::string getKernelName();
  void getParams(std::set<Value *> &Params);
  void getStmts(std::set<Value *> Params, std::vector<Value *> &Stmts);
  FunctionType *getFunctionType(std::set<Value *> Params);
  Value *createInstruction(IRBuilder<> &IRB, Instruction *Insn,
                           std::vector<Value *> Operands);
  Function *createRecoveryKernel(std::set<Value *> Params,
                                 std::vector<Value *> Stmts);

  bool build();
};

#endif