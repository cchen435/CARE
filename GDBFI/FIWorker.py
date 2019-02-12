#!/usr/bin/env python3

from App import Application
from Controller import GDBController
from Disassembler import GDBFIInstruction
import logging
import multiprocessing as mp
import os
from random import randint, uniform
import shutil
import sys
import time


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


class FIWorker(mp.Process):
    def __init__(self, wid, expr_path, expr_exec, exec_args, workloads, profile_time, fault_model, log, queue):
        """
        Fault injection worker, it is to perform fault injections
        :param expr_path:
        :param expr_exec:
        :param exec_args:
        :param workloads: contains the injection id assigned to the worker
        :param profile_time: total number of instructions based on profile run
        :param log: log handler
        :param lock: lock for accessing log handler
        :param queue: used for communicate with parent process
        :param barrier:
        :param freq:
        """
        self._id = wid
        self._expr_path = expr_path
        self._expr_exec = expr_exec
        self._exec_args = exec_args
        self._workloads = workloads
        self._p_time = profile_time
        self._fmodel = fault_model
        self._log = log
        self._queue = queue
        super(FIWorker, self).__init__()

    def log_msg(self, msg, level=logging.INFO):
        if level == logging.INFO:
            self._log.info("GDBFI-FIWorker (Worker %d, pid %d): %s" %
                           (self._id, self.pid, msg))
        if level == logging.WARN:
            self._log.warn("GDBFI-FIWorker (Worker %d, pid %d): %s" %
                           (self._id, self.pid, msg))
        if level == logging.ERROR:
            self._log.error("GDBFI-FIWorker (Worker %d, pid %d): %s" %
                            (self._id, self.pid, msg))
        if level == logging.DEBUG:
            self._log.debug("GDBFI-FIWorker (Worker %d, pid %d): %s" %
                            (self._id, self.pid, msg))

    def run(self):
        self.log_msg('started successfully')
        self.log_msg("Workloads: %s" % str(self._workloads))

        for w in self._workloads:
            name = 'inject-%04d' % w
            print('Worker-%d (%d) -- perform job %s' %
                  (self._id, self.pid, name))
            self.log_msg('perform job %s' % name)
            wd = self._expr_path.joinpath(name)

            # create injection folder and making it the current working directory
            if wd.exists():
                self.log_msg(
                    '\t[%s]: directory exists, and data could be overwritten.' % name, logging.WARNING)
            else:
                wd.mkdir()
            os.chdir(wd)

            gdbsession = GDBController(self._log, self._id, name)

            # start the application and sleep for while, then pause the app
            # retry if attach to process failed
            # where (when) to inject the fault
            while True:
                self.log_msg(
                    '\t[%s]: doing/redoing' % name)
                stop_point = round(uniform(0, self._p_time), 4)
                app = Application(self._expr_exec, self._exec_args)
                app.start()
                time.sleep(stop_point)
                status = gdbsession.attach(app.pid())
                if status == 'error' or status == 'timeout':
                    self.log_msg('\t[%s]: failed to attach to the target process (pid: %d) (stop_point: %f). retrying...' % (
                        name, app.pid(), stop_point))
                    if app.is_alive:
                        app.terminate()
                    continue

                # disassemble target instruction to fiture out the location
                # where to inject the fault generate the fault configuration
                self.log_msg(
                    '\t[%s]: retrive and analyze the instruction' % name)
                pc = gdbsession.get_curr_pc()
                code = gdbsession.get_code_as_bytes(address=pc)
                insn = GDBFIInstruction(code, pc)
                if not insn.is_valid():
                    self.log_msg(
                        '\t[%s]: meet an invalid PC. retrying...' % name)
                    if app.is_alive:
                        app.terminate()
                    continue

                # in case the initial target instruction is not injectable,
                # e.g. nop, find the next one
                redo = False
                while not insn.is_injectable():
                    self.log_msg(
                        '\t[%s]: skip an unjectable instruction' % name)
                    status = gdbsession.exec_stepi()
                    if status == 'error' or status == 'timeout':
                        redo = True
                        break
                    pc = gdbsession.get_curr_pc()
                    code = gdbsession.get_code_as_bytes(address=pc)
                    insn = GDBFIInstruction(code, pc)
                    if not insn.is_valid():
                        redo = True
                        break

                # the insn is not valid, and we will return the application
                if redo:
                    self.log_msg(
                        '\t[%s]: meet an error when finding inject target. retrying...' % name)
                    if app.is_alive:
                        app.terminate()
                    continue

                fault = GDBFIFault(stop_point, gdbsession, insn)

                # advance to the next step to update the target
                status = gdbsession.exec_stepi()
                if status == 'error' or status == 'timeout':
                    if app.is_alive():
                        app.terminate()
                    continue

                fault.inject()
                self.log_msg('\t[%s]: injected fault (%s) to instruction (%s).' % (name,
                                                                                   str(fault), insn.get_inst_string()))

                self.log_msg('\t[%s]:continue the execution to exit.' % name)
                break

            tracking_window = 400
            tracking = list()
            tracking.clear()
            func = None
            crashed_insn_bytecode = None
            while tracking_window >= 0:
                tracking_window -= 1

                pc = gdbsession.get_curr_pc()
                code = gdbsession.get_code_as_bytes(address=pc)
                insn = GDBFIInstruction(code, pc)
                if insn.is_valid():
                    # item = str(pc) + ':' + insn.get_inst_bytecode().hex()
                    item = str(pc) + ':' + insn.get_inst_string()
                else:
                    item = str(pc) + ': NOP'
                tracking.append(item)

                reason = gdbsession.exec_stepi()
                if reason == 'end-stepping-range':
                    continue

                if reason == 'signal-recieved' or reason == 'exited-signalled':
                    func = gdbsession.get_parent_func()
                    crashed_insn_bytecode = insn.get_inst_bytecode().hex()
                    break

            gdbsession.detach()
            gdbsession.exit()
            status = app.wait(self._p_time * 2)

            self.log_msg('\t[%s]: done. Exit status: %s' % (name, status))

            record = dict()
            record['id'] = name
            record['fault'] = fault.get_fault_info()
            record['status'] = status
            record['crashed_func'] = func
            record['crashed_insn_bytecode'] = crashed_insn_bytecode
            record['track'] = tracking

            while self._queue.full():
                self.log_msg('\t[%s]: queue is full. waiting ...' % name)
                time.sleep(10)
            # self.log_msg('\t[%s]: put record into the queue: %s' % (name, str(record)))
            self.log_msg('\t[%s]: put record into the queue.' % (name))
            self._queue.put(record)
            os.chdir(self._expr_path)

        # sync before exit
        self.log_msg('finished job and exit')
