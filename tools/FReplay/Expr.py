#!/usr/bin/env python3
from App import Application
from Controller import GDBController
from Fault import FRFault
from FIWorker import FIWorker
from pathlib2 import Path
from natsort import natsorted

import json
import logging
import multiprocessing as mp
import os
import platform
import shutil
import sys
import time


def json_parser(ffile, IDs, filter='SIGSEGV'):
    result = list()
    with open(ffile) as fh:
        for line in fh.readlines():
            record = json.loads(line)

            status = record['status']
            if status != filter:
                continue

            id = record['id']
            if IDs and id not in IDs:
                continue

            ip = record['fault']['dyn_inst'][0]
            iter = record['fault']['dyn_inst'][1]
            bit = record['fault']['bit_flipped']
            latency = len(record['track'])
            if latency > 400:
                continue
            result.append(FRFault(id, ip, iter, bit, latency))
    result.sort()
    return result


class FRExpr(object):
    def __init__(self, expr_path, expr_exec, exec_args, ffile, Filter, num_workers=0, log_level='debug'):
        """
        FRExpr represents an replay experiment.

        :param expr_path (string) : the experiment path/directory. It contains
                                    all injection data, including injection log
                                    and data per injection
        :param expr_exec (string) : application's executable file
        :param exec_args (list)   : applications's arguments
        :param ffile (string)     : the json file containing faults
        """

        self._expr_path = Path(expr_path).absolute()
        if not self._expr_path.exists():
            self._expr_path.mkdir()

        self._expr_exec = Path(expr_exec).absolute()
        assert(self._expr_exec.exists(),
               "Executable (%s) not found" % self._expr_exec)
        assert(self._expr_exec.is_file(),
               "Executable (%s) is not a file" % self._expr_exec)
        self._expr_exec = str(self._expr_exec)

        self._exec_args = exec_args

        self._faults = json_parser(ffile, Filter)

        if num_workers:
            self._num_workers = num_workers
        else:
            self._num_workers = mp.cpu_count()

        # set up the logging mechanisms. We setup two separate logs, one is for normal
        # execution, and one is for recording faults injected
        # Execution log
        self._expr_logger = logging.getLogger('FRExpr')
        self._expr_logger.setLevel(getattr(logging, log_level.upper(), None))
        log = str(self._expr_path.joinpath(self._expr_path.name+'.log'))
        fh = logging.FileHandler(log)
        ch = logging.StreamHandler()
        formatter = logging.Formatter('%(asctime)s-%(levelname)s:%(message)s')
        fh.setFormatter(formatter)
        ch.setFormatter(formatter)
        self._expr_logger.addHandler(fh)
        self._expr_logger.addHandler(ch)

        self._expr_logger.info("FRExpr for: \n\t\tEXP: %s \n\t\tExec: %s %s" % (
            self._expr_path, self._expr_exec, ' '.join(exec_args)))
	
        log = str(self._expr_path.joinpath( self._expr_path.name+'_replay.json'))
        self._expr_injection_log = open(log, 'a+')

    def __setup_runtime_loggers(self):
        num_workers = self._num_workers
        logs = [None for i in range(num_workers)]
        formatter = logging.Formatter('%(asctime)s-%(levelname)s:%(message)s')
        for i in range(num_workers):
            logs[i] = logging.getLogger('FR-Worker%d' % i)
            logs[i].setLevel(getattr(logging, 'info'.upper(), None)
            name = str(self._expr_path.joinpath('Worker-%d.log' % i))
            fh = logging.FileHandler(name)
            fh.setFormatter(formatter)
            logs[i].addHandler(fh)
        return logs

    def distribute_workloads(self, workloads):
        '''
        workloads: the list of faults
        '''
        num_workers = self._num_workers
        size = len(workloads)

        # split the job using round-robin method
        jobs = [[workloads[j] for j in range(i, size, num_workers)]
                for i in range(0, num_workers)]
        return jobs

    def json_dump(self, queue, file, wid=None):
        ids = list()
        while not queue.empty():
            record = queue.get()
            ids.append(record['id'])
            json.dump(record, file)
            file.write('\n')
            file.flush()
        return ids

    def run(self):

        logs = self.__setup_runtime_loggers()
        epath = self._expr_path
        execf = self._expr_exec
        eargs = self._exec_args
        nworkers = self._num_workers
        queues = [mp.Queue() for i in range(nworkers)]
        tmps = [open(str(epath.joinpath("tmp-worker-%d.json" % i)), 'a+')
                for i in range(nworkers)]

        self._expr_logger.info("Start Replay Experiment %s." % epath.name)

        # split the whole workloads among num_workers
        jobs = self.distribute_workloads(self._faults)

        workers = [FIWorker(i, epath, execf, eargs, jobs[i], logs[i], queues[i])
                   for i in range(nworkers)]

        for i in range(nworkers):
            workers[i].start()
            self._expr_logger.info(
                "Worker-%d (pid: %d) started" % (i, workers[i].pid))

        alive = [1] * nworkers
        while sum(alive) > 0:
            time.sleep(3)
            for i in range(nworkers):
                if alive[i] == 0:
                    finished = self.json_dump(queue, tmps[i], i)
                    # [jobs[i].remove(j) if j in jobs[i] for j in finished]
                    # [jobs[i].remove(j) for j in finished]
                    [jobs[i].remove(j) for j in finished if j in jobs[i]]
                    continue

                worker = workers[i]
                queue = queues[i]

                # dumping the faults info and update the remaining workloads

                finished = self.json_dump(queue, tmps[i], i)

                # print("finished jobs for %d: " % i, finished)
                [jobs[i].remove(j) for j in finished if j in jobs[i]]
                # [jobs[i].remove(j) for j in finished]

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
                            i, epath, execf, eargs, jobs[i], logs[i], queues[i])
                        workers[i].start()
                    else:
                        self._expr_logger.info("Worker %d (pid: %d) finished its job and exited (code: %s)" % (
                            i, workers[i].pid, str(workers[i].exitcode)))
                        alive[i] = 0
                        # print("i=%d: sum of alive: " % i, sum(alive))

        for i in range(nworkers):
            self.json_dump(queue, tmps[i], i)

        # rewind tmp file to the head
        [f.seek(0) for f in tmps]

        self._expr_logger.info("Merge injection records")
        for f in tmps:
            buf = f.readlines()
            self._expr_injection_log.writelines(buf)
            f.close()

        self._expr_injection_log.close()
        self._expr_logger.info('FREXPR %s finished' % self._expr_path)
