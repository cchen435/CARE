#!/usr/bin/env python3
import signal
import psutil
import time


class Application(object):
    def __init__(self, executable, args=[]):
        self._args = [executable] + args
        self._proc = None

        self._timing = 0.0

        self._stdout = open("stdout", 'w')
        self._stderr = open("stderr", 'w')

    def start(self):
        # print("Executing: %s" % self._args)
        self._proc = psutil.Popen(self._args,
                                  stdout=self._stdout,
                                  stderr=self._stderr,
                                  close_fds=True)
        self._timing = time.time()

    def wait(self, timeout=None):
        try:
            code = self._proc.wait(timeout)
        except psutil.TimeoutExpired:
            return "Hang"

        self._timing = time.time() - self._timing

        if code == 0:
            return "Normal"

        if code < 0:
            return signal.Signals(abs(code)).name

        return str(code)

    def pause(self):
        self._proc.suspend()

    def resume(self):
        self._proc.resume()

    def terminate(self):
        self._proc.terminate()

    def is_alive(self):
        return self._proc.is_running()

    def get_exec_time(self):
        return self._timing
        '''
        exec_time = self._proc.cpu_times()
        return exec_time['user'] + exec_time['system']
        '''

    def pid(self):
        return self._proc.pid
