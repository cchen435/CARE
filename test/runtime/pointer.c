
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char characters[] = "abcdefgh";

void copy(char ***c, int *len) {
  int i;
  srand((unsigned)time());
  *len = rand() % 5;
  *c = (char **)malloc(*len * sizeof(char *));
  for (i = 0; i < *len; i++) {
    (*c)[i] = strndup(characters + i, 3);
  }
}

int main(int argc, char **argv) {
  char **c;
  int i, len;
  copy(&c, &len);

  for (i = 0; i < len; i++) {
    printf("%s\n", c[i]);
  }
  return 0;
}