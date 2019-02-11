#include <stdio.h>
#include "types.h"
#include "util.h"

void care_segv_handler(int signo, siginfo_t *info, void *context) {
  int retval;
  uint64_t rvalue;
  care_context_t ctx;
  care_method_t method;
  care_routine_t routine;
  care_target_t target;

  /**
   * initialize the library, it will simply:
   * 1. save process context
   * 2. initialize the disassembler and
   * 3. load the recovery library
   */
  care_util_init(&ctx, info, context);

  // diagnose the fault to figure out the operand to be updated
  method = care_util_diagnose(signo, &ctx, &target);

  if (method == INVALID) {
    errx(EXIT_FAILURE, "Unable to find the operand to be recovered\n");
  } else if (method == UNWIND) {  // recover with unwind
    care_util_unwind(1);
  } else if (method == REDO) {  // recover with recomputation
    // retrive recovery routine
    retval = care_util_find_routine(&ctx, &routine);
    if (!retval) {
      errx(EXIT_FAILURE, "No recovery routine is found\n");
    }

    // execute the recovery routine
    retval = care_util_exec_routine(&ctx, routine, &rvalue);

    // update the target
    care_util_update(&ctx, &target, rvalue);

    // clean the library
    care_util_finish(&ctx);
  }
}
