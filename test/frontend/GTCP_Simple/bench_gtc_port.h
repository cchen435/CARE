#ifndef _BENCH_GTC_PORT
#define _BENCH_GTC_PORT
#include <stdlib.h>

#if defined(__x86_64__)
#include <mm_malloc.h>
#if defined(__sparc)
#define _mm_malloc(a,b) memalign((b),(a))
#define _mm_free(a) free((a))
typedef uint32_t wdlck_t;
#endif
#else 
#define _mm_malloc(a,b) malloc((a))
#define _mm_free(a) free((a))
#endif

#if SIMD_CODE
#if defined(__x86_64__)
#include <xmmintrin.h>
#include <emmintrin.h>
/*#include <pmmintrin.h>*/
#endif
#endif

#endif
