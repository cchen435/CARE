#!/usr/bin/env python3
import gdb_mi as MI
import io
import json
import logging
import os
import pexpect      # pexpect is a python module to spawn and interact with child process
import random
import re
import shutil
import sys
import time
from threading import Thread


class GDBController(object):
    def __init__(self, logger, wid, job):
        """
        This is a simple wrapper to GDB using it MI2 interface
        """

        self._log = logger
        self._job = job
        self._id = wid
        self._GDBMIParser = MI.Output()

        '''
        GDB arguments
        --quiet      inhibit dumping info at start-up
        --nx         inhibit window interface
        --nw         ignore .gdbinit
        --tty        redirect the debuggee output (stdout and stderr)
        '''
        # common gdb arguments
        gdb_args = ['--quiet', '--nx', '--interpreter=mi2']

        # spawn a gdbsession
        gdb = shutil.which('gdb')
        if gdb is None:
            sys.exit("gdb is not found")

        self.gdbsession = pexpect.spawn(gdb, gdb_args)
        self._wait_prompt()

    def log_msg(self, msg):
        self._log.info("GDBFI-Controller (Worker %d): \t\t[%s]: %s" % (self._id, self._job, msg))

    def _wait_prompt(self):
        """ wait for response from gdb
        """
        index = self.gdbsession.expect(
            ['\(gdb\)', pexpect.EOF, pexpect.TIMEOUT], timeout=600)
        if index == 0 or index == 1:
            prompt = self.gdbsession.before.decode()
        if index == 2:
            prompt = '^timeout\n'     # simulate gdbmi output.
        return prompt

    def parse_response(self, msg, event='Sync'):
        """ this is to parse the response of a command
        """

        '''
        pre-process the message. python_gdb_mi module require the input line
        is ended with '\n' instead of '\r\n'. And ending with '\n' is mandatory.
        '''
        lines = msg.splitlines()
        for line in lines:
            if not line.strip():        # empty line
                continue
            if line.startswith('-'):    # repeat of the command
                continue
            if line.startswith('~'):    # console record
                continue
            if line.startswith('='):    # notifiy record
                continue
            line += '\n'
            record = self._GDBMIParser.parse_line(line)
            if record.type == event:
                return record


    def build_msg(self, text):
        '''
        this is to remove the newline and extra space in return results
        '''
        msg = text.replace('\n', ' ')
        msg = re.sub(' +', ' ', msg)
        return msg

    def _execute_cmd(self, cmd):
        """ send an command to GDB, and read back the status
        """
        self.gdbsession.sendline(cmd)
        prompt = self._wait_prompt()
        retval = self.parse_response(prompt)
        status = retval.klass
        result = retval.results
        msg = self.build_msg(str(retval))
        self.log_msg("Execute cmd %s (Response: %s)" % (cmd, msg))
        '''
        if status == 'error' or status == 'timeout':
            msg = self.build_msg(str(retval))
            self.log_msg("Execute cmd %s failed (msg: %s)" % (cmd, msg))
        '''
        return status, result

    def wait_for_stop(self):
        """ wait for an stop event. An stop event could be:
            1. breakpoints or watchpoints (reason: breakpoint-hit or end-stepping-range)
            2. signals or exceptions (reason: signal-received)
            3. the end of process   (reason: exit-normally)
            4. the end or begining of a replay log.
            5. called exit (reason: exited, status: 'exit-code')
        It should be called after an exec command
        It returns the stop reason
        """
        prompt = self._wait_prompt()
        retval = self.parse_response(prompt, 'Exec')
        status = retval.klass
        result = retval.results

        msg = self.build_msg(str(retval))
        self.log_msg("\nAsync response msg: \n%s" % msg)

        if status == 'stopped':
            return result['reason']
        else:  # status == 'error' or status == 'timeout':
            return status

    def exec_continue(self):
        cmd = '-exec-continue'
        retval = self._execute_cmd(cmd)
        status = retval[0]
        if status == 'running':
            return self.wait_for_stop()
        return status

    # execution interface
    def exec_nexti(self):
        """ GDB/MI -exec-next-instruction command.
        Execute one machine instruction.
        """
        cmd = '-exec-next-instruction'
        retval = self._execute_cmd(cmd)
        status = retval[0]
        if status == 'running':
            return self.wait_for_stop()
        return status

    def exec_stepi(self, steps=None):
        """ GDB/MI -exec-step-instruction command.
        Execute one machine instruction.
        """
        cmd = '-exec-step-instruction'
        if steps:
            cmd = '%s %d' % (cmd, steps)
        retval = self._execute_cmd(cmd)
        status = retval[0]
        if status == 'running':
            return self.wait_for_stop()
        return status

    def attach(self, pid):
        """ GDB/MI -target-attach command.
        It ist to attache to an process whose process id is pid
        corresponds to GDB 'attach' command
        """
        cmd = '-target-attach %d' % pid
        retval = self._execute_cmd(cmd)
        status = retval[0]
        return status

    def detach(self):
        """ GDB/MI -target-detach command.
        It detaches from currently attached process
        corresponds to GDB 'detach' command
        """
        cmd = '-target-detach'
        retval = self._execute_cmd(cmd)
        return retval

    def exit(self):
        """ GDB/MI -gdb-exit command. exit the gdb session.
        corresponds to GDB 'quit' command
        """
        # exit GDB session so close the tty opened by gdb will be closed
        cmd = '-gdb-exit'
        self._execute_cmd(cmd)

    # register and memory manipulation interface
    def evaluate_expression(self, expr):
        """ GDB/MI -data-evaluate-expression cmd.
        It evaluate an expression. An expression could be a simple
        register, or an expression involve registers

        :param expr: the exprssion, e.g. $rax, and $rax+4*$rbx
        """
        cmd = '-data-evaluate-expression %s' % expr
        retval = self._execute_cmd(cmd)
        status = retval[0]
        result = retval[1]
        if status == 'done':
            record = result['value']
            data = record.split(' ')[0]
            if data.startswith('0x'):
                data = int(data, 16)
            else:
                data = int(data)
            return data
        return status

    def get_shared_libraries(self):
        """ the method to check whether current PC is inside a library
        :return: the library name if resides in a library, otherwise None
        """
        cmd = '-file-list-shared-libraries'
        retval = self._execute_cmd(cmd)
        status = retval[0]
        result = retval[1]
        if status == 'done':
            pc = self.get_curr_pc()
            for item in result['shared-libraries']:
                name = item['target-name']
                ranges = item['ranges']
                for r in ranges:
                    start = int(r['from'], 16)
                    end = int(r['to'], 16)
                    if start <= pc <= end:
                        return name
            return None
        return status

    def get_parent_func(self):
        """ get the function name where the current instruction resides in.

        It is to examine the current stack frame info to get the function name

        :return: the function name
        """
        cmd = '-stack-info-frame'
        retval = self._execute_cmd(cmd)
        status = retval[0]
        result = retval[1]
        if status == 'done':
            return result['frame']['func']
        return status

    def get_curr_pc(self):
        return self.evaluate_expression('$pc')

    def read_memory(self, address, size):
        """ read the data from memory.

        :param address: the address
        :param size: the size
        :return: the data in bytes
        """
        # format: -data-read-memory address word-format word-size nr-rows nr-cols
        cmd = '-data-read-memory 0x%x x 1 1 %d' % (address, size)
        retval = self._execute_cmd(cmd)
        status = retval[0]
        result = retval[1]
        if status == 'done':
            data = result['memory'][0]['data']
            return data
        return status

    def write_memory(self, address, data, size):
        """ write data to the memory
        :param address: the memory address where the data will be written to
        :param data: the data in hex string format, data should be padded with
                     zeros to match the size
        :param size: the size of data in bytes
        """
        cmd = '-data-write-memory-bytes 0x%x %s %d' % (address, data, size)
        retval = self._execute_cmd(cmd)
        status = retval[0]
        return status

    def get_leaf_var(self, var_obj_name):
        name, children, num = var_obj_name, None, 0

        while True:
            cmd = '-var-list-children %s' % name
            retval = self._execute_cmd(cmd)
            status = retval[0]
            result = retval[1]
            if status != 'done':
                sys.exit("failed to execute cmd: %s" % cmd)

            numchild = int(result['numchild'])
            if numchild == 0:
                break
            children = result['children']
            name = result['children'][0]['child']['name']

        if children:
            idx = random.randint(0, len(children)-1)
            name = children[idx]['child']['name']
            num = len(children)
        return name, num

    def create_variable(self, location):
        """ create a variable object for register.

        For SSE/AVX registers, e.g., xmm0, ymm0, which holds vector datas,
        they have more than 64 bits, and cannot be written as whole. We need
        to update an vector element. In this case, we randomly select a vector
        to read and update.
        """
        retvar = dict()
        retvar['type'] = location['type']
        retvar['width'] = location['width']
        loc = self.build_msg(str(location))
        self.log_msg("create variable for location: %s" % loc)

        # since -data-evaluate-expression doesn't support expression e.g. $rax+$rbp*8
        # since the default evaluated result of $rbp is not a int tpye
        # so we calc the expression manually
        if retvar['type'] == 'mem':
            # segment = location['location']['segment']
            index = location['location']['index']
            scale = location['location']['scale']
            base = location['location']['base']
            disp = location['location']['disp']
            tmp = 0
            if index:
                tmp += scale * self.evaluate_expression('$%s' % index)
            if base:
                tmp += self.evaluate_expression('$%s' % base)
            tmp += disp
            retvar['target'] = tmp

        elif retvar['type'] == 'reg':
            reg = location['location']['base']

            # create a variable object for the register
            cmd = '-var-create - * $%s' % reg
            retval = self._execute_cmd(cmd)
            status = retval[0]
            result = retval[1]
            if status == 'done':
                name = result['name']
            else:
                msg = self.build_msg(str(retval))
                self.log_msg("Failed to execute cmd: %s: %s" % (cmd, msg))
                return status

            # check whether the variable/target register is a vector register
            # and it will return an randomly selected vector element if it is
            name, num = self.get_leaf_var(name)

            retvar['target'] = name
            if num:
                retvar['width'] = int(location['width']/num)
        msg = self.build_msg(str(retvar))
        self.log_msg("the variable for location %s: %s" % (loc, msg))

        return retvar

    def delete_variable(self, var):
        if var['type'] == 'reg':
            name = var['target'].split('.')[0]
            cmd = '-var-delete %s' % name
            self._execute_cmd(cmd)

    def read_variable(self, var):
        if var['type'] == 'reg':
            cmd = '-var-evaluate-expression -f hexadecimal %s' % var['target']
            retval = self._execute_cmd(cmd)
            status = retval[0]
            result = retval[1]
            if status == 'done':
                value = int(result['value'], 16)
                return value
            return status

        elif var['type'] == 'mem':
            addr = var['target']
            size = var['width']/8
            data = self.read_memory(addr, size)
            try:
                tmp = bytes([int(i, 16) for i in data])
                value = int().from_bytes(tmp, byteorder='little')
                return value
            except:
                return data

    def write_variable(self, var, data):
        if var['type'] == 'reg':
            cmd = '-var-assign %s %d' % (var['target'], data)
            retval = self._execute_cmd(cmd)
            return retval[0]
        elif var['type'] == 'mem':
            addr = var['target']
            size = int(var['width']/8)
            tmp = data.to_bytes(size, byteorder='little').hex()
            retval = self.write_memory(addr, tmp, size)
            return retval[0]

    def get_code_as_bytes(self, address=None, size=20):
        """ get the code pointed by current pc, and return it in bytes
        """
        if address == None:
            address = self.get_curr_pc()
        if address == 0:
            return 0x0
        data = self.read_memory(address, size)
        try:
            data = [int(i, 16) for i in data]
            return bytes(data)
        except:
            return data
