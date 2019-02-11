/**
 * Copyright (c) Georgia Institute of Technology
 * Author: C. Chen
 * Functionality description of the file or projects
 * Create time: 2018-08-03 09:11:47
 */

#include <assert.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define FILE_PATH_MAX_LEN 256

/* the signal handler implemented by CARE */
extern void care_segv_handler(int signo, siginfo_t *info, void *context);
void care_user_init() __attribute__((constructor));

/**
 * care_register_sighandler: a simple wrapper to sigaction
 * to update default signal handler
 */
int care_register_sigaction(int signo,
                            void (*handler)(int, siginfo_t *, void *)) {
  struct sigaction act;
  sigset_t mask;
  act.sa_sigaction = handler;

  // SA_SIGINFO is required to pass processor context info to handler
  act.sa_flags = SA_SIGINFO;
  return sigaction(signo, &act, NULL);
}

/* API implementation */
void care_user_init() {
  // registe the signal handler for SIGSEGV
  fprintf(stdout, "care is to update signal handlers\n");
  care_register_sigaction(SIGSEGV, care_segv_handler);
}
