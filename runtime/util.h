#ifndef _UTIL_H_
#define _UTIL_H_

#include "types.h"

/**
 * care_util_init: initialize the care library. It will:
 *                 1. save the processor context into context
 *                 2. load the recovery table and library,
 *                    as well as open debuf info file.
 *
 * input: sig_info, the signal information passed from signal handler by OS.
 *        sig_context. the processor context passed from signal handler by OS.
 *
 * output: the care context which is a simply copy of processor context and
 *         contains additional recovery table and library handler.
 */
care_status_t care_util_init(care_context_t *context, siginfo_t *sig_info,
                             void *sig_context);

/**
 * care_util_finish: clean the library before exit
 */
void care_util_finish(care_context_t *context);

/**
 * care_util_diagnose: general diagnose routine. It is expected to:
 *                     1. (TODO:) collect the info about the fault.
 *                     2. performance instruction disassembling
 *                     3. figure out the target to be udated
 *
 *
 * input: the signal number and the care context.
 * output: On success, it will return non-zero value representing
 *         the recorvy method, and the operand to be udated through
 *         target argument if the recovery method is REDO;
 */
care_status_t care_util_diagnose(int signo, care_context_t *context,
                                 care_target_t *target, care_method_t *method);

void care_util_unwind(int steps);

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
care_status_t care_util_find_routine(care_context_t *context,
                                     care_routine_t *routine);

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
care_status_t care_util_exec_routine(care_context_t *env,
                                     care_routine_t routine, void *rvalue);

/**
 * care_util_update: update the target with the correct value
 */
care_status_t care_util_update(care_context_t *env, care_target_t *target,
                               uint64_t value);

care_status_t care_util_update_heuristic(care_context_t *env,
                                         care_target_t *target);

#endif