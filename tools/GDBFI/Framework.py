#!/usr/bin/env python3
'''
This file implements injection frameworks. We currently support
two frameworks: A complete GDB-based injection framework and a
Pin-GDB-based injection framework
'''

import json
import os
import pandas as pd
import numpy as np
import shutil
import sys
from App import Application
from Controller import GDBController
from Disassembler import GDBFIInstruction
from Fault import GDBFIFault
from pathlib2 import Path
from random import randint, uniform
import time


class Framework(object):
    def profile(self):
        raise NotImplementedError()

    def load_profile(self):
        raise NotImplementedError()

    def start_and_inject(self, exec, params, wid, job):
        raise NotImplementedError()

    def continue_and_track(self, gdbsession, app, window=400):
        tracking_window = window
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
                item = str(pc) + ':' + insn.get_inst_bytecode().hex()
                # item = str(pc) + ':' + insn.get_inst_string()
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
        return (func, crashed_insn_bytecode, status, tracking)


class GDBFramework(Framework):
    def __init__(self, logger, rounds=10):
        self.__logger = logger
        self._p_time = 0
        self._rounds = rounds

    def load_profile(self, profile_path):
        profile = profile_path.joinpath('timing.json')
        assert profile.exists(), "profile file %s not found" % profile.name
        with open(profile) as fh:
            data = json.load(fh)
            self._p_time = data['exec_time']

    def profile(self, exec, params):
        time = float(0)
        app = Application(exec, params)
        self.__logger.info(
            "GDBFramework Profile run (rounds: %d)." % self._rounds)

        for iter in range(self._rounds):
            app.start()
            code = app.wait()
            self.__logger.info(
                "\tprofile run (GDBFramework) round %d (code : %s)" % (iter, code))
            time += app.get_exec_time()
        time /= self._rounds
        time = 0.98 * time

        self.__logger.info(
            "Profile run (GDBFramework) finished. Exec time: %f (code : %s) " % (time, code))

        with open('timing.json', 'w') as fh:
            json.dump({'exec_time': time}, fh)

    def start_and_inject(self, exec, params, wid, job):
        gdbsession = GDBController(self.__logger, wid, job)
        while True:
            self.__logger.info(
                "GDBFI-FIWorker (Worker %d, pid %d): \t[%s] doing/redoing" % (wid, os.getpid(), job))
            stop_point = round(uniform(0, self._p_time),  4)
            app = Application(exec,  params)
            app.start()
            time.sleep(stop_point)
            status = gdbsession.attach(app.pid())
            if status == 'error' or status == 'timeout':
                self.__logger.info('GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: failed to attach to the target process (pid: %d) (stop_point: %f). retrying...' % (wid, os.getpid(),
                                                                                                                                                                  job, app.pid(), stop_point))
                if app.is_alive:
                    app.terminate()
                continue

            self.__logger.info(
                'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: retrive and analyze the instruction' % (wid, os.getpid(), job))

            pc = gdbsession.get_curr_pc()
            code = gdbsession.get_code_as_bytes(address=pc)
            insn = GDBFIInstruction(code, pc)
            if not insn.is_valid():
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: meet an invalid PC. retrying ...' % (wid, os.getpid(), job))
                if app.is_alive:
                    app.terminate()
                continue

            redo = False

            while not insn.is_injectable():
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: skip an uninjectable instruction' % (wid, os.getpid(), job))
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

            # the insn is not valid and we will rerun the application
            if redo:
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: meet an error when finding inject targetr. retrying...' % (wid, os.getpid(), job))
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

            self.__logger.info('GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: injecte fault (%s) to instruction (%s).' % (
                wid, os.getpid(), job, str(fault), insn.get_inst_string()))
            self.__logger.info(
                'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: continue the execution to exit.' % (wid, os.getpid(), job))
            break

        return (gdbsession, app, fault)


class PINFramework(Framework):
    # pin -t / home/cchen/Documents/Projects/CARE/src/GDBFI/pintool/pintool.so - - ./bench_gtc_care A.txt 100 1
    def __init__(self, logger):
        self._logger = logger
        self._insts = None
        self._distr = None
        self._p_time = 0.0

        self._pin = shutil.which('pin')
        if self._pin is None:
            sys.exit("Pin is not found. Please Add Pin the $PATH")

        self._pintool = Path('pintool/pintool.so')
        if not self._pintool.exists():
            sys.exit("pintool is not found in: %s" % self.__pintool.absolute())

    def load_profile(self, profile_path):
        profile = profile_path.joinpath('gdbfi.profile')
        assert profile.exists(), "Profile file %s not found" % profile.name
        data = pd.read_csv(profile, sep=';')
        total = data['executions'].sum()
        self._distr = data['executions'].tolist()/total
        self._execs = data['executions'].tolist()
        self._insts = data['addr'].tolist()

        # loading timing info
        profile = profile_path.joinpath('timing.json')
        assert profile.exists(), "profile file %s not found" % profile.name
        with open(profile) as fh:
            data = json.load(fh)
            self._p_time = data['exec_time']

    def get_injection_point(self):
        idx = np.random.choice(len(self._insts), p=self._distr)
        addr = self._insts[idx]
        count = randint(0, self._execs[idx] - 1)
        return (addr, count)

    def profile(self, exec, params):
        parameters = ['-t', str(self._pintool), '--', exec] + params
        app = Application(self._pin, parameters)
        app.start()
        code = app.wait()
        self._logger.info(
            "\tProfile run (PINFramework) finished (code : %s)" % code)

        app = Application(exec, params)
        self._logger.info("Profile run for timing.")
        app.start()
        code = app.wait()
        self._logger.info(
            "\tProfile run for timing finished (code : %s)" % code)
        time = app.get_exec_time()
        time = 0.98 * time
        self._p_time = time

        with open('timing.json', 'w') as fh:
            json.dump({'exec_time': time}, fh)

    def start_and_inject(self, exec, params):
        gdbsession = GDBController(self.__logger, wid, job)
       while True:
            self.__logger.info(
                "GDBFI-FIWorker (Worker %d, pid %d): \t[%s] doing/redoing" % (wid, os.getpid(), job))
            (addr, count) = self.get_injection_point()
            app = Application(exec,  params)
            app.start()
            status = gdbsession.attach(app.pid())
            if status == 'error' or status == 'timeout':
                self.__logger.info('GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: failed to attach to the target process (pid: %d) (stop_point: %f). retrying...' % (wid, os.getpid(),
                                                                                                                                                                  job, app.pid(), stop_point))
                if app.is_alive:
                    app.terminate()
                continue

            number = gdbsession.set_breakpoint(addr, count)
            if number == 'error':
                if app.is_alive:
                    app.terminate()
                continue

            status = gdbsession.exec_continue()
            if status == 'error':
                if app.is_alive:
                    app.terminate()
                continue

            self.__logger.info(
                'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: retrive and analyze the instruction' % (wid, os.getpid(), job))

            pc = gdbsession.get_curr_pc()
            code = gdbsession.get_code_as_bytes(address=pc)
            insn = GDBFIInstruction(code, pc)
            if not insn.is_valid():
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: meet an invalid PC. retrying ...' % (wid, os.getpid(), job))
                if app.is_alive:
                    app.terminate()
                continue

            redo = False

            while not insn.is_injectable():
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: skip an uninjectable instruction' % (wid, os.getpid(), job))
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

            # the insn is not valid and we will rerun the application
            if redo:
                self.__logger.info(
                    'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: meet an error when finding inject targetr. retrying...' % (wid, os.getpid(), job))
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

            self.__logger.info('GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: injecte fault (%s) to instruction (%s).' % (
                wid, os.getpid(), job, str(fault), insn.get_inst_string()))
            self.__logger.info(
                'GDBFI-FIWorker (Worker %d, pid %d):\t[%s]: continue the execution to exit.' % (wid, os.getpid(), job))
            break

        return (gdbsession, app, fault)
