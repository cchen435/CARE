objects: static.ll smooth.ll
all: $(objects)

platform := $(shell uname)

ifeq ($(platform), Darwin)
	LLVMRoot = '/opt/llvm-3.8.0/'
endif

ifeq ($(platform), Linux) 
	LLVMRoot = '/opt/llvm-3.8.0/'
endif

CARE=/home/cchen/Documents/Projects/CARE/src

CC = $(LLVMRoot)/bin/clang

OPT = $(LLVMRoot)/bin/opt

CFLAGS= -g -S -emit-llvm -I$(CARE)/include
LDFLAGS=-L$(CARE)/build/runtime -lcare

%.ll: %.c
	$(CC) $(CFLAGS) -o $@ $<
	$(OPT) -mem2reg -gvn $@ -S -o $@

care: $(objects)

%.ll: %.ll
	$(OPT) -debug -load $(CARE)/src/build/frontend/libCARE.so -care $@ -S -o $@

clean:
	rm *.ll
