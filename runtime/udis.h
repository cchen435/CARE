
#ifndef _CARE_UDIS_H_
#define _CARE_UDIS_H_

#define __USE_GNU
#include <signal.h>
#include <unistd.h>

#include <udis86.h>

enum ud_addr_mode { UDIS_DIRECT_MEM, UDIS_INDIRECT_REG };
typedef enum ud_addr_mode care_ud_addr_mode_t;

/*
 * care_ud_setup: it is to initilize the ud_object by calling udis86 routines,
 *                including to setup vendor, format of the udis86 disassembler
 */
extern void care_ud_setup(ud_t *ud_obj);

/*
 * care_ud_disasm_instruction: it is to disassemble an instruction located at
 *                             the address pointed by PC, it will update ud_obj,
 *                             which is accessed by other udis86 routines to
 * retive operands
 */
extern int care_ud_disasm_instruction(ud_t *ud_obj, const uint8_t *pc);

/*
 * care_ud_get_divident: this is applied to div operations to get
 *                       divident operand
 */
extern const ud_operand_t *care_ud_get_divident(ud_t *ud_obj);

/*
 * care_ud_get_mem_op: this is applied to operations involving memory accesses
 *                     to get the operand indicating an memory location
 */
extern const ud_operand_t *care_ud_get_mem_op(ud_t *ud_obj);

/*
 * care_ud_lookup_reg_str: return the human readable register name
 *                         given the reg name in udis86 space
 */
extern char *care_ud_lookup_reg_name(ud_type_t ud_reg);

/*
 * care_ud_translate: translate the reg name in
 *                    udis86 space to libc space
 */
extern int care_ud_translate(ud_type_t ud_reg);

/*
 * care_ud_get_reg_width: get register size, indexed with the name in udis86
 * space
 */
extern int care_ud_get_reg_width(ud_type_t ud_reg);

/*
 *  check whether the given register is general purpose register
 */
extern int care_ud_is_gpr(ud_type_t ud_reg);

/*
 * check whether the given register is high portion of a register, e.g., AH, BH
 */
extern int care_ud_is_high(ud_type_t ud_reg);

/*
 * the address mode of an operand
 */
extern care_ud_addr_mode_t care_ud_get_opr_addr_mode(const ud_operand_t *op);

#endif