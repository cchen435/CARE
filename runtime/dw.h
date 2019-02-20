#ifndef _DBG_H_
#define _DBG_H_

#include "errx.h"
#include "types.h"

/*
 * care_dw_open: open the debug file by calling dwarf_init function
 * it also check whether the file contains debug info
 */
extern care_dwarf_t care_dw_open(const char *file_name);

/*
 * care_dw_close: calling the debug file by calling dwarf_finish
 */
extern void care_dw_close(care_dwarf_t handler);

/**
 * care_dw_get_var_loc: get variable location so its value can be retrieved
 */
extern void *care_dw_get_var_loc(care_context_t *env, char *varname);

/**
 * care_dw_get_var_addr: derive the location given the die of the variable
 */
extern void *care_dw_eval_location(care_context_t *env, Dwarf_Die var_die);

/**
 * care_dw_get_src_info: get debug line info
 */
extern care_status_t care_dw_get_src_info(care_dwarf_t dwarf, Dwarf_Addr PC,
                                          char **ret_file, int *ret_line,
                                          int *ret_column);

/**
 * --------------------- helper functions ------------------------------------
 */
extern void care_dw_print_die(care_dwarf_t handler, Dwarf_Die die, int indent);
#endif
