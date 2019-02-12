# Overview
GDBFI is an simple instruction level fault injection tool 
written with python language. It is based on gdb interface. 
It is simply to spawn the application process and then
attach to at a randomly selected point (measured in time, 
the normal execution time is profiled in advance such that
the randomly point is selected when application is still
alive. 

After attching to the target process, the current
instruction is retrived and disassembled, and the 
written operand is retrived based on instruction syntax.
Finally, the instruction will be executed and then fault
will be injected to its written operand. 


# Requirements
1. we need to enable ptrace in the system (need sudo
   privilidge), otherwise, we cannot attach to a process. 
   To enable ptrace, we need to change the kernel
   configuration by one of following steps:
   1. editing `/etc/sysctl.d/10-ptrace.conf` to change
      ptrace_scope from 1 to 0. This will configure the
      system permanently, but needs to restart the
      system after the editting
   2. simply executing `echo 0 > /proc/sys/kernel/yama/ptrace_scope` 
      to configure the system temporary


## Known issues:
1. error with "-data-evaluate-expression $rax+$rbp*1".
   Cannot multiply $rbp with any value. 
