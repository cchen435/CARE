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
#include <stdint.h>



static uint64_t recover_b() {
    return 2;
}

static uint64_t recover_bpt(uint64_t b) {
    return (uint64_t)b;
}

int main(int argc, char **argv)
{
    int a = 10;
    int b = 2;
    // int *bpt = &a;
    int *bpt = 0x800;


    printf("main: %p\n", main);
    printf("a: %p\n", &a);

    int c = a / b;
    fprintf(stdout, "c = %d\n", c);

    fprintf(stdout, "going to access: %p\n", bpt);
    int d = *bpt + 6;

    fprintf(stdout, "d = %d\n", d);

    return 0;
}

