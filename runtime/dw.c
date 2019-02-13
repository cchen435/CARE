#include <assert.h>
#include <dwarf.h>
#include <err.h>
#include <fcntl.h>
#include <gelf.h>
#include <libdwarf.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "types.h"
#include "util.h"

// ---------------- declaration of helper functions ----------------
Dwarf_Die care_dw_get_func(care_dwarf_t dwarf, Dwarf_Addr PC);
void care_dw_print_die(care_dwarf_t handler, Dwarf_Die die, int indent);

char *care_dw_get_form_class_str(enum Dwarf_Form_Class class) {
  char *ret;
  switch (class) {
    case DW_FORM_CLASS_UNKNOWN:
      ret = "DW_FORM_CLASS_UNKNOWN";
      break;
    case DW_FORM_CLASS_ADDRESS:
      ret = "DW_FORM_CLASS_ADDRESS";
      break;
    case DW_FORM_CLASS_BLOCK:
      ret = "DW_FORM_CLASS_BLOCK";
      break;
    case DW_FORM_CLASS_CONSTANT:
      ret = "DW_FORM_CLASS_CONSTANT";
      break;
    case DW_FORM_CLASS_EXPRLOC:
      ret = "DW_FORM_CLASS_EXPRLOC";
      break;
    case DW_FORM_CLASS_FLAG:
      ret = "DW_FORM_CLASS_FLAG";
      break;
    case DW_FORM_CLASS_LINEPTR:
      ret = "DW_FORM_CLASS_LINEPTR";
      break;
    case DW_FORM_CLASS_LOCLISTPTR:
      ret = "DW_FORM_CLASS_LOCLISTPTR";
      break;
    case DW_FORM_CLASS_MACPTR:
      ret = "DW_FORM_CLASS_MACPTR";
      break;
    case DW_FORM_CLASS_RANGELISTPTR:
      ret = "DW_FORM_CLASS_RANGELISTPTR";
      break;
    case DW_FORM_CLASS_REFERENCE:
      ret = "DW_FORM_CLASS_REFERENCE";
      break;
    case DW_FORM_CLASS_STRING:
      ret = "DW_FORM_CLASS_STRING";
      break;
    case DW_FORM_CLASS_FRAMEPTR:
      ret = "DW_FORM_CLASS_FRAMPTR";
      break;
    case DW_FORM_CLASS_MACROPTR:
      ret = "DW_FORM_CLASS_MACROPTR";
      break;
    case DW_FORM_CLASS_ADDRPTR:
      ret = "DW_FORM_CLASS_ADDRPTR";
      break;
    case DW_FORM_CLASS_LOCLIST:
      ret = "DW_FORM_CLASS_LOCLIST";
      break;
    case DW_FORM_CLASS_LOCLISTSPTR:
      ret = "DW_FORM_CLASS_LOCLISTSPTR";
      break;
    case DW_FORM_CLASS_RNGLIST:
      ret = "DW_FORM_CLASS_RNGLIST";
      break;
    case DW_FORM_CLASS_RNGLISTSPTR:
      ret = "DW_FORM_CLASS_RNGLISTSPTR";
      break;
    case DW_FORM_CLASS_STROFFSETSPTR:
      ret = "DW_FORM_CLASS_STROFFSETSPTR";
      break;
    default:
      break;
  }
}

//------------------ local function definition --------------------
/**
 * libdwarf_print_error: the helper function to print error msg for dwarf
 * library
 */
static void libdwarf_print_error(Dwarf_Error error, Dwarf_Ptr errarg) {
  errx(EXIT_FAILURE, "libdwarf error: %lld %s\n", dwarf_errno(error),
       dwarf_errmsg(error));
}

static int care_dw_is_valid_reg(int reg_index) {
  return (reg_index >= 0 && reg_index <= 55);
}

static int care_dw_is_general_reg(int reg_index) {
  return (reg_index >= 0 && reg_index <= 15);
}

static int care_dw_is_xmm_reg(int reg_index) {
  return (reg_index >= 17 && reg_index <= 32);
}

static int care_dw_is_fp_reg(int reg_index) {
  return (reg_index >= 33 && reg_index <= 40);
}

static int care_dw_is_mmx_reg(int reg_index) {
  return (reg_index >= 41 && reg_index <= 48);
}

static void care_dw_print_line_table(care_dwarf_t dwarf, Dwarf_Die cu_die) {
  Dwarf_Line *linebuf;
  Dwarf_Signed linecount;
  Dwarf_Error error;
  char *cu_die_name, *file;
  Dwarf_Unsigned lineno, linecolumn;
  Dwarf_Addr lineaddr;
  int i;

  dwarf_srclines(cu_die, &linebuf, &linecount, &error);
  dwarf_diename(cu_die, &cu_die_name, &error);

  printf("Compiler Unit: %s\n", cu_die_name);
  printf("%10s\t%50s\t%7s\t%7s\n", "addr", "source file", "line", "column");
  for (i = 0; i < linecount; i++) {
    dwarf_linesrc(linebuf[i], &file, &error);
    dwarf_lineno(linebuf[i], &lineno, &error);
    dwarf_lineoff_b(linebuf[i], &linecolumn, &error);
    dwarf_lineaddr(linebuf[i], &lineaddr, &error);
    printf("%10llx\t%50s\t%7llu\t%7llu\n", lineaddr, file, lineno, linecolumn);
    dwarf_dealloc(dwarf.dwarf_handle, file, DW_DLA_STRING);
  }
  dwarf_dealloc(dwarf.dwarf_handle, cu_die_name, DW_DLA_STRING);
}

static int care_dw_resolve_reg_name(int dw_reg_index) {
  int map[56] = {0};
#define HANDLE_REG(DW_REG, NAME, SIZE, UCONTEXT_REG) map[DW_REG] = UCONTEXT_REG;
#include "ABI.map"
  return map[dw_reg_index];
}

static void *care_dw_eval_op_value(care_context_t *env, Dwarf_Locdesc_c desc) {
  Dwarf_Small opcode;
  Dwarf_Unsigned op1, op2, op3, offset_for_branch;
  Dwarf_Error error;
  const char *opcode_str;
  int dw_reg, ucontext_reg;

  dwarf_get_location_op_value_c(desc, 0, &opcode, &op1, &op2, &op3,
                                &offset_for_branch, &error);

  if (opcode == DW_OP_addr || opcode == DW_OP_consts) {
    // the variable is at static memory address
    return (void *)op1;
  } else if ((opcode >= DW_OP_reg0 && opcode <= DW_OP_reg31) ||
             opcode == DW_OP_regx) {
    // the value is at regx, no operand is need. so we only
    // need to return the memory address where register is mapped
    if (opcode == DW_OP_regx) {
      assert(care_dw_is_valid_reg(op1));
      dw_reg = op1;
    } else {
      dw_reg = opcode - DW_OP_reg0;
    }

    ucontext_reg = care_dw_resolve_reg_name(dw_reg);
    if (care_dw_is_general_reg(dw_reg)) {
      return (void *)&(*env->gregs)[ucontext_reg];
    } else if (care_dw_is_xmm_reg(dw_reg)) {
      return (void *)&(*env->fpregs)->_xmm[ucontext_reg];
    } else if (care_dw_is_fp_reg(dw_reg)) {
      return (void *)&(*env->fpregs)->_st[ucontext_reg];
    } else {
      errx(EXIT_FAILURE,
           "libc has no correspond registers from dwarf to ucontext");
    }
  } else if ((opcode >= DW_OP_breg0 && opcode <= DW_OP_breg31) ||
             opcode == DW_OP_bregx) {
    // e.g., DW_OP_breg11 44: add 44 to the value in register 11 to get the
    // address of the variable
    if (opcode == DW_OP_bregx) {
      assert(care_dw_is_valid_reg(op1));
      dw_reg = op1;
    } else {
      dw_reg = opcode - DW_OP_breg0;
    }
    ucontext_reg = care_dw_resolve_reg_name(dw_reg);

    if (care_dw_is_general_reg(dw_reg)) {
      return (void *)((*env->gregs)[ucontext_reg] + (Dwarf_Signed)op1);
    } else if (care_dw_is_xmm_reg(dw_reg)) {
      errx(EXIT_FAILURE, "DW_OP_bregx on xmm registers is not interpreted\n");
    } else if (care_dw_is_fp_reg(dw_reg)) {
      errx(EXIT_FAILURE, "DW_OP_bregx on fp registers is not interpreted\n");
      return (void *)&(*env->fpregs)->_st[ucontext_reg];
    } else {
      errx(EXIT_FAILURE,
           "libc has no correspond registers from dwarf to ucontext");
    }
  } else if (opcode == DW_OP_fbreg) {
    // frame based addr calculation
    // FIXME: we assume on X86_64, the frame base is always stored at
    // %RBP (or DW_OP_reg6). fix it in the furture to derive the frame
    // base by retrieving and analyze the DIE of the current function
    return (void *)((*env->gregs)[REG_RBP] + (Dwarf_Signed)op1);
  } else {
    dwarf_get_OP_name(opcode, &opcode_str);
    errx(EXIT_FAILURE, "Unhandled opcode: %s\n", opcode_str);
  }
}

/**
 * care_dwarf_get_global_var_die: get the die for the variable (given by name)
 * it only searchs the global variables by simply calling dwarf_get_vars.
 */
static Dwarf_Die care_dw_get_global_var_die(care_dwarf_t dwarf, char *name) {
  Dwarf_Debug dbg = dwarf.dwarf_handle;

  Dwarf_Error error;

  Dwarf_Var *vars;
  Dwarf_Die result = NULL;
  Dwarf_Signed cnt;
  Dwarf_Off var_offset;
  char *varname;

  int i, retval;

  // dwarf_get_vars is the libdwarf API for retrieving global variables
  retval = dwarf_get_vars(dbg, &vars, &cnt, &error);

  if (retval == DW_DLV_NO_ENTRY) {
    errx(EXIT_FAILURE, "dwarf_get_vars failed (no entry)\n");
  }

  // search the list to find the variable based on its name
  for (i = 0; i < cnt; i++) {
    dwarf_varname(vars[i], &varname, &error);
    if (strcmp(name, varname) == 0) break;
    dwarf_dealloc(dbg, varname, DW_DLA_STRING);
  }

  if (i < cnt) {  // if there is an entry, i < cnt
    retval = dwarf_var_die_offset(vars[i], &var_offset, &error);
    if (retval == DW_DLV_OK) dwarf_offdie(dbg, var_offset, &result, &error);
  }
  dwarf_dealloc(dbg, varname, DW_DLA_STRING);
  dwarf_dealloc(dbg, vars, DW_DLA_VAR);

  return result;
}

/*
 * care_dw_search_var: seach the variable on the tree given by root.
 */
static Dwarf_Die care_dw_search_var(care_dwarf_t dwarf, Dwarf_Die root,
                                    char *varname) {
  int retval, matched;
  char *name;
  Dwarf_Die child, curr, sibling;
  Dwarf_Error error;
  Dwarf_Half die_tag;

  Dwarf_Die tmp = NULL;

  dwarf_tag(root, &die_tag, &error);
  dwarf_diename(root, &name, &error);
  matched = !strcmp(name, varname);
  dwarf_dealloc(dwarf.dwarf_handle, name, DW_DLA_STRING);

  if ((die_tag == DW_TAG_variable || die_tag == DW_TAG_formal_parameter) &&
      matched) {
    return root;
  }

  // search the child if it has, otherwise return NULL
  if (retval = dwarf_child(root, &child, &error) == DW_DLV_OK)
    tmp = care_dw_search_var(dwarf, child, varname);
  else
    return NULL;

  curr = child;

  // iterate over other children through the sibling interface
  while (!tmp && (retval = dwarf_siblingof(dwarf.dwarf_handle, curr, &sibling,
                                           &error) != DW_DLV_NO_ENTRY)) {
    // add code for process the sibling here
    tmp = care_dw_search_var(dwarf, sibling, varname);
    dwarf_dealloc(dwarf.dwarf_handle, curr, DW_DLA_DIE);
    curr = sibling;
  }
  if (tmp != curr) dwarf_dealloc(dwarf.dwarf_handle, curr, DW_DLA_DIE);
  return tmp;
}

/* care_dw_get_local_var_die: get the die for the variable (given by name)
 * if global is true, search the variable among global variables
 * if global is false, seach the variable among local variables, and the PC is
 * used to determine the scope
 */
static Dwarf_Die care_dw_get_local_var_die(care_dwarf_t dwarf, Dwarf_Addr PC,
                                           char *varname) {
  Dwarf_Die func, result;
  int retval;
  func = care_dw_get_func(dwarf, PC);
  return care_dw_search_var(dwarf, func, varname);
}

/**
 * care_dw_get_var_die: get die of the variable given by name
 */
static Dwarf_Die care_dw_get_var_die(care_dwarf_t dwarf, Dwarf_Addr PC,
                                     char *varname) {
  Dwarf_Die result = care_dw_get_local_var_die(dwarf, PC, varname);
  if (!result) result = care_dw_get_global_var_die(dwarf, varname);
  return result;
}

// -------------- some exported helper function -------------

/*
 * care_dwarf_get_scope: it is to get the DIE representing an scope, e.g., a
 * subprogram, that contains the instruction at PC
 */
Dwarf_Die care_dw_get_func(care_dwarf_t dwarf, Dwarf_Addr PC) {
  int i, retval;
  Dwarf_Global *globals;
  Dwarf_Error error;
  Dwarf_Signed gcnt = -1;
  Dwarf_Die result = NULL, tmp = NULL;

  char *global_name;
  Dwarf_Off global_die_offset;  // the offset for DIE representing a global
  Dwarf_Off global_cu_offset;   // the offset for DIE representing
                                // compilation-unit that contains the global
  Dwarf_Half global_tag;
  const char *global_tag_name;

  Dwarf_Addr lowpc, highpc;
  Dwarf_Half form;
  enum Dwarf_Form_Class class;

  // this dwarf interface is to get static functions, it looks at
  // .debug_funcnames section.
  retval = dwarf_get_globals(dwarf.dwarf_handle, &globals, &gcnt, &error);

  if (retval == DW_DLV_NO_ENTRY) {  // .debug_funcnames has no entries
    errx(EXIT_FAILURE, "No scope found for instruction at %llx (%lld)\n", PC,
         gcnt);
  }

  if (retval == DW_DLV_NOCOUNT) {
    errx(EXIT_FAILURE,
         "Error to get the function for %llu (code: %llu, msg: %s)\n", PC,
         dwarf_errno(error), dwarf_errmsg(error));
  }

  for (i = 0; i < gcnt; i++) {
    retval =
        dwarf_global_name_offsets(globals[i], &global_name, &global_die_offset,
                                  &global_cu_offset, &error);

    if (retval != DW_DLV_OK) {
      printf(
          "Error with get function name and offsets (maybe no entry found). "
          "Code: %llu, Message: %s",
          dwarf_errno(error), dwarf_errmsg(error));
      continue;
    }

    retval = dwarf_offdie(dwarf.dwarf_handle, global_die_offset, &tmp, &error);

    dwarf_tag(tmp, &global_tag, &error);

    if (global_tag == DW_TAG_subprogram) {
      dwarf_lowpc(tmp, &lowpc, &error);
      dwarf_highpc_b(tmp, &highpc, &form, &class, &error);

      if (class == DW_FORM_CLASS_CONSTANT) highpc = highpc + lowpc;

      if (lowpc < PC && highpc > PC) {
        if (result == NULL)
          result = tmp;
        else {
          errx(EXIT_FAILURE, "find two functions containing the same PC");
        }
      }
    }

    dwarf_dealloc(dwarf.dwarf_handle, global_name, DW_DLA_STRING);
    dwarf_dealloc(dwarf.dwarf_handle, globals[i], DW_DLA_FUNC);
  }

  dwarf_dealloc(dwarf.dwarf_handle, globals, DW_DLA_LIST);
  return result;
}

/**
 * care_dw_get_next_cu_die: it iterates over each compile unit(CU)
 * and return the debug information entry (die) of the CU
 */
int care_dw_get_next_cu_die(care_dwarf_t handler, Dwarf_Die *cu_die) {
  int retval = DW_DLV_ERROR;
  Dwarf_Bool is_info = 1;
  Dwarf_Unsigned type_offset;
  Dwarf_Unsigned cu_header_length;
  Dwarf_Unsigned next_cu_header_offset;
  Dwarf_Half version;
  Dwarf_Half address_size;
  Dwarf_Half length_size;
  Dwarf_Half extension_size;
  Dwarf_Sig8 type_signature;
  Dwarf_Off abbrev_offset;
  Dwarf_Error error;

  retval = dwarf_next_cu_header_c(
      handler.dwarf_handle, is_info, &cu_header_length, &version,
      &abbrev_offset, &address_size, &length_size, &extension_size,
      &type_signature, &type_offset, &next_cu_header_offset, &error);
  if (retval == DW_DLV_OK) {
    retval = dwarf_siblingof(handler.dwarf_handle, NULL, cu_die, &error);
  }
  return retval;
}

/**
 * care_dw_print_die:
 * simply print a DIE entry, regardless what it represents
 */
void care_dw_print_die(care_dwarf_t handler, Dwarf_Die die, int indent) {
  Dwarf_Attribute *at_list;
  Dwarf_Signed at_count;
  Dwarf_Error error;

  Dwarf_Half attr;
  const char *attr_name;

  Dwarf_Half form;
  const char *form_name;

  Dwarf_Off die_offset;

  Dwarf_Half version, offset_size;
  enum Dwarf_Form_Class form_class;

  Dwarf_Half tag;
  const char *tag_name;

  int i, j, retval;

  /* used for getting attr value */
  const char *at_val_str;
  Dwarf_Addr at_val_addr;
  Dwarf_Attribute at_val_attr;
  Dwarf_Bool at_val_flag;
  Dwarf_Die at_val_die;
  Dwarf_Locdesc *at_val_locdesc_list;
  Dwarf_Loc *at_val_loc;
  Dwarf_Off at_val_off;
  Dwarf_Ptr at_val_expr_loc;
  Dwarf_Signed at_val_list_len;

  Dwarf_Unsigned at_val_expr_len;
  Dwarf_Unsigned at_val_data;

  retval = dwarf_attrlist(die, &at_list, &at_count, &error);
  if (retval == DW_DLV_NO_ENTRY) return;

  retval = dwarf_tag(die, &tag, &error);
  if (retval == DW_DLV_OK) {
    dwarf_get_TAG_name(tag, &tag_name);
    dwarf_dieoffset(die, &die_offset, &error);
    fprintf(stderr, "\n\n%*c%s <0x%llx>\n", indent, ' ', tag_name, die_offset);
    dwarf_dealloc(handler.dwarf_handle, (void *)tag_name, DW_DLA_STRING);
  }

  for (i = 0; i < at_count; i++) {
    attr_name = "<no-attr-name>";
    form_name = "<no-form-name>";
    at_val_str = "<unintepreted-attr-value>";

    // get the attribute number
    dwarf_whatattr(at_list[i], &attr, &error);
    // get attr name
    dwarf_get_AT_name(attr, &attr_name);

    // get attr value form
    dwarf_whatform(at_list[i], &form, &error);

    // get attribute value based on its form class
    dwarf_get_version_of_die(die, &version, &offset_size);
#ifdef DEBUG_DW
    fprintf(stderr, "Dwarf Version: %d\n", version);
#endif

    form_class = dwarf_get_form_class(version, attr, offset_size, form);
    switch (form_class) {
      case DW_FORM_CLASS_STRING:
        dwarf_formstring(at_list[i], (char **)&at_val_str, &error);
        fprintf(stderr, "%*c%s: %s\n", indent + 2, ' ', attr_name, at_val_str);
        dwarf_dealloc(handler.dwarf_handle, (void *)at_val_str, DW_DLA_STRING);
        break;
      case DW_FORM_addr:
        dwarf_formaddr(at_list[i], &at_val_addr, &error);
        fprintf(stderr, "%*c%s: 0x%llx\n", indent + 2, ' ', attr_name,
                at_val_addr);
        break;
      case DW_FORM_CLASS_CONSTANT:
        dwarf_formudata(at_list[i], &at_val_data, &error);
        fprintf(stderr, "%*c%s: %llu\n", indent + 2, ' ', attr_name,
                at_val_data);
        break;
      case DW_FORM_CLASS_FLAG:
        dwarf_formflag(at_list[i], &at_val_flag, &error);
        fprintf(stderr, "%*c%s: %s\n", indent + 2, ' ', attr_name,
                at_val_flag == 0 ? "false" : "true");
        break;
      case DW_FORM_CLASS_REFERENCE:
        dwarf_global_formref(at_list[i], &at_val_off, &error);
        dwarf_offdie(handler.dwarf_handle, at_val_off, &at_val_die, &error);
        dwarf_hasattr(at_val_die, DW_AT_name, &at_val_flag, &error);
        if (at_val_flag) {
          dwarf_attr(at_val_die, DW_AT_name, &at_val_attr, &error);
          dwarf_formstring(at_val_attr, (char **)&at_val_str, &error);
          fprintf(stderr, "%*c%s: <0x%llx> %s\n", indent + 2, ' ', attr_name,
                  at_val_off, at_val_str);
          dwarf_dealloc(handler.dwarf_handle, (void *)at_val_str,
                        DW_DLA_STRING);
        } else {
          fprintf(stderr, "%*c%s: <0x%llx>\n", indent + 2, ' ', attr_name,
                  at_val_off);
        }
        dwarf_dealloc(handler.dwarf_handle, at_val_die, DW_DLA_DIE);
        break;
      case DW_FORM_CLASS_EXPRLOC:
        dwarf_formexprloc(at_list[i], &at_val_expr_len, &at_val_expr_loc,
                          &error);
        dwarf_loclist_from_expr(handler.dwarf_handle, at_val_expr_loc,
                                at_val_expr_len, &at_val_locdesc_list,
                                &at_val_list_len, &error);

        if (at_val_list_len > 1)
          errx(EXIT_FAILURE, "locdesc: %lld\n", at_val_list_len);

        fprintf(stderr, "%*c%s(EXPRLOC):\n", indent + 2, ' ', attr_name);

        for (j = 0; j < at_val_list_len; j++) {
          if (at_val_locdesc_list[j].ld_cents > 1) {
            /*
            errx(EXIT_FAILURE,
                 "The Situation with more than 1 loc is not handled\n");
                 */
            printf("The Situation with more than 1 loc is not handled\n");
          }

          at_val_loc = at_val_locdesc_list[j].ld_s;

          dwarf_get_OP_name(at_val_loc->lr_atom, &at_val_str);
          fprintf(stderr, "%*c %p ~ %p: %s %lld %llu %llu\n",
                  (int)(indent + 2 + strlen(attr_name)), ' ',
                  (void *)at_val_locdesc_list[j].ld_lopc,
                  (void *)at_val_locdesc_list[j].ld_hipc, at_val_str,
                  at_val_loc->lr_number, at_val_loc->lr_number2,
                  at_val_loc->lr_offset);

          dwarf_dealloc(handler.dwarf_handle, (void *)at_val_str,
                        DW_DLA_STRING);
          dwarf_dealloc(handler.dwarf_handle, at_val_loc, DW_DLA_LOC_BLOCK);
        }
        dwarf_dealloc(handler.dwarf_handle, at_val_locdesc_list,
                      DW_DLA_LOCDESC);
        break;
      default:
        dwarf_get_FORM_name(form, &form_name);
        fprintf(stderr, "%*c%s: %s(%s, %s)\n", indent + 2, ' ', attr_name,
                at_val_str, form_name, care_dw_get_form_class_str(form_class));
    }

    dwarf_dealloc(handler.dwarf_handle, (void *)attr_name, DW_DLA_STRING);
    dwarf_dealloc(handler.dwarf_handle, (void *)form_name, DW_DLA_STRING);
    dwarf_dealloc(handler.dwarf_handle, (void *)at_list[i], DW_DLA_ATTR);
  }
  dwarf_dealloc(handler.dwarf_handle, at_list, DW_DLA_LIST);
}

// ---------------- API definition -----------------------

/**
 * care_dw_open: open the dwarf file, it is normally the original binary code
 */
care_dwarf_t care_dw_open(const char *file_name) {
  int res = DW_DLV_ERROR;
  care_dwarf_t dwarf;
  Dwarf_Error error;

  if ((dwarf.fd = open(file_name, O_RDONLY, 0)) < 0)
    errx(EXIT_FAILURE, "open %s failed\n", file_name);

  res = dwarf_init(
      dwarf.fd, DW_DLC_READ,
      libdwarf_print_error /*libdwarf error handler, print error msg */,
      NULL /* no args to error handler */, &dwarf.dwarf_handle, &error);

  if (res == DW_DLV_NO_ENTRY | res != DW_DLV_OK) {
    dwarf_finish(dwarf.dwarf_handle, &error);
    close(dwarf.fd);
    errx(EXIT_FAILURE,
         "No DWARF information present in %s. or dwarf_init failed", file_name);
  }
  return dwarf;
}

/**
 * care_dw_close: close the file
 */
void care_dw_close(care_dwarf_t dwarf) {
  Dwarf_Error error;
  dwarf_finish(dwarf.dwarf_handle, &error);
  close(dwarf.fd);
}

/**
 * care_dw_dealloc_str: deallocate the string allocated by dwarf.
 * it is a simple wrapper to dwarf_dealloc(... DW_DLA_STRING)
 */
void care_dw_dealloc_str(care_dwarf_t dwarf, void *ptr) {
  dwarf_dealloc(dwarf.dwarf_handle, ptr, DW_DLA_STRING);
}

/**
 * care_dw_get_src_info: get debug source line info
 */
int care_dw_get_src_info(care_dwarf_t dwarf, Dwarf_Addr PC, char **ret_file,
                         Dwarf_Unsigned *ret_line, Dwarf_Unsigned *ret_column) {
  Dwarf_Line *linebuf;
  Dwarf_Signed linecount;
  Dwarf_Error error;
  Dwarf_Die cu_die;

  // row info of a line table
  Dwarf_Addr lineaddr;

  int i, retval = 0;

  while ((retval = care_dw_get_next_cu_die(dwarf, &cu_die)) == DW_DLV_OK) {
    retval = 0;
    dwarf_srclines(cu_die, &linebuf, &linecount, &error);

#ifdef DEBUG_DW_LINE
    care_dw_print_line_table(dwarf, cu_die);
#endif

    for (i = 0; i < linecount - 1; i++) {
      dwarf_lineaddr(linebuf[i], &lineaddr, &error);

      if (!retval && lineaddr == PC) {
        if (ret_file) dwarf_linesrc(linebuf[i], ret_file, &error);
        if (ret_line) dwarf_lineno(linebuf[i], ret_line, &error);
        if (ret_column) dwarf_lineoff_b(linebuf[i], ret_column, &error);
        retval = 1;
      } else if (!retval && lineaddr > PC) {
        if (ret_file) dwarf_linesrc(linebuf[i - 1], ret_file, &error);
        if (ret_line) dwarf_lineno(linebuf[i - 1], ret_line, &error);
        if (ret_column) dwarf_lineoff_b(linebuf[i - 1], ret_column, &error);
        retval = 1;
      }
      dwarf_dealloc(dwarf.dwarf_handle, linebuf[i], DW_DLA_LINE);
      if (retval) break;
    }
    dwarf_dealloc(dwarf.dwarf_handle, linebuf, DW_DLA_LIST);
    dwarf_dealloc(dwarf.dwarf_handle, cu_die, DW_DLA_DIE);
    if (retval) break;
  }
  return retval;
}

static int care_dw_get_locdesc(care_context_t *env, Dwarf_Die die,
                               Dwarf_Locdesc_c *locdesc) {
  int retval, found = DW_DLV_NO_ENTRY;
  Dwarf_Error error;
  Dwarf_Addr lopc, hipc;
  Dwarf_Attribute attr;

  // get the attribute descriptor for DW_AT_location attribute
  retval = dwarf_attr(die, DW_AT_location, &attr, &error);
  if (retval == DW_DLV_NO_ENTRY)
    errx(EXIT_FAILURE, "NO location attribution found for the variable");

  Dwarf_Loc_Head_c list_head;
  Dwarf_Unsigned i, list_cnt, entry_cnt, expr_offset, locdesc_offset;
  Dwarf_Small source, lle;
  retval = dwarf_get_loclist_c(attr, &list_head, &list_cnt, &error);

  if (retval != DW_DLV_OK) errx(EXIT_FAILURE, "Failed to get location list\n");

  for (i = 0; i < list_cnt; i++) {
    /**
     * use source and lle to determine the kind of entry
     * need to interpret the lopc and hipc based on lle value.
     * Sometimes they are target address, and sometimes an index into
     * .debug_addr or even a length.
     * entry_cnt will be more than zero only when there is a set of location
     * operators
     */
    retval = dwarf_get_locdesc_entry_c(list_head, i, &lle, &lopc, &hipc,
                                       &entry_cnt, locdesc, &source,
                                       &expr_offset, &locdesc_offset, &error);

    if (retval != DW_DLV_OK) continue;
    if (source != 1)
      errx(EXIT_FAILURE,
           "Unsupported location description(source: 0 location expression, 1. "
           "DWARF2,3,4 loclist form, 2: DWARF5 loclist form). source=%d\n",
           source);

    // interpret the lopc and hipc based on lle value
    switch (lle) {
      case DW_LLE_offset_pair: {
        Dwarf_Die func = care_dw_get_func(env->dwarf, env->pc);
        Dwarf_Addr base;
        retval = dwarf_lowpc(func, &base, &error);
        if (retval != DW_DLV_OK) {
          char *name;
          dwarf_diename(func, &name, &error);
          errx(EXIT_FAILURE, "Failed to get base addr from DIE: %s\n", name);
        }
        lopc += base;
        hipc += base;
        break;
      }
      default:
        errx(EXIT_FAILURE,
             "libcare doesn't handle this addr case (DWARF2,3,4): lle=%d\n",
             lle);
    }
    if (env->pc < hipc && env->pc >= lopc) {
      // found the loc description
      found = DW_DLV_OK;
      break;
    }
  }
  dwarf_loc_head_c_dealloc(list_head);
  return found;
}

/**
 * care_dw_get_var_loc: retrive the location of the variable by name
 * it will first search the die based on the PC address and the name.
 * The PC address is indicating the scope where the variable is located.
 */
void *care_dw_get_var_loc(care_context_t *env, char *varname) {
  int retval;
  Dwarf_Die var_die;
  Dwarf_Locdesc_c locdesc_entry;

  // get the die of the variable
  var_die = care_dw_get_var_die(env->dwarf, env->pc, varname);
#ifdef DEBUG_DW_LOCLIST
  fprintf(stderr, "The Die for %s: \n", varname);
  care_dw_print_die(env->dwarf, var_die, 0);
#endif
  retval = care_dw_get_locdesc(env, var_die, &locdesc_entry);
  if (retval != DW_DLV_OK)
    errx(EXIT_FAILURE, "No location is found for variable %s\n", varname);
  return care_dw_eval_op_value(env, locdesc_entry);
}
