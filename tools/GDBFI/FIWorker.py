#!/usr/bin/env python3

from App import Application
from Controller import GDBController
from Disassembler import GDBFIInstruction
from Fault import GDBFIFault
from Framework import GDBFramework, PINFramework
import logging
import multiprocessing as mp
import os
from random import randint, uniform
from pathlib2 import Path
import shutil
import sys
import time


class FIWorker(mp.Process):
    def __init__(self, wid, expr_path, expr_exec, exec_args, workloads, framework, fault_model, log, queue):
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
        self._fmodel = fault_model
        self._log = log
        self._queue = queue

        if framework == 'gdb':
            self._framework = GDBFramework(log)
        elif framework == 'pintool':
            self._framework = PINFramework(log)

        profile_path = expr_path.joinpath('profile')
        self._framework.load_profile(profile_path)

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

        '''
        care_runtime_lib = Path(os.environ['CARE_ROOT']).joinpath(
            'build/runtime/libCARERuntime.so').absolute()
        os.environ["LD_PRELOAD"] = str(care_runtime_lib)

        assert care_runtime_lib.exists() , "the recovery runtime library is not setup yet!"
        '''

        os.environ["CARE_EXPR_PATH"] = str(self._expr_path)

        for w in self._workloads:
            name = 'inject-%04d' % w
            print('Worker-%d (%d) -- perform job %s' %
                  (self._id, self.pid, name))
            self.log_msg('perform job %s' % name)
            wd = self._expr_path.joinpath(name)

            '''
            # preload the recovery runtime library
            os.environ["CARE_WORKER_ID"] = str(self._id)
            os.environ["CARE_INJECTION_ID"] = str(name)
            '''

            # create injection folder and making it the current working directory
            if wd.exists():
                self.log_msg(
                    '\t[%s]: directory exists, and data could be overwritten.' % name, logging.WARNING)
            else:
                wd.mkdir()
            os.chdir(wd)

            # start the application and sleep for while, then pause the app
            # retry if attach to process failed
            # where (when) to inject the fault
            (gdbsession, app, fault) = self._framework.start_and_inject(
                self._expr_exec, self._exec_args, self._id, name)

            (func, bytecode, status,
             tracking) = self._framework.continue_and_track(gdbsession, app)

            self.log_msg('\t[%s]: done. Exit status: %s' % (name, status))

            record = dict()
            record['id'] = name
            record['fault'] = fault.get_fault_info()
            record['status'] = status
            record['crashed_func'] = func
            record['crashed_insn_bytecode'] = bytecode
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
