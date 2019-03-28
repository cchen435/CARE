#ifndef _CARE_PASS_H_
#define _CARE_PASS_H_

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/Module.h>
#include <llvm/Pass.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>

#include <mhash.h>

#include "DbgInfo.h"

using namespace llvm;

struct CarePass : public ModulePass {
 public:
  static char ID;
  CarePass() : ModulePass(ID) {}
  ~CarePass() {
    // if (!DbgInfoBuilder) delete DbgInfoBuilder;
    // if (CareM) delete CareM;
  }
  virtual bool runOnModule(Module &M);

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.setPreservesAll();
    AU.addRequired<LoopInfoWrapperPass>();
    // AU.addRequired<DominatorTreeWrapperPass>();
  }

 private:
  Module *CareM;  // the module for recovery routines

 private:
  Function *curr;
  /**
   * Data structures and methods for adding fake debug information
   *
   * If there is no original debug information (in most of time)
   * a fake debug information will be added
   *
   * Reference:
   * https://llvm.org/devmtg/2014-10/Slides/Christopher-DebugInfoTutorial.pdf
   */
  CAREDIBuilder *DbgInfoBuilder;

  std::string rktable;

 private:
  void initialize(Module &M);
  bool isCallingSimpleKernel(CallInst *CI);
  bool isMath(CallInst *CI);
  bool isMemAlloc(CallInst *CI);
  bool isLoadFromAlloca(Value *V);
  bool isStoreToAlloca(Value *V);
  bool isMemAccInst(Instruction *Insn);
  bool isStdlibVariable(Value *V);
  Value *getPointerOperand(Instruction *Insn);

  /**
   * when the program is compiled with -g flag this method is
   * called to setup the VMMap
   */
  void getDbgInfo(Module &M);

  /**
   * getParamsAndStmts is to retrive the computations for a
   * given memory access instruction, e.g. LoadInst and StoreInst
   * It will return the compute instruction as statements, and considers
   * PHINode as params. These are major componets for a recovery kernel.
   * It will also return the return type of the recovery kernel
   * FIXME: is it save to assume PHINode as Params ?
   */
  Type *getParamsAndStmts(Instruction *I, std::set<Value *> &Params,
                          std::vector<Value *> &Stmts);

  /**
   * it builds the recory kernel and return the values serves as params
   * we should create the dbg.value instrinsice for each of them to indicate
   * the location of these objects
   */
  std::pair<Function *, std::set<Value *>> buildRecoveryKernel(Instruction *I);

  Function *createFunction(Type *RetTy, std::set<Value *> Params,
                           std::vector<Value *> Stmts);

  std::string getFunctionName() {
    static int i = 0;
    if (curr)
      return "care_recover_" + curr->getName().str() + "_k" +
             std::to_string(++i);
    else
      return "care_recover_k" + std::to_string(++i);
  };

  /**
   * get the human readable name for the value. if value have original
   * name from source code, we will use that one, otherwise a fake one
   * will be generated.
   */
  std::string getOrCreateValueName(Value *V);
  std::string getFilename(StringRef filename);
  std::string getKey(DebugLoc Loc);

  /**
   * create a llvm Function Type based on types of params
   * the return type for the function is always a void pointer (void *)
   * int LLVM IR, void pointer is represented as i8*
   */
  FunctionType *getFunctionType(std::set<Value *> Params);

  Value *createInstruction(IRBuilder<> &IRB, Instruction *Insn,
                           std::vector<Value *> Operands);
};

#endif
