#!/usr/bin/env python3

import capstone as Cs
import capstone.x86 as x86

import platform     # for getting architecture info


class GDBFIInstruction(object):
    def __init__(self, code, address=0):
        """ Instruction class represents an assembly instruction, where the
         fault will be injected.

        :param code: the program binary code where the EIP register points to. It is read from gdb in bytes format
        """
        machine = platform.machine()
        if machine == 'x86_64':
            arch = Cs.CS_ARCH_X86
            mode = Cs.CS_MODE_64
        elif machine == 'i386':
            arch = Cs.CS_ARCH_X86
            mode = Cs.CS_MODE_32
        else:
            raise Exception('Unsupported Architecture: %s' % machine)

        # initialize a capstone object with arch and mode info
        self.disassembler = Cs.Cs(arch, mode)

        # using ATT syntax
        self.disassembler.syntax = Cs.CS_OPT_SYNTAX_ATT

        # enable detailed information generate during disasm
        self.disassembler.detail = True

        self.Inst = self.disasm(code, address)
        if not self.Inst:
            raise Exception("Disassemble Instruction Failed")

    def disasm(self, code, address):
        # capstone disasm returns a list of instructions (CsInsn) in form of generator
        insts = self.disassembler.disasm(code, address, 1)

        # we only look at the first (current) instruction
        try:
            inst = next(insts)
        except StopIteration:
            inst = None
        except:
            print("disassembler: ", code, type(code), address)
        return inst

    def is_valid(self):
        return self.Inst != None

    def is_injectable(self):
        """ whether the instruction is injectable depends on the the opcode
        of the instruction. We generally skip instructions from group:
         1. jump.
         2. call.
         3. ret/Iret
         4. Interrupt
         5. privilege
         6. Instructions that don't write data to either registers or memory

        :return: True if the instruction is injectable, otherwise False
        """
        if not self.Inst:
            return False

        ret = x86.X86_GRP_CALL in self.Inst.groups
        ret |= x86.X86_GRP_JUMP in self.Inst.groups
        ret |= x86.X86_GRP_RET in self.Inst.groups
        ret |= x86.X86_GRP_IRET in self.Inst.groups
        ret |= x86.X86_GRP_INT in self.Inst.groups
        ret |= x86.X86_GRP_PRIVILEGE in self.Inst.groups
        ret |= x86.X86_GRP_BRANCH_RELATIVE in self.Inst.groups
        ret = not ret

        # if the instruction does not belong to above groups, it should also
        # update some context, e.g. memory or register, so that it is injectable.
        # instruction e.g. nopw doesn't update any register, and there is no way
        # to contaminate its result
        update = False
        for op in self.Inst.operands:
            if op.access & Cs.CS_AC_WRITE:
                update = True

        if len(self.Inst.regs_write):
            update = True

        ret = ret & update

        return ret

    def get_inject_loc(self):
        """ get the target where the instruction will write to.

        Some instructions would update several places, e.g. eflags and operands.
        And some has no explicit operands. The method takes the following simple
        logic to get the location where to inject the faults.
        1. it will firstly check operands of instruction. The operand where the instruction
           is write to will be picked up if there is.
        2. if there is no explict 'write' operand, implicit write registers will be checked.
           and the first one will be selected.

        :param inst: the instruction to be analyzed. if it is None, self.Inst will be used
        :return: it will return a dictionary describing the locations. It contains the following information:
            @ type: they type of the location, its value could be either memory or register
            @ width: data width (in bits) of the target
            @ location: a dictionary describing the location. It shares a similar component to address mode in asm
            @ EFLAGS: valid only when the type is register. It indicates that the register is EFLAG, and the flag
                      to be will be updated by the instruction, which is also to be contaminated.
        """

        ret = {'type': None, 'width': -1,
               'location': {'base': None, 'index': None, 'scale': 1, 'disp': 0, 'segment': None},
               'EFLAGS': None}

        inst = self.Inst

        # first looking at operands to figure out where the instruction is write to
        for op in inst.operands:
            if op.access & Cs.CS_AC_WRITE == 0:
                continue

            # find an operand where the instruction is written to
            if op.type == Cs.CS_OP_REG:
                ret['type'] = 'reg'
                ret['location']['base'] = inst.reg_name(op.reg)
                ret['width'] = op.size * 8
                return ret
            elif op.type == Cs.CS_OP_MEM:
                ret['type'] = 'mem'
                ret['width'] = op.size * 8
                ret['location']['scale'] = op.mem.scale
                if op.mem.segment:
                    ret['location']['segment'] = inst.reg_name(op.mem.segment)
                if op.mem.base:
                    ret['location']['base'] = inst.reg_name(op.mem.base)
                if op.mem.index:
                    ret['location']['index'] = inst.reg_name(op.mem.index)
                if op.mem.disp:
                    ret['location']['disp'] = op.mem.disp
                return ret
            elif op.type == Cs.CS_OP_FP or op.type == Cs.CS_OP_IMM:
                print("Unsupported Instruction: %s %s" %
                      (inst.mnemonic, inst.op_str))
                return None

        # no write operand found, so is going to check implicit write registers
        assert len(
            inst.regs_write), "The instruction has neither explicit nor implicit write operand"

        target = inst.regs_write[0]
        ret['type'] = 'reg'
        ret['width'] = self.get_reg_width(target)
        ret['location']['base'] = inst.reg_name(target)

        # TODO: How about status registers of other components, e.g. sse, avx, FPU (FPSW)
        if target == x86.X86_REG_EFLAGS:
            ret['location']['base'] = 'eflags'
            ret['EFLAGS'] = list()
            # rflags has 64-bits, but the above 32-bits are reserved
            for i in range(0, 32):
                if self.Inst.eflags & (1 << i):
                    ret['EFLAGS'].append(i)
        return ret

    def get_inst_string(self):
        insn = "%s  %s" % (self.Inst.mnemonic, self.Inst.op_str)
        return insn

    def get_inst_bytecode(self):
        return self.Inst.bytes

    def get_inst_size(self):
        return self.Inst.size

    def get_inst_class(self):
        """ get instruction group info.

        Based on Intel architecture manual, Instructions are classified to main
        classes, e.g., FPU, SIMD, and subclasses, e.g., data-transfer, arithmetic.

        :return: it will return a dictionary containing the main class and subclass
                 info of the instruction
        """
        main = 'None'
        sub = 'None'

        if self.is_bmi_op():
            main = 'General-Purpose'
            sub = 'BMI'
        elif self.is_gp_op():               # general-purpose instructions
            main = 'General-Purpose'
            if self.is_gp_arithmetic_op():
                sub = 'Arithmetic'
            elif self.is_gp_bit_byte_op():
                sub = 'Bit/Byte'
            elif self.is_gp_cmp_op():
                sub = 'CMP'
            elif self.is_gp_data_transfer_op():
                sub = 'Data-Transfer'
            elif self.is_gp_decimal_arithmetic_op():
                sub = 'Decimal-Arithmetic'
            elif self.is_gp_eflag_op():
                sub = 'EFLAG'
            elif self.is_gp_io_op():
                sub = "IO"
            elif self.is_gp_jump_op():
                sub = 'Jump'
            elif self.is_gp_logical_op():
                sub = 'Logical'
            elif self.is_gp_misc_op():
                sub = 'Miscellaneous/Random/UserMode'
            elif self.is_gp_neg_op():
                sub = 'NEG'
        elif self.is_fpu_op():          # floating-point instructions
            main = "FPU"
            if self.is_fpu_arithmetic_op():
                sub = 'Arithmetic'
            elif self.is_fpu_cmp_op():
                sub = 'CMP'
            elif self.is_fpu_control_op():
                sub = 'Control'
            elif self.is_fpu_data_transfer():
                sub = 'Data-Transfer'
            elif self.is_fpu_load_const_op():
                sub = 'Load Const'
            elif self.is_fpu_simd_op():
                sub = 'SIMD Extension'

        elif self.is_mmx_op():
            main = 'MMX'
            if self.is_mmx_conversion_op():
                sub = 'Conversion'
            elif self.is_mmx_arithmetic_op():
                sub = "Arithmetic"
            elif self.is_mmx_cmp_op():
                sub = 'CMP'
            elif self.is_mmx_logical_op():
                sub = 'Logical'
            elif self.is_mmx_shift_rotate_op():
                sub = 'Shift/Rotate'
            elif self.is_mmx_state_mgmt_op():
                sub = 'State Management'

        elif self.is_sse_op():
            main = 'SSE'
            if self.is_sse_arithmetic_op():
                sub = 'FP Arithmetic'
            elif self.is_sse_data_transfer_op():
                sub = 'Data Transfer'
            elif self.is_sse_cmp_op():
                sub = 'CMP'
            elif self.is_sse_logical_op():
                sub = 'Logical'
            elif self.is_sse_shuffle_unpack_op():
                sub = 'Shuffle/Unpack'
            elif self.is_sse_conv_op():
                sub = 'Conversion'
            elif self.is_sse_mxcsr_mgmt_op():
                sub = 'MXCSR management'
            elif self.is_sse_integer_op():
                sub = 'SIMD Integer'
            elif self.is_sse_cache_op():
                sub = 'Cache Control/Prefetch/Order'

        elif self.is_sse2_op():
            main = 'SSE2'
            if self.is_sse2_arithmetic_op():
                sub = 'Arithmetic'
            if self.is_sse2_data_transfer_op():
                sub = 'Data Transfer'
            if self.is_sse2_logical_op():
                sub = 'Logical'
            if self.is_sse2_cmp_op():
                sub = 'CMP'
            if self.is_sse2_shuffle_unpack_op():
                sub = 'Shuffle/Unpack'
            if self.is_sse2_conv_op():
                sub = 'Conversion'
            if self.is_sse2_single_precision_floating_point_op():
                sub = 'Single-Precision Floating-Point Instructions'
            if self.is_sse2_integer_op():
                sub = 'SIMD Integer'
            if self.is_sse2_cache_op():
                sub = 'Cache Control/Ordering'
        elif self.is_sse3_op():
            main = 'SSE3'
        elif self.is_sse4_op():
            main = 'SSE4'
        elif self.is_aes_pclmul_op():
            main = 'AES/PCLMUL'
        elif self.is_avx_op():
            main = 'AVX/AVX2'
        elif self.is_fma_op():
            main = 'FMA'
        elif self.is_sha_op():
            main = 'SHA'
        elif self.is_tsx_op():
            main = 'TSX'
        elif self.is_system_op():
            main = 'System'
        elif self.is_mode64_op():
            main = '64-BIT Mode Instructions'
        elif self.is_vm_op():
            main = 'Virtual Machine Extension'
        elif self.is_safer_mode_op():
            main = 'SAFER Mode Extension'

        return {'main': main, 'sub': sub}

    def print_inst_info(self):
        inst = self.Inst
        group = self.get_inst_class()
        info = 'inst: %7s %20s,\tMain Class: %15s,\tSub Class: %s' % (
            inst.mnemonic, inst.op_str, group['main'], group['sub'])
        print(info)
        print('\t%20s: %d' % ('Num of Operands', len(inst.operands)))
        for i, op in enumerate(inst.operands):
            print("\t\t[operand: %d] access: %u, size = %u" %
                  (i, op.access, op.size))

        print('\t%20s:' % 'Groups belonging to', end='')
        if len(inst.groups) > 0:
            for i in inst.groups:
                print('  ', inst.group_name(i), end='')
        else:
            print('  None', end='')
        print()

        (regs_read, regs_write) = inst.regs_access()
        print('\t%20s:' % 'Registers Read', end='')
        if len(regs_read):
            for reg in regs_read:
                print(' ', inst.reg_name(reg), end='')
        else:
            print('  None', end='')
        print()

        print('\t%20s:' % 'Registers Write', end='')
        if len(regs_write):
            for reg in regs_write:
                print(' ', inst.reg_name(reg), end='')
        else:
            print('  None', end='')
        print()

        print('\t%20s:' % 'Implicit regs read', end='')
        if len(inst.regs_read):
            for i in inst.regs_read:
                print('  ', inst.reg_name(i), end='')
        else:
            print('  None', end='')
        print('')

        print('\t%20s:' % 'Implicit regs write', end='')
        if len(inst.regs_write):
            for i in inst.regs_write:
                print('  %s(id=%d)' % (inst.reg_name(i), i), end='')
        else:
            print('  None', end='')
        print()

        # self.log.write(info)
        return info

    @staticmethod
    def get_reg_width(reg):

        # 1-byte general purpose registers
        reg8 = [x86.X86_REG_AH, x86.X86_REG_AL, x86.X86_REG_BH, x86.X86_REG_CH, x86.X86_REG_CL,
                x86.X86_REG_DH, x86.X86_REG_DL, x86.X86_REG_BPL, x86.X86_REG_DIL, x86.X86_REG_SIL,
                x86.X86_REG_SPL, x86.X86_REG_R8B, x86.X86_REG_R9B, x86.X86_REG_R10B, x86.X86_REG_R11B,
                x86.X86_REG_R12B, x86.X86_REG_R13B, x86.X86_REG_R14B, x86.X86_REG_R15B]

        # 1-word general purpose registers
        reg16 = [x86.X86_REG_AX, x86.X86_REG_BX, x86.X86_REG_CX, x86.X86_REG_DX, x86.X86_REG_DI,
                 x86.X86_REG_SI, x86.X86_REG_BP, x86.X86_REG_SP, x86.X86_REG_R8W, x86.X86_REG_R9W,
                 x86.X86_REG_R10W, x86.X86_REG_R11W, x86.X86_REG_R12W, x86.X86_REG_R13W, x86.X86_REG_R14W,
                 x86.X86_REG_R15W, x86.X86_REG_FPSW]

        # doubleword general purpose registers
        reg32 = [x86.X86_REG_EAX, x86.X86_REG_EBX, x86.X86_REG_ECX, x86.X86_REG_EDX, x86.X86_REG_EDI,
                 x86.X86_REG_ESI, x86.X86_REG_EBP, x86.X86_REG_ESP, x86.X86_REG_R8D, x86.X86_REG_R9D,
                 x86.X86_REG_R10D, x86.X86_REG_R11D, x86.X86_REG_R12D, x86.X86_REG_R13D, x86.X86_REG_R14D,
                 x86.X86_REG_R15D, x86.X86_REG_EFLAGS]

        # quadword general purpose registers
        reg64 = [x86.X86_REG_RAX, x86.X86_REG_RBX, x86.X86_REG_RCX, x86.X86_REG_RDX, x86.X86_REG_RDI,
                 x86.X86_REG_RSI, x86.X86_REG_RBP, x86.X86_REG_RSP, x86.X86_REG_R8, x86.X86_REG_R9,
                 x86.X86_REG_R10, x86.X86_REG_R11, x86.X86_REG_R12, x86.X86_REG_R13, x86.X86_REG_R14,
                 x86.X86_REG_R15]

        if reg in reg8:
            return 8

        if reg in reg16:
            return 16

        if reg in reg32:
            return 32

        if reg in reg64:
            return 64

        # Control registers
        if x86.X86_REG_CR0 <= reg <= x86.X86_REG_CR15:
            raise Exception("Resolving a Control Register")
            # return 64
        if x86.X86_REG_DR0 <= reg <= x86.X86_REG_DR15:
            raise Exception("Resolving a Debug Register")
            # return 64

        # the FPU data register, in intel manual, they are named R0 to R7
        if x86.X86_REG_FP0 <= reg <= x86.X86_REG_FP7:
            return 80

        # the floating-point stack registers.
        if x86.X86_REG_ST0 <= reg <= x86.REG_ST7:
            return 80

        # MMX registers are 64-bits, they are actually alias to floating-point registers (low 64-bits)
        if x86.X86_REG_MM0 <= reg <= x86.X86_REG_MM7:
            return 64

        # SSE/SSE2 extension. Architecture only has 8 XMM registers, at most 16 registers on AMD processors
        if x86.X86_REG_XMM0 <= reg <= x86.X86_REG_XMM31:
            return 128

        # available on CPUs with AVX Extension. Architecture only has 16 YMM registers
        if x86.X86_REG_YMM0 <= reg <= x86.X86_REG_YMM31:
            return 256

        # available on CPUs with AVX-512 Extension. Architecture only has 16 ZMM registers
        if x86.X86_REG_ZMM0 <= reg <= x86.X86_REG_ZMM31:
            return 512

        # AVX-512 opmask registers
        if x86.X86_REG_K0 <= reg <= x86.X86_REG_K7:
            return 16

        return -1

    # General-Purpose Instructions
    def is_gp_arithmetic_op(self):
        """ The general-purpose arithmetic instructions for performing basic
        binary integer computations on byte, word, and double world
        we separated NEG and CMP into different interface
        """
        gp_arithmetic_insts = [x86.X86_INS_ADCX, x86.X86_INS_ADOX, x86.X86_INS_ADD, x86.X86_INS_ADC,
                               x86.X86_INS_SUB, x86.X86_INS_SBB, x86.X86_INS_IMUL, x86.X86_INS_MUL,
                               x86.X86_INS_IDIV, x86.X86_INS_DIV, x86.X86_INS_INC, x86.X86_INS_DEC]
        ret = self.Inst.id in gp_arithmetic_insts
        return ret

    def is_gp_bit_byte_op(self):
        """
        Bit instructions test and modify individual bits in word and doubleword operands.
        Byte instructions set the value of a byte operand to indicate the status of flags
        in EFLAGS register

        SETZ, SETNZ, SETNBE, SETNV, SETNC, SETNAE, SETC, SETNA, SETNLE, SETNL, SETNGE, SETNG,
        SETPE, SETPO are not supported by capstone
        """
        gp_bit_byte_insts = [x86.X86_INS_BT, x86.X86_INS_BTS, x86.X86_INS_BTR,
                             x86.X86_INS_BTC, x86.X86_INS_BSF, x86.X86_INS_BSR,
                             x86.X86_INS_SETE, x86.X86_INS_SETNE, x86.X86_INS_SETA,
                             x86.X86_INS_SETAE, x86.X86_INS_SETB, x86.X86_INS_SETBE,
                             x86.X86_INS_SETG, x86.X86_INS_SETGE, x86.X86_INS_SETL,
                             x86.X86_INS_SETLE, x86.X86_INS_SETS, x86.X86_INS_SETNS,
                             x86.X86_INS_SETO, x86.X86_INS_SETNO, x86.X86_INS_SETP,
                             x86.X86_INS_SETNP, x86.X86_INS_TEST, x86.X86_INS_CRC32,
                             x86.X86_INS_POPCNT]
        ret = self.Inst.id in gp_bit_byte_insts
        return ret

    def is_gp_cmp_op(self):
        inst = self.Inst
        return inst.id == x86.X86_INS_CMP

    def is_gp_data_transfer_op(self):
        """
        data transfer instructions to move data between memory and general-purpose
        and segment registers. They also perform specific operations such as conditional
        moves, stack access, and data conversion. CMOVZ, CMOVNZ, CMOVNBE, CMOVNB, CMOVNAE,
        CMOVNA, CMOVNLE, CMOVNL, CMOVNGE, CMOVNG, CMOVC, CMOVNC, CMOVPE, CMOVPO are not
        supported in capstone
        """
        gp_data_transfer_insts = [x86.X86_INS_MOV, x86.X86_INS_CMOVE, x86.X86_INS_CMOVNE,
                                  x86.X86_INS_CMOVA, x86.X86_INS_CMOVAE, x86.X86_INS_CMOVB,
                                  x86.X86_INS_CMOVBE, x86.X86_INS_CMOVG, x86.X86_INS_CMOVGE,
                                  x86.X86_INS_CMOVL, x86.X86_INS_CMOVLE, x86.X86_INS_CMOVO,
                                  x86.X86_INS_CMOVNO, x86.X86_INS_CMOVS, x86.X86_INS_CMOVNS,
                                  x86.X86_INS_CMOVP, x86.X86_INS_CMOVNP, x86.X86_INS_XCHG,
                                  x86.X86_INS_BSWAP, x86.X86_INS_XADD, x86.X86_INS_CMPXCHG,
                                  x86.X86_INS_CMPXCHG8B, x86.X86_INS_PUSH, x86.X86_INS_POP,
                                  x86.X86_INS_POPAL, x86.X86_INS_POPAW, x86.X86_INS_PUSHAL,
                                  x86.X86_INS_PUSHAW, x86.X86_INS_CWD, x86.X86_INS_CBW,
                                  x86.X86_INS_CWDE, x86.X86_INS_CDQ, x86.X86_INS_MOVSX,
                                  x86.X86_INS_MOVZX]
        ret = self.Inst.id in gp_data_transfer_insts
        return ret

    def is_gp_decimal_arithmetic_op(self):
        """
        The decimal arithmetic instructions perform decimal
        arithmetic on binary coded decimal (BDC) data
        """
        gp_decimal_insts = [x86.X86_INS_DAA, x86.X86_INS_DAS, x86.X86_INS_AAA,
                            x86.X86_INS_AAS, x86.X86_INS_AAM, x86.X86_INS_AAD]
        ret = self.Inst.id in gp_decimal_insts
        return ret

    def is_gp_eflag_op(self):
        """
        The flag control instructions operating on the flags in the EFLAGS regisger
        """
        gp_eflag_insts = [x86.X86_INS_STC, x86.X86_INS_CLC, x86.X86_INS_CMC,
                          x86.X86_INS_CLD, x86.X86_INS_STD, x86.X86_INS_LAHF,
                          x86.X86_INS_SAHF, x86.X86_INS_PUSHF, x86.X86_INS_PUSHFD,
                          x86.X86_INS_POPF, x86.X86_INS_POPFD, x86.X86_INS_STI, x86.X86_INS_CLI]
        ret = self.Inst.id in gp_eflag_insts
        return ret

    def is_gp_neg_op(self):
        return self.Inst.id == x86.X86_INS_NEG

    def is_gp_logical_op(self):
        gp_logical_insts = [x86.X86_INS_AND, x86.X86_INS_OR,
                            x86.X86_INS_XOR, x86.X86_INS_NOT]
        ret = self.Inst.id in gp_logical_insts
        return ret

    def is_gp_shift_rotate_op(self):
        """
        shift and rotate instructions shifty and rotate
        the bits in word and doubleword operands
        """
        gp_shift_rotate_insts = [x86.X86_INS_SAR, x86.X86_INS_SHR, x86.X86_INS_SAL,
                                 x86.X86_INS_SHL, x86.X86_INS_SHRD, x86.X86_INS_SHLD,
                                 x86.X86_INS_ROR, x86.X86_INS_ROL, x86.X86_INS_RCR,
                                 x86.X86_INS_RCL]
        ret = self.Inst.id in gp_shift_rotate_insts
        return ret

    def is_gp_jump_op(self):
        ret = x86.X86_GRP_JUMP in self.Inst.groups
        return ret

    def is_gp_string_op(self):
        """
        String instructions operate on strings of bytes to move to and from memory.
        """
        gp_string_insts = [x86.X86_INS_MOVSB, x86.X86_INS_MOVSW, x86.X86_INS_MOVSD,
                           x86.X86_INS_CMPSB, x86.X86_INS_CMPSW, x86.X86_INS_CMPSD,
                           x86.X86_INS_SCASB, x86.X86_INS_SCASW, x86.X86_INS_SCASD,
                           x86.X86_INS_LODSB, x86.X86_INS_LODSW, x86.X86_INS_LODSD,
                           x86.X86_INS_STOSB, x86.X86_INS_STOSW]
        ret = self.Inst.id in gp_string_insts
        return ret

    def is_gp_string_mov_op(self):
        """
        string mov instructions. They are to mov byte/word/doubleword string
        """
        gp_string_mov_insts = [x86.X86_INS_MOVSB,
                               x86.X86_INS_MOVSW, x86.X86_INS_MOVSD]
        ret = self.Inst.id in gp_string_mov_insts
        return ret

    def is_gp_string_cmp_op(self):
        """
        compare byte, word, doubleword string
        """
        gp_string_cmp_insts = [x86.X86_INS_CMPSB,
                               x86.X86_INS_CMPSW, x86.X86_INS_CMPSD]
        ret = self.Inst.id in gp_string_cmp_insts
        return ret

    def is_gp_io_op(self):
        """ The IO instruction """
        gp_io_insts = [x86.X86_INS_OUT, x86.X86_INS_IN, x86.X86_INS_INSB,
                       x86.X86_INS_INSW, x86.X86_INS_INSW, x86.X86_INS_INSD,
                       x86.X86_INS_OUTSB, x86.X86_INS_OUTSW, x86.X86_INS_OUTSD]

        ret = self.Inst.id in gp_io_insts
        return ret

    def is_gp_segment_reg_op(self):
        """
        The segment register instructions allow far pointers (segment address)
        to be loaded into segment registers
        """
        gp_segment_insts = [x86.X86_INS_LDS, x86.X86_INS_LES,
                            x86.X86_INS_LFS, x86.X86_INS_LGS, x86.X86_INS_LSS]
        ret = self.Inst.id in gp_segment_insts
        return ret

    def is_gp_misc_op(self):
        """
        Miscellaneous instructions. user mode extended stat save/restore instructions and
        random number generator instructions are put here too
        PREFETCHWT1, CLFLUSHOPT, XSAVEC are not supported
        """
        gp_misc_insts = [x86.X86_INS_LEA, x86.X86_INS_NOP, x86.X86_INS_UD2, x86.X86_INS_UD2B,
                         x86.X86_INS_XLATB, x86.X86_INS_CPUID, x86.X86_INS_MOVBE,
                         x86.X86_INS_PREFETCHW, x86.X86_INS_CLFLUSH, x86.X86_INS_XSAVE,
                         x86.X86_INS_XSAVEOPT, x86.X86_INS_XRSTOR, x86.X86_INS_XGETBV,
                         x86.X86_INS_RDRAND, x86.X86_INS_RDSEED]

        ret = self.Inst.id in gp_misc_insts
        return ret

    def is_bmi_op(self):
        gp_bmi_insts = [x86.X86_INS_ANDN, x86.X86_INS_BEXTR, x86.X86_INS_BLSI,
                        x86.X86_INS_BLSMSK, x86.X86_INS_BLSR, x86.X86_INS_BZHI,
                        x86.X86_INS_LZCNT, x86.X86_INS_MULX, x86.X86_INS_PDEP,
                        x86.X86_INS_PEXT, x86.X86_INS_RORX, x86.X86_INS_SARX,
                        x86.X86_INS_SHLX, x86.X86_INS_SHRX, x86.X86_INS_TZCNT]
        ret = self.Inst.id in gp_bmi_insts
        ret |= x86.X86_GRP_BMI in self.Inst.groups
        ret |= x86.X86_GRP_BMI2 in self.Inst.groups

        return ret

    def is_gp_op(self):
        if self.is_gp_arithmetic_op():
            return True
        if self.is_gp_bit_byte_op():
            return True
        if self.is_bmi_op():
            return True
        if self.is_gp_cmp_op():
            return True
        if self.is_gp_data_transfer_op():
            return True
        if self.is_gp_decimal_arithmetic_op():
            return True
        if self.is_gp_eflag_op():
            return True
        if self.is_gp_io_op():
            return True
        if self.is_gp_jump_op():
            return True
        if self.is_gp_logical_op():
            return True
        if self.is_gp_misc_op():
            return True
        if self.is_gp_neg_op():
            return True
        if self.is_gp_shift_rotate_op():
            return True
        if self.is_gp_string_op():
            return True

    # FPU instructions
    def is_fpu_data_transfer(self):
        fpu_data_transfer_insts = [x86.X86_INS_FLD, x86.X86_INS_FST, x86.X86_INS_FSTP,
                                   x86.X86_INS_FILD, x86.X86_INS_FIST, x86.X86_INS_FISTP,
                                   x86.X86_INS_FBLD, x86.X86_INS_FBSTP, x86.X86_INS_FXCH,
                                   x86.X86_INS_FCMOVE, x86.X86_INS_FCMOVNE, x86.X86_INS_FCMOVB,
                                   x86.X86_INS_FCMOVBE, x86.X86_INS_FCMOVNB, x86.X86_INS_FCMOVNBE,
                                   x86.X86_INS_FCMOVU, x86.X86_INS_FCMOVNU]
        ret = self.Inst.id in fpu_data_transfer_insts
        return ret

    def is_fpu_arithmetic_op(self):
        fpu_arithmetic_insts = [x86.X86_INS_FADD, x86.X86_INS_FADDP, x86.X86_INS_FIADD,
                                x86.X86_INS_FSUB, x86.X86_INS_FSUBP, x86.X86_INS_FISUB,
                                x86.X86_INS_FSUBR, x86.X86_INS_FSUBRP, x86.X86_INS_FISUBR,
                                x86.X86_INS_FMUL, x86.X86_INS_FMULP, x86.X86_INS_FIMUL,
                                x86.X86_INS_FDIV, x86.X86_INS_FDIVP, x86.X86_INS_FIDIV,
                                x86.X86_INS_FDIVR, x86.X86_INS_FDIVRP, x86.X86_INS_FIDIVR,
                                x86.X86_INS_FPREM, x86.X86_INS_FPREM1, x86.X86_INS_FABS,
                                x86.X86_INS_FCHS, x86.X86_INS_FRNDINT, x86.X86_INS_FSCALE,
                                x86.X86_INS_FSQRT, x86.X86_INS_FXTRACT]

        ret = self.Inst.id in fpu_arithmetic_insts
        return ret

    def is_fpu_cmp_op(self):
        fpu_cmp_insts = [x86.X86_INS_FCOM, x86.X86_INS_FCOMP, x86.X86_INS_FCOMPP,
                         x86.X86_INS_FUCOM, x86.X86_INS_FUCOMP, x86.X86_INS_FUCOMPP,
                         x86.X86_INS_FICOM, x86.X86_INS_FICOMP, x86.X86_INS_FCOMI,
                         x86.X86_INS_FUCOMI, x86.X86_INS_FCOMIP, x86.X86_INS_FUCOMIP,
                         x86.X86_INS_FTST, x86.X86_INS_FXAM]
        ret = self.Inst.id in fpu_cmp_insts
        return ret

    def is_fpu_transcendental_op(self):
        """ FPU transcendental instructions, e.g. sin, cos """
        fpu_transcendental_insts = [x86.X86_INS_FSIN, x86.X86_INS_FCOS, x86.X86_INS_FSINCOS,
                                    x86.X86_INS_FPTAN, x86.X86_INS_FPATAN, x86.X86_INS_F2XM1,
                                    x86.X86_INS_FYL2X, x86.X86_INS_FYL2XP1]

        ret = self.Inst.id in fpu_transcendental_insts
        return ret

    def is_fpu_load_const_op(self):
        fpu_load_const_insts = [x86.X86_INS_FLD1, x86.X86_INS_FLDZ, x86.X86_INS_FLDPI,
                                x86.X86_INS_FLDL2E, x86.X86_INS_FLDLN2, x86.X86_INS_FLDL2T,
                                x86.X86_INS_FLDLG2]
        ret = self.Inst.id in fpu_load_const_insts
        return ret

    def is_fpu_control_op(self):
        """
        FPU control instructions operate on x87 FPU register
        stack and save and restore the FPU state
        """
        fpu_control_insts = [x86.X86_INS_FINCSTP, x86.X86_INS_FDECSTP, x86.X86_INS_FFREE,
                             x86.X86_INS_FNINIT, x86.X86_INS_FNCLEX, x86.X86_INS_FNSTCW,
                             x86.X86_INS_FLDCW, x86.X86_INS_FNSTENV, x86.X86_INS_FLDENV,
                             x86.X86_INS_FNSAVE, x86.X86_INS_FRSTOR, x86.X86_INS_FNSTSW,
                             x86.X86_INS_WAIT, x86.X86_INS_FNOP]

        ret = self.Inst.id in fpu_control_insts
        return ret

    def is_fpu_simd_op(self):
        """ Two state management instructions to perform fast save and restore """
        fpu_simd_inst = [x86.X86_INS_FXSAVE, x86.X86_INS_FXRSTOR]
        ret = self.Inst.id in fpu_simd_inst
        return ret

    def is_fpu_op(self):
        if self.is_fpu_arithmetic_op():
            return True
        if self.is_fpu_cmp_op():
            return True
        if self.is_fpu_control_op():
            return True
        if self.is_fpu_data_transfer():
            return True
        if self.is_fpu_load_const_op():
            return True
        if self.is_fpu_simd_op():
            return True
        if self.is_fpu_transcendental_op():
            return True
        return False

    # mmx instructions. They operate on packed byte, word, doubleword or quadword interger operands
    # contained in memory, in mmx registers, and in general purpose registers
    def is_mmx_arithmetic_op(self):
        mmx_arithmetic_insts = [x86.X86_INS_PADDB, x86.X86_INS_PADDW, x86.X86_INS_PADDD,
                                x86.X86_INS_PADDSB, x86.X86_INS_PADDSW, x86.X86_INS_PADDUSB,
                                x86.X86_INS_PADDUSW, x86.X86_INS_PSUBB, x86.X86_INS_PSUBW,
                                x86.X86_INS_PSUBD, x86.X86_INS_PSUBSB, x86.X86_INS_PSUBSW,
                                x86.X86_INS_PSUBUSB, x86.X86_INS_PSUBUSW, x86.X86_INS_PMULHW,
                                x86.X86_INS_PMULLW, x86.X86_INS_PMADDWD]
        ret = self.Inst.id in mmx_arithmetic_insts
        return ret

    def is_mmx_data_transfer_op(self):
        mmx_data_transfer_inst = [x86.X86_INS_MOVD, x86.X86_INS_MOVQ]
        ret = self.Inst.id in mmx_data_transfer_inst
        return ret

    def is_mmx_conversion_op(self):
        mmx_conv_insts = [x86.X86_INS_PACKSSWB, x86.X86_INS_PACKSSDW, x86.X86_INS_PACKUSWB,
                          x86.X86_INS_PUNPCKHBW, x86.X86_INS_PUNPCKHWD, x86.X86_INS_PUNPCKHDQ,
                          x86.X86_INS_PUNPCKLBW, x86.X86_INS_PUNPCKLWD, x86.X86_INS_PUNPCKLDQ,
                          x86.X86_INS_PADDB, x86.X86_INS_PADDW, x86.X86_INS_PADDD, x86.X86_INS_PADDSB,
                          x86.X86_INS_PADDSW, x86.X86_INS_PADDUSB, x86.X86_INS_PADDUSW, x86.X86_INS_PSUBB,
                          x86.X86_INS_PSUBW, x86.X86_INS_PSUBD, x86.X86_INS_PSUBSB, x86.X86_INS_PSUBSW,
                          x86.X86_INS_PSUBUSB, x86.X86_INS_PSUBUSW, x86.X86_INS_PMULHW, x86.X86_INS_PMULLW,
                          x86.X86_INS_PMADDWD]
        ret = self.Inst.id in mmx_conv_insts
        return ret

    def is_mmx_cmp_op(self):
        mmx_cmp_insts = [x86.X86_INS_PAND, x86.X86_INS_PANDN,
                         x86.X86_INS_POR, x86.X86_INS_PXOR]
        ret = self.Inst.id in mmx_cmp_insts
        return ret

    def is_mmx_logical_op(self):
        mmx_logical_insts = [x86.X86_INS_PAND,
                             x86.X86_INS_PANDN, x86.X86_INS_POR, x86.X86_INS_PXOR]
        ret = self.Inst.id in mmx_logical_insts
        return ret

    def is_mmx_shift_rotate_op(self):
        mmx_shift_rotate_insts = [x86.X86_INS_PSLLW, x86.X86_INS_PSLLD, x86.X86_INS_PSLLQ,
                                  x86.X86_INS_PSRLW, x86.X86_INS_PSRLD, x86.X86_INS_PSRLD,
                                  x86.X86_INS_PSRAW, x86.X86_INS_PSRAD]
        ret = self.Inst.id in mmx_shift_rotate_insts
        return ret

    def is_mmx_state_mgmt_op(self):
        return self.Inst.id == x86.X86_INS_EMMS

    def is_mmx_op(self):
        ret = x86.X86_GRP_MMX in self.Inst.groups
        return ret

    # SSE instructions. An extension to MMX with support for floating-point data
    # it supports both floating-point and integer data (all stored in XMM registers)
    def is_sse_data_transfer_op(self):
        sse_data_transfer_insts = [x86.X86_INS_MOVAPS, x86.X86_INS_MOVUPS, x86.X86_INS_MOVHPS,
                                   x86.X86_INS_MOVHLPS, x86.X86_INS_MOVLPS, x86.X86_INS_MOVLHPS,
                                   x86.X86_INS_MOVMSKPS]

        ret = self.Inst.id in sse_data_transfer_insts
        return ret

    def is_sse_arithmetic_op(self):
        """ sse arithmetic instructions. it only contains related float-point instructions

        :param inst: an instruction disassembled by capstone
        :return: True if the instruction is an sse arithmetic instruction
        """
        sse_arithmetic_insts = [x86.X86_INS_ADDPS, x86.X86_INS_ADDSS, x86.X86_INS_SUBPS, x86.X86_INS_SUBSS,
                                x86.X86_INS_MULPS, x86.X86_INS_MULSS, x86.X86_INS_DIVPS, x86.X86_INS_DIVSS,
                                x86.X86_INS_RCPPS, x86.X86_INS_RCPSS, x86.X86_INS_SQRTPS, x86.X86_INS_SQRTSS,
                                x86.X86_INS_RSQRTPS, x86.X86_INS_RSQRTSS, x86.X86_INS_MAXPS, x86.X86_INS_MAXSS,
                                x86.X86_INS_MINPS, x86.X86_INS_MINSS]
        ret = self.Inst.id in sse_arithmetic_insts
        return ret

    def is_sse_cmp_op(self):
        sse_cmp_insts = [x86.X86_INS_CMPPS, x86.X86_INS_CMPSS,
                         x86.X86_INS_COMISS, x86.X86_INS_UCOMISS]
        ret = self.Inst.id in sse_cmp_insts
        return ret

    def is_sse_logical_op(self):
        sse_logical_insts = [x86.X86_INS_ANDPS, x86.X86_INS_ANDNPS,
                             x86.X86_INS_ORPS, x86.X86_INS_XORPS]
        ret = self.Inst.id in sse_logical_insts
        return ret

    def is_sse_shuffle_unpack_op(self):
        sse_shuffle_unpack_insts = [
            x86.X86_INS_UNPCKHPS, x86.X86_INS_UNPCKLPS, x86.X86_INS_SHUFPS]
        ret = self.Inst.id in sse_shuffle_unpack_insts
        return ret

    def is_sse_conv_op(self):
        sse_conv_insts = [x86.X86_INS_CVTPI2PS, x86.X86_INS_CVTSI2SS, x86.X86_INS_CVTPS2PI,
                          x86.X86_INS_CVTTPS2PI, x86.X86_INS_CVTSS2SI, x86.X86_INS_CVTTSS2SI]
        ret = self.Inst.id in sse_conv_insts
        return ret

    def is_sse_mxcsr_mgmt_op(self):
        """ mxcsr state management instructions are to save and
        restore the state of MXCSR control and status register

        :param inst:
        :return:
        """
        sse_mxcsr_insts = [x86.X86_INS_LDMXCSR, x86.X86_INS_STMXCSR]
        ret = self.Inst.id in sse_mxcsr_insts
        return ret

    def is_sse_integer_op(self):
        """
        SSE 64-bit SIMD integer instructions
        :param inst:
        :return:
        """
        sse_integer_insts = [x86.X86_INS_PAVGB, x86.X86_INS_PAVGW, x86.X86_INS_PEXTRW,
                             x86.X86_INS_PINSRW, x86.X86_INS_PMAXUB, x86.X86_INS_PMAXSW,
                             x86.X86_INS_PMINUB, x86.X86_INS_PMINSW, x86.X86_INS_PMOVMSKB,
                             x86.X86_INS_PMOVMSKB, x86.X86_INS_PMULHUW, x86.X86_INS_PSADBW,
                             x86.X86_INS_PSADBW, x86.X86_INS_PSHUFW]
        ret = self.Inst.id in sse_integer_insts
        return ret

    def is_sse_cache_op(self):
        sse_cache_insts = [x86.X86_INS_MASKMOVQ, x86.X86_INS_MOVNTQ, x86.X86_INS_MOVNTPS,
                           x86.X86_INS_PREFETCH, x86.X86_INS_PREFETCHT0, x86.X86_INS_PREFETCHT1,
                           x86.X86_INS_PREFETCHT2, x86.X86_INS_SFENCE]
        ret = self.Inst.id in sse_cache_insts
        return ret

    def is_sse_op(self):
        ret = x86.X86_GRP_SSE1 in self.Inst.groups
        return ret

    # SSE2 instructions. it supports only double precision floating-point data
    def is_sse2_data_transfer_op(self):
        sse2_data_transfer_insts = [x86.X86_INS_MOVAPD, x86.X86_INS_MOVUPD,
                                    x86.X86_INS_MOVHPD, x86.X86_INS_MOVLPD,
                                    x86.X86_INS_MOVMSKPD, x86.X86_INS_MOVSD]
        ret = self.Inst.id in sse2_data_transfer_insts
        return ret

    def is_sse2_arithmetic_op(self):
        sse2_arithmetic_insts = [x86.X86_INS_ADDPD, x86.X86_INS_ADDSD, x86.X86_INS_SUBPD,
                                 x86.X86_INS_SUBPD, x86.X86_INS_SUBSD, x86.X86_INS_MULPD,
                                 x86.X86_INS_MULSD, x86.X86_INS_DIVPD, x86.X86_INS_DIVSD,
                                 x86.X86_INS_SQRTPD, x86.X86_INS_SQRTSD, x86.X86_INS_MAXPD,
                                 x86.X86_INS_MAXSD, x86.X86_INS_MINPD, x86.X86_INS_MINSD]
        ret = self.Inst.id in sse2_arithmetic_insts
        return ret

    def is_sse2_logical_op(self):
        sse2_logical_insts = [
            x86.X86_INS_ANDPD, x86.X86_INS_ANDNPD, x86.X86_INS_ORPD, x86.X86_INS_XORPD]
        ret = self.Inst.id in sse2_logical_insts
        return ret

    def is_sse2_cmp_op(self):
        sse2_cmp_insts = [x86.X86_INS_CMPPD, x86.X86_INS_CMPSD,
                          x86.X86_INS_COMISD, x86.X86_INS_UCOMISD]
        ret = self.Inst.id in sse2_cmp_insts
        return ret

    def is_sse2_shuffle_unpack_op(self):
        sse2_shuffle_unpack_insts = [
            x86.X86_INS_SHUFPD, x86.X86_INS_UNPCKHPD, x86.X86_INS_UNPCKLPD]
        ret = self.Inst.id in sse2_shuffle_unpack_insts
        return ret

    def is_sse2_conv_op(self):
        sse2_conv_insts = [x86.X86_INS_CVTPD2PI, x86.X86_INS_CVTTPD2PI, x86.X86_INS_CVTPI2PD,
                           x86.X86_INS_CVTPD2DQ, x86.X86_INS_CVTTPD2DQ, x86.X86_INS_CVTDQ2PD,
                           x86.X86_INS_CVTPS2PD, x86.X86_INS_CVTPD2PS, x86.X86_INS_CVTSS2SD,
                           x86.X86_INS_CVTSD2SS, x86.X86_INS_CVTSD2SI, x86.X86_INS_CVTTSD2SI,
                           x86.X86_INS_CVTSI2SD]
        ret = self.Inst.id in sse2_conv_insts
        return ret

    def is_sse2_single_precision_floating_point_op(self):
        sse2_single_precision_fp_insts = [
            x86.X86_INS_CVTDQ2PS, x86.X86_INS_CVTPS2DQ, x86.X86_INS_CVTTPS2DQ]
        ret = self.Inst.id in sse2_single_precision_fp_insts
        return ret

    def is_sse2_integer_op(self):
        """ sse2 integer instructions. which is to mov and pack words, doublewords,
        and quadwords stored in xmm and mmx registers

        :param inst:
        :return:
        """
        sse2_simd_integer_insts = [x86.X86_INS_MOVDQA, x86.X86_INS_MOVDQU, x86.X86_INS_MOVQ2DQ,
                                   x86.X86_INS_MOVDQ2Q, x86.X86_INS_PMULUDQ, x86.X86_INS_PADDQ,
                                   x86.X86_INS_PSUBQ, x86.X86_INS_PSHUFLW, x86.X86_INS_PSHUFHW,
                                   x86.X86_INS_PSHUFD, x86.X86_INS_PSLLDQ, x86.X86_INS_PSRLDQ,
                                   x86.X86_INS_PUNPCKHQDQ, x86.X86_INS_PUNPCKLQDQ]
        ret = self.Inst.id in sse2_simd_integer_insts
        return ret

    def is_sse2_cache_op(self):
        sse2_cache_insts = [x86.X86_INS_CLFLUSH, x86.X86_INS_LFENCE, x86.X86_INS_MFENCE,
                            x86.X86_INS_PAUSE, x86.X86_INS_MASKMOVDQU, x86.X86_INS_MOVNTPD,
                            x86.X86_INS_MOVNTDQ, x86.X86_INS_MOVNTI]
        ret = self.Inst.id in sse2_cache_insts
        return ret

    def is_sse2_op(self):
        ret = x86.X86_GRP_SSE2 in self.Inst.groups
        return ret

    # SSE3 instruction, we don't expect it appear in the scientific application yet
    def is_sse3_op(self):
        ret = x86.X86_GRP_SSE3 in self.Inst.groups
        return ret

    # SSE4 instruction, we don't expect it appear in the scientific application yet
    def is_sse4_op(self):
        ret = x86.X86_GRP_SSE41 in self.Inst.groups
        ret |= x86.X86_GRP_SSE42 in self.Inst.groups
        ret |= x86.X86_GRP_SSE4A in self.Inst.groups
        return ret

    # AES PCLMUL instructions for encryption, we don't expect it appear in the
    # scientific application yet
    def is_aes_pclmul_op(self):
        ret = x86.X86_GRP_AES in self.Inst.groups
        ret |= x86.X86_GRP_PCLMUL in self.Inst.groups
        return ret

    def is_avx_op(self):
        """
        AVX instructions working on 256-bit YMM registers, we don't expect
        it appear in the scientific application yet
        """
        ret = x86.X86_GRP_AVX in self.Inst.groups
        ret |= x86.X86_GRP_AVX2 in self.Inst.groups
        ret |= x86.X86_GRP_AVX512 in self.Inst.groups
        return ret

    def is_sha_op(self):
        """ Intel SHA (secure hash algorithm) """
        ret = x86.X86_GRP_SHA in self.Inst.groups
        return ret

    def is_fma_op(self):
        """
        FUSED-MULTIPLY-ADD (FMA) enhances AVX with high-throughput, arithmetic capabilities
        covering fused multiply-add/subtract ops
        """
        ret = x86.X86_GRP_FMA in self.Inst.groups
        ret |= x86.X86_GRP_FMA4 in self.Inst.groups
        return ret

    def is_tsx_op(self):
        """ Transactional Synchronization extensions """
        tsx_insts = [x86.X86_INS_XABORT, x86.X86_INS_XACQUIRE, x86.X86_INS_XRELEASE,
                     x86.X86_INS_XBEGIN, x86.X86_INS_XEND, x86.X86_INS_XTEST]

        ret = self.Inst.id in tsx_insts
        return ret

    def is_mode64_op(self):
        """ 64-bit mode instructions. This mode is a sub-mode of IA-32e mode. """
        mode64_insts = [x86.X86_INS_CDQE, x86.X86_INS_CMPSQ, x86.X86_INS_CMPXCHG16B, x86.X86_INS_LODSQ, x86.X86_INS_MOVSQ,
                        x86.X86_INS_MOVZX, x86.X86_INS_STOSQ, x86.X86_INS_SWAPGS, x86.X86_INS_SYSCALL, x86.X86_INS_SYSRET]

        ret = self.Inst.id in mode64_insts
        return ret

    def is_vm_op(self):
        """ Virtual-Machine Extensions """
        ret = x86.X86_GRP_VM in self.Inst.groups
        return ret

    def is_safer_mode_op(self):
        """ safe mode extension """
        return self.Inst.id == x86.X86_INS_GETSEC

    def is_system_op(self):
        """ System instructions for controlling functions of the processor.

        It is provided to support for OS and executives. MOV instruction
        is removed from the set.
        """
        system_insts = [x86.X86_INS_CLAC, x86.X86_INS_STAC, x86.X86_INS_LGDT, x86.X86_INS_SGDT, x86.X86_INS_LLDT,
                        x86.X86_INS_SLDT, x86.X86_INS_LTR, x86.X86_INS_STR, x86.X86_INS_LIDT, x86.X86_INS_SIDT,
                        x86.X86_INS_LMSW, x86.X86_INS_SMSW, x86.X86_INS_CLTS, x86.X86_INS_ARPL, x86.X86_INS_LAR,
                        x86.X86_INS_LSL, x86.X86_INS_VERR, x86.X86_INS_VERW, x86.X86_INS_INVD, x86.X86_INS_WBINVD,
                        x86.X86_INS_INVLPG, x86.X86_INS_INVPCID, x86.X86_INS_RSM, x86.X86_INS_RDMSR, x86.X86_INS_WRMSR]
        ret = self.Inst.id in system_insts
        return ret
    #
    # def is_valid_inst(self, inst=None):
    #     """
    #     The API is to check whether the instruction is supported by
    #     the fault injector, but not whether the instruction is legal
    #     in architecture. Since the fault injector is to corrupt the
    #     result of an operation. We need to analyze the semantic of
    #     each group of instruction to get proper register or memory
    #
    #     currently supported instructions:
    #     1. GP/FPU/MMX/SSE/SSE2 arithmetic
    #     2. GP/FPU/MMX/SSE/SS2 cmp
    #     3. GP/FPU/MMX/SSE/SSE2 data transfer
    #     4. GP/FPU/MMX/SSE/SSE2 logical
    #     5. GP/MMX shift/rotate
    #     6. MMX/SSE/SSE2 conversion
    #     7. SSE/SSE2 integer
    #     8. FPU transcendental
    #     :param inst:
    #     :return:
    #     """
    #     if not inst:
    #         inst = self.Inst
    #
    #     if self.is_gp_arithmetic_op(inst):
    #         return True
    #     if self.is_gp_cmp_op(inst):
    #         return True
    #     if self.is_gp_data_transfer_op(inst):
    #         return True
    #     if self.is_gp_logical_op(inst):
    #         return True
    #     if self.is_gp_shift_rotate_op(inst):
    #         return True
    #
    #     if self.is_fpu_arithmetic_op(inst):
    #         return True
    #     if self.is_fpu_cmp_op(inst):
    #         return True
    #     if self.is_fpu_data_transfer(inst):
    #         return True
    #     if self.is_fpu_transcendental_op(inst):
    #         return True
    #
    #     if self.is_mmx_arithmetic_op(inst):
    #         return True
    #     if self.is_mmx_cmp_op(inst):
    #         return True
    #     if self.is_mmx_data_transfer_op(inst):
    #         return True
    #     if self.is_mmx_logical_op(inst):
    #         return True
    #     if self.is_mmx_shift_rotate_op(inst):
    #         return True
    #     if self.is_mmx_conversion_op(inst):
    #         return True
    #
    #     if self.is_sse_arithmetic_op(inst):
    #         return True
    #     if self.is_sse_cmp_op(inst):
    #         return True
    #     if self.is_sse_data_transfer_op(inst):
    #         return True
    #     if self.is_sse_logical_op(inst):
    #         return True
    #     if self.is_sse_integer_op(inst):
    #         return True
    #     if self.is_sse_conv_op(inst):
    #         return True
    #
    #     if self.is_sse2_arithmetic_op(inst):
    #         return True
    #     if self.is_sse2_cmp_op(inst):
    #         return True
    #     if self.is_sse2_data_transfer_op(inst):
    #         return True
    #     if self.is_sse2_logical_op(inst):
    #         return True
    #     if self.is_sse2_conv_op(inst):
    #         return True
    #     if self.is_sse2_single_precision_floating_point_op(inst):
    #         return True
    #     if self.is_sse2_integer_op(inst):
    #         return True
    #
    #     return False
    #
