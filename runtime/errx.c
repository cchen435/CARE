#include <stdio.h>
#include <string.h>

#include "errx.h"

static care_error_t care_error_code = 0;
static char* care_error_external_msg = NULL;

static char* errmsg[] = {"Invalid Error Code.",
                         "Failed to get environment variables.",
                         "Failed to open file for accessing dwarf objects.",
                         "Failed to open recovery table.",
                         "Failed to load recovery library.",
                         "Failed to find a valid operand.",
                         "Failed to find a recovery kernel.",
                         "Failed to init a FFI object.",
                         "Failed to find the compile unit.",
                         "Failed to get the debug info for key.",
                         "Failed to find the locdesc for a variable.",
                         "Unsupported Instruction."};

void care_err_set_code(care_error_t err) {
  if (care_error_code == 0) care_error_code = err;
}

void care_err_set_external_msg(char* msg) {
  if (!care_err_get_errmsg) care_error_external_msg = strdup(msg);
}

char* care_err_get_errmsg() {
  char buf[1024];
  sprintf(buf, "%s", errmsg[care_error_code]);
  if (care_error_external_msg)
    sprintf(buf, "%s %s", buf, care_error_external_msg);
  return strdup(buf);
}
