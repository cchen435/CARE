#include <mpi.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/user.h>
#include <sys/wait.h>
#include <udis86.h>
#include <unistd.h>

#define DEBUG 1
#define INT3 0xCC
#define MASK ~0XFF

#define MASK32 0xFFFFFFFF
#define MASK16 0xFFFF
#define MASK8 0xFF

// the fault injector
int FI(pid_t target, void *addr, char *rname, uint64_t data);

// attach to a process using pthread api
int attach(pid_t pid);

// read a word (long) from process at specified memory address
long readw(pid_t pid, void *memaddr);

// write a word (long) to the specified memory address in process
long writew(pid_t pid, void *memaddr, long data);

// read/write a register
uint64_t read_reg(pid_t pid, char *rname);
long write_reg(pid_t pid, char *rname, uint64_t data);

void spawn(pid_t target);

int MPI_Init(int *argc, char ***argv) {
  int rank, status;
  status = PMPI_Init(argc, argv);
  PMPI_Comm_rank(MPI_COMM_WORLD, &rank);
  if (rank == 0) {
    pid_t pid = getpid();
    spawn(pid);
  }
  return status;
}

void spawn(pid_t target) {
  char *tmp;
  int reg;
  uint64_t addr, fvalue;

  tmp = getenv("CARE_TARGET_REG");

  tmp = getenv("CARE_TARGET_ADDR");
  if (tmp)
    addr = strtoul(tmp, NULL, 16);
  else
    addr = 0;

  tmp = getenv("CARE_TARGET_DATA");
  if (tmp)
    fvalue = strtoul(tmp, NULL, 16);
  else
    fvalue = 0;

#if DEBUG
  fprintf(stderr, "Fault Info: Addr -- %lx, REG -- %d, Data -- %lx.\n", addr,
          reg, fvalue);
#endif

  pid_t child = fork();
  if (child == 0) {
    FI(target, (void *)addr, reg, fvalue);
    exit(0);
  }
}

char *disasm(void *addr) {
  ud_t ud;
  ud_init(&ud);
  ud_set_mode(&ud, 64);
  ud_set_syntax(&ud, UD_SYN_ATT);
  ud_set_vendor(&ud, UD_VENDOR_AMD);
  ud_set_input_buffer(&ud, addr, 20);
  ud_disassemble(&ud);
  return (strdup(ud_insn_asm(&ud)));
}

int FI(pid_t pid, void *addr, char *rname, uint64_t fvalue) {
  int status;
  long ret;
  long inst, trap;

  // attach to the process
  ret = attach(pid);
  if (ret == -1) return EXIT_FAILURE;
  waitpid(pid, &status, 0);

  // save the original code
  inst = readw(pid, (void *)addr);
  if (inst == -1) return EXIT_FAILURE;

  // set breakpoint
  trap = (inst & MASK) | INT3;
  ret = writew(pid, addr, trap);
  if (ret == -1) return EXIT_FAILURE;

  // continue the process
  ret = ptrace(PTRACE_CONT, pid, NULL, NULL);
  if (ret < 0) {
    perror("Set breakpoint(ptrace_pokedata) failed");
    return EXIT_FAILURE;
  }
  waitpid(pid, &status, 0);

  if (WIFEXITED(status)) {
    fprintf(stderr, "process existed\n");
    return -1;
  }

  if (WIFSTOPPED(status)) {
    fprintf(stderr, "Get singal: %s\n", strsignal(WSTOPSIG(status)));
    if (WSTOPSIG(status) == SIGSEGV) return -1;
  }

  // inject the error
  ret = write_reg(pid, addr, fvalue);

  // retore the code at breakpoint
  ret = writew(pid, addr, inst);

  // rolling back the pc by 1 byte
  write_reg(pid, "RIP", read_reg(pid, "RIP") - 1);

  // free the control to the process
  ptrace(PTRACE_DETACH, pid, NULL, NULL);
  return 0;
}

int attach(pid_t pid) {
  long ret;
  ret = ptrace(PTRACE_ATTACH, pid, NULL, NULL);
  if (ret < 0) perror("Attach process(ptrace_attach) failed");
  return ret;
}

long readw(pid_t pid, void *addr) {
  long data = ptrace(PTRACE_PEEKDATA, pid, (void *)addr, 0);
  if (data == -1) {
    char buf[128];
    sprintf(buf, "read data at [%p] failed", addr);
    perror(buf);
  }
  return data;
}

long writew(pid_t pid, void *addr, long data) {
  long ret = ptrace(PTRACE_POKEDATA, pid, (void *)addr, data);
  if (ret < 0) {
    char buf[128];
    sprintf(buf, "Write data to [%p] failed", addr);
    perror(buf);
  }
  return ret;
}

uint64_t read_reg(pid_t pid, char *rname) {
  struct user_regs_struct regs;
  long ret = ptrace(PTRACE_GETREGS, pid, NULL, &regs);
  if (ret == -1) {
    perror("Failed to get register value");
    return 0;
  }
  if (strcmp(rname, "R15") == 0)
    return regs.r15;
  else if (strcmp(rname, "R14") == 0)
    return regs.r14;
  else if (strcmp(rname, "R13") == 0)
    return regs.r13;
  else if (strcmp(rname, "R12") == 0)
    return regs.r12;
  else if (strcmp(rname, "RBP") == 0)
    return regs.rbp;
  else if (strcmp(rname, "RBX") == 0)
    return regs.rbx;
  else if (strcmp(rname, "R11") == 0)
    return regs.r11;
  else if (strcmp(rname, "R10") == 0)
    return regs.r10;
  else if (strcmp(rname, "R9") == 0)
    return regs.r9;
  else if (strcmp(rname, "R8") == 0)
    return regs.r8;
  else if (strcmp(rname, "RAX") == 0)
    return regs.rax;
  else if (strcmp(rname, "RCX") == 0)
    return regs.rcx;
  else if (strcmp(rname, "RDX") == 0)
    return regs.rdx;
  else if (strcmp(rname, "RSI") == 0)
    return regs.rsi;
  else if (strcmp(rname, "RDI") == 0)
    return regs.rdi;
  else if (strcmp(rname, "RIP") == 0)
    return regs.rip;
  else if (strcmp(rname, "RSP") == 0)
    return regs.rsp;
  else if (strcmp(rname, "EBP") == 0)
    return regs.rbp & MASK32;
  else if (strcmp(rname, "EBX") == 0)
    return regs.rbx & MASK32;
  else if (strcmp(rname, "EAX") == 0)
    return regs.rax & MASK32;
  else if (strcmp(rname, "ECX") == 0)
    return regs.rcx & MASK32;
  else if (strcmp(rname, "EDX") == 0)
    return regs.rdx & MASK32;
  else if (strcmp(rname, "ESI") == 0)
    return regs.rsi & MASK32;
  else if (strcmp(rname, "EDI") == 0)
    return regs.rdi & MASK32;
  else if (strcmp(rname, "ESP") == 0)
    return regs.rsp & MASK32;
}

long write_reg(pid_t pid, char *rname, uint64_t data) {
  long ret;
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, pid, NULL, &regs);
  if (strcmp(rname, "R15") == 0)
    regs.r15 = data;
  else if (strcmp(rname, "R14") == 0)
    regs.r14 = data;
  else if (strcmp(rname, "R13") == 0)
    regs.r13 = data;
  else if (strcmp(rname, "R12") == 0)
    regs.r12 = data;
  else if (strcmp(rname, "RBP") == 0)
    regs.rbp = data;
  else if (strcmp(rname, "RBX") == 0)
    regs.rbx = data;
  else if (strcmp(rname, "R11") == 0)
    regs.r11 = data;
  else if (strcmp(rname, "R10") == 0)
    regs.r10 = data;
  else if (strcmp(rname, "R9") == 0)
    regs.r9 = data;
  else if (strcmp(rname, "R8") == 0)
    regs.r8 = data;
  else if (strcmp(rname, "RAX") == 0)
    regs.rax = data;
  else if (strcmp(rname, "RCX") == 0)
    regs.rcx = data;
  else if (strcmp(rname, "RDX") == 0)
    regs.rdx = data;
  else if (strcmp(rname, "RSI") == 0)
    regs.rsi = data;
  else if (strcmp(rname, "RDI") == 0)
    regs.rdi = data;
  else if (strcmp(rname, "RIP") == 0)
    regs.rip = data;
  else if (strcmp(rname, "RSP") == 0)
    regs.rsp = data;
  else if (strcmp(rname, "EBP") == 0)
    regs.rbp = (regs.rbp & ~MASK32) | data;
  else if (strcmp(rname, "EBX") == 0)
    regs.rbx = (regs.rbx & ~MASK32) | data;
  else if (strcmp(rname, "EAX") == 0)
    regs.rax = (regs.rax & ~MASK32) | data;
  else if (strcmp(rname, "ECX") == 0)
    regs.rcx = (regs.rcx & ~MASK32) | data;
  else if (strcmp(rname, "EDX") == 0)
    regs.rdx = (regs.rdx & ~MASK32) | data;
  else if (strcmp(rname, "ESI") == 0)
    regs.rsi = (regs.rsi & ~MASK32) | data;
  else if (strcmp(rname, "EDI") == 0)
    regs.rdi = (regs.rdi & ~MASK32) | data;
  else if (strcmp(rname, "ESP") == 0)
    regs.rsp = (regs.rsp & ~MASK32) | data;

  ptrace(PTRACE_SETREGS, pid, NULL, &regs);
}