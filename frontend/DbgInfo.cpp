//===-- DbgInfo.h - An inteface for adding debug information --------------===//
//
// This file defines interfaces used by care to create and insert debug
// information
//
// Reference:
// https://llvm.org/devmtg/2014-10/Slides/Christopher-DebugInfoTutorial.pdf
//
//===----------------------------------------------------------------------===//

#include <llvm/IR/InstIterator.h>

#include <iostream>

#include "DbgInfo.h"

CAREDIBuilder::CAREDIBuilder(Module &M, int lang) : M(M), LANG(lang) {
  DBuilder = new DIBuilder(M);

  hasDebugInfo = M.getDwarfVersion() ? true : false;
  if (hasDebugInfo) {
    resolveConflictDbgInfo(M);
    getDbgInfo(M);
  } else {
    M.addModuleFlag(Module::Warning, "Dwarf Version", dwarf::DWARF_VERSION);
    M.addModuleFlag(Module::Warning, "Debug Info Version",
                    DEBUG_METADATA_VERSION);
    /**
     * FIXME: is it ok to use DW_LANG_C for C++ code ?
     */
    std::string MID = M.getName();

    /**
     * create a compiiler Unit
     */
    DFile = DBuilder->createFile(CU->getFilename(), CU->getDirectory());
    CU = DBuilder->createCompileUnit(LANG, DFile, "CARE", false, "", 0);
  }
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
  } else if (Ty->isArrayTy()) {
    ret = DBuilder->createBasicType("char", 8, dwarf::DW_ATE_signed_char);
  } else if (Ty->isStructTy()) {
    ret = DBuilder->createBasicType("char", 8, dwarf::DW_ATE_signed_char);
  } else {
    dbgs() << "unhandeled Type:" << *Ty << "\n";
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
                                                 DIScope *Scope) {
  DILocalVariable *D;
  Instruction *pos;
  DIType *VDITy;

  int Line = getLineNumber();
  int Col = getColNumber();

  VDITy = getOrCreateDIType(V->getType());

  if (auto Insn = dyn_cast<Instruction>(V)) {
    D = DBuilder->createAutoVariable(Scope, VName, Scope->getFile(), Line,
                                     VDITy, true);
    pos = Insn->getNextNode();
    while (isa<PHINode>(pos)) pos = pos->getNextNode();
  } else if (auto arg = dyn_cast<Argument>(V)) {
    int ArgNo = arg->getArgNo() + 1;
    D = DBuilder->createParameterVariable(Scope, VName, ArgNo, Scope->getFile(),
                                          Line, VDITy, true);
    pos = arg->getParent()->getEntryBlock().getFirstNonPHI();
  } else {
    dbgs() << "createDIVariable meet unexpected Value: " << *V << "\n";
  }

  DIExpression *DIExpr = DBuilder->createExpression();
  const DILocation *DL = DebugLoc::get(Line, Col, Scope);

  Instruction *dbg = DBuilder->insertDbgValueIntrinsic(V, D, DIExpr, DL, pos);

  if (auto PHI = dyn_cast<PHINode>(V)) {
    dbg = DBuilder->insertDbgValueIntrinsic(PHI->getIncomingValue(0), D, DIExpr,
                                            DL, pos);
    dbg = DBuilder->insertDbgValueIntrinsic(PHI->getIncomingValue(1), D, DIExpr,
                                            DL, pos);
  }
  return D;
}

DIType *CAREDIBuilder::getOrCreateDIType(Type *Ty) {
  if (Types.find(Ty) == Types.end()) Types[Ty] = createDIType(Ty);
  DEBUG_WITH_TYPE("info", dbgs() << "IR Type: " << *Ty
                                 << " ---> DIType: " << *Types[Ty] << "\n";);
  return Types[Ty];
}

// ------------------------------------------------------------------------- //

void CAREDIBuilder::getDbgInfo(Module &M) {
  Module::FunctionListType &funcs = M.getFunctionList();
  for (Module::FunctionListType::iterator it = funcs.begin(), end = funcs.end();
       it != end; it++) {
    Function &F = *it;

    if (F.isDeclaration() || F.isIntrinsic()) continue;
    for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
      if (auto DbgInst = dyn_cast<DbgInfoIntrinsic>(&*I)) {
        DEBUG_WITH_TYPE("DBG", {
          llvm::dbgs() << "Instruction: " << *DbgInst << "\t Ops: ";
          for (unsigned i = 0; i < DbgInst->getNumArgOperands(); i++)
            llvm::dbgs() << "\n\t" << *(DbgInst->getArgOperand(i));
          llvm::dbgs() << "\n\n";
        });

        if (!isa<DbgDeclareInst>(&*I) && !isa<DbgValueInst>(&*I) &&
            !isa<DbgAddrIntrinsic>(&*I)) {
          dbgs() << "Unprocessed DbgInfoIntrinsic: " << *I << "\n";
          llvm_unreachable("Unprocessed DbgInfoIntrinsic\n");
        }

        Value *V = DbgInst->getVariableLocation();
        if (V) {  // in some cases
          DbgValueMap[V] = DbgInst;
          // if the value is simply a cast, the original operand refers to the
          // same object
          if (auto Cast = dyn_cast<BitCastInst>(V))
            DbgValueMap[Cast->getOperand(0)] = DbgInst;

          for (auto U : V->users()) {
            if (isa<PHINode>(U)) DbgValueMap[U] = DbgInst;
          }
        }
      }
    }
  }

#if 0
  DEBUG_WITH_TYPE("DBG", {
    llvm::dbgs() << "Debug Local Variables: ";
    for (auto item : DbgValueMap)
      llvm::dbgs() << "\n\tValue : " << *item.first << "(" << item.first << ")"
                   << "\tdbg.value: " << *item.second;
    llvm::dbgs() << "\n\n";
  });
#endif
}

void CAREDIBuilder::resolveConflictDbgInfo(Module &M) {
  std::map<DebugLoc, std::vector<Instruction *>> DbgLocMap;
  Module::FunctionListType &funcs = M.getFunctionList();
  for (Module::FunctionListType::iterator it = funcs.begin(), end = funcs.end();
       it != end; it++) {
    Function &F = *it;
    if (F.isDeclaration() || F.isIntrinsic()) continue;
    for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
      Instruction *Insn = &*I;
      if (!isa<LoadInst>(Insn) && !isa<StoreInst>(Insn)) continue;
      // if (!isMemAccInst(Insn)) continue;
      DebugLoc DbgLoc = Insn->getDebugLoc();
      if (!DbgLoc) continue;
      if (DbgLocMap.find(DbgLoc) == DbgLocMap.end())
        DbgLocMap[DbgLoc] = std::vector<Instruction *>();
      DbgLocMap[DbgLoc].push_back(Insn);
    }
  }

  for (auto mit = DbgLocMap.begin(); mit != DbgLocMap.end(); mit++) {
    if (mit->second.size() == 1) continue;
    // dbgs() << "DbgLoc: " << *(mit->first) << "(line: " <<
    // mit->first->getLine()
    //<< ", Col:" << mit->first->getColumn() << ")\n";
    for (int i = 1; i < mit->second.size(); i++) {
      // dbgs() << "\t" << *(mit->second[i]) << "\n";
      unsigned line = mit->first->getLine();
      unsigned col = mit->first->getColumn() + i + 100;
      DebugLoc loc = DebugLoc::get(line, col, mit->first->getScope(),
                                   mit->first->getInlinedAt());

      mit->second[i]->setDebugLoc(loc);
    }
    // dbgs() << "\n";
  }
}

DebugLoc CAREDIBuilder::getNearbyDebugLoc(Instruction *Insn) {
  DebugLoc Prev, Next;
  Instruction *P = Insn;
  while (P = P->getPrevNode()) {
    // dbgs() << "Prev: " << *P << "\n";
    if (isa<LoadInst>(P) || isa<StoreInst>(P)) break;
    Prev = P->getDebugLoc();
    if (Prev) break;
  }

  Instruction *N = Insn;
  while (N = N->getNextNode()) {
    // dbgs() << "Next: " << *N << "\n";
    if (isa<LoadInst>(N) || isa<StoreInst>(N)) break;
    Next = N->getDebugLoc();
    if (Next) break;
  }

  if (Prev && Next) {
    // dbgs() << "Prev DebugLoc: " << *Prev << "\n";
    // dbgs() << "Next DebugLoc: " << *Next << "\n";
    int line = (Prev->getLine() + Next->getLine()) / 2;
    int col = (Prev->getColumn() + Next->getColumn()) / 2;
    return DebugLoc::get(line, col, Prev->getScope());
  } else if (Prev) {
    // dbgs() << "Prev DebugLoc: " << *Prev << "\n";
    return Prev;
  } else if (Next) {
    // dbgs() << "Next DebugLoc: " << *Next << "\n";
    return Next;
  }
  return nullptr;
}

DISubprogram *CAREDIBuilder::getOrCreateDIFunction(Function &F) {
  if (hasDebugInfo)
    return F.getSubprogram();
  else
    return createDIFunction(F);
}

DebugLoc CAREDIBuilder::getOrCreateDebugLoc(Instruction *Insn, DIScope *Scope) {
  DebugLoc loc;
  if (hasDebugInfo) {
    loc = Insn->getDebugLoc();
    if (!loc) {
      // Debug data could be missed for some instruction even when compiled
      // with -g flag. Especially after some code optimizations. In such
      // case we will create a one for it based on the debugloc of its
      // nearby instruction, but not cross a memory access instruction
      loc = getNearbyDebugLoc(Insn);
      if (loc) {
        loc = DebugLoc::get(loc.getLine(), loc.getCol() + 100, loc.getScope());
      } else {
        loc = DebugLoc::get(getLineNumber(), getColNumber(), Scope);
      }
      Insn->setDebugLoc(loc);
    }
  } else {
    loc = setDIDebugLoc(Insn, Scope);
  }
  return loc;
}

bool CAREDIBuilder::hasDbgInfoIntrinsic(Value *V) {
  return DbgValueMap.find(V) != DbgValueMap.end();
}

DbgInfoIntrinsic *CAREDIBuilder::getDbgInfoIntrinsic(Value *V) {
  if (DbgValueMap.find(V) == DbgValueMap.end()) return nullptr;
  return DbgValueMap[V];
}