#ifndef _CARE_ERR_H
#define _CARE_ERR_H

typedef enum _status { CARE_SUCCESS = 0, CARE_FAILURE } care_status_t;

typedef enum _error {
  CARE_E_NULL = 0,  // invalid error code
  CARE_NO_ENV = 1,  // failed to get environment varaibles
  CARE_NO_DBG,      // failed to open dwarf object
  CARE_NO_TBL,      // failed to open recovery table
  CARE_NO_LIB,      // failed to load recovery library
  CARE_NO_OPR,      // failed to find a valid operand of the instruction
  CARE_NO_KEN,      // failed to find a recovery kernel
  CARE_NO_FFI,      // failed to init an FFI object
  CARE_NO_CU,       // failed to find the compile unit
  CARE_NO_KEY,      // failed to get the debug info for key
  CARE_NO_LOC,      // failed to find the location for a variable
  CARE_INV_INST,    // invalid/unsupported instruction
  CARE_REPEATED,    // repeated recovery on the same instruction
} care_error_t;

extern void care_err_set_code(care_error_t err);
extern void care_err_set_external_msg(char *msg);
extern char *care_err_get_errmsg();

#endif