#!/usr/bin/env python3
from App import Application
from Controller import GDBController
from FIWorker import FIWorker
from Framework import GDBFramework, PINFramework
import json
import logging
import multiprocessing as mp
from natsort import natsorted
import os
from pathlib2 import Path
import platform
import shutil
import sys
import time


class GDBFIExpr(object):
    def __init__(self, expr_path, expr_exec, exec_args, runs, base, skip_profile, fault_model, framework, num_workers=0, log_level='debug'):
        """ GDBFIExpr represents an fault injection experiment.

        :param expr_path (string) : the experiment path/directory. It contains all injection data,
                                    including injection log and data per injection
        :param expr_exec (string) : application's executable file (string)
        :param exec_args (list)   : applications's arguments      (list
        :param runs (int)         : number of injections
        :param base (int)         : the beginning id of injections, used for separating experiments into several runs
        :param skip_profile (bool): whether to skip profiling run
        :param fault_model (string): the fault model to be used, supporting 'stuck-at-0', 'stuck-at-1', 'bitflip'
        :param log_level (string) : the log level
        """

        if num_workers:
            self._num_workers = num_workers
        else:
            self._num_workers = mp.cpu_count()

        self._expr_path = Path(expr_path).absolute()
        if not self._expr_path.exists():
            self._expr_path.mkdir()

        self._expr_exec = Path(expr_exec).absolute()
        if not self._expr_exec.exists() or not self._expr_exec.is_file():
            sys.exit('Executable (%s) not found or is not a file' %
                     self._expr_exec)
        self._expr_exec = str(self._expr_exec)
        self._exec_args = exec_args

        self._runs = runs
        self._base = base
        self._skip_profile = skip_profile
        self._fault_model = fault_model

        # set up the logging mechanisms. We setup two separate logs, one is for normal
        # execution, and one is for recording faults injected
        # Execution log
        self._expr_logger = logging.getLogger('GDBFIExpr')
        self._expr_logger.setLevel(getattr(logging, log_level.upper(), None))
        fh = logging.FileHandler(
            self._expr_path.joinpath(self._expr_path.name+'.log'))
        ch = logging.StreamHandler()
        formatter = logging.Formatter('%(asctime)s-%(levelname)s:%(message)s')
        fh.setFormatter(formatter)
        ch.setFormatter(formatter)
        self._expr_logger.addHandler(fh)
        self._expr_logger.addHandler(ch)

        self._expr_logger.info("GDBExpr for: \n\t\t\tEXP: %s \n\t\t\tExec: %s %s" % (
            self._expr_path, self._expr_exec, ' '.join(exec_args)))

        self._expr_injection_log = open(self._expr_path.joinpath(
            self._expr_path.name+'_faults.json'), 'a+')

        if framework == 'gdb':
            self.__framework = GDBFramework(self._expr_logger)
        elif framework == 'pin':
            self.__framework = PINFramework(self._expr_logger)

    def __setup_runtime_loggers(self):
        num_workers = self._num_workers
        logs = [None for i in range(num_workers)]
        formatter = logging.Formatter('%(asctime)s-%(levelname)s:%(message)s')
        for i in range(num_workers):
            logs[i] = logging.getLogger('GDBFIExpr-worker%d' % i)
            logs[i].setLevel(getattr(logging, 'info'.upper(), None))
            fh = logging.FileHandler(
                self._expr_path.joinpath('worker-%d.log' % i))
            fh.setFormatter(formatter)
            logs[i].addHandler(fh)
        return logs

    def gen_workloads(self, method='SEQ'):
        base = self._base
        num_workers = self._num_workers
        runs = self._runs

        if method == 'RR':  # round-robin way
            # split the job using round-robin method
            jobs = [[i+j for j in range(base, base+runs, num_workers)]
                    for i in range(0, num_workers)]
        else:  # sequential way
            jobs = [list(range(base+int(i/num_workers * runs), base +
                               int((i+1)/num_workers * runs))) for i in range(0, num_workers)]
        return jobs

    def json_dump(self, queue, file, wid=None):
        ids = list()
        while not queue.empty():
            record = queue.get()
            id = int(record['id'].split('-')[1])
            ids.append(id)
            json.dump(record, file)
            file.write('\n')
            file.flush()
        return ids

    def profile(self, rounds=10):
        """ Performs a profile run for the experiment.
        :return: execution time in seconds
        """
        self._expr_logger.info("Expr %s profile run (rounds: %d)" % (
            self._expr_path.name, rounds))

        profile_path = self._expr_path.joinpath('profile')

        if profile_path.exists():
            shutil.rmtree(str(profile_path))
        profile_path.mkdir()
        os.chdir(profile_path)

        '''
        time = float(0)
        # we take average time as basis
        app = Application(self._expr_exec, self._exec_args)
        for iter in range(rounds):
            app.start()
            code = app.wait()
            self._expr_logger.info(
                "\tprofile run round %d (code: %s)" % (iter, code))
            time += app.get_exec_time()
        time /= rounds

        # account for potential divergence
        time = 0.98 * time

        self._expr_logger.info(
            "Expr %s profile run finished. Exec time: %f" % (self._expr_path.name, time))
        with open('profile_data.json', 'w') as fh:
            json.dump({'exec_time': time}, fh)
        '''

        # this statment need to be put after above data
        # write statement because of current workspace issue
        os.chdir(self._expr_path)
        return time

    def run(self):
        epath = self._expr_path
        execf = self._expr_exec
        eargs = self._exec_args

        if self._skip_profile:
            print("Skip Profiling and Read Profile data from file")
            profile_path = self._expr_path.joinpath('profile')
            profile = profile_path.joinpath('profile_data.json')
            assert profile.exists(), 'profile data not found, maybe you need to run the profile'
            with open(profile) as fh:
                data = json.load(fh)
                ptime = data['exec_time']
        else:
            ptime = self.profile()

        num_workers = self._num_workers
        queues = [mp.Queue() for i in range(num_workers)]
        logs = self.__setup_runtime_loggers()
        # split the whole workloads among num_workers
        jobs = self.gen_workloads(method='RR')
        tmps = [open(epath.joinpath("tmp-worker-%d.json" % i), 'a+')
                for i in range(num_workers)]

        workers = [FIWorker(i, epath, execf, eargs, jobs[i], ptime, 'bitflip', logs[i], queues[i])
                   for i in range(num_workers)]

        for i in range(num_workers):
            workers[i].start()
            self._expr_logger.info(
                "Worker-%d (pid: %d) started" % (i, workers[i].pid))

        alive = [1] * num_workers
        while sum(alive) > 0:
            time.sleep(ptime)
            for i in range(num_workers):
                if alive[i] == 0:
                    finished = self.json_dump(queue, tmps[i], i)
                    # [jobs[i].remove(j) if j in jobs[i] for j in finished]
                    #[jobs[i].remove(j) for j in finished]
                    [jobs[i].remove(j) for j in finished if j in jobs[i]]
                    continue

                worker = workers[i]
                queue = queues[i]

                # dumping the faults info and update the remaining workloads
                finished = self.json_dump(queue, tmps[i], i)
                # [jobs[i].remove(j) if j in jobs[i] for j in finished]
                [jobs[i].remove(j) for j in finished]

                # we will restart the worker if its job not finished
                if not worker.is_alive():
                    finished = self.json_dump(queue, tmps[i], i)
                    # [jobs[i].remove(j) if j in jobs[i] for j in finished]
                    [jobs[i].remove(j) for j in finished]

                    # if len(jobs[i]):
                    if workers[i].exitcode != 0:
                        self._expr_logger.info("Worker %d (pid: %d) exited (code: %s). restarting" % (
                            i, workers[i].pid, str(workers[i].exitcode)))
                        workers[i] = FIWorker(
                            i, epath, execf, eargs, jobs[i], ptime, 'bitflip', logs[i], queues[i])
                        workers[i].start()
                    else:
                        self._expr_logger.info("Worker %d (pid: %d) finished its job and exited (code: %s)" % (
                            i, workers[i].pid, str(workers[i].exitcode)))
                        alive[i] = 0
                        # print("i=%d: sum of alive: " % i, sum(alive))

        for i in range(num_workers):
            self.json_dump(queue, tmps[i], i)

        # rewind tmp file to the head
        [f.seek(0) for f in tmps]

        self._expr_logger.info("Merge injection records")
        for f in tmps:
            buf = f.readlines()
            self._expr_injection_log.writelines(buf)
            f.close()

        self._expr_injection_log.close()
        self._expr_logger.info('GDBFI EXPR %s finished' % self._expr_path)
