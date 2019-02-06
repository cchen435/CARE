objects: static.ll smooth.ll
all: $(objects)

platform := $(shell uname)

ifeq ($(platform), Darwin)
	LLVMRoot = '/opt/llvm-6.0.1/'
endif

ifeq ($(platform), Linux) 
	LLVMRoot = '/opt/llvm-6.0.1/'
endif

CARE=/home/cchen/Documents/Projects/CARE/src

CC = $(LLVMRoot)/bin/clang

OPT = $(LLVMRoot)/bin/opt

# CFLAGS= -g -S -emit-llvm -I$(CARE)/include
# disable-O0-optone is necessary for clang 6.0 when the program is compiled with O0 flag
CFLAGS= -Xclang -disable-O0-optnone -g -S -emit-llvm -I$(CARE)/include
LDFLAGS=-L$(CARE)/build/runtime -lcare

%.ll: %.c
	$(CC) $(CFLAGS) -o $@ $<
	$(OPT) -mem2reg -gvn $@ -S -o $@

care: $(objects)

%.ll: %.ll
	$(OPT) -debug -load $(CARE)/src/build/frontend/libCARE.so -care $@ -S -o $@

clean:
	rm *.ll
