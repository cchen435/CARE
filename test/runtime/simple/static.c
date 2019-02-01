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

int main(void)
{
    int *ptr = 0x10000;

    fprintf(stdout, "div = %d\n", *ptr/10);

    return 0;
}

