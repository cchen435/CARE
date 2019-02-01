
/*
 * A simple udis86 wrapper to disassemble the instruction that caused the fault.
 * We leverage this to figure out which register holding the fault value
 */

#include <assert.h>
#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#define __USE_GNU
#include <signal.h>
#include <unistd.h>

#include <udis86.h>

//#include "dw.h"

#if __x86_64__
#define __UD_MODE__ 64
#elif __i386__
#define __UD_MODE__ 32
#endif

#define MAX_INST_LENGTH 16

// Number of Registers defined in udis86 library, UD_R_RIP is the last
// REG definition in enum ud_type. and UD_OP_REG following the UD_R_RIP
// So we use UD_OP_REG to indicate the number of register objects
#define UD_REG_NUM UD_OP_REG

void care_ud_setup(ud_t *ud_obj) {
  assert(ud_obj != NULL);
  ud_init(ud_obj);
  ud_set_mode(ud_obj, __UD_MODE__);
  ud_set_syntax(ud_obj, UD_SYN_ATT);
  // ud_set_vendor(ud_obj, UD_VENDOR_INTEL);
  // ud_set_vendor(ud_obj, UD_VENDOR_AMD);
  ud_set_vendor(ud_obj, UD_VENDOR_ANY);
}

/* disassemble an instruction
 * ud: an udis86 object
 * pc: the memory address where the instruction is located
 */
int care_ud_disasm_instruction(ud_t *ud, const uint8_t *pc) {
  int size;
  ud_set_input_buffer(ud, pc, MAX_INST_LENGTH);
  size = ud_disassemble(ud);
  return size;
}

const ud_operand_t *care_ud_get_divident(ud_t *ud_obj) {
  ud_mnemonic_code_t mnemonic = ud_insn_mnemonic(ud_obj);
  const ud_operand_t *op;
  switch (mnemonic) {
  case UD_Iidiv:
    op = ud_insn_opr(ud_obj, 0);
    break;
  default:
    errx(EXIT_FAILURE, "%s: Not Implemented yet: %s", __func__,
         ud_lookup_mnemonic(mnemonic));
  }
  return op;
}

const ud_operand_t *care_ud_get_mem_op(ud_t *ud_obj) {
  const ud_operand_t *op;
  int i = 0;
  while ((op = ud_insn_opr(ud_obj, i)) != NULL) {
    if (op->type == UD_OP_MEM)
      return op;
    i++;
  }
  return NULL;
}

char *care_ud_lookup_type_str(ud_type_t type) {
  char *str;
  switch (type) {
  case UD_OP_MEM:
    str = "memory";
    break;
  case UD_OP_PTR:
    str = "seg:off pointer operand";
    break;
  case UD_OP_IMM:
    str = "Immediate Operand";
    break;
  case UD_OP_CONST:
    str = "implicit constant";
    break;
  case UD_OP_REG:
    str = "Register";
    break;
  default:
    break;
  }
  return str;
}

/** care_ud_lookup_name: return the register names, it works on udis space */
char *care_ud_lookup_reg_str(ud_type_t ud_reg) {
  static char *names[UD_REG_NUM];
#define HANDLE_REG(UD_REG, NAME, BITS, UCONTEXT_REG) names[UD_REG] = NAME;
#include "reg.map"
  return names[ud_reg];
}

/** care_ud_translate: it translates the name of register
 * from udis namespace to libc namespace
 */
int care_ud_translate(ud_type_t ud_reg) {
  int map[UD_REG_NUM];
#define HANDLE_REG(UD_REG, NAME, BITS, UCONTEXT_REG) map[UD_REG] = UCONTEXT_REG;
#include "reg.map"
  return map[ud_reg];
}

/** care_ud_get_reg_width: get the size/width of a register, it works in udis
 * namespace
 */
int care_ud_get_reg_width(ud_type_t ud_reg) {
  int width[UD_REG_NUM];
#define HANDLE_REG(UD_REG, NAME, BITS, UCONTEXT_REG) width[UD_REG] = BITS;
#include "reg.map"
  return width[ud_reg];
}

// check  whehter the retister is a general purpose register
int care_ud_is_gpr(ud_type_t ud_reg) {
  return ud_reg >= UD_R_AL && ud_reg <= UD_R_R15;
}

int care_ud_is_mmx(ud_type_t ud_reg) {
  return ud_reg >= UD_R_MM0 && ud_reg <= UD_R_MM7;
}

int care_ud_is_control_reg(ud_type_t ud_reg) {
  return ud_reg >= UD_R_CR0 && ud_reg <= UD_R_CR15;
}

int care_ud_is_segment_reg(ud_type_t ud_reg) {
  return ud_reg >= UD_R_ES && ud_reg <= UD_R_GS;
}

int care_ud_is_fpu_reg(ud_type_t ud_reg) {
  return ud_reg >= UD_R_ST0 && ud_reg <= UD_R_ST7;
}

int care_ud_is_xmm(ud_type_t ud_reg) {
  return ud_reg >= UD_R_XMM0 && ud_reg <= UD_R_XMM15;
}

uint8_t *care_ud_get_direct_mem_addr(const ud_operand_t *op) {
  uint64_t v;
  switch (op->offset) {
  case 8:
    v = op->lval.ubyte;
    break;
  case 16:
    v = op->lval.uword;
    break;
  case 32:
    v = op->lval.udword;
    break;
  case 64:
    v = op->lval.uqword;
    break;
  default:
    v = 0;
  }
#ifdef DEBUG
  fprintf(stderr, "%s: offset: %d, addr: 0x%lx\n", __func__, op->offset, v);
#endif
  return (uint8_t *)v;
}

int care_ud_is_high(ud_type_t ud_reg) {
  switch (ud_reg) {
  case UD_R_AH:
  case UD_R_BH:
  case UD_R_CH:
  case UD_R_DH:
    return 1;
  default:
    return 0;
  }
}