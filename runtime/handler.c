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
  status = care_util_init(&ctx, info, context);
  if (status != CARE_SUCCESS) {
    goto fexit;
  }

  // diagnose the fault to figure out the operand to be updated
  status = care_util_diagnose(signo, &ctx, &target, &method);
  if (status != CARE_SUCCESS) {
    ctx.log.status = CARE_FAILURE;
    goto fexit;
  }

  if (method == M_INVALID) {
    ctx.log.status = CARE_FAILURE;
  } else if (method == M_UNWIND) {  // recover with unwind
    care_util_unwind(1);
  } else if (method == M_REDO) {  // recover with recomputation
    // retrive recovery routine
    status = care_util_find_routine(&ctx, &routine);
    if (status != CARE_SUCCESS) {
      errx(EXIT_FAILURE, "No recovery routine is found\n");
    }

    // execute the recovery routine
    status = care_util_exec_routine(&ctx, routine, &rvalue);

    // update the target
    status = care_util_update(&ctx, &target, rvalue);
    if (status != CARE_SUCCESS) goto fexit;
  }
  care_util_finish(&ctx);
  return;
fexit:  // exit with failure
  // clean the library
  care_util_finish(&ctx);
  exit(signo);
}
