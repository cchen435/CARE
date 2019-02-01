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


uint64_t recover_b() {
    return 2;
}

uint64_t recover_bpt(uint64_t b) {
    return (uint64_t)b;
}

