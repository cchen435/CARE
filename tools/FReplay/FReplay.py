#!/usr/bin/env python3
'''
FReplay is a tool of CARE project to replay the injectsions that causing soft failures
'''

from optparse import OptionParser
from pathlib2 import Path
from Expr import FRExpr
import logging as log
import os
import sys


def add_parser():
    Usage = 'usage: %prog -e name -f faults.json [-n 4] target.exe ...'
    parser = OptionParser(usage=Usage)
    parser.add_option('-e', '--experiment', type='string',
                      dest='exprid', help='The experiment id/name')
    parser.add_option('-f', '--file', type='string',
                      dest='file', help='The json file for faults')
    parser.add_option('-n', '--workers', type='int', dest='num_workers',
                      help='number of workers')
    return parser


def parse_arguments(args, opts):
    expr_path = opts['exprid']
    assert(expr_path), "Specify an experiment name"

    faults = opts['file']
    assert(faults), "We expect a json file from pure injection experiments.\n"
    faults = Path(faults).absolute()

    num_workers = opts['num_workers']

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
    print('Faluts: ', faults)
    print("Num_workers: ", num_workers)

    return (executable, arguments, expr_path, faults, num_workers)


def main():
    if sys.version_info[0] < 3:
        raise Exception("FReplay has to be run with python3")

    parser = add_parser()
    (opts, args) = parser.parse_args()
    opts = vars(opts)

    (exe, params, path, faults, num_workers) = parse_arguments(args, opts)

    if num_workers:
        expr = FRExpr(path, exe, params, faults, num_workers)
    else:
        expr = FRExpr(path, exe, params, faults)

    expr.run()


if __name__ == '__main__':
    main()
