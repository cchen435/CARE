#!/usr/bin/env python3

from random import randint


class GDBFIFault(object):
    def __init__(self, point, gdbsession, insn, fault_model='bitflip'):
        """ This represents a fault to be injected.

        It contains following attributes:
        :gdbsession: The GDB interface for the debuggee
        :param point: when will the fault be injected (measured as dynamic instructions)
        :param target: the instruction where the fault is to be injected
        :param function: the function where the target resides
        :param where: the location where the fault is actually injected, or where the instruction is write to
        :param library: indicating whether the target is in library
        :param fault_model: the fault model
        :param group: the class to which the target instruction belongs to
        """
        self._point = point
        self._session = gdbsession
        self._insn = insn

        self._pc = gdbsession.get_curr_pc()
        self._lib = gdbsession.get_shared_libraries()
        self._func = gdbsession.get_parent_func()
        self._loc = insn.get_inject_loc()
        self._var = gdbsession.create_variable(self._loc)

        self._bit = None
        self._normal = None
        self._faulty = None
        self._fmode = fault_model

    def bitflip(self, data, bit_length):
        bit = randint(0, bit_length-1)
        mask = 1 << bit
        result = data ^ mask
        return bit, result

    def inject(self):
        """ Perform the injection """
        width = self._var['width']

        self._normal = self._session.read_variable(self._var)

        if self._fmode == 'bitflip':
            self._bit, self._faulty = self.bitflip(self._normal, width)
        else:
            return "Error: fault mode (%s) not supported." % self._fmode
        # print("\tfault: ", self.get_fault_info())
        self._session.write_variable(self._var, self._faulty)

    def get_fault_info(self):
        """ get the fault configuration for log purpose """
        fault = dict()
        fault['dyn_inst'] = self._point
        fault['parent_func'] = self._func
        fault['insn_address'] = self._insn.Inst.address
        fault['instruction'] = self._insn.get_inst_string()
        fault['inst_bytes'] = self._insn.get_inst_bytecode().hex()
        fault['inst_size'] = self._insn.get_inst_size()
        fault['insn_group'] = self._insn.get_inst_class()
        fault['location'] = self._loc
        fault['library'] = self._lib
        fault['fault_model'] = self._fmode
        fault['normal_value'] = self._normal
        fault['faulty_value'] = self._faulty
        fault['bit_flipped'] = self._bit
        return fault
