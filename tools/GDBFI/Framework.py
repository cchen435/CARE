#!/usr/bin/env python3
'''
This file implements injection frameworks. We currently support
two frameworks: A complete GDB-based injection framework and a 
Pin-GDB-based injection framework
'''

import json
import shutil
import sys
from App import Application
from pathlib2 import Path


class Framework(object):
    def profile(self):
        raise NotImplementedError()

    def pause(self):
        raise NotImplementedError()


class GDBFramework(Framework):
    def __init__(self, logger, rounds=10):
        self.__logger = logger
        self._p_time = 0
        self._rounds = rounds

    def load_profile(self, profile_path):
        print("Skip Profiling and Read Profile data from file")
        profile = profile_path.joinpath('profile_data.json')
        assert profile.exists(), "profile data not found"
        with open(profile) as fh:
            data = json.load(fh)
            self._p_time = data['exec_time']

    def profile(self, exec, params):
        time = float(0)
        app = Application(exec, params)
        for iter in range(self._rounds):
            app.start()
            code = app.wait()
            self.__logger.info(
                "\tprofile run round %d (code : %s)" % (iter, code))
            time += app.get_exec_time()
        time /= self._rounds
        time = 0.98 * time

        self.__logger.info(
            "Profile run finished. Exec time: %f" % time)

        self._p_time = time

        with open('profile_data.json', 'w') as fh:
            json.dump({'exec_time': time}, fh)


class PINFramework(Framework):
    # pin -t / home/cchen/Documents/Projects/CARE/src/GDBFI/pintool/pintool.so - - ./bench_gtc_care A.txt 100 1
    def __init__(self, logger):
        self.__logger = logger
        self.__pin = shutil.which('pin')
        if self.__pin is None:
            sys.exit("Pin is not found. Please Add Pin the $PATH")

        self.__pintool = Path('pintool/pintool.so')
        if not self.__pintool.exists():
            sys.exit("pintool is not found in: %s" % self.__pintool.absolute())

    def load_profile(self, profile_path):
        pass

    def profile(self, exec, params):
        parameters = ['-t', str(self.__pintool), '--', exec] + params
        app = Application(self.__pin, parameters)
        app.start()
        code = app.wait()
        self.__logger.info(
            "\tprofile run in PIN  Framework finished (code : %s)" % code)
