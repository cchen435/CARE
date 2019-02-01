/**
 * Copyright (c) Georgia Institute of Technology
 * Author: C. Chen
 * Functionality description of the file or projects
 * Create time: 2018-08-03 09:11:47
 */
 
#include <assert.h>
#include <stdio.h>
#define __USE_GNU
#include <signal.h>
#include <unistd.h>

#include <udis86.h>

#include "care.h"


extern uint64_t recover_b();

extern uint64_t recover_bpt(uint64_t b);

int main(void)
{
    int a = 10;
    int b = 2;
    int *bpt = (int *)0x800;

    care_init();
    care_register_sighandler(recover_b);
    care_register_sighandler(recover_bpt);

    printf("main: %p\n", main);
    printf("a: %p\n", &a);

    int c = a / b;
    fprintf(stdout, "c = %d\n", c);

    fprintf(stdout, "going to access: %p\n", bpt);
    int d = *bpt + 6;

    fprintf(stdout, "d = %d\n", d);

    return 0;
}

