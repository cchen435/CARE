#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {

	int a, b, c;
	a = atoi(argv[1]);
	b = atoi(argv[2]);
	c = atoi(argv[3]);
	c = a+b;
	c = c*a;
	c = c * (c + a + b);
	return c;
}
