#include <assert.h>
#include <dwarf.h>
#include <err.h>
#include <fcntl.h>
#include <gelf.h>
#include <libdwarf.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "errx.h"
#include "types.h"
#include "util.h"

Dwarf_Die care_dw_get_subprogram_die(care_dwarf_t dwarf, Dwarf_Addr PC);

// ---------------- declaration of helper functions ---------------- //
/**
 * libdwarf_print_error: the helper function to print error msg for
 *                       dwarf library
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

static int care_dw_resolve_reg_name(int dw_reg_index) {
  int map[56] = {0};
#define HANDLE_REG(DW_REG, NAME, SIZE, UCONTEXT_REG) map[DW_REG] = UCONTEXT_REG;
#include "ABI.map"
  return map[dw_reg_index];
}

static char *care_dw_get_form_class_str(enum Dwarf_Form_Class class) {
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
      ret = "INVALID";
      break;
  }
  return ret;
}

static bool care_dw_contains_pc(care_dwarf_t dwarf, Dwarf_Die scope,
                                Dwarf_Addr PC) {
  Dwarf_Bool has_low_pc, has_high_pc, has_range;
  Dwarf_Debug dbg = dwarf->dwarf_handle;
  Dwarf_Error error;
  Dwarf_Half tag;
  int status;
  bool retval = false;

  has_low_pc = has_high_pc = has_range = 0;

  status = dwarf_tag(scope, &tag, &error);

  if (tag != DW_TAG_compile_unit && tag != DW_TAG_subprogram &&
      tag != DW_TAG_lexical_block)
    return 0;

  status = dwarf_hasattr(scope, DW_AT_low_pc, &has_low_pc, &error);
  if (status == DW_DLV_ERROR)
    fprintf(stdout, "dwarf_hasattr error: %s\n", dwarf_errmsg(error));

  status = dwarf_hasattr(scope, DW_AT_high_pc, &has_high_pc, &error);
  if (status == DW_DLV_ERROR)
    fprintf(stdout, "dwarf_hasattr error: %s\n", dwarf_errmsg(error));

  status = dwarf_hasattr(scope, DW_AT_ranges, &has_range, &error);
  if (status == DW_DLV_ERROR)
    fprintf(stdout, "dwarf_hasattr error: %s\n", dwarf_errmsg(error));

  if (has_low_pc && has_high_pc) {
    Dwarf_Addr lowpc, highpc;
    Dwarf_Half form;
    enum Dwarf_Form_Class class;
    dwarf_lowpc(scope, &lowpc, &error);
    dwarf_highpc_b(scope, &highpc, &form, &class, &error);
    if (class == DW_FORM_CLASS_CONSTANT) highpc += lowpc;
    if (lowpc <= PC && highpc >= PC) retval = true;
  } else if (has_range) {
    Dwarf_Addr base, lowpc, highpc;
    Dwarf_Attribute attr;
    Dwarf_Die subprogram;
    Dwarf_Ranges *ranges;
    Dwarf_Signed count;
    Dwarf_Unsigned bytes, offset;

    subprogram = care_dw_get_subprogram_die(dwarf, PC);
    if (!subprogram) {
      char buf[256];
      sprintf(buf, "Failed to get subprograme DIE in care_dw_contains_pc.");
      care_err_set_external_msg(buf);
      return false;
    }
    dwarf_lowpc(subprogram, &base, &error);

    dwarf_attr(scope, DW_AT_ranges, &attr, &error);

#if DEBUG_DWARF_RANGE
    Dwarf_Half version, offset_size, form;
    char *form_name;
    dwarf_whatform(attr, &form, &error);
    dwarf_get_version_of_die(CU, &version, &offset_size);
    dwarf_get_FORM_name(form, &form_name);
    printf("Form: %x (%s) \t Form Class: %d\n", form, form_name,
           dwarf_get_form_class(version, attr, offset_size, form));
#endif

    dwarf_global_formref(attr, &offset, &error);

    retval =
        dwarf_get_ranges_a(dbg, offset, scope, &ranges, &count, &bytes, &error);
    if (retval == DW_DLV_NO_ENTRY) {
      fprintf(stdout, "No ranges found\n");
      return false;
    }
    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "dwarf_get_ranges_a failed: %s\n", dwarf_errmsg(error));
      return false;
    }

    for (unsigned i = 0; i < count; i++) {
      Dwarf_Ranges *cur = ranges + i;
#if DEBUG_DWARF_RANGE
      printf("Ranges: type -- %d, addr1 -- %llx, addr -- %llx\n", cur->dwr_type,
             cur->dwr_addr1, cur->dwr_addr2);
#endif
      if (cur->dwr_type == DW_RANGES_END)
        break;
      else if (cur->dwr_type == DW_RANGES_ADDRESS_SELECTION)
        base = cur->dwr_addr2;
      else if (cur->dwr_type == DW_RANGES_ENTRY) {
        lowpc = base + cur->dwr_addr1;
        highpc = base + cur->dwr_addr2;
        if (lowpc <= PC && highpc >= PC) {
          retval = true;
          break;
        }
      }
    }
    dwarf_ranges_dealloc(dbg, ranges, count);
  }
  return retval;
}

static void care_dw_print_line_table(care_dwarf_t dwarf, Dwarf_Die cu_die) {
  Dwarf_Line *linebuf;
  Dwarf_Signed linecount;
  Dwarf_Error error;
  char *cu_die_name, *file;
  Dwarf_Unsigned lineno, linecolumn;
  Dwarf_Addr lineaddr;
  int i;
  Dwarf_Debug dwarf_handle = dwarf->dwarf_handle;

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
    dwarf_dealloc(dwarf_handle, file, DW_DLA_STRING);
  }
  dwarf_dealloc(dwarf_handle, cu_die_name, DW_DLA_STRING);
}

/**
 * care_dw_print_die:
 * simply print a DIE entry, regardless what it represents
 */
static void care_dw_print_die(care_dwarf_t dwarf, Dwarf_Die die, int indent) {
  Dwarf_Debug dwarf_handle = dwarf->dwarf_handle;
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
    dwarf_dealloc(dwarf_handle, (void *)tag_name, DW_DLA_STRING);
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
        dwarf_dealloc(dwarf_handle, (void *)at_val_str, DW_DLA_STRING);
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
        dwarf_offdie(dwarf_handle, at_val_off, &at_val_die, &error);
        dwarf_hasattr(at_val_die, DW_AT_name, &at_val_flag, &error);
        if (at_val_flag) {
          dwarf_attr(at_val_die, DW_AT_name, &at_val_attr, &error);
          dwarf_formstring(at_val_attr, (char **)&at_val_str, &error);
          fprintf(stderr, "%*c%s: <0x%llx> %s\n", indent + 2, ' ', attr_name,
                  at_val_off, at_val_str);
          dwarf_dealloc(dwarf_handle, (void *)at_val_str, DW_DLA_STRING);
        } else {
          fprintf(stderr, "%*c%s: <0x%llx>\n", indent + 2, ' ', attr_name,
                  at_val_off);
        }
        dwarf_dealloc(dwarf_handle, at_val_die, DW_DLA_DIE);
        break;
      case DW_FORM_CLASS_EXPRLOC:
        dwarf_formexprloc(at_list[i], &at_val_expr_len, &at_val_expr_loc,
                          &error);
        dwarf_loclist_from_expr(dwarf_handle, at_val_expr_loc, at_val_expr_len,
                                &at_val_locdesc_list, &at_val_list_len, &error);

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

          dwarf_dealloc(dwarf_handle, (void *)at_val_str, DW_DLA_STRING);
          dwarf_dealloc(dwarf_handle, at_val_loc, DW_DLA_LOC_BLOCK);
        }
        dwarf_dealloc(dwarf_handle, at_val_locdesc_list, DW_DLA_LOCDESC);
        break;
      default:
        dwarf_get_FORM_name(form, &form_name);
        fprintf(stderr, "%*c%s: %s(%s, %s)\n", indent + 2, ' ', attr_name,
                at_val_str, form_name, care_dw_get_form_class_str(form_class));
    }

    dwarf_dealloc(dwarf_handle, (void *)attr_name, DW_DLA_STRING);
    dwarf_dealloc(dwarf_handle, (void *)form_name, DW_DLA_STRING);
    dwarf_dealloc(dwarf_handle, (void *)at_list[i], DW_DLA_ATTR);
  }
  dwarf_dealloc(dwarf_handle, at_list, DW_DLA_LIST);
}

/**
 * care_dw_get_cu: care_dw_get_cu is to find and return the DIE
 *                 represneting a compilation unit that contains
 *                 the instruction at PC. It iterates over DIEs
 *                 of CUs and check the address ranges of the CU
 * inputs: handle the Dwarf_Debug handler.
 *         PC the instruction address.
 */
static Dwarf_Die care_dw_get_cu_die(care_dwarf_t dwarf, Dwarf_Addr PC) {
  int retval = DW_DLV_ERROR;
  int trips = 0;
  Dwarf_Debug dbg = dwarf->dwarf_handle;
  Dwarf_Bool is_info = 1;  // find CU in .debug_info
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

  Dwarf_Die CU;
  Dwarf_Half Tag;

  while (true) {  // iterate over Compile Units
    retval = dwarf_next_cu_header_c(
        dbg, is_info, &cu_header_length, &version, &abbrev_offset,
        &address_size, &length_size, &extension_size, &type_signature,
        &type_offset, &next_cu_header_offset, &error);

    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "dwarf_next_cu_header_c failed: %s\n",
              dwarf_errmsg(error));
      return NULL;
    }

    if (retval == DW_DLV_NO_ENTRY) trips++;
    if (trips == 2) return NULL;

    // get the first DIE in current Compilation Unit, which
    // is also the DIE representing the Compile Unit
    retval = dwarf_siblingof(dbg, NULL, &CU, &error);

    // No DIE found in curr CU, check next
    if (retval == DW_DLV_NO_ENTRY) continue;

    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "Failed to get the First DIE in a CU: %s\n",
              dwarf_errmsg(error));
      continue;
    }

    // double check whether the DIE is representing a compile unit
    retval = dwarf_tag(CU, &Tag, &error);
    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "Failed to get the TAG of DIE: %s", dwarf_errmsg(error));
      continue;
    }
    if (Tag != DW_TAG_compile_unit) continue;

#if DEBUG_DWARF
    char *CU_name;
    dwarf_diename(CU, &CU_name, &error);
    fprintf(stdout, "CU Name: %s\n", CU_name);
#endif
    if (care_dw_contains_pc(dwarf, CU, PC)) return CU;
  }
  return NULL;
}

/*
 * care_dw_get_cu_die_v2: another implementation of getting the CU DIE
 *                             which contains the instruction pointed
 *                             by PC. It is based dwarf_get_globals interface
 */
static Dwarf_Die care_dw_get_cu_die_v2(care_dwarf_t dwarf, Dwarf_Addr PC) {
  Dwarf_Global *globals;
  Dwarf_Error error;
  Dwarf_Signed gcnt = -1;
  Dwarf_Die tmp = NULL, CU = NULL;

  Dwarf_Half tag, form;
  // the offsets for DIEs of the global object
  // and the CU that contains the object
  Dwarf_Off die_offset, cu_offset;
  Dwarf_Debug Dbg = dwarf->dwarf_handle;
  char *name;
  int i, retval;

  // this dwarf interface is to get static functions, it looks at
  // .debug_funcnames section.
  retval = dwarf_get_globals(Dbg, &globals, &gcnt, &error);

  if (retval == DW_DLV_NO_ENTRY) {  // .debug_funcnames has no entries
    fprintf(stdout, "No subprogram found for instruction at %llx\n", PC);
    return NULL;
  }

  if (retval == DW_DLV_NOCOUNT) {
    fprintf(stdout, "Error to get the function for %llu (%s)\n", PC,
            dwarf_errmsg(error));
    return NULL;
  }

  for (i = 0; i < gcnt; i++) {
    // get the name for the global and its DIE offset,
    // which is necessary to retrive the DIE for it so
    // we can check whether its a expected DIE
    retval = dwarf_global_name_offsets(globals[i], &name, &die_offset,
                                       &cu_offset, &error);

    if (retval != DW_DLV_OK) {
      fprintf(stdout, "Failed to get the global name and offset (%s)\n",
              dwarf_errmsg(error));
      continue;
    }

    retval = dwarf_offdie(Dbg, die_offset, &tmp, &error);
    dwarf_tag(tmp, &tag, &error);

    if (tag == DW_TAG_subprogram && care_dw_contains_pc(dwarf, tmp, PC)) {
      dwarf_offdie(Dbg, cu_offset, &CU, &error);
    }

    dwarf_dealloc(Dbg, name, DW_DLA_STRING);
    dwarf_dealloc(Dbg, globals[i], DW_DLA_FUNC);
  }
  dwarf_dealloc(Dbg, globals, DW_DLA_LIST);
  return CU;
}

/*
 * care_dw_get_subprogram_die: get the DIE representing an subprogram,
 *                             which contains the instruction pointed
 *                             by PC, and the DIE for the CU of subprogram
 *
 */
Dwarf_Die care_dw_get_subprogram_die(care_dwarf_t dwarf, Dwarf_Addr PC) {
  Dwarf_Global *globals;
  Dwarf_Error error;
  Dwarf_Signed gcnt = -1;
  Dwarf_Die tmp = NULL, subprogram = NULL;

  Dwarf_Half tag, form;
  // the offsets for DIEs of the global object
  // and the CU that contains the object
  Dwarf_Off die_offset, cu_offset;
  Dwarf_Debug Dbg = dwarf->dwarf_handle;
  char *name;
  int i, retval;

  // this dwarf interface is to get static functions, it looks at
  // .debug_funcnames section.
  retval = dwarf_get_globals(Dbg, &globals, &gcnt, &error);

  if (retval == DW_DLV_NO_ENTRY) {  // .debug_funcnames has no entries
    fprintf(stdout, "No subprogram found for instruction at %llx\n", PC);
    return NULL;
  }

  if (retval == DW_DLV_NOCOUNT) {
    fprintf(stdout, "Error to get the function for %llu (%s)\n", PC,
            dwarf_errmsg(error));
    return NULL;
  }

  for (i = 0; i < gcnt; i++) {
    // get the name for the global and its DIE offset,
    // which is necessary to retrive the DIE for it so
    // we can check whether its a expected DIE
    retval = dwarf_global_name_offsets(globals[i], &name, &die_offset,
                                       &cu_offset, &error);

    if (retval != DW_DLV_OK) {
      fprintf(stdout, "Failed to get the global name and offset (%s)\n",
              dwarf_errmsg(error));
      continue;
    }

    retval = dwarf_offdie(Dbg, die_offset, &tmp, &error);
    dwarf_tag(tmp, &tag, &error);

    if (tag == DW_TAG_subprogram && care_dw_contains_pc(dwarf, tmp, PC))
      subprogram = tmp;

    dwarf_dealloc(Dbg, name, DW_DLA_STRING);
    dwarf_dealloc(Dbg, globals[i], DW_DLA_FUNC);
  }
  dwarf_dealloc(Dbg, globals, DW_DLA_LIST);
  return subprogram;
}

/** care_dw_get_lexical_block_die is to return the DIE that representing a
 * lexical block containing the  instruction in PC, the block should be
 * the child of root, which should be either a subprogram die or lexical
 * block die
 */
static Dwarf_Die care_dw_get_lexical_block_die(care_dwarf_t dwarf,
                                               Dwarf_Die root, Dwarf_Addr PC) {
  Dwarf_Debug dbg = dwarf->dwarf_handle;
  Dwarf_Die curr, sibling;
  Dwarf_Half tag;
  Dwarf_Error error;
  int retval;
  dwarf_tag(root, &tag, &error);
  if (tag != DW_TAG_subprogram && tag != DW_TAG_lexical_block) {
    printf("Expcting a DIE either for a subprogram DIE or for lexical block\n");
    return NULL;
  }

  retval = dwarf_child(root, &curr, &error);
  if (retval != DW_DLV_OK) return NULL;
  dwarf_tag(curr, &tag, &error);
  if (tag == DW_TAG_lexical_block && care_dw_contains_pc(dwarf, curr, PC))
    return curr;

  while (1) {
    retval = dwarf_siblingof(dbg, curr, &sibling, &error);

    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "Failed to execute dwarf_siblingof: %s\n",
              dwarf_errmsg(error));
      break;
    }

    if (retval == DW_DLV_NO_ENTRY) break;

    dwarf_dealloc(dbg, curr, DW_DLA_DIE);
    curr = sibling;
    curr = sibling;
    dwarf_tag(sibling, &tag, &error);
    if (tag != DW_TAG_lexical_block) continue;
    if (care_dw_contains_pc(dwarf, sibling, PC)) return sibling;
  }
  return NULL;
}

/**
 * care_dw_get_locdesc: get the location description for a variable die.
 * each variable could have multiple locations, e.g. stack and register,
 * they are accessed depends on instruction address.
 */
static care_status_t care_dw_get_locdesc(care_context_t *env, Dwarf_Die die,
                                         Dwarf_Locdesc_c *locdesc) {
  int retval, found = DW_DLV_NO_ENTRY;
  Dwarf_Error error;
  Dwarf_Addr lopc, hipc;
  Dwarf_Attribute attr;

  // get the attribute descriptor for DW_AT_location attribute
  retval = dwarf_attr(die, DW_AT_location, &attr, &error);
  if (retval == DW_DLV_NO_ENTRY) {
    care_err_set_code(CARE_NO_LOC);
    return CARE_FAILURE;
  }

  Dwarf_Loc_Head_c list_head;
  Dwarf_Unsigned i, list_cnt, entry_cnt, expr_offset, locdesc_offset;
  Dwarf_Small source, lle;
  retval = dwarf_get_loclist_c(attr, &list_head, &list_cnt, &error);

  if (retval != DW_DLV_OK) {
    care_err_set_code(CARE_NO_LOC);
    return CARE_FAILURE;
  }

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
    if (source != 1) {
      char buf[512];
      sprintf(buf,
              "Unsupported location description: %d (0: loc expr, 1: DWARF "
              "2,3,4 Form, 2: DWARF 5 Form).",
              source);
      care_err_set_external_msg(buf);
      break;
    }

    // interpret the lopc and hipc based on lle value
    if (lle == DW_LLE_offset_pair) {
      Dwarf_Addr base;
      Dwarf_Die func = care_dw_get_subprogram_die(env->dwarf, env->pc);
      if (!func) {
        char buf[256];
        sprintf(buf, "Failed to find the subprogram DIE.");
        care_err_set_external_msg(buf);
        break;
      }

      retval = dwarf_lowpc(func, &base, &error);
      if (retval != DW_DLV_OK) {
        char *name;
        char buf[256];
        dwarf_diename(func, &name, &error);
        sprintf(buf, "Failed to get base addr from DIE: %s\n", name);
        care_err_set_external_msg(buf);
        break;
      }

      lopc += base;
      hipc += base;

    } else {
      char buf[256];
      sprintf(buf, "Unsupported lle for interpretting lopc/hipc: %d.", lle);
      care_err_set_external_msg(buf);
      break;
    }

    if (env->pc < hipc && env->pc >= lopc) {
      // found the loc description
      found = DW_DLV_OK;
      break;
    }
  }
  dwarf_loc_head_c_dealloc(list_head);
  if (found == DW_DLV_OK) return CARE_SUCCESS;
  care_err_set_code(CARE_NO_LOC);
  return CARE_FAILURE;
}

/**
 * care_dw_eval_locdesc: care_dw_eval_locdesc is to evaluate the dwarf location
 * expression to get the actual location (memory address even for registers,
 * since we are at the stack frame for singal, and OS saved regs for app stack
 * in memory). For constants, we will alloc a memory for it, for general
 * purpose, the allocated memory is 8-bytes.
 */
static void *care_dw_eval_locdesc(care_context_t *env, Dwarf_Locdesc_c desc) {
  Dwarf_Small opcode;
  Dwarf_Unsigned op1, op2, op3, offset_for_branch;
  Dwarf_Error error;
  const char *opcode_str;
  int dw_reg, ucontext_reg;

  dwarf_get_location_op_value_c(desc, 0, &opcode, &op1, &op2, &op3,
                                &offset_for_branch, &error);

  if (opcode == DW_OP_consts || opcode == DW_OP_constu ||
      opcode == DW_OP_const8s || opcode == DW_OP_const8u ||
      opcode == DW_OP_const4s || opcode == DW_OP_const4u ||
      opcode == DW_OP_const2s || opcode == DW_OP_const2u ||
      opcode == DW_OP_const1s || opcode == DW_OP_const1u) {
    // 16(LEB128)/8/4/2/1-bytes signed, unsigend consts
    uint64_t *buf = (uint64_t *)malloc(sizeof(uint64_t));
    *buf = (uint64_t)op1;
    return buf;
  } else if (opcode == DW_OP_addr) {
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
      return (void *)&(*env->machine.gregs)[ucontext_reg];
    } else if (care_dw_is_xmm_reg(dw_reg)) {
      return (void *)&(*env->machine.fpregs)->_xmm[ucontext_reg];
    } else if (care_dw_is_fp_reg(dw_reg)) {
      return (void *)&(*env->machine.fpregs)->_st[ucontext_reg];
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
      return (void *)((*env->machine.gregs)[ucontext_reg] + (Dwarf_Signed)op1);
    } else if (care_dw_is_xmm_reg(dw_reg)) {
      errx(EXIT_FAILURE, "DW_OP_bregx on xmm registers is not interpreted\n");
    } else if (care_dw_is_fp_reg(dw_reg)) {
      errx(EXIT_FAILURE, "DW_OP_bregx on fp registers is not interpreted\n");
      return (void *)&(*env->machine.fpregs)->_st[ucontext_reg];
    } else {
      errx(EXIT_FAILURE,
           "libc has no correspond registers from dwarf to ucontext");
    }
  } else if (opcode == DW_OP_fbreg) {
    // frame based addr calculation
    // FIXME: we assume on X86_64, the frame base is always stored at
    // %RBP (or DW_OP_reg6). fix it in the furture to derive the frame
    // base by retrieving and analyze the DIE of the current function
    return (void *)((*env->machine.gregs)[REG_RBP] + (Dwarf_Signed)op1);
  }

  char buf[256];
  dwarf_get_OP_name(opcode, &opcode_str);
  sprintf(buf, "Failed to evaluate locdesc (Unhandled opcode: %s).",
          opcode_str);
  care_err_set_external_msg(buf);
  care_err_set_code(CARE_NO_LOC);
  return NULL;
}

/**
 * care_dwarf_get_global_var_die: get the die for the variable (given by name)
 * it only searchs the global variables by simply calling dwarf_get_vars.
 */
static Dwarf_Die care_dw_get_global_var_die(care_dwarf_t dwarf, char *name) {
  Dwarf_Debug dbg = dwarf->dwarf_handle;

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

// -------------------- function definitions --------------------- //
/**
 * care_dw_open: open a dwarf file which is normally the executable file
 * on success, it will return an care_dwarf_t object, otherwise a nullptr
 * will be returned.
 */
care_dwarf_t care_dw_open(const char *file_name) {
  char errmsg[128];
  int res = DW_DLV_ERROR;
  int fd;
  Dwarf_Debug dwarf_handle;
  Dwarf_Error error;

  if ((fd = open(file_name, O_RDONLY, 0)) == -1) {
    sprintf(errmsg, "Open File %s Failed", file_name);
    perror(errmsg);
    return NULL;
  }

  if (DW_DLV_OK != dwarf_init(fd, DW_DLC_READ, libdwarf_print_error, NULL,
                              &dwarf_handle, &error)) {
    dwarf_finish(dwarf_handle, &error);
    close(fd);
    fprintf(stdout, "No DWARF information present in %s. or dwarf_init failed",
            file_name);
    return NULL;
  }

  care_dwarf_t dwarf = (care_dwarf_t)malloc(sizeof(struct __care_dwarf));
  dwarf->fd = fd;
  dwarf->dwarf_handle = dwarf_handle;
  return dwarf;
}

/**
 * care_dw_close: close the file
 */
void care_dw_close(care_dwarf_t dwarf) {
  Dwarf_Error error;
  dwarf_finish(dwarf->dwarf_handle, &error);
  close(dwarf->fd);
  free(dwarf);
}

//------------------ local function definition --------------------

/*
 * care_dw_search_var: seach the variable on the tree given by root.
 */
static Dwarf_Die care_dw_search_var(care_dwarf_t dwarf, Dwarf_Die scope,
                                    char *varname) {
  Dwarf_Debug dbg = dwarf->dwarf_handle;
  int retval, matched;
  char *name;
  Dwarf_Die curr, sibling;
  Dwarf_Error error;
  Dwarf_Half die_tag;

  Dwarf_Die result = NULL;

  dwarf_tag(scope, &die_tag, &error);
  if (die_tag != DW_TAG_subprogram && die_tag != DW_TAG_lexical_block)
    return NULL;

  // search the child if it has, otherwise return NULL
  if ((retval = dwarf_child(scope, &curr, &error)) != DW_DLV_OK) return NULL;

  dwarf_tag(curr, &die_tag, &error);
  dwarf_diename(curr, &name, &error);
  matched = !strcmp(name, varname);
  dwarf_dealloc(dbg, name, DW_DLA_STRING);
  if ((die_tag == DW_TAG_variable || die_tag == DW_TAG_formal_parameter) &&
      matched)
    return curr;

  // iterate over other children through the sibling interface
  while (1) {
    retval = dwarf_siblingof(dbg, curr, &sibling, &error);
    if (retval == DW_DLV_ERROR) {
      fprintf(stdout, "Failed to execute dwarf_siblingof: %s\n",
              dwarf_errmsg(error));
      break;
    }

    if (retval == DW_DLV_NO_ENTRY) break;

    dwarf_dealloc(dbg, curr, DW_DLA_DIE);
    curr = sibling;

    dwarf_tag(curr, &die_tag, &error);
    dwarf_diename(curr, &name, &error);
    matched = !strcmp(name, varname);
    dwarf_dealloc(dbg, name, DW_DLA_STRING);

    if ((die_tag == DW_TAG_variable || die_tag == DW_TAG_formal_parameter) &&
        matched) {
      result = curr;
      break;
    }
  }
  return result;
}

/* care_dw_get_local_var_die: get the die for the variable (given by name)
 * if global is true, search the variable among global variables
 * if global is false, seach the variable among local variables, and the PC is
 * used to determine the scope
 */
static Dwarf_Die care_dw_get_local_var_die(care_dwarf_t dwarf, Dwarf_Addr PC,
                                           char *varname) {
  struct scope {
    Dwarf_Die die;
    struct scope *next;
  } *scopes = NULL;

  // construct the scopes for the instruction
  Dwarf_Die curr, subprogram, retval;
  subprogram = care_dw_get_subprogram_die(dwarf, PC);

  scopes = (struct scope *)malloc(sizeof(struct scope));
  scopes->die = subprogram;
  scopes->next = NULL;

  curr = subprogram;

  while (true) {
    curr = care_dw_get_lexical_block_die(dwarf, curr, PC);
    if (!curr) break;
    struct scope *tmp = (struct scope *)malloc(sizeof(struct scope));
    tmp->die = curr;
    tmp->next = scopes;
    scopes = tmp;
  }

#ifdef DEBUG
  struct scope *it = scopes;
  int count = 0;
  while (it) {
    fprintf(stderr, "Scope %d: \n", count++);
    care_dw_print_die(dwarf, it->die, 2);
    printf("\n\n");
    it = it->next;
  }
#endif

  struct scope *tmp = scopes;
  while (tmp) {
    retval = care_dw_search_var(dwarf, tmp->die, varname);
    if (retval) break;
    tmp = tmp->next;
  }
  if (!tmp) return NULL;
  return retval;
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

// ---------------- API definition ----------------------- //

/**
 * care_dw_get_src_info: get debug source line info
 */
care_status_t care_dw_get_src_info(care_dwarf_t dwarf, Dwarf_Addr PC,
                                   char **ret_file, Dwarf_Unsigned *ret_line,
                                   Dwarf_Unsigned *ret_column) {
  Dwarf_Debug dwarf_handle = dwarf->dwarf_handle;
  Dwarf_Line *linebuf;
  Dwarf_Signed linecount;
  Dwarf_Error error;
  Dwarf_Die cu_die;

  // row info of a line table
  Dwarf_Addr lineaddr;

  int i, retval = 0;

  cu_die = care_dw_get_cu_die(dwarf, PC);

  if (!cu_die) {
    care_err_set_code(CARE_NO_CU);
    return CARE_FAILURE;
  }

#ifdef DEBUG_RK
  care_dw_print_die(dwarf, cu_die, 2);
#endif

  retval = dwarf_srclines(cu_die, &linebuf, &linecount, &error);
  if (retval != DW_DLV_OK) {
    care_err_set_code(CARE_NO_KEY);
    return CARE_FAILURE;
  }

#ifdef DEBUG_DW_LINE
  care_dw_print_line_table(dwarf, cu_die);
#endif
  retval = 0;
  for (i = 0; i < linecount - 1; i++) {
    dwarf_lineaddr(linebuf[i], &lineaddr, &error);

    if (lineaddr == PC) {
      char *buf;
      dwarf_linesrc(linebuf[i], &buf, &error);
      dwarf_lineno(linebuf[i], ret_line, &error);
      dwarf_lineoff_b(linebuf[i], ret_column, &error);

      *ret_file = strdup(buf);
      dwarf_dealloc(dwarf_handle, buf, DW_DLA_STRING);

      retval = 1;
    } else if (lineaddr > PC) {
      char *buf;
      dwarf_linesrc(linebuf[i - 1], &buf, &error);
      dwarf_lineno(linebuf[i - 1], ret_line, &error);
      dwarf_lineoff_b(linebuf[i - 1], ret_column, &error);

      *ret_file = strdup(buf);
      dwarf_dealloc(dwarf_handle, buf, DW_DLA_STRING);

      retval = 1;
    }
    dwarf_dealloc(dwarf_handle, linebuf[i], DW_DLA_LINE);
    if (retval) break;
  }

  dwarf_dealloc(dwarf_handle, linebuf, DW_DLA_LIST);
  dwarf_dealloc(dwarf_handle, cu_die, DW_DLA_DIE);

  if (!retval) {
    care_err_set_code(CARE_NO_KEY);
    return CARE_FAILURE;
  }

  return CARE_SUCCESS;
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
  if (!var_die) {
    char buf[256];
    sprintf(buf, "No Die found for the variable: %s", varname);
    care_err_set_external_msg(buf);
    care_err_set_code(CARE_NO_LOC);
    return NULL;
  }
#ifdef DEBUG_DW_LOCLIST
  fprintf(stderr, "The Die for %s: \n", varname);
  care_dw_print_die(env->dwarf, var_die, 0);
#endif
  retval = care_dw_get_locdesc(env, var_die, &locdesc_entry);
  if (retval == CARE_SUCCESS) return care_dw_eval_locdesc(env, locdesc_entry);
  return NULL;
}
