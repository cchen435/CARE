
#include <stdio.h>

#include "tb.h"

int main(int argc, char **argv) {
  
  care_table_t table =care_tb_load_c("test.tb");
  care_tb_print_c(table);
  care_tb_release_c(table);
  return 0;
}
