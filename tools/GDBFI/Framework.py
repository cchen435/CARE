#!/usr/bin/env python3
'''
This file implements injection frameworks. We currently support
two frameworks: A complete GDB-based injection framework and a 
Pin-GDB-based injection framework
'''

import json


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

    def profile(self, app):
        time = float(0)
        for iter in range(self._rounds):
            app.start()
            code = app.wait()
            self.__logger.info(
                "\tprofile run round %d (code : %s)" % (iter, code))
            time += app.get_exec_time()
        time /= rounds
        time = 0.98 * time

        self.__logger.info(
            "Profile run finished. Exec time: %f" % time)

        self._p_time = time

        with open('profile_data.json', 'w') as fh:
            json.dump({'exec_time': time}, fh)


class PINFramework(Framework):
    def __init__(self, logger):
        self.__logger = logger

    def profile(self, app):
        pass
