
#include <llvm/Support/Debug.h>
#include <llvm/Support/raw_ostream.h>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <istream>

#include <err.h>
#include "tb.h"

/**
 * local functions
 */
static std::string getBaseTyStr(const pb::Type *Ty) {
  std::string ret;
  switch (Ty->id()) {
    case pb::ArrayTyID:
      ret = getBaseTyStr(&Ty->arrayelemty());
      ret.append("[]");
      break;
    case pb::DoubleTyID:
      ret = "double";
      break;
    case pb::FloatTyID:
      ret = "float";
      break;
    case pb::FP128TyID:
      ret = "long double";
      break;
    case pb::FunctionTyID:
    case pb::LabelTyID:
    case pb::MetadataTyID:
    case pb::PointerTyID:
      errx(EXIT_FAILURE,
           "%s: FunctionTy/LableTy/MetadataTy/PointerTy are not a base type. "
           "They are not handled",
           __func__);
      break;
    case pb::HalfTyID:
      ret = "half";
      break;

    case pb::IntegerTyID:
      ret = "int";
      ret.append(std::to_string(Ty->width()));
      break;
    case pb::StructTyID:
      ret = "struct";
      break;
    case pb::X86_FP80TyID:
      ret = "double";
      break;
    case pb::X86_MMXTyID:
      ret = "mmx";
      break;
    default:
      errx(EXIT_FAILURE, "Unhandled Type: %d\n", Ty->id());
  }
  return ret;
}

static std::string getPointerTyStr(const pb::Type *Ty) {
  std::string ret;
  pb::Type pointee = Ty->pointeety();
  if (pointee.id() == pb::PointerTyID) {
    ret = getPointerTyStr(&pointee);
  } else {
    ret = getBaseTyStr(&pointee);
  }
  ret.append("*");
  return ret;
}

static std::string getTypeStr(const pb::Type *Ty) {
  std::string ret;
  if (Ty->id() == pb::PointerTyID)
    ret = getPointerTyStr(Ty);
  else
    ret = getBaseTyStr(Ty);
  return ret;
}

static std::string getFunctionTyStr(const pb::FunctionTy *FuncTy) {
  int i, size;
  std::string retval;
  retval.append(getTypeStr(&FuncTy->returnty()));
  retval.append(" ");
  retval.append(FuncTy->fname());
  retval.append("(");
  size = FuncTy->paramty_size();
  for (i = 0; i < size; i++) {
    std::string tmp = getTypeStr(&(FuncTy->paramty(i)));
    retval.append(tmp);
    if (i < size - 1) retval.append(", ");
  }
  retval.append(")");
  return retval;
}

static bool isBaseTy(llvm::Type *Ty) {
#if 0
  return Ty->isSingleValueType();
#else
  if (Ty->isDoubleTy() || Ty->isFloatingPointTy() || Ty->isIntegerTy() ||
      Ty->isHalfTy() || Ty->isVoidTy())
    return true;
  return false;
#endif
}

static bool isPointerTy(llvm::Type *Ty) { return Ty->isPointerTy(); }

/**
 * transforms from llvm base type to protobuf type
 */
static pb::Type *createPBBaseTy(llvm::Type *ty) {
  pb::Type *retval = new pb::Type();
  retval->set_id((pb::TypeID)ty->getTypeID());
  if (ty->isIntegerTy()) {
    retval->set_width(ty->getIntegerBitWidth());
  }
#if 1
  llvm::dbgs() << "[createPBBaseTy] create type for : " << *ty
               << "\n\tSingleValueType: " << ty->isSingleValueType()
               << "\n\treturn: " << retval->id() << "(" << getTypeStr(retval)
               << ")\n";
#endif
  return retval;
}

/**
 * transforms from llvm pointer type to protobuf type
 */
pb::Type *createPBPointerTy(llvm::PointerType *ty) {
  pb::Type *retval = new pb::Type();
  pb::Type *pointee = new pb::Type();

  retval->set_id(pb::PointerTyID);
  llvm::Type *sub = ty->getElementType();
  if (sub->isPointerTy())
    pointee = createPBPointerTy(llvm::dyn_cast<llvm::PointerType>(sub));
  else
    pointee = createPBBaseTy(sub);
  retval->set_allocated_pointeety(pointee);
#if 1
  llvm::dbgs() << "[createPBPointerTy] create type for : " << *ty
               << "\n\tSingleValueType: " << ty->isSingleValueType()
               << "\n\treturn: " << retval->id() << "(" << getTypeStr(retval)
               << ")\n";
#endif
  return retval;
}

/**
 * transforms from llvm type to protobuf type, it is a simple
 * wrapper to getPointerTy() and getBaseTy()
 */
pb::Type *createPBType(llvm::Type *Ty) {
  pb::Type *retval;
  if (isBaseTy(Ty)) {
    retval = reinterpret_cast<pb::Type *>(createPBBaseTy(Ty));
  } else if (isPointerTy(Ty)) {
    retval = createPBPointerTy(llvm::dyn_cast<llvm::PointerType>(Ty));
  } else {
    llvm::errs() << "Unhandled/Unexpected Type: " << *Ty;
    exit(EXIT_FAILURE);
  }
#if 1
  llvm::dbgs() << "[createPBType] create type for : " << *Ty
               << "\n\tSingleValueType: " << Ty->isSingleValueType()
               << "\n\treturn: " << retval->id() << "(" << getTypeStr(retval)
               << ")\n\n\n";
#endif
  return retval;
}

static pb::FunctionTy *createPBFunctionTy(llvm::Function *Function) {
  int i, n_params;
  pb::FunctionTy *retval;
  llvm::Type *llvm_return_ty, *llvm_param_ty;
  pb::Type *pb_return_ty, *pb_param_ty;

  llvm::FunctionType *Ty = Function->getFunctionType();

  llvm_return_ty = Ty->getReturnType();
  retval = new pb::FunctionTy();

  pb_return_ty = createPBType(llvm_return_ty);
  retval->set_allocated_returnty(pb_return_ty);

  n_params = Ty->getNumParams();
  for (i = 0; i < n_params; i++) {
    llvm_param_ty = Ty->getParamType(i);
    pb_param_ty = retval->add_paramty();
    pb_param_ty->CopyFrom(*(createPBType(llvm_param_ty)));
  }
  retval->set_fname(Function->getName().str().c_str());
  return retval;
}

/**
 * ----------- begine public C++ interface definition -----------
 */

pb::Table *care_tb_create() {
  pb::Table *tb = new pb::Table();
  return tb;
}

void care_tb_release(pb::Table *table) { delete (table); }

void care_tb_print_record(const pb::Record *record) {
  int i, n_params;
  std::string params;
  std::string FuncTyStr;
  std::string key;

  key = record->key();
  FuncTyStr = getFunctionTyStr(&record->functy());
  n_params = record->parameters_size();

  for (i = 0; i < n_params; i++) {
    params.append(record->parameters(i));
    if (i < n_params - 1) params.append(", ");
  }

#if 0
  std::cout << "key(len = " << key.size() << "): ";
  for (unsigned i = 0; i < key.size(); i++) {
    uint8_t high = key.c_str()[i] >> 4;
    uint8_t low = key[i] & 15;
    std::cout << std::setw(1) << std::hex << std::uppercase << high << low;
  }
  std::cout << "\tFuncTy: " << FuncTyStr << "\tParams: " << params << "\n";
#else
  std::cout << "key: " << key << "\tFuncTy: " << FuncTyStr
            << "\tParams: " << params << "\n";
#endif
}

void care_tb_print(pb::Table *table) {
  int i, n_records = table->records_size();
  std::cout << "Num. of records: " << n_records << "\n";
  for (i = 0; i < n_records; i++) {
    care_tb_print_record(&(table->records(i)));
  }
}

/**
 * care_tb_add_record: it is to add an record to the table.
 * This is C++ only interface
 */
int care_tb_add_record(pb::Table *table, std::string key,
                       llvm::Function *Function,
                       std::vector<std::string> params) {
  assert(Function->arg_size() == params.size() &&
         "the number of parameter in function type doesn't match the number of "
         "given parameters");
  pb::Record *record = table->add_records();
  pb::FunctionTy *ty = createPBFunctionTy(Function);
  record->set_key(key);
  record->set_allocated_functy(ty);
  for (auto param : params) record->add_parameters(param);
  return 0;
}

/**
 * care_tb_save(): it saves the table into a file.
 * This is expeceted to be called from C++ library only.
 */
void care_tb_save(std::string filename, pb::Table *table) {
  std::fstream fs;
  std::string out;
  fs.open(filename, std::fstream::out);
  table->SerializeToOstream(&fs);
  fs.close();
}

/**
 * care_tb_load: it loads the table from a file.
 * It is expeceted to be called from C code (libcare)
 */
pb::Table *care_tb_load(char *filename) {
  pb::Table *ret = new pb::Table();
  std::ifstream fs;
  fs.open(filename, std::fstream::in);
  ret->ParseFromIstream(&fs);
  fs.close();
  return ret;
}

int care_tb_search(pb::Table *table, std::string key, pb::FunctionTy **FuncTy,
                   char ***params, int *n_params) {
  int i, n_records = table->records_size();
  pb::Record record;
  for (i = 0; i < n_records; i++) {
    record = table->records(i);
    if (record.key() == key) {
      *FuncTy = (pb::FunctionTy *)&record.functy();
      *n_params = record.parameters_size();
      *params = (char **)malloc(sizeof(char *) * (*n_params));
      for (i = 0; i < *n_params; i++) {
        (*params)[i] = (char *)record.parameters(i).c_str();
      }
      return 1;
    }
  }
  return 0;
}

enum TypeID care_tb_get_param_type_id(pb::FunctionTy *Ty, int param) {
  assert(param < Ty->paramty_size());
  pb::Type paramTy = Ty->paramty(param);
  return (enum TypeID)paramTy.id();
}

int care_tb_get_param_type_width(pb::FunctionTy *Ty, int param) {
  assert(param < Ty->paramty_size());
  pb::Type paramTy = Ty->paramty(param);
  if (paramTy.id() == pb::IntegerTyID) return paramTy.width();
  return 0;
}

enum TypeID care_tb_get_return_type_id(pb::FunctionTy *Ty) {
  pb::Type returnTy = Ty->returnty();
  return (enum TypeID)returnTy.id();
}

int care_tb_get_return_type_width(pb::FunctionTy *Ty) {
  pb::Type returnTy = Ty->returnty();
  if (returnTy.id() == pb::IntegerTyID) return returnTy.width();
  return 0;
}

const char *care_tb_get_function_name(pb::FunctionTy *FuncTy) {
  return FuncTy->fname().c_str();
}

/**
 * ----------- begine public C interface definition -----------
 */
// public C interface
extern "C" void care_tb_release_c(care_table_t tb) {
  care_tb_release(reinterpret_cast<pb::Table *>(tb));
}

extern "C" void care_tb_print_record_c(care_record_t record) {
  const pb::Record *r = reinterpret_cast<pb::Record *>(record);
  care_tb_print_record(r);
}

extern "C" void care_tb_print_c(care_table_t table) {
  pb::Table *tb = reinterpret_cast<pb::Table *>(table);
  care_tb_print(tb);
}

extern "C" care_table_t care_tb_load_c(char *filename) {
  pb::Table *tb = care_tb_load(filename);
  return reinterpret_cast<care_table_t>(tb);
}

extern "C" int care_tb_search_c(care_table_t table, char *key,
                                care_functy_t *FuncTy, char ***params,
                                int *n_params) {
  int ret;
  pb::Table *tb = reinterpret_cast<pb::Table *>(table);
  pb::FunctionTy *Ty;
  ret = care_tb_search(tb, key, &Ty, params, n_params);
  if (ret) {
    *FuncTy = reinterpret_cast<care_functy_t>(Ty);
  }
  return ret;
}

extern "C" enum TypeID care_tb_get_param_type_id_c(care_functy_t Ty,
                                                   int param) {
  pb::FunctionTy *FuncTy = reinterpret_cast<pb::FunctionTy *>(Ty);
  return care_tb_get_param_type_id(FuncTy, param);
}

extern "C" int care_tb_get_param_type_width_c(care_functy_t Ty, int param) {
  pb::FunctionTy *FuncTy = reinterpret_cast<pb::FunctionTy *>(Ty);
  return care_tb_get_param_type_width(FuncTy, param);
}

extern "C" enum TypeID care_tb_get_return_type_id_c(care_functy_t Ty) {
  pb::FunctionTy *FuncTy = reinterpret_cast<pb::FunctionTy *>(Ty);
  return care_tb_get_return_type_id(FuncTy);
}

extern "C" int care_tb_get_return_type_width_c(care_functy_t Ty) {
  pb::FunctionTy *FuncTy = reinterpret_cast<pb::FunctionTy *>(Ty);
  return care_tb_get_return_type_width(FuncTy);
}

extern "C" const char *care_tb_get_function_name_c(care_functy_t Ty) {
  pb::FunctionTy *FuncTy = reinterpret_cast<pb::FunctionTy *>(Ty);
  return care_tb_get_function_name(FuncTy);
}