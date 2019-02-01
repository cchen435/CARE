/**
 * Copyright (c) Georgia Institute of Technology
 * Author: C. Chen
 * Functionality description of the file or projects
 * Create time: 2018-08-23 22:14:21
 */
 
#include <stdio.h>

typedef int int_array_t[10];

int main(int argc, char **argv) {
    int i;
    int_array_t a;
    int_array_t *ptr;

    for (i = 0; i < 10; i++) {
        a[i] = i+1;
    }
    ptr = &a;
    for (i = 0; i < 10; i++) {
        fprintf(stderr, "ptr[%d] = %d\n", i, (*ptr)[i]);
    }

    return 0;
}
