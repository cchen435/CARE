#include <dw.h>
#include <stdio.h>

int main(int argc, char **argv) {
  Dwarf_Addr PC = (unsigned long long)atoll(argv[1]);
  char *file = argv[2];
  care_dwarf_t dwarf = care_dw_open(file);
  Dwarf_Die CU = care_dw_get_cu(dwarf, PC);
  return 0;
}