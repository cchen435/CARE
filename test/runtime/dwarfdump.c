#include <err.h>
#include <fcntl.h>

#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>

#include "util.h"
#include "dw.h"

//extern void care_dw_print_die(Dwarf_Debug handler, Dwarf_Die die, int indent);
//extern int care_dw_get_next_cu_die(Dwarf_Debug handler, Dwarf_Die *cu_die);

static void dwarf_print_error(Dwarf_Error error, Dwarf_Ptr errarg) {
  errx(EXIT_FAILURE, "libdwarf error: %lld %s\n", dwarf_errno(error),
       dwarf_errmsg(error));
}

static void dwarf_print_children(care_dwarf_t handler, Dwarf_Die parent,
                                 int level) {
  int retval;
  Dwarf_Die child, curr, sibling;
  Dwarf_Error error;

  retval = dwarf_child(parent, &child, &error);
  if (retval == DW_DLV_NO_ENTRY)
    return;

  care_dw_print_die(handler, child, level);
  dwarf_print_children(handler, child, level + 4);

  curr = child;

  while ((retval = dwarf_siblingof(handler.dwarf_handle, curr, &sibling, &error)) !=
                  DW_DLV_NO_ENTRY) {
    dwarf_dealloc(handler.dwarf_handle, curr, DW_DLA_DIE);
    curr = sibling;
    care_dw_print_die(handler, curr, level);
    dwarf_print_children(handler, curr, level + 4);
  }
  dwarf_dealloc(handler.dwarf_handle, curr, DW_DLA_DIE);
}

static void dwarf_print_cu(care_dwarf_t handler, Dwarf_Die cu) {
  int retval;
  Dwarf_Half tag;
  Dwarf_Error error;
  const char *tag_name;

  Dwarf_Die curr, next;

  retval = dwarf_tag(cu, &tag, &error);

  if (tag != DW_TAG_compile_unit) {
    dwarf_get_TAG_name(tag, &tag_name);
    fprintf(stderr, "Expect a CU die, but meet: %s\n", tag_name);
    dwarf_dealloc(handler.dwarf_handle, (void *)tag_name, DW_DLA_STRING);
    exit(EXIT_FAILURE);
  }

  care_dw_print_die(handler, cu, 0);
  dwarf_print_children(handler, cu, 4);
}

void print_src_files(Dwarf_Debug handler, Dwarf_Die cu_die) {
  char **srcfiles, *diename;
  Dwarf_Signed srccount;
  Dwarf_Error error;

  int i, retval;

  retval = dwarf_srcfiles(cu_die, &srcfiles, &srccount, &error);
  if (retval != DW_DLV_OK) {
    dwarf_diename(cu_die, &diename, &error);
    errx(EXIT_FAILURE, "No src files found for CU: %s\n", diename);
  }

  for (i = 0; i < srccount; i++) {
    printf("[%d]: %s\n", i, srcfiles[i]);
    dwarf_dealloc(handler, srcfiles[i], DW_DLA_STRING);
  }
  dwarf_dealloc(handler, srcfiles, DW_DLA_LIST);
}

void print_src_lines(Dwarf_Debug handler, Dwarf_Die cu_die) {
  Dwarf_Line *linebuf;
  Dwarf_Signed linecount;
  Dwarf_Error error;

  // row info of a line table
  Dwarf_Unsigned lineno, linecolumn;
  Dwarf_Addr lineaddr;
  char *linesrcfile;

  int i;

  dwarf_srclines(cu_die, &linebuf, &linecount, &error);

  printf("%10s\t%50s\t%7s\t%7s\n", "addr", "source file", "line", "column");

  for (i = 0; i < linecount; i++) {
    dwarf_linesrc(linebuf[i], &linesrcfile, &error);
    dwarf_lineno(linebuf[i], &lineno, &error);
    dwarf_lineoff_b(linebuf[i], &linecolumn, &error);
    dwarf_lineaddr(linebuf[i], &lineaddr, &error);

    printf("%10llx\t%50s\t%7llu\t%7llu\n", lineaddr, linesrcfile, lineno, linecolumn);

    dwarf_dealloc(handler, linesrcfile, DW_DLA_STRING);
    dwarf_dealloc(handler, linebuf[i], DW_DLA_LINE);
  }

  dwarf_dealloc(handler, linebuf, DW_DLA_LIST);
}

int main(int argc, char **argv) {
  int fd, retval, cu_cnt = 0;
  Dwarf_Error error;
  care_dwarf_t dwarf_handle;
  char *cu_name;

  Dwarf_Addr PC;
  Dwarf_Die cu_die;

  if (argc == 1) {
    errx(EXIT_FAILURE, "Usage: %s filename\n", argv[0]);
  }

  dwarf_handle = care_dw_open(argv[1]);

  while ((retval = care_dw_get_next_cu_die(dwarf_handle, &cu_die)) !=
         DW_DLV_NO_ENTRY) {
    dwarf_print_cu(dwarf_handle, cu_die);
    dwarf_dealloc(dwarf_handle.dwarf_handle, cu_die, DW_DLA_DIE);
    cu_cnt++;
  }

  printf("\n\nSummary:\n");
  printf("input: %s\n", argv[1]);
  printf("Compilation Units: %d\n", cu_cnt);

  while ((retval = care_dw_get_next_cu_die(dwarf_handle, &cu_die)) !=
         DW_DLV_NO_ENTRY) {
    dwarf_diename(cu_die, &cu_name, &error);
    printf("source files for CU [%s]\n", cu_name);
    print_src_files(dwarf_handle.dwarf_handle, cu_die);
    printf("\n");
    dwarf_dealloc(dwarf_handle.dwarf_handle, cu_die, DW_DLA_DIE);
    dwarf_dealloc(dwarf_handle.dwarf_handle, cu_name, DW_DLA_STRING);
  }

  printf("line table: \n" );
  #if 0
  while ((retval = care_dw_get_next_cu_die(dbg_handler, &cu_die)) !=
         DW_DLV_NO_ENTRY) {
    dwarf_diename(cu_die, &cu_name, &error);
    printf("line tables for CU [%s]\n", cu_name);
    print_src_lines(dbg_handler, cu_die);
    printf("\n");
    dwarf_dealloc(dbg_handler, cu_die, DW_DLA_DIE);
    dwarf_dealloc(dbg_handler, cu_name, DW_DLA_STRING);
  }
  #endif
  care_dw_get_src_info(dwarf_handle, 0, NULL, NULL, NULL);
  PC = 0x4009bd;
  care_dw_get_func(dwarf_handle, PC);

  care_dw_close(dwarf_handle);
}
