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
  int line, col;  // fake and unique line and col number

 private:
  DIType *createDIType(Type *Ty);
  DISubroutineType *createDIFuncType(Function &F);
  DIType *getOrCreateDIType(Type *Ty);

 private:
  int getLineNumber() { return ++line; };
  int getColNumber() { return ++col; };

 public:
  CAREDIBuilder(Module &M, int lang = dwarf::DW_LANG_C);
  ~CAREDIBuilder() {
    dbgs() << "Finalize CAREDIBuilder and Free DBuilder\n";
    delete DBuilder;
  }

  DISubprogram *createDIFunction(Function &F);
  DILocalVariable *createDIVariable(Value *V, std::string VName, DIScope *Scop);
  DebugLoc setDIDebugLoc(Instruction *Insn, DIScope *Scop);
  void finalize() { DBuilder->finalize(); }
};

#endif
