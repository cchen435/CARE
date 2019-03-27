#!/usr/bin/env python3
from optparse import OptionParser
from pathlib2 import Path
import logging as log
import psutil
import signal
import json
import os
import sys


def load_faults(ffile):
    result = list()
    with open(ffile) as fh:
        for line in fh.readlines():
            record = json.loads(line)
            result.append(record)
    return result


class MPIApp(object):
    def __init__(self, exe, args=[], nprocesses=2, hostfile=None, CARE=None):
        self._proc = None
        self._cmd = ['mpirun', '-np', str(nprocesses)]
        '''
        fname = str(Path(exe).stem)
        self._cmd = ['mpirun', '-np',
                     str(nprocesses), '-output-filename', fname]
        '''

        if hostfile:
            self._cmd += ['-hostfile', hostfile]
        if CARE:
            self._cmd += ['-x', 'LD_PRELOAD=%s' % CARE]
        self._cmd += [exe] + args

        self._stdout = open("stdout", 'w')
        self._stderr = open("stderr", 'w')

    def start(self):
        print("Start application: ", self._cmd)
        self._proc = psutil.Popen(
            self._cmd, stdout=self._stdout, stderr=self._stderr, close_fds=True)
        print('process　name: ', self._proc.name())
        print('process　cmd: ', self._proc.cmdline())

    def wait(self, timeout=None):
        try:
            code = self._proc.wait(timeout)
        except psutil.TimeoutExpired:
            return "Hang"

        print("App exit code: ", code)

        if code == 0:
            return "Normal"

        if code < 0:
            return signal.Signals(abs(code)).name

        return str(code)


class MPIFIExpr(object):
    def __init__(self, expr, exe, args, hosts, faults, nprocesses):
        self._path = Path(expr).absolute()
        if not self._path.exists():
            self._path.mkdir()

        self._exe = Path(exe).absolute()
        assert(self._exe.exists()), "Executable (%s) not found" % self._exe
        assert(self._exe.is_file()), "Executable (%s) is not a file" % self._exe
        self._exe = str(self._exe)

        self._args = args
        self._hosts = hosts
        self._faults = load_faults(faults)
        self._nprocesses = nprocesses

    def run(self):
        libcare = Path(os.environ['CARE_ROOT']).joinpath(
            'build/runtime/libCARERuntime.so').absolute()
        assert(libcare.exists()), "the recovery runtime library is not setup yet!"

        libmpifi = Path(os.environ['CARE_ROOT']).joinpath(
            'tools/MPIFI/libmpifi.so').absolute()
        assert(libmpifi.exists()), "the MPIFI library is not setup yet!"

        CARE = "%s:%s" % (str(libcare), str(libmpifi))
        # CARE = str(libmpifi)

        os.environ['CARE_WORKER_ID'] = str(0)
        for f in self._faults:
            print("Performing fault: Addr -- %s, REG -- %s, Fvalue -- %d (%s)" %
                  (f['ADDR'], f['REG'], f['VALUE'], str(f['VALUE'])))
            fid = 'mpifi-inject-%03d' % self._faults.index(f)

            os.environ['CARE_EXPR_PATH'] = str(self._path)
            os.environ['CARE_INJECTION_ID'] = fid
            os.environ['CARE_TARGET_REG'] = f["REG"].upper()
            os.environ['CARE_TARGET_ADDR'] = f["ADDR"]
            os.environ['CARE_TARGET_DATA'] = str(f["VALUE"])

            wd = self._path.joinpath(fid)
            if not wd.exists():
                wd.mkdir()

            wd = str(wd)
            os.chdir(wd)

            app = MPIApp(self._exe, self._args,
                         self._nprocesses, self._hosts, CARE)
            app.start()
            app.wait(1200)

            os.chdir(str(self._path))


def add_parser():
    Usage = 'usage: %prog -e name -f faults.json [-n 4] target.exe ...'
    parser = OptionParser(usage=Usage)
    parser.add_option('-e', '--experiment', type='string',
                      dest='exprid', help='The experiment id/name')
    parser.add_option('-f', '--faults', type='string',
                      dest='faults', help='The json file for faults')
    parser.add_option('-n', '--nprocesses', type='int', dest='nprocesses',
                      help='number of processes')
    parser.add_option('-m', '--machinefile', type='int', dest='hosts',
                      help='the host file for mpi')
    return parser


def parse_arguments(args, opts):
    expr_path = opts['exprid']
    assert(expr_path), "Specify an experiment name"

    faults = opts['faults']
    assert(faults), "We expect a json file from pure injection experiments.\n"
    faults = Path(faults).absolute()

    nprocesses = opts['nprocesses']

    hosts = opts['hosts']
    if hosts:
        hosts = str(Path(hosts).absolute())

    # this is to add support for passing applications and their arguments as a single string
    # e.g. gdbfi <options for gdbfi> apps <options for executable>
    # if options for applications contains params like "-i", there would be a problem since
    # python will consider it as python options. so we will make it as a string
    executable = args[0].split()[0]
    arguments = args[1:]
    arguments = args[0].split()[1:] + arguments

    # if an argument is a file, use the absolute path as final arguments
    for i in range(len(arguments)):
        path = Path(arguments[i])
        if path.exists():
            arguments[i] = str(path.absolute())

    print("Expr: ", expr_path)
    print("Exec: ", executable)
    print("Args: ", arguments)
    print('Hosts: ', hosts)
    print('Faluts: ', faults)
    print("nprocesses: ", nprocesses)

    return (executable, arguments, expr_path, hosts, faults, nprocesses)


def main():
    if sys.version_info[0] < 3:
        raise Exception("FReplay has to be run with python3")

    parser = add_parser()
    (opts, args) = parser.parse_args()
    opts = vars(opts)

    (exe, params, path, hosts, faults, nprocesses) = parse_arguments(args, opts)

    expr = MPIFIExpr(path, exe, params, hosts, faults, nprocesses)
    expr.run()


if __name__ == '__main__':
    main()
