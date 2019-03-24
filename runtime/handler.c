#include <signal.h>
#include <stdio.h>
#include <sys/time.h>
#include "errx.h"
#include "types.h"
#include "util.h"

static long long int gettime() {
  struct timeval tval;
  gettimeofday(&tval, NULL);
  return tval.tv_sec * 1000000 + tval.tv_usec;
}

void care_segv_handler(int signo, siginfo_t *info, void *context) {
  int retval;
  uint64_t rvalue;
  care_context_t ctx;
  care_method_t method;
  care_routine_t routine;
  care_target_t target;
  care_status_t status;

  start = gettime();

  /**
   * initialize the library, it will simply:
   * 1. save process context
   * 2. initialize the disassembler and
   * 3. load the recovery library
   */
  fprintf(stderr, "CARE: initialize the runtime\n");
  status = care_util_init(&ctx, info, context);
  if (status != CARE_SUCCESS) {
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
    fprintf(stderr, "CARE: Recover through recovery kernels.\n\n");
    fprintf(stderr, "CARE: Search for recovery kernels.\n");
    status = care_util_find_routine(&ctx, &routine);
    if (status != CARE_SUCCESS) {
      fprintf(stderr, "\tRecovery Routine: Not Found\n");
      ctx.log.status = CARE_FAILURE;
      goto fexit;
    }

    fprintf(stderr, "\tRecovery Routine -- \tFunction: %s, \tParams: ",
            care_tb_get_function_name_c(routine.funcTy));
    for (unsigned i = 0; i < routine.n_params; i++) {
      fprintf(stderr, "%s ", routine.params[i]);
    }
    fprintf(stderr, "\n\n");

    // execute the recovery routine
    fprintf(stderr, "CARE: Execute the recovery kernel.\n");
    status = care_util_exec_routine(&ctx, routine, &rvalue);
    if (status != CARE_SUCCESS) {
      fprintf(stderr, "\tExecute the recovery kernel failed.\n\n");
      ctx.log.status = CARE_FAILURE;
      goto fexit;
    }
    ctx.log.memaddr = rvalue;

    // update the target
    fprintf(stderr, "CARE: Update the target operand.\n");
    status = care_util_update(&ctx, &target, rvalue);
    if (status != CARE_SUCCESS) {
      fprintf(stderr, "\tUpdate the target operand failed.\n");
      ctx.log.status = CARE_FAILURE;
      goto fexit;
    }
    ctx.log.status = CARE_SUCCESS;
  }
  care_util_finish(&ctx);
  end = gettime();
  fprintf(stderr, "recovery time: %f\n", (end - start) * 1.0 / 1000);
  return;
fexit:  // exit with failure
  // clean the library
  fprintf(stderr, "CARE: Failed to recover the failure.\n\n");
  care_util_finish(&ctx);
  exit(signo);
}
