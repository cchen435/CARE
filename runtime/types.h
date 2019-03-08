#ifndef _CARE_TYPES_H_
#define _CARE_TYPES_H_

#include <dwarf.h>
#include <err.h>
#include <libdwarf.h>
#include <mhash.h>
#include <stdio.h>

#ifndef __USE_GNU
#define __USE_GNU
#endif

#ifndef __USE_XOPEN_EXTENDED
#define __USE_XOPEN_EXTENDED
#endif
#if __APPLE__
#define _XOPEN_SOURCE
#endif
#include <signal.h>
#include <ucontext.h>
#include <udis86.h>
#include <unistd.h>

#include "tb.h"

struct _log {
  char *inject;
  char *key;
  uint64_t memaddr;
  care_status_t status;
};
typedef struct _log care_log_t;

/**
 * recovery method
 */
typedef enum _method { M_INVALID = 0, M_REDO = 1, M_UNWIND = 2 } care_method_t;

/**
 * a wrapper to dwarf handler
 */
struct __care_dwarf {
  int fd;
  Dwarf_Debug dwarf_handle;
};
typedef struct __care_dwarf *care_dwarf_t;

struct __care_machine {
  fpregset_t *fpregs;  // float point registers
  gregset_t *gregs;    // general purpose registers
  stack_t *stack;      // the stack
};
typedef struct __care_machine care_machine_t;

/**
 * the context used by library
 */
struct __care_context {
  /* process context saved by OS when generating a signal */
  care_machine_t machine;
  uint64_t pc;  // the program counter, for quick access

  /* file descriptors */
  care_dwarf_t dwarf;   // the file descriptor for dwarf
  care_table_t rtable;  // recovery function table
  void *rlib;           // the handler for recovery library, returned by dlopen

  /* udis86 disassember objects */
  const char *insn;

  care_log_t log;
  FILE *logfp;
};
typedef struct __care_context care_context_t;

/*
 * the target/operand needs to be updated
 */
typedef ud_operand_t care_target_t;

/**
 * a general type of recovery function
 */
struct __care_routine {
  care_functy_t funcTy;
  char **params;
  int n_params;
};
typedef struct __care_routine care_routine_t;

/**
 * md5 hash value, original md5 value is 128bits or 16 bytes.
 * for human readable purpose, we print it to a hex string,
 * which is 32 bytes
 */
typedef char care_hash_t[32];

#endif