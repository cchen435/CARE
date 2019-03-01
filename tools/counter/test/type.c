#include <stdlib.h>

void * umalloc(int size) {
	return malloc(size);
}

void * half(int array[], int size) {
	return &array[size/2];
}
