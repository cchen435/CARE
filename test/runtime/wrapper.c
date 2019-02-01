/**
 * Copyright (c) Georgia Institute of Technology
 * Author: C. Chen
 * Functionality description of the file or projects
 * Create time: 2018-09-13 22:03:46
 */

#include <signal.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>


void handler(int sig, siginfo_t *info, void *context) {
  printf("signo: %d\n", sig);
}

int main(int argc, char **argv) {
 
  pid_t child;
  struct sigaction act;
  sigset_t mask;
  act.sa_sigaction = handler;

  // SA_SIGINFO is required to pass processor context info to handler
  act.sa_flags = SA_SIGINFO;
  sigaction(SIGSEGV, &act, NULL);
}