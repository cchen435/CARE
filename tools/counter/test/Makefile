objects: static.ll sum.ll smooth.ll
all: $(objects)

platform := $(shell uname)

ifeq ($(platform), Darwin)
	LLVMRoot = '/opt/llvm-beacon-3.8.0/'
endif

ifeq ($(platform), Linux) 
	LLVMRoot = '/opt/llvm-3.8.0/'
endif

CC = $(LLVMRoot)/bin/clang

OPT = $(LLVMRoot)/bin/opt

CFLAGS= -S -emit-llvm

%.ll: %.c
	$(CC) $(CFLAGS) -o $@ $<
	$(OPT) -mem2reg -gvn $@ -S -o $@

care: $(objects)

%.ll: %.ll
	$(OPT) -debug -load ../build/src/libCARE.so -care $@ -S -o $@

clean:
	rm *.ll
