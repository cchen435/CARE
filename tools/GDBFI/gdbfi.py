#!/usr/bin/env python3

import logging as log
from optparse import OptionParser
from pathlib2 import Path
import os
import sys

from Expr import GDBFIExpr


def add_parser():
    Usage = 'usage: %prog -e name target.exe ...'
    parser = OptionParser(usage=Usage)
    parser.add_option('-b', '--base', type='int', dest='base',
                      help='the base id of injections')
    parser.add_option('-e', '--experiment', type='string',
                      dest='exprid', help='The experiment id/name')
    parser.add_option('-f', '--framework', type='string',
                      dest='framework', help='The injection framework, time- or instruction- based?')
    parser.add_option('-m', '--model', type='string', dest='model',
                      help='Fault model: bitflip, stuck-at-0, stuck-at-1')
    parser.add_option('-n', '--workers', type='int', dest='num_workers',
                      help='number of workers')
    parser.add_option('-r', '--runs', type='int', dest='runs',
                      help='number of runs to perform')
    parser.add_option('-s', '--skip_profile', action='store_true',
                      dest='skip_profile', help='skip the profile run')
    return parser


def parse_arguments(args, opts):
    base = 0
    if opts['base']:
        base = opts['base']

    expr_path = opts['exprid']
    if not expr_path:
        expr_path = 'GDBFI'

    framework = "pintool"
    if opts['framework']:
        framework = opts['framework']
    if framework not in ['gdb', 'pintool']:
        raise Exception('Unsupported injection framework: %s' % framework)

    fmodel = 'bitflip'
    if opts['model']:
        fmodel = opts['model']
    if fmodel not in ['bitflip', 'stuck-at-0', 'stuck-at-1']:
        raise Exception('Fault model (%s) is not supported' % fmodel)

    num_workers = opts['num_workers']

    runs = 10000
    if opts['runs']:
        runs = opts['runs']

    skip_profile = False
    if opts['skip_profile']:
        skip_profile = opts['skip_profile']

    # this is to add support for passing applications and their arguments as a single string
    # e.g. gdbfi <options for gdbfi> apps <options for executable>
    # if options for applications contains params like "-i", there would be a problem since
    # python will consider it as python options. so we will make it as a string
    executable = args[0].split()[0]
    arguments = args[1:]
    arguments = args[0].split()[1:] + arguments

    for i in range(len(arguments)):
        path = Path(arguments[i])
        if path.exists():
            arguments[i] = str(path.absolute())

    return (executable, arguments, base, expr_path, framework, fmodel, num_workers, runs, skip_profile)


def main():
    if sys.version_info[0] < 3:
        raise Exception("GDBFI have to be run with python3")

    parser = add_parser()
    (opts, args) = parser.parse_args()
    opts = vars(opts)

    (exe, params, base, path, framework, model,
     num_workers, runs, skip) = parse_arguments(args, opts)

    if num_workers:
        expr = GDBFIExpr(path, exe, params, runs, base,
                         skip, model, framework, num_workers)
    else:
        expr = GDBFIExpr(path, exe, params, runs, base, skip, model, framework)

    expr.run()


if __name__ == '__main__':
    main()
