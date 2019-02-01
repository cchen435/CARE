#include <stdio.h>
#include <string.h>
#include <udis86.h>

int main(int argc, char **argv) {
  FILE *fp;
  ud_t ud_obj;
  int i;
  const ud_operand_t *op;
  char buf[256];

  fp = fopen(argv[1], "rw+");

  ud_init(&ud_obj);
  ud_set_mode(&ud_obj, 64);
  ud_set_syntax(&ud_obj, UD_SYN_ATT);

  ud_set_input_file(&ud_obj, fp);

  while (ud_disassemble(&ud_obj)) {
    printf("\n\n\t%s\n", ud_insn_asm(&ud_obj));
    i = 0;

    while (op = ud_insn_opr(&ud_obj, i)) {
      memset(buf, 0, 256);
      if (op->type == UD_OP_MEM) {
        sprintf(buf, "%s UD_OP_MEM", buf);
      }
      if (op->type == UD_OP_PTR) {
        sprintf(buf, "%s UD_OP_PTR", buf);
      }
      if (op->type == UD_OP_IMM) {
        sprintf(buf, "%s UD_OP_IMM", buf);
      }
      if (op->type == UD_OP_JIMM) {
        sprintf(buf, "%s UD_OP_JIMM", buf);
      }
      if (op->type == UD_OP_CONST) {
        sprintf(buf, "%s UD_OP_CONST", buf);
      }
      if (op->type == UD_OP_REG) {
        sprintf(buf, "%s UD_OP_REG", buf);
      }

      printf("----\top %d type: %s\n", i, buf);
      i++;
    }
  }
  return 0;
}
