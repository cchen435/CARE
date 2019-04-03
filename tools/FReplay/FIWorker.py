#!/usr/bin/env python3

from App import Application
from Controller import GDBController
from Disassembler import GDBFIInstruction
from Fault import FRFault

from random import randint, uniform
from pathlib2 import Path

import logging
import multiprocessing as mp
import os
import shutil
import sys
import time


class FIWorker(mp.Process):
    def __init__(self, wid, expr_path, expr_exec, exec_args, workloads, log, queue):
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

        care_runtime_lib = Path(os.environ['CARE_ROOT']).joinpath(
            'build/runtime/libCARERuntime.so').absolute()
        assert(care_runtime_lib.exists()
               ), "the recovery runtime library is not setup yet!"

        os.environ["CARE_EXPR_PATH"] = str(self._expr_path)

        # preload the recovery runtime library
        os.environ["LD_PRELOAD"] = str(care_runtime_lib)
        os.environ["CARE_WORKER_ID"] = str(self._id)

        for w in self._workloads:
            fid = w.id
            fip = w.ip
            fiter = w.iter
            fbit = w.bit

            os.environ["CARE_INJECTION_ID"] = str(fid)

            print('\n\nWorker-%d (%d) -- perform job: ' %
                  (self._id, self.pid), w)
            self.log_msg('perform job %s' % str(w))
            wd = self._expr_path.joinpath(fid)

            # create injection folder and making it the current working directory
            if wd.exists():
                self.log_msg(
                    '\t[%s]: directory exists, and data could be overwritten.' % fid, logging.WARNING)
            else:
                wd.mkdir()
            os.chdir(str(wd))

            gdbsession = GDBController(self._log, self._id, fid)
            app = Application(self._expr_exec, self._exec_args)

            while True:
                app.start()
                status = gdbsession.attach(app.pid())
                if status == 'error' or status == 'timeout':
                    self.log_msg('\t[%s]: failed to attach to the target process (pid: %d). retry ...' % (
                        fid, app.pid()))
                    if app.is_alive:
                        app.terminate()
                    continue

                status = gdbsession.set_breakpoint(fip, fiter)
                if status == 'error' or status == 'timeout':
                    self.log_msg('\t[%s]: failed to set breakpoint at(PC: %s, iter: %d). retry ...' % (
                        fid, fip, fiter))
                    if app.is_alive:
                        app.terminate()
                    continue
                else:
                    bnumber = status

                status = gdbsession.exec_continue()
                if status == 'error' or status == 'timeout':
                    self.log_msg(
                        '\t[%s]: failed to continue the execution. retry ...' % fid)
                    if app.is_alive:
                        app.terminate()
                    continue

                break

            code = gdbsession.get_code_as_bytes(address=int(fip, 16))
            insn = GDBFIInstruction(code, int(fip, 16))

            while not insn.is_injectable():
                status = gdbsession.exec_nexti()
                pc = gdbsession.get_curr_pc()
                code = gdbsession.get_code_as_bytes(address=pc)
                insn = GDBFIInstruction(code, pc)

            assert(insn.is_valid()), 'meet an invalid instruction'

            print("inject fault to instruction: ", insn.get_inst_string())

            # get the location where the fault will be injected
            loc = insn.get_inject_loc()

            gdbsession.exec_nexti()

            var = gdbsession.create_variable(loc)

            print("inject fault to location: ", loc,
                  "\t curr　pc: ", gdbsession.get_curr_pc())

            # inject the fault by bitflipping
            data = gdbsession.read_variable(var)
            mask = 1 << fbit
            fvalue = data ^ mask

            print('Normal: ', data, '\tFaulty: ', fvalue)

            gdbsession.write_variable(var, fvalue)

            gdbsession.del_breakpoint(bnumber)
            # gdbsession.exec_continue()
            gdbsession.detach()

            status = app.wait()

            self.log_msg('\t[%s]: done. Exit status: %s' % (fid, status))

            record = dict()
            record['id'] = fid
            record['loc'] = loc
            record['fault'] = str(w)
            record['status'] = status

            while self._queue.full():
                self.log_msg('\t[%s]: queue is full. waiting ...' % fid)
                time.sleep(10)
            # self.log_msg('\t[%s]: put record into the queue: %s' % (name, str(record)))
            self.log_msg('\t[%s]: put record into the queue.' % (fid))
            self._queue.put(record)
            os.chdir(str(self._expr_path))

        # sync before exit
        self.log_msg('finished job and exit')
