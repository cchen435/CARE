//===-- DbgInfo.h - An inteface for adding debug information --------------===//
//
// This file defines interfaces used by care to create and insert debug
// information
//
// Reference:
// https://llvm.org/devmtg/2014-10/Slides/Christopher-DebugInfoTutorial.pdf
//
//===----------------------------------------------------------------------===//

#ifndef DBGINFO_H
#define DBGINFO_H

#include <llvm/IR/DIBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/Debug.h>

using namespace llvm;

class CAREDIBuilder {
 private:
  Module &M;
  int LANG;  // the original programming language
  DIBuilder *DBuilder;
  DICompileUnit *CU;
  DIFile *DFile;

  // a map from LLVM Value Type to DIType
  // it serves as cache purpose
  std::map<Type *, DIType *> Types;

  bool hasDebugInfo;

  // value to metadata map, used to get
  // variable names when dbg (-g) is enabled
  std::map<Value *, DbgInfoIntrinsic *> DbgValueMap;

 private:
  DIType *createDIType(Type *Ty);
  DISubroutineType *createDIFuncType(Function &F);
  DIType *getOrCreateDIType(Type *Ty);

 private:
  int getLineNumber() {
    static int line = 20000;
    return ++line;
  };
  int getColNumber() {
    static int col = 100;
    return ++col;
  };
  void resolveConflictDbgInfo(Module &M);

 public:
  CAREDIBuilder(Module &M, int lang = dwarf::DW_LANG_C);
  ~CAREDIBuilder() {
    if (!hasDebugInfo) DBuilder->finalize();
    dbgs() << "Finalize CAREDIBuilder and Free DBuilder\n";
    delete DBuilder;
  }

  void getDbgInfo(Function &F);
  DISubprogram *createDIFunction(Function &F);
  DILocalVariable *createDIVariable(Value *V, std::string VName, DIScope *Scop);
  DebugLoc setDIDebugLoc(Instruction *Insn, DIScope *Scop);
  DebugLoc getNearbyDebugLoc(Instruction *Insn);
  void finalize() { DBuilder->finalize(); }

 public:
  DISubprogram *getOrCreateDIFunction(Function &F);
  DebugLoc getOrCreateDebugLoc(Instruction *Insn, DIScope *Scop);
  bool hasDbgInfoIntrinsic(Value *V);
  DbgInfoIntrinsic *getDbgInfoIntrinsic(Value *V);
};

#endif
