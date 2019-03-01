top_srcdir = ../..
include $(top_srcdir)/Makefile.inc

ifeq ($(CC),icc)
  COPTREPORTFLAGS = -opt-report 3 -opt-report-file=opt-report.log
else
  COPTREPORTFLAGS =
endif

COMMON_HDRS = bench_gtc.h
COMMON_LDFLAGS = $(CLDFLAGS)

#=======================================================================

TARGETS =  
ifeq ($(BENCH_GTC_MPI),1)
  TARGETS += bench_gtc$(EXEEXT)
endif
CLEANFILES = $(TARGETS)


CLEANFILES = $(TARGETS)

all: $(TARGETS)

#=======================================================================

bench_gtc_HDRS = $(COMMON_HDRS)
bench_gtc_SRCS = setup.c chargei_reduction.c smooth.c push.c shifti.c poisson.c field.c \
    diagnosis.c RngStream.c restart_ion.c ghost_comm.c get_2d_communicator.c print_mem_usage.c \
    collision.c remap.c calc_moments.c output.c
bench_gtc_OBJS = $(bench_gtc_SRCS:.c=.o)
bench_gtc_DEPS = $(bench_gtc_SRCS:.c=.d)
bench_gtc_LDFLAGS = $(COMMON_LDFLAGS)
-include $(bench_gtc_DEPS)

RngStream.o: RngStream.c RngStream.h
	$(CC) -O2 -c RngStream.c


bench_gtc$(EXEEXT): main.c $(bench_gtc_OBJS)
	$(MPICC) $(CFLAGS_STD) $(CFLAGS) $(CFLAGSOMP) $(COPTFLAGS) $(CLDFLAGS)  \
	  -o $@ main.c $(bench_gtc_OBJS) $(bench_gtc_LDFLAGS) $(LIB)

CLEANFILES += main.o $(bench_gtc_OBJS)
CLEANFILES += $(bench_gtc_DEPS)
ifeq ($(CC),icc)
  CLEANFILES += opt-report.log
endif

#=======================================================================
