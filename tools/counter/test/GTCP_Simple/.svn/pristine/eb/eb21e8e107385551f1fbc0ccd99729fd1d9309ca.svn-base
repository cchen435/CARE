#include <stdio.h>
#ifdef __bgq__
#include <spi/include/kernel/memory.h>
#endif 

void print_mem_usage(int *mype)
{
#ifdef __bgq__
  uint64_t heap_size, stack_size, mem_size;
  
  heap_size = 0;
  stack_size = 0;
  mem_size = 0;

  Kernel_GetMemorySize(KERNEL_MEMSIZE_STACK, &stack_size);
  Kernel_GetMemorySize(KERNEL_MEMSIZE_HEAP, &heap_size);
  mem_size = stack_size + heap_size;  /* in bytes */
  
  fprintf(stderr,"%6d  heap = %10u  %f MB  stack = %10u   %f MB  TOTAL = %f MB\n", *mype, heap_size, ((double) heap_size/1024.0/1024.0), stack_size, ((double) stack_size/1024.0/1024.0), ((double) mem_size/1024.0/1024.0));
  
#endif
}


void print_mem_usage_str(int *mype, char *str)
{
#ifdef __bgq__
  uint64_t heap_size;
  int dummy;
  
  Kernel_GetMemorySize(KERNEL_MEMSIZE_HEAP, &heap_size);
  
  fprintf(stderr,"%s  %6d  memory used = %f MB\n", str, *mype, (double)heap_size/1024./1024. );
 
#endif

}
