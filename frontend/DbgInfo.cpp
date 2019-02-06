//===-- DbgInfo.h - An inteface for adding debug information --------------===//
//
// This file defines interfaces used by care to create and insert debug
// information
//
// Reference:
// https://llvm.org/devmtg/2014-10/Slides/Christopher-DebugInfoTutorial.pdf
//
//===----------------------------------------------------------------------===//

#include "DbgInfo.h"
#include <iostream>

CAREDIBuilder::CAREDIBuilder(Module &M, int lang) : M(M), LANG(lang) {
  DBuilder = new DIBuilder(M);
  M.addModuleFlag(Module::Warning, "Dwarf Version", dwarf::DWARF_VERSION);
  M.addModuleFlag(Module::Warning, "Debug Info Version",
                  DEBUG_METADATA_VERSION);

  /**
   * FIXME; is it ok to use DW_LANG_C for C++ code ?
   */
  std::string MID = M.getName();

  /**
   * create a compiiler Unit
   */
  DFile = DBuilder->createFile(CU->getFilename(), CU->getDirectory());
  CU = DBuilder->createCompileUnit(LANG, DFile, "CARE", false, "", 0);
}

DIType *CAREDIBuilder::createDIType(Type *Ty) {
  DIType *ret = NULL;
  int width;
  if (Ty->isIntegerTy()) {
    switch (Ty->getIntegerBitWidth()) {
      case 8:
        ret = DBuilder->createBasicType("char", 8, dwarf::DW_ATE_signed_char);
        break;
      case 16:
        ret = DBuilder->createBasicType("short", 16, dwarf::DW_ATE_signed);
        break;
      case 32:
        ret = DBuilder->createBasicType("int", 32, dwarf::DW_ATE_signed);
        break;
      case 64:
        ret = DBuilder->createBasicType("long long", 64, dwarf::DW_ATE_signed);
        break;
      default:
        dbgs() << "unhandlered integer Type:" << *Ty << "\n";
        exit(EXIT_FAILURE);
    }
  } else if (Ty->isDoubleTy()) {
    ret = DBuilder->createBasicType("double", 64, dwarf::DW_ATE_float);
  } else if (Ty->isFloatTy()) {
    ret = DBuilder->createBasicType("float", 32, dwarf::DW_ATE_float);
  } else if (Ty->isPointerTy()) {
    ret = DBuilder->createPointerType(createDIType(Ty->getPointerElementType()),
                                      64, 64);
  } else {
    dbgs() << "unhandlered Type:" << *Ty << "\n";
    exit(EXIT_FAILURE);
  }
  return ret;
}

DISubroutineType *CAREDIBuilder::createDIFuncType(Function &F) {
  SmallVector<Metadata *, 8> EleDITys;

  FunctionType *FTy = F.getFunctionType();

  Type *retTy = FTy->getReturnType();

  DIType *DITy = getOrCreateDIType(retTy);
  EleDITys.push_back(DITy);

  int i, size;
  size = FTy->getNumParams();
  for (i = 0; i < size; i++) {
    Type *Ty = FTy->getParamType(i);
    DITy = getOrCreateDIType(Ty);
    EleDITys.push_back(DITy);
  }

  DITypeRefArray DITyArray = DBuilder->getOrCreateTypeArray(EleDITys);
  return DBuilder->createSubroutineType(DITyArray);
}

DISubprogram *CAREDIBuilder::createDIFunction(Function &F) {
  DISubroutineType *DISubpTy = createDIFuncType(F);
  int lineno = getLineNumber();
  int colno = getColNumber();
  DISubprogram *SP = DBuilder->createFunction(
      DFile /* Scop */, F.getName() /* F name */, F.getName() /* link name */,
      DFile /* File */, lineno /*LineNo*/, DISubpTy,
      false /* not externally visible */, true /*definition */,
      colno /*scope line */, DINode::FlagPrototyped, false /* optimized */);
  F.setSubprogram(SP);
  return SP;
}

DebugLoc CAREDIBuilder::setDIDebugLoc(Instruction *Insn, DIScope *Scop) {
  int Line = getLineNumber();
  int Col = getColNumber();
  DebugLoc loc = DebugLoc::get(Line /* line */, Col /* column */,
                               Scop /* scope */, nullptr /*InlinedAt */);
  Insn->setDebugLoc(loc);
  return loc;
}

DILocalVariable *CAREDIBuilder::createDIVariable(Value *V, std::string VName,
                                                 DIScope *Scop) {
  DILocalVariable *D;
  Instruction *pos;
  DIType *VDITy;

  int Line = getLineNumber();
  int Col = getColNumber();

  VDITy = getOrCreateDIType(V->getType());

  if (auto Insn = dyn_cast<Instruction>(V)) {
    D = DBuilder->createAutoVariable(Scop, VName, DFile, Line, VDITy, true);
    pos = Insn->getNextNode();
  } else if (auto arg = dyn_cast<Argument>(V)) {
    int ArgNo = arg->getArgNo() + 1;
    D = DBuilder->createParameterVariable(Scop, VName, ArgNo, DFile, Line,
                                          VDITy, true);
    pos = arg->getParent()->getEntryBlock().getFirstNonPHI();
  } else {
    dbgs() << "createDIVariable meet unexpected Value: " << *V << "\n";
  }

  DIExpression *DIExpr = DBuilder->createExpression();
  const DILocation *DL = DebugLoc::get(Line, Col, Scop);

  Instruction *dbg = DBuilder->insertDbgValueIntrinsic(V, D, DIExpr, DL, pos);
  return D;
}

DIType *CAREDIBuilder::getOrCreateDIType(Type *Ty) {
  if (Types.find(Ty) == Types.end()) Types[Ty] = createDIType(Ty);
  DEBUG_WITH_TYPE("info", dbgs() << "IR Type: " << *Ty
                                 << " ---> DIType: " << *Types[Ty] << "\n";);
  return Types[Ty];
}
