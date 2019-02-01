

#include <stdio.h>
#include <string.h>
#include <mhash.h>

typedef u_char care_hash_t[16];

int care_util_get_hash(char *str, int len, care_hash_t hash) {
  MHASH mhd;
  mhd = mhash_init(MHASH_MD5);
  assert(mhd != MHASH_FAILED);
  mhash(mhd, str, len);

  mhash_deinit(mhd, hash);
}

/**
 * care_util_is_equal: compare whether two keys are the same
 */
static int care_util_is_equal(care_hash_t key1, care_hash_t key2) {
  return !strncmp((char *)key1, (char *)key2, 16);
}

int main(int argc, char **argv) {
  char *filename =
      "/home/cchen/Documents/Projects/CARE/libcare/test/simple/main.c";
  int lineno = 20;
  int column = 31;
  char buf[1024];
  care_hash_t hash1, hash2;
  int i;

  sprintf(buf, "%s/%d/%d", filename, lineno, column);
  care_util_get_hash(buf, strlen(buf), hash1);

  for (i = 0; i < mhash_get_block_size(MHASH_MD5); i++) {
    printf("%.2x", (char *)hash1[i]);
  }
  printf("\n");

  sprintf(buf, "%s/%d/%d", filename, lineno, column+1);
  care_util_get_hash(buf, strlen(buf), hash2);
  printf("hash1 == hash2? %d\n", care_util_is_equal(hash1, hash2));
  printf("hash1 == hash1? %d\n", care_util_is_equal(hash1, hash1));
}