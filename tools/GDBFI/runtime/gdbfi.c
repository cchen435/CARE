#include <stdio.h>
#include <inttypes.h>
#include <capstone/capstone.h>

#define __USE_GNU
#define __USE_XOPEN_EXTENDED
#include <signal.h>
#include <sys/ucontext.h>  // for ucontext and greg_t
#include <unistd.h>

#if __x86_64__
#define PC_REG REG_RIP
#elif __i386__
#define PC_REG REG_EIP
#endif

static const int sigs[] = {
    SIGABRT,
    SIGBUS,
    SIGFPE,
    SIGILL,
    SIGIOT,
    SIGQUIT,
    SIGSEGV,
    SIGSTKFLT,
    SIGSYS,
    SIGXCPU,
    SIGXFSZ
};

void gdbfi_init() __attribute__((constructor));

void sig_handler(int signo, siginfo_t *info, void *context) {
    csh handle;
    cs_insn *insn;
    size_t count;

    ucontext_t *uctx = (ucontext_t *) context;
    mcontext_t *mctx = &(uctx->uc_mcontext);
    #if __USE_MISC
    uint64_t pc = mctx->gregs[PC_REG];
    #else 
    uint64_t pc = mctx->__gregs[PC_REG];
    #endif

    uint8_t *code = (uint8_t *)pc;

    FILE *fh = fopen("gdbfi_runtime_info.txt", "w+");

    if (cs_open(CS_ARCH_X86, CS_MODE_64, &handle) != CS_ERR_OK) {
        fprintf(fh, "0, pc:0x%lx\n", pc);
        fclose(fh);
		exit(signo);
    }
    cs_option(handle, CS_OPT_SYNTAX, CS_OPT_SYNTAX_ATT);

    count = cs_disasm(handle, code, 20, 0, 1, &insn);
    if (count == 0) {
        fprintf(fh, "0, pc:0x%lx; signo:%d\n", pc, signo);
    } else {
        fprintf(fh, "1, pc:0x%lx; signo:%d; asm:%s  %s; bytes:", pc, signo, insn[0].mnemonic, insn[0].op_str);
        for (int i = 0; i < insn[0].size; i++) {
            fprintf(fh, "\\x%02x", insn[0].bytes[i]);
        }
        fprintf(fh, "\n");
    }
    cs_close(&handle);
    fclose(fh);
    exit(signo);
}

void gdbfi_init() {
    int i = 0;
    struct sigaction action; 
    // sigset_t mask;
    action.sa_sigaction = sig_handler;
    action.sa_flags = SA_SIGINFO;
    do {
        sigaction(sigs[i], &action, NULL);
    } while(sigs[i++] != SIGXFSZ);
}
