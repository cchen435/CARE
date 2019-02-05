#ifndef _CARE_TB_H_
#define _CARE_TB_H_

/**
 * the file defines interface for recovery table.
 */

#ifdef __cplusplus
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Type.h>
#include "pb.h"
#endif

// general type definition
#ifdef __cplusplus
extern "C" {
#endif

enum TypeID {
  HalfTyID = 1,
  FloatTyID = 2,
  DoubleTyID = 3,
  X86_FP80TyID = 4,
  FP128TyID = 5,
  PPC_FP128TyID = 6,
  LabelTyID = 7,
  MetadataTyID = 8,
  X86_MMXTyID = 9,
  TokenTyID = 10,
  IntegerTyID = 11,
  FunctionTyID = 12,
  StructTyID = 13,
  ArrayTyID = 14,
  PointerTyID = 15,
  VectorTyID = 16
};

typedef void *care_table_t;
typedef void *care_record_t;
typedef void *care_functy_t;

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus  // C++ code interface only

/**
 * care_tb_create: create the new empty table
 */
pb::Table *care_tb_create();

/**
 * care_tb_save: saves the table into a file
 */
void care_tb_save(std::string fname, pb::Table *tb);

/** care_tb_print: print a table */
void care_tb_print(pb::Table *tb);

/**
 * care_tb_add_record: insert an record to the table
 */
int care_tb_add_record(pb::Table *table, std::string key,
                       llvm::Function *FuncTy, std::vector<std::string> params);

/**
 * retrive the config information about the recovery routine
 */
int care_tb_search(pb::Table *table, std::string key, pb::FunctionTy &FuncTy,
                   char ***params, int *n_params);

/**
 * load a table from file
 */
pb::Table *care_tb_load(char *filename);

/**
 * care_tb_release(): release the memory utilized by table
 */
void care_tb_release(pb::Table *table);

enum TypeID care_tb_get_return_type_id(pb::FunctionTy *FuncTy);
int care_tb_get_return_type_width(pb::FunctionTy *FuncTy);
enum TypeID care_tb_get_param_type_id(pb::FunctionTy *FuncTy, int param);
int care_tb_get_param_type_width(pb::FunctionTy *FuncTy, int param);
const char *care_tb_get_function_name(pb::FunctionTy *FuncTy);

#endif  // !__cplusplus C code interface only

#ifdef __cplusplus
extern "C" {
#endif
// C API Interface

care_table_t care_tb_load_c(char *filename);
void care_tb_print_record_c(care_record_t record);
void care_tb_print_c(care_table_t table);
void care_tb_release_c(care_table_t tb);
int care_tb_search_c(care_table_t table, char *key, care_functy_t *FuncTy,
                     char ***param, int *n_params);
enum TypeID care_tb_get_return_type_id_c(care_functy_t FuncTy);
int care_tb_get_return_type_width_c(care_functy_t FuncTy);
enum TypeID care_tb_get_param_type_id_c(care_functy_t FuncTy, int param);
int care_tb_get_param_type_width_c(care_functy_t FuncTy, int param);
const char *care_tb_get_function_name_c(care_functy_t functy);

#ifdef __cplusplus
}
#endif

#endif  // __CARE_TB_H_