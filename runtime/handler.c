#include <signal.h>
#include <stdio.h>
#include "errx.h"
#include "types.h"
#include "util.h"

void care_segv_handler(int signo, siginfo_t *info, void *context) {
  int retval;
  uint64_t rvalue;
  care_context_t ctx;
  care_method_t method;
  care_routine_t routine;
  care_target_t target;
  care_status_t status;

  /**
   * initialize the library, it will simply:
   * 1. save process context
   * 2. initialize the disassembler and
   * 3. load the recovery library
   */
  fprintf(stderr, "CARE: initialize the runtime\n");
  status = care_util_init(&ctx, info, context);
  if (status != CARE_SUCCESS) {
    ctx.log.status = CARE_FAILURE;
    goto fexit;
  }

  // diagnose the fault to figure out the operand to be updated
  fprintf(stderr, "CARE: diagnose the failure.\n");
  status = care_util_diagnose(signo, &ctx, &target, &method);
  if (status != CARE_SUCCESS) {
    ctx.log.status = CARE_FAILURE;
    goto fexit;
  }

  if (method == M_INVALID) {
    ctx.log.status = CARE_FAILURE;
    goto fexit;
  } else if (method == M_UNWIND) {  // recover with unwind
    fprintf(stderr, "CARE: recover through unwind.\n");
    care_util_unwind(1);
  } else if (method == M_REDO) {  // recover with recomputation
                                  // retrive recovery routine

    fprintf(stderr, "CARE: Update the target operand with letgo.\n");
    status = care_util_update_heuristic(&ctx, &target);
    if (status != CARE_SUCCESS) {
      fprintf(stderr, "\tUpdate the target operand failed.\n");
      ctx.log.status = CARE_FAILURE;
      goto fexit;
    }
    ctx.log.status = CARE_SUCCESS;
  }
  care_util_finish(&ctx);
  return;
fexit:  // exit with failure
  // clean the library
  fprintf(stderr, "CARE: Failed to recover the failure.\n\n");
  care_util_finish(&ctx);
  exit(-signo);
}
