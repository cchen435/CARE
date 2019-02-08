/**
 *
 */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <err.h>
#include <errno.h>
#include <ffi.h>
#include <libdwarf.h>

#define UNW_LOCAL_ONLY
#include <libunwind.h>

#include <mhash.h>
#include <stdio.h>
#include <string.h>
//#define __USE_GNU
//#define __USE_XOPEN_EXTENDED
#include <signal.h>
#include <ucontext.h>
#include <udis86.h>
#include <unistd.h>

#include "dw.h"
#include "types.h"
#include "udis.h"
#include "util.h"

#if __x86_64__
#define CARE_PC_REG REG_RIP
#elif __i386__
#define CARE_PC_REG REG_EIP
#endif

// ------------------ local functions definition -------------------
/**
 * care_util_is_in_library is to check wether the addr belongs to an shared
 * library
 */
static int care_util_is_in_library(void *addr) {
  extern char *program_invocation_name;
  Dl_info info;
  int ret = dladdr(addr, &info);
  if (ret && strcmp(info.dli_fname, program_invocation_name) != 0) return 1;
  return 0;
}

// we use steps to control the position to unwind in application space
void care_util_unwind(int steps) {
  unw_cursor_t cursor;
  unw_context_t unw_ctx;
#if DEBUG_UNWIND
  char proc[128];
  unw_word_t pc;
  unw_word_t off;
#endif
  unw_getcontext(&unw_ctx);
  unw_init_local(&cursor, &unw_ctx);

  // a signal frame is created in response to potentially
  // async interruption, e.g. signal handler since we are
  // in signal hanlder now, so we need to roll back to the
  // first non-signal frame
  while (unw_is_signal_frame(&cursor)) unw_step(&cursor);

#if DEBUG_UNWIND
  // unw_get_proc_name is to get the function name for the frame
  unw_get_proc_name(&cursor, proc, 128, &off);
  unw_get_reg(&cursor, UNW_REG_IP, &pc);
  fprintf(stderr, "crash point: function --> %s, PC --> %lx\n", proc, pc);
#endif

  while (steps--) unw_step(&cursor);

#if DEBUG_UNWIND
  unw_get_proc_name(&cursor, proc, 128, &off);
  unw_get_reg(&cursor, UNW_REG_IP, &pc);
  fprintf(stderr, "replay point: function --> %s, PC --> %lx\n", proc, pc);
#endif
  // rollback by 1 instruction (callinst)
  care_util_rollback(&cursor);
  unw_resume(&cursor);
}

/**
 * care_util_rollback rollback one call instruction
 */
void care_util_rollback(unw_cursor_t *cursor) {
  ud_t obj;
  unw_word_t pc;
  care_ud_setup(&obj);
  unw_get_reg(cursor, UNW_REG_IP, &pc);
  while (pc--) {
    care_ud_disasm_instruction(&obj, (uint8_t *)pc);
    if (UD_Icall == ud_insn_mnemonic(&obj)) break;
  }
  unw_set_reg(cursor, UNW_REG_IP, pc);
}

//==-------------------- hash related routines -----------------------==//
/**
 * care_util_is_equal: compare whether two keys are the same
 * input: two keys in form of string
 * output: return non-zero if two keys are the same, otherwise 0
 */
static int care_util_is_equal(care_hash_t key1, care_hash_t key2) {
  return !strncmp((char *)key1, (char *)key2, 16);
}

/**
 * care_util_get_md5_hash: calc the md5 value for a string. an MD5
 * value has fixed 128-bits in size. the hash value is returned through key
 */
static void care_util_hash(char *str, care_hash_t key) {
  unsigned i = 0;
  unsigned char buf[16];
  MHASH mhd;
  mhd = mhash_init(MHASH_MD5);
  assert(mhd != MHASH_FAILED);
  mhash(mhd, str, strlen(str));
  mhash_deinit(mhd, buf);
  for (i = 0; i < 16; i++) sprintf(&key[2 * i], "%02x", buf[i]);
}

/**
 * care_util_get_ffi_type: it creates a ffi_type based on the type encoded
 * in recovery function table.
 * input: pbTyID -- the type encoded in protobuf, width -- the bits of the
 *        type, valid only for integer type
 * outout: a pointer to relative ffi_type
 */
static ffi_type *care_util_get_ffi_type(enum TypeID pbTyID, int width) {
  if (pbTyID == IntegerTyID) {
    if (width == 8) return &ffi_type_uint8;
    if (width == 16) return &ffi_type_uint16;
    if (width == 32) return &ffi_type_uint32;
    if (width == 64) return &ffi_type_uint64;
  }
  if (pbTyID == FloatTyID) return &ffi_type_float;
  if (pbTyID == DoubleTyID) return &ffi_type_double;
  if (pbTyID == FP128TyID || pbTyID == PPC_FP128TyID)
    return &ffi_type_longdouble;
  if (pbTyID == PointerTyID) return &ffi_type_pointer;

  errx(EXIT_FAILURE, "%s: Unhandled type by care: %s", __func__,
       strerror(errno));
}

// ------------------ API functions ---------------------
/**
 * care_util_init: initalize the libcare by setting the context.
 * It will save the processor context, open the dwarf file and load
 * the recovery library
 * it returns EXIT_SUCCESS success
 */
void care_util_init(care_context_t *context, siginfo_t *sig_info,
                    void *sig_context) {
  /**
   * the glibc variable containing the name of of the program. We used
   * it to derive recovery library file name and dwarf file name
   */
  extern char *__progname;
  extern char *program_invocation_name;
  char filename[128];

  // simple alias to processor contest for easy access
  ucontext_t *ucontext = (ucontext_t *)sig_context;
  mcontext_t *mcontext = &(ucontext->uc_mcontext);
  context->fpregs = &(mcontext->fpregs);
  context->gregs = &(mcontext->gregs);
  context->stack = &(ucontext->uc_stack);
  context->pc = (*context->gregs)[CARE_PC_REG];
  // initialize dwarf library
  context->dwarf = care_dw_open(program_invocation_name);

  fprintf(stderr, "CARE is to recover %s [pc: 0x%llx]\n", __progname,
          context->pc);

  // loading recovery table
  sprintf(filename, "%s.tb", program_invocation_name);

  context->lib_table = care_tb_load_c(filename);

#ifdef DEBUG
  care_tb_print_c(context->lib_table);
#endif

  if (context->lib_table == NULL)
    errx(EXIT_FAILURE, "Failed to open the table: %s (Error: %s)\n", filename,
         strerror(errno));

  // loading recovery library
  sprintf(filename, "./lib%s.so", __progname);
  context->lib_handle = dlopen(filename, RTLD_LAZY);
  if (context->lib_handle == NULL)
    errx(EXIT_FAILURE, "Failed to open library: %s (Error: %s)\n", filename,
         dlerror());
}

/**
 * care_util_finish: clean the resources utilized by libcare
 */
void care_util_finish(care_context_t *context) {
  care_dw_close(context->dwarf);
  dlclose(context->lib_handle);
}

/**
 * care_util_diagnose: general diagnose routine. It needs to figure out the
 * answers to the following questions: 1). what instruction caused the fault?
 * this can be done by disasmble the instruction pointed by the program counter.
 * 2). which operand is related to the fault ? e.g. for SIGFPE, the insteresting
 * operand could be the divident, and for SIGSEGV, the interesting operand is
 * the operand related to memory address. 3). is it recoverable? e.g., for
 * SIGSEGV, if the memory access related operand is also a constant, care cannot
 * recover it since address is statically embedded in the code. 4). if
 * recoverable, whos value needs to be updated？ it could be a register, or a
 * memory location. (note: hypothesis, for SIGSEGV, it should be register only,
 * and  for SIGFPE, it could be either register or memory location )
 */
care_method_t care_util_diagnose(int signo, care_context_t *context,
                                 care_target_t *target) {
  ud_t ud_obj;       // the udis86 object
  ud_type_t ud_reg;  // the register naming in udis namespace
  int libc_reg;      // the register naming in libc namespace

  if (care_util_is_in_library(context->pc)) return UNWIND;

  // disassemble the instruction
  care_ud_setup(&ud_obj);
  care_ud_disasm_instruction(&ud_obj, (const uint8_t *)(context->pc));
  context->insn = ud_insn_asm(&ud_obj);

#if DEBUG
  fprintf(stderr, "Instruction: %s\n", context->insn);
#endif

  // which operand is the potential interesting code to be updated
  if (signo == SIGSEGV)
    target = *(care_target_t *)care_ud_get_mem_op(&ud_obj);
  else if (signo == SIGFPE)
    target = *(care_target_t *)care_ud_get_divident(&ud_obj);

  if (target == NULL) return 0;
  return REDO;
}

/**
 * care_util_find_routine: find the appropriate recovery function based on the
 * PC value of the instruction. Debug information is first retrieved, and is
 * used as the key (hashed to MD5) to query the recovery function table for the
 * recovery routine.
 *
 * input: context containing the basic processor context when the fault happens,
 *        specially the PC value
 * output: it will return 0 if no recovery routine is found, otherwise non-zero
 * value is returned. The recovery routine info is returned through the routine
 *         argument.
 */
int care_util_find_routine(care_context_t *context, care_routine_t *routine) {
  char buf[256];
  int retval;
  char *src = NULL;
  char *fname = NULL;
  int line, column;
  care_hash_t key;

  Dwarf_Addr PC = (Dwarf_Addr)context->pc;

  // get debug line info and calc the hash value
  retval = care_dw_get_src_info(context->dwarf, PC, &src, &line, &column);
  (fname = strrchr(src, '/')) ? ++fname : (fname = src);
#ifdef DEBUG
  fprintf(stderr, "Build Key from:\n\tFile: %s\n\tLine: %d\n\tColumn: %d\n",
          fname, line, column);
#endif
  sprintf(buf, "%s/%d/%d", fname, line, column);
  care_util_hash(buf, key);

#ifdef DEBUG
  fprintf(stderr, "Key: ");
  for (unsigned i = 0; i < 32; i++) fprintf(stderr, "%c", key[i]);
  fprintf(stderr, "\n");
#endif

  // clean the storage used by src
  care_dw_dealloc_str(context->dwarf, src);

  retval = care_tb_search_c(context->lib_table, key, &routine->funcTy,
                            &routine->params, &routine->n_params);

#ifdef DEBUG
  if (!retval)
    fprintf(stderr, "Recovery Routine: Not Found\n");
  else {
    fprintf(stderr, "Recovery Routine:\n\tFunction: %p\n\tParams: ",
            care_tb_get_function_name_c(routine->funcTy));
    for (unsigned i = 0; i < routine->n_params; i++) {
      fprintf(stderr, "%s ", routine->params[i]);
    }
  }
#endif

  return retval;
}

/**
 * care_util_exec_routine: execute the recovery routine using ffi library.
 *
 * input: 1. env the care context containing processor context when the signal
 *        is generated. It is used for deriving input values for the routine
 *        2. routine. the recovery function
 *
 * output: the execution result is return through rvalue variable. the function
 *         will return non-zero value if the recovery routine is executed
 *         successfully
 */
int care_util_exec_routine(care_context_t *env, care_routine_t routine,
                           void *rvalue) {
  ffi_cif cif;

  // for ffi function signature
  ffi_type *rtype;
  ffi_type **argtypes;

  // storing pointers to function arguments for ffi_call
  void **args;

  // for retrieving function pointers using dlsym
  const char *symbol;
  void *func;

  // for getting ffi_types
  int i, width;
  enum TypeID TyID;

  argtypes = (ffi_type **)malloc(sizeof(ffi_type *) * routine.n_params);
  args = (void **)malloc(sizeof(void *) * routine.n_params);

  // setup the return type
  TyID = care_tb_get_return_type_id_c(routine.funcTy);
  width = care_tb_get_return_type_width_c(routine.funcTy);
  rtype = care_util_get_ffi_type(TyID, width);

  // setup the param types
  for (i = 0; i < routine.n_params; i++) {
    TyID = care_tb_get_param_type_id_c(routine.funcTy, i);
    width = care_tb_get_param_type_width_c(routine.funcTy, i);
    argtypes[i] = care_util_get_ffi_type(TyID, width);
  }

  // initialize the cif object
  if (ffi_prep_cif(&cif, FFI_DEFAULT_ABI, routine.n_params, rtype, argtypes) !=
      FFI_OK) {
    errx(EXIT_FAILURE, "%s: failed to initilize ffi cif (msg: %s) \n", __func__,
         strerror(errno));
  }

  // prepareing arguments, args should initialized with pointers to where the
  // value is stored.
  for (i = 0; i < routine.n_params; i++) {
    args[i] = care_dw_get_var_loc(env, routine.params[i]);
  }

  // get function pointer
  symbol = care_tb_get_function_name_c(routine.funcTy);
  func = dlsym(env->lib_handle, symbol);

  ffi_call(&cif, func, rvalue, args);

  free(argtypes);
  free(args);
  return 1;
}

/**
 * care_util_update: a general inteface to update and operand
 */
int care_util_update(care_context_t *env, care_target_t *target,
                     uint64_t value) {
  /**
   * in udis86, an operand could be one of 6 types:
   * 1. UD_OP_MEM. A memory operand
   * 2. UD_OP_PTR. A segment:offset pointer operand.
   * 3. UD_OP_IMM. An Immediate operand. Value available in lval.
   * 4. UD_OP_JUMM. An Immediate Operand to a branch instruction. Value
   * available in lval.
   * 5. UD_OP_CONST. Implicit constant operand. Value available in lval.
   * 6. UD_OP_REG. A register operand. the specific register is availabe in the
   * base field (ud_type)
   */

  ud_type_t ud_reg;
  int libc_reg, reg_width;
  int64_t offset = 0, base = 0;
  uint8_t scale = 0;
  uint64_t val = value;

  uint8_t *ptr;

  if (target->type == UD_OP_REG) {
    ud_reg = target->base;
    if (!care_ud_is_gpr(ud_reg)) {
      errx(EXIT_FAILURE, "Non-GPR instruction is not handled: %s\n", env->insn);
      // ud_insn_asm(&env->ud_obj));
    }
  } else if (target->type == UD_OP_MEM) {
    // retrieving offset
    switch (target->offset) {
      case 0:  // no offset
        break;
      case 8:
        offset = (int64_t)target->lval.sbyte;
        break;
      case 16:
        offset = (int64_t)target->lval.sword;
        break;
      case 32:
        offset = (int64_t)target->lval.sdword;
        break;
      case 64:
        offset = (int64_t)target->lval.sqword;
        break;
      default:
        errx(EXIT_FAILURE, "Wrong register width\n");
    }
    val -= offset;

    // retriving register
    if (target->base != UD_NONE && target->index != UD_NONE) {
      // e.g., movl offset(%ebx, %esi, 4), %eax
      // we assume the base register (%ebx) is correct and
      // need to update index register (%esi)
      ud_reg = target->base;
      libc_reg = care_ud_translate(ud_reg);
      if (care_ud_is_gpr(ud_reg))
        base = (int64_t)(*env->gregs)[libc_reg];
      else {
        errx(EXIT_FAILURE, "Non-GPR instruction involved (not handled): %s\n",
             env->insn);
        // ud_insn_asm(&env->ud_obj));
      }

      // update the value need to be updated to index register
      val -= base;
      // checking scalar
      if (target->scale) val /= target->scale;

      // get the address of index register
      ud_reg = target->index;
      libc_reg = care_ud_translate(ud_reg);

    } else if (target->base != UD_NONE) {
      // e.g. movl offset(%ebx)
      ud_reg = target->base;
      libc_reg = care_ud_translate(ud_reg);
      if (!care_ud_is_gpr(ud_reg)) {
        errx(EXIT_FAILURE, "Non-GPR instruction involved (not handled): %s\n",
             env->insn);
      }
    } else {
      errx(EXIT_FAILURE, "meet an an operand not supported: %s\n", env->insn);
    }
  } else {
    errx(EXIT_FAILURE, "operand type is neigther REG nor MEM: %s\n", env->insn);
  }

  // update the register with the value
  ptr = (uint8_t *)&(*env->gregs)[libc_reg];
  // adjust register alignment, e.g. AH, BH, CH, DH
  reg_width = care_ud_get_reg_width(ud_reg);
  if (care_ud_is_high(ud_reg)) ptr += reg_width;
  memcpy(ptr, &val, reg_width);
}