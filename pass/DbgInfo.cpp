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
  CU = DBuilder->createCompileUnit(LANG, MID, ".", "CARE", false, "", false);

  DFile = DBuilder->createFile(CU->getFilename(), CU->getDirectory());
}

DIType *CAREDIBuilder::createDIType(Type *Ty) {
  DIType *ret = NULL;
  int width;
  if (Ty->isIntegerTy()) {
    switch (Ty->getIntegerBitWidth()) {
      case 8:
        ret =
            DBuilder->createBasicType("char", 8, 8, dwarf::DW_ATE_signed_char);
        break;
      case 16:
        ret = DBuilder->createBasicType("short", 16, 16, dwarf::DW_ATE_signed);
        break;
      case 32:
        ret = DBuilder->createBasicType("int", 32, 32, dwarf::DW_ATE_signed);
        break;
      case 64:
        ret = DBuilder->createBasicType("long long", 64, 64,
                                        dwarf::DW_ATE_signed);
        break;
      default:
        dbgs() << "unhandlered integer Type:" << *Ty << "\n";
        exit(EXIT_FAILURE);
    }
  } else if (Ty->isDoubleTy()) {
    ret = DBuilder->createBasicType("double", 64, 64, dwarf::DW_ATE_float);
  } else if (Ty->isFloatTy()) {
    ret = DBuilder->createBasicType("float", 32, 32, dwarf::DW_ATE_float);
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

  dbgs() << "Function type: " << *FTy << "\n";
  dbgs() << "return type: " << *retTy << "\n";

  DIType *DITy = getOrCreateDIType(retTy);
  EleDITys.push_back(DITy);

  int i, size;
  size = FTy->getNumParams();
  for (i = 0; i < size; i++) {
    Type *Ty = FTy->getParamType(i);
    DITy = getOrCreateDIType(Ty);
    dbgs() << "IR Type: " << *Ty << " ---> "
           << "DI Type: " << *DITy << "\n";
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

DILocalVariable *CAREDIBuilder::createDIVariable(Value *V, DIScope *Scop) {
  DILocalVariable *D;
  Instruction *pos;
  DIType *VDITy;

  std::string VName = V->getName();

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

  Instruction *dbg =
      DBuilder->insertDbgValueIntrinsic(V, 0, D, DIExpr, DL, pos);
  return D;
}

Instruction *CAREDIBuilder::createDbgValue(Value *V, DIScope *Scope) {
  int line = getLineNumber();
  int col = getColNumber();
  auto DL = DebugLoc::get(line, col, Scope);
  auto DIVar = createDIVariable(V, Scope);
  Instruction *pos = nullptr;
  if (auto arg = dyn_cast<Argument>(V)) {
    Function *F = arg->getParent();
    pos = F->getEntryBlock().getFirstNonPHIOrDbg();
  } else if (auto I = dyn_cast<Instruction>(V)) {
    pos = I->getNextNode();
  }
  DBuilder->insertDbgValueIntrinsic(V, 0, DIVar, nullptr, DL, pos);
}

DIType *CAREDIBuilder::getOrCreateDIType(Type *Ty) {
  if (Types.find(Ty) == Types.end()) Types[Ty] = createDIType(Ty);
  DEBUG_WITH_TYPE("info", dbgs() << "IR Type: " << *Ty
                                 << " ---> DIType: " << *Types[Ty] << "\n";);
  return Types[Ty];
}
