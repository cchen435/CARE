; ModuleID = 'miniMD-O1.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%ident_t = type { i32, i32, i32, i32, i8* }
%class.Integrate = type { double, double, i32, i32, i32, double*, double*, double*, double*, double, i32, %class.ThreadData* }
%class.ThreadData = type { i32, i32, i32, i32, i32 }
%class.Atom = type <{ i32, i32, i32, i32, double*, double*, double*, i32, [4 x i8], i32*, double*, %class.ThreadData*, double, double, i32, i32, i32, [4 x i8], %struct.Box, i32*, i32*, double*, double*, i32*, i32, [4 x i8] }>
%struct.Box = type { double, double, double, double, double, double, double, double, double }
%class.ForceLJ = type { %class.Force }
%class.Force = type { i32 (...)**, double, double*, double, double, i32, double, i32, i32, i32, %class.ThreadData*, i32, %class.Timer*, double*, double*, double*, i32, i32 }
%class.Timer = type { double*, double, double }
%class.ForceEAM = type { %class.Force, double, i32, i32, i32, i32, double*, double*, double*, double, double, double, double, double*, double*, double*, double*, double*, i32, i32*, %"struct.ForceEAM::Funcfl" }
%"struct.ForceEAM::Funcfl" = type { i8*, i32, i32, double, double, double, double, double*, double*, double* }
%class.Neighbor = type <{ i32, i32, i32, i32, double, double*, i32, i32, i32*, i32*, i32, i32, i32, i32, %class.Timer*, %class.ThreadData*, i32*, i32*, i32, i32, double, double, double, i32, i32, i32, [4 x i8], i32*, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, [4 x i8] }>
%class.Thermo = type { i32, i32, i32, i32*, double*, double*, double*, double, double, double, double, double, double, double, double, %class.ThreadData*, double }
%class.Comm = type <{ i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, double*, double*, double*, i32, i32, [3 x [2 x i32]], [3 x i32], [3 x i32], double*, double*, %class.ThreadData*, i32, i32, %class.Timer*, i32, [4 x i8], i32*, i32*, i32*, i32**, i32*, i32*, i32, i32, i32, [4 x i8] }>
%struct.In = type { i32, i32, i32, double, double, i32, i32, double, double, i8*, i32, double, i32, double, double, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

$_ZN10ThreadDataC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5Force8finaliseEv = comdat any

$_ZN7ForceLJ16compute_originalILi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_halfneighILi1ELi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi0EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_halfneighILi1ELi0EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_fullneighILi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ16compute_originalILi0EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_halfneighILi0ELi1EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi0EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_halfneighILi0ELi0EEEvR4AtomR8Neighbori = comdat any

$_ZN7ForceLJ17compute_fullneighILi0EEEvR4AtomR8Neighbori = comdat any

$_ZN5ForceC2Ev = comdat any

$_ZN5ForceD2Ev = comdat any

$_ZN5ForceD0Ev = comdat any

$_ZN5Force5setupEv = comdat any

$_ZN5Force7computeER4AtomR8NeighborR4Commi = comdat any

$_ZN8Neighbor9coord2binEddd = comdat any

$_ZTI5Force = comdat any

$_ZTS5Force = comdat any

$_ZTV5Force = comdat any

@.str = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--input_file\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"in.lj.miniMD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"--num_threads\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"--teams\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--nsteps\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-nx\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-ny\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"-nz\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"--ntypes\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"--neigh_bins\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"--half_neigh\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"-sse\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"--check_exchange\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"--sort\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"--yaml_output\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"--yaml_screen\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"--data_file\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"--units\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"metal\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"eam\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"-gn\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"--ghost_newton\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@str = private unnamed_addr constant [109 x i8] c"\0A-----------------------------------------------------------------------------------------------------------\00"
@str.111 = private unnamed_addr constant [67 x i8] c"-------------miniMD-Reference 2.0 (MPI+OpenMP)--------------------\00"
@str.112 = private unnamed_addr constant [111 x i8] c"-------------------------------------------------------------------------------------------------------------\0A\00"
@str.113 = private unnamed_addr constant [335 x i8] c"miniMD is a simple, parallel molecular dynamics (MD) code,\0Awhich is part of the Mantevo project at Sandia National\0ALaboratories ( http://www.mantevo.org ).\0AThe original authors of miniMD are Steve Plimpton (sjplimp@sandia.gov) ,\0APaul Crozier (pscrozi@sandia.gov) with current\0Aversions written by Christian Trott (crtrott@sandia.gov).\0A\00"
@str.114 = private unnamed_addr constant [21 x i8] c"Commandline Options:\00"
@str.115 = private unnamed_addr constant [28 x i8] c"\0A  Execution configuration:\00"
@str.116 = private unnamed_addr constant [88 x i8] c"\09--teams <nteams>:             set number of thread-teams used per MPI rank (default 1)\00"
@str.117 = private unnamed_addr constant [81 x i8] c"\09-t / --num_threads <threads>: set number of threads per thread-team (default 1)\00"
@str.118 = private unnamed_addr constant [268 x i8] c"\09--half_neigh <int>:           use half neighborlists (default 1)\0A\09                                0: full neighborlist\0A\09                                1: half neighborlist\0A\09                               -1: original miniMD half neighborlist force (not OpenMP safe)\00"
@str.119 = private unnamed_addr constant [88 x i8] c"\09-d / --device <int>:          choose device to use (only applicable for GPU execution)\00"
@str.120 = private unnamed_addr constant [56 x i8] c"\09-dm / --device_map:           map devices to MPI ranks\00"
@.str.46 = private unnamed_addr constant [175 x i8] c"\09-ng / --num_gpus <int>:       give number of GPUs per Node (used in conjuction with -dm\0A\09                              to determine device id: 'id=mpi_rank%%ng' (default 2)\0A\00", align 1
@str.121 = private unnamed_addr constant [184 x i8] c"\09--skip_gpu <int>:             skip the specified gpu when assigning devices to MPI ranks\0A\09                              used in conjunction with -dm (but must come first in arg list)\00"
@str.122 = private unnamed_addr constant [84 x i8] c"\09-sse <sse_version>:           use explicit sse intrinsics (use miniMD-SSE variant)\00"
@str.123 = private unnamed_addr constant [153 x i8] c"\09-gn / --ghost_newton <int>:   set usage of newtons third law for ghost atoms\0A\09                                (only applicable with half neighborlists)\00"
@str.124 = private unnamed_addr constant [21 x i8] c"\0A  Simulation setup:\00"
@str.125 = private unnamed_addr constant [81 x i8] c"\09-i / --input_file <string>:   set input file to be used (default: in.lj.miniMD)\00"
@str.126 = private unnamed_addr constant [84 x i8] c"\09--ntypes <int>:               set number of atom types for simulation (default: 4)\00"
@str.127 = private unnamed_addr constant [70 x i8] c"\09-n / --nsteps <int>:          set number of timesteps for simulation\00"
@str.128 = private unnamed_addr constant [65 x i8] c"\09-s / --size <int>:            set linear dimension of systembox\00"
@str.129 = private unnamed_addr constant [84 x i8] c"\09-nx/-ny/-nz <int>:            set linear dimension of systembox in x/y/z direction\00"
@str.130 = private unnamed_addr constant [73 x i8] c"\09-b / --neigh_bins <int>:      set linear dimension of neighbor bin grid\00"
@str.131 = private unnamed_addr constant [81 x i8] c"\09-u / --units <string>:        set units (lj or metal), see LAMMPS documentation\00"
@str.132 = private unnamed_addr constant [65 x i8] c"\09-p / --force <string>:        set interaction model (lj or eam)\00"
@str.133 = private unnamed_addr constant [72 x i8] c"\09-f / --data_file <string>:    read configuration from LAMMPS data file\00"
@str.134 = private unnamed_addr constant [17 x i8] c"\0A  Miscelaneous:\00"
@str.135 = private unnamed_addr constant [86 x i8] c"\09--check_exchange:             check whether atoms moved further than subdomain width\00"
@str.136 = private unnamed_addr constant [160 x i8] c"\09--safe_exchange:              perform exchange communication with all MPI processes\0A\09                                within rcut_neighbor (outer force cutoff)\00"
@.str.63 = private unnamed_addr constant [116 x i8] c"\09--sort <n>:                   resort atoms (simple bins) every <n> steps (default: use reneigh frequency; never=0)\00", align 1
@str.137 = private unnamed_addr constant [64 x i8] c"\09-o / --yaml_output <int>:     level of yaml output (default 1)\00"
@str.138 = private unnamed_addr constant [64 x i8] c"\09--yaml_screen:                write yaml output also to screen\00"
@str.139 = private unnamed_addr constant [58 x i8] c"\09-h / --help:                  display this help message\0A\00"
@str.140 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00"
@str.149 = private unnamed_addr constant [67 x i8] c"# EAM currently requires '--ghost_newton 0'; Changing setting now.\00"
@str.141 = private unnamed_addr constant [96 x i8] c"ERROR: Trying to run with -sse with miniMD reference version. Use SSE variant instead. Exiting.\00"
@str.148 = private unnamed_addr constant [17 x i8] c"# Create System:\00"
@str.147 = private unnamed_addr constant [13 x i8] c"# Done .... \00"
@stdout = external global %struct._IO_FILE*, align 8
@.str.72 = private unnamed_addr constant [48 x i8] c"# miniMD-Reference 2.0 (MPI+OpenMP) output ...\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"# Run Settings: \0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"\09# MPI processes: %i\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"\09# OpenMP threads: %i\0A\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"\09# Inputfile: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"\09# Datafile: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"# Physics Settings: \0A\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"EAM\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"\09# ForceStyle: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"\09# Force Parameters: %2.2lf %2.2lf\0A\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"METAL\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"\09# Units: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"\09# Atoms: %i\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"\09# Atom types: %i\0A\00", align 1
@.str.88 = private unnamed_addr constant [61 x i8] c"\09# System size: %2.2lf %2.2lf %2.2lf (unit cells: %i %i %i)\0A\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"\09# Density: %lf\0A\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"\09# Force cutoff: %lf\0A\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"\09# Timestep size: %lf\0A\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"# Technical Settings: \0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"\09# Neigh cutoff: %lf\0A\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"\09# Half neighborlists: %i\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"\09# Neighbor bins: %i %i %i\0A\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"\09# Neighbor frequency: %i\0A\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"\09# Sorting frequency: %i\0A\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"\09# Thermo frequency: %i\0A\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"\09# Ghost Newton: %i\0A\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"\09# Use intrinsics: %i\0A\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"\09# Do safe exchange: %i\0A\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"\09# Size of float: %i\0A\0A\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0) }, align 8
@.str.103 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@str.145 = private unnamed_addr constant [24 x i8] c"# Starting dynamics ...\00"
@str.146 = private unnamed_addr constant [22 x i8] c"# Timestep T U P Time\00"
@str.142 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str.143 = private unnamed_addr constant [23 x i8] c"# Performance Summary:\00"
@str.144 = private unnamed_addr constant [120 x i8] c"# MPI_proc OMP_threads nsteps natoms t_total t_force t_neigh t_comm t_other performance perf/thread grep_string t_extra\00"
@.str.110 = private unnamed_addr constant [60 x i8] c"%i %i %i %i %lf %lf %lf %lf %lf %lf %lf PERF_SUMMARY %lf\0A\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.36 = private unnamed_addr constant [23 x i8] c"ERROR: Cannot open %s\0A\00", align 1
@.str.2.37 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3.38 = private unnamed_addr constant [3 x i8] c"lj\00", align 1
@.str.4.39 = private unnamed_addr constant [6 x i8] c"metal\00", align 1
@.str.5.40 = private unnamed_addr constant [82 x i8] c"Unknown units option in file at line 3 ('%s'). Expecting either 'lj' or 'metal'.\0A\00", align 1
@.str.6.41 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7.42 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.8.43 = private unnamed_addr constant [4 x i8] c"eam\00", align 1
@.str.9.44 = private unnamed_addr constant [84 x i8] c"Unknown forcetype option in file at line 5 ('%s'). Expecting either 'lj' or 'eam'.\0A\00", align 1
@.str.10.45 = private unnamed_addr constant [8 x i8] c"%le %le\00", align 1
@.str.11.46 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.12.47 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13.48 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, align 8
@.str.51 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@2 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, align 8
@.str.1.55 = private unnamed_addr constant [227 x i8] c"Warning: Atoms move further than your subdomain size, which will eventually cause lost atoms.\0AIncrease reneighboring frequency or choose a different processor grid\0AMaximum move distance: %lf; Subdomain dimensions: %lf %lf %lf\0A\00", align 1
@str.60 = private unnamed_addr constant [27 x i8] c"ERROR: No memory for atoms\00"
@4 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.61, i32 0, i32 0) }, align 8
@.str.1.61 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@5 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.61, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.61, i32 0, i32 0) }, align 8
@_ZTV7ForceLJ = unnamed_addr constant [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI7ForceLJ to i8*), i8* bitcast (void (%class.ForceLJ*)* @_ZN7ForceLJD2Ev to i8*), i8* bitcast (void (%class.ForceLJ*)* @_ZN7ForceLJD0Ev to i8*), i8* bitcast (void (%class.ForceLJ*)* @_ZN7ForceLJ5setupEv to i8*), i8* bitcast (void (%class.Force*)* @_ZN5Force8finaliseEv to i8*), i8* bitcast (void (%class.ForceLJ*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)* @_ZN7ForceLJ7computeER4AtomR8NeighborR4Commi to i8*)], align 8
@_ZTI7ForceLJ = constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7ForceLJ, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTI5Force to i8*), i64 0 }
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS7ForceLJ = constant [9 x i8] c"7ForceLJ\00"
@_ZTI5Force = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Force, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS5Force = linkonce_odr constant [7 x i8] c"5Force\00", comdat
@7 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0) }, align 8
@.str.68 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@8 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0) }, align 8
@_ZTV5Force = linkonce_odr unnamed_addr constant [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI5Force to i8*), i8* bitcast (void (%class.Force*)* @_ZN5ForceD2Ev to i8*), i8* bitcast (void (%class.Force*)* @_ZN5ForceD0Ev to i8*), i8* bitcast (void (%class.Force*)* @_ZN5Force5setupEv to i8*), i8* bitcast (void (%class.Force*)* @_ZN5Force8finaliseEv to i8*), i8* bitcast (void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)* @_ZN5Force7computeER4AtomR8NeighborR4Commi to i8*)], comdat, align 8
@_ZTV8ForceEAM = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI8ForceEAM to i8*), i8* bitcast (void (%class.ForceEAM*)* @_ZN8ForceEAMD2Ev to i8*), i8* bitcast (void (%class.ForceEAM*)* @_ZN8ForceEAMD0Ev to i8*), i8* bitcast (void (%class.ForceEAM*)* @_ZN8ForceEAM5setupEv to i8*), i8* bitcast (void (%class.Force*)* @_ZN5Force8finaliseEv to i8*), i8* bitcast (void (%class.ForceEAM*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)* @_ZN8ForceEAM7computeER4AtomR8NeighborR4Commi to i8*), i8* bitcast (void (%class.ForceEAM*, i8*)* @_ZN8ForceEAM5coeffEPKc to i8*), i8* bitcast (i32 (%class.ForceEAM*, i32, i32, double*, i32**)* @_ZN8ForceEAM9pack_commEiiPdPPi to i8*), i8* bitcast (void (%class.ForceEAM*, i32, i32, double*)* @_ZN8ForceEAM11unpack_commEiiPd to i8*), i8* bitcast (void (%class.ForceEAM*, i8*)* @_ZN8ForceEAM9read_fileEPKc to i8*), i8* bitcast (void (%class.ForceEAM*)* @_ZN8ForceEAM10file2arrayEv to i8*)], align 8
@_ZTI8ForceEAM = constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTS8ForceEAM, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTI5Force to i8*), i64 0 }
@_ZTS8ForceEAM = constant [10 x i8] c"8ForceEAM\00"
@.str.71 = private unnamed_addr constant [10 x i8] c"Cu_u6.eam\00", align 1
@10 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.72, i32 0, i32 0) }, align 8
@.str.1.72 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@11 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.72, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.72, i32 0, i32 0) }, align 8
@.str.2.73 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3.74 = private unnamed_addr constant [35 x i8] c"Can't open EAM Potential file: %s\0A\00", align 1
@.str.4.75 = private unnamed_addr constant [7 x i8] c"%d %lg\00", align 1
@.str.5.76 = private unnamed_addr constant [18 x i8] c"%d %lg %d %lg %lg\00", align 1
@.str.6.77 = private unnamed_addr constant [6 x i8] c" \09\0A\0D\0C\00", align 1
@.str.7.78 = private unnamed_addr constant [31 x i8] c"Numeric index is out of bounds\00", align 1
@13 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0) }, align 8
@.str.104 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@14 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0) }, align 8
@15 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0) }, align 8
@16 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.117, i32 0, i32 0) }, align 8
@.str.117 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@17 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.117, i32 0, i32 0) }, align 8
@18 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.117, i32 0, i32 0) }, align 8
@.str.1.118 = private unnamed_addr constant [20 x i8] c"%i %e %e %e %6.3lf\0A\00", align 1
@str.150 = private unnamed_addr constant [30 x i8] c"ERROR: Bad grid of processors\00"
@19 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.153, i32 0, i32 0) }, align 8
@.str.1.153 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@20 = private unnamed_addr constant %ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.153, i32 0, i32 0) }, align 8
@21 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.153, i32 0, i32 0) }, align 8
@.str.182 = private unnamed_addr constant [24 x i8] c"Atom counts = %d %d %d\0A\00", align 1
@str.183 = private unnamed_addr constant [33 x i8] c"ERROR: Incorrect number of atoms\00"
@.str.2.184 = private unnamed_addr constant [41 x i8] c"miniMD-%4d-%02d-%02d-%02d-%02d-%02d.yaml\00", align 1
@.str.3.185 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.186 = private unnamed_addr constant [21 x i8] c"run_configuration: \0A\00", align 1
@.str.5.187 = private unnamed_addr constant [46 x i8] c"  variant: miniMD-Reference 2.0 (MPI+OpenMP)\0A\00", align 1
@.str.6.188 = private unnamed_addr constant [21 x i8] c"  mpi_processes: %i\0A\00", align 1
@.str.7.189 = private unnamed_addr constant [20 x i8] c"  thread_teams: %i\0A\00", align 1
@.str.8.190 = private unnamed_addr constant [15 x i8] c"  threads: %i\0A\00", align 1
@.str.10.191 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.9.192 = private unnamed_addr constant [16 x i8] c"  datafile: %s\0A\00", align 1
@.str.12.193 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str.13.194 = private unnamed_addr constant [6 x i8] c"METAL\00", align 1
@.str.11.195 = private unnamed_addr constant [13 x i8] c"  units: %s\0A\00", align 1
@.str.14.196 = private unnamed_addr constant [13 x i8] c"  atoms: %i\0A\00", align 1
@.str.15.197 = private unnamed_addr constant [18 x i8] c"  atom_types: %i\0A\00", align 1
@.str.16.198 = private unnamed_addr constant [37 x i8] c"  system_size: %2.2lf %2.2lf %2.2lf\0A\00", align 1
@.str.17.199 = private unnamed_addr constant [24 x i8] c"  unit_cells: %i %i %i\0A\00", align 1
@.str.18.200 = private unnamed_addr constant [16 x i8] c"  density: %lf\0A\00", align 1
@.str.20.201 = private unnamed_addr constant [4 x i8] c"EAM\00", align 1
@.str.19.202 = private unnamed_addr constant [18 x i8] c"  force_type: %s\0A\00", align 1
@.str.21.203 = private unnamed_addr constant [21 x i8] c"  force_cutoff: %lf\0A\00", align 1
@.str.22.204 = private unnamed_addr constant [31 x i8] c"  force_params: %2.2lf %2.2lf\0A\00", align 1
@.str.23.205 = private unnamed_addr constant [24 x i8] c"  neighbor_cutoff: %lf\0A\00", align 1
@.str.24.206 = private unnamed_addr constant [21 x i8] c"  neighbor_type: %i\0A\00", align 1
@.str.25.207 = private unnamed_addr constant [27 x i8] c"  neighbor_bins: %i %i %i\0A\00", align 1
@.str.26.208 = private unnamed_addr constant [26 x i8] c"  neighbor_frequency: %i\0A\00", align 1
@.str.27.209 = private unnamed_addr constant [22 x i8] c"  sort_frequency: %i\0A\00", align 1
@.str.28.210 = private unnamed_addr constant [22 x i8] c"  timestep_size: %lf\0A\00", align 1
@.str.29.211 = private unnamed_addr constant [24 x i8] c"  thermo_frequency: %i\0A\00", align 1
@.str.30.212 = private unnamed_addr constant [20 x i8] c"  ghost_newton: %i\0A\00", align 1
@.str.31.213 = private unnamed_addr constant [22 x i8] c"  use_intrinsics: %i\0A\00", align 1
@.str.32.214 = private unnamed_addr constant [21 x i8] c"  safe_exchange: %i\0A\00", align 1
@.str.33.215 = private unnamed_addr constant [19 x i8] c"  float_size: %i\0A\0A\00", align 1
@.str.34.216 = private unnamed_addr constant [25 x i8] c"\0A\0Athermodynamic_output:\0A\00", align 1
@.str.35.217 = private unnamed_addr constant [17 x i8] c"  timestep: %d \0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"      T*:           %15.10g \0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"      U*:           %15.10g \0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"      P*:           %15.10g \0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"      Conservation: %15.10g \0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"time:\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"  total:\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"    time: %g \0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"    performance: %10.5e \0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"    performance_proc: %10.5e \0A\00", align 1
@.str.46.218 = private unnamed_addr constant [13 x i8] c"  force: %g\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"  neigh: %g\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"  comm:  %g\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"  other: %g\0A\00", align 1
@.str.51.219 = private unnamed_addr constant [22 x i8] c"# Timing histograms \0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"# Force time: %g ave %g max %g min\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"# Histogram:\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"# Neigh time: %g ave %g max %g min\0A\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"# Comm  time: %g ave %g max %g min\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"# Other time: %g ave %g max %g min\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"# Nlocal:     %g ave %g max %g min\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"# Nghost:     %g ave %g max %g min\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"# Nswaps:     %g ave %g max %g min\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"# Neighs:     %g ave %g max %g min\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"# Total # of neighbors = %g\0A\00", align 1
@line = global [255 x i8] zeroinitializer, align 16
@fp = global %struct._IO_FILE* null, align 8
@keyword = global [255 x i8] zeroinitializer, align 16
@.str.220 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.4.221 = private unnamed_addr constant [6 x i8] c"atoms\00", align 1
@.str.5.222 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.6.223 = private unnamed_addr constant [11 x i8] c"atom types\00", align 1
@.str.7.224 = private unnamed_addr constant [8 x i8] c"xlo xhi\00", align 1
@.str.8.225 = private unnamed_addr constant [8 x i8] c"%lg %lg\00", align 1
@.str.9.226 = private unnamed_addr constant [8 x i8] c"ylo yhi\00", align 1
@.str.10.227 = private unnamed_addr constant [8 x i8] c"zlo zhi\00", align 1
@_ZZ18read_lammps_headerR4AtomE16section_keywords = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.228, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.229, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.230, i32 0, i32 0)], align 16
@.str.1.228 = private unnamed_addr constant [6 x i8] c"Atoms\00", align 1
@.str.2.229 = private unnamed_addr constant [11 x i8] c"Velocities\00", align 1
@.str.3.230 = private unnamed_addr constant [7 x i8] c"Masses\00", align 1
@.str.11.231 = private unnamed_addr constant [36 x i8] c"Unknown identifier in data file: %s\00", align 1
@.str.12.232 = private unnamed_addr constant [18 x i8] c"%i %i %lg %lg %lg\00", align 1
@.str.13.233 = private unnamed_addr constant [15 x i8] c"%i %lg %lg %lg\00", align 1
@.str.14.236 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15.237 = private unnamed_addr constant [20 x i8] c"Cannot open file %s\00", align 1
@str.20 = private unnamed_addr constant [34 x i8] c"Must read Atoms before Velocities\00"
@.str.17.238 = private unnamed_addr constant [7 x i8] c"%i %lg\00", align 1
@str.239 = private unnamed_addr constant [29 x i8] c"Created incorrect # of atoms\00"
@str.22 = private unnamed_addr constant [20 x i8] c"No memory for atoms\00"
@str.21 = private unnamed_addr constant [29 x i8] c"Created incorrect # of atoms\00"

@_ZN9IntegrateC1Ev = alias void (%class.Integrate*), void (%class.Integrate*)* @_ZN9IntegrateC2Ev
@_ZN9IntegrateD1Ev = alias void (%class.Integrate*), void (%class.Integrate*)* @_ZN9IntegrateD2Ev
@_ZN4AtomC1Ei = alias void (%class.Atom*, i32), void (%class.Atom*, i32)* @_ZN4AtomC2Ei
@_ZN4AtomD1Ev = alias void (%class.Atom*), void (%class.Atom*)* @_ZN4AtomD2Ev
@_ZN7ForceLJC1Ei = alias void (%class.ForceLJ*, i32), void (%class.ForceLJ*, i32)* @_ZN7ForceLJC2Ei
@_ZN7ForceLJD1Ev = alias void (%class.ForceLJ*), void (%class.ForceLJ*)* @_ZN7ForceLJD2Ev
@_ZN8ForceEAMC1Ei = alias void (%class.ForceEAM*, i32), void (%class.ForceEAM*, i32)* @_ZN8ForceEAMC2Ei
@_ZN8ForceEAMD1Ev = alias void (%class.ForceEAM*), void (%class.ForceEAM*)* @_ZN8ForceEAMD2Ev
@_ZN8NeighborC1Ei = alias void (%class.Neighbor*, i32), void (%class.Neighbor*, i32)* @_ZN8NeighborC2Ei
@_ZN8NeighborD1Ev = alias void (%class.Neighbor*), void (%class.Neighbor*)* @_ZN8NeighborD2Ev
@_ZN6ThermoC1Ev = alias void (%class.Thermo*), void (%class.Thermo*)* @_ZN6ThermoC2Ev
@_ZN6ThermoD1Ev = alias void (%class.Thermo*), void (%class.Thermo*)* @_ZN6ThermoD2Ev
@_ZN4CommC1Ev = alias void (%class.Comm*), void (%class.Comm*)* @_ZN4CommC2Ev
@_ZN4CommD1Ev = alias void (%class.Comm*), void (%class.Comm*)* @_ZN4CommD2Ev
@_ZN5TimerC1Ev = alias void (%class.Timer*), void (%class.Timer*)* @_ZN5TimerC2Ev
@_ZN5TimerD1Ev = alias void (%class.Timer*), void (%class.Timer*)* @_ZN5TimerD2Ev

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %in = alloca %struct.In, align 8
  %me = alloca i32, align 4
  %nprocs = alloca i32, align 4
  %atom = alloca %class.Atom, align 8
  %neighbor = alloca %class.Neighbor, align 8
  %integrate = alloca %class.Integrate, align 8
  %thermo = alloca %class.Thermo, align 8
  %comm = alloca %class.Comm, align 8
  %timer = alloca %class.Timer, align 8
  %threads = alloca %class.ThreadData, align 4
  %force = alloca %class.Force*, align 8
  %natoms = alloca i32, align 4
  store i32 %argc, i32* %1, align 4, !tbaa !1
  store i8** %argv, i8*** %2, align 8, !tbaa !5
  %3 = bitcast %struct.In* %in to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #8
  %4 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 9
  store i8* null, i8** %4, align 8, !tbaa !7
  %5 = bitcast i32* %me to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  store i32 0, i32* %me, align 4, !tbaa !1
  %6 = bitcast i32* %nprocs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #8
  store i32 1, i32* %nprocs, align 4, !tbaa !1
  %7 = icmp sgt i32 %argc, 0
  br i1 %7, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %0
  br label %12

._crit_edge111.loopexit:                          ; preds = %26
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %0
  %input_file.0.lcssa = phi i8* [ null, %0 ], [ %input_file.1, %._crit_edge111.loopexit ]
  %8 = call i32 @MPI_Init(i32* nonnull %1, i8*** nonnull %2)
  %9 = call i32 @MPI_Comm_rank(i32 1140850688, i32* nonnull %me)
  %10 = call i32 @MPI_Comm_size(i32 1140850688, i32* nonnull %nprocs)
  %11 = icmp eq i8* %input_file.0.lcssa, null
  br i1 %11, label %29, label %31

; <label>:12                                      ; preds = %26, %.lr.ph110
  %i.0108 = phi i32 [ 0, %.lr.ph110 ], [ %27, %26 ]
  %input_file.0107 = phi i8* [ null, %.lr.ph110 ], [ %input_file.1, %26 ]
  %13 = sext i32 %i.0108 to i64
  %14 = getelementptr inbounds i8*, i8** %argv, i64 %13
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %16 = tail call i32 @strcmp(i8* %15, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %12
  %19 = tail call i32 @strcmp(i8* %15, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %18, %12
  %22 = add nsw i32 %i.0108, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %argv, i64 %23
  %25 = load i8*, i8** %24, align 8, !tbaa !5
  br label %26

; <label>:26                                      ; preds = %21, %18
  %input_file.1 = phi i8* [ %25, %21 ], [ %input_file.0107, %18 ]
  %i.1 = phi i32 [ %22, %21 ], [ %i.0108, %18 ]
  %27 = add nsw i32 %i.1, 1
  %28 = icmp slt i32 %27, %argc
  br i1 %28, label %12, label %._crit_edge111.loopexit

; <label>:29                                      ; preds = %._crit_edge111
  %30 = call i32 @_Z5inputR2InPKc(%struct.In* nonnull dereferenceable(112) %in, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %33

; <label>:31                                      ; preds = %._crit_edge111
  %32 = call i32 @_Z5inputR2InPKc(%struct.In* nonnull dereferenceable(112) %in, i8* nonnull %input_file.0.lcssa)
  br label %33

; <label>:33                                      ; preds = %31, %29
  %error.0 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %34 = icmp eq i32 %error.0, 0
  br i1 %34, label %37, label %35

; <label>:35                                      ; preds = %33
  %36 = call i32 @MPI_Finalize()
  call void @exit(i32 0) #19
  unreachable

; <label>:37                                      ; preds = %33
  call void @srand(i32 5413) #8
  %38 = load i32, i32* %1, align 4, !tbaa !1
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %37
  %40 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %41 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  br label %44

._crit_edge.loopexit:                             ; preds = %250
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %37
  %num_threads.0.lcssa = phi i32 [ 1, %37 ], [ %num_threads.1, %._crit_edge.loopexit ]
  %num_steps.0.lcssa = phi i32 [ -1, %37 ], [ %num_steps.1, %._crit_edge.loopexit ]
  %ntypes.0.lcssa = phi i32 [ 4, %37 ], [ %ntypes.1, %._crit_edge.loopexit ]
  %sort.0.lcssa = phi i32 [ -1, %37 ], [ %sort.1, %._crit_edge.loopexit ]
  %ghost_newton.0.lcssa = phi i32 [ 1, %37 ], [ %ghost_newton.1, %._crit_edge.loopexit ]
  %neighbor_size.0.lcssa = phi i32 [ -1, %37 ], [ %neighbor_size.1, %._crit_edge.loopexit ]
  %system_size.0.lcssa = phi i32 [ -1, %37 ], [ %system_size.1, %._crit_edge.loopexit ]
  %halfneigh.0.lcssa = phi i32 [ 1, %37 ], [ %halfneigh.1, %._crit_edge.loopexit ]
  %yaml_output.0.lcssa = phi i32 [ 0, %37 ], [ %yaml_output.1, %._crit_edge.loopexit ]
  %screen_yaml.0.lcssa = phi i32 [ 0, %37 ], [ %screen_yaml.1, %._crit_edge.loopexit ]
  %use_sse.0.lcssa = phi i32 [ 0, %37 ], [ %use_sse.1, %._crit_edge.loopexit ]
  %nx.0.lcssa = phi i32 [ -1, %37 ], [ %nx.1, %._crit_edge.loopexit ]
  %check_safeexchange.0.lcssa = phi i32 [ 0, %37 ], [ %check_safeexchange.1, %._crit_edge.loopexit ]
  %nz.0.lcssa = phi i32 [ -1, %37 ], [ %nz.1, %._crit_edge.loopexit ]
  %ny.0.lcssa = phi i32 [ -1, %37 ], [ %ny.1, %._crit_edge.loopexit ]
  %42 = bitcast %class.Atom* %atom to i8*
  call void @llvm.lifetime.start(i64 224, i8* %42) #8
  call void @_ZN4AtomC1Ei(%class.Atom* nonnull %atom, i32 %ntypes.0.lcssa)
  %43 = bitcast %class.Neighbor* %neighbor to i8*
  call void @llvm.lifetime.start(i64 240, i8* %43) #8
  invoke void @_ZN8NeighborC1Ei(%class.Neighbor* nonnull %neighbor, i32 %ntypes.0.lcssa)
          to label %254 unwind label %281

; <label>:44                                      ; preds = %250, %.lr.ph92
  %45 = phi i32 [ %38, %.lr.ph92 ], [ %251, %250 ]
  %num_threads.091 = phi i32 [ 1, %.lr.ph92 ], [ %num_threads.1, %250 ]
  %num_steps.090 = phi i32 [ -1, %.lr.ph92 ], [ %num_steps.1, %250 ]
  %i1.089 = phi i32 [ 0, %.lr.ph92 ], [ %252, %250 ]
  %ntypes.088 = phi i32 [ 4, %.lr.ph92 ], [ %ntypes.1, %250 ]
  %sort.087 = phi i32 [ -1, %.lr.ph92 ], [ %sort.1, %250 ]
  %ghost_newton.086 = phi i32 [ 1, %.lr.ph92 ], [ %ghost_newton.1, %250 ]
  %neighbor_size.085 = phi i32 [ -1, %.lr.ph92 ], [ %neighbor_size.1, %250 ]
  %system_size.084 = phi i32 [ -1, %.lr.ph92 ], [ %system_size.1, %250 ]
  %halfneigh.083 = phi i32 [ 1, %.lr.ph92 ], [ %halfneigh.1, %250 ]
  %yaml_output.082 = phi i32 [ 0, %.lr.ph92 ], [ %yaml_output.1, %250 ]
  %screen_yaml.081 = phi i32 [ 0, %.lr.ph92 ], [ %screen_yaml.1, %250 ]
  %use_sse.080 = phi i32 [ 0, %.lr.ph92 ], [ %use_sse.1, %250 ]
  %nx.079 = phi i32 [ -1, %.lr.ph92 ], [ %nx.1, %250 ]
  %check_safeexchange.078 = phi i32 [ 0, %.lr.ph92 ], [ %check_safeexchange.1, %250 ]
  %nz.077 = phi i32 [ -1, %.lr.ph92 ], [ %nz.1, %250 ]
  %ny.076 = phi i32 [ -1, %.lr.ph92 ], [ %ny.1, %250 ]
  %46 = sext i32 %i1.089 to i64
  %47 = load i8**, i8*** %2, align 8, !tbaa !5
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  %49 = load i8*, i8** %48, align 8, !tbaa !5
  %50 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

; <label>:52                                      ; preds = %44
  %53 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

; <label>:55                                      ; preds = %52, %44
  %56 = add nsw i32 %i1.089, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %47, i64 %57
  %59 = load i8*, i8** %58, align 8, !tbaa !5
  %60 = call i32 @atoi(i8* %59) #18
  br label %250

; <label>:61                                      ; preds = %52
  %62 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %61
  %65 = add nsw i32 %i1.089, 1
  br label %250

; <label>:66                                      ; preds = %61
  %67 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #18
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

; <label>:69                                      ; preds = %66
  %70 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

; <label>:72                                      ; preds = %69, %66
  %73 = add nsw i32 %i1.089, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %47, i64 %74
  %76 = load i8*, i8** %75, align 8, !tbaa !5
  %77 = call i32 @atoi(i8* %76) #18
  br label %250

; <label>:78                                      ; preds = %69
  %79 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

; <label>:81                                      ; preds = %78
  %82 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #18
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

; <label>:84                                      ; preds = %81, %78
  %85 = add nsw i32 %i1.089, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %47, i64 %86
  %88 = load i8*, i8** %87, align 8, !tbaa !5
  %89 = call i32 @atoi(i8* %88) #18
  br label %250

; <label>:90                                      ; preds = %81
  %91 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

; <label>:93                                      ; preds = %90
  %94 = add nsw i32 %i1.089, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %47, i64 %95
  %97 = load i8*, i8** %96, align 8, !tbaa !5
  %98 = call i32 @atoi(i8* %97) #18
  br label %250

; <label>:99                                      ; preds = %90
  %100 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #18
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

; <label>:102                                     ; preds = %99
  %103 = add nsw i32 %i1.089, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %47, i64 %104
  %106 = load i8*, i8** %105, align 8, !tbaa !5
  %107 = call i32 @atoi(i8* %106) #18
  br label %250

; <label>:108                                     ; preds = %99
  %109 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #18
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

; <label>:111                                     ; preds = %108
  %112 = add nsw i32 %i1.089, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %47, i64 %113
  %115 = load i8*, i8** %114, align 8, !tbaa !5
  %116 = call i32 @atoi(i8* %115) #18
  br label %250

; <label>:117                                     ; preds = %108
  %118 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

; <label>:120                                     ; preds = %117
  %121 = add nsw i32 %i1.089, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %47, i64 %122
  %124 = load i8*, i8** %123, align 8, !tbaa !5
  %125 = call i32 @atoi(i8* %124) #18
  br label %250

; <label>:126                                     ; preds = %117
  %127 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

; <label>:129                                     ; preds = %126
  %130 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #18
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

; <label>:132                                     ; preds = %129, %126
  %133 = add nsw i32 %i1.089, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %47, i64 %134
  %136 = load i8*, i8** %135, align 8, !tbaa !5
  %137 = call i32 @atoi(i8* %136) #18
  br label %250

; <label>:138                                     ; preds = %129
  %139 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #18
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

; <label>:141                                     ; preds = %138
  %142 = add nsw i32 %i1.089, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %47, i64 %143
  %145 = load i8*, i8** %144, align 8, !tbaa !5
  %146 = call i32 @atoi(i8* %145) #18
  br label %250

; <label>:147                                     ; preds = %138
  %148 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %147
  %151 = add nsw i32 %i1.089, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %47, i64 %152
  %154 = load i8*, i8** %153, align 8, !tbaa !5
  %155 = call i32 @atoi(i8* %154) #18
  br label %250

; <label>:156                                     ; preds = %147
  %157 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %250, label %159

; <label>:159                                     ; preds = %156
  %160 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #18
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

; <label>:162                                     ; preds = %159
  %163 = add nsw i32 %i1.089, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %47, i64 %164
  %166 = load i8*, i8** %165, align 8, !tbaa !5
  %167 = call i32 @atoi(i8* %166) #18
  br label %250

; <label>:168                                     ; preds = %159
  %169 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #18
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

; <label>:171                                     ; preds = %168
  %172 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #18
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

; <label>:174                                     ; preds = %171, %168
  %175 = add nsw i32 %i1.089, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %47, i64 %176
  %178 = load i8*, i8** %177, align 8, !tbaa !5
  %179 = call i32 @atoi(i8* %178) #18
  br label %250

; <label>:180                                     ; preds = %171
  %181 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0)) #18
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %250, label %183

; <label>:183                                     ; preds = %180
  %184 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #18
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

; <label>:186                                     ; preds = %183
  %187 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #18
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

; <label>:189                                     ; preds = %186, %183
  %190 = load i8*, i8** %4, align 8, !tbaa !7
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %194

; <label>:192                                     ; preds = %189
  %193 = call noalias i8* @_Znam(i64 1000) #20
  store i8* %193, i8** %4, align 8, !tbaa !7
  br label %194

; <label>:194                                     ; preds = %192, %189
  %195 = phi i8* [ %193, %192 ], [ %190, %189 ]
  %196 = add nsw i32 %i1.089, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %47, i64 %197
  %199 = load i8*, i8** %198, align 8, !tbaa !5
  %200 = call i8* @strcpy(i8* %195, i8* %199) #8
  %.pre = load i32, i32* %1, align 4, !tbaa !1
  br label %250

; <label>:201                                     ; preds = %186
  %202 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #18
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

; <label>:204                                     ; preds = %201
  %205 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)) #18
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

; <label>:207                                     ; preds = %204, %201
  %208 = add nsw i32 %i1.089, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %47, i64 %209
  %211 = load i8*, i8** %210, align 8, !tbaa !5
  %212 = call i32 @strcmp(i8* %211, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #18
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %40, align 8, !tbaa !11
  br label %250

; <label>:215                                     ; preds = %204
  %216 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #18
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

; <label>:218                                     ; preds = %215
  %219 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #18
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

; <label>:221                                     ; preds = %218, %215
  %222 = add nsw i32 %i1.089, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %47, i64 %223
  %225 = load i8*, i8** %224, align 8, !tbaa !5
  %226 = call i32 @strcmp(i8* %225, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #18
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %41, align 4, !tbaa !12
  br label %250

; <label>:229                                     ; preds = %218
  %230 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #18
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

; <label>:232                                     ; preds = %229
  %233 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0)) #18
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %241

; <label>:235                                     ; preds = %232, %229
  %236 = add nsw i32 %i1.089, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %47, i64 %237
  %239 = load i8*, i8** %238, align 8, !tbaa !5
  %240 = call i32 @atoi(i8* %239) #18
  br label %250

; <label>:241                                     ; preds = %232
  %242 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #18
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

; <label>:244                                     ; preds = %241
  %245 = call i32 @strcmp(i8* %49, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #18
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

; <label>:247                                     ; preds = %244, %241
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @str, i64 0, i64 0))
  %puts9 = call i32 @puts(i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @str.111, i64 0, i64 0))
  %puts10 = call i32 @puts(i8* nonnull getelementptr inbounds ([111 x i8], [111 x i8]* @str.112, i64 0, i64 0))
  %puts11 = call i32 @puts(i8* nonnull getelementptr inbounds ([335 x i8], [335 x i8]* @str.113, i64 0, i64 0))
  %puts12 = call i32 @puts(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @str.114, i64 0, i64 0))
  %puts13 = call i32 @puts(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @str.115, i64 0, i64 0))
  %puts14 = call i32 @puts(i8* nonnull getelementptr inbounds ([88 x i8], [88 x i8]* @str.116, i64 0, i64 0))
  %puts15 = call i32 @puts(i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @str.117, i64 0, i64 0))
  %puts16 = call i32 @puts(i8* nonnull getelementptr inbounds ([268 x i8], [268 x i8]* @str.118, i64 0, i64 0))
  %puts17 = call i32 @puts(i8* nonnull getelementptr inbounds ([88 x i8], [88 x i8]* @str.119, i64 0, i64 0))
  %puts18 = call i32 @puts(i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @str.120, i64 0, i64 0))
  %248 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([175 x i8], [175 x i8]* @.str.46, i64 0, i64 0))
  %puts19 = call i32 @puts(i8* nonnull getelementptr inbounds ([184 x i8], [184 x i8]* @str.121, i64 0, i64 0))
  %puts20 = call i32 @puts(i8* nonnull getelementptr inbounds ([84 x i8], [84 x i8]* @str.122, i64 0, i64 0))
  %puts21 = call i32 @puts(i8* nonnull getelementptr inbounds ([153 x i8], [153 x i8]* @str.123, i64 0, i64 0))
  %puts22 = call i32 @puts(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @str.124, i64 0, i64 0))
  %puts23 = call i32 @puts(i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @str.125, i64 0, i64 0))
  %puts24 = call i32 @puts(i8* nonnull getelementptr inbounds ([84 x i8], [84 x i8]* @str.126, i64 0, i64 0))
  %puts25 = call i32 @puts(i8* nonnull getelementptr inbounds ([70 x i8], [70 x i8]* @str.127, i64 0, i64 0))
  %puts26 = call i32 @puts(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @str.128, i64 0, i64 0))
  %puts27 = call i32 @puts(i8* nonnull getelementptr inbounds ([84 x i8], [84 x i8]* @str.129, i64 0, i64 0))
  %puts28 = call i32 @puts(i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @str.130, i64 0, i64 0))
  %puts29 = call i32 @puts(i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @str.131, i64 0, i64 0))
  %puts30 = call i32 @puts(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @str.132, i64 0, i64 0))
  %puts31 = call i32 @puts(i8* nonnull getelementptr inbounds ([72 x i8], [72 x i8]* @str.133, i64 0, i64 0))
  %puts32 = call i32 @puts(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @str.134, i64 0, i64 0))
  %puts33 = call i32 @puts(i8* nonnull getelementptr inbounds ([86 x i8], [86 x i8]* @str.135, i64 0, i64 0))
  %puts34 = call i32 @puts(i8* nonnull getelementptr inbounds ([160 x i8], [160 x i8]* @str.136, i64 0, i64 0))
  %249 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([116 x i8], [116 x i8]* @.str.63, i64 0, i64 0))
  %puts35 = call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @str.137, i64 0, i64 0))
  %puts36 = call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @str.138, i64 0, i64 0))
  %puts37 = call i32 @puts(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @str.139, i64 0, i64 0))
  %puts38 = call i32 @puts(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @str.140, i64 0, i64 0))
  call void @exit(i32 0) #19
  unreachable

; <label>:250                                     ; preds = %244, %235, %221, %207, %194, %180, %174, %162, %156, %150, %141, %132, %120, %111, %102, %93, %84, %72, %64, %55
  %251 = phi i32 [ %45, %55 ], [ %45, %64 ], [ %45, %72 ], [ %45, %84 ], [ %45, %93 ], [ %45, %102 ], [ %45, %111 ], [ %45, %120 ], [ %45, %132 ], [ %45, %141 ], [ %45, %150 ], [ %45, %162 ], [ %45, %174 ], [ %.pre, %194 ], [ %45, %207 ], [ %45, %221 ], [ %45, %235 ], [ %45, %244 ], [ %45, %156 ], [ %45, %180 ]
  %ny.1 = phi i32 [ %ny.076, %55 ], [ %ny.076, %64 ], [ %ny.076, %72 ], [ %ny.076, %84 ], [ %ny.076, %93 ], [ %107, %102 ], [ %ny.076, %111 ], [ %ny.076, %120 ], [ %ny.076, %132 ], [ %ny.076, %141 ], [ %ny.076, %150 ], [ %ny.076, %162 ], [ %ny.076, %174 ], [ %ny.076, %194 ], [ %ny.076, %207 ], [ %ny.076, %221 ], [ %ny.076, %235 ], [ %ny.076, %244 ], [ %ny.076, %156 ], [ %ny.076, %180 ]
  %nz.1 = phi i32 [ %nz.077, %55 ], [ %nz.077, %64 ], [ %nz.077, %72 ], [ %nz.077, %84 ], [ %nz.077, %93 ], [ %nz.077, %102 ], [ %116, %111 ], [ %nz.077, %120 ], [ %nz.077, %132 ], [ %nz.077, %141 ], [ %nz.077, %150 ], [ %nz.077, %162 ], [ %nz.077, %174 ], [ %nz.077, %194 ], [ %nz.077, %207 ], [ %nz.077, %221 ], [ %nz.077, %235 ], [ %nz.077, %244 ], [ %nz.077, %156 ], [ %nz.077, %180 ]
  %check_safeexchange.1 = phi i32 [ %check_safeexchange.078, %55 ], [ %check_safeexchange.078, %64 ], [ %check_safeexchange.078, %72 ], [ %check_safeexchange.078, %84 ], [ %check_safeexchange.078, %93 ], [ %check_safeexchange.078, %102 ], [ %check_safeexchange.078, %111 ], [ %check_safeexchange.078, %120 ], [ %check_safeexchange.078, %132 ], [ %check_safeexchange.078, %141 ], [ %check_safeexchange.078, %150 ], [ %check_safeexchange.078, %162 ], [ %check_safeexchange.078, %174 ], [ %check_safeexchange.078, %194 ], [ %check_safeexchange.078, %207 ], [ %check_safeexchange.078, %221 ], [ %check_safeexchange.078, %235 ], [ %check_safeexchange.078, %244 ], [ 1, %156 ], [ %check_safeexchange.078, %180 ]
  %nx.1 = phi i32 [ %nx.079, %55 ], [ %nx.079, %64 ], [ %nx.079, %72 ], [ %nx.079, %84 ], [ %98, %93 ], [ %nx.079, %102 ], [ %nx.079, %111 ], [ %nx.079, %120 ], [ %nx.079, %132 ], [ %nx.079, %141 ], [ %nx.079, %150 ], [ %nx.079, %162 ], [ %nx.079, %174 ], [ %nx.079, %194 ], [ %nx.079, %207 ], [ %nx.079, %221 ], [ %nx.079, %235 ], [ %nx.079, %244 ], [ %nx.079, %156 ], [ %nx.079, %180 ]
  %use_sse.1 = phi i32 [ %use_sse.080, %55 ], [ %use_sse.080, %64 ], [ %use_sse.080, %72 ], [ %use_sse.080, %84 ], [ %use_sse.080, %93 ], [ %use_sse.080, %102 ], [ %use_sse.080, %111 ], [ %use_sse.080, %120 ], [ %use_sse.080, %132 ], [ %use_sse.080, %141 ], [ %155, %150 ], [ %use_sse.080, %162 ], [ %use_sse.080, %174 ], [ %use_sse.080, %194 ], [ %use_sse.080, %207 ], [ %use_sse.080, %221 ], [ %use_sse.080, %235 ], [ %use_sse.080, %244 ], [ %use_sse.080, %156 ], [ %use_sse.080, %180 ]
  %screen_yaml.1 = phi i32 [ %screen_yaml.081, %55 ], [ %screen_yaml.081, %64 ], [ %screen_yaml.081, %72 ], [ %screen_yaml.081, %84 ], [ %screen_yaml.081, %93 ], [ %screen_yaml.081, %102 ], [ %screen_yaml.081, %111 ], [ %screen_yaml.081, %120 ], [ %screen_yaml.081, %132 ], [ %screen_yaml.081, %141 ], [ %screen_yaml.081, %150 ], [ %screen_yaml.081, %162 ], [ %screen_yaml.081, %174 ], [ %screen_yaml.081, %194 ], [ %screen_yaml.081, %207 ], [ %screen_yaml.081, %221 ], [ %screen_yaml.081, %235 ], [ %screen_yaml.081, %244 ], [ %screen_yaml.081, %156 ], [ 1, %180 ]
  %yaml_output.1 = phi i32 [ %yaml_output.082, %55 ], [ %yaml_output.082, %64 ], [ %yaml_output.082, %72 ], [ %yaml_output.082, %84 ], [ %yaml_output.082, %93 ], [ %yaml_output.082, %102 ], [ %yaml_output.082, %111 ], [ %yaml_output.082, %120 ], [ %yaml_output.082, %132 ], [ %yaml_output.082, %141 ], [ %yaml_output.082, %150 ], [ %yaml_output.082, %162 ], [ %179, %174 ], [ %yaml_output.082, %194 ], [ %yaml_output.082, %207 ], [ %yaml_output.082, %221 ], [ %yaml_output.082, %235 ], [ %yaml_output.082, %244 ], [ %yaml_output.082, %156 ], [ %yaml_output.082, %180 ]
  %halfneigh.1 = phi i32 [ %halfneigh.083, %55 ], [ %halfneigh.083, %64 ], [ %halfneigh.083, %72 ], [ %halfneigh.083, %84 ], [ %halfneigh.083, %93 ], [ %halfneigh.083, %102 ], [ %halfneigh.083, %111 ], [ %halfneigh.083, %120 ], [ %halfneigh.083, %132 ], [ %146, %141 ], [ %halfneigh.083, %150 ], [ %halfneigh.083, %162 ], [ %halfneigh.083, %174 ], [ %halfneigh.083, %194 ], [ %halfneigh.083, %207 ], [ %halfneigh.083, %221 ], [ %halfneigh.083, %235 ], [ %halfneigh.083, %244 ], [ %halfneigh.083, %156 ], [ %halfneigh.083, %180 ]
  %system_size.1 = phi i32 [ %system_size.084, %55 ], [ %system_size.084, %64 ], [ %system_size.084, %72 ], [ %89, %84 ], [ %system_size.084, %93 ], [ %system_size.084, %102 ], [ %system_size.084, %111 ], [ %system_size.084, %120 ], [ %system_size.084, %132 ], [ %system_size.084, %141 ], [ %system_size.084, %150 ], [ %system_size.084, %162 ], [ %system_size.084, %174 ], [ %system_size.084, %194 ], [ %system_size.084, %207 ], [ %system_size.084, %221 ], [ %system_size.084, %235 ], [ %system_size.084, %244 ], [ %system_size.084, %156 ], [ %system_size.084, %180 ]
  %neighbor_size.1 = phi i32 [ %neighbor_size.085, %55 ], [ %neighbor_size.085, %64 ], [ %neighbor_size.085, %72 ], [ %neighbor_size.085, %84 ], [ %neighbor_size.085, %93 ], [ %neighbor_size.085, %102 ], [ %neighbor_size.085, %111 ], [ %neighbor_size.085, %120 ], [ %137, %132 ], [ %neighbor_size.085, %141 ], [ %neighbor_size.085, %150 ], [ %neighbor_size.085, %162 ], [ %neighbor_size.085, %174 ], [ %neighbor_size.085, %194 ], [ %neighbor_size.085, %207 ], [ %neighbor_size.085, %221 ], [ %neighbor_size.085, %235 ], [ %neighbor_size.085, %244 ], [ %neighbor_size.085, %156 ], [ %neighbor_size.085, %180 ]
  %ghost_newton.1 = phi i32 [ %ghost_newton.086, %55 ], [ %ghost_newton.086, %64 ], [ %ghost_newton.086, %72 ], [ %ghost_newton.086, %84 ], [ %ghost_newton.086, %93 ], [ %ghost_newton.086, %102 ], [ %ghost_newton.086, %111 ], [ %ghost_newton.086, %120 ], [ %ghost_newton.086, %132 ], [ %ghost_newton.086, %141 ], [ %ghost_newton.086, %150 ], [ %ghost_newton.086, %162 ], [ %ghost_newton.086, %174 ], [ %ghost_newton.086, %194 ], [ %ghost_newton.086, %207 ], [ %ghost_newton.086, %221 ], [ %240, %235 ], [ %ghost_newton.086, %244 ], [ %ghost_newton.086, %156 ], [ %ghost_newton.086, %180 ]
  %sort.1 = phi i32 [ %sort.087, %55 ], [ %sort.087, %64 ], [ %sort.087, %72 ], [ %sort.087, %84 ], [ %sort.087, %93 ], [ %sort.087, %102 ], [ %sort.087, %111 ], [ %sort.087, %120 ], [ %sort.087, %132 ], [ %sort.087, %141 ], [ %sort.087, %150 ], [ %167, %162 ], [ %sort.087, %174 ], [ %sort.087, %194 ], [ %sort.087, %207 ], [ %sort.087, %221 ], [ %sort.087, %235 ], [ %sort.087, %244 ], [ %sort.087, %156 ], [ %sort.087, %180 ]
  %ntypes.1 = phi i32 [ %ntypes.088, %55 ], [ %ntypes.088, %64 ], [ %ntypes.088, %72 ], [ %ntypes.088, %84 ], [ %ntypes.088, %93 ], [ %ntypes.088, %102 ], [ %ntypes.088, %111 ], [ %125, %120 ], [ %ntypes.088, %132 ], [ %ntypes.088, %141 ], [ %ntypes.088, %150 ], [ %ntypes.088, %162 ], [ %ntypes.088, %174 ], [ %ntypes.088, %194 ], [ %ntypes.088, %207 ], [ %ntypes.088, %221 ], [ %ntypes.088, %235 ], [ %ntypes.088, %244 ], [ %ntypes.088, %156 ], [ %ntypes.088, %180 ]
  %i1.1 = phi i32 [ %56, %55 ], [ %65, %64 ], [ %73, %72 ], [ %85, %84 ], [ %94, %93 ], [ %103, %102 ], [ %112, %111 ], [ %121, %120 ], [ %133, %132 ], [ %142, %141 ], [ %151, %150 ], [ %163, %162 ], [ %175, %174 ], [ %196, %194 ], [ %208, %207 ], [ %222, %221 ], [ %236, %235 ], [ %i1.089, %244 ], [ %i1.089, %156 ], [ %i1.089, %180 ]
  %num_steps.1 = phi i32 [ %num_steps.090, %55 ], [ %num_steps.090, %64 ], [ %77, %72 ], [ %num_steps.090, %84 ], [ %num_steps.090, %93 ], [ %num_steps.090, %102 ], [ %num_steps.090, %111 ], [ %num_steps.090, %120 ], [ %num_steps.090, %132 ], [ %num_steps.090, %141 ], [ %num_steps.090, %150 ], [ %num_steps.090, %162 ], [ %num_steps.090, %174 ], [ %num_steps.090, %194 ], [ %num_steps.090, %207 ], [ %num_steps.090, %221 ], [ %num_steps.090, %235 ], [ %num_steps.090, %244 ], [ %num_steps.090, %156 ], [ %num_steps.090, %180 ]
  %num_threads.1 = phi i32 [ %60, %55 ], [ %num_threads.091, %64 ], [ %num_threads.091, %72 ], [ %num_threads.091, %84 ], [ %num_threads.091, %93 ], [ %num_threads.091, %102 ], [ %num_threads.091, %111 ], [ %num_threads.091, %120 ], [ %num_threads.091, %132 ], [ %num_threads.091, %141 ], [ %num_threads.091, %150 ], [ %num_threads.091, %162 ], [ %num_threads.091, %174 ], [ %num_threads.091, %194 ], [ %num_threads.091, %207 ], [ %num_threads.091, %221 ], [ %num_threads.091, %235 ], [ %num_threads.091, %244 ], [ %num_threads.091, %156 ], [ %num_threads.091, %180 ]
  %252 = add nsw i32 %i1.1, 1
  %253 = icmp slt i32 %252, %251
  br i1 %253, label %44, label %._crit_edge.loopexit

; <label>:254                                     ; preds = %._crit_edge
  %255 = bitcast %class.Integrate* %integrate to i8*
  call void @llvm.lifetime.start(i64 88, i8* %255) #8
  invoke void @_ZN9IntegrateC1Ev(%class.Integrate* nonnull %integrate)
          to label %256 unwind label %285

; <label>:256                                     ; preds = %254
  %257 = bitcast %class.Thermo* %thermo to i8*
  call void @llvm.lifetime.start(i64 128, i8* %257) #8
  invoke void @_ZN6ThermoC1Ev(%class.Thermo* nonnull %thermo)
          to label %258 unwind label %289

; <label>:258                                     ; preds = %256
  %259 = bitcast %class.Comm* %comm to i8*
  call void @llvm.lifetime.start(i64 336, i8* %259) #8
  invoke void @_ZN4CommC1Ev(%class.Comm* nonnull %comm)
          to label %260 unwind label %293

; <label>:260                                     ; preds = %258
  %261 = bitcast %class.Timer* %timer to i8*
  call void @llvm.lifetime.start(i64 24, i8* %261) #8
  invoke void @_ZN5TimerC1Ev(%class.Timer* nonnull %timer)
          to label %262 unwind label %297

; <label>:262                                     ; preds = %260
  %263 = bitcast %class.ThreadData* %threads to i8*
  call void @llvm.lifetime.start(i64 20, i8* %263) #8
  call void @_ZN10ThreadDataC2Ev(%class.ThreadData* nonnull %threads)
  %264 = bitcast %class.Force** %force to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #8
  %265 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  %266 = load i32, i32* %265, align 4, !tbaa !12
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %309

; <label>:268                                     ; preds = %262
  %269 = invoke noalias i8* @_Znwm(i64 336) #20
          to label %270 unwind label %301

; <label>:270                                     ; preds = %268
  %271 = bitcast i8* %269 to %class.ForceEAM*
  invoke void @_ZN8ForceEAMC1Ei(%class.ForceEAM* %271, i32 %ntypes.0.lcssa)
          to label %272 unwind label %305

; <label>:272                                     ; preds = %270
  %273 = bitcast %class.Force** %force to i8**
  store i8* %269, i8** %273, align 8, !tbaa !5
  %274 = icmp eq i32 %ghost_newton.0.lcssa, 1
  %275 = ptrtoint i8* %269 to i64
  %276 = inttoptr i64 %275 to %class.Force*
  br i1 %274, label %277, label %thread-pre-split

; <label>:277                                     ; preds = %272
  %278 = load i32, i32* %me, align 4, !tbaa !1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %thread-pre-split

; <label>:280                                     ; preds = %277
  %puts59 = call i32 @puts(i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @str.149, i64 0, i64 0))
  br label %thread-pre-split

; <label>:281                                     ; preds = %816, %._crit_edge
  %282 = landingpad { i8*, i32 }
          cleanup
  %283 = extractvalue { i8*, i32 } %282, 0
  %284 = extractvalue { i8*, i32 } %282, 1
  br label %820

; <label>:285                                     ; preds = %814, %254
  %286 = landingpad { i8*, i32 }
          cleanup
  %287 = extractvalue { i8*, i32 } %286, 0
  %288 = extractvalue { i8*, i32 } %286, 1
  br label %819

; <label>:289                                     ; preds = %812, %256
  %290 = landingpad { i8*, i32 }
          cleanup
  %291 = extractvalue { i8*, i32 } %290, 0
  %292 = extractvalue { i8*, i32 } %290, 1
  br label %817

; <label>:293                                     ; preds = %811, %258
  %294 = landingpad { i8*, i32 }
          cleanup
  %295 = extractvalue { i8*, i32 } %294, 0
  %296 = extractvalue { i8*, i32 } %294, 1
  br label %815

; <label>:297                                     ; preds = %809, %260
  %298 = landingpad { i8*, i32 }
          cleanup
  %299 = extractvalue { i8*, i32 } %298, 0
  %300 = extractvalue { i8*, i32 } %298, 1
  br label %813

; <label>:301                                     ; preds = %807, %805, %800, %795, %753, %752, %738, %733, %732, %730, %.thread50, %723, %715, %714, %.thread48, %590, %586, %578, %562, %561, %559, %556, %544, %515, %511, %388, %312, %268
  %302 = landingpad { i8*, i32 }
          cleanup
  %303 = extractvalue { i8*, i32 } %302, 0
  %304 = extractvalue { i8*, i32 } %302, 1
  br label %810

; <label>:305                                     ; preds = %270
  %306 = landingpad { i8*, i32 }
          cleanup
  %307 = extractvalue { i8*, i32 } %306, 0
  %308 = extractvalue { i8*, i32 } %306, 1
  call void @_ZdlPv(i8* nonnull %269) #21
  br label %810

thread-pre-split:                                 ; preds = %280, %277, %272
  %ghost_newton.2.ph = phi i32 [ 0, %277 ], [ 0, %280 ], [ %ghost_newton.0.lcssa, %272 ]
  %.pr = load i32, i32* %265, align 4, !tbaa !12
  br label %309

; <label>:309                                     ; preds = %thread-pre-split, %262
  %310 = phi i32 [ %.pr, %thread-pre-split ], [ %266, %262 ]
  %ghost_newton.2 = phi i32 [ %ghost_newton.2.ph, %thread-pre-split ], [ %ghost_newton.0.lcssa, %262 ]
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %._crit_edge1

._crit_edge1:                                     ; preds = %309
  %.pre2 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  br label %324

; <label>:312                                     ; preds = %309
  %313 = invoke noalias i8* @_Znwm(i64 128) #20
          to label %314 unwind label %301

; <label>:314                                     ; preds = %312
  %315 = bitcast i8* %313 to %class.ForceLJ*
  invoke void @_ZN7ForceLJC1Ei(%class.ForceLJ* %315, i32 %ntypes.0.lcssa)
          to label %316 unwind label %320

; <label>:316                                     ; preds = %314
  %317 = bitcast %class.Force** %force to i8**
  store i8* %313, i8** %317, align 8, !tbaa !5
  %318 = ptrtoint i8* %313 to i64
  %319 = inttoptr i64 %318 to %class.Force*
  br label %324

; <label>:320                                     ; preds = %314
  %321 = landingpad { i8*, i32 }
          cleanup
  %322 = extractvalue { i8*, i32 } %321, 0
  %323 = extractvalue { i8*, i32 } %321, 1
  call void @_ZdlPv(i8* nonnull %313) #21
  br label %810

; <label>:324                                     ; preds = %._crit_edge1, %316
  %325 = phi %class.Force* [ %.pre2, %._crit_edge1 ], [ %319, %316 ]
  %326 = load i32, i32* %me, align 4, !tbaa !1
  %327 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %threads, i64 0, i32 0
  store i32 %326, i32* %327, align 4, !tbaa !13
  %328 = load i32, i32* %nprocs, align 4, !tbaa !1
  %329 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %threads, i64 0, i32 1
  store i32 %328, i32* %329, align 4, !tbaa !15
  %330 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %threads, i64 0, i32 2
  store i32 0, i32* %330, align 4, !tbaa !16
  %331 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %threads, i64 0, i32 3
  store i32 %num_threads.0.lcssa, i32* %331, align 4, !tbaa !17
  %332 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 11
  store %class.ThreadData* %threads, %class.ThreadData** %332, align 8, !tbaa !18
  %333 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 29
  store %class.ThreadData* %threads, %class.ThreadData** %333, align 8, !tbaa !21
  %334 = getelementptr inbounds %class.Force, %class.Force* %325, i64 0, i32 10
  store %class.ThreadData* %threads, %class.ThreadData** %334, align 8, !tbaa !23
  %335 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 11
  store %class.ThreadData* %threads, %class.ThreadData** %335, align 8, !tbaa !25
  %336 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 15
  store %class.ThreadData* %threads, %class.ThreadData** %336, align 8, !tbaa !27
  %337 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 15
  store %class.ThreadData* %threads, %class.ThreadData** %337, align 8, !tbaa !29
  %338 = load i32, i32* %265, align 4, !tbaa !12
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %324
  %340 = mul nsw i32 %ntypes.0.lcssa, %ntypes.0.lcssa
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %342 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 7
  %343 = bitcast double* %342 to i64*
  %344 = load %class.Force*, %class.Force** %force, align 8
  %345 = getelementptr inbounds %class.Force, %class.Force* %344, i64 0, i32 13
  %346 = load double*, double** %345, align 8
  %347 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 8
  %348 = bitcast double* %347 to i64*
  %349 = getelementptr inbounds %class.Force, %class.Force* %344, i64 0, i32 15
  %350 = load double*, double** %349, align 8
  %351 = getelementptr inbounds %class.Force, %class.Force* %344, i64 0, i32 14
  %352 = load double*, double** %351, align 8
  %353 = zext i32 %340 to i64
  br label %354

; <label>:354                                     ; preds = %354, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %354 ]
  %355 = load i64, i64* %343, align 8, !tbaa !31
  %356 = getelementptr inbounds double, double* %346, i64 %indvars.iv
  %357 = bitcast double* %356 to i64*
  store i64 %355, i64* %357, align 8, !tbaa !32
  %358 = load i64, i64* %348, align 8, !tbaa !33
  %359 = getelementptr inbounds double, double* %350, i64 %indvars.iv
  %360 = bitcast double* %359 to i64*
  store i64 %358, i64* %360, align 8, !tbaa !32
  %361 = load double, double* %347, align 8, !tbaa !33
  %362 = fmul double %361, %361
  %363 = fmul double %361, %362
  %364 = fmul double %361, %363
  %365 = fmul double %361, %364
  %366 = fmul double %361, %365
  %367 = getelementptr inbounds double, double* %352, i64 %indvars.iv
  store double %366, double* %367, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %368 = icmp slt i64 %indvars.iv.next, %353
  br i1 %368, label %354, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %354
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %324
  %369 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  store i32 %ghost_newton.2, i32* %369, align 8, !tbaa !34
  call void @omp_set_num_threads(i32 %num_threads.0.lcssa) #8
  %370 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 14
  store %class.Timer* %timer, %class.Timer** %370, align 8, !tbaa !35
  %371 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %372 = getelementptr inbounds %class.Force, %class.Force* %371, i64 0, i32 12
  store %class.Timer* %timer, %class.Timer** %372, align 8, !tbaa !36
  %373 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 30
  store i32 %check_safeexchange.0.lcssa, i32* %373, align 8, !tbaa !37
  %374 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 31
  store i32 0, i32* %374, align 4, !tbaa !38
  %375 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %376 = getelementptr inbounds %class.Force, %class.Force* %375, i64 0, i32 8
  store i32 %use_sse.0.lcssa, i32* %376, align 4, !tbaa !39
  %377 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  store i32 %halfneigh.0.lcssa, i32* %377, align 4, !tbaa !40
  %378 = icmp slt i32 %halfneigh.0.lcssa, 0
  br i1 %378, label %379, label %382

; <label>:379                                     ; preds = %.loopexit
  %380 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %381 = getelementptr inbounds %class.Force, %class.Force* %380, i64 0, i32 9
  store i32 1, i32* %381, align 8, !tbaa !41
  br label %382

; <label>:382                                     ; preds = %379, %.loopexit
  %383 = icmp eq i32 %use_sse.0.lcssa, 0
  br i1 %383, label %391, label %384

; <label>:384                                     ; preds = %382
  %385 = load i32, i32* %me, align 4, !tbaa !1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %388

; <label>:387                                     ; preds = %384
  %puts51 = call i32 @puts(i8* nonnull getelementptr inbounds ([96 x i8], [96 x i8]* @str.141, i64 0, i64 0))
  br label %388

; <label>:388                                     ; preds = %387, %384
  %389 = invoke i32 @MPI_Finalize()
          to label %390 unwind label %301

; <label>:390                                     ; preds = %388
  call void @exit(i32 0) #19
  unreachable

; <label>:391                                     ; preds = %382
  %392 = icmp sgt i32 %num_steps.0.lcssa, 0
  br i1 %392, label %393, label %395

; <label>:393                                     ; preds = %391
  %394 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 10
  store i32 %num_steps.0.lcssa, i32* %394, align 8, !tbaa !42
  br label %395

; <label>:395                                     ; preds = %393, %391
  %396 = icmp sgt i32 %system_size.0.lcssa, 0
  br i1 %396, label %397, label %401

; <label>:397                                     ; preds = %395
  %398 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  store i32 %system_size.0.lcssa, i32* %398, align 8, !tbaa !43
  %399 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  store i32 %system_size.0.lcssa, i32* %399, align 4, !tbaa !44
  %400 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  store i32 %system_size.0.lcssa, i32* %400, align 8, !tbaa !45
  br label %401

; <label>:401                                     ; preds = %397, %395
  %402 = icmp sgt i32 %nx.0.lcssa, 0
  br i1 %402, label %403, label %420

; <label>:403                                     ; preds = %401
  %404 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  store i32 %nx.0.lcssa, i32* %404, align 8, !tbaa !43
  %405 = icmp sgt i32 %ny.0.lcssa, 0
  br i1 %405, label %406, label %408

; <label>:406                                     ; preds = %403
  %407 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  store i32 %ny.0.lcssa, i32* %407, align 4, !tbaa !44
  br label %412

; <label>:408                                     ; preds = %403
  %409 = icmp slt i32 %system_size.0.lcssa, 0
  br i1 %409, label %410, label %412

; <label>:410                                     ; preds = %408
  %411 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  store i32 %nx.0.lcssa, i32* %411, align 4, !tbaa !44
  br label %412

; <label>:412                                     ; preds = %410, %408, %406
  %413 = icmp sgt i32 %nz.0.lcssa, 0
  br i1 %413, label %414, label %416

; <label>:414                                     ; preds = %412
  %415 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  store i32 %nz.0.lcssa, i32* %415, align 8, !tbaa !45
  br label %420

; <label>:416                                     ; preds = %412
  %417 = icmp slt i32 %system_size.0.lcssa, 0
  br i1 %417, label %418, label %420

; <label>:418                                     ; preds = %416
  %419 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  store i32 %nx.0.lcssa, i32* %419, align 8, !tbaa !45
  br label %420

; <label>:420                                     ; preds = %418, %416, %414, %401
  %421 = icmp sgt i32 %neighbor_size.0.lcssa, 0
  br i1 %421, label %.thread113, label %425

.thread113:                                       ; preds = %420
  %422 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  store i32 %neighbor_size.0.lcssa, i32* %422, align 4, !tbaa !46
  %423 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  store i32 %neighbor_size.0.lcssa, i32* %423, align 8, !tbaa !47
  %424 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  store i32 %neighbor_size.0.lcssa, i32* %424, align 4, !tbaa !48
  br label %454

; <label>:425                                     ; preds = %420
  %426 = icmp slt i32 %neighbor_size.0.lcssa, 0
  %427 = load i8*, i8** %4, align 8
  %428 = icmp eq i8* %427, null
  %or.cond = and i1 %426, %428
  br i1 %or.cond, label %429, label %451

; <label>:429                                     ; preds = %425
  %430 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %431 = bitcast i32* %430 to i64*
  %432 = load i64, i64* %431, align 8
  %433 = trunc i64 %432 to i32
  %434 = sitofp i32 %433 to double
  %435 = fmul double %434, 0x3FEAAAAAAAAAAAAB
  %436 = fptosi double %435 to i32
  %437 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  store i32 %436, i32* %437, align 4, !tbaa !46
  %438 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %439 = lshr i64 %432, 32
  %440 = trunc i64 %439 to i32
  %441 = sitofp i32 %440 to double
  %442 = fmul double %441, 0x3FEAAAAAAAAAAAAB
  %443 = fptosi double %442 to i32
  %444 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  store i32 %443, i32* %444, align 8, !tbaa !47
  %445 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %446 = load i32, i32* %445, align 8, !tbaa !45
  %447 = sitofp i32 %446 to double
  %448 = fmul double %447, 0x3FEAAAAAAAAAAAAB
  %449 = fptosi double %448 to i32
  %450 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  store i32 %449, i32* %450, align 4, !tbaa !48
  br label %451

; <label>:451                                     ; preds = %429, %425
  %.not = xor i1 %426, true
  %or.cond41 = or i1 %428, %.not
  br i1 %or.cond41, label %._crit_edge3, label %452

._crit_edge3:                                     ; preds = %451
  %.phi.trans.insert = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  %.pre4 = load i32, i32* %.phi.trans.insert, align 4, !tbaa !46
  br label %454

; <label>:452                                     ; preds = %451
  %453 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  store i32 -1, i32* %453, align 4, !tbaa !46
  br label %454

; <label>:454                                     ; preds = %._crit_edge3, %452, %.thread113
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge3 ], [ %453, %452 ], [ %422, %.thread113 ]
  %455 = phi i32 [ %.pre4, %._crit_edge3 ], [ -1, %452 ], [ %neighbor_size.0.lcssa, %.thread113 ]
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %458

; <label>:457                                     ; preds = %454
  store i32 1, i32* %.pre-phi, align 4, !tbaa !46
  br label %458

; <label>:458                                     ; preds = %457, %454
  %459 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  %460 = bitcast i32* %459 to i64*
  %461 = load i64, i64* %460, align 8
  %462 = trunc i64 %461 to i32
  %463 = icmp eq i32 %462, 0
  %464 = lshr i64 %461, 32
  %465 = trunc i64 %464 to i32
  br i1 %463, label %466, label %467

; <label>:466                                     ; preds = %458
  store i32 1, i32* %459, align 8, !tbaa !47
  br label %467

; <label>:467                                     ; preds = %466, %458
  %468 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  %469 = icmp eq i32 %465, 0
  br i1 %469, label %470, label %471

; <label>:470                                     ; preds = %467
  store i32 1, i32* %468, align 4, !tbaa !48
  br label %471

; <label>:471                                     ; preds = %470, %467
  %472 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 10
  %473 = load i32, i32* %472, align 8, !tbaa !42
  %474 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 2
  store i32 %473, i32* %474, align 8, !tbaa !49
  %475 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 11
  %476 = bitcast double* %475 to i64*
  %477 = load i64, i64* %476, align 8, !tbaa !50
  %478 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 0
  %479 = bitcast %class.Integrate* %integrate to i64*
  store i64 %477, i64* %479, align 8, !tbaa !51
  %480 = icmp sgt i32 %sort.0.lcssa, 0
  br i1 %480, label %._crit_edge5, label %481

._crit_edge5:                                     ; preds = %471
  %.phi.trans.insert6 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 12
  %.pre7 = load i32, i32* %.phi.trans.insert6, align 8, !tbaa !52
  br label %486

; <label>:481                                     ; preds = %471
  %482 = icmp slt i32 %sort.0.lcssa, 0
  %483 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 12
  %484 = load i32, i32* %483, align 8, !tbaa !52
  %485 = select i1 %482, i32 %484, i32 0
  br label %486

; <label>:486                                     ; preds = %._crit_edge5, %481
  %.pre-phi8 = phi i32* [ %.phi.trans.insert6, %._crit_edge5 ], [ %483, %481 ]
  %487 = phi i32 [ %.pre7, %._crit_edge5 ], [ %484, %481 ]
  %488 = phi i32 [ %sort.0.lcssa, %._crit_edge5 ], [ %485, %481 ]
  %489 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 10
  store i32 %488, i32* %489, align 8, !tbaa !53
  %490 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 0
  store i32 %487, i32* %490, align 8, !tbaa !54
  %491 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 14
  %492 = bitcast double* %491 to i64*
  %493 = load i64, i64* %492, align 8, !tbaa !55
  %494 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 4
  %495 = bitcast double* %494 to i64*
  store i64 %493, i64* %495, align 8, !tbaa !56
  %496 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 13
  %497 = bitcast double* %496 to i64*
  %498 = load i64, i64* %497, align 8, !tbaa !57
  %499 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %500 = getelementptr inbounds %class.Force, %class.Force* %499, i64 0, i32 1
  %501 = bitcast double* %500 to i64*
  store i64 %498, i64* %501, align 8, !tbaa !58
  %502 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 15
  %503 = load i32, i32* %502, align 8, !tbaa !59
  %504 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 0
  store i32 %503, i32* %504, align 8, !tbaa !60
  %505 = load i32, i32* %me, align 4, !tbaa !1
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %508

; <label>:507                                     ; preds = %486
  %puts58 = call i32 @puts(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @str.148, i64 0, i64 0))
  br label %508

; <label>:508                                     ; preds = %507, %486
  %509 = load i8*, i8** %4, align 8, !tbaa !7
  %510 = icmp eq i8* %509, null
  br i1 %510, label %544, label %511

; <label>:511                                     ; preds = %508
  %512 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %513 = load i32, i32* %512, align 8, !tbaa !11
  %514 = invoke i32 @_Z16read_lammps_dataR4AtomR4CommR8NeighborR9IntegrateR6ThermoPci(%class.Atom* nonnull dereferenceable(224) %atom, %class.Comm* nonnull dereferenceable(336) %comm, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Integrate* nonnull dereferenceable(88) %integrate, %class.Thermo* nonnull dereferenceable(128) %thermo, i8* nonnull %509, i32 %513)
          to label %515 unwind label %301

; <label>:515                                     ; preds = %511
  %516 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %517 = load double, double* %516, align 8, !tbaa !61
  %518 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %519 = load double, double* %518, align 8, !tbaa !62
  %520 = fmul double %517, %519
  %521 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %522 = load double, double* %521, align 8, !tbaa !63
  %523 = fmul double %520, %522
  %524 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %525 = load i32, i32* %524, align 8, !tbaa !64
  %526 = sitofp i32 %525 to double
  %527 = fdiv double %526, %523
  %528 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 4
  store double %527, double* %528, align 8, !tbaa !65
  %529 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %530 = bitcast %class.Force* %529 to void (%class.Force*)***
  %531 = load void (%class.Force*)**, void (%class.Force*)*** %530, align 8, !tbaa !66
  %532 = getelementptr inbounds void (%class.Force*)*, void (%class.Force*)** %531, i64 2
  %533 = load void (%class.Force*)*, void (%class.Force*)** %532, align 8
  invoke void %533(%class.Force* %529)
          to label %534 unwind label %301

; <label>:534                                     ; preds = %515
  %535 = load i32, i32* %265, align 4, !tbaa !12
  %536 = icmp eq i32 %535, 1
  br i1 %536, label %537, label %593

; <label>:537                                     ; preds = %534
  %538 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %539 = getelementptr inbounds %class.Force, %class.Force* %538, i64 0, i32 4
  %540 = bitcast double* %539 to i64*
  %541 = load i64, i64* %540, align 8, !tbaa !68
  %542 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 13
  %543 = bitcast double* %542 to i64*
  store i64 %541, i64* %543, align 8, !tbaa !69
  br label %593

; <label>:544                                     ; preds = %508
  %545 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %546 = bitcast i32* %545 to i64*
  %547 = load i64, i64* %546, align 8
  %548 = trunc i64 %547 to i32
  %549 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %550 = lshr i64 %547, 32
  %551 = trunc i64 %550 to i32
  %552 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %553 = load i32, i32* %552, align 8, !tbaa !45
  %554 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 4
  %555 = load double, double* %554, align 8, !tbaa !65
  invoke void @_Z10create_boxR4Atomiiid(%class.Atom* nonnull dereferenceable(224) %atom, i32 %548, i32 %551, i32 %553, double %555)
          to label %556 unwind label %301

; <label>:556                                     ; preds = %544
  %557 = load double, double* %494, align 8, !tbaa !56
  %558 = invoke i32 @_ZN4Comm5setupEdR4Atom(%class.Comm* nonnull %comm, double %557, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %559 unwind label %301

; <label>:559                                     ; preds = %556
  %560 = invoke i32 @_ZN8Neighbor5setupER4Atom(%class.Neighbor* nonnull %neighbor, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %561 unwind label %301

; <label>:561                                     ; preds = %559
  invoke void @_ZN9Integrate5setupEv(%class.Integrate* nonnull %integrate)
          to label %562 unwind label %301

; <label>:562                                     ; preds = %561
  %563 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %564 = bitcast %class.Force* %563 to void (%class.Force*)***
  %565 = load void (%class.Force*)**, void (%class.Force*)*** %564, align 8, !tbaa !66
  %566 = getelementptr inbounds void (%class.Force*)*, void (%class.Force*)** %565, i64 2
  %567 = load void (%class.Force*)*, void (%class.Force*)** %566, align 8
  invoke void %567(%class.Force* %563)
          to label %568 unwind label %301

; <label>:568                                     ; preds = %562
  %569 = load i32, i32* %265, align 4, !tbaa !12
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %571, label %578

; <label>:571                                     ; preds = %568
  %572 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %573 = getelementptr inbounds %class.Force, %class.Force* %572, i64 0, i32 4
  %574 = bitcast double* %573 to i64*
  %575 = load i64, i64* %574, align 8, !tbaa !68
  %576 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 13
  %577 = bitcast double* %576 to i64*
  store i64 %575, i64* %577, align 8, !tbaa !69
  br label %578

; <label>:578                                     ; preds = %571, %568
  %579 = load i64, i64* %546, align 8
  %580 = trunc i64 %579 to i32
  %581 = lshr i64 %579, 32
  %582 = trunc i64 %581 to i32
  %583 = load i32, i32* %552, align 8, !tbaa !45
  %584 = load double, double* %554, align 8, !tbaa !65
  %585 = invoke i32 @_Z12create_atomsR4Atomiiid(%class.Atom* nonnull dereferenceable(224) %atom, i32 %580, i32 %582, i32 %583, double %584)
          to label %586 unwind label %301

; <label>:586                                     ; preds = %578
  %587 = load double, double* %554, align 8, !tbaa !65
  %588 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %589 = load i32, i32* %588, align 8, !tbaa !11
  invoke void @_ZN6Thermo5setupEdR9IntegrateR4Atomi(%class.Thermo* nonnull %thermo, double %587, %class.Integrate* nonnull dereferenceable(88) %integrate, %class.Atom* nonnull dereferenceable(224) %atom, i32 %589)
          to label %590 unwind label %301

; <label>:590                                     ; preds = %586
  %591 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 3
  %592 = load double, double* %591, align 8, !tbaa !70
  invoke void @_Z15create_velocitydR4AtomR6Thermo(double %592, %class.Atom* nonnull dereferenceable(224) %atom, %class.Thermo* nonnull dereferenceable(128) %thermo)
          to label %593 unwind label %301

; <label>:593                                     ; preds = %590, %537, %534
  %594 = load i32, i32* %me, align 4, !tbaa !1
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %.thread48

; <label>:596                                     ; preds = %593
  %puts57 = call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @str.147, i64 0, i64 0))
  %.pr47 = load i32, i32* %me, align 4, !tbaa !1
  %597 = icmp eq i32 %.pr47, 0
  br i1 %597, label %598, label %.thread48

; <label>:598                                     ; preds = %596
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %600 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.72, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %599)
  %601 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %602 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %601)
  %603 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %604 = load %class.ThreadData*, %class.ThreadData** %336, align 8, !tbaa !27
  %605 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %604, i64 0, i32 1
  %606 = load i32, i32* %605, align 4, !tbaa !15
  %607 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %603, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0), i32 %606)
  %608 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %609 = load %class.ThreadData*, %class.ThreadData** %336, align 8, !tbaa !27
  %610 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %609, i64 0, i32 3
  %611 = load i32, i32* %610, align 4, !tbaa !17
  %612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %608, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i32 %611)
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %614 = select i1 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %input_file.0.lcssa
  %615 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %613, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i8* %614)
  %616 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %617 = load i8*, i8** %4, align 8, !tbaa !7
  %618 = icmp ne i8* %617, null
  %619 = select i1 %618, i8* %617, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0)
  %620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %616, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i8* %619)
  %621 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %622 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %621)
  %623 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %624 = load i32, i32* %265, align 4, !tbaa !12
  %625 = icmp eq i32 %624, 0
  %626 = select i1 %625, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)
  %627 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %623, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i64 0, i64 0), i8* %626)
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %629 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 7
  %630 = load double, double* %629, align 8, !tbaa !31
  %631 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 8
  %632 = load double, double* %631, align 8, !tbaa !33
  %633 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.83, i64 0, i64 0), double %630, double %632)
  %634 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %635 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %636 = load i32, i32* %635, align 8, !tbaa !11
  %637 = icmp eq i32 %636, 0
  %638 = select i1 %637, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0)
  %639 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %634, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0), i8* %638)
  %640 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %641 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %642 = load i32, i32* %641, align 8, !tbaa !64
  %643 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %640, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0), i32 %642)
  %644 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %645 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 7
  %646 = load i32, i32* %645, align 8, !tbaa !71
  %647 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %644, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i64 0, i64 0), i32 %646)
  %648 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %649 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %650 = load double, double* %649, align 8, !tbaa !61
  %651 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %652 = load double, double* %651, align 8, !tbaa !62
  %653 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %654 = load double, double* %653, align 8, !tbaa !63
  %655 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %656 = bitcast i32* %655 to i64*
  %657 = load i64, i64* %656, align 8
  %658 = trunc i64 %657 to i32
  %659 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %660 = lshr i64 %657, 32
  %661 = trunc i64 %660 to i32
  %662 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %663 = load i32, i32* %662, align 8, !tbaa !45
  %664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %648, i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.88, i64 0, i64 0), double %650, double %652, double %654, i32 %658, i32 %661, i32 %663)
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %666 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 4
  %667 = load double, double* %666, align 8, !tbaa !65
  %668 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %665, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i64 0, i64 0), double %667)
  %669 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %670 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %671 = getelementptr inbounds %class.Force, %class.Force* %670, i64 0, i32 1
  %672 = load double, double* %671, align 8, !tbaa !58
  %673 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %669, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i64 0, i64 0), double %672)
  %674 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %675 = load double, double* %478, align 8, !tbaa !51
  %676 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %674, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), double %675)
  %677 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %678 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %677)
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %680 = load double, double* %494, align 8, !tbaa !56
  %681 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %679, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i64 0, i64 0), double %680)
  %682 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %683 = load i32, i32* %377, align 4, !tbaa !40
  %684 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %682, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0), i32 %683)
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %686 = load i32, i32* %.pre-phi, align 4, !tbaa !46
  %687 = load i64, i64* %460, align 8
  %688 = trunc i64 %687 to i32
  %689 = lshr i64 %687, 32
  %690 = trunc i64 %689 to i32
  %691 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %685, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i64 0, i64 0), i32 %686, i32 %688, i32 %690)
  %692 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %693 = load i32, i32* %490, align 8, !tbaa !54
  %694 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %692, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i32 %693)
  %695 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %696 = load i32, i32* %489, align 8, !tbaa !53
  %697 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %695, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i64 0, i64 0), i32 %696)
  %698 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %699 = load i32, i32* %504, align 8, !tbaa !60
  %700 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %698, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i64 0, i64 0), i32 %699)
  %701 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %702 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %701, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i64 0, i64 0), i32 %ghost_newton.2)
  %703 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %704 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %705 = getelementptr inbounds %class.Force, %class.Force* %704, i64 0, i32 8
  %706 = load i32, i32* %705, align 4, !tbaa !39
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %703, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i64 0, i64 0), i32 %706)
  %708 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %709 = load i32, i32* %374, align 4, !tbaa !38
  %710 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %708, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i64 0, i64 0), i32 %709)
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %711, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i64 0, i64 0), i32 8)
  br label %.thread48

.thread48:                                        ; preds = %598, %596, %593
  invoke void @_ZN4Comm8exchangeER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %713 unwind label %301

; <label>:713                                     ; preds = %.thread48
  br i1 %480, label %714, label %715

; <label>:714                                     ; preds = %713
  invoke void @_ZN4Atom4sortER8Neighbor(%class.Atom* nonnull %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor)
          to label %715 unwind label %301

; <label>:715                                     ; preds = %714, %713
  invoke void @_ZN4Comm7bordersER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %716 unwind label %301

; <label>:716                                     ; preds = %715
  %717 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %718 = getelementptr inbounds %class.Force, %class.Force* %717, i64 0, i32 5
  store i32 1, i32* %718, align 8, !tbaa !72
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* nonnull @0, i32 5, void (i32*, i32*, ...)* nonnull bitcast (void (i32*, i32*, %class.Neighbor*, %class.Atom*, %class.Force**, %class.Comm*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %class.Neighbor* nonnull %neighbor, %class.Atom* nonnull %atom, %class.Force** nonnull %force, %class.Comm* nonnull %comm, i32* nonnull %me)
  %719 = load i32, i32* %377, align 4, !tbaa !40
  %720 = icmp eq i32 %719, 0
  %721 = load i32, i32* %369, align 8
  %722 = icmp eq i32 %721, 0
  %or.cond43 = or i1 %720, %722
  br i1 %or.cond43, label %724, label %723

; <label>:723                                     ; preds = %716
  invoke void @_ZN4Comm19reverse_communicateER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %724 unwind label %301

; <label>:724                                     ; preds = %723, %716
  %725 = load i32, i32* %me, align 4, !tbaa !1
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %.thread50

; <label>:727                                     ; preds = %724
  %puts55 = call i32 @puts(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @str.145, i64 0, i64 0))
  %.pr49 = load i32, i32* %me, align 4, !tbaa !1
  %728 = icmp eq i32 %.pr49, 0
  br i1 %728, label %729, label %.thread50

; <label>:729                                     ; preds = %727
  %puts56 = call i32 @puts(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @str.146, i64 0, i64 0))
  br label %.thread50

.thread50:                                        ; preds = %729, %727, %724
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* nonnull @0, i32 6, void (i32*, i32*, ...)* nonnull bitcast (void (i32*, i32*, %class.Thermo*, %class.Atom*, %class.Neighbor*, %class.Force**, %class.Timer*, %class.Comm*)* @.omp_outlined..106 to void (i32*, i32*, ...)*), %class.Thermo* nonnull %thermo, %class.Atom* nonnull %atom, %class.Neighbor* nonnull %neighbor, %class.Force** nonnull %force, %class.Timer* nonnull %timer, %class.Comm* nonnull %comm)
  invoke void @_ZN5Timer13barrier_startEi(%class.Timer* nonnull %timer, i32 0)
          to label %730 unwind label %301

; <label>:730                                     ; preds = %.thread50
  %731 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  invoke void @_ZN9Integrate3runER4AtomP5ForceR8NeighborR4CommR6ThermoR5Timer(%class.Integrate* nonnull %integrate, %class.Atom* nonnull dereferenceable(224) %atom, %class.Force* %731, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, %class.Thermo* nonnull dereferenceable(128) %thermo, %class.Timer* nonnull dereferenceable(24) %timer)
          to label %732 unwind label %301

; <label>:732                                     ; preds = %730
  invoke void @_ZN5Timer12barrier_stopEi(%class.Timer* nonnull %timer, i32 0)
          to label %733 unwind label %301

; <label>:733                                     ; preds = %732
  %734 = bitcast i32* %natoms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %734) #8
  %735 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %736 = bitcast i32* %735 to i8*
  %737 = invoke i32 @MPI_Allreduce(i8* %736, i8* %734, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
          to label %738 unwind label %301

; <label>:738                                     ; preds = %733
  %739 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %740 = getelementptr inbounds %class.Force, %class.Force* %739, i64 0, i32 5
  store i32 1, i32* %740, align 8, !tbaa !72
  %741 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %742 = bitcast %class.Force* %741 to void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)***
  %743 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)**, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*** %742, align 8, !tbaa !66
  %744 = getelementptr inbounds void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %743, i64 4
  %745 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %744, align 8
  %746 = load i32, i32* %me, align 4, !tbaa !1
  invoke void %745(%class.Force* %741, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, i32 %746)
          to label %747 unwind label %301

; <label>:747                                     ; preds = %738
  %748 = load i32, i32* %377, align 4, !tbaa !40
  %749 = icmp eq i32 %748, 0
  %750 = load i32, i32* %369, align 8
  %751 = icmp eq i32 %750, 0
  %or.cond45 = or i1 %749, %751
  br i1 %or.cond45, label %753, label %752

; <label>:752                                     ; preds = %747
  invoke void @_ZN4Comm19reverse_communicateER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %753 unwind label %301

; <label>:753                                     ; preds = %752, %747
  %754 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  invoke void @_ZN6Thermo7computeEiR4AtomR8NeighborP5ForceR5TimerR4Comm(%class.Thermo* nonnull %thermo, i32 -1, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Force* %754, %class.Timer* nonnull dereferenceable(24) %timer, %class.Comm* nonnull dereferenceable(336) %comm)
          to label %755 unwind label %301

; <label>:755                                     ; preds = %753
  %756 = load i32, i32* %me, align 4, !tbaa !1
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %793

; <label>:758                                     ; preds = %755
  %759 = getelementptr inbounds %class.Timer, %class.Timer* %timer, i64 0, i32 0
  %760 = load double*, double** %759, align 8, !tbaa !73
  %761 = load double, double* %760, align 8, !tbaa !32
  %762 = getelementptr inbounds double, double* %760, i64 2
  %763 = load double, double* %762, align 8, !tbaa !32
  %764 = fsub double %761, %763
  %765 = getelementptr inbounds double, double* %760, i64 3
  %766 = load double, double* %765, align 8, !tbaa !32
  %767 = fsub double %764, %766
  %768 = getelementptr inbounds double, double* %760, i64 1
  %769 = load double, double* %768, align 8, !tbaa !32
  %770 = fsub double %767, %769
  %puts52 = call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @str.142, i64 0, i64 0))
  %puts53 = call i32 @puts(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @str.143, i64 0, i64 0))
  %puts54 = call i32 @puts(i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @str.144, i64 0, i64 0))
  %771 = load i32, i32* %nprocs, align 4, !tbaa !1
  %772 = load i32, i32* %474, align 8, !tbaa !49
  %773 = load i32, i32* %natoms, align 4, !tbaa !1
  %774 = load double*, double** %759, align 8, !tbaa !73
  %775 = load double, double* %774, align 8, !tbaa !32
  %776 = getelementptr inbounds double, double* %774, i64 2
  %777 = load double, double* %776, align 8, !tbaa !32
  %778 = getelementptr inbounds double, double* %774, i64 3
  %779 = load double, double* %778, align 8, !tbaa !32
  %780 = getelementptr inbounds double, double* %774, i64 1
  %781 = load double, double* %780, align 8, !tbaa !32
  %782 = sitofp i32 %773 to double
  %783 = sitofp i32 %772 to double
  %784 = fmul double %783, %782
  %785 = fdiv double %784, %775
  %786 = sitofp i32 %771 to double
  %787 = fdiv double %785, %786
  %788 = sitofp i32 %num_threads.0.lcssa to double
  %789 = fdiv double %787, %788
  %790 = getelementptr inbounds double, double* %774, i64 4
  %791 = load double, double* %790, align 8, !tbaa !32
  %792 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.110, i64 0, i64 0), i32 %771, i32 %num_threads.0.lcssa, i32 %772, i32 %773, double %775, double %777, double %779, double %781, double %770, double %785, double %789, double %791)
  br label %793

; <label>:793                                     ; preds = %758, %755
  %794 = icmp eq i32 %yaml_output.0.lcssa, 0
  br i1 %794, label %797, label %795

; <label>:795                                     ; preds = %793
  %796 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  invoke void @_Z6outputR2InR4AtomP5ForceR8NeighborR4CommR6ThermoR9IntegrateR5Timeri(%struct.In* nonnull dereferenceable(112) %in, %class.Atom* nonnull dereferenceable(224) %atom, %class.Force* %796, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, %class.Thermo* nonnull dereferenceable(128) %thermo, %class.Integrate* nonnull dereferenceable(88) %integrate, %class.Timer* nonnull dereferenceable(24) %timer, i32 %screen_yaml.0.lcssa)
          to label %797 unwind label %301

; <label>:797                                     ; preds = %795, %793
  %798 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %799 = icmp eq %class.Force* %798, null
  br i1 %799, label %805, label %800

; <label>:800                                     ; preds = %797
  %801 = bitcast %class.Force* %798 to void (%class.Force*)***
  %802 = load void (%class.Force*)**, void (%class.Force*)*** %801, align 8, !tbaa !66
  %803 = getelementptr inbounds void (%class.Force*)*, void (%class.Force*)** %802, i64 1
  %804 = load void (%class.Force*)*, void (%class.Force*)** %803, align 8
  invoke void %804(%class.Force* nonnull %798)
          to label %805 unwind label %301

; <label>:805                                     ; preds = %800, %797
  %806 = invoke i32 @MPI_Barrier(i32 1140850688)
          to label %807 unwind label %301

; <label>:807                                     ; preds = %805
  %808 = invoke i32 @MPI_Finalize()
          to label %809 unwind label %301

; <label>:809                                     ; preds = %807
  call void @llvm.lifetime.end(i64 4, i8* %734) #8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %264) #8
  call void @llvm.lifetime.end(i64 20, i8* %263) #8
  invoke void @_ZN5TimerD1Ev(%class.Timer* nonnull %timer)
          to label %811 unwind label %297

; <label>:810                                     ; preds = %320, %305, %301
  %.03 = phi i8* [ %303, %301 ], [ %322, %320 ], [ %307, %305 ]
  %.0 = phi i32 [ %304, %301 ], [ %323, %320 ], [ %308, %305 ]
  invoke void @_ZN5TimerD1Ev(%class.Timer* nonnull %timer)
          to label %813 unwind label %824

; <label>:811                                     ; preds = %809
  call void @llvm.lifetime.end(i64 24, i8* %261) #8
  invoke void @_ZN4CommD1Ev(%class.Comm* nonnull %comm)
          to label %812 unwind label %293

; <label>:812                                     ; preds = %811
  call void @llvm.lifetime.end(i64 336, i8* %259) #8
  invoke void @_ZN6ThermoD1Ev(%class.Thermo* nonnull %thermo)
          to label %814 unwind label %289

; <label>:813                                     ; preds = %810, %297
  %.14 = phi i8* [ %.03, %810 ], [ %299, %297 ]
  %.1 = phi i32 [ %.0, %810 ], [ %300, %297 ]
  invoke void @_ZN4CommD1Ev(%class.Comm* nonnull %comm)
          to label %815 unwind label %824

; <label>:814                                     ; preds = %812
  call void @llvm.lifetime.end(i64 128, i8* %257) #8
  invoke void @_ZN9IntegrateD1Ev(%class.Integrate* nonnull %integrate)
          to label %816 unwind label %285

; <label>:815                                     ; preds = %813, %293
  %.25 = phi i8* [ %.14, %813 ], [ %295, %293 ]
  %.2 = phi i32 [ %.1, %813 ], [ %296, %293 ]
  invoke void @_ZN6ThermoD1Ev(%class.Thermo* nonnull %thermo)
          to label %817 unwind label %824

; <label>:816                                     ; preds = %814
  call void @llvm.lifetime.end(i64 88, i8* %255) #8
  invoke void @_ZN8NeighborD1Ev(%class.Neighbor* nonnull %neighbor)
          to label %818 unwind label %281

; <label>:817                                     ; preds = %815, %289
  %.36 = phi i8* [ %.25, %815 ], [ %291, %289 ]
  %.3 = phi i32 [ %.2, %815 ], [ %292, %289 ]
  invoke void @_ZN9IntegrateD1Ev(%class.Integrate* nonnull %integrate)
          to label %819 unwind label %824

; <label>:818                                     ; preds = %816
  call void @llvm.lifetime.end(i64 240, i8* %43) #8
  call void @_ZN4AtomD1Ev(%class.Atom* nonnull %atom)
  call void @llvm.lifetime.end(i64 224, i8* %42) #8
  call void @llvm.lifetime.end(i64 4, i8* %6) #8
  call void @llvm.lifetime.end(i64 4, i8* %5) #8
  call void @llvm.lifetime.end(i64 112, i8* %3) #8
  ret i32 0

; <label>:819                                     ; preds = %817, %285
  %.47 = phi i8* [ %.36, %817 ], [ %287, %285 ]
  %.4 = phi i32 [ %.3, %817 ], [ %288, %285 ]
  invoke void @_ZN8NeighborD1Ev(%class.Neighbor* nonnull %neighbor)
          to label %820 unwind label %824

; <label>:820                                     ; preds = %819, %281
  %.58 = phi i8* [ %.47, %819 ], [ %283, %281 ]
  %.5 = phi i32 [ %.4, %819 ], [ %284, %281 ]
  invoke void @_ZN4AtomD1Ev(%class.Atom* nonnull %atom)
          to label %821 unwind label %824

; <label>:821                                     ; preds = %820
  %822 = insertvalue { i8*, i32 } undef, i8* %.58, 0
  %823 = insertvalue { i8*, i32 } %822, i32 %.5, 1
  resume { i8*, i32 } %823

; <label>:824                                     ; preds = %820, %819, %817, %815, %813, %810
  %825 = landingpad { i8*, i32 }
          catch i8* null
  %826 = extractvalue { i8*, i32 } %825, 0
  call void @__clang_call_terminate(i8* %826) #19
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @MPI_Init(i32*, i8***) #2

declare i32 @MPI_Comm_rank(i32, i32*) #2

declare i32 @MPI_Comm_size(i32, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

declare i32 @MPI_Finalize() #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @srand(i32) #5

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture nonnull readonly %__nptr) #6 {
  %1 = tail call i64 @strtol(i8* nocapture nonnull %__nptr, i8** null, i32 10) #8
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #5

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) #7

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN10ThreadDataC2Ev(%class.ThreadData* nocapture %this) unnamed_addr #9 comdat align 2 {
  %1 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %this, i64 0, i32 0
  store i32 0, i32* %1, align 4, !tbaa !13
  %2 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %this, i64 0, i32 1
  store i32 0, i32* %2, align 4, !tbaa !15
  %3 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %this, i64 0, i32 2
  store i32 0, i32* %3, align 4, !tbaa !16
  %4 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %this, i64 0, i32 3
  store i32 1, i32* %4, align 4, !tbaa !17
  %5 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %this, i64 0, i32 4
  store i32 1, i32* %5, align 4, !tbaa !75
  ret void
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

; Function Attrs: nounwind
declare void @omp_set_num_threads(i32) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readnone %.global_tid., i32* noalias nocapture readnone %.bound_tid., %class.Neighbor* dereferenceable(240) %neighbor, %class.Atom* dereferenceable(224) %atom, %class.Force** nocapture readonly dereferenceable(8) %force, %class.Comm* dereferenceable(336) %comm, i32* nocapture readonly dereferenceable(4) %me) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  invoke void @_ZN8Neighbor5buildER4Atom(%class.Neighbor* nonnull %neighbor, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %1 unwind label %9

; <label>:1                                       ; preds = %0
  %2 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %3 = bitcast %class.Force* %2 to void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)***
  %4 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)**, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*** %3, align 8, !tbaa !66
  %5 = getelementptr inbounds void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %4, i64 4
  %6 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %5, align 8
  %7 = load i32, i32* %me, align 4, !tbaa !1
  invoke void %6(%class.Force* %2, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, i32 %7)
          to label %8 unwind label %9

; <label>:8                                       ; preds = %1
  ret void

; <label>:9                                       ; preds = %1, %0
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  tail call void @__clang_call_terminate(i8* %11) #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #12 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #8
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @__kmpc_fork_call(%ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define internal void @.omp_outlined..106(i32* noalias nocapture readnone %.global_tid., i32* noalias nocapture readnone %.bound_tid., %class.Thermo* dereferenceable(128) %thermo, %class.Atom* dereferenceable(224) %atom, %class.Neighbor* dereferenceable(240) %neighbor, %class.Force** nocapture readonly dereferenceable(8) %force, %class.Timer* dereferenceable(24) %timer, %class.Comm* dereferenceable(336) %comm) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  invoke void @_ZN6Thermo7computeEiR4AtomR8NeighborP5ForceR5TimerR4Comm(%class.Thermo* nonnull %thermo, i32 0, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Force* %1, %class.Timer* nonnull dereferenceable(24) %timer, %class.Comm* nonnull dereferenceable(336) %comm)
          to label %2 unwind label %3

; <label>:2                                       ; preds = %0
  ret void

; <label>:3                                       ; preds = %0
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  tail call void @__clang_call_terminate(i8* %5) #19
  unreachable
}

declare i32 @MPI_Allreduce(i8*, i8*, i32, i32, i32, i32) #2

declare i32 @MPI_Barrier(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: uwtable
define i32 @_Z5inputR2InPKc(%struct.In* dereferenceable(112) %in, i8* %filename) #13 {
  %line = alloca [256 x i8], align 16
  %me = alloca i32, align 4
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #8
  %2 = bitcast i32* %me to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  %3 = call i32 @MPI_Comm_rank(i32 1140850688, i32* nonnull %me)
  %4 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %me, align 4, !tbaa !1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %94

; <label>:9                                       ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.36, i64 0, i64 0), i8* %filename)
  br label %94

; <label>:11                                      ; preds = %0
  %12 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %13 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %14 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %15 = call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0)) #8
  %16 = call i32 @strcmp(i8* %15, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.38, i64 0, i64 0)) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %11
  %19 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  store i32 0, i32* %19, align 8, !tbaa !11
  br label %28

; <label>:20                                      ; preds = %11
  %21 = call i32 @strcmp(i8* %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.39, i64 0, i64 0)) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  store i32 1, i32* %24, align 8, !tbaa !11
  br label %28

; <label>:25                                      ; preds = %20
  %26 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5.40, i64 0, i64 0), i8* %1)
  %27 = call i32 @MPI_Finalize()
  call void @exit(i32 0) #19
  unreachable

; <label>:28                                      ; preds = %23, %18
  %29 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %30 = call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0)) #8
  %31 = call i32 @strcmp(i8* %30, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.41, i64 0, i64 0)) #18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %28
  %34 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 9
  store i8* null, i8** %34, align 8, !tbaa !7
  br label %42

; <label>:35                                      ; preds = %28
  %36 = call noalias i8* @_Znam(i64 1000) #20
  %37 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 9
  store i8* %36, i8** %37, align 8, !tbaa !7
  %38 = call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.42, i64 0, i64 0)) #8
  %39 = icmp eq i8* %38, null
  %.1 = select i1 %39, i8* %1, i8* %38
  %40 = load i8*, i8** %37, align 8, !tbaa !7
  %41 = call i8* @strcpy(i8* %40, i8* %.1) #8
  br label %42

; <label>:42                                      ; preds = %35, %33
  %43 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %44 = call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0)) #8
  %45 = call i32 @strcmp(i8* %44, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.38, i64 0, i64 0)) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %42
  %48 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  store i32 0, i32* %48, align 4, !tbaa !12
  br label %57

; <label>:49                                      ; preds = %42
  %50 = call i32 @strcmp(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.43, i64 0, i64 0)) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

; <label>:52                                      ; preds = %49
  %53 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  store i32 1, i32* %53, align 4, !tbaa !12
  br label %57

; <label>:54                                      ; preds = %49
  %55 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9.44, i64 0, i64 0), i8* %1)
  %56 = call i32 @MPI_Finalize()
  call void @exit(i32 0) #19
  unreachable

; <label>:57                                      ; preds = %52, %47
  %58 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %59 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 7
  %60 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 8
  %61 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.45, i64 0, i64 0), double* %59, double* %60) #8
  %62 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %63 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %64 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %65 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %66 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11.46, i64 0, i64 0), i32* %63, i32* %64, i32* %65) #8
  %67 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %68 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 10
  %69 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.47, i64 0, i64 0), i32* %68) #8
  %70 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %71 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 11
  %72 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.48, i64 0, i64 0), double* %71) #8
  %73 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %74 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 3
  %75 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.48, i64 0, i64 0), double* %74) #8
  %76 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %77 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 4
  %78 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.48, i64 0, i64 0), double* %77) #8
  %79 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %80 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 12
  %81 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.47, i64 0, i64 0), i32* %80) #8
  %82 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %83 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 13
  %84 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 14
  %85 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.45, i64 0, i64 0), double* %83, double* %84) #8
  %86 = call i8* @fgets(i8* %1, i32 256, %struct._IO_FILE* nonnull %4)
  %87 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 15
  %88 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.47, i64 0, i64 0), i32* %87) #8
  %89 = call i32 @fclose(%struct._IO_FILE* nonnull %4)
  %90 = load double, double* %83, align 8, !tbaa !57
  %91 = load double, double* %84, align 8, !tbaa !55
  %92 = fadd double %90, %91
  store double %92, double* %84, align 8, !tbaa !55
  %93 = call i32 @MPI_Barrier(i32 1140850688)
  br label %94

; <label>:94                                      ; preds = %57, %9, %6
  %.0 = phi i32 [ 0, %57 ], [ 1, %9 ], [ 1, %6 ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  call void @llvm.lifetime.end(i64 256, i8* %1) #8
  ret i32 %.0
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #5

; Function Attrs: norecurse nounwind uwtable
define void @_ZN9IntegrateC2Ev(%class.Integrate* nocapture %this) unnamed_addr #9 align 2 {
  %1 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 10
  store i32 20, i32* %1, align 8, !tbaa !53
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN9IntegrateD2Ev(%class.Integrate* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN9Integrate5setupEv(%class.Integrate* nocapture %this) #9 align 2 {
  %1 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 0
  %2 = load double, double* %1, align 8, !tbaa !51
  %3 = fmul double %2, 5.000000e-01
  %4 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 1
  store double %3, double* %4, align 8, !tbaa !76
  ret void
}

; Function Attrs: uwtable
define void @_ZN9Integrate16initialIntegrateEv(%class.Integrate* nocapture readonly %this) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @1)
  %2 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 3
  %3 = load i32, i32* %2, align 4, !tbaa !77
  %4 = add nsw i32 %3, -1
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %73

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 %4, i32* %.omp.ub, align 4, !tbaa !1
  %9 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %10 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @1, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %11 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, %4
  %13 = select i1 %12, i32 %4, i32 %11
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %14 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %15 = icmp sgt i32 %14, %13
  br i1 %15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %6
  %16 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 1
  %17 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 7
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 6
  %20 = load double*, double** %19, align 8
  %21 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 0
  %22 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 5
  %23 = load double*, double** %22, align 8
  %24 = sext i32 %14 to i64
  %25 = sext i32 %13 to i64
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ %24, %.lr.ph ]
  %.omp.iv.02 = phi i32 [ %71, %26 ], [ %14, %.lr.ph ]
  %27 = load double, double* %16, align 8, !tbaa !76
  %28 = mul nsw i32 %.omp.iv.02, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %18, i64 %29
  %31 = load double, double* %30, align 8, !tbaa !32
  %32 = fmul double %27, %31
  %33 = getelementptr inbounds double, double* %20, i64 %29
  %34 = load double, double* %33, align 8, !tbaa !32
  %35 = fadd double %32, %34
  store double %35, double* %33, align 8, !tbaa !32
  %36 = load double, double* %16, align 8, !tbaa !76
  %37 = add nsw i32 %28, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %18, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !32
  %41 = fmul double %36, %40
  %42 = getelementptr inbounds double, double* %20, i64 %38
  %43 = load double, double* %42, align 8, !tbaa !32
  %44 = fadd double %41, %43
  store double %44, double* %42, align 8, !tbaa !32
  %45 = load double, double* %16, align 8, !tbaa !76
  %46 = add nsw i32 %28, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %18, i64 %47
  %49 = load double, double* %48, align 8, !tbaa !32
  %50 = fmul double %45, %49
  %51 = getelementptr inbounds double, double* %20, i64 %47
  %52 = load double, double* %51, align 8, !tbaa !32
  %53 = fadd double %50, %52
  store double %53, double* %51, align 8, !tbaa !32
  %54 = load double, double* %21, align 8, !tbaa !51
  %55 = fmul double %54, %35
  %56 = getelementptr inbounds double, double* %23, i64 %29
  %57 = load double, double* %56, align 8, !tbaa !32
  %58 = fadd double %55, %57
  store double %58, double* %56, align 8, !tbaa !32
  %59 = load double, double* %21, align 8, !tbaa !51
  %60 = load double, double* %42, align 8, !tbaa !32
  %61 = fmul double %59, %60
  %62 = getelementptr inbounds double, double* %23, i64 %38
  %63 = load double, double* %62, align 8, !tbaa !32
  %64 = fadd double %61, %63
  store double %64, double* %62, align 8, !tbaa !32
  %65 = load double, double* %21, align 8, !tbaa !51
  %66 = load double, double* %51, align 8, !tbaa !32
  %67 = fmul double %65, %66
  %68 = getelementptr inbounds double, double* %23, i64 %47
  %69 = load double, double* %68, align 8, !tbaa !32
  %70 = fadd double %67, %69
  store double %70, double* %68, align 8, !tbaa !32
  %71 = add nsw i32 %.omp.iv.02, 1
  %72 = icmp slt i64 %indvars.iv, %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %72, label %26, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  call void @__kmpc_for_static_fini(%ident_t* nonnull @1, i32 %1)
  br label %73

; <label>:73                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %8, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %9, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %10, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @2, i32 %1)
  ret void
}

declare i32 @__kmpc_global_thread_num(%ident_t*)

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_barrier(%ident_t*, i32)

; Function Attrs: uwtable
define void @_ZN9Integrate14finalIntegrateEv(%class.Integrate* nocapture readonly %this) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @1)
  %2 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 3
  %3 = load i32, i32* %2, align 4, !tbaa !77
  %4 = add nsw i32 %3, -1
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %53

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 %4, i32* %.omp.ub, align 4, !tbaa !1
  %9 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %10 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @1, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %11 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, %4
  %13 = select i1 %12, i32 %4, i32 %11
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %14 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %15 = icmp sgt i32 %14, %13
  br i1 %15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %6
  %16 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 1
  %17 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 7
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 6
  %20 = load double*, double** %19, align 8
  %21 = sext i32 %14 to i64
  %22 = sext i32 %13 to i64
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ %21, %.lr.ph ]
  %.omp.iv.02 = phi i32 [ %51, %23 ], [ %14, %.lr.ph ]
  %24 = load double, double* %16, align 8, !tbaa !76
  %25 = mul nsw i32 %.omp.iv.02, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %18, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !32
  %29 = fmul double %24, %28
  %30 = getelementptr inbounds double, double* %20, i64 %26
  %31 = load double, double* %30, align 8, !tbaa !32
  %32 = fadd double %29, %31
  store double %32, double* %30, align 8, !tbaa !32
  %33 = load double, double* %16, align 8, !tbaa !76
  %34 = add nsw i32 %25, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %18, i64 %35
  %37 = load double, double* %36, align 8, !tbaa !32
  %38 = fmul double %33, %37
  %39 = getelementptr inbounds double, double* %20, i64 %35
  %40 = load double, double* %39, align 8, !tbaa !32
  %41 = fadd double %38, %40
  store double %41, double* %39, align 8, !tbaa !32
  %42 = load double, double* %16, align 8, !tbaa !76
  %43 = add nsw i32 %25, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %18, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !32
  %47 = fmul double %42, %46
  %48 = getelementptr inbounds double, double* %20, i64 %44
  %49 = load double, double* %48, align 8, !tbaa !32
  %50 = fadd double %47, %49
  store double %50, double* %48, align 8, !tbaa !32
  %51 = add nsw i32 %.omp.iv.02, 1
  %52 = icmp slt i64 %indvars.iv, %22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %52, label %23, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  call void @__kmpc_for_static_fini(%ident_t* nonnull @1, i32 %1)
  br label %53

; <label>:53                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %8, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %9, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %10, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @2, i32 %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZN9Integrate3runER4AtomP5ForceR8NeighborR4CommR6ThermoR5Timer(%class.Integrate* %this, %class.Atom* dereferenceable(224) %atom, %class.Force* %force, %class.Neighbor* dereferenceable(240) %neighbor, %class.Comm* dereferenceable(336) %comm, %class.Thermo* dereferenceable(128) %thermo, %class.Timer* dereferenceable(24) %timer) #13 align 2 {
  %1 = alloca %class.Force*, align 8
  %check_safeexchange = alloca i32, align 4
  store %class.Force* %force, %class.Force** %1, align 8, !tbaa !5
  %2 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 32
  store %class.Timer* %timer, %class.Timer** %2, align 8, !tbaa !78
  %3 = getelementptr inbounds %class.Timer, %class.Timer* %timer, i64 0, i32 0
  %4 = load double*, double** %3, align 8, !tbaa !73
  %5 = getelementptr inbounds double, double* %4, i64 4
  store double 0.000000e+00, double* %5, align 8, !tbaa !32
  %6 = bitcast i32* %check_safeexchange to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #8
  %7 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 30
  %8 = load i32, i32* %7, align 8, !tbaa !37
  store i32 %8, i32* %check_safeexchange, align 4, !tbaa !1
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 13
  %10 = load double, double* %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 9
  store double %10, double* %11, align 8, !tbaa !79
  %12 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 1
  %13 = load double, double* %12, align 8, !tbaa !76
  %14 = fdiv double %13, %10
  store double %14, double* %12, align 8, !tbaa !76
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* nonnull @1, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %class.Integrate*, %class.Atom*, %class.Timer*, %class.Neighbor*, %class.Comm*, i32*, %class.Force**, %class.Thermo*)* @.omp_outlined..54 to void (i32*, i32*, ...)*), %class.Integrate* %this, %class.Atom* nonnull %atom, %class.Timer* nonnull %timer, %class.Neighbor* nonnull %neighbor, %class.Comm* nonnull %comm, i32* nonnull %check_safeexchange, %class.Force** nonnull %1, %class.Thermo* nonnull %thermo)
  call void @llvm.lifetime.end(i64 4, i8* %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @.omp_outlined..54(i32* noalias nocapture readonly %.global_tid., i32* noalias nocapture readnone %.bound_tid., %class.Integrate* nocapture %this, %class.Atom* dereferenceable(224) %atom, %class.Timer* dereferenceable(24) %timer, %class.Neighbor* dereferenceable(240) %neighbor, %class.Comm* dereferenceable(336) %comm, i32* nocapture readonly dereferenceable(4) %check_safeexchange, %class.Force** nocapture readonly dereferenceable(8) %force, %class.Thermo* dereferenceable(128) %thermo) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 10
  %2 = load i32, i32* %1, align 8, !tbaa !53
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %..preheader3_crit_edge, label %4

..preheader3_crit_edge:                           ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 2
  %.pre = load i32, i32* %.phi.trans.insert, align 8, !tbaa !49
  br label %.preheader3

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 2
  %6 = load i32, i32* %5, align 8, !tbaa !49
  %7 = add nsw i32 %6, 1
  br label %.preheader3

.preheader3:                                      ; preds = %..preheader3_crit_edge, %4
  %.pre-phi = phi i32* [ %.phi.trans.insert, %..preheader3_crit_edge ], [ %5, %4 ]
  %8 = phi i32 [ %6, %4 ], [ %.pre, %..preheader3_crit_edge ]
  %next_sort.0.ph = phi i32 [ %7, %4 ], [ %2, %..preheader3_crit_edge ]
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %.preheader3
  %10 = load i32, i32* %.global_tid., align 4
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %12 = bitcast double** %11 to i64*
  %13 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 5
  %14 = bitcast double** %13 to i64*
  %15 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 5
  %16 = bitcast double** %15 to i64*
  %17 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 6
  %18 = bitcast double** %17 to i64*
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %20 = bitcast double** %19 to i64*
  %21 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 7
  %22 = bitcast double** %21 to i64*
  %23 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 10
  %24 = bitcast double** %23 to i64*
  %25 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 8
  %26 = bitcast double** %25 to i64*
  %27 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %28 = getelementptr inbounds %class.Integrate, %class.Integrate* %this, i64 0, i32 3
  %29 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 0
  %30 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %31 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %32 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  %33 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %34 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  %35 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %36 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %37 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %38 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %39 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 0
  %40 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 0
  %41 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %42 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  br label %43

; <label>:43                                      ; preds = %.backedge, %.lr.ph26
  %next_sort.025 = phi i32 [ %next_sort.0.ph, %.lr.ph26 ], [ %next_sort.2, %.backedge ]
  %n.024 = phi i32 [ 0, %.lr.ph26 ], [ %58, %.backedge ]
  tail call void @__kmpc_barrier(%ident_t* nonnull @3, i32 %10) #8
  %44 = load i64, i64* %12, align 8, !tbaa !80
  store i64 %44, i64* %14, align 8, !tbaa !81
  %45 = load i64, i64* %16, align 8, !tbaa !82
  store i64 %45, i64* %18, align 8, !tbaa !83
  %46 = load i64, i64* %20, align 8, !tbaa !84
  store i64 %46, i64* %22, align 8, !tbaa !85
  %47 = load i64, i64* %24, align 8, !tbaa !86
  store i64 %47, i64* %26, align 8, !tbaa !87
  %48 = load i32, i32* %27, align 4, !tbaa !88
  store i32 %48, i32* %28, align 4, !tbaa !77
  invoke void @_ZN9Integrate16initialIntegrateEv(%class.Integrate* nonnull %this)
          to label %49 unwind label %246

; <label>:49                                      ; preds = %43
  %50 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

; <label>:52                                      ; preds = %49
  invoke void @_ZN5Timer5stampEv(%class.Timer* nonnull %timer)
          to label %53 unwind label %54

; <label>:53                                      ; preds = %52
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %57

; <label>:54                                      ; preds = %52
  %55 = landingpad { i8*, i32 }
          catch i8* null
  %56 = extractvalue { i8*, i32 } %55, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:57                                      ; preds = %53, %49
  %58 = add nuw nsw i32 %n.024, 1
  %59 = load i32, i32* %29, align 8, !tbaa !54
  %60 = srem i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

; <label>:62                                      ; preds = %57
  invoke void @_ZN4Comm11communicateER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %63 unwind label %246

; <label>:63                                      ; preds = %62
  %64 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %199, label %66

; <label>:66                                      ; preds = %63
  invoke void @_ZN5Timer5stampEi(%class.Timer* nonnull %timer, i32 1)
          to label %67 unwind label %68

; <label>:67                                      ; preds = %66
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %199

; <label>:68                                      ; preds = %66
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:71                                      ; preds = %57
  %72 = load i32, i32* %check_safeexchange, align 4, !tbaa !1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %150, label %74

; <label>:74                                      ; preds = %71
  %75 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %150, label %.preheader2

.preheader2:                                      ; preds = %74
  %77 = load i32, i32* %27, align 4, !tbaa !88
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader2
  %79 = load double*, double** %13, align 8
  %80 = load double*, double** %25, align 8
  %81 = load double, double* %36, align 8
  %82 = fsub double -0.000000e+00, %81
  %83 = load double, double* %37, align 8
  %84 = fsub double -0.000000e+00, %83
  %85 = load double, double* %38, align 8
  %86 = fsub double -0.000000e+00, %85
  %87 = sext i32 %77 to i64
  br label %88

; <label>:88                                      ; preds = %88, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %d_max.020 = phi double [ 0.000000e+00, %.lr.ph ], [ %d_max.1, %88 ]
  %89 = mul nuw nsw i64 %indvars.iv, 3
  %90 = getelementptr inbounds double, double* %79, i64 %89
  %91 = load double, double* %90, align 8, !tbaa !32
  %92 = getelementptr inbounds double, double* %80, i64 %89
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fsub double %91, %93
  %95 = fcmp ogt double %94, %81
  %96 = fsub double %94, %81
  %dx.0 = select i1 %95, double %96, double %94
  %97 = fcmp olt double %dx.0, %82
  %98 = fadd double %81, %dx.0
  %dx.1 = select i1 %97, double %98, double %dx.0
  %99 = add nuw nsw i64 %89, 1
  %100 = getelementptr inbounds double, double* %79, i64 %99
  %101 = load double, double* %100, align 8, !tbaa !32
  %102 = getelementptr inbounds double, double* %80, i64 %99
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %101, %103
  %105 = fcmp ogt double %104, %83
  %106 = fsub double %104, %83
  %dy.0 = select i1 %105, double %106, double %104
  %107 = fcmp olt double %dy.0, %84
  %108 = fadd double %83, %dy.0
  %dy.1 = select i1 %107, double %108, double %dy.0
  %109 = add nuw nsw i64 %89, 2
  %110 = getelementptr inbounds double, double* %79, i64 %109
  %111 = load double, double* %110, align 8, !tbaa !32
  %112 = getelementptr inbounds double, double* %80, i64 %109
  %113 = load double, double* %112, align 8, !tbaa !32
  %114 = fsub double %111, %113
  %115 = fcmp ogt double %114, %85
  %116 = fsub double %114, %85
  %dz.0 = select i1 %115, double %116, double %114
  %117 = fcmp olt double %dz.0, %86
  %118 = fadd double %85, %dz.0
  %dz.1 = select i1 %117, double %118, double %dz.0
  %119 = fmul double %dx.1, %dx.1
  %120 = fmul double %dy.1, %dy.1
  %121 = fadd double %119, %120
  %122 = fmul double %dz.1, %dz.1
  %123 = fadd double %121, %122
  %124 = fcmp ogt double %123, %d_max.020
  %d_max.1 = select i1 %124, double %123, double %d_max.020
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %125 = icmp slt i64 %indvars.iv.next, %87
  br i1 %125, label %88, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %88
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader2
  %d_max.0.lcssa = phi double [ 0.000000e+00, %.preheader2 ], [ %d_max.1, %._crit_edge.loopexit ]
  %126 = tail call double @sqrt(double %d_max.0.lcssa) #8
  %127 = load double, double* %30, align 8, !tbaa !89
  %128 = load double, double* %31, align 8, !tbaa !90
  %129 = fsub double %127, %128
  %130 = fcmp ogt double %126, %129
  br i1 %130, label %._crit_edge._crit_edge, label %131

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre1 = load double, double* %32, align 8, !tbaa !91
  %.pre2 = load double, double* %33, align 8, !tbaa !92
  br label %141

; <label>:131                                     ; preds = %._crit_edge
  %132 = load double, double* %32, align 8, !tbaa !91
  %133 = load double, double* %33, align 8, !tbaa !92
  %134 = fsub double %132, %133
  %135 = fcmp ogt double %126, %134
  br i1 %135, label %141, label %136

; <label>:136                                     ; preds = %131
  %137 = load double, double* %34, align 8, !tbaa !93
  %138 = load double, double* %35, align 8, !tbaa !94
  %139 = fsub double %137, %138
  %140 = fcmp ogt double %126, %139
  br i1 %140, label %141, label %149

; <label>:141                                     ; preds = %._crit_edge._crit_edge, %136, %131
  %142 = phi double [ %.pre2, %._crit_edge._crit_edge ], [ %133, %136 ], [ %133, %131 ]
  %143 = phi double [ %.pre1, %._crit_edge._crit_edge ], [ %132, %136 ], [ %132, %131 ]
  %144 = fsub double %143, %142
  %145 = load double, double* %34, align 8, !tbaa !93
  %146 = load double, double* %35, align 8, !tbaa !94
  %147 = fsub double %145, %146
  %148 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([227 x i8], [227 x i8]* @.str.1.55, i64 0, i64 0), double %126, double %129, double %144, double %147)
  br label %149

; <label>:149                                     ; preds = %141, %136
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %150

; <label>:150                                     ; preds = %149, %74, %71
  %151 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

; <label>:153                                     ; preds = %150
  invoke void @_ZN5Timer17stamp_extra_startEv(%class.Timer* nonnull %timer)
          to label %154 unwind label %155

; <label>:154                                     ; preds = %153
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %158

; <label>:155                                     ; preds = %153
  %156 = landingpad { i8*, i32 }
          catch i8* null
  %157 = extractvalue { i8*, i32 } %156, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:158                                     ; preds = %154, %150
  invoke void @_ZN4Comm8exchangeER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %159 unwind label %246

; <label>:159                                     ; preds = %158
  %160 = icmp slt i32 %58, %next_sort.025
  br i1 %160, label %165, label %161

; <label>:161                                     ; preds = %159
  invoke void @_ZN4Atom4sortER8Neighbor(%class.Atom* nonnull %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor)
          to label %162 unwind label %246

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %1, align 8, !tbaa !53
  %164 = add nsw i32 %163, %next_sort.025
  br label %165

; <label>:165                                     ; preds = %162, %159
  %next_sort.1 = phi i32 [ %164, %162 ], [ %next_sort.025, %159 ]
  invoke void @_ZN4Comm7bordersER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %166 unwind label %246

; <label>:166                                     ; preds = %165
  %167 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

; <label>:169                                     ; preds = %166
  invoke void @_ZN5Timer16stamp_extra_stopEi(%class.Timer* nonnull %timer, i32 4)
          to label %170 unwind label %172

; <label>:170                                     ; preds = %169
  invoke void @_ZN5Timer5stampEi(%class.Timer* nonnull %timer, i32 1)
          to label %171 unwind label %172

; <label>:171                                     ; preds = %170
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %175

; <label>:172                                     ; preds = %170, %169
  %173 = landingpad { i8*, i32 }
          catch i8* null
  %174 = extractvalue { i8*, i32 } %173, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:175                                     ; preds = %171, %166
  %176 = load i32, i32* %check_safeexchange, align 4, !tbaa !1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %175
  %178 = load i32, i32* %27, align 4, !tbaa !88
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %.lr.ph23, label %.loopexit

.lr.ph23:                                         ; preds = %.preheader
  %180 = load double*, double** %13, align 8
  %181 = load double*, double** %25, align 8
  %182 = mul nsw i32 %178, 3
  %183 = sext i32 %182 to i64
  br label %184

; <label>:184                                     ; preds = %184, %.lr.ph23
  %indvars.iv46 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next47, %184 ]
  %185 = getelementptr inbounds double, double* %180, i64 %indvars.iv46
  %186 = bitcast double* %185 to i64*
  %187 = load i64, i64* %186, align 8, !tbaa !32
  %188 = getelementptr inbounds double, double* %181, i64 %indvars.iv46
  %189 = bitcast double* %188 to i64*
  store i64 %187, i64* %189, align 8, !tbaa !32
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %190 = icmp slt i64 %indvars.iv.next47, %183
  br i1 %190, label %184, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %184
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %175
  tail call void @__kmpc_barrier(%ident_t* nonnull @3, i32 %10) #8
  invoke void @_ZN8Neighbor5buildER4Atom(%class.Neighbor* nonnull %neighbor, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %191 unwind label %246

; <label>:191                                     ; preds = %.loopexit
  %192 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

; <label>:194                                     ; preds = %191
  invoke void @_ZN5Timer5stampEi(%class.Timer* nonnull %timer, i32 3)
          to label %195 unwind label %196

; <label>:195                                     ; preds = %194
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %199

; <label>:196                                     ; preds = %194
  %197 = landingpad { i8*, i32 }
          catch i8* null
  %198 = extractvalue { i8*, i32 } %197, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:199                                     ; preds = %195, %191, %67, %63
  %next_sort.2 = phi i32 [ %next_sort.025, %67 ], [ %next_sort.025, %63 ], [ %next_sort.1, %195 ], [ %next_sort.1, %191 ]
  %200 = load i32, i32* %39, align 8, !tbaa !60
  %201 = srem i32 %58, %200
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %205 = getelementptr inbounds %class.Force, %class.Force* %204, i64 0, i32 5
  store i32 %203, i32* %205, align 8, !tbaa !72
  %206 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  %207 = bitcast %class.Force* %206 to void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)***
  %208 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)**, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*** %207, align 8, !tbaa !66
  %209 = getelementptr inbounds void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %208, i64 4
  %210 = load void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)*, void (%class.Force*, %class.Atom*, %class.Neighbor*, %class.Comm*, i32)** %209, align 8
  %211 = load i32, i32* %40, align 8, !tbaa !95
  invoke void %210(%class.Force* %206, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, i32 %211)
          to label %212 unwind label %246

; <label>:212                                     ; preds = %199
  %213 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

; <label>:215                                     ; preds = %212
  invoke void @_ZN5Timer5stampEi(%class.Timer* nonnull %timer, i32 2)
          to label %216 unwind label %217

; <label>:216                                     ; preds = %215
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %220

; <label>:217                                     ; preds = %215
  %218 = landingpad { i8*, i32 }
          catch i8* null
  %219 = extractvalue { i8*, i32 } %218, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:220                                     ; preds = %216, %212
  %221 = load i32, i32* %41, align 4, !tbaa !40
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %235, label %223

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %42, align 8, !tbaa !34
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %235, label %226

; <label>:226                                     ; preds = %223
  invoke void @_ZN4Comm19reverse_communicateER4Atom(%class.Comm* nonnull %comm, %class.Atom* nonnull dereferenceable(224) %atom)
          to label %227 unwind label %246

; <label>:227                                     ; preds = %226
  %228 = tail call i32 @__kmpc_master(%ident_t* nonnull @1, i32 %10) #8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %235, label %230

; <label>:230                                     ; preds = %227
  invoke void @_ZN5Timer5stampEi(%class.Timer* nonnull %timer, i32 1)
          to label %231 unwind label %232

; <label>:231                                     ; preds = %230
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %235

; <label>:232                                     ; preds = %230
  %233 = landingpad { i8*, i32 }
          catch i8* null
  %234 = extractvalue { i8*, i32 } %233, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @1, i32 %10) #8
  br label %249

; <label>:235                                     ; preds = %231, %227, %223, %220
  %236 = load i64, i64* %16, align 8, !tbaa !82
  store i64 %236, i64* %18, align 8, !tbaa !83
  %237 = load i64, i64* %20, align 8, !tbaa !84
  store i64 %237, i64* %22, align 8, !tbaa !85
  %238 = load i32, i32* %27, align 4, !tbaa !88
  store i32 %238, i32* %28, align 4, !tbaa !77
  tail call void @__kmpc_barrier(%ident_t* nonnull @3, i32 %10) #8
  invoke void @_ZN9Integrate14finalIntegrateEv(%class.Integrate* %this)
          to label %239 unwind label %246

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* %39, align 8, !tbaa !60
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %.backedge, label %244

.backedge:                                        ; preds = %244, %239
  %242 = load i32, i32* %.pre-phi, align 8, !tbaa !49
  %243 = icmp slt i32 %58, %242
  br i1 %243, label %43, label %._crit_edge27.loopexit

; <label>:244                                     ; preds = %239
  %245 = load %class.Force*, %class.Force** %force, align 8, !tbaa !5
  invoke void @_ZN6Thermo7computeEiR4AtomR8NeighborP5ForceR5TimerR4Comm(%class.Thermo* nonnull %thermo, i32 %58, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Force* %245, %class.Timer* nonnull dereferenceable(24) %timer, %class.Comm* nonnull dereferenceable(336) %comm)
          to label %.backedge unwind label %246

._crit_edge27.loopexit:                           ; preds = %.backedge
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %.preheader3
  ret void

; <label>:246                                     ; preds = %244, %235, %226, %199, %.loopexit, %165, %161, %158, %62, %43
  %247 = landingpad { i8*, i32 }
          catch i8* null
  %248 = extractvalue { i8*, i32 } %247, 0
  tail call void @__clang_call_terminate(i8* %248) #19
  unreachable

; <label>:249                                     ; preds = %232, %217, %196, %172, %155, %68, %54
  %.0 = phi i8* [ %234, %232 ], [ %219, %217 ], [ %70, %68 ], [ %198, %196 ], [ %174, %172 ], [ %157, %155 ], [ %56, %54 ]
  tail call void @__clang_call_terminate(i8* %.0) #19
  unreachable
}

declare i32 @__kmpc_master(%ident_t*, i32)

declare void @__kmpc_end_master(%ident_t*, i32)

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: norecurse nounwind uwtable
define void @_ZN4AtomC2Ei(%class.Atom* nocapture %this, i32 %ntypes_) unnamed_addr #9 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 21
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 14
  %4 = bitcast %class.Atom* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 8, i1 false)
  %5 = bitcast i32** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  %6 = bitcast double** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 28, i32 8, i1 false)
  store i32 3, i32* %3, align 8, !tbaa !96
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 15
  store i32 3, i32* %7, align 4, !tbaa !97
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 16
  store i32 4, i32* %8, align 8, !tbaa !98
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 13
  store double 1.000000e+00, double* %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 7
  store i32 %ntypes_, i32* %10, align 8, !tbaa !71
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @_ZN4AtomD2Ev(%class.Atom* nocapture readonly %this) unnamed_addr #11 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %2 = load i32, i32* %1, align 4, !tbaa !99
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %6 = load double*, double** %5, align 8, !tbaa !80
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %6)
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %8 = load double*, double** %7, align 8, !tbaa !82
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %8)
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 6
  %10 = load double*, double** %9, align 8, !tbaa !84
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %10)
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 10
  %12 = load double*, double** %11, align 8, !tbaa !86
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %12)
  %13 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %14 = load i32*, i32** %13, align 8, !tbaa !100
  tail call void @_ZN4Atom20destroy_1d_int_arrayEPi(%class.Atom* undef, i32* %14)
  br label %15

; <label>:15                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* nocapture readnone %this, double* %array) #11 align 2 {
  %1 = icmp eq double* %array, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast double* %array to i8*
  tail call void @free(i8* %3) #8
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind uwtable
define void @_ZN4Atom20destroy_1d_int_arrayEPi(%class.Atom* nocapture readnone %this, i32* %array) #11 align 2 {
  %1 = icmp eq i32* %array, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast i32* %array to i8*
  tail call void @free(i8* %3) #8
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN4Atom9growarrayEv(%class.Atom* nocapture %this) #11 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %2 = load i32, i32* %1, align 4, !tbaa !99
  %3 = add nsw i32 %2, 20000
  store i32 %3, i32* %1, align 4, !tbaa !99
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %5 = load double*, double** %4, align 8, !tbaa !80
  %6 = mul nsw i32 %2, 3
  %7 = tail call double* @_ZN4Atom26realloc_2d_MMD_float_arrayEPdiii(%class.Atom* %this, double* %5, i32 %3, i32 3, i32 %6)
  store double* %7, double** %4, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %9 = load double*, double** %8, align 8, !tbaa !82
  %10 = load i32, i32* %1, align 4, !tbaa !99
  %11 = tail call double* @_ZN4Atom26realloc_2d_MMD_float_arrayEPdiii(%class.Atom* %this, double* %9, i32 %10, i32 3, i32 %6)
  store double* %11, double** %8, align 8, !tbaa !82
  %12 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 6
  %13 = load double*, double** %12, align 8, !tbaa !84
  %14 = load i32, i32* %1, align 4, !tbaa !99
  %15 = tail call double* @_ZN4Atom26realloc_2d_MMD_float_arrayEPdiii(%class.Atom* %this, double* %13, i32 %14, i32 3, i32 %6)
  store double* %15, double** %12, align 8, !tbaa !84
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %17 = load i32*, i32** %16, align 8, !tbaa !100
  %18 = load i32, i32* %1, align 4, !tbaa !99
  %19 = tail call i32* @_ZN4Atom20realloc_1d_int_arrayEPiii(%class.Atom* %this, i32* %17, i32 %18, i32 %2)
  store i32* %19, i32** %16, align 8, !tbaa !100
  %20 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 10
  %21 = load double*, double** %20, align 8, !tbaa !86
  %22 = load i32, i32* %1, align 4, !tbaa !99
  %23 = tail call double* @_ZN4Atom26realloc_2d_MMD_float_arrayEPdiii(%class.Atom* %this, double* %21, i32 %22, i32 3, i32 %6)
  store double* %23, double** %20, align 8, !tbaa !86
  %24 = load double*, double** %4, align 8, !tbaa !80
  %25 = icmp eq double* %24, null
  br i1 %25, label %33, label %26

; <label>:26                                      ; preds = %0
  %27 = load double*, double** %8, align 8, !tbaa !82
  %28 = icmp eq double* %27, null
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %26
  %30 = load double*, double** %12, align 8, !tbaa !84
  %31 = icmp eq double* %30, null
  %32 = icmp eq double* %23, null
  %or.cond = or i1 %32, %31
  br i1 %or.cond, label %33, label %34

; <label>:33                                      ; preds = %29, %26, %0
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @str.60, i64 0, i64 0))
  br label %34

; <label>:34                                      ; preds = %33, %29
  ret void
}

; Function Attrs: nounwind uwtable
define noalias double* @_ZN4Atom26realloc_2d_MMD_float_arrayEPdiii(%class.Atom* nocapture readnone %this, double* %array, i32 %n1, i32 %n2, i32 %nold) #11 align 2 {
  %1 = tail call double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* undef, i32 %n1, i32 %n2)
  %2 = icmp eq i32 %nold, 0
  br i1 %2, label %8, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast double* %1 to i8*
  %5 = bitcast double* %array to i8*
  %6 = sext i32 %nold to i64
  %7 = shl nsw i64 %6, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %7, i32 8, i1 false)
  br label %8

; <label>:8                                       ; preds = %3, %0
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %array)
  ret double* %1
}

; Function Attrs: nounwind uwtable
define noalias double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* nocapture readnone %this, i32 %n1, i32 %n2) #11 align 2 {
  %1 = mul nsw i32 %n2, %n1
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %1, 1025
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias i8* @malloc(i64 %6) #8
  %8 = bitcast i8* %7 to double*
  br label %9

; <label>:9                                       ; preds = %3, %0
  %.0 = phi double* [ %8, %3 ], [ null, %0 ]
  ret double* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define noalias i32* @_ZN4Atom20realloc_1d_int_arrayEPiii(%class.Atom* nocapture readnone %this, i32* %array, i32 %n1, i32 %nold) #11 align 2 {
  %1 = tail call i32* @_ZN4Atom19create_1d_int_arrayEi(%class.Atom* undef, i32 %n1)
  %2 = icmp eq i32 %nold, 0
  br i1 %2, label %8, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast i32* %1 to i8*
  %5 = bitcast i32* %array to i8*
  %6 = sext i32 %nold to i64
  %7 = shl nsw i64 %6, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %7, i32 4, i1 false)
  br label %8

; <label>:8                                       ; preds = %3, %0
  tail call void @_ZN4Atom20destroy_1d_int_arrayEPi(%class.Atom* undef, i32* %array)
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define noalias i32* @_ZN4Atom19create_1d_int_arrayEi(%class.Atom* nocapture readnone %this, i32 %n1) #11 align 2 {
  %1 = icmp eq i32 %n1, 0
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %n1 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call noalias i8* @malloc(i64 %4) #8
  %6 = bitcast i8* %5 to i32*
  br label %7

; <label>:7                                       ; preds = %2, %0
  %.0 = phi i32* [ %6, %2 ], [ null, %0 ]
  ret i32* %.0
}

; Function Attrs: nounwind uwtable
define void @_ZN4Atom7addatomEdddddd(%class.Atom* nocapture %this, double %x_in, double %y_in, double %z_in, double %vx_in, double %vy_in, double %vz_in) #11 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %4 = load i32, i32* %3, align 4, !tbaa !99
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @_ZN4Atom9growarrayEv(%class.Atom* nonnull %this)
  %.pre = load i32, i32* %1, align 4, !tbaa !88
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = phi i32 [ %.pre, %6 ], [ %2, %0 ]
  %9 = mul nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %12 = load double*, double** %11, align 8, !tbaa !80
  %13 = getelementptr inbounds double, double* %12, i64 %10
  store double %x_in, double* %13, align 8, !tbaa !32
  %14 = load i32, i32* %1, align 4, !tbaa !88
  %15 = mul nsw i32 %14, 3
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load double*, double** %11, align 8, !tbaa !80
  %19 = getelementptr inbounds double, double* %18, i64 %17
  store double %y_in, double* %19, align 8, !tbaa !32
  %20 = load i32, i32* %1, align 4, !tbaa !88
  %21 = mul nsw i32 %20, 3
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = load double*, double** %11, align 8, !tbaa !80
  %25 = getelementptr inbounds double, double* %24, i64 %23
  store double %z_in, double* %25, align 8, !tbaa !32
  %26 = load i32, i32* %1, align 4, !tbaa !88
  %27 = mul nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %30 = load double*, double** %29, align 8, !tbaa !82
  %31 = getelementptr inbounds double, double* %30, i64 %28
  store double %vx_in, double* %31, align 8, !tbaa !32
  %32 = load i32, i32* %1, align 4, !tbaa !88
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load double*, double** %29, align 8, !tbaa !82
  %37 = getelementptr inbounds double, double* %36, i64 %35
  store double %vy_in, double* %37, align 8, !tbaa !32
  %38 = load i32, i32* %1, align 4, !tbaa !88
  %39 = mul nsw i32 %38, 3
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = load double*, double** %29, align 8, !tbaa !82
  %43 = getelementptr inbounds double, double* %42, i64 %41
  store double %vz_in, double* %43, align 8, !tbaa !32
  %44 = tail call i32 @rand() #8
  %45 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 7
  %46 = load i32, i32* %45, align 8, !tbaa !71
  %47 = srem i32 %44, %46
  %48 = load i32, i32* %1, align 4, !tbaa !88
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %51 = load i32*, i32** %50, align 8, !tbaa !100
  %52 = getelementptr inbounds i32, i32* %51, i64 %49
  store i32 %47, i32* %52, align 4, !tbaa !1
  %53 = load i32, i32* %1, align 4, !tbaa !88
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4, !tbaa !88
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #5

; Function Attrs: uwtable
define void @_ZN4Atom3pbcEv(%class.Atom* nocapture readonly %this) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = add nsw i32 %3, -1
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %71

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 %4, i32* %.omp.ub, align 4, !tbaa !1
  %9 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %10 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %11 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, %4
  %13 = select i1 %12, i32 %4, i32 %11
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %14 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %15 = icmp sgt i32 %14, %13
  br i1 %15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %6
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 0
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 1
  %20 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 2
  %21 = sext i32 %14 to i64
  %22 = sext i32 %13 to i64
  br label %23

; <label>:23                                      ; preds = %68, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %68 ], [ %21, %.lr.ph ]
  %.omp.iv.02 = phi i32 [ %69, %68 ], [ %14, %.lr.ph ]
  %24 = mul nsw i32 %.omp.iv.02, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %17, i64 %25
  %27 = load double, double* %26, align 8, !tbaa !32
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %23
  %30 = load double, double* %18, align 8, !tbaa !61
  %31 = fadd double %27, %30
  store double %31, double* %26, align 8, !tbaa !32
  br label %32

; <label>:32                                      ; preds = %29, %23
  %33 = phi double [ %31, %29 ], [ %27, %23 ]
  %34 = load double, double* %18, align 8, !tbaa !61
  %35 = fcmp ult double %33, %34
  br i1 %35, label %38, label %36

; <label>:36                                      ; preds = %32
  %37 = fsub double %33, %34
  store double %37, double* %26, align 8, !tbaa !32
  br label %38

; <label>:38                                      ; preds = %36, %32
  %39 = add nsw i32 %24, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %17, i64 %40
  %42 = load double, double* %41, align 8, !tbaa !32
  %43 = fcmp olt double %42, 0.000000e+00
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %38
  %45 = load double, double* %19, align 8, !tbaa !62
  %46 = fadd double %42, %45
  store double %46, double* %41, align 8, !tbaa !32
  br label %47

; <label>:47                                      ; preds = %44, %38
  %48 = phi double [ %46, %44 ], [ %42, %38 ]
  %49 = load double, double* %19, align 8, !tbaa !62
  %50 = fcmp ult double %48, %49
  br i1 %50, label %53, label %51

; <label>:51                                      ; preds = %47
  %52 = fsub double %48, %49
  store double %52, double* %41, align 8, !tbaa !32
  br label %53

; <label>:53                                      ; preds = %51, %47
  %54 = add nsw i32 %24, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %17, i64 %55
  %57 = load double, double* %56, align 8, !tbaa !32
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %53
  %60 = load double, double* %20, align 8, !tbaa !63
  %61 = fadd double %57, %60
  store double %61, double* %56, align 8, !tbaa !32
  br label %62

; <label>:62                                      ; preds = %59, %53
  %63 = phi double [ %61, %59 ], [ %57, %53 ]
  %64 = load double, double* %20, align 8, !tbaa !63
  %65 = fcmp ult double %63, %64
  br i1 %65, label %68, label %66

; <label>:66                                      ; preds = %62
  %67 = fsub double %63, %64
  store double %67, double* %56, align 8, !tbaa !32
  br label %68

; <label>:68                                      ; preds = %66, %62
  %69 = add nsw i32 %.omp.iv.02, 1
  %70 = icmp slt i64 %indvars.iv, %22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %70, label %23, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %71

; <label>:71                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %8, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %9, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %10, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN4Atom4copyEii(%class.Atom* nocapture readonly %this, i32 %i, i32 %j) #9 align 2 {
  %1 = mul nsw i32 %i, 3
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %4 = load double*, double** %3, align 8, !tbaa !80
  %5 = getelementptr inbounds double, double* %4, i64 %2
  %6 = bitcast double* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !32
  %8 = mul nsw i32 %j, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %4, i64 %9
  %11 = bitcast double* %10 to i64*
  store i64 %7, i64* %11, align 8, !tbaa !32
  %12 = add nsw i32 %1, 1
  %13 = sext i32 %12 to i64
  %14 = load double*, double** %3, align 8, !tbaa !80
  %15 = getelementptr inbounds double, double* %14, i64 %13
  %16 = bitcast double* %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !32
  %18 = add nsw i32 %8, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %14, i64 %19
  %21 = bitcast double* %20 to i64*
  store i64 %17, i64* %21, align 8, !tbaa !32
  %22 = add nsw i32 %1, 2
  %23 = sext i32 %22 to i64
  %24 = load double*, double** %3, align 8, !tbaa !80
  %25 = getelementptr inbounds double, double* %24, i64 %23
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !32
  %28 = add nsw i32 %8, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %24, i64 %29
  %31 = bitcast double* %30 to i64*
  store i64 %27, i64* %31, align 8, !tbaa !32
  %32 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %33 = load double*, double** %32, align 8, !tbaa !82
  %34 = getelementptr inbounds double, double* %33, i64 %2
  %35 = bitcast double* %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !32
  %37 = getelementptr inbounds double, double* %33, i64 %9
  %38 = bitcast double* %37 to i64*
  store i64 %36, i64* %38, align 8, !tbaa !32
  %39 = load double*, double** %32, align 8, !tbaa !82
  %40 = getelementptr inbounds double, double* %39, i64 %13
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !32
  %43 = getelementptr inbounds double, double* %39, i64 %19
  %44 = bitcast double* %43 to i64*
  store i64 %42, i64* %44, align 8, !tbaa !32
  %45 = load double*, double** %32, align 8, !tbaa !82
  %46 = getelementptr inbounds double, double* %45, i64 %23
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !32
  %49 = getelementptr inbounds double, double* %45, i64 %29
  %50 = bitcast double* %49 to i64*
  store i64 %48, i64* %50, align 8, !tbaa !32
  %51 = sext i32 %i to i64
  %52 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %53 = load i32*, i32** %52, align 8, !tbaa !100
  %54 = getelementptr inbounds i32, i32* %53, i64 %51
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = sext i32 %j to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %55, i32* %57, align 4, !tbaa !1
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Atom9pack_commEiPiPdS0_(%class.Atom* nocapture readonly %this, i32 %n, i32* nocapture readonly %list, double* nocapture %buf, i32* nocapture readonly %pbc_flags) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %.omp.lb6 = alloca i32, align 4
  %.omp.ub7 = alloca i32, align 4
  %.omp.stride8 = alloca i32, align 4
  %.omp.is_last9 = alloca i32, align 4
  %2 = load i32, i32* %pbc_flags, align 4, !tbaa !1
  %3 = icmp eq i32 %2, 0
  %4 = add nsw i32 %n, -1
  %5 = icmp sgt i32 %n, 0
  br i1 %3, label %6, label %54

; <label>:6                                       ; preds = %0
  br i1 %5, label %7, label %._crit_edge2

._crit_edge2:                                     ; preds = %6
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre3 = bitcast i32* %.omp.stride to i8*
  %.pre5 = bitcast i32* %.omp.ub to i8*
  %.pre7 = bitcast i32* %.omp.lb to i8*
  br label %53

; <label>:7                                       ; preds = %6
  %8 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %9 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #8
  store i32 %4, i32* %.omp.ub, align 4, !tbaa !1
  %10 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %11 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %12 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %13 = icmp sgt i32 %12, %4
  %14 = select i1 %13, i32 %4, i32 %12
  store i32 %14, i32* %.omp.ub, align 4, !tbaa !1
  %15 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %16 = icmp sgt i32 %15, %14
  br i1 %16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %7
  %17 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %18 = load double*, double** %17, align 8
  %19 = sext i32 %15 to i64
  %20 = sext i32 %14 to i64
  br label %21

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ %19, %.lr.ph ]
  %.omp.iv.011 = phi i32 [ %51, %21 ], [ %15, %.lr.ph ]
  %22 = getelementptr inbounds i32, i32* %list, i64 %indvars.iv
  %23 = load i32, i32* %22, align 4, !tbaa !1
  %24 = mul nsw i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %18, i64 %25
  %27 = bitcast double* %26 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !32
  %29 = mul nsw i32 %.omp.iv.011, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %buf, i64 %30
  %32 = bitcast double* %31 to i64*
  store i64 %28, i64* %32, align 8, !tbaa !32
  %33 = add nsw i32 %24, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %18, i64 %34
  %36 = bitcast double* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !32
  %38 = add nsw i32 %29, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %buf, i64 %39
  %41 = bitcast double* %40 to i64*
  store i64 %37, i64* %41, align 8, !tbaa !32
  %42 = add nsw i32 %24, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %18, i64 %43
  %45 = bitcast double* %44 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !32
  %47 = add nsw i32 %29, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %buf, i64 %48
  %50 = bitcast double* %49 to i64*
  store i64 %46, i64* %50, align 8, !tbaa !32
  %51 = add nsw i32 %.omp.iv.011, 1
  %52 = icmp slt i64 %indvars.iv, %20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %52, label %21, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %7
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %53

; <label>:53                                      ; preds = %._crit_edge2, %._crit_edge
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge2 ], [ %8, %._crit_edge ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge2 ], [ %9, %._crit_edge ]
  %.pre-phi4 = phi i8* [ %.pre3, %._crit_edge2 ], [ %10, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge2 ], [ %11, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  br label %117

; <label>:54                                      ; preds = %0
  br i1 %5, label %55, label %._crit_edge1

._crit_edge1:                                     ; preds = %54
  %.pre9 = bitcast i32* %.omp.is_last9 to i8*
  %.pre11 = bitcast i32* %.omp.stride8 to i8*
  %.pre13 = bitcast i32* %.omp.ub7 to i8*
  %.pre15 = bitcast i32* %.omp.lb6 to i8*
  br label %116

; <label>:55                                      ; preds = %54
  %56 = bitcast i32* %.omp.lb6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #8
  store i32 0, i32* %.omp.lb6, align 4, !tbaa !1
  %57 = bitcast i32* %.omp.ub7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #8
  store i32 %4, i32* %.omp.ub7, align 4, !tbaa !1
  %58 = bitcast i32* %.omp.stride8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #8
  store i32 1, i32* %.omp.stride8, align 4, !tbaa !1
  %59 = bitcast i32* %.omp.is_last9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #8
  store i32 0, i32* %.omp.is_last9, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last9, i32* nonnull %.omp.lb6, i32* nonnull %.omp.ub7, i32* nonnull %.omp.stride8, i32 1, i32 1)
  %60 = load i32, i32* %.omp.ub7, align 4, !tbaa !1
  %61 = icmp sgt i32 %60, %4
  %62 = select i1 %61, i32 %4, i32 %60
  store i32 %62, i32* %.omp.ub7, align 4, !tbaa !1
  %63 = load i32, i32* %.omp.lb6, align 4, !tbaa !1
  %64 = icmp sgt i32 %63, %62
  br i1 %64, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %55
  %65 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %66 = load double*, double** %65, align 8
  %67 = getelementptr inbounds i32, i32* %pbc_flags, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 0
  %71 = getelementptr inbounds i32, i32* %pbc_flags, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to double
  %74 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 1
  %75 = getelementptr inbounds i32, i32* %pbc_flags, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to double
  %78 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 2
  %79 = sext i32 %63 to i64
  %80 = sext i32 %62 to i64
  br label %81

; <label>:81                                      ; preds = %81, %.lr.ph14
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %81 ], [ %79, %.lr.ph14 ]
  %.omp.iv3.012 = phi i32 [ %114, %81 ], [ %63, %.lr.ph14 ]
  %82 = getelementptr inbounds i32, i32* %list, i64 %indvars.iv16
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = mul nsw i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %66, i64 %85
  %87 = load double, double* %86, align 8, !tbaa !32
  %88 = load double, double* %70, align 8, !tbaa !61
  %89 = fmul double %69, %88
  %90 = fadd double %87, %89
  %91 = mul nsw i32 %.omp.iv3.012, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %buf, i64 %92
  store double %90, double* %93, align 8, !tbaa !32
  %94 = add nsw i32 %84, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %66, i64 %95
  %97 = load double, double* %96, align 8, !tbaa !32
  %98 = load double, double* %74, align 8, !tbaa !62
  %99 = fmul double %73, %98
  %100 = fadd double %97, %99
  %101 = add nsw i32 %91, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %buf, i64 %102
  store double %100, double* %103, align 8, !tbaa !32
  %104 = add nsw i32 %84, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %66, i64 %105
  %107 = load double, double* %106, align 8, !tbaa !32
  %108 = load double, double* %78, align 8, !tbaa !63
  %109 = fmul double %77, %108
  %110 = fadd double %107, %109
  %111 = add nsw i32 %91, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %buf, i64 %112
  store double %110, double* %113, align 8, !tbaa !32
  %114 = add nsw i32 %.omp.iv3.012, 1
  %115 = icmp slt i64 %indvars.iv16, %80
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  br i1 %115, label %81, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %81
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %55
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %116

; <label>:116                                     ; preds = %._crit_edge1, %._crit_edge15
  %.pre-phi16 = phi i8* [ %.pre15, %._crit_edge1 ], [ %56, %._crit_edge15 ]
  %.pre-phi14 = phi i8* [ %.pre13, %._crit_edge1 ], [ %57, %._crit_edge15 ]
  %.pre-phi12 = phi i8* [ %.pre11, %._crit_edge1 ], [ %58, %._crit_edge15 ]
  %.pre-phi10 = phi i8* [ %.pre9, %._crit_edge1 ], [ %59, %._crit_edge15 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi10) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi12) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi14) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi16) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  br label %117

; <label>:117                                     ; preds = %116, %53
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Atom11unpack_commEiiPd(%class.Atom* nocapture readonly %this, i32 %n, i32 %first, double* nocapture readonly %buf) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %2 = add nsw i32 %n, -1
  %3 = icmp sgt i32 %n, 0
  br i1 %3, label %4, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %49

; <label>:4                                       ; preds = %0
  %5 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %6 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #8
  store i32 %2, i32* %.omp.ub, align 4, !tbaa !1
  %7 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %9 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %10 = icmp sgt i32 %9, %2
  %11 = select i1 %10, i32 %2, i32 %9
  store i32 %11, i32* %.omp.ub, align 4, !tbaa !1
  %12 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %15 = load double*, double** %14, align 8
  %16 = sext i32 %12 to i64
  %17 = sext i32 %11 to i64
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ %16, %.lr.ph ]
  %.omp.iv.03 = phi i32 [ %47, %18 ], [ %12, %.lr.ph ]
  %19 = mul nsw i32 %.omp.iv.03, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %buf, i64 %20
  %22 = bitcast double* %21 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !32
  %24 = add nsw i32 %.omp.iv.03, %first
  %25 = mul nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %15, i64 %26
  %28 = bitcast double* %27 to i64*
  store i64 %23, i64* %28, align 8, !tbaa !32
  %29 = add nsw i32 %19, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %buf, i64 %30
  %32 = bitcast double* %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !32
  %34 = add nsw i32 %25, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %15, i64 %35
  %37 = bitcast double* %36 to i64*
  store i64 %33, i64* %37, align 8, !tbaa !32
  %38 = add nsw i32 %19, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %buf, i64 %39
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !32
  %43 = add nsw i32 %25, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %15, i64 %44
  %46 = bitcast double* %45 to i64*
  store i64 %42, i64* %46, align 8, !tbaa !32
  %47 = add nsw i32 %.omp.iv.03, 1
  %48 = icmp slt i64 %indvars.iv, %17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %48, label %18, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %49

; <label>:49                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %5, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %6, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %8, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Atom12pack_reverseEiiPd(%class.Atom* nocapture readonly %this, i32 %n, i32 %first, double* nocapture %buf) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %2 = add nsw i32 %n, -1
  %3 = icmp sgt i32 %n, 0
  br i1 %3, label %4, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %49

; <label>:4                                       ; preds = %0
  %5 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %6 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #8
  store i32 %2, i32* %.omp.ub, align 4, !tbaa !1
  %7 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %9 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %10 = icmp sgt i32 %9, %2
  %11 = select i1 %10, i32 %2, i32 %9
  store i32 %11, i32* %.omp.ub, align 4, !tbaa !1
  %12 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 6
  %15 = load double*, double** %14, align 8
  %16 = sext i32 %12 to i64
  %17 = sext i32 %11 to i64
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ %16, %.lr.ph ]
  %.omp.iv.03 = phi i32 [ %47, %18 ], [ %12, %.lr.ph ]
  %19 = add nsw i32 %.omp.iv.03, %first
  %20 = mul nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %15, i64 %21
  %23 = bitcast double* %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !32
  %25 = mul nsw i32 %.omp.iv.03, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %buf, i64 %26
  %28 = bitcast double* %27 to i64*
  store i64 %24, i64* %28, align 8, !tbaa !32
  %29 = add nsw i32 %20, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %15, i64 %30
  %32 = bitcast double* %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !32
  %34 = add nsw i32 %25, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %buf, i64 %35
  %37 = bitcast double* %36 to i64*
  store i64 %33, i64* %37, align 8, !tbaa !32
  %38 = add nsw i32 %20, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %15, i64 %39
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !32
  %43 = add nsw i32 %25, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %buf, i64 %44
  %46 = bitcast double* %45 to i64*
  store i64 %42, i64* %46, align 8, !tbaa !32
  %47 = add nsw i32 %.omp.iv.03, 1
  %48 = icmp slt i64 %indvars.iv, %17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %48, label %18, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %49

; <label>:49                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %5, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %6, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %8, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Atom14unpack_reverseEiPiPd(%class.Atom* nocapture readonly %this, i32 %n, i32* nocapture readonly %list, double* nocapture readonly %buf) #13 align 2 {
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %2 = add nsw i32 %n, -1
  %3 = icmp sgt i32 %n, 0
  br i1 %3, label %4, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre2 = bitcast i32* %.omp.stride to i8*
  %.pre4 = bitcast i32* %.omp.ub to i8*
  %.pre6 = bitcast i32* %.omp.lb to i8*
  br label %50

; <label>:4                                       ; preds = %0
  %5 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %6 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #8
  store i32 %2, i32* %.omp.ub, align 4, !tbaa !1
  %7 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %8 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %9 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %10 = icmp sgt i32 %9, %2
  %11 = select i1 %10, i32 %2, i32 %9
  store i32 %11, i32* %.omp.ub, align 4, !tbaa !1
  %12 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 6
  %15 = load double*, double** %14, align 8
  %16 = sext i32 %12 to i64
  %17 = sext i32 %11 to i64
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ %16, %.lr.ph ]
  %.omp.iv.03 = phi i32 [ %48, %18 ], [ %12, %.lr.ph ]
  %19 = getelementptr inbounds i32, i32* %list, i64 %indvars.iv
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = mul nsw i32 %.omp.iv.03, 3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %buf, i64 %22
  %24 = load double, double* %23, align 8, !tbaa !32
  %25 = mul nsw i32 %20, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %15, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !32
  %29 = fadd double %24, %28
  store double %29, double* %27, align 8, !tbaa !32
  %30 = add nsw i32 %21, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %buf, i64 %31
  %33 = load double, double* %32, align 8, !tbaa !32
  %34 = add nsw i32 %25, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %15, i64 %35
  %37 = load double, double* %36, align 8, !tbaa !32
  %38 = fadd double %33, %37
  store double %38, double* %36, align 8, !tbaa !32
  %39 = add nsw i32 %21, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %buf, i64 %40
  %42 = load double, double* %41, align 8, !tbaa !32
  %43 = add nsw i32 %25, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %15, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !32
  %47 = fadd double %42, %46
  store double %47, double* %45, align 8, !tbaa !32
  %48 = add nsw i32 %.omp.iv.03, 1
  %49 = icmp slt i64 %indvars.iv, %17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %49, label %18, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %50

; <label>:50                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge1 ], [ %5, %._crit_edge ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge1 ], [ %6, %._crit_edge ]
  %.pre-phi3 = phi i8* [ %.pre2, %._crit_edge1 ], [ %7, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge1 ], [ %8, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi3) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_ZN4Atom11pack_borderEiPdPi(%class.Atom* nocapture readonly %this, i32 %i, double* nocapture %buf, i32* nocapture readonly %pbc_flags) #9 align 2 {
  %1 = load i32, i32* %pbc_flags, align 4, !tbaa !1
  %2 = icmp eq i32 %1, 0
  %3 = mul nsw i32 %i, 3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %6 = load double*, double** %5, align 8, !tbaa !80
  %7 = getelementptr inbounds double, double* %6, i64 %4
  %8 = load double, double* %7, align 8, !tbaa !32
  br i1 %2, label %9, label %33

; <label>:9                                       ; preds = %0
  store double %8, double* %buf, align 8, !tbaa !32
  %10 = add nsw i32 %3, 1
  %11 = sext i32 %10 to i64
  %12 = load double*, double** %5, align 8, !tbaa !80
  %13 = getelementptr inbounds double, double* %12, i64 %11
  %14 = bitcast double* %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !32
  %16 = getelementptr inbounds double, double* %buf, i64 1
  %17 = bitcast double* %16 to i64*
  store i64 %15, i64* %17, align 8, !tbaa !32
  %18 = add nsw i32 %3, 2
  %19 = sext i32 %18 to i64
  %20 = load double*, double** %5, align 8, !tbaa !80
  %21 = getelementptr inbounds double, double* %20, i64 %19
  %22 = bitcast double* %21 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !32
  %24 = getelementptr inbounds double, double* %buf, i64 2
  %25 = bitcast double* %24 to i64*
  store i64 %23, i64* %25, align 8, !tbaa !32
  %26 = sext i32 %i to i64
  %27 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %28 = load i32*, i32** %27, align 8, !tbaa !100
  %29 = getelementptr inbounds i32, i32* %28, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !1
  %31 = sitofp i32 %30 to double
  %32 = getelementptr inbounds double, double* %buf, i64 3
  store double %31, double* %32, align 8, !tbaa !32
  br label %74

; <label>:33                                      ; preds = %0
  %34 = getelementptr inbounds i32, i32* %pbc_flags, i64 1
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = sitofp i32 %35 to double
  %37 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 0
  %38 = load double, double* %37, align 8, !tbaa !61
  %39 = fmul double %36, %38
  %40 = fadd double %8, %39
  store double %40, double* %buf, align 8, !tbaa !32
  %41 = add nsw i32 %3, 1
  %42 = sext i32 %41 to i64
  %43 = load double*, double** %5, align 8, !tbaa !80
  %44 = getelementptr inbounds double, double* %43, i64 %42
  %45 = load double, double* %44, align 8, !tbaa !32
  %46 = getelementptr inbounds i32, i32* %pbc_flags, i64 2
  %47 = load i32, i32* %46, align 4, !tbaa !1
  %48 = sitofp i32 %47 to double
  %49 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 1
  %50 = load double, double* %49, align 8, !tbaa !62
  %51 = fmul double %48, %50
  %52 = fadd double %45, %51
  %53 = getelementptr inbounds double, double* %buf, i64 1
  store double %52, double* %53, align 8, !tbaa !32
  %54 = add nsw i32 %3, 2
  %55 = sext i32 %54 to i64
  %56 = load double*, double** %5, align 8, !tbaa !80
  %57 = getelementptr inbounds double, double* %56, i64 %55
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = getelementptr inbounds i32, i32* %pbc_flags, i64 3
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %61 = sitofp i32 %60 to double
  %62 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 18, i32 2
  %63 = load double, double* %62, align 8, !tbaa !63
  %64 = fmul double %61, %63
  %65 = fadd double %58, %64
  %66 = getelementptr inbounds double, double* %buf, i64 2
  store double %65, double* %66, align 8, !tbaa !32
  %67 = sext i32 %i to i64
  %68 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %69 = load i32*, i32** %68, align 8, !tbaa !100
  %70 = getelementptr inbounds i32, i32* %69, i64 %67
  %71 = load i32, i32* %70, align 4, !tbaa !1
  %72 = sitofp i32 %71 to double
  %73 = getelementptr inbounds double, double* %buf, i64 3
  store double %72, double* %73, align 8, !tbaa !32
  br label %74

; <label>:74                                      ; preds = %33, %9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define i32 @_ZN4Atom13unpack_borderEiPd(%class.Atom* nocapture %this, i32 %i, double* nocapture readonly %buf) #11 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %2 = load i32, i32* %1, align 4, !tbaa !99
  %3 = icmp eq i32 %2, %i
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @_ZN4Atom9growarrayEv(%class.Atom* nonnull %this)
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = bitcast double* %buf to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !32
  %8 = mul nsw i32 %i, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %11 = load double*, double** %10, align 8, !tbaa !80
  %12 = getelementptr inbounds double, double* %11, i64 %9
  %13 = bitcast double* %12 to i64*
  store i64 %7, i64* %13, align 8, !tbaa !32
  %14 = getelementptr inbounds double, double* %buf, i64 1
  %15 = bitcast double* %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !32
  %17 = add nsw i32 %8, 1
  %18 = sext i32 %17 to i64
  %19 = load double*, double** %10, align 8, !tbaa !80
  %20 = getelementptr inbounds double, double* %19, i64 %18
  %21 = bitcast double* %20 to i64*
  store i64 %16, i64* %21, align 8, !tbaa !32
  %22 = getelementptr inbounds double, double* %buf, i64 2
  %23 = bitcast double* %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !32
  %25 = add nsw i32 %8, 2
  %26 = sext i32 %25 to i64
  %27 = load double*, double** %10, align 8, !tbaa !80
  %28 = getelementptr inbounds double, double* %27, i64 %26
  %29 = bitcast double* %28 to i64*
  store i64 %24, i64* %29, align 8, !tbaa !32
  %30 = getelementptr inbounds double, double* %buf, i64 3
  %31 = load double, double* %30, align 8, !tbaa !32
  %32 = fptosi double %31 to i32
  %33 = sext i32 %i to i64
  %34 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %35 = load i32*, i32** %34, align 8, !tbaa !100
  %36 = getelementptr inbounds i32, i32* %35, i64 %33
  store i32 %32, i32* %36, align 4, !tbaa !1
  ret i32 4
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_ZN4Atom13pack_exchangeEiPd(%class.Atom* nocapture readonly %this, i32 %i, double* nocapture %buf) #9 align 2 {
  %1 = mul nsw i32 %i, 3
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %4 = load double*, double** %3, align 8, !tbaa !80
  %5 = getelementptr inbounds double, double* %4, i64 %2
  %6 = bitcast double* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !32
  %8 = bitcast double* %buf to i64*
  store i64 %7, i64* %8, align 8, !tbaa !32
  %9 = add nsw i32 %1, 1
  %10 = sext i32 %9 to i64
  %11 = load double*, double** %3, align 8, !tbaa !80
  %12 = getelementptr inbounds double, double* %11, i64 %10
  %13 = bitcast double* %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !32
  %15 = getelementptr inbounds double, double* %buf, i64 1
  %16 = bitcast double* %15 to i64*
  store i64 %14, i64* %16, align 8, !tbaa !32
  %17 = add nsw i32 %1, 2
  %18 = sext i32 %17 to i64
  %19 = load double*, double** %3, align 8, !tbaa !80
  %20 = getelementptr inbounds double, double* %19, i64 %18
  %21 = bitcast double* %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !32
  %23 = getelementptr inbounds double, double* %buf, i64 2
  %24 = bitcast double* %23 to i64*
  store i64 %22, i64* %24, align 8, !tbaa !32
  %25 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %26 = load double*, double** %25, align 8, !tbaa !82
  %27 = getelementptr inbounds double, double* %26, i64 %2
  %28 = bitcast double* %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !32
  %30 = getelementptr inbounds double, double* %buf, i64 3
  %31 = bitcast double* %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !32
  %32 = load double*, double** %25, align 8, !tbaa !82
  %33 = getelementptr inbounds double, double* %32, i64 %10
  %34 = bitcast double* %33 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !32
  %36 = getelementptr inbounds double, double* %buf, i64 4
  %37 = bitcast double* %36 to i64*
  store i64 %35, i64* %37, align 8, !tbaa !32
  %38 = load double*, double** %25, align 8, !tbaa !82
  %39 = getelementptr inbounds double, double* %38, i64 %18
  %40 = bitcast double* %39 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !32
  %42 = getelementptr inbounds double, double* %buf, i64 5
  %43 = bitcast double* %42 to i64*
  store i64 %41, i64* %43, align 8, !tbaa !32
  %44 = sext i32 %i to i64
  %45 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %46 = load i32*, i32** %45, align 8, !tbaa !100
  %47 = getelementptr inbounds i32, i32* %46, i64 %44
  %48 = load i32, i32* %47, align 4, !tbaa !1
  %49 = sitofp i32 %48 to double
  %50 = getelementptr inbounds double, double* %buf, i64 6
  store double %49, double* %50, align 8, !tbaa !32
  ret i32 7
}

; Function Attrs: nounwind uwtable
define i32 @_ZN4Atom15unpack_exchangeEiPd(%class.Atom* nocapture %this, i32 %i, double* nocapture readonly %buf) #11 align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %2 = load i32, i32* %1, align 4, !tbaa !99
  %3 = icmp eq i32 %2, %i
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @_ZN4Atom9growarrayEv(%class.Atom* nonnull %this)
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = bitcast double* %buf to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !32
  %8 = mul nsw i32 %i, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %11 = load double*, double** %10, align 8, !tbaa !80
  %12 = getelementptr inbounds double, double* %11, i64 %9
  %13 = bitcast double* %12 to i64*
  store i64 %7, i64* %13, align 8, !tbaa !32
  %14 = getelementptr inbounds double, double* %buf, i64 1
  %15 = bitcast double* %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !32
  %17 = add nsw i32 %8, 1
  %18 = sext i32 %17 to i64
  %19 = load double*, double** %10, align 8, !tbaa !80
  %20 = getelementptr inbounds double, double* %19, i64 %18
  %21 = bitcast double* %20 to i64*
  store i64 %16, i64* %21, align 8, !tbaa !32
  %22 = getelementptr inbounds double, double* %buf, i64 2
  %23 = bitcast double* %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !32
  %25 = add nsw i32 %8, 2
  %26 = sext i32 %25 to i64
  %27 = load double*, double** %10, align 8, !tbaa !80
  %28 = getelementptr inbounds double, double* %27, i64 %26
  %29 = bitcast double* %28 to i64*
  store i64 %24, i64* %29, align 8, !tbaa !32
  %30 = getelementptr inbounds double, double* %buf, i64 3
  %31 = bitcast double* %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !32
  %33 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %34 = load double*, double** %33, align 8, !tbaa !82
  %35 = getelementptr inbounds double, double* %34, i64 %9
  %36 = bitcast double* %35 to i64*
  store i64 %32, i64* %36, align 8, !tbaa !32
  %37 = getelementptr inbounds double, double* %buf, i64 4
  %38 = bitcast double* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !32
  %40 = load double*, double** %33, align 8, !tbaa !82
  %41 = getelementptr inbounds double, double* %40, i64 %18
  %42 = bitcast double* %41 to i64*
  store i64 %39, i64* %42, align 8, !tbaa !32
  %43 = getelementptr inbounds double, double* %buf, i64 5
  %44 = bitcast double* %43 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !32
  %46 = load double*, double** %33, align 8, !tbaa !82
  %47 = getelementptr inbounds double, double* %46, i64 %26
  %48 = bitcast double* %47 to i64*
  store i64 %45, i64* %48, align 8, !tbaa !32
  %49 = getelementptr inbounds double, double* %buf, i64 6
  %50 = load double, double* %49, align 8, !tbaa !32
  %51 = fptosi double %50 to i32
  %52 = sext i32 %i to i64
  %53 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %54 = load i32*, i32** %53, align 8, !tbaa !100
  %55 = getelementptr inbounds i32, i32* %54, i64 %52
  store i32 %51, i32* %55, align 4, !tbaa !1
  ret i32 7
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @_ZN4Atom13skip_exchangeEPd(%class.Atom* nocapture readnone %this, double* nocapture readnone %buf) #14 align 2 {
  ret i32 7
}

; Function Attrs: uwtable
define void @_ZN4Atom4sortER8Neighbor(%class.Atom* %this, %class.Neighbor* dereferenceable(240) %neighbor) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @4)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  tail call void @_ZN8Neighbor8binatomsER4Atomi(%class.Neighbor* nonnull %neighbor, %class.Atom* dereferenceable(224) %this, i32 %3)
  tail call void @__kmpc_barrier(%ident_t* nonnull @6, i32 %1)
  %4 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 16
  %5 = bitcast i32** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 19
  %8 = bitcast i32** %7 to i64*
  store i64 %6, i64* %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 17
  %10 = bitcast i32** %9 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 20
  %13 = bitcast i32** %12 to i64*
  store i64 %11, i64* %13, align 8, !tbaa !104
  %14 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 18
  %15 = bitcast i32* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 19
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @__kmpc_master(%ident_t* nonnull @4, i32 %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %52, label %.preheader

.preheader:                                       ; preds = %0
  %23 = icmp sgt i32 %17, 1
  br i1 %23, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader
  %24 = load i32*, i32** %7, align 8
  %.pre = load i32, i32* %24, align 4, !tbaa !1
  br label %30

._crit_edge10.loopexit:                           ; preds = %30
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit, %.preheader
  %25 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 24
  %26 = load i32, i32* %25, align 8, !tbaa !105
  %27 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 3
  %28 = load i32, i32* %27, align 4, !tbaa !99
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %37, label %51

; <label>:30                                      ; preds = %30, %.lr.ph9
  %31 = phi i32 [ %.pre, %.lr.ph9 ], [ %36, %30 ]
  %indvars.iv13 = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next14, %30 ]
  %32 = add nsw i64 %indvars.iv13, -1
  %33 = getelementptr inbounds i32, i32* %24, i64 %32
  %34 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv13
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 4, !tbaa !1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv.next14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %17
  br i1 %exitcond16, label %._crit_edge10.loopexit, label %30

; <label>:37                                      ; preds = %._crit_edge10
  %38 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 21
  %39 = load double*, double** %38, align 8, !tbaa !106
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %39)
  %40 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 22
  %41 = load double*, double** %40, align 8, !tbaa !107
  tail call void @_ZN4Atom26destroy_2d_MMD_float_arrayEPd(%class.Atom* undef, double* %41)
  %42 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 23
  %43 = load i32*, i32** %42, align 8, !tbaa !108
  tail call void @_ZN4Atom20destroy_1d_int_arrayEPi(%class.Atom* undef, i32* %43)
  %44 = load i32, i32* %27, align 4, !tbaa !99
  %45 = tail call double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* undef, i32 %44, i32 3)
  store double* %45, double** %38, align 8, !tbaa !106
  %46 = load i32, i32* %27, align 4, !tbaa !99
  %47 = tail call double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* undef, i32 %46, i32 3)
  store double* %47, double** %40, align 8, !tbaa !107
  %48 = load i32, i32* %27, align 4, !tbaa !99
  %49 = tail call i32* @_ZN4Atom19create_1d_int_arrayEi(%class.Atom* undef, i32 %48)
  store i32* %49, i32** %42, align 8, !tbaa !108
  %50 = load i32, i32* %27, align 4, !tbaa !99
  store i32 %50, i32* %25, align 8, !tbaa !105
  br label %51

; <label>:51                                      ; preds = %37, %._crit_edge10
  tail call void @__kmpc_end_master(%ident_t* nonnull @4, i32 %1)
  br label %52

; <label>:52                                      ; preds = %51, %0
  tail call void @__kmpc_barrier(%ident_t* nonnull @6, i32 %1)
  %53 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 21
  %54 = load double*, double** %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 22
  %56 = load double*, double** %55, align 8, !tbaa !107
  %57 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 23
  %58 = load i32*, i32** %57, align 8, !tbaa !108
  %59 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 4
  %60 = load double*, double** %59, align 8, !tbaa !80
  %61 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 5
  %62 = load double*, double** %61, align 8, !tbaa !82
  %63 = getelementptr inbounds %class.Atom, %class.Atom* %this, i64 0, i32 9
  %64 = load i32*, i32** %63, align 8, !tbaa !100
  %65 = add nsw i32 %17, -1
  %66 = icmp sgt i32 %17, 0
  br i1 %66, label %67, label %._crit_edge2

._crit_edge2:                                     ; preds = %52
  %.pre3 = bitcast i32* %.omp.is_last to i8*
  %.pre4 = bitcast i32* %.omp.stride to i8*
  %.pre6 = bitcast i32* %.omp.ub to i8*
  %.pre8 = bitcast i32* %.omp.lb to i8*
  br label %153

; <label>:67                                      ; preds = %52
  %68 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %69 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #8
  store i32 %65, i32* %.omp.ub, align 4, !tbaa !1
  %70 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %71 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @4, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %72 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %73 = icmp sgt i32 %72, %65
  %74 = select i1 %73, i32 %65, i32 %72
  store i32 %74, i32* %.omp.ub, align 4, !tbaa !1
  %75 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %76 = icmp sgt i32 %75, %74
  br i1 %76, label %._crit_edge7, label %.lr.ph6

.lr.ph6:                                          ; preds = %67
  %77 = load i32*, i32** %7, align 8
  %78 = sext i32 %75 to i64
  %79 = sext i32 %20 to i64
  br label %80

; <label>:80                                      ; preds = %._crit_edge, %.lr.ph6
  %81 = phi i32 [ %97, %._crit_edge ], [ %74, %.lr.ph6 ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %._crit_edge ], [ %78, %.lr.ph6 ]
  %82 = icmp sgt i64 %indvars.iv11, 0
  br i1 %82, label %83, label %88

; <label>:83                                      ; preds = %80
  %84 = add nsw i64 %indvars.iv11, -1
  %85 = load i32*, i32** %7, align 8, !tbaa !102
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  %87 = load i32, i32* %86, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %83, %80
  %89 = phi i32 [ %87, %83 ], [ 0, %80 ]
  %90 = getelementptr inbounds i32, i32* %77, i64 %indvars.iv11
  %91 = load i32, i32* %90, align 4, !tbaa !1
  %92 = icmp sgt i32 %91, %89
  br i1 %92, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %88
  %93 = mul nsw i64 %indvars.iv11, %79
  %94 = load i32*, i32** %12, align 8
  %95 = sext i32 %89 to i64
  %96 = sub i32 %91, %89
  br label %100

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %88
  %97 = phi i32 [ %.pre1, %.._crit_edge_crit_edge ], [ %81, %88 ]
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %indvars.iv11, %98
  %indvars.iv.next12 = add i64 %indvars.iv11, 1
  br i1 %99, label %80, label %._crit_edge7.loopexit

; <label>:100                                     ; preds = %100, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %100 ]
  %k.02 = phi i32 [ 0, %.lr.ph ], [ %152, %100 ]
  %101 = add nsw i64 %indvars.iv, %95
  %102 = add nsw i32 %k.02, %89
  %103 = add nsw i64 %indvars.iv, %93
  %104 = getelementptr inbounds i32, i32* %94, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !1
  %106 = mul nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %60, i64 %107
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !32
  %111 = mul nsw i32 %102, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %54, i64 %112
  %114 = bitcast double* %113 to i64*
  store i64 %110, i64* %114, align 8, !tbaa !32
  %115 = add nsw i32 %106, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %60, i64 %116
  %118 = bitcast double* %117 to i64*
  %119 = load i64, i64* %118, align 8, !tbaa !32
  %120 = add nsw i32 %111, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %54, i64 %121
  %123 = bitcast double* %122 to i64*
  store i64 %119, i64* %123, align 8, !tbaa !32
  %124 = add nsw i32 %106, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %60, i64 %125
  %127 = bitcast double* %126 to i64*
  %128 = load i64, i64* %127, align 8, !tbaa !32
  %129 = add nsw i32 %111, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %54, i64 %130
  %132 = bitcast double* %131 to i64*
  store i64 %128, i64* %132, align 8, !tbaa !32
  %133 = getelementptr inbounds double, double* %62, i64 %107
  %134 = bitcast double* %133 to i64*
  %135 = load i64, i64* %134, align 8, !tbaa !32
  %136 = getelementptr inbounds double, double* %56, i64 %112
  %137 = bitcast double* %136 to i64*
  store i64 %135, i64* %137, align 8, !tbaa !32
  %138 = getelementptr inbounds double, double* %62, i64 %116
  %139 = bitcast double* %138 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !32
  %141 = getelementptr inbounds double, double* %56, i64 %121
  %142 = bitcast double* %141 to i64*
  store i64 %140, i64* %142, align 8, !tbaa !32
  %143 = getelementptr inbounds double, double* %62, i64 %125
  %144 = bitcast double* %143 to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !32
  %146 = getelementptr inbounds double, double* %56, i64 %130
  %147 = bitcast double* %146 to i64*
  store i64 %145, i64* %147, align 8, !tbaa !32
  %148 = sext i32 %105 to i64
  %149 = getelementptr inbounds i32, i32* %64, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !1
  %151 = getelementptr inbounds i32, i32* %58, i64 %101
  store i32 %150, i32* %151, align 4, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %152 = add nuw nsw i32 %k.02, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %96
  br i1 %exitcond, label %.._crit_edge_crit_edge, label %100

.._crit_edge_crit_edge:                           ; preds = %100
  %.pre1 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  br label %._crit_edge

._crit_edge7.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %67
  call void @__kmpc_for_static_fini(%ident_t* nonnull @4, i32 %1)
  br label %153

; <label>:153                                     ; preds = %._crit_edge2, %._crit_edge7
  %.pre-phi9 = phi i8* [ %.pre8, %._crit_edge2 ], [ %68, %._crit_edge7 ]
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge2 ], [ %69, %._crit_edge7 ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge2 ], [ %70, %._crit_edge7 ]
  %.pre-phi = phi i8* [ %.pre3, %._crit_edge2 ], [ %71, %._crit_edge7 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi9) #8
  call void @__kmpc_barrier(%ident_t* nonnull @5, i32 %1)
  %154 = call i32 @__kmpc_master(%ident_t* nonnull @4, i32 %1)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %169, label %156

; <label>:156                                     ; preds = %153
  %157 = bitcast double** %59 to i64*
  %158 = load i64, i64* %157, align 8, !tbaa !80
  %159 = bitcast double** %61 to i64*
  %160 = load i64, i64* %159, align 8, !tbaa !82
  %161 = bitcast i32** %63 to i64*
  %162 = load i64, i64* %161, align 8, !tbaa !100
  %163 = bitcast double** %53 to i64*
  %164 = load i64, i64* %163, align 8, !tbaa !106
  store i64 %164, i64* %157, align 8, !tbaa !80
  %165 = bitcast double** %55 to i64*
  %166 = load i64, i64* %165, align 8, !tbaa !107
  store i64 %166, i64* %159, align 8, !tbaa !82
  %167 = bitcast i32** %57 to i64*
  %168 = load i64, i64* %167, align 8, !tbaa !108
  store i64 %168, i64* %161, align 8, !tbaa !100
  store i64 %158, i64* %163, align 8, !tbaa !106
  store i64 %160, i64* %165, align 8, !tbaa !107
  store i64 %162, i64* %167, align 8, !tbaa !108
  call void @__kmpc_end_master(%ident_t* nonnull @4, i32 %1)
  br label %169

; <label>:169                                     ; preds = %156, %153
  call void @__kmpc_barrier(%ident_t* nonnull @6, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN7ForceLJD2Ev(%class.ForceLJ* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN7ForceLJD0Ev(%class.ForceLJ* %this) unnamed_addr #11 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %class.ForceLJ* %this to i8*
  tail call void @_ZdlPv(i8* %1) #21
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN7ForceLJ5setupEv(%class.ForceLJ* nocapture readonly %this) unnamed_addr #9 align 2 {
  %1 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %2 = load i32, i32* %1, align 8, !tbaa !109
  %3 = mul nsw i32 %2, %2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 1
  %6 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %7 = load double*, double** %6, align 8
  %8 = zext i32 %3 to i64
  br label %9

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

; <label>:9                                       ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %10 = load double, double* %5, align 8, !tbaa !58
  %11 = fmul double %10, %10
  %12 = getelementptr inbounds double, double* %7, i64 %indvars.iv
  store double %11, double* %12, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = icmp slt i64 %indvars.iv.next, %8
  br i1 %13, label %9, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr void @_ZN5Force8finaliseEv(%class.Force* nocapture %this) unnamed_addr #14 comdat align 2 {
  ret void
}

; Function Attrs: uwtable
define void @_ZN7ForceLJ7computeER4AtomR8NeighborR4Commi(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Comm* nocapture readnone dereferenceable(336) %comm, i32 %me) unnamed_addr #13 align 2 {
  %1 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  store double 0.000000e+00, double* %1, align 8, !tbaa !110
  %2 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %2, align 8, !tbaa !111
  %3 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 5
  %4 = load i32, i32* %3, align 8, !tbaa !72
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 9
  %7 = load i32, i32* %6, align 8, !tbaa !41
  %8 = icmp ne i32 %7, 0
  br i1 %5, label %31, label %9

; <label>:9                                       ; preds = %0
  br i1 %8, label %10, label %11

; <label>:10                                      ; preds = %9
  tail call void @_ZN7ForceLJ16compute_originalILi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  %17 = load i32, i32* %16, align 8, !tbaa !34
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 10
  %20 = load %class.ThreadData*, %class.ThreadData** %19, align 8, !tbaa !23
  %21 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %20, i64 0, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !17
  %23 = icmp sgt i32 %22, 1
  br i1 %18, label %27, label %24

; <label>:24                                      ; preds = %15
  br i1 %23, label %25, label %26

; <label>:25                                      ; preds = %24
  tail call void @_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:26                                      ; preds = %24
  tail call void @_ZN7ForceLJ17compute_halfneighILi1ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:27                                      ; preds = %15
  br i1 %23, label %28, label %29

; <label>:28                                      ; preds = %27
  tail call void @_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:29                                      ; preds = %27
  tail call void @_ZN7ForceLJ17compute_halfneighILi1ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:30                                      ; preds = %11
  tail call void @_ZN7ForceLJ17compute_fullneighILi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:31                                      ; preds = %0
  br i1 %8, label %32, label %33

; <label>:32                                      ; preds = %31
  tail call void @_ZN7ForceLJ16compute_originalILi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:33                                      ; preds = %31
  %34 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %35 = load i32, i32* %34, align 4, !tbaa !40
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

; <label>:37                                      ; preds = %33
  %38 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  %39 = load i32, i32* %38, align 8, !tbaa !34
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 10
  %42 = load %class.ThreadData*, %class.ThreadData** %41, align 8, !tbaa !23
  %43 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %42, i64 0, i32 3
  %44 = load i32, i32* %43, align 4, !tbaa !17
  %45 = icmp sgt i32 %44, 1
  br i1 %40, label %49, label %46

; <label>:46                                      ; preds = %37
  br i1 %45, label %47, label %48

; <label>:47                                      ; preds = %46
  tail call void @_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:48                                      ; preds = %46
  tail call void @_ZN7ForceLJ17compute_halfneighILi0ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:49                                      ; preds = %37
  br i1 %45, label %50, label %51

; <label>:50                                      ; preds = %49
  tail call void @_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:51                                      ; preds = %49
  tail call void @_ZN7ForceLJ17compute_halfneighILi0ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:52                                      ; preds = %33
  tail call void @_ZN7ForceLJ17compute_fullneighILi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, i32 %me)
  br label %53

; <label>:53                                      ; preds = %52, %51, %50, %48, %47, %32, %30, %29, %28, %26, %25, %10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ16compute_originalILi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  store double 0.000000e+00, double* %12, align 8, !tbaa !110
  %13 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %13, align 8, !tbaa !111
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %.lr.ph8.preheader, label %.preheader

.lr.ph8.preheader:                                ; preds = %0
  br label %.lr.ph8

.preheader.loopexit:                              ; preds = %.lr.ph8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.preheader
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %24 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %25 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %26 = sext i32 %17 to i64
  br label %33

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next14, %.lr.ph8 ]
  %27 = mul nuw nsw i64 %indvars.iv13, 3
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %27, 1
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nuw nsw i64 %27, 2
  %32 = getelementptr inbounds double, double* %9, i64 %31
  store double 0.000000e+00, double* %32, align 8, !tbaa !32
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv.next14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %5
  br i1 %exitcond16, label %.preheader.loopexit, label %.lr.ph8

._crit_edge5.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %.preheader
  ret void

; <label>:33                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv9 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next10, %._crit_edge ]
  %34 = mul nsw i64 %26, %indvars.iv9
  %35 = getelementptr inbounds i32, i32* %19, i64 %34
  %36 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv9
  %37 = load i32, i32* %36, align 4, !tbaa !1
  %38 = mul nuw nsw i64 %indvars.iv9, 3
  %39 = getelementptr inbounds double, double* %7, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !32
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds double, double* %7, i64 %41
  %43 = load double, double* %42, align 8, !tbaa !32
  %44 = add nuw nsw i64 %38, 2
  %45 = getelementptr inbounds double, double* %7, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !32
  %47 = icmp sgt i32 %37, 0
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %33
  %48 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv9
  %49 = load i32, i32* %48, align 4, !tbaa !1
  %50 = load i32, i32* %22, align 8
  %51 = mul nsw i32 %50, %49
  %52 = load double*, double** %23, align 8
  %53 = getelementptr inbounds double, double* %9, i64 %38
  %54 = getelementptr inbounds double, double* %9, i64 %41
  %55 = getelementptr inbounds double, double* %9, i64 %44
  br label %56

._crit_edge.loopexit:                             ; preds = %133
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %33
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %lftr.wideiv11 = trunc i64 %indvars.iv.next10 to i32
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %2
  br i1 %exitcond12, label %._crit_edge5.loopexit, label %33

; <label>:56                                      ; preds = %133, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %133 ]
  %57 = getelementptr inbounds i32, i32* %35, i64 %indvars.iv
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = mul nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %7, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !32
  %63 = fsub double %40, %62
  %64 = add nsw i32 %59, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %7, i64 %65
  %67 = load double, double* %66, align 8, !tbaa !32
  %68 = fsub double %43, %67
  %69 = add nsw i32 %59, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %46, %72
  %74 = sext i32 %58 to i64
  %75 = getelementptr inbounds i32, i32* %11, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = fmul double %63, %63
  %78 = fmul double %68, %68
  %79 = fadd double %77, %78
  %80 = fmul double %73, %73
  %81 = fadd double %79, %80
  %82 = add nsw i32 %51, %76
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %52, i64 %83
  %85 = load double, double* %84, align 8, !tbaa !32
  %86 = fcmp olt double %81, %85
  br i1 %86, label %87, label %133

; <label>:87                                      ; preds = %56
  %88 = fdiv double 1.000000e+00, %81
  %89 = fmul double %88, %88
  %90 = fmul double %88, %89
  %91 = load double*, double** %24, align 8, !tbaa !113
  %92 = getelementptr inbounds double, double* %91, i64 %83
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fmul double %90, %93
  %95 = fmul double %94, 4.800000e+01
  %96 = fadd double %94, -5.000000e-01
  %97 = fmul double %95, %96
  %98 = fmul double %88, %97
  %99 = load double*, double** %25, align 8, !tbaa !114
  %100 = getelementptr inbounds double, double* %99, i64 %83
  %101 = load double, double* %100, align 8, !tbaa !32
  %102 = fmul double %101, %98
  %103 = fmul double %63, %102
  %104 = load double, double* %53, align 8, !tbaa !32
  %105 = fadd double %104, %103
  store double %105, double* %53, align 8, !tbaa !32
  %106 = fmul double %68, %102
  %107 = load double, double* %54, align 8, !tbaa !32
  %108 = fadd double %107, %106
  store double %108, double* %54, align 8, !tbaa !32
  %109 = fmul double %73, %102
  %110 = load double, double* %55, align 8, !tbaa !32
  %111 = fadd double %109, %110
  store double %111, double* %55, align 8, !tbaa !32
  %112 = getelementptr inbounds double, double* %9, i64 %60
  %113 = load double, double* %112, align 8, !tbaa !32
  %114 = fsub double %113, %103
  store double %114, double* %112, align 8, !tbaa !32
  %115 = getelementptr inbounds double, double* %9, i64 %65
  %116 = load double, double* %115, align 8, !tbaa !32
  %117 = fsub double %116, %106
  store double %117, double* %115, align 8, !tbaa !32
  %118 = getelementptr inbounds double, double* %9, i64 %70
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fsub double %119, %109
  store double %120, double* %118, align 8, !tbaa !32
  %121 = fmul double %94, 4.000000e+00
  %122 = fadd double %94, -1.000000e+00
  %123 = fmul double %121, %122
  %124 = load double*, double** %25, align 8, !tbaa !114
  %125 = getelementptr inbounds double, double* %124, i64 %83
  %126 = load double, double* %125, align 8, !tbaa !32
  %127 = fmul double %123, %126
  %128 = load double, double* %12, align 8, !tbaa !110
  %129 = fadd double %128, %127
  store double %129, double* %12, align 8, !tbaa !110
  %130 = fmul double %81, %102
  %131 = load double, double* %13, align 8, !tbaa !111
  %132 = fadd double %130, %131
  store double %132, double* %13, align 8, !tbaa !111
  br label %133

; <label>:133                                     ; preds = %87, %56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %37
  br i1 %exitcond, label %._crit_edge.loopexit, label %56
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %5 = load i32, i32* %4, align 8, !tbaa !112
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %8 = load double*, double** %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %10 = load double*, double** %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %12 = load i32*, i32** %11, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %13 = add nsw i32 %6, -1
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %._crit_edge2

._crit_edge2:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre3 = bitcast i32* %.omp.stride to i8*
  %.pre5 = bitcast i32* %.omp.ub to i8*
  %.pre7 = bitcast i32* %.omp.lb to i8*
  br label %39

; <label>:15                                      ; preds = %0
  %16 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %17 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #8
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %18 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %19 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %20 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %13
  %22 = select i1 %21, i32 %13, i32 %20
  store i32 %22, i32* %.omp.ub, align 4, !tbaa !1
  %23 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %15
  %25 = sext i32 %23 to i64
  %26 = sext i32 %22 to i64
  br label %27

; <label>:27                                      ; preds = %27, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %27 ], [ %25, %.lr.ph37 ]
  %.omp.iv.035 = phi i32 [ %37, %27 ], [ %23, %.lr.ph37 ]
  %28 = mul nsw i32 %.omp.iv.035, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %10, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %10, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %28, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %10, i64 %35
  store double 0.000000e+00, double* %36, align 8, !tbaa !32
  %37 = add nsw i32 %.omp.iv.035, 1
  %38 = icmp slt i64 %indvars.iv41, %26
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1
  br i1 %38, label %27, label %._crit_edge38.loopexit

._crit_edge38.loopexit:                           ; preds = %27
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %15
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %39

; <label>:39                                      ; preds = %._crit_edge2, %._crit_edge38
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge2 ], [ %16, %._crit_edge38 ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge2 ], [ %17, %._crit_edge38 ]
  %.pre-phi4 = phi i8* [ %.pre3, %._crit_edge2 ], [ %18, %._crit_edge38 ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge2 ], [ %19, %._crit_edge38 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %40 = add nsw i32 %3, -1
  %41 = icmp sgt i32 %3, 0
  br i1 %41, label %42, label %._crit_edge1

._crit_edge1:                                     ; preds = %39
  %.pre9 = bitcast i32* %.omp.is_last8 to i8*
  %.pre11 = bitcast i32* %.omp.stride7 to i8*
  %.pre13 = bitcast i32* %.omp.ub6 to i8*
  %.pre15 = bitcast i32* %.omp.lb5 to i8*
  br label %226

; <label>:42                                      ; preds = %39
  %43 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #8
  store i32 %40, i32* %.omp.ub6, align 4, !tbaa !1
  %45 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %46 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %47 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %48 = icmp sgt i32 %47, %40
  %49 = select i1 %48, i32 %40, i32 %47
  store i32 %49, i32* %.omp.ub6, align 4, !tbaa !1
  %50 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %42
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %54 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %55 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %56 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %57 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %58 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %59 = sext i32 %50 to i64
  br label %60

; <label>:60                                      ; preds = %222, %.lr.ph31
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %222 ], [ %59, %.lr.ph31 ]
  %t_eng_vdwl.029 = phi double [ %t_eng_vdwl.1.lcssa, %222 ], [ 0.000000e+00, %.lr.ph31 ]
  %t_virial.028 = phi double [ %t_virial.1.lcssa, %222 ], [ 0.000000e+00, %.lr.ph31 ]
  %.omp.iv2.027 = phi i32 [ %223, %222 ], [ %50, %.lr.ph31 ]
  %61 = load i32, i32* %52, align 8, !tbaa !115
  %62 = trunc i64 %indvars.iv39 to i32
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %53, align 8, !tbaa !116
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  %67 = load i32*, i32** %54, align 8, !tbaa !117
  %68 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv39
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = mul nsw i32 %.omp.iv2.027, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %8, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !32
  %74 = add nsw i32 %70, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %8, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = add nsw i32 %70, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %8, i64 %79
  %81 = load double, double* %80, align 8, !tbaa !32
  %82 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv39
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = icmp sgt i32 %69, 0
  br i1 %84, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %189
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %t_eng_vdwl.1.lcssa = phi double [ %t_eng_vdwl.029, %60 ], [ %t_eng_vdwl.2, %._crit_edge.loopexit ]
  %t_virial.1.lcssa = phi double [ %t_virial.028, %60 ], [ %t_virial.2, %._crit_edge.loopexit ]
  %fix.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiz.1, %._crit_edge.loopexit ]
  %85 = getelementptr inbounds double, double* %10, i64 %71
  %86 = bitcast double* %85 to i64*
  %87 = load atomic i64, i64* %86 monotonic, align 8, !tbaa !32
  br label %190

.lr.ph:                                           ; preds = %.lr.ph.preheader, %189
  %indvars.iv = phi i64 [ %indvars.iv.next, %189 ], [ 0, %.lr.ph.preheader ]
  %t_eng_vdwl.122 = phi double [ %t_eng_vdwl.2, %189 ], [ %t_eng_vdwl.029, %.lr.ph.preheader ]
  %t_virial.121 = phi double [ %t_virial.2, %189 ], [ %t_virial.028, %.lr.ph.preheader ]
  %fix.020 = phi double [ %fix.1, %189 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiy.019 = phi double [ %fiy.1, %189 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiz.018 = phi double [ %fiz.1, %189 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %88 = getelementptr inbounds i32, i32* %66, i64 %indvars.iv
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = mul nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %8, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fsub double %73, %93
  %95 = add nsw i32 %90, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %8, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %77, %98
  %100 = add nsw i32 %90, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %8, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %81, %103
  %105 = sext i32 %89 to i64
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = fmul double %94, %94
  %109 = fmul double %99, %99
  %110 = fadd double %108, %109
  %111 = fmul double %104, %104
  %112 = fadd double %110, %111
  %113 = load i32, i32* %55, align 8, !tbaa !109
  %114 = mul nsw i32 %113, %83
  %115 = add nsw i32 %114, %107
  %116 = sext i32 %115 to i64
  %117 = load double*, double** %56, align 8, !tbaa !118
  %118 = getelementptr inbounds double, double* %117, i64 %116
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fcmp olt double %112, %119
  br i1 %120, label %121, label %189

; <label>:121                                     ; preds = %.lr.ph
  %122 = fdiv double 1.000000e+00, %112
  %123 = fmul double %122, %122
  %124 = fmul double %122, %123
  %125 = load double*, double** %57, align 8, !tbaa !113
  %126 = getelementptr inbounds double, double* %125, i64 %116
  %127 = load double, double* %126, align 8, !tbaa !32
  %128 = fmul double %124, %127
  %129 = fmul double %128, 4.800000e+01
  %130 = fadd double %128, -5.000000e-01
  %131 = fmul double %129, %130
  %132 = fmul double %122, %131
  %133 = load double*, double** %58, align 8, !tbaa !114
  %134 = getelementptr inbounds double, double* %133, i64 %116
  %135 = load double, double* %134, align 8, !tbaa !32
  %136 = fmul double %135, %132
  %137 = fmul double %94, %136
  %138 = fmul double %99, %136
  %139 = fmul double %104, %136
  %140 = getelementptr inbounds double, double* %10, i64 %91
  %141 = bitcast double* %140 to i64*
  %142 = load atomic i64, i64* %141 monotonic, align 8, !tbaa !32
  br label %143

; <label>:143                                     ; preds = %143, %121
  %144 = phi i64 [ %142, %121 ], [ %149, %143 ]
  %145 = bitcast i64 %144 to double
  %146 = fsub double %145, %137
  %147 = bitcast double %146 to i64
  %148 = cmpxchg i64* %141, i64 %144, i64 %147 monotonic monotonic
  %149 = extractvalue { i64, i1 } %148, 0
  %150 = extractvalue { i64, i1 } %148, 1
  br i1 %150, label %151, label %143

; <label>:151                                     ; preds = %143
  %152 = fadd double %fiy.019, %138
  %153 = getelementptr inbounds double, double* %10, i64 %96
  %154 = bitcast double* %153 to i64*
  %155 = load atomic i64, i64* %154 monotonic, align 8, !tbaa !32
  br label %156

; <label>:156                                     ; preds = %156, %151
  %157 = phi i64 [ %155, %151 ], [ %162, %156 ]
  %158 = bitcast i64 %157 to double
  %159 = fsub double %158, %138
  %160 = bitcast double %159 to i64
  %161 = cmpxchg i64* %154, i64 %157, i64 %160 monotonic monotonic
  %162 = extractvalue { i64, i1 } %161, 0
  %163 = extractvalue { i64, i1 } %161, 1
  br i1 %163, label %164, label %156

; <label>:164                                     ; preds = %156
  %165 = fadd double %fix.020, %137
  %166 = getelementptr inbounds double, double* %10, i64 %101
  %167 = bitcast double* %166 to i64*
  %168 = load atomic i64, i64* %167 monotonic, align 8, !tbaa !32
  br label %169

; <label>:169                                     ; preds = %169, %164
  %170 = phi i64 [ %168, %164 ], [ %175, %169 ]
  %171 = bitcast i64 %170 to double
  %172 = fsub double %171, %139
  %173 = bitcast double %172 to i64
  %174 = cmpxchg i64* %167, i64 %170, i64 %173 monotonic monotonic
  %175 = extractvalue { i64, i1 } %174, 0
  %176 = extractvalue { i64, i1 } %174, 1
  br i1 %176, label %177, label %169

; <label>:177                                     ; preds = %169
  %178 = fadd double %fiz.018, %139
  %179 = fmul double %128, 4.000000e+00
  %180 = fadd double %128, -1.000000e+00
  %181 = fmul double %179, %180
  %182 = load double*, double** %58, align 8, !tbaa !114
  %183 = getelementptr inbounds double, double* %182, i64 %116
  %184 = load double, double* %183, align 8, !tbaa !32
  %185 = fmul double %181, %184
  %186 = fadd double %t_eng_vdwl.122, %185
  %187 = fmul double %112, %136
  %188 = fadd double %t_virial.121, %187
  br label %189

; <label>:189                                     ; preds = %177, %.lr.ph
  %fiz.1 = phi double [ %178, %177 ], [ %fiz.018, %.lr.ph ]
  %fiy.1 = phi double [ %152, %177 ], [ %fiy.019, %.lr.ph ]
  %fix.1 = phi double [ %165, %177 ], [ %fix.020, %.lr.ph ]
  %t_virial.2 = phi double [ %188, %177 ], [ %t_virial.121, %.lr.ph ]
  %t_eng_vdwl.2 = phi double [ %186, %177 ], [ %t_eng_vdwl.122, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %69
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

; <label>:190                                     ; preds = %190, %._crit_edge
  %191 = phi i64 [ %87, %._crit_edge ], [ %196, %190 ]
  %192 = bitcast i64 %191 to double
  %193 = fadd double %fix.0.lcssa, %192
  %194 = bitcast double %193 to i64
  %195 = cmpxchg i64* %86, i64 %191, i64 %194 monotonic monotonic
  %196 = extractvalue { i64, i1 } %195, 0
  %197 = extractvalue { i64, i1 } %195, 1
  br i1 %197, label %198, label %190

; <label>:198                                     ; preds = %190
  %199 = getelementptr inbounds double, double* %10, i64 %75
  %200 = bitcast double* %199 to i64*
  %201 = load atomic i64, i64* %200 monotonic, align 8, !tbaa !32
  br label %202

; <label>:202                                     ; preds = %202, %198
  %203 = phi i64 [ %201, %198 ], [ %208, %202 ]
  %204 = bitcast i64 %203 to double
  %205 = fadd double %fiy.0.lcssa, %204
  %206 = bitcast double %205 to i64
  %207 = cmpxchg i64* %200, i64 %203, i64 %206 monotonic monotonic
  %208 = extractvalue { i64, i1 } %207, 0
  %209 = extractvalue { i64, i1 } %207, 1
  br i1 %209, label %210, label %202

; <label>:210                                     ; preds = %202
  %211 = getelementptr inbounds double, double* %10, i64 %79
  %212 = bitcast double* %211 to i64*
  %213 = load atomic i64, i64* %212 monotonic, align 8, !tbaa !32
  br label %214

; <label>:214                                     ; preds = %214, %210
  %215 = phi i64 [ %213, %210 ], [ %220, %214 ]
  %216 = bitcast i64 %215 to double
  %217 = fadd double %fiz.0.lcssa, %216
  %218 = bitcast double %217 to i64
  %219 = cmpxchg i64* %212, i64 %215, i64 %218 monotonic monotonic
  %220 = extractvalue { i64, i1 } %219, 0
  %221 = extractvalue { i64, i1 } %219, 1
  br i1 %221, label %222, label %214

; <label>:222                                     ; preds = %214
  %223 = add nsw i32 %.omp.iv2.027, 1
  %224 = sext i32 %49 to i64
  %225 = icmp slt i64 %indvars.iv39, %224
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  br i1 %225, label %60, label %._crit_edge32.loopexit

._crit_edge32.loopexit:                           ; preds = %222
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %42
  %t_eng_vdwl.0.lcssa = phi double [ 0.000000e+00, %42 ], [ %t_eng_vdwl.1.lcssa, %._crit_edge32.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %42 ], [ %t_virial.1.lcssa, %._crit_edge32.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %226

; <label>:226                                     ; preds = %._crit_edge1, %._crit_edge32
  %.pre-phi16 = phi i8* [ %.pre15, %._crit_edge1 ], [ %43, %._crit_edge32 ]
  %.pre-phi14 = phi i8* [ %.pre13, %._crit_edge1 ], [ %44, %._crit_edge32 ]
  %.pre-phi12 = phi i8* [ %.pre11, %._crit_edge1 ], [ %45, %._crit_edge32 ]
  %.pre-phi10 = phi i8* [ %.pre9, %._crit_edge1 ], [ %46, %._crit_edge32 ]
  %t_virial.3 = phi double [ %t_virial.0.lcssa, %._crit_edge32 ], [ 0.000000e+00, %._crit_edge1 ]
  %t_eng_vdwl.3 = phi double [ %t_eng_vdwl.0.lcssa, %._crit_edge32 ], [ 0.000000e+00, %._crit_edge1 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi10) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi12) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi14) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi16) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %227 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %228 = bitcast double* %227 to i64*
  %229 = load atomic i64, i64* %228 monotonic, align 8, !tbaa !32
  br label %230

; <label>:230                                     ; preds = %230, %226
  %231 = phi i64 [ %229, %226 ], [ %236, %230 ]
  %232 = bitcast i64 %231 to double
  %233 = fadd double %t_eng_vdwl.3, %232
  %234 = bitcast double %233 to i64
  %235 = cmpxchg i64* %228, i64 %231, i64 %234 monotonic monotonic
  %236 = extractvalue { i64, i1 } %235, 0
  %237 = extractvalue { i64, i1 } %235, 1
  br i1 %237, label %238, label %230

; <label>:238                                     ; preds = %230
  %239 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %240 = bitcast double* %239 to i64*
  %241 = load atomic i64, i64* %240 monotonic, align 8, !tbaa !32
  br label %242

; <label>:242                                     ; preds = %242, %238
  %243 = phi i64 [ %241, %238 ], [ %248, %242 ]
  %244 = bitcast i64 %243 to double
  %245 = fadd double %t_virial.3, %244
  %246 = bitcast double %245 to i64
  %247 = cmpxchg i64* %240, i64 %243, i64 %246 monotonic monotonic
  %248 = extractvalue { i64, i1 } %247, 0
  %249 = extractvalue { i64, i1 } %247, 1
  br i1 %249, label %250, label %242

; <label>:250                                     ; preds = %242
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_halfneighILi1ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %.lr.ph21.preheader, label %.preheader

.lr.ph21.preheader:                               ; preds = %0
  br label %.lr.ph21

.preheader.loopexit:                              ; preds = %.lr.ph21
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %.preheader
  %14 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %21 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %24 = sext i32 %15 to i64
  br label %37

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader
  %indvars.iv26 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next27, %.lr.ph21 ]
  %25 = mul nuw nsw i64 %indvars.iv26, 3
  %26 = getelementptr inbounds double, double* %9, i64 %25
  store double 0.000000e+00, double* %26, align 8, !tbaa !32
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %25, 2
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.next27 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %5
  br i1 %exitcond29, label %.preheader.loopexit, label %.lr.ph21

._crit_edge16.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit, %.preheader
  %t_energy.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %t_energy.1.lcssa, %._crit_edge16.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %t_virial.1.lcssa, %._crit_edge16.loopexit ]
  %31 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %32 = load double, double* %31, align 8, !tbaa !110
  %33 = fadd double %t_energy.0.lcssa, %32
  store double %33, double* %31, align 8, !tbaa !110
  %34 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %35 = load double, double* %34, align 8, !tbaa !111
  %36 = fadd double %t_virial.0.lcssa, %35
  store double %36, double* %34, align 8, !tbaa !111
  ret void

; <label>:37                                      ; preds = %._crit_edge, %.lr.ph15
  %indvars.iv22 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next23, %._crit_edge ]
  %t_energy.014 = phi double [ 0.000000e+00, %.lr.ph15 ], [ %t_energy.1.lcssa, %._crit_edge ]
  %t_virial.013 = phi double [ 0.000000e+00, %.lr.ph15 ], [ %t_virial.1.lcssa, %._crit_edge ]
  %38 = mul nsw i64 %24, %indvars.iv22
  %39 = getelementptr inbounds i32, i32* %17, i64 %38
  %40 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv22
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = mul nuw nsw i64 %indvars.iv22, 3
  %43 = getelementptr inbounds double, double* %7, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = add nuw nsw i64 %42, 1
  %46 = getelementptr inbounds double, double* %7, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !32
  %48 = add nuw nsw i64 %42, 2
  %49 = getelementptr inbounds double, double* %7, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !32
  %51 = icmp sgt i32 %41, 0
  br i1 %51, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %37
  %52 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv22
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = load i32, i32* %20, align 8
  %55 = mul nsw i32 %54, %53
  %56 = load double*, double** %21, align 8
  br label %66

._crit_edge.loopexit:                             ; preds = %138
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %37
  %t_energy.1.lcssa = phi double [ %t_energy.014, %37 ], [ %t_energy.2, %._crit_edge.loopexit ]
  %t_virial.1.lcssa = phi double [ %t_virial.013, %37 ], [ %t_virial.2, %._crit_edge.loopexit ]
  %fix.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiz.1, %._crit_edge.loopexit ]
  %57 = getelementptr inbounds double, double* %9, i64 %42
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = fadd double %fix.0.lcssa, %58
  store double %59, double* %57, align 8, !tbaa !32
  %60 = getelementptr inbounds double, double* %9, i64 %45
  %61 = load double, double* %60, align 8, !tbaa !32
  %62 = fadd double %fiy.0.lcssa, %61
  store double %62, double* %60, align 8, !tbaa !32
  %63 = getelementptr inbounds double, double* %9, i64 %48
  %64 = load double, double* %63, align 8, !tbaa !32
  %65 = fadd double %fiz.0.lcssa, %64
  store double %65, double* %63, align 8, !tbaa !32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %lftr.wideiv24 = trunc i64 %indvars.iv.next23 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %2
  br i1 %exitcond25, label %._crit_edge16.loopexit, label %37

; <label>:66                                      ; preds = %138, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %138 ]
  %t_energy.17 = phi double [ %t_energy.014, %.lr.ph ], [ %t_energy.2, %138 ]
  %t_virial.16 = phi double [ %t_virial.013, %.lr.ph ], [ %t_virial.2, %138 ]
  %fix.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %138 ]
  %fiy.04 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %138 ]
  %fiz.03 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %138 ]
  %67 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = mul nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %44, %72
  %74 = add nsw i32 %69, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %7, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = fsub double %47, %77
  %79 = add nsw i32 %69, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %7, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fsub double %50, %82
  %84 = sext i32 %68 to i64
  %85 = getelementptr inbounds i32, i32* %11, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = fmul double %73, %73
  %88 = fmul double %78, %78
  %89 = fadd double %87, %88
  %90 = fmul double %83, %83
  %91 = fadd double %89, %90
  %92 = add nsw i32 %55, %86
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %56, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !32
  %96 = fcmp olt double %91, %95
  br i1 %96, label %97, label %138

; <label>:97                                      ; preds = %66
  %98 = fdiv double 1.000000e+00, %91
  %99 = fmul double %98, %98
  %100 = fmul double %98, %99
  %101 = load double*, double** %22, align 8, !tbaa !113
  %102 = getelementptr inbounds double, double* %101, i64 %93
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fmul double %100, %103
  %105 = fmul double %104, 4.800000e+01
  %106 = fadd double %104, -5.000000e-01
  %107 = fmul double %105, %106
  %108 = fmul double %98, %107
  %109 = load double*, double** %23, align 8, !tbaa !114
  %110 = getelementptr inbounds double, double* %109, i64 %93
  %111 = load double, double* %110, align 8, !tbaa !32
  %112 = fmul double %111, %108
  %113 = fmul double %73, %112
  %114 = fadd double %fix.05, %113
  %115 = fmul double %78, %112
  %116 = fadd double %fiy.04, %115
  %117 = fmul double %83, %112
  %118 = fadd double %fiz.03, %117
  %119 = getelementptr inbounds double, double* %9, i64 %70
  %120 = load double, double* %119, align 8, !tbaa !32
  %121 = fsub double %120, %113
  store double %121, double* %119, align 8, !tbaa !32
  %122 = getelementptr inbounds double, double* %9, i64 %75
  %123 = load double, double* %122, align 8, !tbaa !32
  %124 = fsub double %123, %115
  store double %124, double* %122, align 8, !tbaa !32
  %125 = getelementptr inbounds double, double* %9, i64 %80
  %126 = load double, double* %125, align 8, !tbaa !32
  %127 = fsub double %126, %117
  store double %127, double* %125, align 8, !tbaa !32
  %128 = fmul double %104, 4.000000e+00
  %129 = fadd double %104, -1.000000e+00
  %130 = fmul double %128, %129
  %131 = load double*, double** %23, align 8, !tbaa !114
  %132 = getelementptr inbounds double, double* %131, i64 %93
  %133 = load double, double* %132, align 8, !tbaa !32
  %134 = fmul double %130, %133
  %135 = fadd double %t_energy.17, %134
  %136 = fmul double %91, %112
  %137 = fadd double %t_virial.16, %136
  br label %138

; <label>:138                                     ; preds = %97, %66
  %fiz.1 = phi double [ %118, %97 ], [ %fiz.03, %66 ]
  %fiy.1 = phi double [ %116, %97 ], [ %fiy.04, %66 ]
  %fix.1 = phi double [ %114, %97 ], [ %fix.05, %66 ]
  %t_virial.2 = phi double [ %137, %97 ], [ %t_virial.16, %66 ]
  %t_energy.2 = phi double [ %135, %97 ], [ %t_energy.17, %66 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %41
  br i1 %exitcond, label %._crit_edge.loopexit, label %66
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ26compute_halfneigh_threadedILi1ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %5 = load i32, i32* %4, align 8, !tbaa !112
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %8 = load double*, double** %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %10 = load double*, double** %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %12 = load i32*, i32** %11, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %13 = add nsw i32 %6, -1
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %._crit_edge3

._crit_edge3:                                     ; preds = %0
  %.pre4 = bitcast i32* %.omp.is_last to i8*
  %.pre5 = bitcast i32* %.omp.stride to i8*
  %.pre7 = bitcast i32* %.omp.ub to i8*
  %.pre9 = bitcast i32* %.omp.lb to i8*
  br label %39

; <label>:15                                      ; preds = %0
  %16 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %17 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #8
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %18 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %19 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %20 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %13
  %22 = select i1 %21, i32 %13, i32 %20
  store i32 %22, i32* %.omp.ub, align 4, !tbaa !1
  %23 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %15
  %25 = sext i32 %23 to i64
  %26 = sext i32 %22 to i64
  br label %27

; <label>:27                                      ; preds = %27, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %27 ], [ %25, %.lr.ph37 ]
  %.omp.iv.035 = phi i32 [ %37, %27 ], [ %23, %.lr.ph37 ]
  %28 = mul nsw i32 %.omp.iv.035, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %10, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %10, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %28, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %10, i64 %35
  store double 0.000000e+00, double* %36, align 8, !tbaa !32
  %37 = add nsw i32 %.omp.iv.035, 1
  %38 = icmp slt i64 %indvars.iv41, %26
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1
  br i1 %38, label %27, label %._crit_edge38.loopexit

._crit_edge38.loopexit:                           ; preds = %27
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %15
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %39

; <label>:39                                      ; preds = %._crit_edge3, %._crit_edge38
  %.pre-phi10 = phi i8* [ %.pre9, %._crit_edge3 ], [ %16, %._crit_edge38 ]
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge3 ], [ %17, %._crit_edge38 ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge3 ], [ %18, %._crit_edge38 ]
  %.pre-phi = phi i8* [ %.pre4, %._crit_edge3 ], [ %19, %._crit_edge38 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi10) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %40 = add nsw i32 %3, -1
  %41 = icmp sgt i32 %3, 0
  br i1 %41, label %42, label %._crit_edge2

._crit_edge2:                                     ; preds = %39
  %.pre11 = bitcast i32* %.omp.is_last8 to i8*
  %.pre13 = bitcast i32* %.omp.stride7 to i8*
  %.pre15 = bitcast i32* %.omp.ub6 to i8*
  %.pre17 = bitcast i32* %.omp.lb5 to i8*
  br label %230

; <label>:42                                      ; preds = %39
  %43 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #8
  store i32 %40, i32* %.omp.ub6, align 4, !tbaa !1
  %45 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %46 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %47 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %48 = icmp sgt i32 %47, %40
  %49 = select i1 %48, i32 %40, i32 %47
  store i32 %49, i32* %.omp.ub6, align 4, !tbaa !1
  %50 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %42
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %54 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %55 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %56 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %57 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %58 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %59 = sext i32 %50 to i64
  br label %60

; <label>:60                                      ; preds = %226, %.lr.ph31
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %226 ], [ %59, %.lr.ph31 ]
  %t_eng_vdwl.029 = phi double [ %t_eng_vdwl.1.lcssa, %226 ], [ 0.000000e+00, %.lr.ph31 ]
  %t_virial.028 = phi double [ %t_virial.1.lcssa, %226 ], [ 0.000000e+00, %.lr.ph31 ]
  %.omp.iv2.027 = phi i32 [ %227, %226 ], [ %50, %.lr.ph31 ]
  %61 = load i32, i32* %52, align 8, !tbaa !115
  %62 = trunc i64 %indvars.iv39 to i32
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %53, align 8, !tbaa !116
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  %67 = load i32*, i32** %54, align 8, !tbaa !117
  %68 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv39
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = mul nsw i32 %.omp.iv2.027, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %8, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !32
  %74 = add nsw i32 %70, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %8, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = add nsw i32 %70, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %8, i64 %79
  %81 = load double, double* %80, align 8, !tbaa !32
  %82 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv39
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = icmp sgt i32 %69, 0
  br i1 %84, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %193
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %t_eng_vdwl.1.lcssa = phi double [ %t_eng_vdwl.029, %60 ], [ %t_eng_vdwl.2, %._crit_edge.loopexit ]
  %t_virial.1.lcssa = phi double [ %t_virial.028, %60 ], [ %t_virial.2, %._crit_edge.loopexit ]
  %fix.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiz.1, %._crit_edge.loopexit ]
  %85 = getelementptr inbounds double, double* %10, i64 %71
  %86 = bitcast double* %85 to i64*
  %87 = load atomic i64, i64* %86 monotonic, align 8, !tbaa !32
  br label %194

.lr.ph:                                           ; preds = %.lr.ph.preheader, %193
  %indvars.iv = phi i64 [ %indvars.iv.next, %193 ], [ 0, %.lr.ph.preheader ]
  %t_eng_vdwl.122 = phi double [ %t_eng_vdwl.2, %193 ], [ %t_eng_vdwl.029, %.lr.ph.preheader ]
  %t_virial.121 = phi double [ %t_virial.2, %193 ], [ %t_virial.028, %.lr.ph.preheader ]
  %fix.020 = phi double [ %fix.1, %193 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiy.019 = phi double [ %fiy.1, %193 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiz.018 = phi double [ %fiz.1, %193 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %88 = getelementptr inbounds i32, i32* %66, i64 %indvars.iv
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = mul nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %8, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fsub double %73, %93
  %95 = add nsw i32 %90, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %8, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %77, %98
  %100 = add nsw i32 %90, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %8, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %81, %103
  %105 = sext i32 %89 to i64
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = fmul double %94, %94
  %109 = fmul double %99, %99
  %110 = fadd double %108, %109
  %111 = fmul double %104, %104
  %112 = fadd double %110, %111
  %113 = load i32, i32* %55, align 8, !tbaa !109
  %114 = mul nsw i32 %113, %83
  %115 = add nsw i32 %114, %107
  %116 = sext i32 %115 to i64
  %117 = load double*, double** %56, align 8, !tbaa !118
  %118 = getelementptr inbounds double, double* %117, i64 %116
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fcmp olt double %112, %119
  br i1 %120, label %121, label %193

; <label>:121                                     ; preds = %.lr.ph
  %122 = fdiv double 1.000000e+00, %112
  %123 = fmul double %122, %122
  %124 = fmul double %122, %123
  %125 = load double*, double** %57, align 8, !tbaa !113
  %126 = getelementptr inbounds double, double* %125, i64 %116
  %127 = load double, double* %126, align 8, !tbaa !32
  %128 = fmul double %124, %127
  %129 = fmul double %128, 4.800000e+01
  %130 = fadd double %128, -5.000000e-01
  %131 = fmul double %129, %130
  %132 = fmul double %122, %131
  %133 = load double*, double** %58, align 8, !tbaa !114
  %134 = getelementptr inbounds double, double* %133, i64 %116
  %135 = load double, double* %134, align 8, !tbaa !32
  %136 = fmul double %135, %132
  %137 = fmul double %94, %136
  %138 = fadd double %fix.020, %137
  %139 = fmul double %99, %136
  %140 = fadd double %fiy.019, %139
  %141 = fmul double %104, %136
  %142 = fadd double %fiz.018, %141
  %143 = icmp slt i32 %89, %3
  br i1 %143, label %144, label %.loopexit

; <label>:144                                     ; preds = %121
  %145 = getelementptr inbounds double, double* %10, i64 %91
  %146 = bitcast double* %145 to i64*
  %147 = load atomic i64, i64* %146 monotonic, align 8, !tbaa !32
  br label %148

; <label>:148                                     ; preds = %148, %144
  %149 = phi i64 [ %147, %144 ], [ %154, %148 ]
  %150 = bitcast i64 %149 to double
  %151 = fsub double %150, %137
  %152 = bitcast double %151 to i64
  %153 = cmpxchg i64* %146, i64 %149, i64 %152 monotonic monotonic
  %154 = extractvalue { i64, i1 } %153, 0
  %155 = extractvalue { i64, i1 } %153, 1
  br i1 %155, label %156, label %148

; <label>:156                                     ; preds = %148
  %157 = getelementptr inbounds double, double* %10, i64 %96
  %158 = bitcast double* %157 to i64*
  %159 = load atomic i64, i64* %158 monotonic, align 8, !tbaa !32
  br label %160

; <label>:160                                     ; preds = %160, %156
  %161 = phi i64 [ %159, %156 ], [ %166, %160 ]
  %162 = bitcast i64 %161 to double
  %163 = fsub double %162, %139
  %164 = bitcast double %163 to i64
  %165 = cmpxchg i64* %158, i64 %161, i64 %164 monotonic monotonic
  %166 = extractvalue { i64, i1 } %165, 0
  %167 = extractvalue { i64, i1 } %165, 1
  br i1 %167, label %168, label %160

; <label>:168                                     ; preds = %160
  %169 = getelementptr inbounds double, double* %10, i64 %101
  %170 = bitcast double* %169 to i64*
  %171 = load atomic i64, i64* %170 monotonic, align 8, !tbaa !32
  br label %172

; <label>:172                                     ; preds = %172, %168
  %173 = phi i64 [ %171, %168 ], [ %178, %172 ]
  %174 = bitcast i64 %173 to double
  %175 = fsub double %174, %141
  %176 = bitcast double %175 to i64
  %177 = cmpxchg i64* %170, i64 %173, i64 %176 monotonic monotonic
  %178 = extractvalue { i64, i1 } %177, 0
  %179 = extractvalue { i64, i1 } %177, 1
  br i1 %179, label %..loopexit_crit_edge, label %172

..loopexit_crit_edge:                             ; preds = %172
  %.pre = load double*, double** %58, align 8, !tbaa !114
  %.phi.trans.insert = getelementptr inbounds double, double* %.pre, i64 %116
  %.pre1 = load double, double* %.phi.trans.insert, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %121
  %180 = phi double [ %.pre1, %..loopexit_crit_edge ], [ %135, %121 ]
  %181 = phi double* [ %.pre, %..loopexit_crit_edge ], [ %133, %121 ]
  %182 = select i1 %143, double 1.000000e+00, double 5.000000e-01
  %183 = fmul double %128, 4.000000e+00
  %184 = fadd double %128, -1.000000e+00
  %185 = fmul double %183, %184
  %186 = fmul double %182, %185
  %187 = getelementptr inbounds double, double* %181, i64 %116
  %188 = fmul double %186, %180
  %189 = fadd double %t_eng_vdwl.122, %188
  %190 = fmul double %182, %112
  %191 = fmul double %190, %136
  %192 = fadd double %t_virial.121, %191
  br label %193

; <label>:193                                     ; preds = %.loopexit, %.lr.ph
  %fiz.1 = phi double [ %142, %.loopexit ], [ %fiz.018, %.lr.ph ]
  %fiy.1 = phi double [ %140, %.loopexit ], [ %fiy.019, %.lr.ph ]
  %fix.1 = phi double [ %138, %.loopexit ], [ %fix.020, %.lr.ph ]
  %t_virial.2 = phi double [ %192, %.loopexit ], [ %t_virial.121, %.lr.ph ]
  %t_eng_vdwl.2 = phi double [ %189, %.loopexit ], [ %t_eng_vdwl.122, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %69
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

; <label>:194                                     ; preds = %194, %._crit_edge
  %195 = phi i64 [ %87, %._crit_edge ], [ %200, %194 ]
  %196 = bitcast i64 %195 to double
  %197 = fadd double %fix.0.lcssa, %196
  %198 = bitcast double %197 to i64
  %199 = cmpxchg i64* %86, i64 %195, i64 %198 monotonic monotonic
  %200 = extractvalue { i64, i1 } %199, 0
  %201 = extractvalue { i64, i1 } %199, 1
  br i1 %201, label %202, label %194

; <label>:202                                     ; preds = %194
  %203 = getelementptr inbounds double, double* %10, i64 %75
  %204 = bitcast double* %203 to i64*
  %205 = load atomic i64, i64* %204 monotonic, align 8, !tbaa !32
  br label %206

; <label>:206                                     ; preds = %206, %202
  %207 = phi i64 [ %205, %202 ], [ %212, %206 ]
  %208 = bitcast i64 %207 to double
  %209 = fadd double %fiy.0.lcssa, %208
  %210 = bitcast double %209 to i64
  %211 = cmpxchg i64* %204, i64 %207, i64 %210 monotonic monotonic
  %212 = extractvalue { i64, i1 } %211, 0
  %213 = extractvalue { i64, i1 } %211, 1
  br i1 %213, label %214, label %206

; <label>:214                                     ; preds = %206
  %215 = getelementptr inbounds double, double* %10, i64 %79
  %216 = bitcast double* %215 to i64*
  %217 = load atomic i64, i64* %216 monotonic, align 8, !tbaa !32
  br label %218

; <label>:218                                     ; preds = %218, %214
  %219 = phi i64 [ %217, %214 ], [ %224, %218 ]
  %220 = bitcast i64 %219 to double
  %221 = fadd double %fiz.0.lcssa, %220
  %222 = bitcast double %221 to i64
  %223 = cmpxchg i64* %216, i64 %219, i64 %222 monotonic monotonic
  %224 = extractvalue { i64, i1 } %223, 0
  %225 = extractvalue { i64, i1 } %223, 1
  br i1 %225, label %226, label %218

; <label>:226                                     ; preds = %218
  %227 = add nsw i32 %.omp.iv2.027, 1
  %228 = sext i32 %49 to i64
  %229 = icmp slt i64 %indvars.iv39, %228
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  br i1 %229, label %60, label %._crit_edge32.loopexit

._crit_edge32.loopexit:                           ; preds = %226
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %42
  %t_eng_vdwl.0.lcssa = phi double [ 0.000000e+00, %42 ], [ %t_eng_vdwl.1.lcssa, %._crit_edge32.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %42 ], [ %t_virial.1.lcssa, %._crit_edge32.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %230

; <label>:230                                     ; preds = %._crit_edge2, %._crit_edge32
  %.pre-phi18 = phi i8* [ %.pre17, %._crit_edge2 ], [ %43, %._crit_edge32 ]
  %.pre-phi16 = phi i8* [ %.pre15, %._crit_edge2 ], [ %44, %._crit_edge32 ]
  %.pre-phi14 = phi i8* [ %.pre13, %._crit_edge2 ], [ %45, %._crit_edge32 ]
  %.pre-phi12 = phi i8* [ %.pre11, %._crit_edge2 ], [ %46, %._crit_edge32 ]
  %t_virial.3 = phi double [ %t_virial.0.lcssa, %._crit_edge32 ], [ 0.000000e+00, %._crit_edge2 ]
  %t_eng_vdwl.3 = phi double [ %t_eng_vdwl.0.lcssa, %._crit_edge32 ], [ 0.000000e+00, %._crit_edge2 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi12) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi14) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi16) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi18) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %231 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %232 = bitcast double* %231 to i64*
  %233 = load atomic i64, i64* %232 monotonic, align 8, !tbaa !32
  br label %234

; <label>:234                                     ; preds = %234, %230
  %235 = phi i64 [ %233, %230 ], [ %240, %234 ]
  %236 = bitcast i64 %235 to double
  %237 = fadd double %t_eng_vdwl.3, %236
  %238 = bitcast double %237 to i64
  %239 = cmpxchg i64* %232, i64 %235, i64 %238 monotonic monotonic
  %240 = extractvalue { i64, i1 } %239, 0
  %241 = extractvalue { i64, i1 } %239, 1
  br i1 %241, label %242, label %234

; <label>:242                                     ; preds = %234
  %243 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %244 = bitcast double* %243 to i64*
  %245 = load atomic i64, i64* %244 monotonic, align 8, !tbaa !32
  br label %246

; <label>:246                                     ; preds = %246, %242
  %247 = phi i64 [ %245, %242 ], [ %252, %246 ]
  %248 = bitcast i64 %247 to double
  %249 = fadd double %t_virial.3, %248
  %250 = bitcast double %249 to i64
  %251 = cmpxchg i64* %244, i64 %247, i64 %250 monotonic monotonic
  %252 = extractvalue { i64, i1 } %251, 0
  %253 = extractvalue { i64, i1 } %251, 1
  br i1 %253, label %254, label %246

; <label>:254                                     ; preds = %246
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_halfneighILi1ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %.lr.ph21.preheader, label %.preheader

.lr.ph21.preheader:                               ; preds = %0
  br label %.lr.ph21

.preheader.loopexit:                              ; preds = %.lr.ph21
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %.preheader
  %14 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %21 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %24 = sext i32 %15 to i64
  br label %37

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader
  %indvars.iv26 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next27, %.lr.ph21 ]
  %25 = mul nuw nsw i64 %indvars.iv26, 3
  %26 = getelementptr inbounds double, double* %9, i64 %25
  store double 0.000000e+00, double* %26, align 8, !tbaa !32
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %25, 2
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.next27 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %5
  br i1 %exitcond29, label %.preheader.loopexit, label %.lr.ph21

._crit_edge16.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit, %.preheader
  %t_energy.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %t_energy.1.lcssa, %._crit_edge16.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %t_virial.1.lcssa, %._crit_edge16.loopexit ]
  %31 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %32 = load double, double* %31, align 8, !tbaa !110
  %33 = fadd double %t_energy.0.lcssa, %32
  store double %33, double* %31, align 8, !tbaa !110
  %34 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %35 = load double, double* %34, align 8, !tbaa !111
  %36 = fadd double %t_virial.0.lcssa, %35
  store double %36, double* %34, align 8, !tbaa !111
  ret void

; <label>:37                                      ; preds = %._crit_edge, %.lr.ph15
  %indvars.iv22 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next23, %._crit_edge ]
  %t_energy.014 = phi double [ 0.000000e+00, %.lr.ph15 ], [ %t_energy.1.lcssa, %._crit_edge ]
  %t_virial.013 = phi double [ 0.000000e+00, %.lr.ph15 ], [ %t_virial.1.lcssa, %._crit_edge ]
  %38 = mul nsw i64 %24, %indvars.iv22
  %39 = getelementptr inbounds i32, i32* %17, i64 %38
  %40 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv22
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = mul nuw nsw i64 %indvars.iv22, 3
  %43 = getelementptr inbounds double, double* %7, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = add nuw nsw i64 %42, 1
  %46 = getelementptr inbounds double, double* %7, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !32
  %48 = add nuw nsw i64 %42, 2
  %49 = getelementptr inbounds double, double* %7, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !32
  %51 = icmp sgt i32 %41, 0
  br i1 %51, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %37
  %52 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv22
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = load i32, i32* %20, align 8
  %55 = mul nsw i32 %54, %53
  %56 = load double*, double** %21, align 8
  br label %66

._crit_edge.loopexit:                             ; preds = %144
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %37
  %t_energy.1.lcssa = phi double [ %t_energy.014, %37 ], [ %t_energy.2, %._crit_edge.loopexit ]
  %t_virial.1.lcssa = phi double [ %t_virial.013, %37 ], [ %t_virial.2, %._crit_edge.loopexit ]
  %fix.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiz.1, %._crit_edge.loopexit ]
  %57 = getelementptr inbounds double, double* %9, i64 %42
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = fadd double %fix.0.lcssa, %58
  store double %59, double* %57, align 8, !tbaa !32
  %60 = getelementptr inbounds double, double* %9, i64 %45
  %61 = load double, double* %60, align 8, !tbaa !32
  %62 = fadd double %fiy.0.lcssa, %61
  store double %62, double* %60, align 8, !tbaa !32
  %63 = getelementptr inbounds double, double* %9, i64 %48
  %64 = load double, double* %63, align 8, !tbaa !32
  %65 = fadd double %fiz.0.lcssa, %64
  store double %65, double* %63, align 8, !tbaa !32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %lftr.wideiv24 = trunc i64 %indvars.iv.next23 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %2
  br i1 %exitcond25, label %._crit_edge16.loopexit, label %37

; <label>:66                                      ; preds = %144, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %144 ]
  %t_energy.17 = phi double [ %t_energy.014, %.lr.ph ], [ %t_energy.2, %144 ]
  %t_virial.16 = phi double [ %t_virial.013, %.lr.ph ], [ %t_virial.2, %144 ]
  %fix.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %144 ]
  %fiy.04 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %144 ]
  %fiz.03 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %144 ]
  %67 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = mul nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %44, %72
  %74 = add nsw i32 %69, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %7, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = fsub double %47, %77
  %79 = add nsw i32 %69, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %7, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fsub double %50, %82
  %84 = sext i32 %68 to i64
  %85 = getelementptr inbounds i32, i32* %11, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = fmul double %73, %73
  %88 = fmul double %78, %78
  %89 = fadd double %87, %88
  %90 = fmul double %83, %83
  %91 = fadd double %89, %90
  %92 = add nsw i32 %55, %86
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %56, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !32
  %96 = fcmp olt double %91, %95
  br i1 %96, label %97, label %144

; <label>:97                                      ; preds = %66
  %98 = fdiv double 1.000000e+00, %91
  %99 = fmul double %98, %98
  %100 = fmul double %98, %99
  %101 = load double*, double** %22, align 8, !tbaa !113
  %102 = getelementptr inbounds double, double* %101, i64 %93
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fmul double %100, %103
  %105 = fmul double %104, 4.800000e+01
  %106 = fadd double %104, -5.000000e-01
  %107 = fmul double %105, %106
  %108 = fmul double %98, %107
  %109 = load double*, double** %23, align 8, !tbaa !114
  %110 = getelementptr inbounds double, double* %109, i64 %93
  %111 = load double, double* %110, align 8, !tbaa !32
  %112 = fmul double %111, %108
  %113 = fmul double %73, %112
  %114 = fadd double %fix.05, %113
  %115 = fmul double %78, %112
  %116 = fadd double %fiy.04, %115
  %117 = fmul double %83, %112
  %118 = fadd double %fiz.03, %117
  %119 = icmp slt i32 %68, %2
  br i1 %119, label %120, label %130

; <label>:120                                     ; preds = %97
  %121 = getelementptr inbounds double, double* %9, i64 %70
  %122 = load double, double* %121, align 8, !tbaa !32
  %123 = fsub double %122, %113
  store double %123, double* %121, align 8, !tbaa !32
  %124 = getelementptr inbounds double, double* %9, i64 %75
  %125 = load double, double* %124, align 8, !tbaa !32
  %126 = fsub double %125, %115
  store double %126, double* %124, align 8, !tbaa !32
  %127 = getelementptr inbounds double, double* %9, i64 %80
  %128 = load double, double* %127, align 8, !tbaa !32
  %129 = fsub double %128, %117
  store double %129, double* %127, align 8, !tbaa !32
  %.pre = load double*, double** %23, align 8, !tbaa !114
  %.phi.trans.insert = getelementptr inbounds double, double* %.pre, i64 %93
  %.pre1 = load double, double* %.phi.trans.insert, align 8, !tbaa !32
  br label %130

; <label>:130                                     ; preds = %120, %97
  %131 = phi double [ %.pre1, %120 ], [ %111, %97 ]
  %132 = phi double* [ %.pre, %120 ], [ %109, %97 ]
  %133 = select i1 %119, double 1.000000e+00, double 5.000000e-01
  %134 = fmul double %104, 4.000000e+00
  %135 = fadd double %104, -1.000000e+00
  %136 = fmul double %134, %135
  %137 = fmul double %133, %136
  %138 = getelementptr inbounds double, double* %132, i64 %93
  %139 = fmul double %137, %131
  %140 = fadd double %t_energy.17, %139
  %141 = fmul double %133, %91
  %142 = fmul double %141, %112
  %143 = fadd double %t_virial.16, %142
  br label %144

; <label>:144                                     ; preds = %130, %66
  %fiz.1 = phi double [ %118, %130 ], [ %fiz.03, %66 ]
  %fiy.1 = phi double [ %116, %130 ], [ %fiy.04, %66 ]
  %fix.1 = phi double [ %114, %130 ], [ %fix.05, %66 ]
  %t_virial.2 = phi double [ %143, %130 ], [ %t_virial.16, %66 ]
  %t_energy.2 = phi double [ %140, %130 ], [ %t_energy.17, %66 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %41
  br i1 %exitcond, label %._crit_edge.loopexit, label %66
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_fullneighILi1EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %5 = load double*, double** %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %7 = load double*, double** %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %9 = load i32*, i32** %8, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %10 = add nsw i32 %3, -1
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %.critedge

; <label>:12                                      ; preds = %0
  %13 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %14 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #8
  store i32 %10, i32* %.omp.ub, align 4, !tbaa !1
  %15 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %16 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %17 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %18 = icmp sgt i32 %17, %10
  %19 = select i1 %18, i32 %10, i32 %17
  store i32 %19, i32* %.omp.ub, align 4, !tbaa !1
  %20 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %12
  %22 = sext i32 %20 to i64
  %23 = sext i32 %19 to i64
  br label %24

; <label>:24                                      ; preds = %24, %.lr.ph31
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %24 ], [ %22, %.lr.ph31 ]
  %.omp.iv.029 = phi i32 [ %34, %24 ], [ %20, %.lr.ph31 ]
  %25 = mul nsw i32 %.omp.iv.029, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %7, i64 %26
  store double 0.000000e+00, double* %27, align 8, !tbaa !32
  %28 = add nsw i32 %25, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %7, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %25, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %7, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %.omp.iv.029, 1
  %35 = icmp slt i64 %indvars.iv35, %23
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1
  br i1 %35, label %24, label %._crit_edge32.loopexit

._crit_edge32.loopexit:                           ; preds = %24
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %12
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  call void @llvm.lifetime.end(i64 4, i8* %16) #8
  call void @llvm.lifetime.end(i64 4, i8* %15) #8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %14) #8
  call void @llvm.lifetime.end(i64 4, i8* %13) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %36 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %37 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #8
  store i32 %10, i32* %.omp.ub6, align 4, !tbaa !1
  %38 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %39 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %40 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %41 = icmp sgt i32 %40, %10
  %42 = select i1 %41, i32 %10, i32 %40
  store i32 %42, i32* %.omp.ub6, align 4, !tbaa !1
  %43 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = icmp sgt i32 %43, %42
  br i1 %44, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %._crit_edge32
  %45 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %52 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %53 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %54 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %55 = sext i32 %43 to i64
  %56 = sext i32 %46 to i64
  %57 = sext i32 %42 to i64
  br label %58

; <label>:58                                      ; preds = %._crit_edge, %.lr.ph25
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %._crit_edge ], [ %55, %.lr.ph25 ]
  %t_eng_vdwl.023 = phi double [ %t_eng_vdwl.1.lcssa, %._crit_edge ], [ 0.000000e+00, %.lr.ph25 ]
  %t_virial.022 = phi double [ %t_virial.1.lcssa, %._crit_edge ], [ 0.000000e+00, %.lr.ph25 ]
  %.omp.iv2.021 = phi i32 [ %90, %._crit_edge ], [ %43, %.lr.ph25 ]
  %59 = mul nsw i64 %56, %indvars.iv33
  %60 = getelementptr inbounds i32, i32* %48, i64 %59
  %61 = getelementptr inbounds i32, i32* %50, i64 %indvars.iv33
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %63 = mul nsw i32 %.omp.iv2.021, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %5, i64 %64
  %66 = load double, double* %65, align 8, !tbaa !32
  %67 = add nsw i32 %63, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %5, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !32
  %71 = add nsw i32 %63, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %5, i64 %72
  %74 = load double, double* %73, align 8, !tbaa !32
  %75 = icmp sgt i32 %62, 0
  br i1 %75, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %58
  %76 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv33
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = load i32, i32* %51, align 8
  %79 = mul nsw i32 %78, %77
  %80 = load double*, double** %52, align 8
  br label %92

._crit_edge.loopexit:                             ; preds = %151
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %58
  %t_eng_vdwl.1.lcssa = phi double [ %t_eng_vdwl.023, %58 ], [ %t_eng_vdwl.2, %._crit_edge.loopexit ]
  %t_virial.1.lcssa = phi double [ %t_virial.022, %58 ], [ %t_virial.2, %._crit_edge.loopexit ]
  %fix.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fiz.1, %._crit_edge.loopexit ]
  %81 = getelementptr inbounds double, double* %7, i64 %64
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fadd double %fix.0.lcssa, %82
  store double %83, double* %81, align 8, !tbaa !32
  %84 = getelementptr inbounds double, double* %7, i64 %68
  %85 = load double, double* %84, align 8, !tbaa !32
  %86 = fadd double %fiy.0.lcssa, %85
  store double %86, double* %84, align 8, !tbaa !32
  %87 = getelementptr inbounds double, double* %7, i64 %72
  %88 = load double, double* %87, align 8, !tbaa !32
  %89 = fadd double %fiz.0.lcssa, %88
  store double %89, double* %87, align 8, !tbaa !32
  %90 = add nsw i32 %.omp.iv2.021, 1
  %91 = icmp slt i64 %indvars.iv33, %57
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  br i1 %91, label %58, label %._crit_edge26.loopexit

; <label>:92                                      ; preds = %151, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %151 ]
  %t_eng_vdwl.116 = phi double [ %t_eng_vdwl.023, %.lr.ph ], [ %t_eng_vdwl.2, %151 ]
  %t_virial.115 = phi double [ %t_virial.022, %.lr.ph ], [ %t_virial.2, %151 ]
  %fix.014 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %151 ]
  %fiy.013 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %151 ]
  %fiz.012 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %151 ]
  %93 = getelementptr inbounds i32, i32* %60, i64 %indvars.iv
  %94 = load i32, i32* %93, align 4, !tbaa !1
  %95 = mul nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %5, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %66, %98
  %100 = add nsw i32 %95, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %5, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %70, %103
  %105 = add nsw i32 %95, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %5, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !32
  %109 = fsub double %74, %108
  %110 = sext i32 %94 to i64
  %111 = getelementptr inbounds i32, i32* %9, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = fmul double %99, %99
  %114 = fmul double %104, %104
  %115 = fadd double %113, %114
  %116 = fmul double %109, %109
  %117 = fadd double %115, %116
  %118 = add nsw i32 %79, %112
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %80, i64 %119
  %121 = load double, double* %120, align 8, !tbaa !32
  %122 = fcmp olt double %117, %121
  br i1 %122, label %123, label %151

; <label>:123                                     ; preds = %92
  %124 = fdiv double 1.000000e+00, %117
  %125 = fmul double %124, %124
  %126 = fmul double %124, %125
  %127 = load double*, double** %53, align 8, !tbaa !113
  %128 = getelementptr inbounds double, double* %127, i64 %119
  %129 = load double, double* %128, align 8, !tbaa !32
  %130 = fmul double %126, %129
  %131 = fmul double %130, 4.800000e+01
  %132 = fadd double %130, -5.000000e-01
  %133 = fmul double %131, %132
  %134 = fmul double %124, %133
  %135 = load double*, double** %54, align 8, !tbaa !114
  %136 = getelementptr inbounds double, double* %135, i64 %119
  %137 = load double, double* %136, align 8, !tbaa !32
  %138 = fmul double %137, %134
  %139 = fmul double %99, %138
  %140 = fadd double %fix.014, %139
  %141 = fmul double %104, %138
  %142 = fadd double %fiy.013, %141
  %143 = fmul double %109, %138
  %144 = fadd double %fiz.012, %143
  %145 = fadd double %130, -1.000000e+00
  %146 = fmul double %130, %145
  %147 = fmul double %137, %146
  %148 = fadd double %t_eng_vdwl.116, %147
  %149 = fmul double %117, %138
  %150 = fadd double %t_virial.115, %149
  br label %151

; <label>:151                                     ; preds = %123, %92
  %fiz.1 = phi double [ %144, %123 ], [ %fiz.012, %92 ]
  %fiy.1 = phi double [ %142, %123 ], [ %fiy.013, %92 ]
  %fix.1 = phi double [ %140, %123 ], [ %fix.014, %92 ]
  %t_virial.2 = phi double [ %150, %123 ], [ %t_virial.115, %92 ]
  %t_eng_vdwl.2 = phi double [ %148, %123 ], [ %t_eng_vdwl.116, %92 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %62
  br i1 %exitcond, label %._crit_edge.loopexit, label %92

._crit_edge26.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge32
  %t_eng_vdwl.0.lcssa = phi double [ 0.000000e+00, %._crit_edge32 ], [ %t_eng_vdwl.1.lcssa, %._crit_edge26.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %._crit_edge32 ], [ %t_virial.1.lcssa, %._crit_edge26.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %156

.critedge:                                        ; preds = %0
  %152 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #8
  %153 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #8
  %154 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #8
  %155 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #8
  tail call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %.pre = bitcast i32* %.omp.is_last8 to i8*
  %.pre1 = bitcast i32* %.omp.stride7 to i8*
  %.pre3 = bitcast i32* %.omp.ub6 to i8*
  %.pre5 = bitcast i32* %.omp.lb5 to i8*
  br label %156

; <label>:156                                     ; preds = %.critedge, %._crit_edge26
  %.pre-phi6 = phi i8* [ %.pre5, %.critedge ], [ %36, %._crit_edge26 ]
  %.pre-phi4 = phi i8* [ %.pre3, %.critedge ], [ %37, %._crit_edge26 ]
  %.pre-phi2 = phi i8* [ %.pre1, %.critedge ], [ %38, %._crit_edge26 ]
  %.pre-phi = phi i8* [ %.pre, %.critedge ], [ %39, %._crit_edge26 ]
  %t_virial.3 = phi double [ %t_virial.0.lcssa, %._crit_edge26 ], [ 0.000000e+00, %.critedge ]
  %t_eng_vdwl.3 = phi double [ %t_eng_vdwl.0.lcssa, %._crit_edge26 ], [ 0.000000e+00, %.critedge ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi2) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %157 = fmul double %t_eng_vdwl.3, 4.000000e+00
  %158 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %159 = bitcast double* %158 to i64*
  %160 = load atomic i64, i64* %159 monotonic, align 8, !tbaa !32
  br label %161

; <label>:161                                     ; preds = %161, %156
  %162 = phi i64 [ %160, %156 ], [ %167, %161 ]
  %163 = bitcast i64 %162 to double
  %164 = fadd double %157, %163
  %165 = bitcast double %164 to i64
  %166 = cmpxchg i64* %159, i64 %162, i64 %165 monotonic monotonic
  %167 = extractvalue { i64, i1 } %166, 0
  %168 = extractvalue { i64, i1 } %166, 1
  br i1 %168, label %169, label %161

; <label>:169                                     ; preds = %161
  %170 = fmul double %t_virial.3, 5.000000e-01
  %171 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %172 = bitcast double* %171 to i64*
  %173 = load atomic i64, i64* %172 monotonic, align 8, !tbaa !32
  br label %174

; <label>:174                                     ; preds = %174, %169
  %175 = phi i64 [ %173, %169 ], [ %180, %174 ]
  %176 = bitcast i64 %175 to double
  %177 = fadd double %170, %176
  %178 = bitcast double %177 to i64
  %179 = cmpxchg i64* %172, i64 %175, i64 %178 monotonic monotonic
  %180 = extractvalue { i64, i1 } %179, 0
  %181 = extractvalue { i64, i1 } %179, 1
  br i1 %181, label %182, label %174

; <label>:182                                     ; preds = %174
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ16compute_originalILi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  store double 0.000000e+00, double* %12, align 8, !tbaa !110
  %13 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %13, align 8, !tbaa !111
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %.lr.ph8.preheader, label %.preheader

.lr.ph8.preheader:                                ; preds = %0
  br label %.lr.ph8

.preheader.loopexit:                              ; preds = %.lr.ph8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.preheader
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %24 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %25 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %26 = sext i32 %17 to i64
  br label %33

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next14, %.lr.ph8 ]
  %27 = mul nuw nsw i64 %indvars.iv13, 3
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %27, 1
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nuw nsw i64 %27, 2
  %32 = getelementptr inbounds double, double* %9, i64 %31
  store double 0.000000e+00, double* %32, align 8, !tbaa !32
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv.next14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %5
  br i1 %exitcond16, label %.preheader.loopexit, label %.lr.ph8

._crit_edge5.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %.preheader
  ret void

; <label>:33                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv9 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next10, %._crit_edge ]
  %34 = mul nsw i64 %26, %indvars.iv9
  %35 = getelementptr inbounds i32, i32* %19, i64 %34
  %36 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv9
  %37 = load i32, i32* %36, align 4, !tbaa !1
  %38 = mul nuw nsw i64 %indvars.iv9, 3
  %39 = getelementptr inbounds double, double* %7, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !32
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds double, double* %7, i64 %41
  %43 = load double, double* %42, align 8, !tbaa !32
  %44 = add nuw nsw i64 %38, 2
  %45 = getelementptr inbounds double, double* %7, i64 %44
  %46 = load double, double* %45, align 8, !tbaa !32
  %47 = icmp sgt i32 %37, 0
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %33
  %48 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv9
  %49 = load i32, i32* %48, align 4, !tbaa !1
  %50 = load i32, i32* %22, align 8
  %51 = mul nsw i32 %50, %49
  %52 = load double*, double** %23, align 8
  %53 = getelementptr inbounds double, double* %9, i64 %38
  %54 = getelementptr inbounds double, double* %9, i64 %41
  %55 = getelementptr inbounds double, double* %9, i64 %44
  br label %56

._crit_edge.loopexit:                             ; preds = %121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %33
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %lftr.wideiv11 = trunc i64 %indvars.iv.next10 to i32
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %2
  br i1 %exitcond12, label %._crit_edge5.loopexit, label %33

; <label>:56                                      ; preds = %121, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %121 ]
  %57 = getelementptr inbounds i32, i32* %35, i64 %indvars.iv
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = mul nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %7, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !32
  %63 = fsub double %40, %62
  %64 = add nsw i32 %59, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %7, i64 %65
  %67 = load double, double* %66, align 8, !tbaa !32
  %68 = fsub double %43, %67
  %69 = add nsw i32 %59, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %46, %72
  %74 = sext i32 %58 to i64
  %75 = getelementptr inbounds i32, i32* %11, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = fmul double %63, %63
  %78 = fmul double %68, %68
  %79 = fadd double %77, %78
  %80 = fmul double %73, %73
  %81 = fadd double %79, %80
  %82 = add nsw i32 %51, %76
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %52, i64 %83
  %85 = load double, double* %84, align 8, !tbaa !32
  %86 = fcmp olt double %81, %85
  br i1 %86, label %87, label %121

; <label>:87                                      ; preds = %56
  %88 = fdiv double 1.000000e+00, %81
  %89 = fmul double %88, %88
  %90 = fmul double %88, %89
  %91 = load double*, double** %24, align 8, !tbaa !113
  %92 = getelementptr inbounds double, double* %91, i64 %83
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fmul double %90, %93
  %95 = fmul double %94, 4.800000e+01
  %96 = fadd double %94, -5.000000e-01
  %97 = fmul double %95, %96
  %98 = fmul double %88, %97
  %99 = load double*, double** %25, align 8, !tbaa !114
  %100 = getelementptr inbounds double, double* %99, i64 %83
  %101 = load double, double* %100, align 8, !tbaa !32
  %102 = fmul double %101, %98
  %103 = fmul double %63, %102
  %104 = load double, double* %53, align 8, !tbaa !32
  %105 = fadd double %104, %103
  store double %105, double* %53, align 8, !tbaa !32
  %106 = fmul double %68, %102
  %107 = load double, double* %54, align 8, !tbaa !32
  %108 = fadd double %107, %106
  store double %108, double* %54, align 8, !tbaa !32
  %109 = fmul double %73, %102
  %110 = load double, double* %55, align 8, !tbaa !32
  %111 = fadd double %109, %110
  store double %111, double* %55, align 8, !tbaa !32
  %112 = getelementptr inbounds double, double* %9, i64 %60
  %113 = load double, double* %112, align 8, !tbaa !32
  %114 = fsub double %113, %103
  store double %114, double* %112, align 8, !tbaa !32
  %115 = getelementptr inbounds double, double* %9, i64 %65
  %116 = load double, double* %115, align 8, !tbaa !32
  %117 = fsub double %116, %106
  store double %117, double* %115, align 8, !tbaa !32
  %118 = getelementptr inbounds double, double* %9, i64 %70
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fsub double %119, %109
  store double %120, double* %118, align 8, !tbaa !32
  br label %121

; <label>:121                                     ; preds = %87, %56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %37
  br i1 %exitcond, label %._crit_edge.loopexit, label %56
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %5 = load i32, i32* %4, align 8, !tbaa !112
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %8 = load double*, double** %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %10 = load double*, double** %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %12 = load i32*, i32** %11, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %13 = add nsw i32 %6, -1
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %._crit_edge2

._crit_edge2:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre3 = bitcast i32* %.omp.stride to i8*
  %.pre5 = bitcast i32* %.omp.ub to i8*
  %.pre7 = bitcast i32* %.omp.lb to i8*
  br label %39

; <label>:15                                      ; preds = %0
  %16 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %17 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #8
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %18 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %19 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %20 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %13
  %22 = select i1 %21, i32 %13, i32 %20
  store i32 %22, i32* %.omp.ub, align 4, !tbaa !1
  %23 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %15
  %25 = sext i32 %23 to i64
  %26 = sext i32 %22 to i64
  br label %27

; <label>:27                                      ; preds = %27, %.lr.ph29
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %27 ], [ %25, %.lr.ph29 ]
  %.omp.iv.027 = phi i32 [ %37, %27 ], [ %23, %.lr.ph29 ]
  %28 = mul nsw i32 %.omp.iv.027, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %10, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %10, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %28, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %10, i64 %35
  store double 0.000000e+00, double* %36, align 8, !tbaa !32
  %37 = add nsw i32 %.omp.iv.027, 1
  %38 = icmp slt i64 %indvars.iv33, %26
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  br i1 %38, label %27, label %._crit_edge30.loopexit

._crit_edge30.loopexit:                           ; preds = %27
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %15
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %39

; <label>:39                                      ; preds = %._crit_edge2, %._crit_edge30
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge2 ], [ %16, %._crit_edge30 ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge2 ], [ %17, %._crit_edge30 ]
  %.pre-phi4 = phi i8* [ %.pre3, %._crit_edge2 ], [ %18, %._crit_edge30 ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge2 ], [ %19, %._crit_edge30 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %40 = add nsw i32 %3, -1
  %41 = icmp sgt i32 %3, 0
  br i1 %41, label %42, label %._crit_edge1

._crit_edge1:                                     ; preds = %39
  %.pre9 = bitcast i32* %.omp.is_last8 to i8*
  %.pre11 = bitcast i32* %.omp.stride7 to i8*
  %.pre13 = bitcast i32* %.omp.ub6 to i8*
  %.pre15 = bitcast i32* %.omp.lb5 to i8*
  br label %214

; <label>:42                                      ; preds = %39
  %43 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #8
  store i32 %40, i32* %.omp.ub6, align 4, !tbaa !1
  %45 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %46 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %47 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %48 = icmp sgt i32 %47, %40
  %49 = select i1 %48, i32 %40, i32 %47
  store i32 %49, i32* %.omp.ub6, align 4, !tbaa !1
  %50 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %42
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %54 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %55 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %56 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %57 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %58 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %59 = sext i32 %50 to i64
  br label %60

; <label>:60                                      ; preds = %210, %.lr.ph25
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %210 ], [ %59, %.lr.ph25 ]
  %.omp.iv2.023 = phi i32 [ %211, %210 ], [ %50, %.lr.ph25 ]
  %61 = load i32, i32* %52, align 8, !tbaa !115
  %62 = trunc i64 %indvars.iv31 to i32
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %53, align 8, !tbaa !116
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  %67 = load i32*, i32** %54, align 8, !tbaa !117
  %68 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv31
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = mul nsw i32 %.omp.iv2.023, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %8, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !32
  %74 = add nsw i32 %70, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %8, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = add nsw i32 %70, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %8, i64 %79
  %81 = load double, double* %80, align 8, !tbaa !32
  %82 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv31
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = icmp sgt i32 %69, 0
  br i1 %84, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %fix.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiz.1, %._crit_edge.loopexit ]
  %85 = getelementptr inbounds double, double* %10, i64 %71
  %86 = bitcast double* %85 to i64*
  %87 = load atomic i64, i64* %86 monotonic, align 8, !tbaa !32
  br label %178

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.lr.ph.preheader ]
  %fix.020 = phi double [ %fix.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiy.019 = phi double [ %fiy.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiz.018 = phi double [ %fiz.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %88 = getelementptr inbounds i32, i32* %66, i64 %indvars.iv
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = mul nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %8, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fsub double %73, %93
  %95 = add nsw i32 %90, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %8, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %77, %98
  %100 = add nsw i32 %90, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %8, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %81, %103
  %105 = sext i32 %89 to i64
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = fmul double %94, %94
  %109 = fmul double %99, %99
  %110 = fadd double %108, %109
  %111 = fmul double %104, %104
  %112 = fadd double %110, %111
  %113 = load i32, i32* %55, align 8, !tbaa !109
  %114 = mul nsw i32 %113, %83
  %115 = add nsw i32 %114, %107
  %116 = sext i32 %115 to i64
  %117 = load double*, double** %56, align 8, !tbaa !118
  %118 = getelementptr inbounds double, double* %117, i64 %116
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fcmp olt double %112, %119
  br i1 %120, label %121, label %.loopexit

; <label>:121                                     ; preds = %.lr.ph
  %122 = fdiv double 1.000000e+00, %112
  %123 = fmul double %122, %122
  %124 = fmul double %122, %123
  %125 = load double*, double** %57, align 8, !tbaa !113
  %126 = getelementptr inbounds double, double* %125, i64 %116
  %127 = load double, double* %126, align 8, !tbaa !32
  %128 = fmul double %124, %127
  %129 = fmul double %128, 4.800000e+01
  %130 = fadd double %128, -5.000000e-01
  %131 = fmul double %129, %130
  %132 = fmul double %122, %131
  %133 = load double*, double** %58, align 8, !tbaa !114
  %134 = getelementptr inbounds double, double* %133, i64 %116
  %135 = load double, double* %134, align 8, !tbaa !32
  %136 = fmul double %135, %132
  %137 = fmul double %94, %136
  %138 = fmul double %99, %136
  %139 = fmul double %104, %136
  %140 = getelementptr inbounds double, double* %10, i64 %91
  %141 = bitcast double* %140 to i64*
  %142 = load atomic i64, i64* %141 monotonic, align 8, !tbaa !32
  br label %143

; <label>:143                                     ; preds = %143, %121
  %144 = phi i64 [ %142, %121 ], [ %149, %143 ]
  %145 = bitcast i64 %144 to double
  %146 = fsub double %145, %137
  %147 = bitcast double %146 to i64
  %148 = cmpxchg i64* %141, i64 %144, i64 %147 monotonic monotonic
  %149 = extractvalue { i64, i1 } %148, 0
  %150 = extractvalue { i64, i1 } %148, 1
  br i1 %150, label %151, label %143

; <label>:151                                     ; preds = %143
  %152 = fadd double %fiy.019, %138
  %153 = getelementptr inbounds double, double* %10, i64 %96
  %154 = bitcast double* %153 to i64*
  %155 = load atomic i64, i64* %154 monotonic, align 8, !tbaa !32
  br label %156

; <label>:156                                     ; preds = %156, %151
  %157 = phi i64 [ %155, %151 ], [ %162, %156 ]
  %158 = bitcast i64 %157 to double
  %159 = fsub double %158, %138
  %160 = bitcast double %159 to i64
  %161 = cmpxchg i64* %154, i64 %157, i64 %160 monotonic monotonic
  %162 = extractvalue { i64, i1 } %161, 0
  %163 = extractvalue { i64, i1 } %161, 1
  br i1 %163, label %164, label %156

; <label>:164                                     ; preds = %156
  %165 = fadd double %fix.020, %137
  %166 = getelementptr inbounds double, double* %10, i64 %101
  %167 = bitcast double* %166 to i64*
  %168 = load atomic i64, i64* %167 monotonic, align 8, !tbaa !32
  br label %169

; <label>:169                                     ; preds = %169, %164
  %170 = phi i64 [ %168, %164 ], [ %175, %169 ]
  %171 = bitcast i64 %170 to double
  %172 = fsub double %171, %139
  %173 = bitcast double %172 to i64
  %174 = cmpxchg i64* %167, i64 %170, i64 %173 monotonic monotonic
  %175 = extractvalue { i64, i1 } %174, 0
  %176 = extractvalue { i64, i1 } %174, 1
  br i1 %176, label %.loopexit.loopexit, label %169

.loopexit.loopexit:                               ; preds = %169
  %177 = fadd double %fiz.018, %139
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph
  %fiz.1 = phi double [ %fiz.018, %.lr.ph ], [ %177, %.loopexit.loopexit ]
  %fiy.1 = phi double [ %fiy.019, %.lr.ph ], [ %152, %.loopexit.loopexit ]
  %fix.1 = phi double [ %fix.020, %.lr.ph ], [ %165, %.loopexit.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %69
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

; <label>:178                                     ; preds = %178, %._crit_edge
  %179 = phi i64 [ %87, %._crit_edge ], [ %184, %178 ]
  %180 = bitcast i64 %179 to double
  %181 = fadd double %fix.0.lcssa, %180
  %182 = bitcast double %181 to i64
  %183 = cmpxchg i64* %86, i64 %179, i64 %182 monotonic monotonic
  %184 = extractvalue { i64, i1 } %183, 0
  %185 = extractvalue { i64, i1 } %183, 1
  br i1 %185, label %186, label %178

; <label>:186                                     ; preds = %178
  %187 = getelementptr inbounds double, double* %10, i64 %75
  %188 = bitcast double* %187 to i64*
  %189 = load atomic i64, i64* %188 monotonic, align 8, !tbaa !32
  br label %190

; <label>:190                                     ; preds = %190, %186
  %191 = phi i64 [ %189, %186 ], [ %196, %190 ]
  %192 = bitcast i64 %191 to double
  %193 = fadd double %fiy.0.lcssa, %192
  %194 = bitcast double %193 to i64
  %195 = cmpxchg i64* %188, i64 %191, i64 %194 monotonic monotonic
  %196 = extractvalue { i64, i1 } %195, 0
  %197 = extractvalue { i64, i1 } %195, 1
  br i1 %197, label %198, label %190

; <label>:198                                     ; preds = %190
  %199 = getelementptr inbounds double, double* %10, i64 %79
  %200 = bitcast double* %199 to i64*
  %201 = load atomic i64, i64* %200 monotonic, align 8, !tbaa !32
  br label %202

; <label>:202                                     ; preds = %202, %198
  %203 = phi i64 [ %201, %198 ], [ %208, %202 ]
  %204 = bitcast i64 %203 to double
  %205 = fadd double %fiz.0.lcssa, %204
  %206 = bitcast double %205 to i64
  %207 = cmpxchg i64* %200, i64 %203, i64 %206 monotonic monotonic
  %208 = extractvalue { i64, i1 } %207, 0
  %209 = extractvalue { i64, i1 } %207, 1
  br i1 %209, label %210, label %202

; <label>:210                                     ; preds = %202
  %211 = add nsw i32 %.omp.iv2.023, 1
  %212 = sext i32 %49 to i64
  %213 = icmp slt i64 %indvars.iv31, %212
  %indvars.iv.next32 = add i64 %indvars.iv31, 1
  br i1 %213, label %60, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %210
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %42
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %214

; <label>:214                                     ; preds = %._crit_edge1, %._crit_edge26
  %.pre-phi16 = phi i8* [ %.pre15, %._crit_edge1 ], [ %43, %._crit_edge26 ]
  %.pre-phi14 = phi i8* [ %.pre13, %._crit_edge1 ], [ %44, %._crit_edge26 ]
  %.pre-phi12 = phi i8* [ %.pre11, %._crit_edge1 ], [ %45, %._crit_edge26 ]
  %.pre-phi10 = phi i8* [ %.pre9, %._crit_edge1 ], [ %46, %._crit_edge26 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi10) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi12) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi14) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi16) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %215 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %216 = bitcast double* %215 to i64*
  %217 = load atomic i64, i64* %216 monotonic, align 8, !tbaa !32
  br label %218

; <label>:218                                     ; preds = %218, %214
  %219 = phi i64 [ %217, %214 ], [ %224, %218 ]
  %220 = bitcast i64 %219 to double
  %221 = fadd double %220, 0.000000e+00
  %222 = bitcast double %221 to i64
  %223 = cmpxchg i64* %216, i64 %219, i64 %222 monotonic monotonic
  %224 = extractvalue { i64, i1 } %223, 0
  %225 = extractvalue { i64, i1 } %223, 1
  br i1 %225, label %226, label %218

; <label>:226                                     ; preds = %218
  %227 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %228 = bitcast double* %227 to i64*
  %229 = load atomic i64, i64* %228 monotonic, align 8, !tbaa !32
  br label %230

; <label>:230                                     ; preds = %230, %226
  %231 = phi i64 [ %229, %226 ], [ %236, %230 ]
  %232 = bitcast i64 %231 to double
  %233 = fadd double %232, 0.000000e+00
  %234 = bitcast double %233 to i64
  %235 = cmpxchg i64* %228, i64 %231, i64 %234 monotonic monotonic
  %236 = extractvalue { i64, i1 } %235, 0
  %237 = extractvalue { i64, i1 } %235, 1
  br i1 %237, label %238, label %230

; <label>:238                                     ; preds = %230
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_halfneighILi0ELi1EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %.lr.ph13.preheader, label %.preheader

.lr.ph13.preheader:                               ; preds = %0
  br label %.lr.ph13

.preheader.loopexit:                              ; preds = %.lr.ph13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader
  %14 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %21 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %24 = sext i32 %15 to i64
  br label %37

.lr.ph13:                                         ; preds = %.lr.ph13, %.lr.ph13.preheader
  %indvars.iv18 = phi i64 [ 0, %.lr.ph13.preheader ], [ %indvars.iv.next19, %.lr.ph13 ]
  %25 = mul nuw nsw i64 %indvars.iv18, 3
  %26 = getelementptr inbounds double, double* %9, i64 %25
  store double 0.000000e+00, double* %26, align 8, !tbaa !32
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %25, 2
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv.next19 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %5
  br i1 %exitcond21, label %.preheader.loopexit, label %.lr.ph13

._crit_edge10.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit, %.preheader
  %31 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %32 = load double, double* %31, align 8, !tbaa !110
  %33 = fadd double %32, 0.000000e+00
  store double %33, double* %31, align 8, !tbaa !110
  %34 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %35 = load double, double* %34, align 8, !tbaa !111
  %36 = fadd double %35, 0.000000e+00
  store double %36, double* %34, align 8, !tbaa !111
  ret void

; <label>:37                                      ; preds = %._crit_edge, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %._crit_edge ]
  %38 = mul nsw i64 %24, %indvars.iv14
  %39 = getelementptr inbounds i32, i32* %17, i64 %38
  %40 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv14
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = mul nuw nsw i64 %indvars.iv14, 3
  %43 = getelementptr inbounds double, double* %7, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = add nuw nsw i64 %42, 1
  %46 = getelementptr inbounds double, double* %7, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !32
  %48 = add nuw nsw i64 %42, 2
  %49 = getelementptr inbounds double, double* %7, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !32
  %51 = icmp sgt i32 %41, 0
  br i1 %51, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %37
  %52 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv14
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = load i32, i32* %20, align 8
  %55 = mul nsw i32 %54, %53
  %56 = load double*, double** %21, align 8
  br label %66

._crit_edge.loopexit:                             ; preds = %128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %37
  %fix.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiz.1, %._crit_edge.loopexit ]
  %57 = getelementptr inbounds double, double* %9, i64 %42
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = fadd double %fix.0.lcssa, %58
  store double %59, double* %57, align 8, !tbaa !32
  %60 = getelementptr inbounds double, double* %9, i64 %45
  %61 = load double, double* %60, align 8, !tbaa !32
  %62 = fadd double %fiy.0.lcssa, %61
  store double %62, double* %60, align 8, !tbaa !32
  %63 = getelementptr inbounds double, double* %9, i64 %48
  %64 = load double, double* %63, align 8, !tbaa !32
  %65 = fadd double %fiz.0.lcssa, %64
  store double %65, double* %63, align 8, !tbaa !32
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next15 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %2
  br i1 %exitcond17, label %._crit_edge10.loopexit, label %37

; <label>:66                                      ; preds = %128, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %128 ]
  %fix.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %128 ]
  %fiy.04 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %128 ]
  %fiz.03 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %128 ]
  %67 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = mul nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %44, %72
  %74 = add nsw i32 %69, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %7, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = fsub double %47, %77
  %79 = add nsw i32 %69, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %7, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fsub double %50, %82
  %84 = sext i32 %68 to i64
  %85 = getelementptr inbounds i32, i32* %11, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = fmul double %73, %73
  %88 = fmul double %78, %78
  %89 = fadd double %87, %88
  %90 = fmul double %83, %83
  %91 = fadd double %89, %90
  %92 = add nsw i32 %55, %86
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %56, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !32
  %96 = fcmp olt double %91, %95
  br i1 %96, label %97, label %128

; <label>:97                                      ; preds = %66
  %98 = fdiv double 1.000000e+00, %91
  %99 = fmul double %98, %98
  %100 = fmul double %98, %99
  %101 = load double*, double** %22, align 8, !tbaa !113
  %102 = getelementptr inbounds double, double* %101, i64 %93
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fmul double %100, %103
  %105 = fmul double %104, 4.800000e+01
  %106 = fadd double %104, -5.000000e-01
  %107 = fmul double %105, %106
  %108 = fmul double %98, %107
  %109 = load double*, double** %23, align 8, !tbaa !114
  %110 = getelementptr inbounds double, double* %109, i64 %93
  %111 = load double, double* %110, align 8, !tbaa !32
  %112 = fmul double %111, %108
  %113 = fmul double %73, %112
  %114 = fadd double %fix.05, %113
  %115 = fmul double %78, %112
  %116 = fadd double %fiy.04, %115
  %117 = fmul double %83, %112
  %118 = fadd double %fiz.03, %117
  %119 = getelementptr inbounds double, double* %9, i64 %70
  %120 = load double, double* %119, align 8, !tbaa !32
  %121 = fsub double %120, %113
  store double %121, double* %119, align 8, !tbaa !32
  %122 = getelementptr inbounds double, double* %9, i64 %75
  %123 = load double, double* %122, align 8, !tbaa !32
  %124 = fsub double %123, %115
  store double %124, double* %122, align 8, !tbaa !32
  %125 = getelementptr inbounds double, double* %9, i64 %80
  %126 = load double, double* %125, align 8, !tbaa !32
  %127 = fsub double %126, %117
  store double %127, double* %125, align 8, !tbaa !32
  br label %128

; <label>:128                                     ; preds = %97, %66
  %fiz.1 = phi double [ %118, %97 ], [ %fiz.03, %66 ]
  %fiy.1 = phi double [ %116, %97 ], [ %fiy.04, %66 ]
  %fix.1 = phi double [ %114, %97 ], [ %fix.05, %66 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %41
  br i1 %exitcond, label %._crit_edge.loopexit, label %66
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ26compute_halfneigh_threadedILi0ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %5 = load i32, i32* %4, align 8, !tbaa !112
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %8 = load double*, double** %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %10 = load double*, double** %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %12 = load i32*, i32** %11, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %13 = add nsw i32 %6, -1
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %._crit_edge2

._crit_edge2:                                     ; preds = %0
  %.pre = bitcast i32* %.omp.is_last to i8*
  %.pre3 = bitcast i32* %.omp.stride to i8*
  %.pre5 = bitcast i32* %.omp.ub to i8*
  %.pre7 = bitcast i32* %.omp.lb to i8*
  br label %39

; <label>:15                                      ; preds = %0
  %16 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %17 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #8
  store i32 %13, i32* %.omp.ub, align 4, !tbaa !1
  %18 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %19 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %20 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %13
  %22 = select i1 %21, i32 %13, i32 %20
  store i32 %22, i32* %.omp.ub, align 4, !tbaa !1
  %23 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %15
  %25 = sext i32 %23 to i64
  %26 = sext i32 %22 to i64
  br label %27

; <label>:27                                      ; preds = %27, %.lr.ph29
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %27 ], [ %25, %.lr.ph29 ]
  %.omp.iv.027 = phi i32 [ %37, %27 ], [ %23, %.lr.ph29 ]
  %28 = mul nsw i32 %.omp.iv.027, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %10, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %10, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %28, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %10, i64 %35
  store double 0.000000e+00, double* %36, align 8, !tbaa !32
  %37 = add nsw i32 %.omp.iv.027, 1
  %38 = icmp slt i64 %indvars.iv33, %26
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  br i1 %38, label %27, label %._crit_edge30.loopexit

._crit_edge30.loopexit:                           ; preds = %27
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %15
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %39

; <label>:39                                      ; preds = %._crit_edge2, %._crit_edge30
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge2 ], [ %16, %._crit_edge30 ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge2 ], [ %17, %._crit_edge30 ]
  %.pre-phi4 = phi i8* [ %.pre3, %._crit_edge2 ], [ %18, %._crit_edge30 ]
  %.pre-phi = phi i8* [ %.pre, %._crit_edge2 ], [ %19, %._crit_edge30 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %40 = add nsw i32 %3, -1
  %41 = icmp sgt i32 %3, 0
  br i1 %41, label %42, label %._crit_edge1

._crit_edge1:                                     ; preds = %39
  %.pre9 = bitcast i32* %.omp.is_last8 to i8*
  %.pre11 = bitcast i32* %.omp.stride7 to i8*
  %.pre13 = bitcast i32* %.omp.ub6 to i8*
  %.pre15 = bitcast i32* %.omp.lb5 to i8*
  br label %216

; <label>:42                                      ; preds = %39
  %43 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #8
  store i32 %40, i32* %.omp.ub6, align 4, !tbaa !1
  %45 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %46 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %47 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %48 = icmp sgt i32 %47, %40
  %49 = select i1 %48, i32 %40, i32 %47
  store i32 %49, i32* %.omp.ub6, align 4, !tbaa !1
  %50 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %42
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %54 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %55 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %56 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %57 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %58 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %59 = sext i32 %50 to i64
  br label %60

; <label>:60                                      ; preds = %212, %.lr.ph25
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %212 ], [ %59, %.lr.ph25 ]
  %.omp.iv2.023 = phi i32 [ %213, %212 ], [ %50, %.lr.ph25 ]
  %61 = load i32, i32* %52, align 8, !tbaa !115
  %62 = trunc i64 %indvars.iv31 to i32
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %53, align 8, !tbaa !116
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  %67 = load i32*, i32** %54, align 8, !tbaa !117
  %68 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv31
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = mul nsw i32 %.omp.iv2.023, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %8, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !32
  %74 = add nsw i32 %70, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %8, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = add nsw i32 %70, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %8, i64 %79
  %81 = load double, double* %80, align 8, !tbaa !32
  %82 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv31
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = icmp sgt i32 %69, 0
  br i1 %84, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %fix.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %60 ], [ %fiz.1, %._crit_edge.loopexit ]
  %85 = getelementptr inbounds double, double* %10, i64 %71
  %86 = bitcast double* %85 to i64*
  %87 = load atomic i64, i64* %86 monotonic, align 8, !tbaa !32
  br label %180

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.lr.ph.preheader ]
  %fix.020 = phi double [ %fix.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiy.019 = phi double [ %fiy.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fiz.018 = phi double [ %fiz.1, %.loopexit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %88 = getelementptr inbounds i32, i32* %66, i64 %indvars.iv
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = mul nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %8, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fsub double %73, %93
  %95 = add nsw i32 %90, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %8, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %77, %98
  %100 = add nsw i32 %90, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %8, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %81, %103
  %105 = sext i32 %89 to i64
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = fmul double %94, %94
  %109 = fmul double %99, %99
  %110 = fadd double %108, %109
  %111 = fmul double %104, %104
  %112 = fadd double %110, %111
  %113 = load i32, i32* %55, align 8, !tbaa !109
  %114 = mul nsw i32 %113, %83
  %115 = add nsw i32 %114, %107
  %116 = sext i32 %115 to i64
  %117 = load double*, double** %56, align 8, !tbaa !118
  %118 = getelementptr inbounds double, double* %117, i64 %116
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fcmp olt double %112, %119
  br i1 %120, label %121, label %.loopexit

; <label>:121                                     ; preds = %.lr.ph
  %122 = fdiv double 1.000000e+00, %112
  %123 = fmul double %122, %122
  %124 = fmul double %122, %123
  %125 = load double*, double** %57, align 8, !tbaa !113
  %126 = getelementptr inbounds double, double* %125, i64 %116
  %127 = load double, double* %126, align 8, !tbaa !32
  %128 = fmul double %124, %127
  %129 = fmul double %128, 4.800000e+01
  %130 = fadd double %128, -5.000000e-01
  %131 = fmul double %129, %130
  %132 = fmul double %122, %131
  %133 = load double*, double** %58, align 8, !tbaa !114
  %134 = getelementptr inbounds double, double* %133, i64 %116
  %135 = load double, double* %134, align 8, !tbaa !32
  %136 = fmul double %135, %132
  %137 = fmul double %94, %136
  %138 = fadd double %fix.020, %137
  %139 = fmul double %99, %136
  %140 = fadd double %fiy.019, %139
  %141 = fmul double %104, %136
  %142 = fadd double %fiz.018, %141
  %143 = icmp slt i32 %89, %3
  br i1 %143, label %144, label %.loopexit

; <label>:144                                     ; preds = %121
  %145 = getelementptr inbounds double, double* %10, i64 %91
  %146 = bitcast double* %145 to i64*
  %147 = load atomic i64, i64* %146 monotonic, align 8, !tbaa !32
  br label %148

; <label>:148                                     ; preds = %148, %144
  %149 = phi i64 [ %147, %144 ], [ %154, %148 ]
  %150 = bitcast i64 %149 to double
  %151 = fsub double %150, %137
  %152 = bitcast double %151 to i64
  %153 = cmpxchg i64* %146, i64 %149, i64 %152 monotonic monotonic
  %154 = extractvalue { i64, i1 } %153, 0
  %155 = extractvalue { i64, i1 } %153, 1
  br i1 %155, label %156, label %148

; <label>:156                                     ; preds = %148
  %157 = getelementptr inbounds double, double* %10, i64 %96
  %158 = bitcast double* %157 to i64*
  %159 = load atomic i64, i64* %158 monotonic, align 8, !tbaa !32
  br label %160

; <label>:160                                     ; preds = %160, %156
  %161 = phi i64 [ %159, %156 ], [ %166, %160 ]
  %162 = bitcast i64 %161 to double
  %163 = fsub double %162, %139
  %164 = bitcast double %163 to i64
  %165 = cmpxchg i64* %158, i64 %161, i64 %164 monotonic monotonic
  %166 = extractvalue { i64, i1 } %165, 0
  %167 = extractvalue { i64, i1 } %165, 1
  br i1 %167, label %168, label %160

; <label>:168                                     ; preds = %160
  %169 = getelementptr inbounds double, double* %10, i64 %101
  %170 = bitcast double* %169 to i64*
  %171 = load atomic i64, i64* %170 monotonic, align 8, !tbaa !32
  br label %172

; <label>:172                                     ; preds = %172, %168
  %173 = phi i64 [ %171, %168 ], [ %178, %172 ]
  %174 = bitcast i64 %173 to double
  %175 = fsub double %174, %141
  %176 = bitcast double %175 to i64
  %177 = cmpxchg i64* %170, i64 %173, i64 %176 monotonic monotonic
  %178 = extractvalue { i64, i1 } %177, 0
  %179 = extractvalue { i64, i1 } %177, 1
  br i1 %179, label %.loopexit.loopexit, label %172

.loopexit.loopexit:                               ; preds = %172
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %121, %.lr.ph
  %fiz.1 = phi double [ %fiz.018, %.lr.ph ], [ %142, %121 ], [ %142, %.loopexit.loopexit ]
  %fiy.1 = phi double [ %fiy.019, %.lr.ph ], [ %140, %121 ], [ %140, %.loopexit.loopexit ]
  %fix.1 = phi double [ %fix.020, %.lr.ph ], [ %138, %121 ], [ %138, %.loopexit.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %69
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

; <label>:180                                     ; preds = %180, %._crit_edge
  %181 = phi i64 [ %87, %._crit_edge ], [ %186, %180 ]
  %182 = bitcast i64 %181 to double
  %183 = fadd double %fix.0.lcssa, %182
  %184 = bitcast double %183 to i64
  %185 = cmpxchg i64* %86, i64 %181, i64 %184 monotonic monotonic
  %186 = extractvalue { i64, i1 } %185, 0
  %187 = extractvalue { i64, i1 } %185, 1
  br i1 %187, label %188, label %180

; <label>:188                                     ; preds = %180
  %189 = getelementptr inbounds double, double* %10, i64 %75
  %190 = bitcast double* %189 to i64*
  %191 = load atomic i64, i64* %190 monotonic, align 8, !tbaa !32
  br label %192

; <label>:192                                     ; preds = %192, %188
  %193 = phi i64 [ %191, %188 ], [ %198, %192 ]
  %194 = bitcast i64 %193 to double
  %195 = fadd double %fiy.0.lcssa, %194
  %196 = bitcast double %195 to i64
  %197 = cmpxchg i64* %190, i64 %193, i64 %196 monotonic monotonic
  %198 = extractvalue { i64, i1 } %197, 0
  %199 = extractvalue { i64, i1 } %197, 1
  br i1 %199, label %200, label %192

; <label>:200                                     ; preds = %192
  %201 = getelementptr inbounds double, double* %10, i64 %79
  %202 = bitcast double* %201 to i64*
  %203 = load atomic i64, i64* %202 monotonic, align 8, !tbaa !32
  br label %204

; <label>:204                                     ; preds = %204, %200
  %205 = phi i64 [ %203, %200 ], [ %210, %204 ]
  %206 = bitcast i64 %205 to double
  %207 = fadd double %fiz.0.lcssa, %206
  %208 = bitcast double %207 to i64
  %209 = cmpxchg i64* %202, i64 %205, i64 %208 monotonic monotonic
  %210 = extractvalue { i64, i1 } %209, 0
  %211 = extractvalue { i64, i1 } %209, 1
  br i1 %211, label %212, label %204

; <label>:212                                     ; preds = %204
  %213 = add nsw i32 %.omp.iv2.023, 1
  %214 = sext i32 %49 to i64
  %215 = icmp slt i64 %indvars.iv31, %214
  %indvars.iv.next32 = add i64 %indvars.iv31, 1
  br i1 %215, label %60, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %212
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %42
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %216

; <label>:216                                     ; preds = %._crit_edge1, %._crit_edge26
  %.pre-phi16 = phi i8* [ %.pre15, %._crit_edge1 ], [ %43, %._crit_edge26 ]
  %.pre-phi14 = phi i8* [ %.pre13, %._crit_edge1 ], [ %44, %._crit_edge26 ]
  %.pre-phi12 = phi i8* [ %.pre11, %._crit_edge1 ], [ %45, %._crit_edge26 ]
  %.pre-phi10 = phi i8* [ %.pre9, %._crit_edge1 ], [ %46, %._crit_edge26 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi10) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi12) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi14) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi16) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %217 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %218 = bitcast double* %217 to i64*
  %219 = load atomic i64, i64* %218 monotonic, align 8, !tbaa !32
  br label %220

; <label>:220                                     ; preds = %220, %216
  %221 = phi i64 [ %219, %216 ], [ %226, %220 ]
  %222 = bitcast i64 %221 to double
  %223 = fadd double %222, 0.000000e+00
  %224 = bitcast double %223 to i64
  %225 = cmpxchg i64* %218, i64 %221, i64 %224 monotonic monotonic
  %226 = extractvalue { i64, i1 } %225, 0
  %227 = extractvalue { i64, i1 } %225, 1
  br i1 %227, label %228, label %220

; <label>:228                                     ; preds = %220
  %229 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %230 = bitcast double* %229 to i64*
  %231 = load atomic i64, i64* %230 monotonic, align 8, !tbaa !32
  br label %232

; <label>:232                                     ; preds = %232, %228
  %233 = phi i64 [ %231, %228 ], [ %238, %232 ]
  %234 = bitcast i64 %233 to double
  %235 = fadd double %234, 0.000000e+00
  %236 = bitcast double %235 to i64
  %237 = cmpxchg i64* %230, i64 %233, i64 %236 monotonic monotonic
  %238 = extractvalue { i64, i1 } %237, 0
  %239 = extractvalue { i64, i1 } %237, 1
  br i1 %239, label %240, label %232

; <label>:240                                     ; preds = %232
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_halfneighILi0ELi0EEEvR4AtomR8Neighbori(%class.ForceLJ* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %2 = load i32, i32* %1, align 4, !tbaa !88
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !112
  %5 = add i32 %4, %2
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %7 = load double*, double** %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %9 = load double*, double** %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %11 = load i32*, i32** %10, align 8, !tbaa !100
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %.lr.ph13.preheader, label %.preheader

.lr.ph13.preheader:                               ; preds = %0
  br label %.lr.ph13

.preheader.loopexit:                              ; preds = %.lr.ph13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader
  %14 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %21 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %22 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %23 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %24 = sext i32 %15 to i64
  br label %37

.lr.ph13:                                         ; preds = %.lr.ph13, %.lr.ph13.preheader
  %indvars.iv18 = phi i64 [ 0, %.lr.ph13.preheader ], [ %indvars.iv.next19, %.lr.ph13 ]
  %25 = mul nuw nsw i64 %indvars.iv18, 3
  %26 = getelementptr inbounds double, double* %9, i64 %25
  store double 0.000000e+00, double* %26, align 8, !tbaa !32
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds double, double* %9, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !32
  %29 = add nuw nsw i64 %25, 2
  %30 = getelementptr inbounds double, double* %9, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv.next19 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %5
  br i1 %exitcond21, label %.preheader.loopexit, label %.lr.ph13

._crit_edge10.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit, %.preheader
  %31 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %32 = load double, double* %31, align 8, !tbaa !110
  %33 = fadd double %32, 0.000000e+00
  store double %33, double* %31, align 8, !tbaa !110
  %34 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %35 = load double, double* %34, align 8, !tbaa !111
  %36 = fadd double %35, 0.000000e+00
  store double %36, double* %34, align 8, !tbaa !111
  ret void

; <label>:37                                      ; preds = %._crit_edge, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %._crit_edge ]
  %38 = mul nsw i64 %24, %indvars.iv14
  %39 = getelementptr inbounds i32, i32* %17, i64 %38
  %40 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv14
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = mul nuw nsw i64 %indvars.iv14, 3
  %43 = getelementptr inbounds double, double* %7, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = add nuw nsw i64 %42, 1
  %46 = getelementptr inbounds double, double* %7, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !32
  %48 = add nuw nsw i64 %42, 2
  %49 = getelementptr inbounds double, double* %7, i64 %48
  %50 = load double, double* %49, align 8, !tbaa !32
  %51 = icmp sgt i32 %41, 0
  br i1 %51, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %37
  %52 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv14
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = load i32, i32* %20, align 8
  %55 = mul nsw i32 %54, %53
  %56 = load double*, double** %21, align 8
  br label %66

._crit_edge.loopexit:                             ; preds = %130
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %37
  %fix.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %37 ], [ %fiz.1, %._crit_edge.loopexit ]
  %57 = getelementptr inbounds double, double* %9, i64 %42
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = fadd double %fix.0.lcssa, %58
  store double %59, double* %57, align 8, !tbaa !32
  %60 = getelementptr inbounds double, double* %9, i64 %45
  %61 = load double, double* %60, align 8, !tbaa !32
  %62 = fadd double %fiy.0.lcssa, %61
  store double %62, double* %60, align 8, !tbaa !32
  %63 = getelementptr inbounds double, double* %9, i64 %48
  %64 = load double, double* %63, align 8, !tbaa !32
  %65 = fadd double %fiz.0.lcssa, %64
  store double %65, double* %63, align 8, !tbaa !32
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next15 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %2
  br i1 %exitcond17, label %._crit_edge10.loopexit, label %37

; <label>:66                                      ; preds = %130, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %130 ]
  %fix.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %130 ]
  %fiy.04 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %130 ]
  %fiz.03 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %130 ]
  %67 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = mul nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %7, i64 %70
  %72 = load double, double* %71, align 8, !tbaa !32
  %73 = fsub double %44, %72
  %74 = add nsw i32 %69, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %7, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !32
  %78 = fsub double %47, %77
  %79 = add nsw i32 %69, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %7, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fsub double %50, %82
  %84 = sext i32 %68 to i64
  %85 = getelementptr inbounds i32, i32* %11, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = fmul double %73, %73
  %88 = fmul double %78, %78
  %89 = fadd double %87, %88
  %90 = fmul double %83, %83
  %91 = fadd double %89, %90
  %92 = add nsw i32 %55, %86
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %56, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !32
  %96 = fcmp olt double %91, %95
  br i1 %96, label %97, label %130

; <label>:97                                      ; preds = %66
  %98 = fdiv double 1.000000e+00, %91
  %99 = fmul double %98, %98
  %100 = fmul double %98, %99
  %101 = load double*, double** %22, align 8, !tbaa !113
  %102 = getelementptr inbounds double, double* %101, i64 %93
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fmul double %100, %103
  %105 = fmul double %104, 4.800000e+01
  %106 = fadd double %104, -5.000000e-01
  %107 = fmul double %105, %106
  %108 = fmul double %98, %107
  %109 = load double*, double** %23, align 8, !tbaa !114
  %110 = getelementptr inbounds double, double* %109, i64 %93
  %111 = load double, double* %110, align 8, !tbaa !32
  %112 = fmul double %111, %108
  %113 = fmul double %73, %112
  %114 = fadd double %fix.05, %113
  %115 = fmul double %78, %112
  %116 = fadd double %fiy.04, %115
  %117 = fmul double %83, %112
  %118 = fadd double %fiz.03, %117
  %119 = icmp slt i32 %68, %2
  br i1 %119, label %120, label %130

; <label>:120                                     ; preds = %97
  %121 = getelementptr inbounds double, double* %9, i64 %70
  %122 = load double, double* %121, align 8, !tbaa !32
  %123 = fsub double %122, %113
  store double %123, double* %121, align 8, !tbaa !32
  %124 = getelementptr inbounds double, double* %9, i64 %75
  %125 = load double, double* %124, align 8, !tbaa !32
  %126 = fsub double %125, %115
  store double %126, double* %124, align 8, !tbaa !32
  %127 = getelementptr inbounds double, double* %9, i64 %80
  %128 = load double, double* %127, align 8, !tbaa !32
  %129 = fsub double %128, %117
  store double %129, double* %127, align 8, !tbaa !32
  br label %130

; <label>:130                                     ; preds = %120, %97, %66
  %fiz.1 = phi double [ %fiz.03, %66 ], [ %118, %120 ], [ %118, %97 ]
  %fiy.1 = phi double [ %fiy.04, %66 ], [ %116, %120 ], [ %116, %97 ]
  %fix.1 = phi double [ %fix.05, %66 ], [ %114, %120 ], [ %114, %97 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %41
  br i1 %exitcond, label %._crit_edge.loopexit, label %66
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7ForceLJ17compute_fullneighILi0EEEvR4AtomR8Neighbori(%class.ForceLJ* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, i32 %me) #13 comdat align 2 {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @7)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !88
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %5 = load double*, double** %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %7 = load double*, double** %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %9 = load i32*, i32** %8, align 8, !tbaa !100
  tail call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  %10 = add nsw i32 %3, -1
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %.critedge

; <label>:12                                      ; preds = %0
  %13 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %14 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #8
  store i32 %10, i32* %.omp.ub, align 4, !tbaa !1
  %15 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %16 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %17 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %18 = icmp sgt i32 %17, %10
  %19 = select i1 %18, i32 %10, i32 %17
  store i32 %19, i32* %.omp.ub, align 4, !tbaa !1
  %20 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %12
  %22 = sext i32 %20 to i64
  %23 = sext i32 %19 to i64
  br label %24

; <label>:24                                      ; preds = %24, %.lr.ph23
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %24 ], [ %22, %.lr.ph23 ]
  %.omp.iv.021 = phi i32 [ %34, %24 ], [ %20, %.lr.ph23 ]
  %25 = mul nsw i32 %.omp.iv.021, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %7, i64 %26
  store double 0.000000e+00, double* %27, align 8, !tbaa !32
  %28 = add nsw i32 %25, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %7, i64 %29
  store double 0.000000e+00, double* %30, align 8, !tbaa !32
  %31 = add nsw i32 %25, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %7, i64 %32
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = add nsw i32 %.omp.iv.021, 1
  %35 = icmp slt i64 %indvars.iv27, %23
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1
  br i1 %35, label %24, label %._crit_edge24.loopexit

._crit_edge24.loopexit:                           ; preds = %24
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %12
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  call void @llvm.lifetime.end(i64 4, i8* %16) #8
  call void @llvm.lifetime.end(i64 4, i8* %15) #8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %14) #8
  call void @llvm.lifetime.end(i64 4, i8* %13) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %36 = bitcast i32* %.omp.lb5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  %37 = bitcast i32* %.omp.ub6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #8
  store i32 %10, i32* %.omp.ub6, align 4, !tbaa !1
  %38 = bitcast i32* %.omp.stride7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  %39 = bitcast i32* %.omp.is_last8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @7, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %40 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %41 = icmp sgt i32 %40, %10
  %42 = select i1 %41, i32 %10, i32 %40
  store i32 %42, i32* %.omp.ub6, align 4, !tbaa !1
  %43 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %44 = icmp sgt i32 %43, %42
  br i1 %44, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge24
  %45 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  %52 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %53 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %54 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %55 = sext i32 %43 to i64
  %56 = sext i32 %46 to i64
  %57 = sext i32 %42 to i64
  br label %58

; <label>:58                                      ; preds = %._crit_edge, %.lr.ph19
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %._crit_edge ], [ %55, %.lr.ph19 ]
  %.omp.iv2.017 = phi i32 [ %90, %._crit_edge ], [ %43, %.lr.ph19 ]
  %59 = mul nsw i64 %56, %indvars.iv25
  %60 = getelementptr inbounds i32, i32* %48, i64 %59
  %61 = getelementptr inbounds i32, i32* %50, i64 %indvars.iv25
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %63 = mul nsw i32 %.omp.iv2.017, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %5, i64 %64
  %66 = load double, double* %65, align 8, !tbaa !32
  %67 = add nsw i32 %63, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %5, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !32
  %71 = add nsw i32 %63, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %5, i64 %72
  %74 = load double, double* %73, align 8, !tbaa !32
  %75 = icmp sgt i32 %62, 0
  br i1 %75, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %58
  %76 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv25
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = load i32, i32* %51, align 8
  %79 = mul nsw i32 %78, %77
  %80 = load double*, double** %52, align 8
  br label %92

._crit_edge.loopexit:                             ; preds = %145
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %58
  %fix.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fix.1, %._crit_edge.loopexit ]
  %fiy.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fiy.1, %._crit_edge.loopexit ]
  %fiz.0.lcssa = phi double [ 0.000000e+00, %58 ], [ %fiz.1, %._crit_edge.loopexit ]
  %81 = getelementptr inbounds double, double* %7, i64 %64
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fadd double %fix.0.lcssa, %82
  store double %83, double* %81, align 8, !tbaa !32
  %84 = getelementptr inbounds double, double* %7, i64 %68
  %85 = load double, double* %84, align 8, !tbaa !32
  %86 = fadd double %fiy.0.lcssa, %85
  store double %86, double* %84, align 8, !tbaa !32
  %87 = getelementptr inbounds double, double* %7, i64 %72
  %88 = load double, double* %87, align 8, !tbaa !32
  %89 = fadd double %fiz.0.lcssa, %88
  store double %89, double* %87, align 8, !tbaa !32
  %90 = add nsw i32 %.omp.iv2.017, 1
  %91 = icmp slt i64 %indvars.iv25, %57
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  br i1 %91, label %58, label %._crit_edge20.loopexit

; <label>:92                                      ; preds = %145, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %145 ]
  %fix.014 = phi double [ 0.000000e+00, %.lr.ph ], [ %fix.1, %145 ]
  %fiy.013 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiy.1, %145 ]
  %fiz.012 = phi double [ 0.000000e+00, %.lr.ph ], [ %fiz.1, %145 ]
  %93 = getelementptr inbounds i32, i32* %60, i64 %indvars.iv
  %94 = load i32, i32* %93, align 4, !tbaa !1
  %95 = mul nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %5, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %66, %98
  %100 = add nsw i32 %95, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %5, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !32
  %104 = fsub double %70, %103
  %105 = add nsw i32 %95, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %5, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !32
  %109 = fsub double %74, %108
  %110 = sext i32 %94 to i64
  %111 = getelementptr inbounds i32, i32* %9, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = fmul double %99, %99
  %114 = fmul double %104, %104
  %115 = fadd double %113, %114
  %116 = fmul double %109, %109
  %117 = fadd double %115, %116
  %118 = add nsw i32 %79, %112
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %80, i64 %119
  %121 = load double, double* %120, align 8, !tbaa !32
  %122 = fcmp olt double %117, %121
  br i1 %122, label %123, label %145

; <label>:123                                     ; preds = %92
  %124 = fdiv double 1.000000e+00, %117
  %125 = fmul double %124, %124
  %126 = fmul double %124, %125
  %127 = load double*, double** %53, align 8, !tbaa !113
  %128 = getelementptr inbounds double, double* %127, i64 %119
  %129 = load double, double* %128, align 8, !tbaa !32
  %130 = fmul double %126, %129
  %131 = fmul double %130, 4.800000e+01
  %132 = fadd double %130, -5.000000e-01
  %133 = fmul double %131, %132
  %134 = fmul double %124, %133
  %135 = load double*, double** %54, align 8, !tbaa !114
  %136 = getelementptr inbounds double, double* %135, i64 %119
  %137 = load double, double* %136, align 8, !tbaa !32
  %138 = fmul double %137, %134
  %139 = fmul double %99, %138
  %140 = fadd double %fix.014, %139
  %141 = fmul double %104, %138
  %142 = fadd double %fiy.013, %141
  %143 = fmul double %109, %138
  %144 = fadd double %fiz.012, %143
  br label %145

; <label>:145                                     ; preds = %123, %92
  %fiz.1 = phi double [ %144, %123 ], [ %fiz.012, %92 ]
  %fiy.1 = phi double [ %142, %123 ], [ %fiy.013, %92 ]
  %fix.1 = phi double [ %140, %123 ], [ %fix.014, %92 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %62
  br i1 %exitcond, label %._crit_edge.loopexit, label %92

._crit_edge20.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void @__kmpc_for_static_fini(%ident_t* nonnull @7, i32 %1)
  br label %150

.critedge:                                        ; preds = %0
  %146 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #8
  %147 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #8
  %148 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #8
  %149 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #8
  tail call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %.pre = bitcast i32* %.omp.is_last8 to i8*
  %.pre1 = bitcast i32* %.omp.stride7 to i8*
  %.pre3 = bitcast i32* %.omp.ub6 to i8*
  %.pre5 = bitcast i32* %.omp.lb5 to i8*
  br label %150

; <label>:150                                     ; preds = %.critedge, %._crit_edge20
  %.pre-phi6 = phi i8* [ %.pre5, %.critedge ], [ %36, %._crit_edge20 ]
  %.pre-phi4 = phi i8* [ %.pre3, %.critedge ], [ %37, %._crit_edge20 ]
  %.pre-phi2 = phi i8* [ %.pre1, %.critedge ], [ %38, %._crit_edge20 ]
  %.pre-phi = phi i8* [ %.pre, %.critedge ], [ %39, %._crit_edge20 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi2) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @__kmpc_barrier(%ident_t* nonnull @9, i32 %1)
  %151 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 3
  %152 = bitcast double* %151 to i64*
  %153 = load atomic i64, i64* %152 monotonic, align 8, !tbaa !32
  br label %154

; <label>:154                                     ; preds = %154, %150
  %155 = phi i64 [ %153, %150 ], [ %160, %154 ]
  %156 = bitcast i64 %155 to double
  %157 = fadd double %156, 0.000000e+00
  %158 = bitcast double %157 to i64
  %159 = cmpxchg i64* %152, i64 %155, i64 %158 monotonic monotonic
  %160 = extractvalue { i64, i1 } %159, 0
  %161 = extractvalue { i64, i1 } %159, 1
  br i1 %161, label %162, label %154

; <label>:162                                     ; preds = %154
  %163 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 6
  %164 = bitcast double* %163 to i64*
  %165 = load atomic i64, i64* %164 monotonic, align 8, !tbaa !32
  br label %166

; <label>:166                                     ; preds = %166, %162
  %167 = phi i64 [ %165, %162 ], [ %172, %166 ]
  %168 = bitcast i64 %167 to double
  %169 = fadd double %168, 0.000000e+00
  %170 = bitcast double %169 to i64
  %171 = cmpxchg i64* %164, i64 %167, i64 %170 monotonic monotonic
  %172 = extractvalue { i64, i1 } %171, 0
  %173 = extractvalue { i64, i1 } %171, 1
  br i1 %173, label %174, label %166

; <label>:174                                     ; preds = %166
  call void @__kmpc_barrier(%ident_t* nonnull @8, i32 %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZN7ForceLJC2Ei(%class.ForceLJ* nocapture %this, i32 %ntypes_) unnamed_addr #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0
  tail call void @_ZN5ForceC2Ev(%class.Force* %1)
  %2 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @_ZTV7ForceLJ, i64 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 1
  store double 0.000000e+00, double* %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 9
  store i32 0, i32* %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 11
  store i32 1, i32* %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 16
  store i32 0, i32* %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 7
  store i32 %ntypes_, i32* %7, align 8, !tbaa !109
  %8 = mul nsw i32 %ntypes_, %ntypes_
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = tail call noalias i8* @_Znam(i64 %10) #20
  %12 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 2
  %13 = bitcast double** %12 to i8**
  store i8* %11, i8** %13, align 8, !tbaa !118
  %14 = tail call noalias i8* @_Znam(i64 %10) #20
  %15 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 13
  %16 = bitcast double** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !114
  %17 = tail call noalias i8* @_Znam(i64 %10) #20
  %18 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 14
  %19 = bitcast double** %18 to i8**
  store i8* %17, i8** %19, align 8, !tbaa !113
  %20 = tail call noalias i8* @_Znam(i64 %10) #20
  %21 = getelementptr inbounds %class.ForceLJ, %class.ForceLJ* %this, i64 0, i32 0, i32 15
  %22 = bitcast double** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !121
  %23 = icmp eq i32 %8, 0
  %24 = ptrtoint i8* %11 to i64
  %25 = inttoptr i64 %24 to double*
  %26 = ptrtoint i8* %14 to i64
  %27 = inttoptr i64 %26 to double*
  %28 = ptrtoint i8* %17 to i64
  %29 = inttoptr i64 %28 to double*
  %30 = ptrtoint i8* %20 to i64
  %31 = inttoptr i64 %30 to double*
  br i1 %23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  br label %32

._crit_edge.loopexit:                             ; preds = %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

; <label>:32                                      ; preds = %32, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %33 = getelementptr inbounds double, double* %25, i64 %indvars.iv
  store double 0.000000e+00, double* %33, align 8, !tbaa !32
  %34 = getelementptr inbounds double, double* %27, i64 %indvars.iv
  store double 1.000000e+00, double* %34, align 8, !tbaa !32
  %35 = getelementptr inbounds double, double* %29, i64 %indvars.iv
  store double 1.000000e+00, double* %35, align 8, !tbaa !32
  %36 = getelementptr inbounds double, double* %31, i64 %indvars.iv
  store double 1.000000e+00, double* %36, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = icmp slt i64 %indvars.iv.next, %9
  br i1 %37, label %32, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN5ForceC2Ev(%class.Force* nocapture %this) unnamed_addr #9 comdat align 2 {
  %1 = getelementptr inbounds %class.Force, %class.Force* %this, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @_ZTV5Force, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !66
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr void @_ZN5ForceD2Ev(%class.Force* nocapture %this) unnamed_addr #14 comdat align 2 {
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN5ForceD0Ev(%class.Force* %this) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %class.Force* %this to i8*
  tail call void @_ZdlPv(i8* %1) #21
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr void @_ZN5Force5setupEv(%class.Force* nocapture %this) unnamed_addr #14 comdat align 2 {
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr void @_ZN5Force7computeER4AtomR8NeighborR4Commi(%class.Force* nocapture %this, %class.Atom* nocapture dereferenceable(224), %class.Neighbor* nocapture dereferenceable(240), %class.Comm* nocapture dereferenceable(336), i32) unnamed_addr #14 comdat align 2 {
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN8ForceEAMD2Ev(%class.ForceEAM* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN8ForceEAMD0Ev(%class.ForceEAM* %this) unnamed_addr #11 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %class.ForceEAM* %this to i8*
  tail call void @_ZdlPv(i8* %1) #21
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM5setupEv(%class.ForceEAM* %this) unnamed_addr #13 align 2 {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 10
  %2 = load %class.ThreadData*, %class.ThreadData** %1, align 8, !tbaa !23
  %3 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 17
  store i32 %4, i32* %5, align 4, !tbaa !122
  %6 = bitcast %class.ForceEAM* %this to void (%class.ForceEAM*, i8*)***
  %7 = load void (%class.ForceEAM*, i8*)**, void (%class.ForceEAM*, i8*)*** %6, align 8, !tbaa !66
  %8 = getelementptr inbounds void (%class.ForceEAM*, i8*)*, void (%class.ForceEAM*, i8*)** %7, i64 5
  %9 = load void (%class.ForceEAM*, i8*)*, void (%class.ForceEAM*, i8*)** %8, align 8
  tail call void %9(%class.ForceEAM* %this, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  tail call void @_ZN8ForceEAM10init_styleEv(%class.ForceEAM* %this)
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM10init_styleEv(%class.ForceEAM* %this) #13 align 2 {
  %1 = bitcast %class.ForceEAM* %this to void (%class.ForceEAM*)***
  %2 = load void (%class.ForceEAM*)**, void (%class.ForceEAM*)*** %1, align 8, !tbaa !66
  %3 = getelementptr inbounds void (%class.ForceEAM*)*, void (%class.ForceEAM*)** %2, i64 9
  %4 = load void (%class.ForceEAM*)*, void (%class.ForceEAM*)** %3, align 8
  tail call void %4(%class.ForceEAM* %this)
  tail call void @_ZN8ForceEAM12array2splineEv(%class.ForceEAM* %this)
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM12array2splineEv(%class.ForceEAM* nocapture %this) #13 align 2 {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 9
  %2 = load double, double* %1, align 8, !tbaa !123
  %3 = fdiv double 1.000000e+00, %2
  %4 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 10
  store double %3, double* %4, align 8, !tbaa !126
  %5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 11
  %6 = load double, double* %5, align 8, !tbaa !127
  %7 = fdiv double 1.000000e+00, %6
  %8 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 12
  store double %7, double* %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 2
  %10 = bitcast i32* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, 7
  %14 = add i32 %13, 71
  %15 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 4
  store i32 %14, i32* %15, align 8, !tbaa !129
  %16 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  %17 = lshr i64 %11, 32
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %18, 7
  %20 = add i32 %19, 71
  %21 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 5
  %22 = srem i32 %14, 64
  %23 = sub nsw i32 %14, %22
  store i32 %23, i32* %15, align 8, !tbaa !129
  %24 = srem i32 %20, 64
  %25 = sub nsw i32 %20, %24
  store i32 %25, i32* %21, align 4, !tbaa !130
  %26 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  %27 = load i32, i32* %26, align 8, !tbaa !109
  %28 = mul nsw i32 %27, %27
  %29 = mul nsw i32 %28, %23
  %30 = sext i32 %29 to i64
  %31 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %30, i64 8)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = extractvalue { i64, i1 } %31, 0
  %34 = select i1 %32, i64 -1, i64 %33
  %35 = tail call noalias i8* @_Znam(i64 %34) #20
  %36 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 14
  %37 = bitcast double** %36 to i8**
  store i8* %35, i8** %37, align 8, !tbaa !131
  %38 = mul nsw i32 %28, %25
  %39 = sext i32 %38 to i64
  %40 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 8)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %44 = tail call noalias i8* @_Znam(i64 %43) #20
  %45 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 13
  %46 = bitcast double** %45 to i8**
  store i8* %44, i8** %46, align 8, !tbaa !132
  %47 = tail call noalias i8* @_Znam(i64 %43) #20
  %48 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 15
  %49 = bitcast double** %48 to i8**
  store i8* %47, i8** %49, align 8, !tbaa !133
  %50 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 6
  %51 = load double*, double** %50, align 8, !tbaa !134
  %52 = bitcast i8* %35 to double*
  tail call void @_ZN8ForceEAM11interpolateEidPdS0_(%class.ForceEAM* undef, i32 %12, double %6, double* %51, double* %52)
  %53 = load i32, i32* %16, align 4, !tbaa !135
  %54 = load double, double* %1, align 8, !tbaa !123
  %55 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 7
  %56 = load double*, double** %55, align 8, !tbaa !136
  %57 = load double*, double** %45, align 8, !tbaa !132
  tail call void @_ZN8ForceEAM11interpolateEidPdS0_(%class.ForceEAM* undef, i32 %53, double %54, double* %56, double* %57)
  %58 = load i32, i32* %16, align 4, !tbaa !135
  %59 = load double, double* %1, align 8, !tbaa !123
  %60 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 8
  %61 = load double*, double** %60, align 8, !tbaa !137
  %62 = load double*, double** %48, align 8, !tbaa !133
  tail call void @_ZN8ForceEAM11interpolateEidPdS0_(%class.ForceEAM* undef, i32 %58, double %59, double* %61, double* %62)
  %63 = load i32, i32* %26, align 8, !tbaa !109
  %64 = mul nsw i32 %63, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %._crit_edge12, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %0
  %66 = bitcast i32* %15 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = icmp sgt i32 %68, 0
  %70 = lshr i64 %67, 32
  %71 = trunc i64 %70 to i32
  %72 = icmp sgt i32 %71, 0
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge, %.preheader4.lr.ph
  %tt.010 = phi i32 [ 0, %.preheader4.lr.ph ], [ %106, %._crit_edge ]
  br i1 %69, label %.lr.ph, label %.preheader3

.lr.ph:                                           ; preds = %.preheader4
  %73 = load double*, double** %36, align 8
  %74 = load i32, i32* %15, align 8
  %75 = sext i32 %74 to i64
  br label %79

._crit_edge12.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge12.loopexit, %0
  ret void

.preheader3.loopexit:                             ; preds = %79
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit, %.preheader4
  br i1 %72, label %.lr.ph7, label %.preheader

.lr.ph7:                                          ; preds = %.preheader3
  %76 = load double*, double** %45, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  br label %94

; <label>:79                                      ; preds = %79, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %79 ]
  %80 = phi i32 [ %68, %.lr.ph ], [ %74, %79 ]
  %81 = getelementptr inbounds double, double* %73, i64 %indvars.iv
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !32
  %84 = mul nsw i32 %80, %tt.010
  %85 = trunc i64 %indvars.iv to i32
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %73, i64 %87
  %89 = bitcast double* %88 to i64*
  store i64 %83, i64* %89, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %90 = icmp slt i64 %indvars.iv.next, %75
  br i1 %90, label %79, label %.preheader3.loopexit

.preheader.loopexit:                              ; preds = %94
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3
  br i1 %72, label %.lr.ph9, label %._crit_edge

.lr.ph9:                                          ; preds = %.preheader
  %91 = load double*, double** %48, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  br label %108

; <label>:94                                      ; preds = %94, %.lr.ph7
  %indvars.iv13 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next14, %94 ]
  %95 = phi i32 [ %71, %.lr.ph7 ], [ %77, %94 ]
  %96 = getelementptr inbounds double, double* %76, i64 %indvars.iv13
  %97 = bitcast double* %96 to i64*
  %98 = load i64, i64* %97, align 8, !tbaa !32
  %99 = mul nsw i32 %95, %tt.010
  %100 = trunc i64 %indvars.iv13 to i32
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %76, i64 %102
  %104 = bitcast double* %103 to i64*
  store i64 %98, i64* %104, align 8, !tbaa !32
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %105 = icmp slt i64 %indvars.iv.next14, %78
  br i1 %105, label %94, label %.preheader.loopexit

._crit_edge.loopexit:                             ; preds = %108
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %106 = add nuw nsw i32 %tt.010, 1
  %107 = icmp slt i32 %106, %64
  br i1 %107, label %.preheader4, label %._crit_edge12.loopexit

; <label>:108                                     ; preds = %108, %.lr.ph9
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %108 ]
  %109 = phi i32 [ %71, %.lr.ph9 ], [ %92, %108 ]
  %110 = getelementptr inbounds double, double* %91, i64 %indvars.iv15
  %111 = bitcast double* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !32
  %113 = mul nsw i32 %109, %tt.010
  %114 = trunc i64 %indvars.iv15 to i32
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %91, i64 %116
  %118 = bitcast double* %117 to i64*
  store i64 %112, i64* %118, align 8, !tbaa !32
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %119 = icmp slt i64 %indvars.iv.next16, %93
  br i1 %119, label %108, label %._crit_edge.loopexit
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: norecurse nounwind uwtable
define void @_ZN8ForceEAM11interpolateEidPdS0_(%class.ForceEAM* nocapture readnone %this, i32 %n, double %delta, double* nocapture readonly %f, double* %spline) #9 align 2 {
  %1 = icmp slt i32 %n, 1
  br i1 %1, label %._crit_edge14, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %0
  %2 = add i32 %n, 1
  br label %.lr.ph13

._crit_edge14.loopexit:                           ; preds = %.lr.ph13
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %._crit_edge14.loopexit, %0
  %3 = getelementptr inbounds double, double* %spline, i64 20
  %4 = load double, double* %3, align 8, !tbaa !32
  %5 = getelementptr inbounds double, double* %spline, i64 13
  %6 = load double, double* %5, align 8, !tbaa !32
  %7 = fsub double %4, %6
  %8 = getelementptr inbounds double, double* %spline, i64 12
  store double %7, double* %8, align 8, !tbaa !32
  %9 = getelementptr inbounds double, double* %spline, i64 27
  %10 = load double, double* %9, align 8, !tbaa !32
  %11 = fsub double %10, %6
  %12 = fmul double %11, 5.000000e-01
  %13 = getelementptr inbounds double, double* %spline, i64 19
  store double %12, double* %13, align 8, !tbaa !32
  %14 = mul i32 %n, 7
  %15 = add nsw i32 %14, 6
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %spline, i64 %16
  %18 = load double, double* %17, align 8, !tbaa !32
  %19 = add nsw i32 %n, -2
  %20 = mul nsw i32 %19, 7
  %21 = add nsw i32 %20, 6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %spline, i64 %22
  %24 = load double, double* %23, align 8, !tbaa !32
  %25 = fsub double %18, %24
  %26 = fmul double %25, 5.000000e-01
  %27 = add i32 %14, -2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %spline, i64 %28
  store double %26, double* %29, align 8, !tbaa !32
  %30 = add i32 %14, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %spline, i64 %31
  %33 = load double, double* %32, align 8, !tbaa !32
  %34 = fsub double %18, %33
  %35 = add nsw i32 %14, 5
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %spline, i64 %36
  store double %34, double* %37, align 8, !tbaa !32
  %38 = icmp slt i32 %19, 3
  br i1 %38, label %.preheader, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %._crit_edge14
  %39 = add i32 %n, -1
  br label %.lr.ph10

.lr.ph13:                                         ; preds = %.lr.ph13, %.lr.ph13.preheader
  %indvars.iv23 = phi i64 [ 1, %.lr.ph13.preheader ], [ %indvars.iv.next24, %.lr.ph13 ]
  %40 = getelementptr inbounds double, double* %f, i64 %indvars.iv23
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !32
  %43 = mul nuw nsw i64 %indvars.iv23, 7
  %44 = add nuw nsw i64 %43, 6
  %45 = getelementptr inbounds double, double* %spline, i64 %44
  %46 = bitcast double* %45 to i64*
  store i64 %42, i64* %46, align 8, !tbaa !32
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv.next24 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %2
  br i1 %exitcond26, label %._crit_edge14.loopexit, label %.lr.ph13

.preheader.loopexit:                              ; preds = %.lr.ph10
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge14
  %47 = icmp sgt i32 %n, 1
  br i1 %47, label %.lr.ph6.preheader, label %._crit_edge7

.lr.ph6.preheader:                                ; preds = %.preheader
  br label %.lr.ph6

.lr.ph10:                                         ; preds = %.lr.ph10, %.lr.ph10.preheader
  %indvars.iv19 = phi i64 [ 3, %.lr.ph10.preheader ], [ %indvars.iv.next20, %.lr.ph10 ]
  %48 = trunc i64 %indvars.iv19 to i32
  %49 = mul i32 %48, 7
  %50 = add i32 %49, -8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %spline, i64 %51
  %53 = load double, double* %52, align 8, !tbaa !32
  %54 = add i32 %49, 20
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %spline, i64 %55
  %57 = load double, double* %56, align 8, !tbaa !32
  %58 = fsub double %53, %57
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %59 = mul nuw nsw i64 %indvars.iv.next20, 7
  %60 = add nuw nsw i64 %59, 6
  %61 = getelementptr inbounds double, double* %spline, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !32
  %63 = add i32 %49, -1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %spline, i64 %64
  %66 = load double, double* %65, align 8, !tbaa !32
  %67 = fsub double %62, %66
  %68 = fmul double %67, 8.000000e+00
  %69 = fadd double %58, %68
  %70 = fdiv double %69, 1.200000e+01
  %71 = mul nuw nsw i64 %indvars.iv19, 7
  %72 = add nuw nsw i64 %71, 5
  %73 = getelementptr inbounds double, double* %spline, i64 %72
  store double %70, double* %73, align 8, !tbaa !32
  %lftr.wideiv21 = trunc i64 %indvars.iv.next20 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %39
  br i1 %exitcond22, label %.preheader.loopexit, label %.lr.ph10

._crit_edge7.loopexit:                            ; preds = %.lr.ph6
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %.preheader
  %74 = add nsw i32 %14, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %spline, i64 %75
  store double 0.000000e+00, double* %76, align 8, !tbaa !32
  %77 = add nsw i32 %14, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %spline, i64 %78
  store double 0.000000e+00, double* %79, align 8, !tbaa !32
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge7
  %80 = add i32 %n, 1
  br label %.lr.ph

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %.lr.ph6
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %.lr.ph6 ], [ 1, %.lr.ph6.preheader ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %81 = mul nuw nsw i64 %indvars.iv.next16, 7
  %82 = add nuw nsw i64 %81, 6
  %83 = getelementptr inbounds double, double* %spline, i64 %82
  %84 = load double, double* %83, align 8, !tbaa !32
  %85 = mul nuw nsw i64 %indvars.iv15, 7
  %86 = add nuw nsw i64 %85, 6
  %87 = getelementptr inbounds double, double* %spline, i64 %86
  %88 = load double, double* %87, align 8, !tbaa !32
  %89 = fsub double %84, %88
  %90 = fmul double %89, 3.000000e+00
  %91 = add nuw nsw i64 %85, 5
  %92 = getelementptr inbounds double, double* %spline, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !32
  %94 = fmul double %93, 2.000000e+00
  %95 = fsub double %90, %94
  %96 = add nuw nsw i64 %81, 5
  %97 = getelementptr inbounds double, double* %spline, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fsub double %95, %98
  %100 = add nuw nsw i64 %85, 4
  %101 = getelementptr inbounds double, double* %spline, i64 %100
  store double %99, double* %101, align 8, !tbaa !32
  %102 = fadd double %93, %98
  %103 = fmul double %89, 2.000000e+00
  %104 = fsub double %102, %103
  %105 = add nuw nsw i64 %85, 3
  %106 = getelementptr inbounds double, double* %spline, i64 %105
  store double %104, double* %106, align 8, !tbaa !32
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %n
  br i1 %exitcond18, label %._crit_edge7.loopexit, label %.lr.ph6

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge7
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %107 = mul nuw nsw i64 %indvars.iv, 7
  %108 = add nuw nsw i64 %107, 5
  %109 = getelementptr inbounds double, double* %spline, i64 %108
  %110 = load double, double* %109, align 8, !tbaa !32
  %111 = fdiv double %110, %delta
  %112 = add nuw nsw i64 %107, 2
  %113 = getelementptr inbounds double, double* %spline, i64 %112
  store double %111, double* %113, align 8, !tbaa !32
  %114 = add nuw nsw i64 %107, 4
  %115 = getelementptr inbounds double, double* %spline, i64 %114
  %116 = load double, double* %115, align 8, !tbaa !32
  %117 = fmul double %116, 2.000000e+00
  %118 = fdiv double %117, %delta
  %119 = add nuw nsw i64 %107, 1
  %120 = getelementptr inbounds double, double* %spline, i64 %119
  store double %118, double* %120, align 8, !tbaa !32
  %121 = add nuw nsw i64 %107, 3
  %122 = getelementptr inbounds double, double* %spline, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !32
  %124 = fmul double %123, 3.000000e+00
  %125 = fdiv double %124, %delta
  %126 = getelementptr inbounds double, double* %spline, i64 %107
  store double %125, double* %126, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %80
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM7computeER4AtomR8NeighborR4Commi(%class.ForceEAM* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Comm* nocapture readonly dereferenceable(336) %comm, i32 %me) unnamed_addr #13 align 2 {
  %1 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %2 = load i32, i32* %1, align 4, !tbaa !40
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 10
  %6 = load %class.ThreadData*, %class.ThreadData** %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %6, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !17
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %4
  tail call void @_ZN8ForceEAM17compute_halfneighER4AtomR8NeighborR4Commi(%class.ForceEAM* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, i32 undef)
  br label %12

; <label>:11                                      ; preds = %0
  tail call void @_ZN8ForceEAM17compute_fullneighER4AtomR8NeighborR4Commi(%class.ForceEAM* %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Comm* nonnull dereferenceable(336) %comm, i32 undef)
  br label %12

; <label>:12                                      ; preds = %11, %10, %4
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM17compute_halfneighER4AtomR8NeighborR4Commi(%class.ForceEAM* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Comm* nocapture readonly dereferenceable(336) %comm, i32 %me) #13 align 2 {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %1, align 8, !tbaa !111
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 3
  %3 = load i32, i32* %2, align 4, !tbaa !99
  %4 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 18
  %5 = load i32, i32* %4, align 8, !tbaa !138
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %0
  store i32 %3, i32* %4, align 8, !tbaa !138
  %8 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %9 = load double*, double** %8, align 8, !tbaa !139
  %10 = icmp eq double* %9, null
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %7
  %12 = bitcast double* %9 to i8*
  tail call void @_ZdaPv(i8* %12) #21
  br label %13

; <label>:13                                      ; preds = %11, %7
  %14 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %15 = load double*, double** %14, align 8, !tbaa !140
  %16 = icmp eq double* %15, null
  br i1 %16, label %19, label %17

; <label>:17                                      ; preds = %13
  %18 = bitcast double* %15 to i8*
  tail call void @_ZdaPv(i8* %18) #21
  br label %19

; <label>:19                                      ; preds = %17, %13
  %20 = load i32, i32* %4, align 8, !tbaa !138
  %21 = sext i32 %20 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %21, i64 8)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias i8* @_Znam(i64 %25) #20
  %27 = bitcast double** %8 to i8**
  store i8* %26, i8** %27, align 8, !tbaa !139
  %28 = tail call noalias i8* @_Znam(i64 %25) #20
  %29 = bitcast double** %14 to i8**
  store i8* %28, i8** %29, align 8, !tbaa !140
  br label %30

; <label>:30                                      ; preds = %19, %0
  %31 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %32 = load double*, double** %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %34 = load double*, double** %33, align 8, !tbaa !84
  %35 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %36 = load i32*, i32** %35, align 8, !tbaa !100
  %37 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %38 = load i32, i32* %37, align 4, !tbaa !88
  %39 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %40 = load i32, i32* %39, align 8, !tbaa !112
  %41 = add nsw i32 %40, %38
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %.lr.ph59, label %.preheader27

.lr.ph59:                                         ; preds = %30
  %43 = sext i32 %41 to i64
  br label %45

.preheader27.loopexit:                            ; preds = %45
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.loopexit, %30
  %44 = icmp sgt i32 %38, 0
  br i1 %44, label %.lr.ph54, label %._crit_edge45.thread

; <label>:45                                      ; preds = %45, %.lr.ph59
  %indvars.iv80 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next81, %45 ]
  %46 = mul nuw nsw i64 %indvars.iv80, 3
  %47 = getelementptr inbounds double, double* %34, i64 %46
  store double 0.000000e+00, double* %47, align 8, !tbaa !32
  %48 = add nuw nsw i64 %46, 1
  %49 = getelementptr inbounds double, double* %34, i64 %48
  store double 0.000000e+00, double* %49, align 8, !tbaa !32
  %50 = add nuw nsw i64 %46, 2
  %51 = getelementptr inbounds double, double* %34, i64 %50
  store double 0.000000e+00, double* %51, align 8, !tbaa !32
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %52 = icmp slt i64 %indvars.iv.next81, %43
  br i1 %52, label %45, label %.preheader27.loopexit

.lr.ph54:                                         ; preds = %.preheader27
  %53 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %54 = bitcast double** %53 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = add i32 %38, -1
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 3
  %59 = add nuw nsw i64 %58, 8
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 %59, i32 8, i1 false)
  %60 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %61 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %62 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %63 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  %64 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 2
  %65 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 10
  %66 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  %67 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 5
  %68 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 13
  br label %83

.preheader:                                       ; preds = %._crit_edge51
  br i1 true, label %.lr.ph44, label %.preheader.._crit_edge45.thread_crit_edge

.preheader.._crit_edge45.thread_crit_edge:        ; preds = %.preheader
  br label %._crit_edge45.thread

.lr.ph44:                                         ; preds = %.preheader
  %69 = load double*, double** %53, align 8
  %70 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 12
  %71 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  %74 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 14
  %77 = load double*, double** %76, align 8
  %78 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br label %191

; <label>:83                                      ; preds = %._crit_edge51, %.lr.ph54
  %indvars.iv72 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next73, %._crit_edge51 ]
  %84 = load i32, i32* %60, align 8, !tbaa !115
  %85 = trunc i64 %indvars.iv72 to i32
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load i32*, i32** %61, align 8, !tbaa !116
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  %90 = load i32*, i32** %62, align 8, !tbaa !117
  %91 = getelementptr inbounds i32, i32* %90, i64 %indvars.iv72
  %92 = load i32, i32* %91, align 4, !tbaa !1
  %93 = mul nuw nsw i64 %indvars.iv72, 3
  %94 = getelementptr inbounds double, double* %32, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !32
  %96 = add nuw nsw i64 %93, 1
  %97 = getelementptr inbounds double, double* %32, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = add nuw nsw i64 %93, 2
  %100 = getelementptr inbounds double, double* %32, i64 %99
  %101 = load double, double* %100, align 8, !tbaa !32
  %102 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv72
  %103 = load i32, i32* %102, align 4, !tbaa !1
  %104 = icmp sgt i32 %92, 0
  br i1 %104, label %.lr.ph50.preheader, label %._crit_edge51

.lr.ph50.preheader:                               ; preds = %83
  br label %.lr.ph50

._crit_edge51.loopexit:                           ; preds = %189
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit, %83
  %rhoi.0.lcssa = phi double [ 0.000000e+00, %83 ], [ %rhoi.1, %._crit_edge51.loopexit ]
  %105 = load double*, double** %53, align 8, !tbaa !139
  %106 = getelementptr inbounds double, double* %105, i64 %indvars.iv72
  %107 = load double, double* %106, align 8, !tbaa !32
  %108 = fadd double %rhoi.0.lcssa, %107
  store double %108, double* %106, align 8, !tbaa !32
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %lftr.wideiv74 = trunc i64 %indvars.iv.next73 to i32
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %38
  br i1 %exitcond75, label %.preheader, label %83

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %189
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %189 ], [ 0, %.lr.ph50.preheader ]
  %rhoi.048 = phi double [ %rhoi.1, %189 ], [ 0.000000e+00, %.lr.ph50.preheader ]
  %109 = getelementptr inbounds i32, i32* %89, i64 %indvars.iv68
  %110 = load i32, i32* %109, align 4, !tbaa !1
  %111 = mul nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %32, i64 %112
  %114 = load double, double* %113, align 8, !tbaa !32
  %115 = fsub double %95, %114
  %116 = add nsw i32 %111, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %32, i64 %117
  %119 = load double, double* %118, align 8, !tbaa !32
  %120 = fsub double %98, %119
  %121 = add nsw i32 %111, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %32, i64 %122
  %124 = load double, double* %123, align 8, !tbaa !32
  %125 = fsub double %101, %124
  %126 = sext i32 %110 to i64
  %127 = getelementptr inbounds i32, i32* %36, i64 %126
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = fmul double %115, %115
  %130 = fmul double %120, %120
  %131 = fadd double %129, %130
  %132 = fmul double %125, %125
  %133 = fadd double %131, %132
  %134 = load i32, i32* %63, align 8, !tbaa !109
  %135 = mul nsw i32 %134, %103
  %136 = add nsw i32 %135, %128
  %137 = sext i32 %136 to i64
  %138 = load double*, double** %64, align 8, !tbaa !118
  %139 = getelementptr inbounds double, double* %138, i64 %137
  %140 = load double, double* %139, align 8, !tbaa !32
  %141 = fcmp olt double %133, %140
  br i1 %141, label %142, label %189

; <label>:142                                     ; preds = %.lr.ph50
  %143 = tail call double @sqrt(double %133) #8
  %144 = load double, double* %65, align 8, !tbaa !126
  %145 = fmul double %143, %144
  %146 = fadd double %145, 1.000000e+00
  %147 = fptosi double %146 to i32
  %148 = load i32, i32* %66, align 4, !tbaa !135
  %149 = add nsw i32 %148, -1
  %150 = icmp slt i32 %147, %149
  %. = select i1 %150, i32 %147, i32 %149
  %151 = sitofp i32 %. to double
  %152 = fsub double %146, %151
  %153 = fcmp olt double %152, 1.000000e+00
  %154 = select i1 %153, double %152, double 1.000000e+00
  %155 = load i32, i32* %67, align 4, !tbaa !130
  %156 = mul nsw i32 %155, %136
  %157 = mul nsw i32 %., 7
  %158 = add nsw i32 %157, %156
  %159 = add nsw i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = load double*, double** %68, align 8, !tbaa !132
  %162 = getelementptr inbounds double, double* %161, i64 %160
  %163 = load double, double* %162, align 8, !tbaa !32
  %164 = fmul double %163, %154
  %165 = add nsw i32 %158, 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %161, i64 %166
  %168 = load double, double* %167, align 8, !tbaa !32
  %169 = fadd double %168, %164
  %170 = fmul double %154, %169
  %171 = add nsw i32 %158, 5
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %161, i64 %172
  %174 = load double, double* %173, align 8, !tbaa !32
  %175 = fadd double %174, %170
  %176 = fmul double %154, %175
  %177 = add nsw i32 %158, 6
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %161, i64 %178
  %180 = load double, double* %179, align 8, !tbaa !32
  %181 = fadd double %180, %176
  %182 = fadd double %rhoi.048, %181
  %183 = icmp slt i32 %110, %38
  br i1 %183, label %184, label %189

; <label>:184                                     ; preds = %142
  %185 = load double*, double** %53, align 8, !tbaa !139
  %186 = getelementptr inbounds double, double* %185, i64 %126
  %187 = load double, double* %186, align 8, !tbaa !32
  %188 = fadd double %181, %187
  store double %188, double* %186, align 8, !tbaa !32
  br label %189

; <label>:189                                     ; preds = %184, %142, %.lr.ph50
  %rhoi.1 = phi double [ %rhoi.048, %.lr.ph50 ], [ %182, %184 ], [ %182, %142 ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %lftr.wideiv70 = trunc i64 %indvars.iv.next69 to i32
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %92
  br i1 %exitcond71, label %._crit_edge51.loopexit, label %.lr.ph50

._crit_edge45.thread:                             ; preds = %.preheader.._crit_edge45.thread_crit_edge, %.preheader27
  tail call void @_ZN8ForceEAM11communicateER4AtomR4Comm(%class.ForceEAM* %this, %class.Atom* dereferenceable(224) undef, %class.Comm* nonnull dereferenceable(336) %comm)
  br label %._crit_edge40

._crit_edge45:                                    ; preds = %254
  tail call void @_ZN8ForceEAM11communicateER4AtomR4Comm(%class.ForceEAM* nonnull %this, %class.Atom* dereferenceable(224) undef, %class.Comm* nonnull dereferenceable(336) %comm)
  br i1 true, label %.lr.ph39, label %._crit_edge45.._crit_edge40_crit_edge

._crit_edge45.._crit_edge40_crit_edge:            ; preds = %._crit_edge45
  br label %._crit_edge40

.lr.ph39:                                         ; preds = %._crit_edge45
  %190 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 15
  br label %256

; <label>:191                                     ; preds = %254, %.lr.ph44
  %indvars.iv64 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next65, %254 ]
  %evdwl.043 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %evdwl.1, %254 ]
  %192 = getelementptr inbounds double, double* %69, i64 %indvars.iv64
  %193 = load double, double* %192, align 8, !tbaa !32
  %194 = load double, double* %70, align 8, !tbaa !128
  %195 = fmul double %193, %194
  %196 = fadd double %195, 1.000000e+00
  %197 = fptosi double %196 to i32
  %198 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv64
  %199 = load i32, i32* %198, align 4, !tbaa !1
  %200 = mul nsw i32 %199, %199
  %201 = icmp slt i32 %197, %73
  %.23 = select i1 %201, i32 %197, i32 %73
  %202 = icmp slt i32 %.23, 1
  %..23 = select i1 %202, i32 1, i32 %.23
  %203 = sitofp i32 %..23 to double
  %204 = fsub double %196, %203
  %205 = fcmp olt double %204, 1.000000e+00
  %206 = select i1 %205, double %204, double 1.000000e+00
  %207 = mul nsw i32 %75, %200
  %208 = mul nsw i32 %..23, 7
  %209 = add nsw i32 %208, %207
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %77, i64 %210
  %212 = load double, double* %211, align 8, !tbaa !32
  %213 = fmul double %212, %206
  %214 = add nsw i32 %209, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %77, i64 %215
  %217 = load double, double* %216, align 8, !tbaa !32
  %218 = fadd double %217, %213
  %219 = fmul double %206, %218
  %220 = add nsw i32 %209, 2
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %77, i64 %221
  %223 = load double, double* %222, align 8, !tbaa !32
  %224 = fadd double %223, %219
  %225 = getelementptr inbounds double, double* %79, i64 %indvars.iv64
  store double %224, double* %225, align 8, !tbaa !32
  br i1 %82, label %254, label %226

; <label>:226                                     ; preds = %191
  %227 = load i32, i32* %74, align 8, !tbaa !129
  %228 = mul nsw i32 %227, %200
  %229 = add nsw i32 %228, %208
  %230 = add nsw i32 %229, 3
  %231 = sext i32 %230 to i64
  %232 = load double*, double** %76, align 8, !tbaa !131
  %233 = getelementptr inbounds double, double* %232, i64 %231
  %234 = load double, double* %233, align 8, !tbaa !32
  %235 = fmul double %206, %234
  %236 = add nsw i32 %229, 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %232, i64 %237
  %239 = load double, double* %238, align 8, !tbaa !32
  %240 = fadd double %235, %239
  %241 = fmul double %206, %240
  %242 = add nsw i32 %229, 5
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds double, double* %232, i64 %243
  %245 = load double, double* %244, align 8, !tbaa !32
  %246 = fadd double %245, %241
  %247 = fmul double %206, %246
  %248 = add nsw i32 %229, 6
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, double* %232, i64 %249
  %251 = load double, double* %250, align 8, !tbaa !32
  %252 = fadd double %251, %247
  %253 = fadd double %evdwl.043, %252
  br label %254

; <label>:254                                     ; preds = %226, %191
  %evdwl.1 = phi double [ %253, %226 ], [ %evdwl.043, %191 ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %lftr.wideiv66 = trunc i64 %indvars.iv.next65 to i32
  %exitcond67 = icmp eq i32 %lftr.wideiv66, %38
  br i1 %exitcond67, label %._crit_edge45, label %191

._crit_edge40.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %._crit_edge45.._crit_edge40_crit_edge, %._crit_edge45.thread
  %evdwl.2.lcssa = phi double [ undef, %._crit_edge45.._crit_edge40_crit_edge ], [ 0.000000e+00, %._crit_edge45.thread ], [ %evdwl.3.lcssa, %._crit_edge40.loopexit ]
  %255 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 3
  store double %evdwl.2.lcssa, double* %255, align 8, !tbaa !110
  ret void

; <label>:256                                     ; preds = %._crit_edge, %.lr.ph39
  %indvars.iv60 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next61, %._crit_edge ]
  %evdwl.237 = phi double [ %evdwl.1, %.lr.ph39 ], [ %evdwl.3.lcssa, %._crit_edge ]
  %257 = load i32, i32* %60, align 8, !tbaa !115
  %258 = trunc i64 %indvars.iv60 to i32
  %259 = mul nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = load i32*, i32** %61, align 8, !tbaa !116
  %262 = getelementptr inbounds i32, i32* %261, i64 %260
  %263 = load i32*, i32** %62, align 8, !tbaa !117
  %264 = getelementptr inbounds i32, i32* %263, i64 %indvars.iv60
  %265 = load i32, i32* %264, align 4, !tbaa !1
  %266 = mul nuw nsw i64 %indvars.iv60, 3
  %267 = getelementptr inbounds double, double* %32, i64 %266
  %268 = load double, double* %267, align 8, !tbaa !32
  %269 = add nuw nsw i64 %266, 1
  %270 = getelementptr inbounds double, double* %32, i64 %269
  %271 = load double, double* %270, align 8, !tbaa !32
  %272 = add nuw nsw i64 %266, 2
  %273 = getelementptr inbounds double, double* %32, i64 %272
  %274 = load double, double* %273, align 8, !tbaa !32
  %275 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv60
  %276 = load i32, i32* %275, align 4, !tbaa !1
  %277 = icmp sgt i32 %265, 0
  br i1 %277, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %256
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %434
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %256
  %evdwl.3.lcssa = phi double [ %evdwl.237, %256 ], [ %evdwl.5, %._crit_edge.loopexit ]
  %fx.0.lcssa = phi double [ 0.000000e+00, %256 ], [ %fx.1, %._crit_edge.loopexit ]
  %fy.0.lcssa = phi double [ 0.000000e+00, %256 ], [ %fy.1, %._crit_edge.loopexit ]
  %fz.0.lcssa = phi double [ 0.000000e+00, %256 ], [ %fz.1, %._crit_edge.loopexit ]
  %278 = getelementptr inbounds double, double* %34, i64 %266
  %279 = load double, double* %278, align 8, !tbaa !32
  %280 = fadd double %fx.0.lcssa, %279
  store double %280, double* %278, align 8, !tbaa !32
  %281 = getelementptr inbounds double, double* %34, i64 %269
  %282 = load double, double* %281, align 8, !tbaa !32
  %283 = fadd double %fy.0.lcssa, %282
  store double %283, double* %281, align 8, !tbaa !32
  %284 = getelementptr inbounds double, double* %34, i64 %272
  %285 = load double, double* %284, align 8, !tbaa !32
  %286 = fadd double %fz.0.lcssa, %285
  store double %286, double* %284, align 8, !tbaa !32
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv.next61 to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %38
  br i1 %exitcond63, label %._crit_edge40.loopexit, label %256

.lr.ph:                                           ; preds = %.lr.ph.preheader, %434
  %indvars.iv = phi i64 [ %indvars.iv.next, %434 ], [ 0, %.lr.ph.preheader ]
  %evdwl.332 = phi double [ %evdwl.5, %434 ], [ %evdwl.237, %.lr.ph.preheader ]
  %fx.031 = phi double [ %fx.1, %434 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fy.030 = phi double [ %fy.1, %434 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fz.028 = phi double [ %fz.1, %434 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %287 = getelementptr inbounds i32, i32* %262, i64 %indvars.iv
  %288 = load i32, i32* %287, align 4, !tbaa !1
  %289 = mul nsw i32 %288, 3
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds double, double* %32, i64 %290
  %292 = load double, double* %291, align 8, !tbaa !32
  %293 = fsub double %268, %292
  %294 = add nsw i32 %289, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %32, i64 %295
  %297 = load double, double* %296, align 8, !tbaa !32
  %298 = fsub double %271, %297
  %299 = add nsw i32 %289, 2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %32, i64 %300
  %302 = load double, double* %301, align 8, !tbaa !32
  %303 = fsub double %274, %302
  %304 = sext i32 %288 to i64
  %305 = getelementptr inbounds i32, i32* %36, i64 %304
  %306 = load i32, i32* %305, align 4, !tbaa !1
  %307 = fmul double %293, %293
  %308 = fmul double %298, %298
  %309 = fadd double %307, %308
  %310 = fmul double %303, %303
  %311 = fadd double %309, %310
  %312 = load i32, i32* %63, align 8, !tbaa !109
  %313 = mul nsw i32 %312, %276
  %314 = add nsw i32 %313, %306
  %315 = sext i32 %314 to i64
  %316 = load double*, double** %64, align 8, !tbaa !118
  %317 = getelementptr inbounds double, double* %316, i64 %315
  %318 = load double, double* %317, align 8, !tbaa !32
  %319 = fcmp olt double %311, %318
  br i1 %319, label %320, label %434

; <label>:320                                     ; preds = %.lr.ph
  %321 = tail call double @sqrt(double %311) #8
  %322 = load double, double* %65, align 8, !tbaa !126
  %323 = fmul double %321, %322
  %324 = fadd double %323, 1.000000e+00
  %325 = fptosi double %324 to i32
  %326 = load i32, i32* %66, align 4, !tbaa !135
  %327 = add nsw i32 %326, -1
  %328 = icmp slt i32 %325, %327
  %.25 = select i1 %328, i32 %325, i32 %327
  %329 = sitofp i32 %.25 to double
  %330 = fsub double %324, %329
  %331 = fcmp olt double %330, 1.000000e+00
  %332 = select i1 %331, double %330, double 1.000000e+00
  %333 = load i32, i32* %67, align 4, !tbaa !130
  %334 = mul nsw i32 %333, %314
  %335 = mul nsw i32 %.25, 7
  %336 = add nsw i32 %335, %334
  %337 = sext i32 %336 to i64
  %338 = load double*, double** %68, align 8, !tbaa !132
  %339 = getelementptr inbounds double, double* %338, i64 %337
  %340 = load double, double* %339, align 8, !tbaa !32
  %341 = fmul double %340, %332
  %342 = add nsw i32 %336, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, double* %338, i64 %343
  %345 = load double, double* %344, align 8, !tbaa !32
  %346 = fadd double %345, %341
  %347 = fmul double %332, %346
  %348 = add nsw i32 %336, 2
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %338, i64 %349
  %351 = load double, double* %350, align 8, !tbaa !32
  %352 = fadd double %351, %347
  %353 = load double*, double** %190, align 8, !tbaa !133
  %354 = getelementptr inbounds double, double* %353, i64 %337
  %355 = load double, double* %354, align 8, !tbaa !32
  %356 = fmul double %355, %332
  %357 = getelementptr inbounds double, double* %353, i64 %343
  %358 = load double, double* %357, align 8, !tbaa !32
  %359 = fadd double %358, %356
  %360 = fmul double %332, %359
  %361 = getelementptr inbounds double, double* %353, i64 %349
  %362 = load double, double* %361, align 8, !tbaa !32
  %363 = fadd double %362, %360
  %364 = add nsw i32 %336, 3
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %353, i64 %365
  %367 = load double, double* %366, align 8, !tbaa !32
  %368 = fmul double %332, %367
  %369 = add nsw i32 %336, 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds double, double* %353, i64 %370
  %372 = load double, double* %371, align 8, !tbaa !32
  %373 = fadd double %368, %372
  %374 = fmul double %332, %373
  %375 = add nsw i32 %336, 5
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %353, i64 %376
  %378 = load double, double* %377, align 8, !tbaa !32
  %379 = fadd double %378, %374
  %380 = fmul double %332, %379
  %381 = add nsw i32 %336, 6
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds double, double* %353, i64 %382
  %384 = load double, double* %383, align 8, !tbaa !32
  %385 = fadd double %384, %380
  %386 = fdiv double 1.000000e+00, %321
  %387 = fmul double %386, %385
  %388 = fmul double %386, %363
  %389 = fmul double %386, %387
  %390 = fsub double %388, %389
  %391 = load double*, double** %78, align 8, !tbaa !140
  %392 = getelementptr inbounds double, double* %391, i64 %indvars.iv60
  %393 = load double, double* %392, align 8, !tbaa !32
  %394 = fmul double %352, %393
  %395 = getelementptr inbounds double, double* %391, i64 %304
  %396 = load double, double* %395, align 8, !tbaa !32
  %397 = fmul double %352, %396
  %398 = fadd double %394, %397
  %399 = fadd double %398, %390
  %400 = fmul double %386, %399
  %401 = fsub double -0.000000e+00, %400
  %402 = fmul double %293, %401
  %403 = fadd double %fx.031, %402
  %404 = fmul double %298, %401
  %405 = fadd double %fy.030, %404
  %406 = fmul double %303, %401
  %407 = fadd double %fz.028, %406
  %408 = icmp slt i32 %288, %38
  br i1 %408, label %409, label %419

; <label>:409                                     ; preds = %320
  %410 = getelementptr inbounds double, double* %34, i64 %290
  %411 = load double, double* %410, align 8, !tbaa !32
  %412 = fsub double %411, %402
  store double %412, double* %410, align 8, !tbaa !32
  %413 = getelementptr inbounds double, double* %34, i64 %295
  %414 = load double, double* %413, align 8, !tbaa !32
  %415 = fsub double %414, %404
  store double %415, double* %413, align 8, !tbaa !32
  %416 = getelementptr inbounds double, double* %34, i64 %300
  %417 = load double, double* %416, align 8, !tbaa !32
  %418 = fsub double %417, %406
  store double %418, double* %416, align 8, !tbaa !32
  br label %421

; <label>:419                                     ; preds = %320
  %420 = fmul double %400, -5.000000e-01
  br label %421

; <label>:421                                     ; preds = %419, %409
  %fpair.0 = phi double [ %401, %409 ], [ %420, %419 ]
  %422 = load i32, i32* %80, align 8, !tbaa !72
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %432, label %424

; <label>:424                                     ; preds = %421
  %425 = fmul double %307, %fpair.0
  %426 = fmul double %308, %fpair.0
  %427 = fadd double %425, %426
  %428 = fmul double %310, %fpair.0
  %429 = fadd double %428, %427
  %430 = load double, double* %1, align 8, !tbaa !111
  %431 = fadd double %429, %430
  store double %431, double* %1, align 8, !tbaa !111
  br label %432

; <label>:432                                     ; preds = %424, %421
  %433 = fmul double %387, 5.000000e-01
  %.pn = select i1 %408, double %387, double %433
  %evdwl.4 = fadd double %evdwl.332, %.pn
  br label %434

; <label>:434                                     ; preds = %432, %.lr.ph
  %fz.1 = phi double [ %407, %432 ], [ %fz.028, %.lr.ph ]
  %fy.1 = phi double [ %405, %432 ], [ %fy.030, %.lr.ph ]
  %fx.1 = phi double [ %403, %432 ], [ %fx.031, %.lr.ph ]
  %evdwl.5 = phi double [ %evdwl.4, %432 ], [ %evdwl.332, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %265
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #10

; Function Attrs: uwtable
define void @_ZN8ForceEAM11communicateER4AtomR4Comm(%class.ForceEAM* %this, %class.Atom* nocapture readnone dereferenceable(224) %atom, %class.Comm* nocapture readonly dereferenceable(336) %comm) #13 align 2 {
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %2) #8
  %3 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !141
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %6 = bitcast %class.ForceEAM* %this to i32 (%class.ForceEAM*, i32, i32, double*, i32**)***
  %7 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 6
  %8 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 19
  %9 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 17
  %10 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 12
  %11 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 17
  %12 = bitcast %class.ForceEAM* %this to void (%class.ForceEAM*, i32, i32, double*)***
  %13 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 7
  %14 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 16
  %15 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 20
  %16 = bitcast double** %15 to i8**
  %17 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 9
  %18 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 13
  %19 = bitcast double** %8 to i8**
  %20 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 8
  br label %21

; <label>:21                                      ; preds = %55, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  %22 = load i32 (%class.ForceEAM*, i32, i32, double*, i32**)**, i32 (%class.ForceEAM*, i32, i32, double*, i32**)*** %6, align 8, !tbaa !66
  %23 = getelementptr inbounds i32 (%class.ForceEAM*, i32, i32, double*, i32**)*, i32 (%class.ForceEAM*, i32, i32, double*, i32**)** %22, i64 6
  %24 = load i32 (%class.ForceEAM*, i32, i32, double*, i32**)*, i32 (%class.ForceEAM*, i32, i32, double*, i32**)** %23, align 8
  %25 = load i32*, i32** %7, align 8, !tbaa !142
  %26 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv
  %27 = load i32, i32* %26, align 4, !tbaa !1
  %28 = load double*, double** %8, align 8, !tbaa !143
  %29 = load i32**, i32*** %9, align 8, !tbaa !144
  %30 = trunc i64 %indvars.iv to i32
  %31 = call i32 %24(%class.ForceEAM* %this, i32 %27, i32 %30, double* %28, i32** %29)
  %32 = load i32*, i32** %10, align 8, !tbaa !145
  %33 = getelementptr inbounds i32, i32* %32, i64 %indvars.iv
  %34 = load i32, i32* %33, align 4, !tbaa !1
  %35 = load i32, i32* %11, align 4, !tbaa !122
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %55, label %37

; <label>:37                                      ; preds = %21
  %38 = load i8*, i8** %16, align 8, !tbaa !146
  %39 = load i32*, i32** %17, align 8, !tbaa !147
  %40 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = load i32*, i32** %18, align 8, !tbaa !148
  %43 = getelementptr inbounds i32, i32* %42, i64 %indvars.iv
  %44 = load i32, i32* %43, align 4, !tbaa !1
  %45 = call i32 @MPI_Irecv(i8* %38, i32 %41, i32 1275070475, i32 %44, i32 0, i32 1140850688, i32* nonnull %request)
  %46 = load i8*, i8** %19, align 8, !tbaa !143
  %47 = load i32*, i32** %20, align 8, !tbaa !149
  %48 = getelementptr inbounds i32, i32* %47, i64 %indvars.iv
  %49 = load i32, i32* %48, align 4, !tbaa !1
  %50 = load i32*, i32** %10, align 8, !tbaa !145
  %51 = getelementptr inbounds i32, i32* %50, i64 %indvars.iv
  %52 = load i32, i32* %51, align 4, !tbaa !1
  %53 = call i32 @MPI_Send(i8* %46, i32 %49, i32 1275070475, i32 %52, i32 0, i32 1140850688)
  %54 = call i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
  br label %55

; <label>:55                                      ; preds = %37, %21
  %buf.0.in = phi double** [ %15, %37 ], [ %8, %21 ]
  %buf.0 = load double*, double** %buf.0.in, align 8, !tbaa !5
  %56 = load void (%class.ForceEAM*, i32, i32, double*)**, void (%class.ForceEAM*, i32, i32, double*)*** %12, align 8, !tbaa !66
  %57 = getelementptr inbounds void (%class.ForceEAM*, i32, i32, double*)*, void (%class.ForceEAM*, i32, i32, double*)** %56, i64 7
  %58 = load void (%class.ForceEAM*, i32, i32, double*)*, void (%class.ForceEAM*, i32, i32, double*)** %57, align 8
  %59 = load i32*, i32** %13, align 8, !tbaa !150
  %60 = getelementptr inbounds i32, i32* %59, i64 %indvars.iv
  %61 = load i32, i32* %60, align 4, !tbaa !1
  %62 = load i32*, i32** %14, align 8, !tbaa !151
  %63 = getelementptr inbounds i32, i32* %62, i64 %indvars.iv
  %64 = load i32, i32* %63, align 4, !tbaa !1
  call void %58(%class.ForceEAM* nonnull %this, i32 %61, i32 %64, double* %buf.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %65 = load i32, i32* %3, align 4, !tbaa !141
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %indvars.iv.next, %66
  br i1 %67, label %21, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 20, i8* %2) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #8
  ret void
}

declare i32 @MPI_Irecv(i8*, i32, i32, i32, i32, i32, i32*) #2

declare i32 @MPI_Send(i8*, i32, i32, i32, i32, i32) #2

declare i32 @MPI_Wait(i32*, %class.ThreadData*) #2

; Function Attrs: uwtable
define void @_ZN8ForceEAM17compute_fullneighER4AtomR8NeighborR4Commi(%class.ForceEAM* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Comm* nocapture readonly dereferenceable(336) %comm, i32 %me) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @10)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb7 = alloca i32, align 4
  %.omp.ub8 = alloca i32, align 4
  %.omp.stride9 = alloca i32, align 4
  %.omp.is_last10 = alloca i32, align 4
  %2 = tail call i32 @__kmpc_master(%ident_t* nonnull @10, i32 %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 3
  store double 0.000000e+00, double* %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !99
  %9 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 18
  %10 = load i32, i32* %9, align 8, !tbaa !138
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %29

; <label>:12                                      ; preds = %4
  store i32 %8, i32* %9, align 8, !tbaa !138
  %13 = sext i32 %8 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 8)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %18 = invoke noalias i8* @_Znam(i64 %17) #20
          to label %19 unwind label %26

; <label>:19                                      ; preds = %12
  %20 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %21 = bitcast double** %20 to i8**
  store i8* %18, i8** %21, align 8, !tbaa !139
  %22 = invoke noalias i8* @_Znam(i64 %17) #20
          to label %23 unwind label %26

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %25 = bitcast double** %24 to i8**
  store i8* %22, i8** %25, align 8, !tbaa !140
  br label %29

; <label>:26                                      ; preds = %19, %12
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @10, i32 %1)
  br label %462

; <label>:29                                      ; preds = %23, %4
  tail call void @__kmpc_end_master(%ident_t* nonnull @10, i32 %1)
  br label %30

; <label>:30                                      ; preds = %29, %0
  tail call void @__kmpc_barrier(%ident_t* nonnull @11, i32 %1)
  %31 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %32 = load double*, double** %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 6
  %34 = load double*, double** %33, align 8, !tbaa !84
  %35 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %36 = load i32*, i32** %35, align 8, !tbaa !100
  %37 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %38 = load i32, i32* %37, align 4, !tbaa !88
  %39 = add nsw i32 %38, -1
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %._crit_edge2

._crit_edge2:                                     ; preds = %30
  %.pre3 = bitcast i32* %.omp.is_last to i8*
  %.pre4 = bitcast i32* %.omp.stride to i8*
  %.pre6 = bitcast i32* %.omp.ub to i8*
  %.pre8 = bitcast i32* %.omp.lb to i8*
  br label %237

; <label>:41                                      ; preds = %30
  %42 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %43 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #8
  store i32 %39, i32* %.omp.ub, align 4, !tbaa !1
  %44 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %45 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @10, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %46 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %47 = icmp sgt i32 %46, %39
  %48 = select i1 %47, i32 %39, i32 %46
  store i32 %48, i32* %.omp.ub, align 4, !tbaa !1
  %49 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %50 = icmp sgt i32 %49, %48
  br i1 %50, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %41
  %51 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %54 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 12
  %55 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 2
  %56 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 4
  %57 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 14
  %58 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %59 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 5
  %60 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  %61 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 2
  %62 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 10
  %63 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  %64 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 5
  %65 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 13
  %66 = sext i32 %49 to i64
  br label %67

; <label>:67                                      ; preds = %232, %.lr.ph58
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %232 ], [ %66, %.lr.ph58 ]
  %evdwl.056 = phi double [ %evdwl.1, %232 ], [ 0.000000e+00, %.lr.ph58 ]
  %.omp.iv.055 = phi i32 [ %233, %232 ], [ %49, %.lr.ph58 ]
  %68 = load i32, i32* %51, align 8, !tbaa !115
  %69 = trunc i64 %indvars.iv67 to i32
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = load i32*, i32** %52, align 8, !tbaa !116
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  %74 = load i32*, i32** %53, align 8, !tbaa !117
  %75 = getelementptr inbounds i32, i32* %74, i64 %indvars.iv67
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = mul nsw i32 %.omp.iv.055, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %32, i64 %78
  %80 = load double, double* %79, align 8, !tbaa !32
  %81 = add nsw i32 %77, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %32, i64 %82
  %84 = load double, double* %83, align 8, !tbaa !32
  %85 = add nsw i32 %77, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %32, i64 %86
  %88 = load double, double* %87, align 8, !tbaa !32
  %89 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv67
  %90 = load i32, i32* %89, align 4, !tbaa !1
  %91 = icmp sgt i32 %76, 0
  br i1 %91, label %.lr.ph52.preheader, label %._crit_edge53

.lr.ph52.preheader:                               ; preds = %67
  br label %.lr.ph52

._crit_edge53.loopexit:                           ; preds = %203
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %67
  %rhoi.0.lcssa = phi double [ 0.000000e+00, %67 ], [ %rhoi.1, %._crit_edge53.loopexit ]
  %92 = mul nsw i32 %90, %90
  %93 = load double, double* %54, align 8, !tbaa !128
  %94 = fmul double %rhoi.0.lcssa, %93
  %95 = fadd double %94, 1.000000e+00
  %96 = fptosi double %95 to i32
  %97 = load i32, i32* %55, align 8, !tbaa !152
  %98 = add nsw i32 %97, -1
  %99 = icmp slt i32 %96, %98
  %. = select i1 %99, i32 %96, i32 %98
  %100 = icmp slt i32 %., 1
  %.. = select i1 %100, i32 1, i32 %.
  %101 = sitofp i32 %.. to double
  %102 = fsub double %95, %101
  %103 = fcmp olt double %102, 1.000000e+00
  %104 = select i1 %103, double %102, double 1.000000e+00
  %105 = load i32, i32* %56, align 8, !tbaa !129
  %106 = mul nsw i32 %105, %92
  %107 = mul nsw i32 %.., 7
  %108 = add nsw i32 %107, %106
  %109 = sext i32 %108 to i64
  %110 = load double*, double** %57, align 8, !tbaa !131
  %111 = getelementptr inbounds double, double* %110, i64 %109
  %112 = load double, double* %111, align 8, !tbaa !32
  %113 = fmul double %112, %104
  %114 = add nsw i32 %108, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %110, i64 %115
  %117 = load double, double* %116, align 8, !tbaa !32
  %118 = fadd double %117, %113
  %119 = fmul double %104, %118
  %120 = add nsw i32 %108, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %110, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !32
  %124 = fadd double %123, %119
  %125 = load double*, double** %58, align 8, !tbaa !140
  %126 = getelementptr inbounds double, double* %125, i64 %indvars.iv67
  store double %124, double* %126, align 8, !tbaa !32
  %127 = load i32, i32* %59, align 8, !tbaa !72
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %232, label %204

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %203
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %203 ], [ 0, %.lr.ph52.preheader ]
  %rhoi.050 = phi double [ %rhoi.1, %203 ], [ 0.000000e+00, %.lr.ph52.preheader ]
  %129 = getelementptr inbounds i32, i32* %73, i64 %indvars.iv63
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = mul nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %32, i64 %132
  %134 = load double, double* %133, align 8, !tbaa !32
  %135 = fsub double %80, %134
  %136 = add nsw i32 %131, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %32, i64 %137
  %139 = load double, double* %138, align 8, !tbaa !32
  %140 = fsub double %84, %139
  %141 = add nsw i32 %131, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %32, i64 %142
  %144 = load double, double* %143, align 8, !tbaa !32
  %145 = fsub double %88, %144
  %146 = sext i32 %130 to i64
  %147 = getelementptr inbounds i32, i32* %36, i64 %146
  %148 = load i32, i32* %147, align 4, !tbaa !1
  %149 = fmul double %135, %135
  %150 = fmul double %140, %140
  %151 = fadd double %149, %150
  %152 = fmul double %145, %145
  %153 = fadd double %151, %152
  %154 = load i32, i32* %60, align 8, !tbaa !109
  %155 = mul nsw i32 %154, %90
  %156 = add nsw i32 %155, %148
  %157 = sext i32 %156 to i64
  %158 = load double*, double** %61, align 8, !tbaa !118
  %159 = getelementptr inbounds double, double* %158, i64 %157
  %160 = load double, double* %159, align 8, !tbaa !32
  %161 = fcmp olt double %153, %160
  br i1 %161, label %162, label %203

; <label>:162                                     ; preds = %.lr.ph52
  %163 = call double @sqrt(double %153) #8
  %164 = load double, double* %62, align 8, !tbaa !126
  %165 = fmul double %163, %164
  %166 = fadd double %165, 1.000000e+00
  %167 = fptosi double %166 to i32
  %168 = load i32, i32* %63, align 4, !tbaa !135
  %169 = add nsw i32 %168, -1
  %170 = icmp slt i32 %167, %169
  %.28 = select i1 %170, i32 %167, i32 %169
  %171 = sitofp i32 %.28 to double
  %172 = fsub double %166, %171
  %173 = fcmp olt double %172, 1.000000e+00
  %174 = select i1 %173, double %172, double 1.000000e+00
  %175 = load i32, i32* %64, align 4, !tbaa !130
  %176 = mul nsw i32 %175, %156
  %177 = mul nsw i32 %.28, 7
  %178 = add nsw i32 %177, %176
  %179 = add nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = load double*, double** %65, align 8, !tbaa !132
  %182 = getelementptr inbounds double, double* %181, i64 %180
  %183 = load double, double* %182, align 8, !tbaa !32
  %184 = fmul double %183, %174
  %185 = add nsw i32 %178, 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %181, i64 %186
  %188 = load double, double* %187, align 8, !tbaa !32
  %189 = fadd double %188, %184
  %190 = fmul double %174, %189
  %191 = add nsw i32 %178, 5
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %181, i64 %192
  %194 = load double, double* %193, align 8, !tbaa !32
  %195 = fadd double %194, %190
  %196 = fmul double %174, %195
  %197 = add nsw i32 %178, 6
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %181, i64 %198
  %200 = load double, double* %199, align 8, !tbaa !32
  %201 = fadd double %200, %196
  %202 = fadd double %rhoi.050, %201
  br label %203

; <label>:203                                     ; preds = %162, %.lr.ph52
  %rhoi.1 = phi double [ %202, %162 ], [ %rhoi.050, %.lr.ph52 ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %lftr.wideiv65 = trunc i64 %indvars.iv.next64 to i32
  %exitcond66 = icmp eq i32 %lftr.wideiv65, %76
  br i1 %exitcond66, label %._crit_edge53.loopexit, label %.lr.ph52

; <label>:204                                     ; preds = %._crit_edge53
  %205 = load i32, i32* %56, align 8, !tbaa !129
  %206 = mul nsw i32 %205, %92
  %207 = add nsw i32 %206, %107
  %208 = add nsw i32 %207, 3
  %209 = sext i32 %208 to i64
  %210 = load double*, double** %57, align 8, !tbaa !131
  %211 = getelementptr inbounds double, double* %210, i64 %209
  %212 = load double, double* %211, align 8, !tbaa !32
  %213 = fmul double %104, %212
  %214 = add nsw i32 %207, 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %210, i64 %215
  %217 = load double, double* %216, align 8, !tbaa !32
  %218 = fadd double %213, %217
  %219 = fmul double %104, %218
  %220 = add nsw i32 %207, 5
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %210, i64 %221
  %223 = load double, double* %222, align 8, !tbaa !32
  %224 = fadd double %223, %219
  %225 = fmul double %104, %224
  %226 = add nsw i32 %207, 6
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %210, i64 %227
  %229 = load double, double* %228, align 8, !tbaa !32
  %230 = fadd double %229, %225
  %231 = fadd double %evdwl.056, %230
  br label %232

; <label>:232                                     ; preds = %204, %._crit_edge53
  %evdwl.1 = phi double [ %231, %204 ], [ %evdwl.056, %._crit_edge53 ]
  %233 = add nsw i32 %.omp.iv.055, 1
  %234 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = icmp slt i64 %indvars.iv67, %235
  %indvars.iv.next68 = add i64 %indvars.iv67, 1
  br i1 %236, label %67, label %._crit_edge59.loopexit

._crit_edge59.loopexit:                           ; preds = %232
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %41
  %evdwl.0.lcssa = phi double [ 0.000000e+00, %41 ], [ %evdwl.1, %._crit_edge59.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @10, i32 %1)
  br label %237

; <label>:237                                     ; preds = %._crit_edge2, %._crit_edge59
  %.pre-phi9 = phi i8* [ %.pre8, %._crit_edge2 ], [ %42, %._crit_edge59 ]
  %.pre-phi7 = phi i8* [ %.pre6, %._crit_edge2 ], [ %43, %._crit_edge59 ]
  %.pre-phi5 = phi i8* [ %.pre4, %._crit_edge2 ], [ %44, %._crit_edge59 ]
  %.pre-phi = phi i8* [ %.pre3, %._crit_edge2 ], [ %45, %._crit_edge59 ]
  %evdwl.2 = phi double [ %evdwl.0.lcssa, %._crit_edge59 ], [ 0.000000e+00, %._crit_edge2 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi5) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi7) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi9) #8
  call void @__kmpc_barrier(%ident_t* nonnull @12, i32 %1)
  %238 = call i32 @__kmpc_master(%ident_t* nonnull @10, i32 %1)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %245, label %240

; <label>:240                                     ; preds = %237
  invoke void @_ZN8ForceEAM11communicateER4AtomR4Comm(%class.ForceEAM* %this, %class.Atom* dereferenceable(224) undef, %class.Comm* nonnull dereferenceable(336) %comm)
          to label %241 unwind label %242

; <label>:241                                     ; preds = %240
  call void @__kmpc_end_master(%ident_t* nonnull @10, i32 %1)
  br label %245

; <label>:242                                     ; preds = %240
  %243 = landingpad { i8*, i32 }
          catch i8* null
  %244 = extractvalue { i8*, i32 } %243, 0
  call void @__kmpc_end_master(%ident_t* nonnull @10, i32 %1)
  br label %462

; <label>:245                                     ; preds = %241, %237
  call void @__kmpc_barrier(%ident_t* nonnull @11, i32 %1)
  br i1 %40, label %246, label %._crit_edge1

._crit_edge1:                                     ; preds = %245
  %.pre10 = bitcast i32* %.omp.is_last10 to i8*
  %.pre12 = bitcast i32* %.omp.stride9 to i8*
  %.pre14 = bitcast i32* %.omp.ub8 to i8*
  %.pre16 = bitcast i32* %.omp.lb7 to i8*
  br label %436

; <label>:246                                     ; preds = %245
  %247 = bitcast i32* %.omp.lb7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #8
  store i32 0, i32* %.omp.lb7, align 4, !tbaa !1
  %248 = bitcast i32* %.omp.ub8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #8
  store i32 %39, i32* %.omp.ub8, align 4, !tbaa !1
  %249 = bitcast i32* %.omp.stride9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #8
  store i32 1, i32* %.omp.stride9, align 4, !tbaa !1
  %250 = bitcast i32* %.omp.is_last10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #8
  store i32 0, i32* %.omp.is_last10, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @10, i32 %1, i32 34, i32* nonnull %.omp.is_last10, i32* nonnull %.omp.lb7, i32* nonnull %.omp.ub8, i32* nonnull %.omp.stride9, i32 1, i32 1)
  %251 = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  %252 = icmp sgt i32 %251, %39
  %253 = select i1 %252, i32 %39, i32 %251
  store i32 %253, i32* %.omp.ub8, align 4, !tbaa !1
  %254 = load i32, i32* %.omp.lb7, align 4, !tbaa !1
  %255 = icmp sgt i32 %254, %253
  br i1 %255, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %246
  %256 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 10
  %257 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 9
  %258 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %259 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  %260 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 2
  %261 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 10
  %262 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  %263 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 5
  %264 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 13
  %265 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 15
  %266 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %267 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 5
  %268 = sext i32 %254 to i64
  br label %269

; <label>:269                                     ; preds = %._crit_edge, %.lr.ph45
  %270 = phi i32 [ %295, %._crit_edge ], [ %253, %.lr.ph45 ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %._crit_edge ], [ %268, %.lr.ph45 ]
  %evdwl.343 = phi double [ %evdwl.4.lcssa, %._crit_edge ], [ %evdwl.2, %.lr.ph45 ]
  %t_virial.042 = phi double [ %t_virial.1.lcssa, %._crit_edge ], [ 0.000000e+00, %.lr.ph45 ]
  %.omp.iv4.041 = phi i32 [ %299, %._crit_edge ], [ %254, %.lr.ph45 ]
  %271 = load i32, i32* %256, align 8, !tbaa !115
  %272 = trunc i64 %indvars.iv61 to i32
  %273 = mul nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = load i32*, i32** %257, align 8, !tbaa !116
  %276 = getelementptr inbounds i32, i32* %275, i64 %274
  %277 = load i32*, i32** %258, align 8, !tbaa !117
  %278 = getelementptr inbounds i32, i32* %277, i64 %indvars.iv61
  %279 = load i32, i32* %278, align 4, !tbaa !1
  %280 = mul nsw i32 %.omp.iv4.041, 3
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double, double* %32, i64 %281
  %283 = load double, double* %282, align 8, !tbaa !32
  %284 = add nsw i32 %280, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %32, i64 %285
  %287 = load double, double* %286, align 8, !tbaa !32
  %288 = add nsw i32 %280, 2
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds double, double* %32, i64 %289
  %291 = load double, double* %290, align 8, !tbaa !32
  %292 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv61
  %293 = load i32, i32* %292, align 4, !tbaa !1
  %294 = icmp sgt i32 %279, 0
  br i1 %294, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %269
  br label %.lr.ph

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %269
  %295 = phi i32 [ %270, %269 ], [ %.pre, %.._crit_edge_crit_edge ]
  %evdwl.4.lcssa = phi double [ %evdwl.343, %269 ], [ %evdwl.6, %.._crit_edge_crit_edge ]
  %t_virial.1.lcssa = phi double [ %t_virial.042, %269 ], [ %t_virial.3, %.._crit_edge_crit_edge ]
  %fx.0.lcssa = phi double [ 0.000000e+00, %269 ], [ %fx.1, %.._crit_edge_crit_edge ]
  %fy.0.lcssa = phi double [ 0.000000e+00, %269 ], [ %fy.1, %.._crit_edge_crit_edge ]
  %fz.0.lcssa = phi double [ 0.000000e+00, %269 ], [ %fz.1, %.._crit_edge_crit_edge ]
  %296 = getelementptr inbounds double, double* %34, i64 %281
  store double %fx.0.lcssa, double* %296, align 8, !tbaa !32
  %297 = getelementptr inbounds double, double* %34, i64 %285
  store double %fy.0.lcssa, double* %297, align 8, !tbaa !32
  %298 = getelementptr inbounds double, double* %34, i64 %289
  store double %fz.0.lcssa, double* %298, align 8, !tbaa !32
  %299 = add nsw i32 %.omp.iv4.041, 1
  %300 = sext i32 %295 to i64
  %301 = icmp slt i64 %indvars.iv61, %300
  %indvars.iv.next62 = add i64 %indvars.iv61, 1
  br i1 %301, label %269, label %._crit_edge46.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %435
  %indvars.iv = phi i64 [ %indvars.iv.next, %435 ], [ 0, %.lr.ph.preheader ]
  %evdwl.436 = phi double [ %evdwl.6, %435 ], [ %evdwl.343, %.lr.ph.preheader ]
  %t_virial.135 = phi double [ %t_virial.3, %435 ], [ %t_virial.042, %.lr.ph.preheader ]
  %fx.034 = phi double [ %fx.1, %435 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fy.033 = phi double [ %fy.1, %435 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %fz.032 = phi double [ %fz.1, %435 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %302 = getelementptr inbounds i32, i32* %276, i64 %indvars.iv
  %303 = load i32, i32* %302, align 4, !tbaa !1
  %304 = mul nsw i32 %303, 3
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds double, double* %32, i64 %305
  %307 = load double, double* %306, align 8, !tbaa !32
  %308 = fsub double %283, %307
  %309 = add nsw i32 %304, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds double, double* %32, i64 %310
  %312 = load double, double* %311, align 8, !tbaa !32
  %313 = fsub double %287, %312
  %314 = add nsw i32 %304, 2
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, double* %32, i64 %315
  %317 = load double, double* %316, align 8, !tbaa !32
  %318 = fsub double %291, %317
  %319 = sext i32 %303 to i64
  %320 = getelementptr inbounds i32, i32* %36, i64 %319
  %321 = load i32, i32* %320, align 4, !tbaa !1
  %322 = fmul double %308, %308
  %323 = fmul double %313, %313
  %324 = fadd double %322, %323
  %325 = fmul double %318, %318
  %326 = fadd double %324, %325
  %327 = load i32, i32* %259, align 8, !tbaa !109
  %328 = mul nsw i32 %327, %293
  %329 = add nsw i32 %328, %321
  %330 = sext i32 %329 to i64
  %331 = load double*, double** %260, align 8, !tbaa !118
  %332 = getelementptr inbounds double, double* %331, i64 %330
  %333 = load double, double* %332, align 8, !tbaa !32
  %334 = fcmp olt double %326, %333
  br i1 %334, label %335, label %435

; <label>:335                                     ; preds = %.lr.ph
  %336 = call double @sqrt(double %326) #8
  %337 = load double, double* %261, align 8, !tbaa !126
  %338 = fmul double %336, %337
  %339 = fadd double %338, 1.000000e+00
  %340 = fptosi double %339 to i32
  %341 = load i32, i32* %262, align 4, !tbaa !135
  %342 = add nsw i32 %341, -1
  %343 = icmp slt i32 %340, %342
  %.30 = select i1 %343, i32 %340, i32 %342
  %344 = sitofp i32 %.30 to double
  %345 = fsub double %339, %344
  %346 = fcmp olt double %345, 1.000000e+00
  %347 = select i1 %346, double %345, double 1.000000e+00
  %348 = load i32, i32* %263, align 4, !tbaa !130
  %349 = mul nsw i32 %348, %329
  %350 = mul nsw i32 %.30, 7
  %351 = add nsw i32 %350, %349
  %352 = sext i32 %351 to i64
  %353 = load double*, double** %264, align 8, !tbaa !132
  %354 = getelementptr inbounds double, double* %353, i64 %352
  %355 = load double, double* %354, align 8, !tbaa !32
  %356 = fmul double %355, %347
  %357 = add nsw i32 %351, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %353, i64 %358
  %360 = load double, double* %359, align 8, !tbaa !32
  %361 = fadd double %360, %356
  %362 = fmul double %347, %361
  %363 = add nsw i32 %351, 2
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %353, i64 %364
  %366 = load double, double* %365, align 8, !tbaa !32
  %367 = fadd double %366, %362
  %368 = load double*, double** %265, align 8, !tbaa !133
  %369 = getelementptr inbounds double, double* %368, i64 %352
  %370 = load double, double* %369, align 8, !tbaa !32
  %371 = fmul double %370, %347
  %372 = getelementptr inbounds double, double* %368, i64 %358
  %373 = load double, double* %372, align 8, !tbaa !32
  %374 = fadd double %373, %371
  %375 = fmul double %347, %374
  %376 = getelementptr inbounds double, double* %368, i64 %364
  %377 = load double, double* %376, align 8, !tbaa !32
  %378 = fadd double %377, %375
  %379 = add nsw i32 %351, 3
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %368, i64 %380
  %382 = load double, double* %381, align 8, !tbaa !32
  %383 = fmul double %347, %382
  %384 = add nsw i32 %351, 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds double, double* %368, i64 %385
  %387 = load double, double* %386, align 8, !tbaa !32
  %388 = fadd double %383, %387
  %389 = fmul double %347, %388
  %390 = add nsw i32 %351, 5
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double, double* %368, i64 %391
  %393 = load double, double* %392, align 8, !tbaa !32
  %394 = fadd double %393, %389
  %395 = fmul double %347, %394
  %396 = add nsw i32 %351, 6
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %368, i64 %397
  %399 = load double, double* %398, align 8, !tbaa !32
  %400 = fadd double %399, %395
  %401 = fdiv double 1.000000e+00, %336
  %402 = fmul double %401, %400
  %403 = fmul double %401, %378
  %404 = fmul double %401, %402
  %405 = fsub double %403, %404
  %406 = load double*, double** %266, align 8, !tbaa !140
  %407 = getelementptr inbounds double, double* %406, i64 %indvars.iv61
  %408 = load double, double* %407, align 8, !tbaa !32
  %409 = fmul double %367, %408
  %410 = getelementptr inbounds double, double* %406, i64 %319
  %411 = load double, double* %410, align 8, !tbaa !32
  %412 = fmul double %367, %411
  %413 = fadd double %409, %412
  %414 = fadd double %413, %405
  %415 = fmul double %401, %414
  %416 = fsub double -0.000000e+00, %415
  %417 = fmul double %308, %416
  %418 = fadd double %fx.034, %417
  %419 = fmul double %313, %416
  %420 = fadd double %fy.033, %419
  %421 = fmul double %318, %416
  %422 = fadd double %fz.032, %421
  %423 = fmul double %415, -5.000000e-01
  %424 = load i32, i32* %267, align 8, !tbaa !72
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %435, label %426

; <label>:426                                     ; preds = %335
  %427 = fmul double %322, %423
  %428 = fmul double %323, %423
  %429 = fadd double %427, %428
  %430 = fmul double %325, %423
  %431 = fadd double %430, %429
  %432 = fadd double %t_virial.135, %431
  %433 = fmul double %402, 5.000000e-01
  %434 = fadd double %evdwl.436, %433
  br label %435

; <label>:435                                     ; preds = %426, %335, %.lr.ph
  %fz.1 = phi double [ %fz.032, %.lr.ph ], [ %422, %335 ], [ %422, %426 ]
  %fy.1 = phi double [ %fy.033, %.lr.ph ], [ %420, %335 ], [ %420, %426 ]
  %fx.1 = phi double [ %fx.034, %.lr.ph ], [ %418, %335 ], [ %418, %426 ]
  %t_virial.3 = phi double [ %t_virial.135, %.lr.ph ], [ %t_virial.135, %335 ], [ %432, %426 ]
  %evdwl.6 = phi double [ %evdwl.436, %.lr.ph ], [ %evdwl.436, %335 ], [ %434, %426 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %279
  br i1 %exitcond, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %435
  %.pre = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  br label %._crit_edge

._crit_edge46.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit, %246
  %evdwl.3.lcssa = phi double [ %evdwl.2, %246 ], [ %evdwl.4.lcssa, %._crit_edge46.loopexit ]
  %t_virial.0.lcssa = phi double [ 0.000000e+00, %246 ], [ %t_virial.1.lcssa, %._crit_edge46.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @10, i32 %1)
  br label %436

; <label>:436                                     ; preds = %._crit_edge1, %._crit_edge46
  %.pre-phi17 = phi i8* [ %.pre16, %._crit_edge1 ], [ %247, %._crit_edge46 ]
  %.pre-phi15 = phi i8* [ %.pre14, %._crit_edge1 ], [ %248, %._crit_edge46 ]
  %.pre-phi13 = phi i8* [ %.pre12, %._crit_edge1 ], [ %249, %._crit_edge46 ]
  %.pre-phi11 = phi i8* [ %.pre10, %._crit_edge1 ], [ %250, %._crit_edge46 ]
  %t_virial.4 = phi double [ %t_virial.0.lcssa, %._crit_edge46 ], [ 0.000000e+00, %._crit_edge1 ]
  %evdwl.7 = phi double [ %evdwl.3.lcssa, %._crit_edge46 ], [ %evdwl.2, %._crit_edge1 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi11) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi13) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi15) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi17) #8
  call void @__kmpc_barrier(%ident_t* nonnull @12, i32 %1)
  %437 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 6
  %438 = bitcast double* %437 to i64*
  %439 = load atomic i64, i64* %438 monotonic, align 8, !tbaa !32
  br label %440

; <label>:440                                     ; preds = %440, %436
  %441 = phi i64 [ %439, %436 ], [ %446, %440 ]
  %442 = bitcast i64 %441 to double
  %443 = fadd double %t_virial.4, %442
  %444 = bitcast double %443 to i64
  %445 = cmpxchg i64* %438, i64 %441, i64 %444 monotonic monotonic
  %446 = extractvalue { i64, i1 } %445, 0
  %447 = extractvalue { i64, i1 } %445, 1
  br i1 %447, label %448, label %440

; <label>:448                                     ; preds = %440
  %449 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 3
  %450 = fmul double %evdwl.7, 2.000000e+00
  %451 = bitcast double* %449 to i64*
  %452 = load atomic i64, i64* %451 monotonic, align 8, !tbaa !32
  br label %453

; <label>:453                                     ; preds = %453, %448
  %454 = phi i64 [ %452, %448 ], [ %459, %453 ]
  %455 = bitcast i64 %454 to double
  %456 = fadd double %450, %455
  %457 = bitcast double %456 to i64
  %458 = cmpxchg i64* %451, i64 %454, i64 %457 monotonic monotonic
  %459 = extractvalue { i64, i1 } %458, 0
  %460 = extractvalue { i64, i1 } %458, 1
  br i1 %460, label %461, label %453

; <label>:461                                     ; preds = %453
  call void @__kmpc_barrier(%ident_t* nonnull @11, i32 %1)
  ret void

; <label>:462                                     ; preds = %242, %26
  %.0 = phi i8* [ %244, %242 ], [ %28, %26 ]
  call void @__clang_call_terminate(i8* %.0) #19
  unreachable
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM5coeffEPKc(%class.ForceEAM* %this, i8* %arg) unnamed_addr #13 align 2 {
  %1 = bitcast %class.ForceEAM* %this to void (%class.ForceEAM*, i8*)***
  %2 = load void (%class.ForceEAM*, i8*)**, void (%class.ForceEAM*, i8*)*** %1, align 8, !tbaa !66
  %3 = getelementptr inbounds void (%class.ForceEAM*, i8*)*, void (%class.ForceEAM*, i8*)** %2, i64 8
  %4 = load void (%class.ForceEAM*, i8*)*, void (%class.ForceEAM*, i8*)** %3, align 8
  tail call void %4(%class.ForceEAM* %this, i8* %arg)
  %5 = tail call i64 @strlen(i8* %arg) #18
  %6 = shl i64 %5, 32
  %sext = add i64 %6, 4294967296
  %7 = ashr exact i64 %sext, 32
  %8 = icmp slt i64 %sext, 0
  %9 = select i1 %8, i64 -1, i64 %7
  %10 = tail call noalias i8* @_Znam(i64 %9) #20
  %11 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 0
  store i8* %10, i8** %11, align 8, !tbaa !153
  %12 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 5
  %13 = bitcast double* %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !154
  %15 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 1
  %16 = bitcast double* %15 to i64*
  store i64 %14, i64* %16, align 8, !tbaa !155
  %17 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  %18 = load i32, i32* %17, align 8, !tbaa !109
  %19 = mul nsw i32 %18, %18
  %20 = icmp eq i32 %19, 0
  %21 = bitcast i64 %14 to double
  br i1 %20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %22 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 2
  %23 = load double*, double** %22, align 8
  %24 = zext i32 %19 to i64
  br label %25

._crit_edge.loopexit:                             ; preds = %25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

; <label>:25                                      ; preds = %._crit_edge1, %.lr.ph
  %26 = phi double [ %21, %.lr.ph ], [ %.pre, %._crit_edge1 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge1 ]
  %27 = fmul double %26, %26
  %28 = getelementptr inbounds double, double* %23, i64 %indvars.iv
  store double %27, double* %28, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = icmp slt i64 %indvars.iv.next, %24
  br i1 %29, label %._crit_edge1, label %._crit_edge.loopexit

._crit_edge1:                                     ; preds = %25
  %.pre = load double, double* %15, align 8, !tbaa !155
  br label %25
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define i32 @_ZN8ForceEAM9pack_commEiiPdPPi(%class.ForceEAM* nocapture readonly %this, i32 %n, i32 %iswap, double* nocapture %buf, i32** nocapture readonly %asendlist) unnamed_addr #9 align 2 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %iswap to i64
  %3 = getelementptr inbounds i32*, i32** %asendlist, i64 %2
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %6 = load double*, double** %5, align 8
  br label %7

; <label>:7                                       ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %8 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %9 = load i32, i32* %8, align 4, !tbaa !1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, double* %6, i64 %10
  %12 = bitcast double* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !32
  %14 = getelementptr inbounds double, double* %buf, i64 %indvars.iv
  %15 = bitcast double* %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge.loopexit, label %7

._crit_edge.loopexit:                             ; preds = %7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN8ForceEAM11unpack_commEiiPd(%class.ForceEAM* nocapture readonly %this, i32 %n, i32 %first, double* nocapture readonly %buf) unnamed_addr #9 align 2 {
  %1 = add nsw i32 %first, %n
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %4 = load double*, double** %3, align 8
  %5 = sext i32 %first to i64
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %6 ]
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %i.02 = phi i32 [ %first, %.lr.ph ], [ %12, %6 ]
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %7 = getelementptr inbounds double, double* %buf, i64 %indvars.iv3
  %8 = bitcast double* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !32
  %10 = getelementptr inbounds double, double* %4, i64 %indvars.iv
  %11 = bitcast double* %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !32
  %12 = add nsw i32 %i.02, 1
  %13 = icmp slt i32 %12, %1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %13, label %6, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAM9read_fileEPKc(%class.ForceEAM* %this, i8* %filename) unnamed_addr #13 align 2 {
  %line = alloca [1024 x i8], align 16
  %flag = alloca i32, align 4
  %tmp = alloca i32, align 4
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %1) #8
  %2 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  store i32 0, i32* %flag, align 4, !tbaa !1
  %3 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 17
  %4 = load i32, i32* %3, align 4, !tbaa !122
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.73, i64 0, i64 0))
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3.74, i64 0, i64 0), i8* %filename)
  store i32 1, i32* %flag, align 4, !tbaa !1
  br label %11

; <label>:11                                      ; preds = %9, %6, %0
  %fptr.0 = phi %struct._IO_FILE* [ null, %9 ], [ %7, %6 ], [ undef, %0 ]
  %12 = call i32 @MPI_Bcast(i8* %2, i32 1, i32 1275069445, i32 0, i32 1140850688)
  %13 = load i32, i32* %flag, align 4, !tbaa !1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %11
  %16 = call i32 @MPI_Finalize()
  call void @exit(i32 0) #19
  unreachable

; <label>:17                                      ; preds = %11
  %18 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  %19 = load i32, i32* %3, align 4, !tbaa !122
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %._crit_edge3

._crit_edge3:                                     ; preds = %17
  %.pre4 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 6
  %.pre5 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 1
  %.pre7 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 3
  %.pre9 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 2
  %.pre11 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 4
  %.pre13 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 5
  br label %33

; <label>:21                                      ; preds = %17
  %22 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %fptr.0)
  %23 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %fptr.0)
  %24 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 6
  %25 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.75, i64 0, i64 0), i32* nonnull %tmp, double* %24) #8
  %26 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %fptr.0)
  %27 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 1
  %28 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 3
  %29 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 2
  %30 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 4
  %31 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 5
  %32 = call i32 (i8*, i8*, ...) @sscanf(i8* %1, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5.76, i64 0, i64 0), i32* %27, double* %28, i32* %29, double* %30, double* %31) #8
  br label %33

; <label>:33                                      ; preds = %._crit_edge3, %21
  %.pre-phi14 = phi double* [ %.pre13, %._crit_edge3 ], [ %31, %21 ]
  %.pre-phi12 = phi double* [ %.pre11, %._crit_edge3 ], [ %30, %21 ]
  %.pre-phi10 = phi i32* [ %.pre9, %._crit_edge3 ], [ %29, %21 ]
  %.pre-phi8 = phi double* [ %.pre7, %._crit_edge3 ], [ %28, %21 ]
  %.pre-phi6 = phi i32* [ %.pre5, %._crit_edge3 ], [ %27, %21 ]
  %.pre-phi = phi double* [ %.pre4, %._crit_edge3 ], [ %24, %21 ]
  %34 = bitcast double* %.pre-phi to i8*
  %35 = call i32 @MPI_Bcast(i8* %34, i32 1, i32 1275070475, i32 0, i32 1140850688)
  %36 = bitcast i32* %.pre-phi6 to i8*
  %37 = call i32 @MPI_Bcast(i8* %36, i32 1, i32 1275069445, i32 0, i32 1140850688)
  %38 = bitcast double* %.pre-phi8 to i8*
  %39 = call i32 @MPI_Bcast(i8* %38, i32 1, i32 1275070475, i32 0, i32 1140850688)
  %40 = bitcast i32* %.pre-phi10 to i8*
  %41 = call i32 @MPI_Bcast(i8* %40, i32 1, i32 1275069445, i32 0, i32 1140850688)
  %42 = bitcast double* %.pre-phi12 to i8*
  %43 = call i32 @MPI_Bcast(i8* %42, i32 1, i32 1275070475, i32 0, i32 1140850688)
  %44 = bitcast double* %.pre-phi14 to i8*
  %45 = call i32 @MPI_Bcast(i8* %44, i32 1, i32 1275070475, i32 0, i32 1140850688)
  %46 = bitcast double* %.pre-phi to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !156
  %48 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 4
  %49 = bitcast double* %48 to i64*
  store i64 %47, i64* %49, align 8, !tbaa !68
  %50 = bitcast i32* %.pre-phi6 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 8)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %59 = call noalias i8* @_Znam(i64 %58) #20
  %60 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 7
  %61 = bitcast double** %60 to i8**
  store i8* %59, i8** %61, align 8, !tbaa !157
  %62 = lshr i64 %51, 32
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %65, i64 8)
  %67 = extractvalue { i64, i1 } %66, 1
  %68 = extractvalue { i64, i1 } %66, 0
  %69 = select i1 %67, i64 -1, i64 %68
  %70 = call noalias i8* @_Znam(i64 %69) #20
  %71 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 8
  %72 = bitcast double** %71 to i8**
  store i8* %70, i8** %72, align 8, !tbaa !158
  %73 = call noalias i8* @_Znam(i64 %69) #20
  %74 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 9
  %75 = bitcast double** %74 to i8**
  store i8* %73, i8** %75, align 8, !tbaa !159
  %76 = load i32, i32* %3, align 4, !tbaa !122
  %77 = icmp eq i32 %76, 0
  %78 = ptrtoint i8* %59 to i64
  %79 = inttoptr i64 %78 to double*
  br i1 %77, label %80, label %81

; <label>:80                                      ; preds = %33
  call void @_ZN8ForceEAM4grabEP8_IO_FILEiPd(%class.ForceEAM* undef, %struct._IO_FILE* %fptr.0, i32 %52, double* %79)
  %.pre = load i8*, i8** %61, align 8, !tbaa !157
  %.pre1 = load i32, i32* %.pre-phi6, align 8, !tbaa !160
  br label %81

; <label>:81                                      ; preds = %80, %33
  %82 = phi i32 [ %.pre1, %80 ], [ %52, %33 ]
  %83 = phi i8* [ %.pre, %80 ], [ %59, %33 ]
  %84 = call i32 @MPI_Bcast(i8* %83, i32 %82, i32 1275070475, i32 0, i32 1140850688)
  %85 = load i32, i32* %3, align 4, !tbaa !122
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %81
  %88 = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  %89 = load double*, double** %74, align 8, !tbaa !159
  call void @_ZN8ForceEAM4grabEP8_IO_FILEiPd(%class.ForceEAM* undef, %struct._IO_FILE* %fptr.0, i32 %88, double* %89)
  br label %90

; <label>:90                                      ; preds = %87, %81
  %91 = load i8*, i8** %75, align 8, !tbaa !159
  %92 = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  %93 = call i32 @MPI_Bcast(i8* %91, i32 %92, i32 1275070475, i32 0, i32 1140850688)
  %94 = load i32, i32* %3, align 4, !tbaa !122
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

; <label>:96                                      ; preds = %90
  %97 = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  %98 = load double*, double** %71, align 8, !tbaa !158
  call void @_ZN8ForceEAM4grabEP8_IO_FILEiPd(%class.ForceEAM* undef, %struct._IO_FILE* %fptr.0, i32 %97, double* %98)
  br label %99

; <label>:99                                      ; preds = %96, %90
  %100 = load i8*, i8** %72, align 8, !tbaa !158
  %101 = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  %102 = call i32 @MPI_Bcast(i8* %100, i32 %101, i32 1275070475, i32 0, i32 1140850688)
  %103 = load i64, i64* %50, align 8
  %104 = trunc i64 %103 to i32
  %105 = icmp sgt i32 %104, 0
  %106 = lshr i64 %103, 32
  %107 = trunc i64 %106 to i32
  br i1 %105, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %99
  %108 = load double*, double** %60, align 8
  %109 = sext i32 %104 to i64
  br label %114

._crit_edge11:                                    ; preds = %.._crit_edge11_crit_edge, %99
  %110 = phi i32 [ %.pre2, %.._crit_edge11_crit_edge ], [ %107, %99 ]
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %._crit_edge11
  %112 = load double*, double** %71, align 8
  %113 = sext i32 %110 to i64
  br label %124

; <label>:114                                     ; preds = %114, %.lr.ph10
  %indvars.iv14 = phi i64 [ %109, %.lr.ph10 ], [ %indvars.iv.next15, %114 ]
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1
  %115 = getelementptr inbounds double, double* %108, i64 %indvars.iv.next15
  %116 = bitcast double* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !32
  %118 = getelementptr inbounds double, double* %108, i64 %indvars.iv14
  %119 = bitcast double* %118 to i64*
  store i64 %117, i64* %119, align 8, !tbaa !32
  %120 = icmp sgt i64 %indvars.iv14, 1
  br i1 %120, label %114, label %.._crit_edge11_crit_edge

.._crit_edge11_crit_edge:                         ; preds = %114
  %.pre2 = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  br label %._crit_edge11

._crit_edge7:                                     ; preds = %124
  %.pr = load i32, i32* %.pre-phi10, align 4, !tbaa !161
  %121 = icmp sgt i32 %.pr, 0
  br i1 %121, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge7
  %122 = load double*, double** %74, align 8
  %123 = sext i32 %.pr to i64
  br label %133

; <label>:124                                     ; preds = %124, %.lr.ph6
  %indvars.iv12 = phi i64 [ %113, %.lr.ph6 ], [ %indvars.iv.next13, %124 ]
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1
  %125 = getelementptr inbounds double, double* %112, i64 %indvars.iv.next13
  %126 = bitcast double* %125 to i64*
  %127 = load i64, i64* %126, align 8, !tbaa !32
  %128 = getelementptr inbounds double, double* %112, i64 %indvars.iv12
  %129 = bitcast double* %128 to i64*
  store i64 %127, i64* %129, align 8, !tbaa !32
  %130 = icmp sgt i64 %indvars.iv12, 1
  br i1 %130, label %124, label %._crit_edge7

._crit_edge.loopexit:                             ; preds = %133
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge7, %._crit_edge11
  %131 = load i32, i32* %3, align 4, !tbaa !122
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %142

; <label>:133                                     ; preds = %133, %.lr.ph
  %indvars.iv = phi i64 [ %123, %.lr.ph ], [ %indvars.iv.next, %133 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %134 = getelementptr inbounds double, double* %122, i64 %indvars.iv.next
  %135 = bitcast double* %134 to i64*
  %136 = load i64, i64* %135, align 8, !tbaa !32
  %137 = getelementptr inbounds double, double* %122, i64 %indvars.iv
  %138 = bitcast double* %137 to i64*
  store i64 %136, i64* %138, align 8, !tbaa !32
  %139 = icmp sgt i64 %indvars.iv, 1
  br i1 %139, label %133, label %._crit_edge.loopexit

; <label>:140                                     ; preds = %._crit_edge
  %141 = call i32 @fclose(%struct._IO_FILE* %fptr.0)
  br label %142

; <label>:142                                     ; preds = %140, %._crit_edge
  call void @llvm.lifetime.end(i64 4, i8* %18) #8
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  call void @llvm.lifetime.end(i64 1024, i8* %1) #8
  ret void
}

declare i32 @MPI_Bcast(i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @_ZN8ForceEAM4grabEP8_IO_FILEiPd(%class.ForceEAM* nocapture readnone %this, %struct._IO_FILE* nocapture %fptr, i32 %n, double* nocapture %list) #11 align 2 {
  %line = alloca [1024 x i8], align 16
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %1) #8
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph4.preheader, label %._crit_edge

.lr.ph4.preheader:                                ; preds = %0
  br label %.lr.ph4

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph4
  %i.1.lcssa = phi i32 [ %i.11, %.lr.ph4 ], [ %i.1, %.loopexit.loopexit ]
  %3 = icmp slt i32 %i.1.lcssa, %n
  br i1 %3, label %.lr.ph4, label %._crit_edge.loopexit

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %.loopexit
  %i.03 = phi i32 [ %i.1.lcssa, %.loopexit ], [ 0, %.lr.ph4.preheader ]
  %4 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %fptr)
  %5 = call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.77, i64 0, i64 0)) #8
  %6 = call double @atof(i8* %5) #18
  %7 = sext i32 %i.03 to i64
  %8 = getelementptr inbounds double, double* %list, i64 %7
  store double %6, double* %8, align 8, !tbaa !32
  %i.11 = add i32 %i.03, 1
  %9 = call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.77, i64 0, i64 0)) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph4
  %11 = sext i32 %i.11 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %11, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %12 = phi i8* [ %9, %.lr.ph.preheader ], [ %15, %.lr.ph ]
  %i.12 = phi i32 [ %i.11, %.lr.ph.preheader ], [ %i.1, %.lr.ph ]
  %13 = call double @atof(i8* %12) #18
  %14 = getelementptr inbounds double, double* %list, i64 %indvars.iv
  store double %13, double* %14, align 8, !tbaa !32
  %i.1 = add nsw i32 %i.12, 1
  %15 = call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.77, i64 0, i64 0)) #8
  %16 = icmp eq i8* %15, null
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %16, label %.loopexit.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 1024, i8* %1) #8
  ret void
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally double @atof(i8* nocapture nonnull readonly %__nptr) #6 {
  %1 = tail call double @strtod(i8* nocapture nonnull %__nptr, i8** null) #8
  ret double %1
}

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) #5

; Function Attrs: uwtable
define void @_ZN8ForceEAM10file2arrayEv(%class.ForceEAM* nocapture %this) unnamed_addr #13 align 2 {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 11
  store double 0.000000e+00, double* %1, align 8, !tbaa !127
  %2 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 9
  %3 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 4
  %4 = load double, double* %3, align 8, !tbaa !162
  %5 = fcmp olt double %4, 0.000000e+00
  %. = select i1 %5, double 0.000000e+00, double %4
  store double %., double* %2, align 8, !tbaa !123
  %6 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 3
  %7 = load double, double* %6, align 8, !tbaa !163
  %8 = fcmp ogt double 0.000000e+00, %7
  %9 = select i1 %8, double 0.000000e+00, double %7
  store double %9, double* %1, align 8, !tbaa !127
  %10 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 2
  %11 = load i32, i32* %10, align 4, !tbaa !161
  %12 = add nsw i32 %11, -1
  %13 = sitofp i32 %12 to double
  %14 = fmul double %4, %13
  %15 = fcmp olt double %14, 0.000000e+00
  %.1 = select i1 %15, double 0.000000e+00, double %14
  %16 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 1
  %17 = load i32, i32* %16, align 8, !tbaa !160
  %18 = add nsw i32 %17, -1
  %19 = sitofp i32 %18 to double
  %20 = fmul double %7, %19
  %21 = fcmp olt double %20, 0.000000e+00
  %22 = select i1 %21, double 0.000000e+00, double %20
  %23 = fdiv double %.1, %.
  %24 = fadd double %23, 5.000000e-01
  %25 = fptosi double %24 to i32
  %26 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  store i32 %25, i32* %26, align 4, !tbaa !135
  %27 = fdiv double %22, %9
  %28 = fadd double %27, 5.000000e-01
  %29 = fptosi double %28 to i32
  %30 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 2
  store i32 %29, i32* %30, align 8, !tbaa !152
  %31 = add nsw i32 %29, 1
  %32 = sext i32 %31 to i64
  %33 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %32, i64 8)
  %34 = extractvalue { i64, i1 } %33, 1
  %35 = extractvalue { i64, i1 } %33, 0
  %36 = select i1 %34, i64 -1, i64 %35
  %37 = tail call noalias i8* @_Znam(i64 %36) #20
  %38 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 6
  %39 = bitcast double** %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !134
  %40 = icmp slt i32 %29, 1
  %41 = ptrtoint i8* %37 to i64
  %42 = inttoptr i64 %41 to double*
  br i1 %40, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %0
  %43 = add nsw i32 %17, -2
  %44 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 7
  %45 = load double*, double** %44, align 8
  %46 = sext i32 %29 to i64
  br label %47

; <label>:47                                      ; preds = %._crit_edge1, %.lr.ph12
  %48 = phi double [ %.pre2, %._crit_edge1 ], [ %7, %.lr.ph12 ]
  %49 = phi double [ %.pre, %._crit_edge1 ], [ %9, %.lr.ph12 ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %._crit_edge1 ], [ 1, %.lr.ph12 ]
  %50 = add i64 %indvars.iv16, 4294967295
  %51 = trunc i64 %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, %49
  %54 = fdiv double %53, %48
  %55 = fadd double %54, 1.000000e+00
  %56 = fptosi double %55 to i32
  %57 = icmp slt i32 %56, %43
  %.2 = select i1 %57, i32 %56, i32 %43
  %58 = icmp sgt i32 %.2, 2
  %59 = select i1 %58, i32 %.2, i32 2
  %60 = sitofp i32 %59 to double
  %61 = fsub double %55, %60
  %62 = fcmp olt double %61, 2.000000e+00
  %63 = select i1 %62, double %61, double 2.000000e+00
  %64 = fmul double %63, 0xBFC5555555555555
  %65 = fadd double %63, -1.000000e+00
  %66 = fmul double %64, %65
  %67 = fadd double %63, -2.000000e+00
  %68 = fmul double %67, %66
  %69 = fmul double %63, %63
  %70 = fadd double %69, -1.000000e+00
  %71 = fmul double %70, 5.000000e-01
  %72 = fmul double %67, %71
  %73 = fmul double %63, -5.000000e-01
  %74 = fadd double %63, 1.000000e+00
  %75 = fmul double %73, %74
  %76 = fmul double %67, %75
  %77 = fmul double %63, 0x3FC5555555555555
  %78 = fmul double %77, %70
  %79 = add nsw i32 %59, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %45, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !32
  %83 = fmul double %82, %68
  %84 = sext i32 %59 to i64
  %85 = getelementptr inbounds double, double* %45, i64 %84
  %86 = load double, double* %85, align 8, !tbaa !32
  %87 = fmul double %86, %72
  %88 = fadd double %83, %87
  %89 = add nsw i32 %59, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %45, i64 %90
  %92 = load double, double* %91, align 8, !tbaa !32
  %93 = fmul double %92, %76
  %94 = fadd double %93, %88
  %95 = add nsw i32 %59, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %45, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = fmul double %98, %78
  %100 = fadd double %99, %94
  %101 = getelementptr inbounds double, double* %42, i64 %indvars.iv16
  store double %100, double* %101, align 8, !tbaa !32
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %102 = icmp slt i64 %indvars.iv16, %46
  br i1 %102, label %._crit_edge1, label %.._crit_edge13_crit_edge

.._crit_edge13_crit_edge:                         ; preds = %47
  %.pre3 = load i32, i32* %26, align 4, !tbaa !135
  br label %._crit_edge13

._crit_edge1:                                     ; preds = %47
  %.pre = load double, double* %1, align 8, !tbaa !127
  %.pre2 = load double, double* %6, align 8, !tbaa !163
  br label %47

._crit_edge13:                                    ; preds = %.._crit_edge13_crit_edge, %0
  %103 = phi i32 [ %.pre3, %.._crit_edge13_crit_edge ], [ %25, %0 ]
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %105, i64 8)
  %107 = extractvalue { i64, i1 } %106, 1
  %108 = extractvalue { i64, i1 } %106, 0
  %109 = select i1 %107, i64 -1, i64 %108
  %110 = tail call noalias i8* @_Znam(i64 %109) #20
  %111 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 7
  %112 = bitcast double** %111 to i8**
  store i8* %110, i8** %112, align 8, !tbaa !136
  %113 = icmp slt i32 %103, 1
  %114 = ptrtoint i8* %110 to i64
  %115 = inttoptr i64 %114 to double*
  br i1 %113, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge13
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -2
  %118 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 8
  %119 = load double*, double** %118, align 8
  %120 = sext i32 %103 to i64
  br label %121

; <label>:121                                     ; preds = %121, %.lr.ph8
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %121 ], [ 1, %.lr.ph8 ]
  %122 = add i64 %indvars.iv14, 4294967295
  %123 = trunc i64 %122 to i32
  %124 = sitofp i32 %123 to double
  %125 = load double, double* %2, align 8, !tbaa !123
  %126 = fmul double %124, %125
  %127 = load double, double* %3, align 8, !tbaa !162
  %128 = fdiv double %126, %127
  %129 = fadd double %128, 1.000000e+00
  %130 = fptosi double %129 to i32
  %131 = icmp slt i32 %130, %117
  %.3 = select i1 %131, i32 %130, i32 %117
  %132 = icmp sgt i32 %.3, 2
  %133 = select i1 %132, i32 %.3, i32 2
  %134 = sitofp i32 %133 to double
  %135 = fsub double %129, %134
  %136 = fcmp olt double %135, 2.000000e+00
  %137 = select i1 %136, double %135, double 2.000000e+00
  %138 = fmul double %137, 0xBFC5555555555555
  %139 = fadd double %137, -1.000000e+00
  %140 = fmul double %138, %139
  %141 = fadd double %137, -2.000000e+00
  %142 = fmul double %141, %140
  %143 = fmul double %137, %137
  %144 = fadd double %143, -1.000000e+00
  %145 = fmul double %144, 5.000000e-01
  %146 = fmul double %141, %145
  %147 = fmul double %137, -5.000000e-01
  %148 = fadd double %137, 1.000000e+00
  %149 = fmul double %147, %148
  %150 = fmul double %141, %149
  %151 = fmul double %137, 0x3FC5555555555555
  %152 = fmul double %151, %144
  %153 = add nsw i32 %133, -1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %119, i64 %154
  %156 = load double, double* %155, align 8, !tbaa !32
  %157 = fmul double %156, %142
  %158 = sext i32 %133 to i64
  %159 = getelementptr inbounds double, double* %119, i64 %158
  %160 = load double, double* %159, align 8, !tbaa !32
  %161 = fmul double %160, %146
  %162 = fadd double %157, %161
  %163 = add nsw i32 %133, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %119, i64 %164
  %166 = load double, double* %165, align 8, !tbaa !32
  %167 = fmul double %166, %150
  %168 = fadd double %167, %162
  %169 = add nsw i32 %133, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %119, i64 %170
  %172 = load double, double* %171, align 8, !tbaa !32
  %173 = fmul double %172, %152
  %174 = fadd double %173, %168
  %175 = getelementptr inbounds double, double* %115, i64 %indvars.iv14
  store double %174, double* %175, align 8, !tbaa !32
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %176 = icmp slt i64 %indvars.iv14, %120
  br i1 %176, label %121, label %.._crit_edge9_crit_edge

.._crit_edge9_crit_edge:                          ; preds = %121
  %.pre4 = load i32, i32* %26, align 4, !tbaa !135
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %.._crit_edge9_crit_edge, %._crit_edge13
  %177 = phi i32 [ %.pre4, %.._crit_edge9_crit_edge ], [ %103, %._crit_edge13 ]
  %178 = tail call noalias i8* @_Znam(i64 %109) #20
  %179 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 8
  %180 = bitcast double** %179 to i8**
  store i8* %178, i8** %180, align 8, !tbaa !137
  %181 = icmp slt i32 %177, 1
  %182 = ptrtoint i8* %178 to i64
  %183 = inttoptr i64 %182 to double*
  br i1 %181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge9
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, -2
  %186 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 20, i32 9
  %187 = load double*, double** %186, align 8
  %188 = sext i32 %177 to i64
  br label %189

; <label>:189                                     ; preds = %189, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %189 ], [ 1, %.lr.ph ]
  %190 = add i64 %indvars.iv, 4294967295
  %191 = trunc i64 %190 to i32
  %192 = sitofp i32 %191 to double
  %193 = load double, double* %2, align 8, !tbaa !123
  %194 = fmul double %192, %193
  %195 = load double, double* %3, align 8, !tbaa !162
  %196 = fdiv double %194, %195
  %197 = fadd double %196, 1.000000e+00
  %198 = fptosi double %197 to i32
  %199 = icmp slt i32 %198, %185
  %.4 = select i1 %199, i32 %198, i32 %185
  %200 = icmp sgt i32 %.4, 2
  %201 = select i1 %200, i32 %.4, i32 2
  %202 = sitofp i32 %201 to double
  %203 = fsub double %197, %202
  %204 = fcmp olt double %203, 2.000000e+00
  %205 = select i1 %204, double %203, double 2.000000e+00
  %206 = fmul double %205, 0xBFC5555555555555
  %207 = fadd double %205, -1.000000e+00
  %208 = fmul double %206, %207
  %209 = fadd double %205, -2.000000e+00
  %210 = fmul double %209, %208
  %211 = fmul double %205, %205
  %212 = fadd double %211, -1.000000e+00
  %213 = fmul double %212, 5.000000e-01
  %214 = fmul double %209, %213
  %215 = fmul double %205, -5.000000e-01
  %216 = fadd double %205, 1.000000e+00
  %217 = fmul double %215, %216
  %218 = fmul double %209, %217
  %219 = fmul double %205, 0x3FC5555555555555
  %220 = fmul double %219, %212
  %221 = add nsw i32 %201, -1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %187, i64 %222
  %224 = load double, double* %223, align 8, !tbaa !32
  %225 = fmul double %224, %210
  %226 = sext i32 %201 to i64
  %227 = getelementptr inbounds double, double* %187, i64 %226
  %228 = load double, double* %227, align 8, !tbaa !32
  %229 = fmul double %228, %214
  %230 = fadd double %225, %229
  %231 = add nsw i32 %201, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %187, i64 %232
  %234 = load double, double* %233, align 8, !tbaa !32
  %235 = fmul double %234, %218
  %236 = fadd double %235, %230
  %237 = add nsw i32 %201, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, double* %187, i64 %238
  %240 = load double, double* %239, align 8, !tbaa !32
  %241 = fmul double %240, %220
  %242 = fadd double %241, %236
  %243 = fmul double %242, 1.438880e+01
  %244 = fmul double %242, %243
  %245 = getelementptr inbounds double, double* %183, i64 %indvars.iv
  store double %244, double* %245, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %246 = icmp slt i64 %indvars.iv, %188
  br i1 %246, label %189, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %189
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge9
  ret void
}

; Function Attrs: uwtable
define void @_ZN8ForceEAMC2Ei(%class.ForceEAM* nocapture %this, i32 %ntypes_) unnamed_addr #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0
  tail call void @_ZN5ForceC2Ev(%class.Force* %1)
  %2 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @_ZTV8ForceEAM, i64 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 7
  store i32 %ntypes_, i32* %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 1
  store double 0.000000e+00, double* %4, align 8, !tbaa !58
  %5 = mul nsw i32 %ntypes_, %ntypes_
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call noalias i8* @_Znam(i64 %7) #20
  %9 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 2
  %10 = bitcast double** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !118
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %._crit_edge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %0
  %12 = icmp ugt i32 %5, 1
  %smax = select i1 %12, i32 %5, i32 1
  %13 = add nsw i32 %smax, -1
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add nuw nsw i64 %15, 8
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %16, i32 8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %17 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 9
  store i32 0, i32* %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %19 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 0, i32 16
  %20 = bitcast double** %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 20, i32 8, i1 false)
  store i32 1, i32* %19, align 8, !tbaa !120
  ret void
}

; Function Attrs: nounwind uwtable
define double @_ZN8ForceEAM6singleEiiiidddRd(%class.ForceEAM* nocapture readonly %this, i32 %i, i32 %j, i32 %itype, i32 %jtype, double %rsq, double %factor_coul, double %factor_lj, double* nocapture dereferenceable(8) %fforce) #11 align 2 {
  %1 = tail call double @sqrt(double %rsq) #8
  %2 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 10
  %3 = load double, double* %2, align 8, !tbaa !126
  %4 = fmul double %1, %3
  %5 = fadd double %4, 1.000000e+00
  %6 = fptosi double %5 to i32
  %7 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !135
  %9 = add nsw i32 %8, -1
  %10 = icmp slt i32 %6, %9
  %. = select i1 %10, i32 %6, i32 %9
  %11 = sitofp i32 %. to double
  %12 = fsub double %5, %11
  %13 = fcmp olt double %12, 1.000000e+00
  %14 = select i1 %13, double %12, double 1.000000e+00
  %15 = mul nsw i32 %., 7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 13
  %18 = load double*, double** %17, align 8, !tbaa !132
  %19 = getelementptr inbounds double, double* %18, i64 %16
  %20 = load double, double* %19, align 8, !tbaa !32
  %21 = fmul double %20, %14
  %22 = getelementptr inbounds double, double* %19, i64 1
  %23 = load double, double* %22, align 8, !tbaa !32
  %24 = fadd double %23, %21
  %25 = fmul double %14, %24
  %26 = getelementptr inbounds double, double* %19, i64 2
  %27 = load double, double* %26, align 8, !tbaa !32
  %28 = fadd double %27, %25
  %29 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 15
  %30 = load double*, double** %29, align 8, !tbaa !133
  %31 = getelementptr inbounds double, double* %30, i64 %16
  %32 = load double, double* %31, align 8, !tbaa !32
  %33 = fmul double %32, %14
  %34 = getelementptr inbounds double, double* %31, i64 1
  %35 = load double, double* %34, align 8, !tbaa !32
  %36 = fadd double %35, %33
  %37 = fmul double %14, %36
  %38 = getelementptr inbounds double, double* %31, i64 2
  %39 = load double, double* %38, align 8, !tbaa !32
  %40 = fadd double %39, %37
  %41 = getelementptr inbounds double, double* %31, i64 3
  %42 = load double, double* %41, align 8, !tbaa !32
  %43 = fmul double %14, %42
  %44 = getelementptr inbounds double, double* %31, i64 4
  %45 = load double, double* %44, align 8, !tbaa !32
  %46 = fadd double %43, %45
  %47 = fmul double %14, %46
  %48 = getelementptr inbounds double, double* %31, i64 5
  %49 = load double, double* %48, align 8, !tbaa !32
  %50 = fadd double %49, %47
  %51 = fmul double %14, %50
  %52 = getelementptr inbounds double, double* %31, i64 6
  %53 = load double, double* %52, align 8, !tbaa !32
  %54 = fadd double %53, %51
  %55 = fdiv double 1.000000e+00, %1
  %56 = fmul double %55, %54
  %57 = fmul double %55, %40
  %58 = fmul double %55, %56
  %59 = fsub double %57, %58
  %60 = sext i32 %i to i64
  %61 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 17
  %62 = load double*, double** %61, align 8, !tbaa !140
  %63 = getelementptr inbounds double, double* %62, i64 %60
  %64 = load double, double* %63, align 8, !tbaa !32
  %65 = fmul double %28, %64
  %66 = sext i32 %j to i64
  %67 = getelementptr inbounds double, double* %62, i64 %66
  %68 = load double, double* %67, align 8, !tbaa !32
  %69 = fmul double %28, %68
  %70 = fadd double %65, %69
  %71 = fadd double %70, %59
  %72 = fmul double %55, %71
  %73 = fsub double -0.000000e+00, %72
  store double %73, double* %fforce, align 8, !tbaa !32
  ret double %56
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_ZN8ForceEAM17pack_reverse_commEiiPd(%class.ForceEAM* nocapture readonly %this, i32 %n, i32 %first, double* nocapture %buf) #9 align 2 {
  %1 = add nsw i32 %first, %n
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %4 = load double*, double** %3, align 8
  %5 = sext i32 %first to i64
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %6 ]
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %i.02 = phi i32 [ %first, %.lr.ph ], [ %12, %6 ]
  %7 = getelementptr inbounds double, double* %4, i64 %indvars.iv
  %8 = bitcast double* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !32
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %10 = getelementptr inbounds double, double* %buf, i64 %indvars.iv3
  %11 = bitcast double* %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !32
  %12 = add nsw i32 %i.02, 1
  %13 = icmp slt i32 %12, %1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %13, label %6, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN8ForceEAM19unpack_reverse_commEiPiPd(%class.ForceEAM* nocapture readonly %this, i32 %n, i32* nocapture readonly %list, double* nocapture readonly %buf) #9 align 2 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 16
  %3 = load double*, double** %2, align 8
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds i32, i32* %list, i64 %indvars.iv
  %6 = load i32, i32* %5, align 4, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = getelementptr inbounds double, double* %buf, i64 %indvars.iv
  %8 = load double, double* %7, align 8, !tbaa !32
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds double, double* %3, i64 %9
  %11 = load double, double* %10, align 8, !tbaa !32
  %12 = fadd double %8, %11
  store double %12, double* %10, align 8, !tbaa !32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge.loopexit, label %4

._crit_edge.loopexit:                             ; preds = %4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define double @_ZN8ForceEAM12memory_usageEv(%class.ForceEAM* nocapture readonly %this) #16 align 2 {
  %1 = getelementptr inbounds %class.ForceEAM, %class.ForceEAM* %this, i64 0, i32 18
  %2 = load i32, i32* %1, align 8, !tbaa !138
  %3 = shl i32 %2, 4
  %4 = sitofp i32 %3 to double
  ret double %4
}

; Function Attrs: nounwind uwtable
define void @_ZN8ForceEAM6boundsEPciRiS1_(%class.ForceEAM* nocapture readnone %this, i8* readonly %str, i32 %nmax, i32* nocapture dereferenceable(4) %nlo, i32* nocapture dereferenceable(4) %nhi) #11 align 2 {
  %1 = tail call i8* @strchr(i8* %str, i32 42) #18
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @atoi(i8* %str) #18
  store i32 %4, i32* %nhi, align 4, !tbaa !1
  store i32 %4, i32* %nlo, align 4, !tbaa !1
  %.pre = load i32, i32* %nhi, align 4
  br label %21

; <label>:5                                       ; preds = %0
  %6 = tail call i64 @strlen(i8* %str) #18
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5
  store i32 1, i32* %nlo, align 4, !tbaa !1
  store i32 %nmax, i32* %nhi, align 4, !tbaa !1
  br label %21

; <label>:9                                       ; preds = %5
  %10 = icmp eq i8* %1, %str
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %9
  store i32 1, i32* %nlo, align 4, !tbaa !1
  %12 = getelementptr inbounds i8, i8* %str, i64 1
  %13 = tail call i32 @atoi(i8* %12) #18
  store i32 %13, i32* %nhi, align 4, !tbaa !1
  br label %21

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds i8, i8* %1, i64 1
  %strlenfirst = load i8, i8* %15, align 1
  %16 = icmp eq i8 %strlenfirst, 0
  %17 = tail call i32 @atoi(i8* %str) #18
  store i32 %17, i32* %nlo, align 4, !tbaa !1
  br i1 %16, label %18, label %19

; <label>:18                                      ; preds = %14
  store i32 %nmax, i32* %nhi, align 4, !tbaa !1
  br label %21

; <label>:19                                      ; preds = %14
  %20 = tail call i32 @atoi(i8* %15) #18
  store i32 %20, i32* %nhi, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %19, %18, %11, %8, %3
  %22 = phi i32 [ %20, %19 ], [ %nmax, %18 ], [ %13, %11 ], [ %nmax, %8 ], [ %.pre, %3 ]
  %23 = load i32, i32* %nlo, align 4, !tbaa !1
  %24 = icmp slt i32 %23, 1
  %25 = icmp sgt i32 %22, %nmax
  %or.cond = or i1 %24, %25
  br i1 %or.cond, label %26, label %28

; <label>:26                                      ; preds = %21
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7.78, i64 0, i64 0))
  br label %28

; <label>:28                                      ; preds = %26, %21
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: uwtable
define void @_ZN8NeighborC2Ei(%class.Neighbor* nocapture %this, i32 %ntypes_) unnamed_addr #13 align 2 {
  %1 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 6
  store i32 0, i32* %1, align 8, !tbaa !164
  %2 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 24
  store i32 %ntypes_, i32* %2, align 4, !tbaa !165
  %3 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 7
  %4 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 10
  %5 = bitcast i32* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 20, i32 4, i1 false)
  store i32 100, i32* %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 23
  store i32 0, i32* %6, align 8, !tbaa !166
  %7 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 16
  %8 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 19
  %9 = bitcast i32** %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false)
  store i32 8, i32* %8, align 4, !tbaa !167
  %10 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 27
  store i32* null, i32** %10, align 8, !tbaa !168
  %11 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 15
  store %class.ThreadData* null, %class.ThreadData** %11, align 8, !tbaa !27
  %12 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 11
  store i32 0, i32* %12, align 4, !tbaa !40
  %13 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 12
  store i32 1, i32* %13, align 8, !tbaa !34
  %14 = mul nsw i32 %ntypes_, %ntypes_
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call noalias i8* @_Znam(i64 %16) #20
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 5
  %19 = bitcast double** %18 to i8**
  store i8* %17, i8** %19, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN8NeighborD2Ev(%class.Neighbor* nocapture readonly %this) unnamed_addr #11 align 2 {
  %1 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 8
  %2 = load i32*, i32** %1, align 8, !tbaa !117
  %3 = icmp eq i32* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i32* %2 to i8*
  tail call void @free(i8* %5) #8
  br label %6

; <label>:6                                       ; preds = %4, %0
  %7 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 9
  %8 = load i32*, i32** %7, align 8, !tbaa !116
  %9 = icmp eq i32* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %6
  %11 = bitcast i32* %8 to i8*
  tail call void @free(i8* %11) #8
  br label %12

; <label>:12                                      ; preds = %10, %6
  %13 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 16
  %14 = load i32*, i32** %13, align 8, !tbaa !101
  %15 = icmp eq i32* %14, null
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %12
  %17 = bitcast i32* %14 to i8*
  tail call void @free(i8* %17) #8
  br label %18

; <label>:18                                      ; preds = %16, %12
  %19 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 17
  %20 = load i32*, i32** %19, align 8, !tbaa !103
  %21 = icmp eq i32* %20, null
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %18
  %23 = bitcast i32* %20 to i8*
  tail call void @free(i8* %23) #8
  br label %24

; <label>:24                                      ; preds = %22, %18
  ret void
}

; Function Attrs: uwtable
define void @_ZN8Neighbor5buildER4Atom(%class.Neighbor* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @13)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %2 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 6
  %3 = load i32, i32* %2, align 8, !tbaa !164
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 8, !tbaa !164
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !88
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !112
  %9 = add nsw i32 %8, %6
  %10 = tail call i32 @__kmpc_master(%ident_t* nonnull @13, i32 %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %._crit_edge5, label %12

._crit_edge5:                                     ; preds = %0
  %.pre6 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 23
  br label %42

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 23
  %14 = load i32, i32* %13, align 8, !tbaa !166
  %15 = icmp sgt i32 %9, %14
  br i1 %15, label %16, label %41

; <label>:16                                      ; preds = %12
  store i32 %9, i32* %13, align 8, !tbaa !166
  %17 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 8
  %18 = load i32*, i32** %17, align 8, !tbaa !117
  %19 = icmp eq i32* %18, null
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %16
  %21 = bitcast i32* %18 to i8*
  tail call void @free(i8* %21) #8
  br label %22

; <label>:22                                      ; preds = %20, %16
  %23 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 9
  %24 = load i32*, i32** %23, align 8, !tbaa !116
  %25 = icmp eq i32* %24, null
  br i1 %25, label %28, label %26

; <label>:26                                      ; preds = %22
  %27 = bitcast i32* %24 to i8*
  tail call void @free(i8* %27) #8
  br label %28

; <label>:28                                      ; preds = %26, %22
  %29 = load i32, i32* %13, align 8, !tbaa !166
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call noalias i8* @malloc(i64 %31) #8
  %33 = bitcast i32** %17 to i8**
  store i8* %32, i8** %33, align 8, !tbaa !117
  %34 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 10
  %35 = load i32, i32* %34, align 8, !tbaa !115
  %36 = mul nsw i32 %35, %29
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call noalias i8* @malloc(i64 %38) #8
  %40 = bitcast i32** %23 to i8**
  store i8* %39, i8** %40, align 8, !tbaa !116
  br label %41

; <label>:41                                      ; preds = %28, %12
  tail call void @__kmpc_end_master(%ident_t* nonnull @13, i32 %1)
  br label %42

; <label>:42                                      ; preds = %._crit_edge5, %41
  %.pre-phi = phi i32* [ %.pre6, %._crit_edge5 ], [ %13, %41 ]
  tail call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  tail call void @_ZN8Neighbor8binatomsER4Atomi(%class.Neighbor* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, i32 -1)
  %43 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 13
  store i32 0, i32* %43, align 4, !tbaa !170
  %44 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %45 = load double*, double** %44, align 8, !tbaa !80
  %46 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 9
  %47 = load i32*, i32** %46, align 8, !tbaa !100
  %48 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 7
  %49 = load i32, i32* %48, align 8, !tbaa !71
  %50 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 40
  store i32 1, i32* %50, align 8, !tbaa !171
  tail call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  %51 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 10
  %52 = add nsw i32 %6, -1
  %53 = icmp sgt i32 %6, 0
  %54 = bitcast i32* %.omp.lb to i8*
  %55 = bitcast i32* %.omp.ub to i8*
  %56 = bitcast i32* %.omp.stride to i8*
  %57 = bitcast i32* %.omp.is_last to i8*
  %58 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 9
  %59 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 25
  %60 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 8
  %61 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 27
  %62 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 19
  %63 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 17
  %64 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 16
  %65 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 11
  %66 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 5
  %67 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 12
  %68 = bitcast i32** %58 to i8**
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %285, %42
  %.pr = load i32, i32* %50, align 8, !tbaa !171
  br label %69

; <label>:69                                      ; preds = %268, %thread-pre-split
  %70 = phi i32 [ %.pr, %thread-pre-split ], [ 0, %268 ]
  %71 = icmp eq i32 %70, 0
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  br i1 %71, label %286, label %72

; <label>:72                                      ; preds = %69
  %73 = load i32, i32* %51, align 8, !tbaa !115
  store i32 0, i32* %50, align 8, !tbaa !171
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  br i1 %53, label %74, label %268

; <label>:74                                      ; preds = %72
  call void @llvm.lifetime.start(i64 4, i8* %54) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %55) #8
  store i32 %52, i32* %.omp.ub, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %56) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %57) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @13, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %75 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %76 = icmp sgt i32 %75, %52
  %77 = select i1 %76, i32 %52, i32 %75
  store i32 %77, i32* %.omp.ub, align 4, !tbaa !1
  %78 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %79 = icmp sgt i32 %78, %77
  br i1 %79, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %74
  %80 = sext i32 %78 to i64
  %.pre = load i32, i32* %51, align 8, !tbaa !115
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %263, %.lr.ph30.preheader
  %81 = phi i32 [ %.pre, %.lr.ph30.preheader ], [ %109, %263 ]
  %indvars.iv38 = phi i64 [ %80, %.lr.ph30.preheader ], [ %indvars.iv.next39, %263 ]
  %new_maxneighs.028 = phi i32 [ %73, %.lr.ph30.preheader ], [ %new_maxneighs.1, %263 ]
  %.omp.iv.026 = phi i32 [ %78, %.lr.ph30.preheader ], [ %264, %263 ]
  %82 = trunc i64 %indvars.iv38 to i32
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load i32*, i32** %58, align 8, !tbaa !116
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  %87 = mul nsw i32 %.omp.iv.026, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %45, i64 %88
  %90 = load double, double* %89, align 8, !tbaa !32
  %91 = add nsw i32 %87, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %45, i64 %92
  %94 = load double, double* %93, align 8, !tbaa !32
  %95 = add nsw i32 %87, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %45, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !32
  %99 = getelementptr inbounds i32, i32* %47, i64 %indvars.iv38
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = call i32 @_ZN8Neighbor9coord2binEddd(%class.Neighbor* nonnull %this, double %90, double %94, double %98)
  %102 = load i32, i32* %59, align 8, !tbaa !172
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %.lr.ph24, label %._crit_edge

.lr.ph24:                                         ; preds = %.lr.ph30
  %104 = load i32*, i32** %61, align 8
  %105 = load i32*, i32** %63, align 8
  %106 = mul nsw i32 %100, %49
  br label %111

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph30
  %n.0.lcssa = phi i32 [ 0, %.lr.ph30 ], [ %n.7, %._crit_edge.loopexit ]
  %107 = load i32*, i32** %60, align 8, !tbaa !117
  %108 = getelementptr inbounds i32, i32* %107, i64 %indvars.iv38
  store i32 %n.0.lcssa, i32* %108, align 4, !tbaa !1
  %109 = load i32, i32* %51, align 8, !tbaa !115
  %110 = icmp slt i32 %n.0.lcssa, %109
  br i1 %110, label %263, label %261

; <label>:111                                     ; preds = %.loopexit, %.lr.ph24
  %indvars.iv36 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next37, %.loopexit ]
  %n.023 = phi i32 [ 0, %.lr.ph24 ], [ %n.7, %.loopexit ]
  %112 = getelementptr inbounds i32, i32* %104, i64 %indvars.iv36
  %113 = load i32, i32* %112, align 4, !tbaa !1
  %114 = add nsw i32 %113, %101
  %115 = load i32, i32* %62, align 4, !tbaa !167
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %105, i64 %117
  %119 = icmp eq i32 %113, 0
  %120 = sext i32 %114 to i64
  br i1 %119, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %111
  %121 = load i32*, i32** %64, align 8, !tbaa !101
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  %123 = load i32, i32* %122, align 4, !tbaa !1
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  br label %210

.preheader:                                       ; preds = %111
  %125 = load i32*, i32** %64, align 8, !tbaa !101
  %126 = getelementptr inbounds i32, i32* %125, i64 %120
  %127 = load i32, i32* %126, align 4, !tbaa !1
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %.preheader
  br label %129

; <label>:129                                     ; preds = %206, %.lr.ph20
  %130 = phi i32 [ %127, %.lr.ph20 ], [ %207, %206 ]
  %indvars.iv34 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next35, %206 ]
  %n.119 = phi i32 [ %n.023, %.lr.ph20 ], [ %n.3, %206 ]
  %131 = getelementptr inbounds i32, i32* %118, i64 %indvars.iv34
  %132 = load i32, i32* %131, align 4, !tbaa !1
  %133 = icmp eq i32 %132, %82
  br i1 %133, label %206, label %134

; <label>:134                                     ; preds = %129
  %135 = load i32, i32* %65, align 4, !tbaa !40
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %..thread_crit_edge4, label %137

..thread_crit_edge4:                              ; preds = %134
  %.pre7 = sext i32 %132 to i64
  br label %.thread

; <label>:137                                     ; preds = %134
  %138 = load i32, i32* %67, align 8, !tbaa !34
  %139 = icmp eq i32 %138, 0
  %140 = sext i32 %132 to i64
  %141 = icmp slt i64 %140, %indvars.iv38
  %or.cond = and i1 %141, %139
  br i1 %or.cond, label %206, label %142

; <label>:142                                     ; preds = %137
  br i1 false, label %..thread_crit_edge, label %143

..thread_crit_edge:                               ; preds = %142
  br label %.thread

; <label>:143                                     ; preds = %142
  br i1 %139, label %.thread, label %144

; <label>:144                                     ; preds = %143
  br i1 %141, label %206, label %145

; <label>:145                                     ; preds = %144
  %146 = icmp slt i32 %132, %6
  br i1 %146, label %.thread, label %147

; <label>:147                                     ; preds = %145
  %148 = mul nsw i32 %132, 3
  %149 = add nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %45, i64 %150
  %152 = load double, double* %151, align 8, !tbaa !32
  %153 = fcmp olt double %152, %98
  br i1 %153, label %206, label %154

; <label>:154                                     ; preds = %147
  %155 = fcmp oeq double %152, %98
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %154
  %157 = add nsw i32 %148, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %45, i64 %158
  %160 = load double, double* %159, align 8, !tbaa !32
  %161 = fcmp olt double %160, %94
  br i1 %161, label %206, label %162

; <label>:162                                     ; preds = %156, %154
  br i1 %155, label %163, label %.thread

; <label>:163                                     ; preds = %162
  %164 = add nsw i32 %148, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %45, i64 %165
  %167 = load double, double* %166, align 8, !tbaa !32
  %168 = fcmp oeq double %167, %94
  br i1 %168, label %169, label %.thread

; <label>:169                                     ; preds = %163
  %170 = sext i32 %148 to i64
  %171 = getelementptr inbounds double, double* %45, i64 %170
  %172 = load double, double* %171, align 8, !tbaa !32
  %173 = fcmp olt double %172, %90
  br i1 %173, label %206, label %.thread

.thread:                                          ; preds = %..thread_crit_edge4, %..thread_crit_edge, %169, %163, %162, %145, %143
  %.pre-phi8 = phi i64 [ %.pre7, %..thread_crit_edge4 ], [ undef, %..thread_crit_edge ], [ %140, %169 ], [ %140, %163 ], [ %140, %162 ], [ %140, %145 ], [ %140, %143 ]
  %174 = mul nsw i32 %132, 3
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %45, i64 %175
  %177 = load double, double* %176, align 8, !tbaa !32
  %178 = fsub double %90, %177
  %179 = add nsw i32 %174, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %45, i64 %180
  %182 = load double, double* %181, align 8, !tbaa !32
  %183 = fsub double %94, %182
  %184 = add nsw i32 %174, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %45, i64 %185
  %187 = load double, double* %186, align 8, !tbaa !32
  %188 = fsub double %98, %187
  %189 = getelementptr inbounds i32, i32* %47, i64 %.pre-phi8
  %190 = load i32, i32* %189, align 4, !tbaa !1
  %191 = fmul double %178, %178
  %192 = fmul double %183, %183
  %193 = fadd double %191, %192
  %194 = fmul double %188, %188
  %195 = fadd double %193, %194
  %196 = add nsw i32 %190, %106
  %197 = sext i32 %196 to i64
  %198 = load double*, double** %66, align 8, !tbaa !169
  %199 = getelementptr inbounds double, double* %198, i64 %197
  %200 = load double, double* %199, align 8, !tbaa !32
  %201 = fcmp ugt double %195, %200
  br i1 %201, label %206, label %202

; <label>:202                                     ; preds = %.thread
  %203 = add nsw i32 %n.119, 1
  %204 = sext i32 %n.119 to i64
  %205 = getelementptr inbounds i32, i32* %86, i64 %204
  store i32 %132, i32* %205, align 4, !tbaa !1
  %.pre2 = load i32, i32* %126, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %202, %.thread, %169, %156, %147, %144, %137, %129
  %207 = phi i32 [ %130, %137 ], [ %130, %169 ], [ %130, %156 ], [ %130, %147 ], [ %130, %144 ], [ %130, %129 ], [ %.pre2, %202 ], [ %130, %.thread ]
  %n.3 = phi i32 [ %n.119, %137 ], [ %n.119, %169 ], [ %n.119, %156 ], [ %n.119, %147 ], [ %n.119, %144 ], [ %n.119, %129 ], [ %203, %202 ], [ %n.119, %.thread ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %indvars.iv.next35, %208
  br i1 %209, label %129, label %.loopexit.loopexit

; <label>:210                                     ; preds = %254, %.lr.ph
  %211 = phi i32 [ %123, %.lr.ph ], [ %255, %254 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %254 ]
  %n.417 = phi i32 [ %n.023, %.lr.ph ], [ %n.6, %254 ]
  %212 = getelementptr inbounds i32, i32* %118, i64 %indvars.iv
  %213 = load i32, i32* %212, align 4, !tbaa !1
  %214 = load i32, i32* %65, align 4, !tbaa !40
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %._crit_edge3, label %216

._crit_edge3:                                     ; preds = %210
  %.pre9 = sext i32 %213 to i64
  br label %221

; <label>:216                                     ; preds = %210
  %217 = load i32, i32* %67, align 8, !tbaa !34
  %218 = icmp eq i32 %217, 0
  %219 = sext i32 %213 to i64
  %220 = icmp slt i64 %219, %indvars.iv38
  %or.cond11 = and i1 %220, %218
  br i1 %or.cond11, label %254, label %221

; <label>:221                                     ; preds = %._crit_edge3, %216
  %.pre-phi10 = phi i64 [ %.pre9, %._crit_edge3 ], [ %219, %216 ]
  %222 = mul nsw i32 %213, 3
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %45, i64 %223
  %225 = load double, double* %224, align 8, !tbaa !32
  %226 = fsub double %90, %225
  %227 = add nsw i32 %222, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %45, i64 %228
  %230 = load double, double* %229, align 8, !tbaa !32
  %231 = fsub double %94, %230
  %232 = add nsw i32 %222, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %45, i64 %233
  %235 = load double, double* %234, align 8, !tbaa !32
  %236 = fsub double %98, %235
  %237 = getelementptr inbounds i32, i32* %47, i64 %.pre-phi10
  %238 = load i32, i32* %237, align 4, !tbaa !1
  %239 = fmul double %226, %226
  %240 = fmul double %231, %231
  %241 = fadd double %239, %240
  %242 = fmul double %236, %236
  %243 = fadd double %241, %242
  %244 = add nsw i32 %238, %106
  %245 = sext i32 %244 to i64
  %246 = load double*, double** %66, align 8, !tbaa !169
  %247 = getelementptr inbounds double, double* %246, i64 %245
  %248 = load double, double* %247, align 8, !tbaa !32
  %249 = fcmp ugt double %243, %248
  br i1 %249, label %254, label %250

; <label>:250                                     ; preds = %221
  %251 = add nsw i32 %n.417, 1
  %252 = sext i32 %n.417 to i64
  %253 = getelementptr inbounds i32, i32* %86, i64 %252
  store i32 %213, i32* %253, align 4, !tbaa !1
  %.pre1 = load i32, i32* %122, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %250, %221, %216
  %255 = phi i32 [ %211, %216 ], [ %.pre1, %250 ], [ %211, %221 ]
  %n.6 = phi i32 [ %n.417, %216 ], [ %251, %250 ], [ %n.417, %221 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %indvars.iv.next, %256
  br i1 %257, label %210, label %.loopexit.loopexit11

.loopexit.loopexit:                               ; preds = %206
  br label %.loopexit

.loopexit.loopexit11:                             ; preds = %254
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit11, %.loopexit.loopexit, %.preheader, %.preheader14
  %n.7 = phi i32 [ %n.023, %.preheader ], [ %n.023, %.preheader14 ], [ %n.3, %.loopexit.loopexit ], [ %n.6, %.loopexit.loopexit11 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %258 = load i32, i32* %59, align 8, !tbaa !172
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %indvars.iv.next37, %259
  br i1 %260, label %111, label %._crit_edge.loopexit

; <label>:261                                     ; preds = %._crit_edge
  store i32 1, i32* %50, align 8, !tbaa !171
  %262 = icmp slt i32 %n.0.lcssa, %new_maxneighs.028
  %new_maxneighs.0.n.0 = select i1 %262, i32 %new_maxneighs.028, i32 %n.0.lcssa
  br label %263

; <label>:263                                     ; preds = %261, %._crit_edge
  %new_maxneighs.1 = phi i32 [ %new_maxneighs.028, %._crit_edge ], [ %new_maxneighs.0.n.0, %261 ]
  %264 = add nsw i32 %.omp.iv.026, 1
  %265 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = icmp slt i64 %indvars.iv38, %266
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  br i1 %267, label %.lr.ph30, label %._crit_edge31.loopexit

._crit_edge31.loopexit:                           ; preds = %263
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %74
  %new_maxneighs.0.lcssa = phi i32 [ %73, %74 ], [ %new_maxneighs.1, %._crit_edge31.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @13, i32 %1)
  br label %268

; <label>:268                                     ; preds = %._crit_edge31, %72
  %new_maxneighs.2 = phi i32 [ %new_maxneighs.0.lcssa, %._crit_edge31 ], [ %73, %72 ]
  call void @llvm.lifetime.end(i64 4, i8* %57) #8
  call void @llvm.lifetime.end(i64 4, i8* %56) #8
  call void @llvm.lifetime.end(i64 4, i8* %55) #8
  call void @llvm.lifetime.end(i64 4, i8* %54) #8
  call void @__kmpc_barrier(%ident_t* nonnull @15, i32 %1)
  %269 = load i32, i32* %50, align 8, !tbaa !171
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %69, label %271

; <label>:271                                     ; preds = %268
  %272 = call i32 @__kmpc_master(%ident_t* nonnull @13, i32 %1)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %285, label %274

; <label>:274                                     ; preds = %271
  %275 = sitofp i32 %new_maxneighs.2 to double
  %276 = fmul double %275, 1.200000e+00
  %277 = fptosi double %276 to i32
  store i32 %277, i32* %51, align 8, !tbaa !115
  %278 = load i8*, i8** %68, align 8, !tbaa !116
  call void @free(i8* %278) #8
  %279 = load i32, i32* %.pre-phi, align 8, !tbaa !166
  %280 = load i32, i32* %51, align 8, !tbaa !115
  %281 = mul nsw i32 %280, %279
  %282 = sext i32 %281 to i64
  %283 = shl nsw i64 %282, 2
  %284 = call noalias i8* @malloc(i64 %283) #8
  store i8* %284, i8** %68, align 8, !tbaa !116
  call void @__kmpc_end_master(%ident_t* nonnull @13, i32 %1)
  br label %285

; <label>:285                                     ; preds = %274, %271
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  br label %thread-pre-split

; <label>:286                                     ; preds = %69
  ret void
}

; Function Attrs: uwtable
define void @_ZN8Neighbor8binatomsER4Atomi(%class.Neighbor* nocapture %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, i32 %count) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @13)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb5 = alloca i32, align 4
  %.omp.ub6 = alloca i32, align 4
  %.omp.stride7 = alloca i32, align 4
  %.omp.is_last8 = alloca i32, align 4
  %2 = icmp slt i32 %count, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !88
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !112
  %8 = add nsw i32 %7, %5
  br label %9

; <label>:9                                       ; preds = %3, %0
  %10 = phi i32 [ %8, %3 ], [ %count, %0 ]
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %12 = load double*, double** %11, align 8, !tbaa !80
  %13 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18
  %14 = bitcast %struct.Box* %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 20
  %17 = bitcast double* %16 to i64*
  store i64 %15, i64* %17, align 8, !tbaa !173
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %19 = bitcast double* %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 21
  %22 = bitcast double* %21 to i64*
  store i64 %20, i64* %22, align 8, !tbaa !174
  %23 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %24 = bitcast double* %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 22
  %27 = bitcast double* %26 to i64*
  store i64 %25, i64* %27, align 8, !tbaa !175
  %28 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 40
  store i32 1, i32* %28, align 8, !tbaa !171
  tail call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  %29 = load i32, i32* %28, align 8, !tbaa !171
  %30 = icmp sgt i32 %29, 0
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  br i1 %30, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %9
  %31 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 18
  %32 = bitcast i32* %.omp.lb to i8*
  %33 = bitcast i32* %.omp.ub to i8*
  %34 = bitcast i32* %.omp.stride to i8*
  %35 = bitcast i32* %.omp.is_last to i8*
  %36 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 16
  %37 = add nsw i32 %10, -1
  %38 = icmp sgt i32 %10, 0
  %39 = bitcast i32* %.omp.lb5 to i8*
  %40 = bitcast i32* %.omp.ub6 to i8*
  %41 = bitcast i32* %.omp.stride7 to i8*
  %42 = bitcast i32* %.omp.is_last8 to i8*
  %43 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 19
  %44 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 17
  %45 = bitcast i32** %44 to i8**
  br label %46

; <label>:46                                      ; preds = %.backedge, %.lr.ph16
  store i32 0, i32* %28, align 8, !tbaa !171
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  %47 = load i32, i32* %31, align 8, !tbaa !176
  %48 = add nsw i32 %47, -1
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %63

; <label>:50                                      ; preds = %46
  call void @llvm.lifetime.start(i64 4, i8* %32) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %33) #8
  store i32 %48, i32* %.omp.ub, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %34) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %35) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @13, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %51 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %52 = icmp sgt i32 %51, %48
  %53 = select i1 %52, i32 %48, i32 %51
  store i32 %53, i32* %.omp.ub, align 4, !tbaa !1
  %54 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %55 = icmp sgt i32 %54, %53
  br i1 %55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %50
  %56 = load i32*, i32** %36, align 8
  %57 = sext i32 %54 to i64
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %58 ], [ %57, %.lr.ph ]
  %59 = getelementptr inbounds i32, i32* %56, i64 %indvars.iv
  store i32 0, i32* %59, align 4, !tbaa !1
  %60 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %indvars.iv, %61
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %62, label %58, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %50
  call void @__kmpc_for_static_fini(%ident_t* nonnull @13, i32 %1)
  br label %63

; <label>:63                                      ; preds = %._crit_edge, %46
  call void @llvm.lifetime.end(i64 4, i8* %35) #8
  call void @llvm.lifetime.end(i64 4, i8* %34) #8
  call void @llvm.lifetime.end(i64 4, i8* %33) #8
  call void @llvm.lifetime.end(i64 4, i8* %32) #8
  call void @__kmpc_barrier(%ident_t* nonnull @15, i32 %1)
  br i1 %38, label %64, label %106

; <label>:64                                      ; preds = %63
  call void @llvm.lifetime.start(i64 4, i8* %39) #8
  store i32 0, i32* %.omp.lb5, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %40) #8
  store i32 %37, i32* %.omp.ub6, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %41) #8
  store i32 1, i32* %.omp.stride7, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %42) #8
  store i32 0, i32* %.omp.is_last8, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @13, i32 %1, i32 34, i32* nonnull %.omp.is_last8, i32* nonnull %.omp.lb5, i32* nonnull %.omp.ub6, i32* nonnull %.omp.stride7, i32 1, i32 1)
  %65 = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  %66 = icmp sgt i32 %65, %37
  %67 = select i1 %66, i32 %37, i32 %65
  store i32 %67, i32* %.omp.ub6, align 4, !tbaa !1
  %68 = load i32, i32* %.omp.lb5, align 4, !tbaa !1
  %69 = icmp sgt i32 %68, %67
  br i1 %69, label %._crit_edge14, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %64
  %70 = sext i32 %68 to i64
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %101, %.lr.ph13.preheader
  %71 = phi i32 [ %67, %.lr.ph13.preheader ], [ %102, %101 ]
  %indvars.iv18 = phi i64 [ %70, %.lr.ph13.preheader ], [ %indvars.iv.next19, %101 ]
  %.omp.iv2.011 = phi i32 [ %68, %.lr.ph13.preheader ], [ %103, %101 ]
  %72 = mul nsw i32 %.omp.iv2.011, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %12, i64 %73
  %75 = load double, double* %74, align 8, !tbaa !32
  %76 = add nsw i32 %72, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %12, i64 %77
  %79 = load double, double* %78, align 8, !tbaa !32
  %80 = add nsw i32 %72, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %12, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !32
  %84 = call i32 @_ZN8Neighbor9coord2binEddd(%class.Neighbor* nonnull %this, double %75, double %79, double %83)
  %85 = sext i32 %84 to i64
  %86 = load i32*, i32** %36, align 8, !tbaa !101
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  %88 = load i32, i32* %87, align 4, !tbaa !1
  %89 = load i32, i32* %43, align 4, !tbaa !167
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

; <label>:91                                      ; preds = %.lr.ph13
  %92 = atomicrmw add i32* %87, i32 1 seq_cst
  %93 = load i32, i32* %43, align 4, !tbaa !167
  %94 = mul nsw i32 %93, %84
  %95 = add nsw i32 %94, %92
  %96 = sext i32 %95 to i64
  %97 = load i32*, i32** %44, align 8, !tbaa !103
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  %99 = trunc i64 %indvars.iv18 to i32
  store i32 %99, i32* %98, align 4, !tbaa !1
  %.pre = load i32, i32* %.omp.ub6, align 4, !tbaa !1
  br label %101

; <label>:100                                     ; preds = %.lr.ph13
  store i32 1, i32* %28, align 8, !tbaa !171
  br label %101

; <label>:101                                     ; preds = %100, %91
  %102 = phi i32 [ %71, %100 ], [ %.pre, %91 ]
  %103 = add nsw i32 %.omp.iv2.011, 1
  %104 = sext i32 %102 to i64
  %105 = icmp slt i64 %indvars.iv18, %104
  %indvars.iv.next19 = add i64 %indvars.iv18, 1
  br i1 %105, label %.lr.ph13, label %._crit_edge14.loopexit

._crit_edge14.loopexit:                           ; preds = %101
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %._crit_edge14.loopexit, %64
  call void @__kmpc_for_static_fini(%ident_t* nonnull @13, i32 %1)
  br label %106

; <label>:106                                     ; preds = %._crit_edge14, %63
  call void @llvm.lifetime.end(i64 4, i8* %42) #8
  call void @llvm.lifetime.end(i64 4, i8* %41) #8
  call void @llvm.lifetime.end(i64 4, i8* %40) #8
  call void @llvm.lifetime.end(i64 4, i8* %39) #8
  call void @__kmpc_barrier(%ident_t* nonnull @15, i32 %1)
  %107 = call i32 @__kmpc_master(%ident_t* nonnull @13, i32 %1)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %.backedge, label %109

; <label>:109                                     ; preds = %106
  %110 = load i32, i32* %28, align 8, !tbaa !171
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112

; <label>:112                                     ; preds = %109
  %113 = load i8*, i8** %45, align 8, !tbaa !103
  call void @free(i8* %113) #8
  %114 = load i32, i32* %43, align 4, !tbaa !167
  %115 = shl nsw i32 %114, 1
  store i32 %115, i32* %43, align 4, !tbaa !167
  %116 = load i32, i32* %31, align 8, !tbaa !176
  %117 = mul nsw i32 %116, %115
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 2
  %120 = call noalias i8* @malloc(i64 %119) #8
  store i8* %120, i8** %45, align 8, !tbaa !103
  br label %121

; <label>:121                                     ; preds = %112, %109
  call void @__kmpc_end_master(%ident_t* nonnull @13, i32 %1)
  br label %.backedge

.backedge:                                        ; preds = %121, %106
  %122 = load i32, i32* %28, align 8, !tbaa !171
  %123 = icmp sgt i32 %122, 0
  call void @__kmpc_barrier(%ident_t* nonnull @14, i32 %1)
  br i1 %123, label %46, label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %.backedge
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %9
  ret void
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr i32 @_ZN8Neighbor9coord2binEddd(%class.Neighbor* nocapture readonly %this, double %x, double %y, double %z) #17 comdat align 2 {
  %1 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 20
  %2 = load double, double* %1, align 8, !tbaa !173
  %3 = fcmp ugt double %2, %x
  br i1 %3, label %16, label %4

; <label>:4                                       ; preds = %0
  %5 = fsub double %x, %2
  %6 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 37
  %7 = load double, double* %6, align 8, !tbaa !177
  %8 = fmul double %5, %7
  %9 = fptosi double %8 to i32
  %10 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 1
  %11 = load i32, i32* %10, align 4, !tbaa !46
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 31
  %14 = load i32, i32* %13, align 4, !tbaa !178
  %15 = sub i32 %12, %14
  br label %27

; <label>:16                                      ; preds = %0
  %17 = fcmp ult double %x, 0.000000e+00
  %18 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 37
  %19 = load double, double* %18, align 8, !tbaa !177
  %20 = fmul double %19, %x
  %21 = fptosi double %20 to i32
  %22 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 31
  %23 = load i32, i32* %22, align 4, !tbaa !178
  %24 = sub nsw i32 %21, %23
  br i1 %17, label %25, label %27

; <label>:25                                      ; preds = %16
  %26 = add nsw i32 %24, -1
  br label %27

; <label>:27                                      ; preds = %25, %16, %4
  %ix.0 = phi i32 [ %15, %4 ], [ %26, %25 ], [ %24, %16 ]
  %28 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 21
  %29 = load double, double* %28, align 8, !tbaa !174
  %30 = fcmp ugt double %29, %y
  br i1 %30, label %47, label %31

; <label>:31                                      ; preds = %27
  %32 = fsub double %y, %29
  %33 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 38
  %34 = load double, double* %33, align 8, !tbaa !179
  %35 = fmul double %32, %34
  %36 = fptosi double %35 to i32
  %37 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 2
  %38 = load i32, i32* %37, align 8, !tbaa !47
  %39 = add nsw i32 %36, %38
  %40 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 32
  %41 = bitcast i32* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %39, %43
  %45 = lshr i64 %42, 32
  %46 = trunc i64 %45 to i32
  br label %62

; <label>:47                                      ; preds = %27
  %48 = fcmp ult double %y, 0.000000e+00
  %49 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 38
  %50 = load double, double* %49, align 8, !tbaa !179
  %51 = fmul double %50, %y
  %52 = fptosi double %51 to i32
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 32
  %54 = bitcast i32* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %52, %56
  %58 = lshr i64 %55, 32
  %59 = trunc i64 %58 to i32
  br i1 %48, label %60, label %62

; <label>:60                                      ; preds = %47
  %61 = add nsw i32 %57, -1
  br label %62

; <label>:62                                      ; preds = %60, %47, %31
  %63 = phi i32 [ %46, %31 ], [ %59, %60 ], [ %59, %47 ]
  %64 = phi i32 [ %46, %31 ], [ %59, %60 ], [ %59, %47 ]
  %iy.0 = phi i32 [ %44, %31 ], [ %61, %60 ], [ %57, %47 ]
  %65 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 22
  %66 = load double, double* %65, align 8, !tbaa !175
  %67 = fcmp ugt double %66, %z
  br i1 %67, label %79, label %68

; <label>:68                                      ; preds = %62
  %69 = fsub double %z, %66
  %70 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 39
  %71 = load double, double* %70, align 8, !tbaa !180
  %72 = fmul double %69, %71
  %73 = fptosi double %72 to i32
  %74 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 3
  %75 = load i32, i32* %74, align 4, !tbaa !48
  %76 = add nsw i32 %73, %75
  %77 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 33
  %78 = sub i32 %76, %64
  br label %89

; <label>:79                                      ; preds = %62
  %80 = fcmp ult double %z, 0.000000e+00
  %81 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 39
  %82 = load double, double* %81, align 8, !tbaa !180
  %83 = fmul double %82, %z
  %84 = fptosi double %83 to i32
  %85 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 33
  %86 = sub nsw i32 %84, %63
  br i1 %80, label %87, label %89

; <label>:87                                      ; preds = %79
  %88 = add nsw i32 %86, -1
  br label %89

; <label>:89                                      ; preds = %87, %79, %68
  %iz.0 = phi i32 [ %78, %68 ], [ %88, %87 ], [ %86, %79 ]
  %90 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 29
  %91 = load i32, i32* %90, align 4, !tbaa !181
  %92 = mul nsw i32 %91, %iz.0
  %93 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 28
  %94 = load i32, i32* %93, align 8, !tbaa !182
  %95 = add i32 %92, %iy.0
  %96 = mul i32 %95, %94
  %97 = add i32 %ix.0, 1
  %98 = add i32 %97, %96
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define i32 @_ZN8Neighbor5setupER4Atom(%class.Neighbor* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom) #11 align 2 {
  %1 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 15
  %2 = load %class.ThreadData*, %class.ThreadData** %1, align 8, !tbaa !27
  %3 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %2, i64 0, i32 3
  %4 = load i32, i32* %3, align 4, !tbaa !17
  %5 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 24
  %6 = load i32, i32* %5, align 4, !tbaa !165
  %7 = mul nsw i32 %6, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %.._crit_edge25_crit_edge, label %.lr.ph24

.._crit_edge25_crit_edge:                         ; preds = %0
  %.pre5 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 4
  br label %._crit_edge25

.lr.ph24:                                         ; preds = %0
  %9 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 4
  %10 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 5
  %11 = load double*, double** %10, align 8
  %12 = zext i32 %7 to i64
  br label %149

._crit_edge25.loopexit:                           ; preds = %149
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit, %.._crit_edge25_crit_edge
  %.pre-phi6 = phi double* [ %.pre5, %.._crit_edge25_crit_edge ], [ %9, %._crit_edge25.loopexit ]
  %13 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18
  %14 = bitcast %struct.Box* %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 20
  %17 = bitcast double* %16 to i64*
  store i64 %15, i64* %17, align 8, !tbaa !173
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %19 = bitcast double* %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 21
  %22 = bitcast double* %21 to i64*
  store i64 %20, i64* %22, align 8, !tbaa !174
  %23 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %24 = bitcast double* %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 22
  %27 = bitcast double* %26 to i64*
  store i64 %25, i64* %27, align 8, !tbaa !175
  %28 = bitcast i64 %15 to double
  %29 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 1
  %30 = load i32, i32* %29, align 4, !tbaa !46
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %28, %31
  %33 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 34
  store double %32, double* %33, align 8, !tbaa !183
  %34 = bitcast i64 %20 to double
  %35 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 2
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %34, %39
  %41 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 35
  store double %40, double* %41, align 8, !tbaa !184
  %42 = bitcast i64 %25 to double
  %43 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 3
  %44 = lshr i64 %37, 32
  %45 = trunc i64 %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %42, %46
  %48 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 36
  store double %47, double* %48, align 8, !tbaa !185
  %49 = fdiv double 1.000000e+00, %32
  %50 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 37
  store double %49, double* %50, align 8, !tbaa !177
  %51 = fdiv double 1.000000e+00, %40
  %52 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 38
  store double %51, double* %52, align 8, !tbaa !179
  %53 = fdiv double 1.000000e+00, %47
  %54 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 39
  store double %53, double* %54, align 8, !tbaa !180
  %55 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %56 = load double, double* %55, align 8, !tbaa !90
  %57 = load double, double* %.pre-phi6, align 8, !tbaa !56
  %58 = fsub double %56, %57
  %59 = fmul double %28, 1.000000e-06
  %60 = fsub double %58, %59
  %61 = fmul double %49, %60
  %62 = fptosi double %61 to i32
  %63 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 31
  %64 = fcmp olt double %60, 0.000000e+00
  %65 = sext i1 %64 to i32
  %storemerge8 = add nsw i32 %62, %65
  store i32 %storemerge8, i32* %63, align 4, !tbaa !178
  %66 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %67 = load double, double* %66, align 8, !tbaa !89
  %68 = fadd double %67, %57
  %69 = fadd double %68, %59
  %70 = fmul double %49, %69
  %71 = fptosi double %70 to i32
  %72 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %73 = load double, double* %72, align 8, !tbaa !92
  %74 = fsub double %73, %57
  %75 = fmul double %34, 1.000000e-06
  %76 = fsub double %74, %75
  %77 = fmul double %51, %76
  %78 = fptosi double %77 to i32
  %79 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 32
  %80 = fcmp olt double %76, 0.000000e+00
  %81 = sext i1 %80 to i32
  %storemerge7 = add nsw i32 %78, %81
  store i32 %storemerge7, i32* %79, align 8, !tbaa !186
  %82 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  %83 = load double, double* %82, align 8, !tbaa !91
  %84 = fadd double %83, %57
  %85 = fadd double %84, %75
  %86 = fmul double %51, %85
  %87 = fptosi double %86 to i32
  %88 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %89 = load double, double* %88, align 8, !tbaa !94
  %90 = fsub double %89, %57
  %91 = fmul double %42, 1.000000e-06
  %92 = fsub double %90, %91
  %93 = fmul double %53, %92
  %94 = fptosi double %93 to i32
  %95 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 33
  %96 = fcmp olt double %92, 0.000000e+00
  %97 = sext i1 %96 to i32
  %storemerge = add nsw i32 %94, %97
  store i32 %storemerge, i32* %95, align 4, !tbaa !187
  %98 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  %99 = load double, double* %98, align 8, !tbaa !93
  %100 = fadd double %99, %57
  %101 = fadd double %100, %91
  %102 = fmul double %53, %101
  %103 = fptosi double %102 to i32
  %104 = add nsw i32 %storemerge8, -1
  store i32 %104, i32* %63, align 4, !tbaa !178
  %.neg = sub i32 1, %storemerge8
  %105 = add i32 %71, 2
  %106 = add i32 %105, %.neg
  %107 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 28
  store i32 %106, i32* %107, align 8, !tbaa !182
  %108 = add nsw i32 %storemerge7, -1
  store i32 %108, i32* %79, align 8, !tbaa !186
  %.neg9 = sub i32 1, %storemerge7
  %109 = add i32 %87, 2
  %110 = add i32 %109, %.neg9
  %111 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 29
  store i32 %110, i32* %111, align 4, !tbaa !181
  %112 = add nsw i32 %storemerge, -1
  store i32 %112, i32* %95, align 4, !tbaa !187
  %.neg10 = sub i32 1, %storemerge
  %113 = add i32 %103, 2
  %114 = add i32 %113, %.neg10
  %115 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 30
  store i32 %114, i32* %115, align 8, !tbaa !188
  %116 = fmul double %57, %49
  %117 = fptosi double %116 to i32
  %118 = sitofp i32 %117 to double
  %119 = load double, double* %33, align 8, !tbaa !183
  %120 = fmul double %119, %118
  %121 = fmul double %57, 9.990000e-01
  %122 = fcmp olt double %120, %121
  %123 = zext i1 %122 to i32
  %nextx.0 = add nsw i32 %123, %117
  %124 = fmul double %57, %51
  %125 = fptosi double %124 to i32
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %41, align 8, !tbaa !184
  %128 = fmul double %127, %126
  %129 = fcmp olt double %128, %121
  %130 = zext i1 %129 to i32
  %nexty.0 = add nsw i32 %130, %125
  %131 = fmul double %57, %53
  %132 = fptosi double %131 to i32
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %48, align 8, !tbaa !185
  %135 = fmul double %134, %133
  %136 = fcmp olt double %135, %121
  %137 = zext i1 %136 to i32
  %nextz.0 = add nsw i32 %137, %132
  %138 = shl nsw i32 %nextz.0, 1
  %139 = or i32 %138, 1
  %140 = shl nsw i32 %nexty.0, 1
  %141 = or i32 %140, 1
  %142 = shl nsw i32 %nextx.0, 1
  %143 = or i32 %142, 1
  %144 = mul i32 %141, %143
  %145 = mul i32 %144, %139
  %146 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 27
  %147 = load i32*, i32** %146, align 8, !tbaa !168
  %148 = icmp eq i32* %147, null
  br i1 %148, label %156, label %154

; <label>:149                                     ; preds = %149, %.lr.ph24
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %149 ]
  %150 = load double, double* %9, align 8, !tbaa !56
  %151 = fmul double %150, %150
  %152 = getelementptr inbounds double, double* %11, i64 %indvars.iv
  store double %151, double* %152, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %153 = icmp slt i64 %indvars.iv.next, %12
  br i1 %153, label %149, label %._crit_edge25.loopexit

; <label>:154                                     ; preds = %._crit_edge25
  %155 = bitcast i32* %147 to i8*
  tail call void @free(i8* %155) #8
  br label %156

; <label>:156                                     ; preds = %154, %._crit_edge25
  %157 = sext i32 %145 to i64
  %158 = shl nsw i64 %157, 2
  %159 = tail call noalias i8* @malloc(i64 %158) #8
  %160 = bitcast i32** %146 to i8**
  store i8* %159, i8** %160, align 8, !tbaa !168
  %161 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 25
  store i32 0, i32* %161, align 8, !tbaa !172
  %162 = sub nsw i32 0, %nextz.0
  %163 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 11
  %164 = load i32, i32* %163, align 4, !tbaa !40
  %165 = icmp eq i32 %164, 0
  %166 = ptrtoint i8* %159 to i64
  %167 = inttoptr i64 %166 to i32*
  br i1 %165, label %.preheader, label %168

; <label>:168                                     ; preds = %156
  %169 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 12
  %170 = load i32, i32* %169, align 8, !tbaa !34
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %.preheader, label %172

; <label>:172                                     ; preds = %168
  store i32 1, i32* %161, align 8, !tbaa !172
  store i32 0, i32* %167, align 4, !tbaa !1
  br label %.preheader

.preheader:                                       ; preds = %172, %168, %156
  %k.0.ph = phi i32 [ %162, %156 ], [ %162, %168 ], [ 0, %172 ]
  %173 = icmp sgt i32 %k.0.ph, %nextz.0
  br i1 %173, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader
  %174 = sub nsw i32 0, %nexty.0
  %175 = icmp slt i32 %nexty.0, %174
  %176 = sub nsw i32 0, %nextx.0
  %177 = icmp slt i32 %nextx.0, %176
  %178 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 12
  %179 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 5
  br label %180

; <label>:180                                     ; preds = %._crit_edge17, %.lr.ph20
  %k.018 = phi i32 [ %k.0.ph, %.lr.ph20 ], [ %214, %._crit_edge17 ]
  br i1 %175, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %180
  %181 = icmp sgt i32 %k.018, 0
  br label %182

; <label>:182                                     ; preds = %._crit_edge, %.lr.ph16
  %j.013 = phi i32 [ %174, %.lr.ph16 ], [ %212, %._crit_edge ]
  br i1 %177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %182
  %183 = icmp sgt i32 %j.013, 0
  %184 = icmp eq i32 %j.013, 0
  br label %185

; <label>:185                                     ; preds = %209, %.lr.ph
  %i.011 = phi i32 [ %176, %.lr.ph ], [ %210, %209 ]
  %186 = load i32, i32* %178, align 8, !tbaa !34
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

; <label>:188                                     ; preds = %185
  %189 = load i32, i32* %163, align 4, !tbaa !40
  %190 = icmp eq i32 %189, 0
  %or.cond = or i1 %181, %190
  %or.cond4 = or i1 %183, %or.cond
  %191 = icmp sgt i32 %i.011, 0
  %or.cond6 = and i1 %184, %191
  %or.cond26 = or i1 %or.cond4, %or.cond6
  br i1 %or.cond26, label %192, label %209

; <label>:192                                     ; preds = %188, %185
  %193 = tail call double @_ZN8Neighbor7bindistEiii(%class.Neighbor* nonnull %this, i32 %i.011, i32 %j.013, i32 %k.018)
  %194 = load double*, double** %179, align 8, !tbaa !169
  %195 = load double, double* %194, align 8, !tbaa !32
  %196 = fcmp olt double %193, %195
  br i1 %196, label %197, label %209

; <label>:197                                     ; preds = %192
  %198 = load i32, i32* %111, align 4, !tbaa !181
  %199 = mul nsw i32 %198, %k.018
  %200 = load i32, i32* %107, align 8, !tbaa !182
  %201 = add i32 %199, %j.013
  %202 = mul i32 %201, %200
  %203 = add nsw i32 %202, %i.011
  %204 = load i32, i32* %161, align 8, !tbaa !172
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %161, align 8, !tbaa !172
  %206 = sext i32 %204 to i64
  %207 = load i32*, i32** %146, align 8, !tbaa !168
  %208 = getelementptr inbounds i32, i32* %207, i64 %206
  store i32 %203, i32* %208, align 4, !tbaa !1
  br label %209

; <label>:209                                     ; preds = %197, %192, %188
  %210 = add nsw i32 %i.011, 1
  %211 = icmp slt i32 %i.011, %nextx.0
  br i1 %211, label %185, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %209
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %182
  %212 = add nsw i32 %j.013, 1
  %213 = icmp slt i32 %j.013, %nexty.0
  br i1 %213, label %182, label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %180
  %214 = add nsw i32 %k.018, 1
  %215 = icmp slt i32 %k.018, %nextz.0
  br i1 %215, label %180, label %._crit_edge21.loopexit

._crit_edge21.loopexit:                           ; preds = %._crit_edge17
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %.preheader
  %216 = bitcast i32* %107 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = lshr i64 %217, 32
  %220 = trunc i64 %219 to i32
  %221 = mul nsw i32 %220, %218
  %222 = load i32, i32* %115, align 8, !tbaa !188
  %223 = mul nsw i32 %221, %222
  %224 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 18
  store i32 %223, i32* %224, align 8, !tbaa !176
  %225 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 16
  %226 = load i32*, i32** %225, align 8, !tbaa !101
  %227 = icmp eq i32* %226, null
  br i1 %227, label %234, label %228

; <label>:228                                     ; preds = %._crit_edge21
  %229 = bitcast i32* %226 to i8*
  tail call void @free(i8* %229) #8
  %230 = bitcast i32* %224 to i64*
  %.pre = load i64, i64* %230, align 8
  %231 = trunc i64 %.pre to i32
  %232 = lshr i64 %.pre, 32
  %233 = trunc i64 %232 to i32
  br label %234

; <label>:234                                     ; preds = %228, %._crit_edge21
  %235 = phi i32 [ %231, %228 ], [ %223, %._crit_edge21 ]
  %236 = mul nsw i32 %235, %4
  %237 = sext i32 %236 to i64
  %238 = shl nsw i64 %237, 2
  %239 = tail call noalias i8* @malloc(i64 %238) #8
  %240 = bitcast i32** %225 to i8**
  store i8* %239, i8** %240, align 8, !tbaa !101
  %241 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 17
  %242 = load i32*, i32** %241, align 8, !tbaa !103
  %243 = icmp eq i32* %242, null
  br i1 %243, label %._crit_edge2, label %244

._crit_edge2:                                     ; preds = %234
  %.phi.trans.insert = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 19
  %.pre3 = load i32, i32* %.phi.trans.insert, align 4, !tbaa !167
  br label %250

; <label>:244                                     ; preds = %234
  %245 = bitcast i32* %242 to i8*
  tail call void @free(i8* %245) #8
  %246 = bitcast i32* %224 to i64*
  %.pre1 = load i64, i64* %246, align 8
  %247 = trunc i64 %.pre1 to i32
  %248 = lshr i64 %.pre1, 32
  %249 = trunc i64 %248 to i32
  %.pre4 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 19
  br label %250

; <label>:250                                     ; preds = %._crit_edge2, %244
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge2 ], [ %.pre4, %244 ]
  %251 = phi i32 [ %249, %244 ], [ %.pre3, %._crit_edge2 ]
  %252 = phi i32 [ %247, %244 ], [ %235, %._crit_edge2 ]
  %253 = mul nsw i32 %252, %4
  %254 = mul nsw i32 %253, %251
  %255 = sext i32 %254 to i64
  %256 = shl nsw i64 %255, 2
  %257 = tail call noalias i8* @malloc(i64 %256) #8
  %258 = bitcast i32** %241 to i8**
  store i8* %257, i8** %258, align 8, !tbaa !103
  ret i32 0
}

; Function Attrs: norecurse nounwind readonly uwtable
define double @_ZN8Neighbor7bindistEiii(%class.Neighbor* nocapture readonly %this, i32 %i, i32 %j, i32 %k) #16 align 2 {
  %1 = icmp sgt i32 %i, 0
  br i1 %1, label %2, label %8

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %i, -1
  %4 = sitofp i32 %3 to double
  %5 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 34
  %6 = load double, double* %5, align 8, !tbaa !183
  %7 = fmul double %4, %6
  br label %16

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32 %i, 0
  br i1 %9, label %16, label %10

; <label>:10                                      ; preds = %8
  %11 = add nsw i32 %i, 1
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 34
  %14 = load double, double* %13, align 8, !tbaa !183
  %15 = fmul double %12, %14
  br label %16

; <label>:16                                      ; preds = %10, %8, %2
  %delx.0 = phi double [ %7, %2 ], [ %15, %10 ], [ 0.000000e+00, %8 ]
  %17 = icmp sgt i32 %j, 0
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %16
  %19 = add nsw i32 %j, -1
  %20 = sitofp i32 %19 to double
  %21 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 35
  %22 = load double, double* %21, align 8, !tbaa !184
  %23 = fmul double %20, %22
  br label %32

; <label>:24                                      ; preds = %16
  %25 = icmp eq i32 %j, 0
  br i1 %25, label %32, label %26

; <label>:26                                      ; preds = %24
  %27 = add nsw i32 %j, 1
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 35
  %30 = load double, double* %29, align 8, !tbaa !184
  %31 = fmul double %28, %30
  br label %32

; <label>:32                                      ; preds = %26, %24, %18
  %dely.0 = phi double [ %23, %18 ], [ %31, %26 ], [ 0.000000e+00, %24 ]
  %33 = icmp sgt i32 %k, 0
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %32
  %35 = add nsw i32 %k, -1
  %36 = sitofp i32 %35 to double
  %37 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 36
  %38 = load double, double* %37, align 8, !tbaa !185
  %39 = fmul double %36, %38
  br label %48

; <label>:40                                      ; preds = %32
  %41 = icmp eq i32 %k, 0
  br i1 %41, label %48, label %42

; <label>:42                                      ; preds = %40
  %43 = add nsw i32 %k, 1
  %44 = sitofp i32 %43 to double
  %45 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %this, i64 0, i32 36
  %46 = load double, double* %45, align 8, !tbaa !185
  %47 = fmul double %44, %46
  br label %48

; <label>:48                                      ; preds = %42, %40, %34
  %delz.0 = phi double [ %39, %34 ], [ %47, %42 ], [ 0.000000e+00, %40 ]
  %49 = fmul double %delx.0, %delx.0
  %50 = fmul double %dely.0, %dely.0
  %51 = fadd double %49, %50
  %52 = fmul double %delz.0, %delz.0
  %53 = fadd double %51, %52
  ret double %53
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN6ThermoC2Ev(%class.Thermo* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN6ThermoD2Ev(%class.Thermo* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN6Thermo5setupEdR9IntegrateR4Atomi(%class.Thermo* nocapture %this, double %rho_in, %class.Integrate* nocapture dereferenceable(88) %integrate, %class.Atom* nocapture readonly dereferenceable(224) %atom, i32 %units) #11 align 2 {
  %1 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 16
  store double %rho_in, double* %1, align 8, !tbaa !189
  %2 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 2
  %3 = load i32, i32* %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 2
  store i32 %3, i32* %4, align 8, !tbaa !190
  %5 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !60
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = sdiv i32 %3, %6
  %10 = add nsw i32 %9, 2
  %phitmp = sext i32 %10 to i64
  br label %11

; <label>:11                                      ; preds = %8, %0
  %maxstat.0 = phi i64 [ %phitmp, %8 ], [ 2, %0 ]
  %12 = shl nsw i64 %maxstat.0, 2
  %13 = tail call noalias i8* @malloc(i64 %12) #8
  %14 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 3
  %15 = bitcast i32** %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !191
  %16 = shl nsw i64 %maxstat.0, 3
  %17 = tail call noalias i8* @malloc(i64 %16) #8
  %18 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 4
  %19 = bitcast double** %18 to i8**
  store i8* %17, i8** %19, align 8, !tbaa !192
  %20 = tail call noalias i8* @malloc(i64 %16) #8
  %21 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 5
  %22 = bitcast double** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !193
  %23 = tail call noalias i8* @malloc(i64 %16) #8
  %24 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 6
  %25 = bitcast double** %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !194
  switch i32 %units, label %72 [
    i32 0, label %26
    i32 1, label %47
  ]

; <label>:26                                      ; preds = %11
  %27 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 13
  store double 1.000000e+00, double* %27, align 8, !tbaa !195
  %28 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %29 = load i32, i32* %28, align 8, !tbaa !64
  %30 = mul nsw i32 %29, 3
  %31 = add nsw i32 %30, -3
  %32 = sitofp i32 %31 to double
  %33 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 14
  store double %32, double* %33, align 8, !tbaa !196
  %34 = fdiv double 1.000000e+00, %32
  %35 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 10
  store double %34, double* %35, align 8, !tbaa !197
  %36 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %37 = load double, double* %36, align 8, !tbaa !61
  %38 = fdiv double 0x3FD5555555555555, %37
  %39 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %40 = load double, double* %39, align 8, !tbaa !62
  %41 = fdiv double %38, %40
  %42 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %43 = load double, double* %42, align 8, !tbaa !63
  %44 = fdiv double %41, %43
  %45 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 12
  store double %44, double* %45, align 8, !tbaa !198
  %46 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 11
  store double 5.000000e-01, double* %46, align 8, !tbaa !199
  br label %72

; <label>:47                                      ; preds = %11
  %48 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 13
  store double 1.036427e-04, double* %48, align 8, !tbaa !195
  %49 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %50 = load i32, i32* %49, align 8, !tbaa !64
  %51 = mul nsw i32 %50, 3
  %52 = add nsw i32 %51, -3
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 8.617343e-05
  %55 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 14
  store double %54, double* %55, align 8, !tbaa !196
  %56 = fdiv double 1.036427e-04, %54
  %57 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 10
  store double %56, double* %57, align 8, !tbaa !197
  %58 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %59 = load double, double* %58, align 8, !tbaa !61
  %60 = fdiv double 0x41204C5555555555, %59
  %61 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %62 = load double, double* %61, align 8, !tbaa !62
  %63 = fdiv double %60, %62
  %64 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %65 = load double, double* %64, align 8, !tbaa !63
  %66 = fdiv double %63, %65
  %67 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 12
  store double %66, double* %67, align 8, !tbaa !198
  %68 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 11
  store double 0x411FFFFFF12F9011, double* %68, align 8, !tbaa !199
  %69 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 1
  %70 = load double, double* %69, align 8, !tbaa !76
  %71 = fdiv double %70, 1.036427e-04
  store double %71, double* %69, align 8, !tbaa !76
  br label %72

; <label>:72                                      ; preds = %47, %26, %11
  ret void
}

; Function Attrs: uwtable
define void @_ZN6Thermo7computeEiR4AtomR8NeighborP5ForceR5TimerR4Comm(%class.Thermo* %this, i32 %iflag, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Force* nocapture readonly %force, %class.Timer* dereferenceable(24) %timer, %class.Comm* nocapture readnone dereferenceable(336) %comm) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @16)
  %2 = icmp sgt i32 %iflag, 0
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !60
  %6 = srem i32 %iflag, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.thread, label %84

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32 %iflag, -1
  br i1 %9, label %10, label %.thread

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !60
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %.thread

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !190
  %17 = srem i32 %16, %12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %84, label %.thread

.thread:                                          ; preds = %14, %10, %8, %3
  %19 = phi i1 [ true, %14 ], [ true, %10 ], [ false, %8 ], [ false, %3 ]
  %20 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 7
  %21 = bitcast double* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 8, i1 false)
  tail call void @__kmpc_barrier(%ident_t* nonnull @17, i32 %1)
  %22 = tail call double @_ZN6Thermo11temperatureER4Atom(%class.Thermo* %this, %class.Atom* nonnull dereferenceable(224) %atom)
  %23 = tail call i32 @__kmpc_master(%ident_t* nonnull @16, i32 %1)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %84, label %25

; <label>:25                                      ; preds = %.thread
  %26 = invoke double @_ZN6Thermo6energyER4AtomR8NeighborP5Force(%class.Thermo* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom, %class.Neighbor* nonnull dereferenceable(240) %neighbor, %class.Force* %force)
          to label %27 unwind label %33

; <label>:27                                      ; preds = %25
  %28 = invoke double @_ZN6Thermo8pressureEdP5Force(%class.Thermo* nonnull %this, double %22, %class.Force* %force)
          to label %29 unwind label %33

; <label>:29                                      ; preds = %27
  br i1 %19, label %30, label %36

; <label>:30                                      ; preds = %29
  %31 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 2
  %32 = load i32, i32* %31, align 8, !tbaa !190
  br label %36

; <label>:33                                      ; preds = %40, %27, %25
  %34 = landingpad { i8*, i32 }
          catch i8* null
  %35 = extractvalue { i8*, i32 } %34, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @16, i32 %1)
  tail call void @__clang_call_terminate(i8* %35) #19
  unreachable

; <label>:36                                      ; preds = %30, %29
  %istep.0 = phi i32 [ %32, %30 ], [ %iflag, %29 ]
  %37 = icmp eq i32 %iflag, 0
  br i1 %37, label %38, label %._crit_edge

._crit_edge:                                      ; preds = %36
  %.phi.trans.insert = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 1
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !200
  br label %40

; <label>:38                                      ; preds = %36
  %39 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 1
  store i32 0, i32* %39, align 4, !tbaa !200
  br label %40

; <label>:40                                      ; preds = %._crit_edge, %38
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge ], [ %39, %38 ]
  %41 = phi i32 [ %.pre, %._crit_edge ], [ 0, %38 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 3
  %44 = load i32*, i32** %43, align 8, !tbaa !191
  %45 = getelementptr inbounds i32, i32* %44, i64 %42
  store i32 %istep.0, i32* %45, align 4, !tbaa !1
  %46 = load i32, i32* %.pre-phi, align 4, !tbaa !200
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 4
  %49 = load double*, double** %48, align 8, !tbaa !192
  %50 = getelementptr inbounds double, double* %49, i64 %47
  store double %22, double* %50, align 8, !tbaa !32
  %51 = load i32, i32* %.pre-phi, align 4, !tbaa !200
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 5
  %54 = load double*, double** %53, align 8, !tbaa !193
  %55 = getelementptr inbounds double, double* %54, i64 %52
  store double %26, double* %55, align 8, !tbaa !32
  %56 = load i32, i32* %.pre-phi, align 4, !tbaa !200
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 6
  %59 = load double*, double** %58, align 8, !tbaa !194
  %60 = getelementptr inbounds double, double* %59, i64 %57
  store double %28, double* %60, align 8, !tbaa !32
  %61 = load i32, i32* %.pre-phi, align 4, !tbaa !200
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %.pre-phi, align 4, !tbaa !200
  %63 = getelementptr inbounds %class.Timer, %class.Timer* %timer, i64 0, i32 0
  %64 = bitcast %class.Timer* %timer to i64**
  %65 = load i64*, i64** %64, align 8, !tbaa !73
  %66 = load i64, i64* %65, align 8, !tbaa !32
  invoke void @_ZN5Timer12barrier_stopEi(%class.Timer* nonnull %timer, i32 0)
          to label %67 unwind label %33

; <label>:67                                      ; preds = %40
  %68 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 15
  %69 = load %class.ThreadData*, %class.ThreadData** %68, align 8, !tbaa !29
  %70 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %69, i64 0, i32 0
  %71 = load i32, i32* %70, align 4, !tbaa !13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

; <label>:73                                      ; preds = %67
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %75 = icmp eq i32 %istep.0, 0
  br i1 %75, label %79, label %76

; <label>:76                                      ; preds = %73
  %77 = load double*, double** %63, align 8, !tbaa !73
  %78 = load double, double* %77, align 8, !tbaa !32
  br label %79

; <label>:79                                      ; preds = %76, %73
  %80 = phi double [ %78, %76 ], [ 0.000000e+00, %73 ]
  %81 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.118, i64 0, i64 0), i32 %istep.0, double %22, double %26, double %28, double %80)
  br label %82

; <label>:82                                      ; preds = %79, %67
  %83 = load i64*, i64** %64, align 8, !tbaa !73
  store i64 %66, i64* %83, align 8, !tbaa !32
  tail call void @__kmpc_end_master(%ident_t* nonnull @16, i32 %1)
  br label %84

; <label>:84                                      ; preds = %82, %.thread, %14, %3
  ret void
}

; Function Attrs: uwtable
define double @_ZN6Thermo11temperatureER4Atom(%class.Thermo* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @16)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %t1 = alloca double, align 8
  %2 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 7
  store double 0.000000e+00, double* %2, align 8, !tbaa !201
  tail call void @__kmpc_barrier(%ident_t* nonnull @17, i32 %1)
  %3 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 5
  %4 = load double*, double** %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !88
  %7 = add nsw i32 %6, -1
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre2 = bitcast i32* %.omp.is_last to i8*
  %.pre3 = bitcast i32* %.omp.stride to i8*
  %.pre5 = bitcast i32* %.omp.ub to i8*
  %.pre7 = bitcast i32* %.omp.lb to i8*
  br label %45

; <label>:9                                       ; preds = %0
  %10 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  %11 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #8
  store i32 %7, i32* %.omp.ub, align 4, !tbaa !1
  %12 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  %13 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @16, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %14 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %15 = icmp sgt i32 %14, %7
  %16 = select i1 %15, i32 %7, i32 %14
  store i32 %16, i32* %.omp.ub, align 4, !tbaa !1
  %17 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %9
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 13
  %20 = load double, double* %19, align 8
  %21 = sext i32 %17 to i64
  %22 = sext i32 %16 to i64
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ %21, %.lr.ph ]
  %t.04 = phi double [ %42, %23 ], [ 0.000000e+00, %.lr.ph ]
  %.omp.iv.03 = phi i32 [ %43, %23 ], [ %17, %.lr.ph ]
  %24 = mul nsw i32 %.omp.iv.03, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %4, i64 %25
  %27 = load double, double* %26, align 8, !tbaa !32
  %28 = add nsw i32 %24, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %4, i64 %29
  %31 = load double, double* %30, align 8, !tbaa !32
  %32 = add nsw i32 %24, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %4, i64 %33
  %35 = load double, double* %34, align 8, !tbaa !32
  %36 = fmul double %27, %27
  %37 = fmul double %31, %31
  %38 = fadd double %36, %37
  %39 = fmul double %35, %35
  %40 = fadd double %38, %39
  %41 = fmul double %20, %40
  %42 = fadd double %t.04, %41
  %43 = add nsw i32 %.omp.iv.03, 1
  %44 = icmp slt i64 %indvars.iv, %22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %44, label %23, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %9
  %t.0.lcssa = phi double [ 0.000000e+00, %9 ], [ %42, %._crit_edge.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @16, i32 %1)
  br label %45

; <label>:45                                      ; preds = %._crit_edge1, %._crit_edge
  %.pre-phi8 = phi i8* [ %.pre7, %._crit_edge1 ], [ %10, %._crit_edge ]
  %.pre-phi6 = phi i8* [ %.pre5, %._crit_edge1 ], [ %11, %._crit_edge ]
  %.pre-phi4 = phi i8* [ %.pre3, %._crit_edge1 ], [ %12, %._crit_edge ]
  %.pre-phi = phi i8* [ %.pre2, %._crit_edge1 ], [ %13, %._crit_edge ]
  %t.1 = phi double [ %t.0.lcssa, %._crit_edge ], [ 0.000000e+00, %._crit_edge1 ]
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi4) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi6) #8
  call void @llvm.lifetime.end(i64 4, i8* %.pre-phi8) #8
  call void @__kmpc_barrier(%ident_t* nonnull @18, i32 %1)
  %46 = bitcast double* %2 to i64*
  %47 = load atomic i64, i64* %46 monotonic, align 8, !tbaa !32
  br label %48

; <label>:48                                      ; preds = %48, %45
  %49 = phi i64 [ %47, %45 ], [ %54, %48 ]
  %50 = bitcast i64 %49 to double
  %51 = fadd double %t.1, %50
  %52 = bitcast double %51 to i64
  %53 = cmpxchg i64* %46, i64 %49, i64 %52 monotonic monotonic
  %54 = extractvalue { i64, i1 } %53, 0
  %55 = extractvalue { i64, i1 } %53, 1
  br i1 %55, label %56, label %48

; <label>:56                                      ; preds = %48
  call void @__kmpc_barrier(%ident_t* nonnull @17, i32 %1)
  %57 = bitcast double* %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #8
  %58 = call i32 @__kmpc_master(%ident_t* nonnull @16, i32 %1)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

; <label>:60                                      ; preds = %56
  %61 = bitcast double* %2 to i8*
  %62 = invoke i32 @MPI_Allreduce(i8* %61, i8* %57, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
          to label %63 unwind label %64

; <label>:63                                      ; preds = %60
  call void @__kmpc_end_master(%ident_t* nonnull @16, i32 %1)
  %.pre = load double, double* %t1, align 8, !tbaa !32
  br label %67

; <label>:64                                      ; preds = %60
  %65 = landingpad { i8*, i32 }
          catch i8* null
  %66 = extractvalue { i8*, i32 } %65, 0
  call void @__kmpc_end_master(%ident_t* nonnull @16, i32 %1)
  call void @__clang_call_terminate(i8* %66) #19
  unreachable

; <label>:67                                      ; preds = %63, %56
  %68 = phi double [ %.pre, %63 ], [ undef, %56 ]
  %69 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 10
  %70 = load double, double* %69, align 8, !tbaa !197
  %71 = fmul double %68, %70
  call void @llvm.lifetime.end(i64 8, i8* %57) #8
  ret double %71
}

; Function Attrs: uwtable
define double @_ZN6Thermo6energyER4AtomR8NeighborP5Force(%class.Thermo* %this, %class.Atom* nocapture readonly dereferenceable(224) %atom, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Force* nocapture readonly %force) #13 align 2 {
  %eng = alloca double, align 8
  %1 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 3
  %2 = load double, double* %1, align 8, !tbaa !110
  %3 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 9
  store double %2, double* %3, align 8, !tbaa !202
  %4 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = fmul double %2, 2.000000e+00
  store double %8, double* %3, align 8, !tbaa !202
  br label %9

; <label>:9                                       ; preds = %7, %0
  %10 = phi double [ %8, %7 ], [ %2, %0 ]
  %11 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 11
  %12 = load double, double* %11, align 8, !tbaa !199
  %13 = fmul double %12, %10
  store double %13, double* %3, align 8, !tbaa !202
  %14 = bitcast double* %eng to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #8
  %15 = bitcast double* %3 to i8*
  %16 = call i32 @MPI_Allreduce(i8* %15, i8* %14, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %17 = load double, double* %eng, align 8, !tbaa !32
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !64
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %17, %20
  call void @llvm.lifetime.end(i64 8, i8* %14) #8
  ret double %21
}

; Function Attrs: uwtable
define double @_ZN6Thermo8pressureEdP5Force(%class.Thermo* %this, double %t, %class.Force* nocapture readonly %force) #13 align 2 {
  %virial = alloca double, align 8
  %1 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 6
  %2 = bitcast double* %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 8
  %5 = bitcast double* %4 to i64*
  store i64 %3, i64* %5, align 8, !tbaa !203
  %6 = bitcast double* %virial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #8
  store double 0.000000e+00, double* %virial, align 8, !tbaa !32
  %7 = bitcast double* %4 to i8*
  %8 = call i32 @MPI_Allreduce(i8* %7, i8* %6, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %9 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 14
  %10 = load double, double* %9, align 8, !tbaa !196
  %11 = fmul double %10, %t
  %12 = load double, double* %virial, align 8, !tbaa !32
  %13 = fadd double %11, %12
  %14 = getelementptr inbounds %class.Thermo, %class.Thermo* %this, i64 0, i32 12
  %15 = load double, double* %14, align 8, !tbaa !198
  %16 = fmul double %13, %15
  call void @llvm.lifetime.end(i64 8, i8* %6) #8
  ret double %16
}

; Function Attrs: nounwind uwtable
define void @_ZN4CommC2Ev(%class.Comm* nocapture %this) unnamed_addr #11 align 2 {
  %1 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  store i32 1000, i32* %1, align 8, !tbaa !204
  %2 = tail call noalias i8* @malloc(i64 16000) #8
  %3 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %4 = bitcast double** %3 to i8**
  store i8* %2, i8** %4, align 8, !tbaa !143
  %5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 23
  store i32 1000, i32* %5, align 4, !tbaa !205
  %6 = tail call noalias i8* @malloc(i64 8000) #8
  %7 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %8 = bitcast double** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !146
  %9 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 30
  store i32 0, i32* %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 31
  store i32 0, i32* %10, align 4, !tbaa !38
  %11 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 41
  store i32 0, i32* %11, align 8, !tbaa !206
  %12 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 42
  store i32 0, i32* %12, align 4, !tbaa !207
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @_ZN4CommD2Ev(%class.Comm* nocapture %this) unnamed_addr #14 align 2 {
  ret void
}

; Function Attrs: uwtable
define i32 @_ZN4Comm5setupEdR4Atom(%class.Comm* %this, double %cutneigh, %class.Atom* nocapture dereferenceable(224) %atom) #13 align 2 {
  %nprocs = alloca i32, align 4
  %periods = alloca [3 x i32], align 4
  %prd = alloca [3 x double], align 16
  %myloc = alloca [3 x i32], align 4
  %cartesian = alloca i32, align 4
  %1 = bitcast i32* %nprocs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = bitcast [3 x i32]* %periods to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2) #8
  %3 = bitcast [3 x double]* %prd to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #8
  %4 = bitcast [3 x i32]* %myloc to i8*
  call void @llvm.lifetime.start(i64 12, i8* %4) #8
  %5 = bitcast i32* %cartesian to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18
  %7 = bitcast %struct.Box* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !61
  %9 = getelementptr inbounds [3 x double], [3 x double]* %prd, i64 0, i64 0
  %10 = bitcast [3 x double]* %prd to i64*
  store i64 %8, i64* %10, align 16, !tbaa !32
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %12 = bitcast double* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !62
  %14 = getelementptr inbounds [3 x double], [3 x double]* %prd, i64 0, i64 1
  %15 = bitcast double* %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !32
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %17 = bitcast double* %16 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !63
  %19 = getelementptr inbounds [3 x double], [3 x double]* %prd, i64 0, i64 2
  %20 = bitcast double* %19 to i64*
  store i64 %18, i64* %20, align 16, !tbaa !32
  %21 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 0
  %22 = tail call i32 @MPI_Comm_rank(i32 1140850688, i32* %21)
  %23 = call i32 @MPI_Comm_size(i32 1140850688, i32* nonnull %nprocs)
  %24 = bitcast i64 %8 to double
  %25 = bitcast i64 %13 to double
  %26 = fmul double %24, %25
  %27 = bitcast i64 %18 to double
  %28 = fmul double %24, %27
  %29 = fmul double %25, %27
  %30 = load i32, i32* %nprocs, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %.._crit_edge43_crit_edge, label %.lr.ph42

.._crit_edge43_crit_edge:                         ; preds = %0
  %.pre2 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 0
  %.pre3 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 1
  %.pre5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 2
  br label %._crit_edge43

.lr.ph42:                                         ; preds = %0
  %32 = fadd double %26, %28
  %33 = fadd double %29, %32
  %34 = fmul double %33, 2.000000e+00
  %35 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 0
  %36 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 1
  %37 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 2
  br label %38

; <label>:38                                      ; preds = %.loopexit10, %.lr.ph42
  %ipx.040 = phi i32 [ 1, %.lr.ph42 ], [ %64, %.loopexit10 ]
  %bestsurf.039 = phi double [ %34, %.lr.ph42 ], [ %bestsurf.3, %.loopexit10 ]
  %39 = srem i32 %30, %ipx.040
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %.loopexit10

; <label>:41                                      ; preds = %38
  %42 = sdiv i32 %30, %ipx.040
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %.loopexit10, label %.lr.ph37

.lr.ph37:                                         ; preds = %41
  %44 = sitofp i32 %ipx.040 to double
  %45 = fdiv double %26, %44
  %46 = fdiv double %28, %44
  br label %47

; <label>:47                                      ; preds = %62, %.lr.ph37
  %ipy.035 = phi i32 [ 1, %.lr.ph37 ], [ %63, %62 ]
  %bestsurf.134 = phi double [ %bestsurf.039, %.lr.ph37 ], [ %bestsurf.2, %62 ]
  %48 = srem i32 %42, %ipy.035
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

; <label>:50                                      ; preds = %47
  %51 = sdiv i32 %42, %ipy.035
  %52 = sitofp i32 %ipy.035 to double
  %53 = fdiv double %45, %52
  %54 = sitofp i32 %51 to double
  %55 = fdiv double %46, %54
  %56 = fadd double %53, %55
  %57 = fdiv double %29, %52
  %58 = fdiv double %57, %54
  %59 = fadd double %58, %56
  %60 = fcmp olt double %59, %bestsurf.134
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %50
  store i32 %ipx.040, i32* %35, align 8, !tbaa !1
  store i32 %ipy.035, i32* %36, align 4, !tbaa !1
  store i32 %51, i32* %37, align 8, !tbaa !1
  br label %62

; <label>:62                                      ; preds = %61, %50, %47
  %bestsurf.2 = phi double [ %59, %61 ], [ %bestsurf.134, %50 ], [ %bestsurf.134, %47 ]
  %63 = add nuw nsw i32 %ipy.035, 1
  %exitcond55 = icmp eq i32 %ipy.035, %42
  br i1 %exitcond55, label %.loopexit10.loopexit, label %47

.loopexit10.loopexit:                             ; preds = %62
  br label %.loopexit10

.loopexit10:                                      ; preds = %.loopexit10.loopexit, %41, %38
  %bestsurf.3 = phi double [ %bestsurf.039, %38 ], [ %bestsurf.039, %41 ], [ %bestsurf.2, %.loopexit10.loopexit ]
  %64 = add nuw nsw i32 %ipx.040, 1
  %65 = icmp slt i32 %ipx.040, %30
  br i1 %65, label %38, label %._crit_edge43.loopexit

._crit_edge43.loopexit:                           ; preds = %.loopexit10
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %.._crit_edge43_crit_edge
  %.pre-phi6 = phi i32* [ %.pre5, %.._crit_edge43_crit_edge ], [ %37, %._crit_edge43.loopexit ]
  %.pre-phi4 = phi i32* [ %.pre3, %.._crit_edge43_crit_edge ], [ %36, %._crit_edge43.loopexit ]
  %.pre-phi = phi i32* [ %.pre2, %.._crit_edge43_crit_edge ], [ %35, %._crit_edge43.loopexit ]
  %66 = bitcast i32* %.pre-phi to i64*
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = lshr i64 %67, 32
  %70 = trunc i64 %69 to i32
  %71 = mul nsw i32 %70, %68
  %72 = load i32, i32* %.pre-phi6, align 8, !tbaa !1
  %73 = mul nsw i32 %71, %72
  %74 = icmp eq i32 %73, %30
  br i1 %74, label %79, label %75

; <label>:75                                      ; preds = %._crit_edge43
  %76 = load i32, i32* %21, align 8, !tbaa !95
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %.loopexit

; <label>:78                                      ; preds = %75
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @str.150, i64 0, i64 0))
  br label %.loopexit

; <label>:79                                      ; preds = %._crit_edge43
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %periods, i64 0, i64 2
  store i32 1, i32* %80, align 4, !tbaa !1
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %periods, i64 0, i64 1
  store i32 1, i32* %81, align 4, !tbaa !1
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %periods, i64 0, i64 0
  store i32 1, i32* %82, align 4, !tbaa !1
  %83 = call i32 @MPI_Cart_create(i32 1140850688, i32 3, i32* %.pre-phi, i32* %82, i32 0, i32* nonnull %cartesian)
  %84 = load i32, i32* %cartesian, align 4, !tbaa !1
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %myloc, i64 0, i64 0
  %86 = call i32 @MPI_Cart_get(i32 %84, i32 3, i32* %.pre-phi, i32* %82, i32* %85)
  %87 = load i32, i32* %cartesian, align 4, !tbaa !1
  %88 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 0, i64 0
  %89 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 0, i64 1
  %90 = call i32 @MPI_Cart_shift(i32 %87, i32 0, i32 1, i32* %88, i32* %89)
  %91 = load i32, i32* %cartesian, align 4, !tbaa !1
  %92 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 1, i64 0
  %93 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 1, i64 1
  %94 = call i32 @MPI_Cart_shift(i32 %91, i32 1, i32 1, i32* %92, i32* %93)
  %95 = load i32, i32* %cartesian, align 4, !tbaa !1
  %96 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 2, i64 0
  %97 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 2, i64 1
  %98 = call i32 @MPI_Cart_shift(i32 %95, i32 2, i32 1, i32* %96, i32* %97)
  %99 = load i32, i32* %85, align 4, !tbaa !1
  %100 = sitofp i32 %99 to double
  %101 = fmul double %100, %24
  %102 = load i32, i32* %.pre-phi, align 8, !tbaa !1
  %103 = sitofp i32 %102 to double
  %104 = fdiv double %101, %103
  %105 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  store double %104, double* %105, align 8, !tbaa !90
  %106 = add nsw i32 %99, 1
  %107 = sitofp i32 %106 to double
  %108 = fmul double %24, %107
  %109 = load i32, i32* %.pre-phi, align 8, !tbaa !1
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  store double %111, double* %112, align 8, !tbaa !89
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %myloc, i64 0, i64 1
  %114 = load i32, i32* %113, align 4, !tbaa !1
  %115 = sitofp i32 %114 to double
  %116 = fmul double %115, %25
  %117 = load i32, i32* %.pre-phi4, align 4, !tbaa !1
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %116, %118
  %120 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  store double %119, double* %120, align 8, !tbaa !92
  %121 = add nsw i32 %114, 1
  %122 = sitofp i32 %121 to double
  %123 = fmul double %25, %122
  %124 = load i32, i32* %.pre-phi4, align 4, !tbaa !1
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %123, %125
  %127 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  store double %126, double* %127, align 8, !tbaa !91
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %myloc, i64 0, i64 2
  %129 = load i32, i32* %128, align 4, !tbaa !1
  %130 = sitofp i32 %129 to double
  %131 = fmul double %130, %27
  %132 = load i32, i32* %.pre-phi6, align 8, !tbaa !1
  %133 = sitofp i32 %132 to double
  %134 = fdiv double %131, %133
  %135 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  store double %134, double* %135, align 8, !tbaa !94
  %136 = add nsw i32 %129, 1
  %137 = sitofp i32 %136 to double
  %138 = fmul double %27, %137
  %139 = load i32, i32* %.pre-phi6, align 8, !tbaa !1
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %138, %140
  %142 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  store double %141, double* %142, align 8, !tbaa !93
  %143 = load i64, i64* %66, align 8
  %144 = trunc i64 %143 to i32
  %145 = sitofp i32 %144 to double
  %146 = fmul double %145, %cutneigh
  %147 = fdiv double %146, %24
  %148 = fadd double %147, 1.000000e+00
  %149 = fptosi double %148 to i32
  %150 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 0
  store i32 %149, i32* %150, align 4, !tbaa !1
  %151 = lshr i64 %143, 32
  %152 = trunc i64 %151 to i32
  %153 = sitofp i32 %152 to double
  %154 = fmul double %153, %cutneigh
  %155 = fdiv double %154, %25
  %156 = fadd double %155, 1.000000e+00
  %157 = fptosi double %156 to i32
  %158 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 1
  store i32 %157, i32* %158, align 4, !tbaa !1
  %159 = bitcast i32* %.pre-phi6 to i64*
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = sitofp i32 %161 to double
  %163 = fmul double %162, %cutneigh
  %164 = fdiv double %163, %27
  %165 = fadd double %164, 1.000000e+00
  %166 = fptosi double %165 to i32
  %167 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 2
  store i32 %166, i32* %167, align 4, !tbaa !1
  %168 = lshr i64 %160, 32
  %169 = trunc i64 %168 to i32
  %170 = add nsw i32 %157, %169
  %171 = add nsw i32 %170, %166
  %172 = shl nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = shl nsw i64 %173, 3
  %175 = call noalias i8* @malloc(i64 %174) #8
  %176 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 27
  %177 = bitcast double** %176 to i8**
  store i8* %175, i8** %177, align 8, !tbaa !208
  %178 = call noalias i8* @malloc(i64 %174) #8
  %179 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 28
  %180 = bitcast double** %179 to i8**
  store i8* %178, i8** %180, align 8, !tbaa !209
  %181 = shl nsw i64 %173, 2
  %182 = call noalias i8* @malloc(i64 %181) #8
  %183 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 2
  %184 = bitcast i32** %183 to i8**
  store i8* %182, i8** %184, align 8, !tbaa !210
  %185 = call noalias i8* @malloc(i64 %181) #8
  %186 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 3
  %187 = bitcast i32** %186 to i8**
  store i8* %185, i8** %187, align 8, !tbaa !211
  %188 = call noalias i8* @malloc(i64 %181) #8
  %189 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 4
  %190 = bitcast i32** %189 to i8**
  store i8* %188, i8** %190, align 8, !tbaa !212
  %191 = call noalias i8* @malloc(i64 %181) #8
  %192 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 5
  %193 = bitcast i32** %192 to i8**
  store i8* %191, i8** %193, align 8, !tbaa !213
  %194 = call noalias i8* @malloc(i64 %181) #8
  %195 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 12
  %196 = bitcast i32** %195 to i8**
  store i8* %194, i8** %196, align 8, !tbaa !145
  %197 = call noalias i8* @malloc(i64 %181) #8
  %198 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 13
  %199 = bitcast i32** %198 to i8**
  store i8* %197, i8** %199, align 8, !tbaa !148
  %200 = call noalias i8* @malloc(i64 %181) #8
  %201 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 14
  %202 = bitcast i32** %201 to i8**
  store i8* %200, i8** %202, align 8, !tbaa !214
  %203 = call noalias i8* @malloc(i64 %181) #8
  %204 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 15
  %205 = bitcast i32** %204 to i8**
  store i8* %203, i8** %205, align 8, !tbaa !215
  %206 = call noalias i8* @malloc(i64 %181) #8
  %207 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 6
  %208 = bitcast i32** %207 to i8**
  store i8* %206, i8** %208, align 8, !tbaa !142
  %209 = call noalias i8* @malloc(i64 %181) #8
  %210 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 7
  %211 = bitcast i32** %210 to i8**
  store i8* %209, i8** %211, align 8, !tbaa !150
  %212 = call noalias i8* @malloc(i64 %181) #8
  %213 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 8
  %214 = bitcast i32** %213 to i8**
  store i8* %212, i8** %214, align 8, !tbaa !149
  %215 = call noalias i8* @malloc(i64 %181) #8
  %216 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 9
  %217 = bitcast i32** %216 to i8**
  store i8* %215, i8** %217, align 8, !tbaa !147
  %218 = call noalias i8* @malloc(i64 %181) #8
  %219 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 10
  %220 = bitcast i32** %219 to i8**
  store i8* %218, i8** %220, align 8, !tbaa !216
  %221 = call noalias i8* @malloc(i64 %181) #8
  %222 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 11
  %223 = bitcast i32** %222 to i8**
  store i8* %221, i8** %223, align 8, !tbaa !217
  br label %.preheader9

.preheader9:                                      ; preds = %._crit_edge30..preheader9_crit_edge, %79
  %224 = phi i32 [ %169, %79 ], [ %.pre, %._crit_edge30..preheader9_crit_edge ]
  %indvars.iv52 = phi i64 [ 0, %79 ], [ %indvars.iv.next53, %._crit_edge30..preheader9_crit_edge ]
  %iswap.032 = phi i32 [ 0, %79 ], [ %iswap.1.lcssa, %._crit_edge30..preheader9_crit_edge ]
  %225 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv52
  %226 = icmp slt i32 %224, 1
  br i1 %226, label %._crit_edge30, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %.preheader9
  %227 = sext i32 %iswap.032 to i64
  %228 = trunc i64 %indvars.iv52 to i32
  br label %.lr.ph29

; <label>:229                                     ; preds = %._crit_edge30
  %230 = call i32 @MPI_Comm_free(i32* nonnull %cartesian)
  %231 = call noalias i8* @malloc(i64 %181) #8
  %232 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 16
  %233 = bitcast i32** %232 to i8**
  store i8* %231, i8** %233, align 8, !tbaa !151
  %234 = call noalias i8* @malloc(i64 %181) #8
  %235 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 18
  %236 = bitcast i32** %235 to i8**
  store i8* %234, i8** %236, align 8, !tbaa !218
  %237 = icmp sgt i32 %171, 0
  %238 = ptrtoint i8* %234 to i64
  %239 = inttoptr i64 %238 to i32*
  br i1 %237, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %229
  br label %255

._crit_edge30.loopexit:                           ; preds = %.lr.ph29
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %.preheader9
  %iswap.1.lcssa = phi i32 [ %iswap.032, %.preheader9 ], [ %252, %._crit_edge30.loopexit ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond54 = icmp eq i64 %indvars.iv.next53, 3
  br i1 %exitcond54, label %229, label %._crit_edge30..preheader9_crit_edge

._crit_edge30..preheader9_crit_edge:              ; preds = %._crit_edge30
  %.phi.trans.insert = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv.next53
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !1
  br label %.preheader9

.lr.ph29:                                         ; preds = %.lr.ph29, %.lr.ph29.preheader
  %indvars.iv50 = phi i64 [ %227, %.lr.ph29.preheader ], [ %indvars.iv.next51, %.lr.ph29 ]
  %i2.028 = phi i32 [ 1, %.lr.ph29.preheader ], [ %251, %.lr.ph29 ]
  %iswap.127 = phi i32 [ %iswap.032, %.lr.ph29.preheader ], [ %252, %.lr.ph29 ]
  %240 = load i32, i32* %cartesian, align 4, !tbaa !1
  %241 = load i32*, i32** %201, align 8, !tbaa !214
  %242 = getelementptr inbounds i32, i32* %241, i64 %indvars.iv50
  %243 = add nsw i64 %indvars.iv50, 1
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = call i32 @MPI_Cart_shift(i32 %240, i32 %228, i32 %i2.028, i32* %242, i32* %244)
  %246 = load i32, i32* %cartesian, align 4, !tbaa !1
  %247 = load i32*, i32** %204, align 8, !tbaa !215
  %248 = getelementptr inbounds i32, i32* %247, i64 %243
  %249 = getelementptr inbounds i32, i32* %247, i64 %indvars.iv50
  %250 = call i32 @MPI_Cart_shift(i32 %246, i32 %228, i32 %i2.028, i32* %248, i32* %249)
  %251 = add nuw nsw i32 %i2.028, 1
  %252 = add nsw i32 %iswap.127, 2
  %253 = load i32, i32* %225, align 4, !tbaa !1
  %254 = icmp slt i32 %i2.028, %253
  %indvars.iv.next51 = add i64 %indvars.iv50, 2
  br i1 %254, label %.lr.ph29, label %._crit_edge30.loopexit

; <label>:255                                     ; preds = %255, %.lr.ph25
  %indvars.iv48 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next49, %255 ]
  %256 = getelementptr inbounds i32, i32* %239, i64 %indvars.iv48
  store i32 1000, i32* %256, align 4, !tbaa !1
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %257 = icmp slt i64 %indvars.iv.next49, %173
  br i1 %257, label %255, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %255
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %229
  %258 = call noalias i8* @malloc(i64 %174) #8
  %259 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 17
  %260 = bitcast i32*** %259 to i8**
  store i8* %258, i8** %260, align 8, !tbaa !144
  %261 = ptrtoint i8* %258 to i64
  %262 = inttoptr i64 %261 to i32**
  br i1 %237, label %.lr.ph21.preheader, label %._crit_edge22

.lr.ph21.preheader:                               ; preds = %._crit_edge26
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21..lr.ph21_crit_edge, %.lr.ph21.preheader
  %263 = phi i32** [ %262, %.lr.ph21.preheader ], [ %.pre1, %.lr.ph21..lr.ph21_crit_edge ]
  %indvars.iv46 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next47, %.lr.ph21..lr.ph21_crit_edge ]
  %264 = call noalias i8* @malloc(i64 4000) #8
  %265 = getelementptr inbounds i32*, i32** %263, i64 %indvars.iv46
  %266 = bitcast i32** %265 to i8**
  store i8* %264, i8** %266, align 8, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %267 = icmp slt i64 %indvars.iv.next47, %173
  br i1 %267, label %.lr.ph21..lr.ph21_crit_edge, label %._crit_edge22.loopexit

.lr.ph21..lr.ph21_crit_edge:                      ; preds = %.lr.ph21
  %.pre1 = load i32**, i32*** %259, align 8, !tbaa !144
  br label %.lr.ph21

._crit_edge22.loopexit:                           ; preds = %.lr.ph21
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge22.loopexit, %._crit_edge26
  %268 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 1
  store i32 0, i32* %268, align 4, !tbaa !141
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %._crit_edge22
  %269 = phi i32 [ 0, %._crit_edge22 ], [ %428, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %._crit_edge22 ], [ %indvars.iv.next, %._crit_edge ]
  %lo.018 = phi double [ undef, %._crit_edge22 ], [ %lo.1.lcssa, %._crit_edge ]
  %hi.017 = phi double [ undef, %._crit_edge22 ], [ %hi.1.lcssa, %._crit_edge ]
  %270 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv
  %271 = load i32, i32* %270, align 4, !tbaa !1
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %273 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 %indvars.iv
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %273, i64 0, i64 0
  %275 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 %indvars.iv, i64 1
  %276 = getelementptr inbounds [3 x i32], [3 x i32]* %myloc, i64 0, i64 %indvars.iv
  %277 = getelementptr inbounds [3 x double], [3 x double]* %prd, i64 0, i64 %indvars.iv
  %278 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 %indvars.iv
  %279 = icmp eq i64 %indvars.iv, 0
  %280 = trunc i64 %indvars.iv to i32
  br label %281

; <label>:281                                     ; preds = %413, %.lr.ph
  %282 = phi i32 [ %269, %.lr.ph ], [ %423, %413 ]
  %lo.113 = phi double [ %lo.018, %.lr.ph ], [ %lo.5, %413 ]
  %hi.112 = phi double [ %hi.017, %.lr.ph ], [ %hi.5, %413 ]
  %ineed.011 = phi i32 [ 0, %.lr.ph ], [ %424, %413 ]
  %283 = sext i32 %282 to i64
  %284 = load i32*, i32** %183, align 8, !tbaa !210
  %285 = getelementptr inbounds i32, i32* %284, i64 %283
  store i32 0, i32* %285, align 4, !tbaa !1
  %286 = load i32, i32* %268, align 4, !tbaa !141
  %287 = sext i32 %286 to i64
  %288 = load i32*, i32** %186, align 8, !tbaa !211
  %289 = getelementptr inbounds i32, i32* %288, i64 %287
  store i32 0, i32* %289, align 4, !tbaa !1
  %290 = load i32, i32* %268, align 4, !tbaa !141
  %291 = sext i32 %290 to i64
  %292 = load i32*, i32** %189, align 8, !tbaa !212
  %293 = getelementptr inbounds i32, i32* %292, i64 %291
  store i32 0, i32* %293, align 4, !tbaa !1
  %294 = load i32, i32* %268, align 4, !tbaa !141
  %295 = sext i32 %294 to i64
  %296 = load i32*, i32** %192, align 8, !tbaa !213
  %297 = getelementptr inbounds i32, i32* %296, i64 %295
  store i32 0, i32* %297, align 4, !tbaa !1
  %298 = and i32 %ineed.011, 1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %356

; <label>:300                                     ; preds = %281
  %301 = load i32, i32* %274, align 8, !tbaa !1
  %302 = load i32, i32* %268, align 4, !tbaa !141
  %303 = sext i32 %302 to i64
  %304 = load i32*, i32** %195, align 8, !tbaa !145
  %305 = getelementptr inbounds i32, i32* %304, i64 %303
  store i32 %301, i32* %305, align 4, !tbaa !1
  %306 = load i32, i32* %275, align 4, !tbaa !1
  %307 = load i32, i32* %268, align 4, !tbaa !141
  %308 = sext i32 %307 to i64
  %309 = load i32*, i32** %198, align 8, !tbaa !148
  %310 = getelementptr inbounds i32, i32* %309, i64 %308
  store i32 %306, i32* %310, align 4, !tbaa !1
  %311 = load i32, i32* %276, align 4, !tbaa !1
  %312 = sdiv i32 %ineed.011, 2
  %313 = add nsw i32 %311, %312
  %314 = sitofp i32 %313 to double
  %315 = load double, double* %277, align 8, !tbaa !32
  %316 = fmul double %315, %314
  %317 = load i32, i32* %278, align 4, !tbaa !1
  %318 = sitofp i32 %317 to double
  %319 = fdiv double %316, %318
  br i1 %279, label %.thread3, label %320

; <label>:320                                     ; preds = %300
  switch i32 %280, label %325 [
    i32 1, label %.thread3
    i32 2, label %322
  ]

.thread3:                                         ; preds = %320, %300
  %.sink.in = phi double* [ %105, %300 ], [ %120, %320 ]
  %.ph = phi i1 [ false, %300 ], [ true, %320 ]
  %.sink = load double, double* %.sink.in, align 8, !tbaa !32
  %321 = fadd double %.sink, %cutneigh
  br label %325

; <label>:322                                     ; preds = %320
  %323 = load double, double* %135, align 8, !tbaa !94
  %324 = fadd double %323, %cutneigh
  br label %325

; <label>:325                                     ; preds = %322, %.thread3, %320
  %326 = phi i1 [ true, %322 ], [ false, %.thread3 ], [ false, %320 ]
  %327 = phi i1 [ false, %322 ], [ %.ph, %.thread3 ], [ false, %320 ]
  %hi.4 = phi double [ %324, %322 ], [ %321, %.thread3 ], [ %hi.112, %320 ]
  %328 = add nsw i32 %313, 1
  %329 = sitofp i32 %328 to double
  %330 = fmul double %329, %315
  %331 = fdiv double %330, %318
  %332 = fcmp olt double %hi.4, %331
  %hi.4. = select i1 %332, double %hi.4, double %331
  %333 = icmp eq i32 %311, 0
  br i1 %333, label %334, label %413

; <label>:334                                     ; preds = %325
  %335 = load i32, i32* %268, align 4, !tbaa !141
  %336 = sext i32 %335 to i64
  %337 = load i32*, i32** %183, align 8, !tbaa !210
  %338 = getelementptr inbounds i32, i32* %337, i64 %336
  store i32 1, i32* %338, align 4, !tbaa !1
  br i1 %279, label %339, label %344

; <label>:339                                     ; preds = %334
  %340 = load i32, i32* %268, align 4, !tbaa !141
  %341 = sext i32 %340 to i64
  %342 = load i32*, i32** %186, align 8, !tbaa !211
  %343 = getelementptr inbounds i32, i32* %342, i64 %341
  store i32 1, i32* %343, align 4, !tbaa !1
  br label %344

; <label>:344                                     ; preds = %339, %334
  br i1 %327, label %345, label %350

; <label>:345                                     ; preds = %344
  %346 = load i32, i32* %268, align 4, !tbaa !141
  %347 = sext i32 %346 to i64
  %348 = load i32*, i32** %189, align 8, !tbaa !212
  %349 = getelementptr inbounds i32, i32* %348, i64 %347
  store i32 1, i32* %349, align 4, !tbaa !1
  br label %350

; <label>:350                                     ; preds = %345, %344
  br i1 %326, label %351, label %413

; <label>:351                                     ; preds = %350
  %352 = load i32, i32* %268, align 4, !tbaa !141
  %353 = sext i32 %352 to i64
  %354 = load i32*, i32** %192, align 8, !tbaa !213
  %355 = getelementptr inbounds i32, i32* %354, i64 %353
  store i32 1, i32* %355, align 4, !tbaa !1
  br label %413

; <label>:356                                     ; preds = %281
  %357 = load i32, i32* %275, align 4, !tbaa !1
  %358 = load i32, i32* %268, align 4, !tbaa !141
  %359 = sext i32 %358 to i64
  %360 = load i32*, i32** %195, align 8, !tbaa !145
  %361 = getelementptr inbounds i32, i32* %360, i64 %359
  store i32 %357, i32* %361, align 4, !tbaa !1
  %362 = load i32, i32* %274, align 8, !tbaa !1
  %363 = load i32, i32* %268, align 4, !tbaa !141
  %364 = sext i32 %363 to i64
  %365 = load i32*, i32** %198, align 8, !tbaa !148
  %366 = getelementptr inbounds i32, i32* %365, i64 %364
  store i32 %362, i32* %366, align 4, !tbaa !1
  %367 = load i32, i32* %276, align 4, !tbaa !1
  %368 = sdiv i32 %ineed.011, 2
  %369 = sub nsw i32 %367, %368
  %370 = add nsw i32 %369, 1
  %371 = sitofp i32 %370 to double
  %372 = load double, double* %277, align 8, !tbaa !32
  %373 = fmul double %372, %371
  %374 = load i32, i32* %278, align 4, !tbaa !1
  %375 = sitofp i32 %374 to double
  %376 = fdiv double %373, %375
  br i1 %279, label %.thread7, label %377

; <label>:377                                     ; preds = %356
  switch i32 %280, label %382 [
    i32 1, label %.thread7
    i32 2, label %379
  ]

.thread7:                                         ; preds = %377, %356
  %.sink8.in = phi double* [ %112, %356 ], [ %127, %377 ]
  %.ph6 = phi i1 [ false, %356 ], [ true, %377 ]
  %.sink8 = load double, double* %.sink8.in, align 8, !tbaa !32
  %378 = fsub double %.sink8, %cutneigh
  br label %382

; <label>:379                                     ; preds = %377
  %380 = load double, double* %142, align 8, !tbaa !93
  %381 = fsub double %380, %cutneigh
  br label %382

; <label>:382                                     ; preds = %379, %.thread7, %377
  %383 = phi i1 [ true, %379 ], [ false, %.thread7 ], [ false, %377 ]
  %384 = phi i1 [ false, %379 ], [ %.ph6, %.thread7 ], [ false, %377 ]
  %lo.4 = phi double [ %381, %379 ], [ %378, %.thread7 ], [ %lo.113, %377 ]
  %385 = sitofp i32 %369 to double
  %386 = fmul double %385, %372
  %387 = fdiv double %386, %375
  %388 = fcmp ogt double %lo.4, %387
  %lo.4. = select i1 %388, double %lo.4, double %387
  %389 = add nsw i32 %374, -1
  %390 = icmp eq i32 %367, %389
  br i1 %390, label %391, label %413

; <label>:391                                     ; preds = %382
  %392 = load i32, i32* %268, align 4, !tbaa !141
  %393 = sext i32 %392 to i64
  %394 = load i32*, i32** %183, align 8, !tbaa !210
  %395 = getelementptr inbounds i32, i32* %394, i64 %393
  store i32 1, i32* %395, align 4, !tbaa !1
  br i1 %279, label %396, label %401

; <label>:396                                     ; preds = %391
  %397 = load i32, i32* %268, align 4, !tbaa !141
  %398 = sext i32 %397 to i64
  %399 = load i32*, i32** %186, align 8, !tbaa !211
  %400 = getelementptr inbounds i32, i32* %399, i64 %398
  store i32 -1, i32* %400, align 4, !tbaa !1
  br label %401

; <label>:401                                     ; preds = %396, %391
  br i1 %384, label %402, label %407

; <label>:402                                     ; preds = %401
  %403 = load i32, i32* %268, align 4, !tbaa !141
  %404 = sext i32 %403 to i64
  %405 = load i32*, i32** %189, align 8, !tbaa !212
  %406 = getelementptr inbounds i32, i32* %405, i64 %404
  store i32 -1, i32* %406, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %402, %401
  br i1 %383, label %408, label %413

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %268, align 4, !tbaa !141
  %410 = sext i32 %409 to i64
  %411 = load i32*, i32** %192, align 8, !tbaa !213
  %412 = getelementptr inbounds i32, i32* %411, i64 %410
  store i32 -1, i32* %412, align 4, !tbaa !1
  br label %413

; <label>:413                                     ; preds = %408, %407, %382, %351, %350, %325
  %hi.5 = phi double [ %hi.4., %351 ], [ %hi.4., %350 ], [ %hi.4., %325 ], [ %376, %408 ], [ %376, %407 ], [ %376, %382 ]
  %lo.5 = phi double [ %319, %351 ], [ %319, %350 ], [ %319, %325 ], [ %lo.4., %408 ], [ %lo.4., %407 ], [ %lo.4., %382 ]
  %414 = load i32, i32* %268, align 4, !tbaa !141
  %415 = sext i32 %414 to i64
  %416 = load double*, double** %176, align 8, !tbaa !208
  %417 = getelementptr inbounds double, double* %416, i64 %415
  store double %lo.5, double* %417, align 8, !tbaa !32
  %418 = load i32, i32* %268, align 4, !tbaa !141
  %419 = sext i32 %418 to i64
  %420 = load double*, double** %179, align 8, !tbaa !209
  %421 = getelementptr inbounds double, double* %420, i64 %419
  store double %hi.5, double* %421, align 8, !tbaa !32
  %422 = load i32, i32* %268, align 4, !tbaa !141
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %268, align 4, !tbaa !141
  %424 = add nuw nsw i32 %ineed.011, 1
  %425 = load i32, i32* %270, align 4, !tbaa !1
  %426 = shl nsw i32 %425, 1
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %281, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %413
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %428 = phi i32 [ %269, %.preheader ], [ %423, %._crit_edge.loopexit ]
  %lo.1.lcssa = phi double [ %lo.018, %.preheader ], [ %lo.5, %._crit_edge.loopexit ]
  %hi.1.lcssa = phi double [ %hi.017, %.preheader ], [ %hi.5, %._crit_edge.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit.loopexit, label %.preheader

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %78, %75
  %.0 = phi i32 [ 1, %78 ], [ 1, %75 ], [ 0, %.loopexit.loopexit ]
  call void @llvm.lifetime.end(i64 4, i8* %5) #8
  call void @llvm.lifetime.end(i64 12, i8* %4) #8
  call void @llvm.lifetime.end(i64 24, i8* %3) #8
  call void @llvm.lifetime.end(i64 12, i8* %2) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #8
  ret i32 %.0
}

declare i32 @MPI_Cart_create(i32, i32, i32*, i32*, i32, i32*) #2

declare i32 @MPI_Cart_get(i32, i32, i32*, i32*, i32*) #2

declare i32 @MPI_Cart_shift(i32, i32, i32, i32*, i32*) #2

declare i32 @MPI_Comm_free(i32*) #2

; Function Attrs: uwtable
define void @_ZN4Comm11communicateER4Atom(%class.Comm* nocapture readonly %this, %class.Atom* dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %pbc_flags = alloca [4 x i32], align 16
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @19)
  %2 = bitcast [4 x i32]* %pbc_flags to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #8
  %3 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #8
  %4 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %4) #8
  %5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !141
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %8 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 2
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 0
  %10 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 3
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 1
  %12 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 2
  %14 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 5
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 3
  %16 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 6
  %17 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 17
  %18 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %19 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 12
  %20 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 0
  %21 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 7
  %22 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 16
  %23 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %24 = bitcast double** %23 to i8**
  %25 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 9
  %26 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 13
  %27 = bitcast double** %18 to i8**
  %28 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 8
  br label %29

; <label>:29                                      ; preds = %81, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %81 ]
  %30 = load i32*, i32** %8, align 8, !tbaa !210
  %31 = getelementptr inbounds i32, i32* %30, i64 %indvars.iv
  %32 = load i32, i32* %31, align 4, !tbaa !1
  store i32 %32, i32* %9, align 16, !tbaa !1
  %33 = load i32*, i32** %10, align 8, !tbaa !211
  %34 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv
  %35 = load i32, i32* %34, align 4, !tbaa !1
  store i32 %35, i32* %11, align 4, !tbaa !1
  %36 = load i32*, i32** %12, align 8, !tbaa !212
  %37 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv
  %38 = load i32, i32* %37, align 4, !tbaa !1
  store i32 %38, i32* %13, align 8, !tbaa !1
  %39 = load i32*, i32** %14, align 8, !tbaa !213
  %40 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv
  %41 = load i32, i32* %40, align 4, !tbaa !1
  store i32 %41, i32* %15, align 4, !tbaa !1
  %42 = load i32*, i32** %16, align 8, !tbaa !142
  %43 = getelementptr inbounds i32, i32* %42, i64 %indvars.iv
  %44 = load i32, i32* %43, align 4, !tbaa !1
  %45 = load i32**, i32*** %17, align 8, !tbaa !144
  %46 = getelementptr inbounds i32*, i32** %45, i64 %indvars.iv
  %47 = load i32*, i32** %46, align 8, !tbaa !5
  %48 = load double*, double** %18, align 8, !tbaa !143
  call void @_ZN4Atom9pack_commEiPiPdS0_(%class.Atom* nonnull %atom, i32 %44, i32* %47, double* %48, i32* %9)
  %49 = load i32*, i32** %19, align 8, !tbaa !145
  %50 = getelementptr inbounds i32, i32* %49, i64 %indvars.iv
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %52 = load i32, i32* %20, align 8, !tbaa !95
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %81, label %54

; <label>:54                                      ; preds = %29
  %55 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57

; <label>:57                                      ; preds = %54
  %58 = load i8*, i8** %24, align 8, !tbaa !146
  %59 = load i32*, i32** %25, align 8, !tbaa !147
  %60 = getelementptr inbounds i32, i32* %59, i64 %indvars.iv
  %61 = load i32, i32* %60, align 4, !tbaa !1
  %62 = load i32*, i32** %26, align 8, !tbaa !148
  %63 = getelementptr inbounds i32, i32* %62, i64 %indvars.iv
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = invoke i32 @MPI_Irecv(i8* %58, i32 %61, i32 1275070475, i32 %64, i32 0, i32 1140850688, i32* nonnull %request)
          to label %66 unwind label %78

; <label>:66                                      ; preds = %57
  %67 = load i8*, i8** %27, align 8, !tbaa !143
  %68 = load i32*, i32** %28, align 8, !tbaa !149
  %69 = getelementptr inbounds i32, i32* %68, i64 %indvars.iv
  %70 = load i32, i32* %69, align 4, !tbaa !1
  %71 = load i32*, i32** %19, align 8, !tbaa !145
  %72 = getelementptr inbounds i32, i32* %71, i64 %indvars.iv
  %73 = load i32, i32* %72, align 4, !tbaa !1
  %74 = invoke i32 @MPI_Send(i8* %67, i32 %70, i32 1275070475, i32 %73, i32 0, i32 1140850688)
          to label %75 unwind label %78

; <label>:75                                      ; preds = %66
  %76 = invoke i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
          to label %77 unwind label %78

; <label>:77                                      ; preds = %75
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %81

; <label>:78                                      ; preds = %75, %66, %57
  %79 = landingpad { i8*, i32 }
          catch i8* null
  %80 = extractvalue { i8*, i32 } %79, 0
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  call void @__clang_call_terminate(i8* %80) #19
  unreachable

; <label>:81                                      ; preds = %77, %54, %29
  %buf.0.in = phi double** [ %18, %29 ], [ %23, %54 ], [ %23, %77 ]
  %buf.0 = load double*, double** %buf.0.in, align 8, !tbaa !5
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %82 = load i32*, i32** %21, align 8, !tbaa !150
  %83 = getelementptr inbounds i32, i32* %82, i64 %indvars.iv
  %84 = load i32, i32* %83, align 4, !tbaa !1
  %85 = load i32*, i32** %22, align 8, !tbaa !151
  %86 = getelementptr inbounds i32, i32* %85, i64 %indvars.iv
  %87 = load i32, i32* %86, align 4, !tbaa !1
  call void @_ZN4Atom11unpack_commEiiPd(%class.Atom* nonnull %atom, i32 %84, i32 %87, double* %buf.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %88 = load i32, i32* %5, align 4, !tbaa !141
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %indvars.iv.next, %89
  br i1 %90, label %29, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 20, i8* %4) #8
  call void @llvm.lifetime.end(i64 4, i8* %3) #8
  call void @llvm.lifetime.end(i64 16, i8* %2) #8
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Comm19reverse_communicateER4Atom(%class.Comm* nocapture readonly %this, %class.Atom* dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @19)
  %2 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  %3 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #8
  %4 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !141
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 7
  %8 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 16
  %9 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %10 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 12
  %11 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 0
  %12 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 6
  %13 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 17
  %14 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %15 = bitcast double** %14 to i8**
  %16 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 11
  %17 = bitcast double** %9 to i8**
  %18 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 10
  %19 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 13
  %20 = sext i32 %5 to i64
  br label %21

; <label>:21                                      ; preds = %61, %.lr.ph
  %indvars.iv = phi i64 [ %20, %.lr.ph ], [ %indvars.iv.next, %61 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %22 = load i32*, i32** %7, align 8, !tbaa !150
  %23 = getelementptr inbounds i32, i32* %22, i64 %indvars.iv.next
  %24 = load i32, i32* %23, align 4, !tbaa !1
  %25 = load i32*, i32** %8, align 8, !tbaa !151
  %26 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv.next
  %27 = load i32, i32* %26, align 4, !tbaa !1
  %28 = load double*, double** %9, align 8, !tbaa !143
  call void @_ZN4Atom12pack_reverseEiiPd(%class.Atom* nonnull %atom, i32 %24, i32 %27, double* %28)
  %29 = load i32*, i32** %10, align 8, !tbaa !145
  %30 = getelementptr inbounds i32, i32* %29, i64 %indvars.iv.next
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = load i32, i32* %11, align 8, !tbaa !95
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %61, label %34

; <label>:34                                      ; preds = %21
  %35 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

; <label>:37                                      ; preds = %34
  %38 = load i8*, i8** %15, align 8, !tbaa !146
  %39 = load i32*, i32** %16, align 8, !tbaa !217
  %40 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv.next
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = load i32*, i32** %10, align 8, !tbaa !145
  %43 = getelementptr inbounds i32, i32* %42, i64 %indvars.iv.next
  %44 = load i32, i32* %43, align 4, !tbaa !1
  %45 = invoke i32 @MPI_Irecv(i8* %38, i32 %41, i32 1275070475, i32 %44, i32 0, i32 1140850688, i32* nonnull %request)
          to label %46 unwind label %58

; <label>:46                                      ; preds = %37
  %47 = load i8*, i8** %17, align 8, !tbaa !143
  %48 = load i32*, i32** %18, align 8, !tbaa !216
  %49 = getelementptr inbounds i32, i32* %48, i64 %indvars.iv.next
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %51 = load i32*, i32** %19, align 8, !tbaa !148
  %52 = getelementptr inbounds i32, i32* %51, i64 %indvars.iv.next
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = invoke i32 @MPI_Send(i8* %47, i32 %50, i32 1275070475, i32 %53, i32 0, i32 1140850688)
          to label %55 unwind label %58

; <label>:55                                      ; preds = %46
  %56 = invoke i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
          to label %57 unwind label %58

; <label>:57                                      ; preds = %55
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %61

; <label>:58                                      ; preds = %55, %46, %37
  %59 = landingpad { i8*, i32 }
          catch i8* null
  %60 = extractvalue { i8*, i32 } %59, 0
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  call void @__clang_call_terminate(i8* %60) #19
  unreachable

; <label>:61                                      ; preds = %57, %34, %21
  %buf.0.in = phi double** [ %9, %21 ], [ %14, %34 ], [ %14, %57 ]
  %buf.0 = load double*, double** %buf.0.in, align 8, !tbaa !5
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %62 = load i32*, i32** %12, align 8, !tbaa !142
  %63 = getelementptr inbounds i32, i32* %62, i64 %indvars.iv.next
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = load i32**, i32*** %13, align 8, !tbaa !144
  %66 = getelementptr inbounds i32*, i32** %65, i64 %indvars.iv.next
  %67 = load i32*, i32** %66, align 8, !tbaa !5
  call void @_ZN4Atom14unpack_reverseEiPiPd(%class.Atom* nonnull %atom, i32 %64, i32* %67, double* %buf.0)
  %68 = icmp sgt i64 %indvars.iv, 1
  br i1 %68, label %21, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 20, i8* %3) #8
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  ret void
}

; Function Attrs: uwtable
define void @_ZN4Comm8exchangeER4Atom(%class.Comm* %this, %class.Atom* dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %nsend = alloca i32, align 4
  %nrecv1 = alloca i32, align 4
  %nrecv2 = alloca i32, align 4
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @19)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb7 = alloca i32, align 4
  %.omp.ub8 = alloca i32, align 4
  %.omp.stride9 = alloca i32, align 4
  %.omp.is_last10 = alloca i32, align 4
  %.omp.lb20 = alloca i32, align 4
  %.omp.ub21 = alloca i32, align 4
  %.omp.stride22 = alloca i32, align 4
  %.omp.is_last23 = alloca i32, align 4
  %.omp.lb29 = alloca i32, align 4
  %.omp.ub30 = alloca i32, align 4
  %.omp.stride31 = alloca i32, align 4
  %.omp.is_last32 = alloca i32, align 4
  %2 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 31
  %3 = load i32, i32* %2, align 4, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  tail call void @_ZN4Comm12exchange_allER4Atom(%class.Comm* nonnull %this, %class.Atom* nonnull dereferenceable(224) %atom)
  br label %479

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %nsend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #8
  %8 = bitcast i32* %nrecv1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #8
  %9 = bitcast i32* %nrecv2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #8
  %10 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #8
  %11 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %11) #8
  tail call void @_ZN4Atom3pbcEv(%class.Atom* nonnull %atom)
  %12 = tail call i32 @omp_get_thread_num() #8
  %13 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  %15 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %17 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 29
  %18 = bitcast i32* %.omp.lb to i8*
  %19 = bitcast i32* %.omp.ub to i8*
  %20 = bitcast i32* %.omp.stride to i8*
  %21 = bitcast i32* %.omp.is_last to i8*
  %22 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 35
  %23 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 37
  %24 = bitcast i32* %.omp.lb7 to i8*
  %25 = bitcast i32* %.omp.ub8 to i8*
  %26 = bitcast i32* %.omp.stride9 to i8*
  %27 = bitcast i32* %.omp.is_last10 to i8*
  %28 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 39
  %29 = sext i32 %12 to i64
  %30 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 40
  %31 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 38
  %32 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 43
  %33 = bitcast i32* %.omp.lb20 to i8*
  %34 = bitcast i32* %.omp.ub21 to i8*
  %35 = bitcast i32* %.omp.stride22 to i8*
  %36 = bitcast i32* %.omp.is_last23 to i8*
  %37 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %38 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 36
  %39 = bitcast i32* %.omp.lb29 to i8*
  %40 = bitcast i32* %.omp.ub30 to i8*
  %41 = bitcast i32* %.omp.stride31 to i8*
  %42 = bitcast i32* %.omp.is_last32 to i8*
  %43 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 23
  %44 = bitcast double** %37 to i8**
  %45 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %46 = bitcast double** %45 to i8**
  %47 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  %48 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 42
  %49 = bitcast i32** %28 to i8**
  %50 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 41
  %51 = bitcast i32** %22 to i8**
  %52 = bitcast i32** %38 to i8**
  %53 = bitcast i32** %23 to i8**
  %54 = bitcast i32** %30 to i8**
  %55 = bitcast i32*** %31 to i8**
  %56 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %57 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %58 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %59 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  br label %60

; <label>:60                                      ; preds = %476, %6
  %indvars.iv125 = phi i64 [ 0, %6 ], [ %indvars.iv.next126, %476 ]
  %61 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 %indvars.iv125
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %476, label %64

; <label>:64                                      ; preds = %60
  store i32 0, i32* %nsend, align 4, !tbaa !1
  %65 = trunc i64 %indvars.iv125 to i32
  switch i32 %65, label %67 [
    i32 0, label %68
    i32 1, label %66
  ]

; <label>:66                                      ; preds = %64
  br label %68

; <label>:67                                      ; preds = %64
  br label %68

; <label>:68                                      ; preds = %67, %66, %64
  %hi.0.in = phi double* [ %59, %66 ], [ %14, %67 ], [ %57, %64 ]
  %lo.0.in = phi double* [ %58, %66 ], [ %13, %67 ], [ %56, %64 ]
  %lo.0 = load double, double* %lo.0.in, align 8, !tbaa !32
  %hi.0 = load double, double* %hi.0.in, align 8, !tbaa !32
  %69 = load double*, double** %15, align 8, !tbaa !80
  %70 = load i32, i32* %16, align 4, !tbaa !88
  %71 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %129, label %73

; <label>:73                                      ; preds = %68
  %74 = load i32, i32* %48, align 4, !tbaa !207
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %87

; <label>:76                                      ; preds = %73
  %77 = sext i32 %70 to i64
  %78 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %77, i64 4)
  %79 = extractvalue { i64, i1 } %78, 1
  %80 = extractvalue { i64, i1 } %78, 0
  %81 = select i1 %79, i64 -1, i64 %80
  %82 = invoke noalias i8* @_Znam(i64 %81) #20
          to label %83 unwind label %84

; <label>:83                                      ; preds = %76
  store i8* %82, i8** %49, align 8, !tbaa !219
  store i32 %70, i32* %48, align 4, !tbaa !207
  br label %87

; <label>:84                                      ; preds = %106, %104, %102, %100, %93, %76
  %85 = landingpad { i8*, i32 }
          catch i8* null
  %86 = extractvalue { i8*, i32 } %85, 0
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %483

; <label>:87                                      ; preds = %83, %73
  %88 = load i32, i32* %50, align 8, !tbaa !206
  %89 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %90 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %89, i64 0, i32 3
  %91 = load i32, i32* %90, align 4, !tbaa !17
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %.loopexit

; <label>:93                                      ; preds = %87
  store i32 %91, i32* %50, align 8, !tbaa !206
  %94 = sext i32 %91 to i64
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %94, i64 4)
  %96 = extractvalue { i64, i1 } %95, 1
  %97 = extractvalue { i64, i1 } %95, 0
  %98 = select i1 %96, i64 -1, i64 %97
  %99 = invoke noalias i8* @_Znam(i64 %98) #20
          to label %100 unwind label %84

; <label>:100                                     ; preds = %93
  store i8* %99, i8** %51, align 8, !tbaa !220
  %101 = invoke noalias i8* @_Znam(i64 %98) #20
          to label %102 unwind label %84

; <label>:102                                     ; preds = %100
  store i8* %101, i8** %52, align 8, !tbaa !221
  %103 = invoke noalias i8* @_Znam(i64 %98) #20
          to label %104 unwind label %84

; <label>:104                                     ; preds = %102
  store i8* %103, i8** %53, align 8, !tbaa !222
  %105 = invoke noalias i8* @_Znam(i64 %98) #20
          to label %106 unwind label %84

; <label>:106                                     ; preds = %104
  store i8* %105, i8** %54, align 8, !tbaa !223
  %107 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %94, i64 8)
  %108 = extractvalue { i64, i1 } %107, 1
  %109 = extractvalue { i64, i1 } %107, 0
  %110 = select i1 %108, i64 -1, i64 %109
  %111 = ptrtoint i8* %105 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = invoke noalias i8* @_Znam(i64 %110) #20
          to label %114 unwind label %84

; <label>:114                                     ; preds = %106
  store i8* %113, i8** %55, align 8, !tbaa !224
  %115 = icmp sgt i32 %91, 0
  br i1 %115, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %114
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge
  %116 = phi i32* [ %.pre, %.lr.ph..lr.ph_crit_edge ], [ %112, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph..lr.ph_crit_edge ], [ 0, %.lr.ph.preheader ]
  %117 = load i32, i32* %47, align 8, !tbaa !204
  %118 = getelementptr inbounds i32, i32* %116, i64 %indvars.iv
  store i32 %117, i32* %118, align 4, !tbaa !1
  %119 = load i32, i32* %47, align 8, !tbaa !204
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 2
  %122 = call noalias i8* @malloc(i64 %121) #8
  %123 = load i32**, i32*** %31, align 8, !tbaa !224
  %124 = getelementptr inbounds i32*, i32** %123, i64 %indvars.iv
  %125 = bitcast i32** %124 to i8**
  store i8* %122, i8** %125, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %126 = load i32, i32* %50, align 8, !tbaa !206
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %indvars.iv.next, %127
  br i1 %128, label %.lr.ph..lr.ph_crit_edge, label %.loopexit.loopexit

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph
  %.pre = load i32*, i32** %30, align 8, !tbaa !223
  br label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %114, %87
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %129

; <label>:129                                     ; preds = %.loopexit, %68
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  store i32 0, i32* %nsend, align 4, !tbaa !1
  %130 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %131 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %130, i64 0, i32 3
  %132 = load i32, i32* %131, align 4, !tbaa !17
  %133 = add nsw i32 %132, -1
  %134 = icmp sgt i32 %132, 0
  br i1 %134, label %135, label %150

; <label>:135                                     ; preds = %129
  call void @llvm.lifetime.start(i64 4, i8* %18) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %19) #8
  store i32 %133, i32* %.omp.ub, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %20) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %21) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %136 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %137 = icmp sgt i32 %136, %133
  %138 = select i1 %137, i32 %133, i32 %136
  store i32 %138, i32* %.omp.ub, align 4, !tbaa !1
  %139 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %140 = icmp sgt i32 %139, %138
  br i1 %140, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %135
  %141 = load i32*, i32** %22, align 8
  %142 = load i32*, i32** %23, align 8
  %143 = sext i32 %139 to i64
  br label %144

; <label>:144                                     ; preds = %144, %.lr.ph43
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %144 ], [ %143, %.lr.ph43 ]
  %145 = getelementptr inbounds i32, i32* %141, i64 %indvars.iv101
  store i32 0, i32* %145, align 4, !tbaa !1
  %146 = getelementptr inbounds i32, i32* %142, i64 %indvars.iv101
  store i32 0, i32* %146, align 4, !tbaa !1
  %147 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %indvars.iv101, %148
  %indvars.iv.next102 = add i64 %indvars.iv101, 1
  br i1 %149, label %144, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %144
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %135
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %150

; <label>:150                                     ; preds = %._crit_edge, %129
  call void @llvm.lifetime.end(i64 4, i8* %21) #8
  call void @llvm.lifetime.end(i64 4, i8* %20) #8
  call void @llvm.lifetime.end(i64 4, i8* %19) #8
  call void @llvm.lifetime.end(i64 4, i8* %18) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  %151 = add nsw i32 %70, -1
  %152 = icmp sgt i32 %70, 0
  br i1 %152, label %153, label %206

; <label>:153                                     ; preds = %150
  call void @llvm.lifetime.start(i64 4, i8* %24) #8
  store i32 0, i32* %.omp.lb7, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %25) #8
  store i32 %151, i32* %.omp.ub8, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %26) #8
  store i32 1, i32* %.omp.stride9, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %27) #8
  store i32 0, i32* %.omp.is_last10, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last10, i32* nonnull %.omp.lb7, i32* nonnull %.omp.ub8, i32* nonnull %.omp.stride9, i32 1, i32 1)
  %154 = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  %155 = icmp sgt i32 %154, %151
  %156 = select i1 %155, i32 %151, i32 %154
  store i32 %156, i32* %.omp.ub8, align 4, !tbaa !1
  %157 = load i32, i32* %.omp.lb7, align 4, !tbaa !1
  %158 = icmp sgt i32 %157, %156
  br i1 %158, label %._crit_edge48, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %153
  %159 = sext i32 %157 to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %201, %.lr.ph47.preheader
  %indvars.iv103 = phi i64 [ %159, %.lr.ph47.preheader ], [ %indvars.iv.next104, %201 ]
  %.omp.iv4.044 = phi i32 [ %157, %.lr.ph47.preheader ], [ %202, %201 ]
  %160 = mul nsw i32 %.omp.iv4.044, 3
  %161 = add nsw i32 %160, %65
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %69, i64 %162
  %164 = load double, double* %163, align 8, !tbaa !32
  %165 = fcmp uge double %164, %lo.0
  %166 = fcmp ult double %164, %hi.0
  %or.cond = and i1 %165, %166
  br i1 %or.cond, label %198, label %167

; <label>:167                                     ; preds = %.lr.ph47
  %168 = load i32, i32* %nsend, align 4, !tbaa !1
  %169 = load i32*, i32** %30, align 8, !tbaa !223
  %170 = getelementptr inbounds i32, i32* %169, i64 %29
  %171 = load i32, i32* %170, align 4, !tbaa !1
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %187, label %173

; <label>:173                                     ; preds = %167
  %174 = add nsw i32 %168, 100
  store i32 %174, i32* %170, align 4, !tbaa !1
  %175 = load i32**, i32*** %31, align 8, !tbaa !224
  %176 = getelementptr inbounds i32*, i32** %175, i64 %29
  %177 = bitcast i32** %176 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !5
  %179 = load i32, i32* %nsend, align 4, !tbaa !1
  %180 = add nsw i32 %179, 100
  %181 = sext i32 %180 to i64
  %182 = shl nsw i64 %181, 2
  %183 = call i8* @realloc(i8* %178, i64 %182) #8
  %184 = load i32**, i32*** %31, align 8, !tbaa !224
  %185 = getelementptr inbounds i32*, i32** %184, i64 %29
  %186 = bitcast i32** %185 to i8**
  store i8* %183, i8** %186, align 8, !tbaa !5
  %.pre1 = load i32, i32* %nsend, align 4, !tbaa !1
  br label %187

; <label>:187                                     ; preds = %173, %167
  %188 = phi i32 [ %.pre1, %173 ], [ %168, %167 ]
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %nsend, align 4, !tbaa !1
  %190 = sext i32 %188 to i64
  %191 = load i32**, i32*** %31, align 8, !tbaa !224
  %192 = getelementptr inbounds i32*, i32** %191, i64 %29
  %193 = load i32*, i32** %192, align 8, !tbaa !5
  %194 = getelementptr inbounds i32, i32* %193, i64 %190
  %195 = trunc i64 %indvars.iv103 to i32
  store i32 %195, i32* %194, align 4, !tbaa !1
  %196 = load i32*, i32** %28, align 8, !tbaa !219
  %197 = getelementptr inbounds i32, i32* %196, i64 %indvars.iv103
  store i32 0, i32* %197, align 4, !tbaa !1
  br label %201

; <label>:198                                     ; preds = %.lr.ph47
  %199 = load i32*, i32** %28, align 8, !tbaa !219
  %200 = getelementptr inbounds i32, i32* %199, i64 %indvars.iv103
  store i32 1, i32* %200, align 4, !tbaa !1
  br label %201

; <label>:201                                     ; preds = %198, %187
  %202 = add nsw i32 %.omp.iv4.044, 1
  %203 = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %indvars.iv103, %204
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  br i1 %205, label %.lr.ph47, label %._crit_edge48.loopexit

._crit_edge48.loopexit:                           ; preds = %201
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %153
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %206

; <label>:206                                     ; preds = %._crit_edge48, %150
  call void @llvm.lifetime.end(i64 4, i8* %27) #8
  call void @llvm.lifetime.end(i64 4, i8* %26) #8
  call void @llvm.lifetime.end(i64 4, i8* %25) #8
  call void @llvm.lifetime.end(i64 4, i8* %24) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  %207 = load i32, i32* %nsend, align 4, !tbaa !1
  %208 = load i32*, i32** %22, align 8, !tbaa !220
  %209 = getelementptr inbounds i32, i32* %208, i64 %29
  store i32 %207, i32* %209, align 4, !tbaa !1
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %210 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %229, label %.preheader39

.preheader39:                                     ; preds = %206
  %212 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %213 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %212, i64 0, i32 3
  %214 = load i32, i32* %213, align 4, !tbaa !17
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %.preheader39
  %216 = load i32*, i32** %22, align 8
  br label %220

._crit_edge52.loopexit:                           ; preds = %220
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.preheader39
  %total_nsend.0.lcssa = phi i32 [ 0, %.preheader39 ], [ %223, %._crit_edge52.loopexit ]
  %217 = mul nsw i32 %total_nsend.0.lcssa, 7
  %218 = load i32, i32* %47, align 8, !tbaa !204
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %227, label %228

; <label>:220                                     ; preds = %220, %.lr.ph51
  %indvars.iv105 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next106, %220 ]
  %total_nsend.049 = phi i32 [ 0, %.lr.ph51 ], [ %223, %220 ]
  %221 = getelementptr inbounds i32, i32* %216, i64 %indvars.iv105
  %222 = load i32, i32* %221, align 4, !tbaa !1
  %223 = add nsw i32 %222, %total_nsend.049
  store i32 %223, i32* %221, align 4, !tbaa !1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %224 = load i32, i32* %213, align 4, !tbaa !17
  %225 = sext i32 %224 to i64
  %226 = icmp slt i64 %indvars.iv.next106, %225
  br i1 %226, label %220, label %._crit_edge52.loopexit

; <label>:227                                     ; preds = %._crit_edge52
  call void @_ZN4Comm8growsendEi(%class.Comm* nonnull %this, i32 %217)
  br label %228

; <label>:228                                     ; preds = %227, %._crit_edge52
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %229

; <label>:229                                     ; preds = %228, %206
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %230 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %231 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %230, i64 0, i32 3
  %232 = load i32, i32* %231, align 4, !tbaa !17
  %233 = add nsw i32 %232, -1
  %234 = sext i32 %233 to i64
  %235 = load i32*, i32** %22, align 8, !tbaa !220
  %236 = getelementptr inbounds i32, i32* %235, i64 %234
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = load i32, i32* %nsend, align 4, !tbaa !1
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %229
  %240 = load i32**, i32*** %31, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 %29
  %242 = load i32*, i32** %241, align 8
  %243 = sub nsw i32 %70, %237
  %244 = sext i32 %238 to i64
  br label %254

._crit_edge57.loopexit:                           ; preds = %254
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %229
  %nholes.0.lcssa = phi i32 [ 0, %229 ], [ %.nholes.0, %._crit_edge57.loopexit ]
  %245 = load i32*, i32** %23, align 8, !tbaa !222
  %246 = getelementptr inbounds i32, i32* %245, i64 %29
  store i32 %nholes.0.lcssa, i32* %246, align 4, !tbaa !1
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %247 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %267, label %.preheader38

.preheader38:                                     ; preds = %._crit_edge57
  %249 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %250 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %249, i64 0, i32 3
  %251 = load i32, i32* %250, align 4, !tbaa !17
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader38
  %253 = load i32*, i32** %23, align 8
  br label %260

; <label>:254                                     ; preds = %254, %.lr.ph56
  %indvars.iv107 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next108, %254 ]
  %nholes.053 = phi i32 [ 0, %.lr.ph56 ], [ %.nholes.0, %254 ]
  %255 = getelementptr inbounds i32, i32* %242, i64 %indvars.iv107
  %256 = load i32, i32* %255, align 4, !tbaa !1
  %257 = icmp slt i32 %256, %243
  %258 = zext i1 %257 to i32
  %.nholes.0 = add nsw i32 %258, %nholes.053
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %259 = icmp slt i64 %indvars.iv.next108, %244
  br i1 %259, label %254, label %._crit_edge57.loopexit

._crit_edge62.loopexit:                           ; preds = %260
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader38
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %267

; <label>:260                                     ; preds = %260, %.lr.ph61
  %indvars.iv109 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next110, %260 ]
  %total_nholes.059 = phi i32 [ 0, %.lr.ph61 ], [ %263, %260 ]
  %261 = getelementptr inbounds i32, i32* %253, i64 %indvars.iv109
  %262 = load i32, i32* %261, align 4, !tbaa !1
  %263 = add nsw i32 %262, %total_nholes.059
  store i32 %263, i32* %261, align 4, !tbaa !1
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %264 = load i32, i32* %250, align 4, !tbaa !17
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %indvars.iv.next110, %265
  br i1 %266, label %260, label %._crit_edge62.loopexit

; <label>:267                                     ; preds = %._crit_edge62, %._crit_edge57
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %268 = load i32*, i32** %23, align 8, !tbaa !222
  %269 = getelementptr inbounds i32, i32* %268, i64 %29
  %270 = load i32, i32* %269, align 4, !tbaa !1
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %.lr.ph66, label %.preheader37

.lr.ph66:                                         ; preds = %267
  %272 = load i32*, i32** %28, align 8
  br label %276

.preheader37.loopexit:                            ; preds = %276
  br label %.preheader37

.preheader37:                                     ; preds = %.preheader37.loopexit, %267
  %j.0.lcssa = phi i32 [ %70, %267 ], [ %277, %.preheader37.loopexit ]
  %273 = load i32, i32* %nsend, align 4, !tbaa !1
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %.preheader37
  %275 = sub nsw i32 %70, %237
  br label %286

; <label>:276                                     ; preds = %276, %.lr.ph66
  %holes.064 = phi i32 [ 0, %.lr.ph66 ], [ %holes.0., %276 ]
  %j.063 = phi i32 [ %70, %.lr.ph66 ], [ %277, %276 ]
  %277 = add nsw i32 %j.063, -1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %272, i64 %278
  %280 = load i32, i32* %279, align 4, !tbaa !1
  %not. = icmp ne i32 %280, 0
  %281 = zext i1 %not. to i32
  %holes.0. = add nsw i32 %281, %holes.064
  %282 = icmp slt i32 %holes.0., %270
  br i1 %282, label %276, label %.preheader37.loopexit

._crit_edge71.loopexit:                           ; preds = %319
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader37
  %.lcssa40 = phi i32 [ %273, %.preheader37 ], [ %320, %._crit_edge71.loopexit ]
  %283 = mul nsw i32 %.lcssa40, 7
  store i32 %283, i32* %nsend, align 4, !tbaa !1
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %284 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %396, label %323

; <label>:286                                     ; preds = %319, %.lr.ph70
  %indvars.iv115 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next116, %319 ]
  %287 = phi i32 [ %273, %.lr.ph70 ], [ %320, %319 ]
  %j.168 = phi i32 [ %j.0.lcssa, %.lr.ph70 ], [ %j.3, %319 ]
  %288 = load i32**, i32*** %31, align 8, !tbaa !224
  %289 = getelementptr inbounds i32*, i32** %288, i64 %29
  %290 = load i32*, i32** %289, align 8, !tbaa !5
  %291 = getelementptr inbounds i32, i32* %290, i64 %indvars.iv115
  %292 = load i32, i32* %291, align 4, !tbaa !1
  %293 = load i32*, i32** %22, align 8, !tbaa !220
  %294 = getelementptr inbounds i32, i32* %293, i64 %29
  %295 = load i32, i32* %294, align 4, !tbaa !1
  %296 = trunc i64 %indvars.iv115 to i32
  %297 = sub i32 %296, %287
  %298 = add i32 %297, %295
  %299 = mul nsw i32 %298, 7
  %300 = sext i32 %299 to i64
  %301 = load double*, double** %45, align 8, !tbaa !143
  %302 = getelementptr inbounds double, double* %301, i64 %300
  %303 = call i32 @_ZN4Atom13pack_exchangeEiPd(%class.Atom* nonnull %atom, i32 %292, double* %302)
  %304 = load i32**, i32*** %31, align 8, !tbaa !224
  %305 = getelementptr inbounds i32*, i32** %304, i64 %29
  %306 = load i32*, i32** %305, align 8, !tbaa !5
  %307 = getelementptr inbounds i32, i32* %306, i64 %indvars.iv115
  %308 = load i32, i32* %307, align 4, !tbaa !1
  %309 = icmp slt i32 %308, %275
  br i1 %309, label %.preheader, label %319

.preheader:                                       ; preds = %286
  %310 = load i32*, i32** %28, align 8
  %311 = sext i32 %j.168 to i64
  br label %312

; <label>:312                                     ; preds = %312, %.preheader
  %indvars.iv113 = phi i64 [ %311, %.preheader ], [ %indvars.iv.next114, %312 ]
  %j.2 = phi i32 [ %j.168, %.preheader ], [ %316, %312 ]
  %313 = getelementptr inbounds i32, i32* %310, i64 %indvars.iv113
  %314 = load i32, i32* %313, align 4, !tbaa !1
  %315 = icmp eq i32 %314, 0
  %316 = add nsw i32 %j.2, 1
  %indvars.iv.next114 = add i64 %indvars.iv113, 1
  br i1 %315, label %312, label %317

; <label>:317                                     ; preds = %312
  %318 = trunc i64 %indvars.iv113 to i32
  call void @_ZN4Atom4copyEii(%class.Atom* nonnull %atom, i32 %318, i32 %308)
  br label %319

; <label>:319                                     ; preds = %317, %286
  %j.3 = phi i32 [ %316, %317 ], [ %j.168, %286 ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %320 = load i32, i32* %nsend, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %indvars.iv.next116, %321
  br i1 %322, label %286, label %._crit_edge71.loopexit

; <label>:323                                     ; preds = %._crit_edge71
  %324 = sub nsw i32 %70, %237
  store i32 %324, i32* %16, align 4, !tbaa !88
  %325 = mul nsw i32 %237, 7
  store i32 %325, i32* %nsend, align 4, !tbaa !1
  %326 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 %indvars.iv125, i64 0
  %327 = load i32, i32* %326, align 8, !tbaa !1
  %328 = invoke i32 @MPI_Send(i8* nonnull %7, i32 1, i32 1275069445, i32 %327, i32 0, i32 1140850688)
          to label %329 unwind label %346

; <label>:329                                     ; preds = %323
  %330 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 24, i64 %indvars.iv125, i64 1
  %331 = load i32, i32* %330, align 4, !tbaa !1
  %332 = invoke i32 @MPI_Recv(i8* %8, i32 1, i32 1275069445, i32 %331, i32 0, i32 1140850688, %class.ThreadData* nonnull %status)
          to label %333 unwind label %346

; <label>:333                                     ; preds = %329
  %334 = load i32, i32* %nrecv1, align 4, !tbaa !1
  %335 = load i32, i32* %61, align 4, !tbaa !1
  %336 = icmp sgt i32 %335, 2
  br i1 %336, label %337, label %349

; <label>:337                                     ; preds = %333
  %338 = load i32, i32* %330, align 4, !tbaa !1
  %339 = invoke i32 @MPI_Send(i8* nonnull %7, i32 1, i32 1275069445, i32 %338, i32 0, i32 1140850688)
          to label %340 unwind label %346

; <label>:340                                     ; preds = %337
  %341 = load i32, i32* %326, align 8, !tbaa !1
  %342 = invoke i32 @MPI_Recv(i8* %9, i32 1, i32 1275069445, i32 %341, i32 0, i32 1140850688, %class.ThreadData* nonnull %status)
          to label %343 unwind label %346

; <label>:343                                     ; preds = %340
  %344 = load i32, i32* %nrecv2, align 4, !tbaa !1
  %345 = add nsw i32 %344, %334
  br label %349

; <label>:346                                     ; preds = %382, %377, %368, %363, %358, %353, %340, %337, %329, %323
  %347 = landingpad { i8*, i32 }
          catch i8* null
  %348 = extractvalue { i8*, i32 } %347, 0
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %483

; <label>:349                                     ; preds = %343, %333
  %nrecv.0 = phi i32 [ %345, %343 ], [ %334, %333 ]
  %350 = load i32, i32* %43, align 4, !tbaa !205
  %351 = icmp sgt i32 %nrecv.0, %350
  br i1 %351, label %352, label %353

; <label>:352                                     ; preds = %349
  call void @_ZN4Comm8growrecvEi(%class.Comm* nonnull %this, i32 %nrecv.0)
  br label %353

; <label>:353                                     ; preds = %352, %349
  %354 = load i8*, i8** %44, align 8, !tbaa !146
  %355 = load i32, i32* %nrecv1, align 4, !tbaa !1
  %356 = load i32, i32* %330, align 4, !tbaa !1
  %357 = invoke i32 @MPI_Irecv(i8* %354, i32 %355, i32 1275070475, i32 %356, i32 0, i32 1140850688, i32* nonnull %request)
          to label %358 unwind label %346

; <label>:358                                     ; preds = %353
  %359 = load i8*, i8** %46, align 8, !tbaa !143
  %360 = load i32, i32* %nsend, align 4, !tbaa !1
  %361 = load i32, i32* %326, align 8, !tbaa !1
  %362 = invoke i32 @MPI_Send(i8* %359, i32 %360, i32 1275070475, i32 %361, i32 0, i32 1140850688)
          to label %363 unwind label %346

; <label>:363                                     ; preds = %358
  %364 = invoke i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
          to label %365 unwind label %346

; <label>:365                                     ; preds = %363
  %366 = load i32, i32* %61, align 4, !tbaa !1
  %367 = icmp sgt i32 %366, 2
  br i1 %367, label %368, label %384

; <label>:368                                     ; preds = %365
  %369 = load i32, i32* %nrecv1, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = load double*, double** %37, align 8, !tbaa !146
  %372 = getelementptr inbounds double, double* %371, i64 %370
  %373 = bitcast double* %372 to i8*
  %374 = load i32, i32* %nrecv2, align 4, !tbaa !1
  %375 = load i32, i32* %326, align 8, !tbaa !1
  %376 = invoke i32 @MPI_Irecv(i8* %373, i32 %374, i32 1275070475, i32 %375, i32 0, i32 1140850688, i32* nonnull %request)
          to label %377 unwind label %346

; <label>:377                                     ; preds = %368
  %378 = load i8*, i8** %46, align 8, !tbaa !143
  %379 = load i32, i32* %nsend, align 4, !tbaa !1
  %380 = load i32, i32* %330, align 4, !tbaa !1
  %381 = invoke i32 @MPI_Send(i8* %378, i32 %379, i32 1275070475, i32 %380, i32 0, i32 1140850688)
          to label %382 unwind label %346

; <label>:382                                     ; preds = %377
  %383 = invoke i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
          to label %384 unwind label %346

; <label>:384                                     ; preds = %382, %365
  %385 = sdiv i32 %nrecv.0, 7
  store i32 %385, i32* %32, align 8, !tbaa !225
  %386 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %387 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %386, i64 0, i32 3
  %388 = load i32, i32* %387, align 4, !tbaa !17
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %384
  %390 = load i32*, i32** %38, align 8
  br label %391

._crit_edge76.loopexit:                           ; preds = %391
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %384
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %396

; <label>:391                                     ; preds = %391, %.lr.ph75
  %indvars.iv117 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next118, %391 ]
  %392 = getelementptr inbounds i32, i32* %390, i64 %indvars.iv117
  store i32 0, i32* %392, align 4, !tbaa !1
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %393 = load i32, i32* %387, align 4, !tbaa !17
  %394 = sext i32 %393 to i64
  %395 = icmp slt i64 %indvars.iv.next118, %394
  br i1 %395, label %391, label %._crit_edge76.loopexit

; <label>:396                                     ; preds = %._crit_edge76, %._crit_edge71
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %397 = load i32, i32* %32, align 8, !tbaa !225
  %398 = add nsw i32 %397, -1
  %399 = icmp sgt i32 %397, 0
  br i1 %399, label %400, label %420

; <label>:400                                     ; preds = %396
  call void @llvm.lifetime.start(i64 4, i8* %33) #8
  store i32 0, i32* %.omp.lb20, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %34) #8
  store i32 %398, i32* %.omp.ub21, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %35) #8
  store i32 1, i32* %.omp.stride22, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %36) #8
  store i32 0, i32* %.omp.is_last23, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last23, i32* nonnull %.omp.lb20, i32* nonnull %.omp.ub21, i32* nonnull %.omp.stride22, i32 1, i32 1)
  %401 = load i32, i32* %.omp.ub21, align 4, !tbaa !1
  %402 = icmp sgt i32 %401, %398
  %403 = select i1 %402, i32 %398, i32 %401
  store i32 %403, i32* %.omp.ub21, align 4, !tbaa !1
  %404 = load i32, i32* %.omp.lb20, align 4, !tbaa !1
  %405 = icmp sgt i32 %404, %403
  br i1 %405, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %400
  %406 = load double*, double** %37, align 8
  %407 = sext i32 %404 to i64
  %408 = sext i32 %403 to i64
  br label %409

; <label>:409                                     ; preds = %409, %.lr.ph80
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %409 ], [ %407, %.lr.ph80 ]
  %nrecv.178 = phi i32 [ %nrecv.2, %409 ], [ 0, %.lr.ph80 ]
  %.omp.iv17.077 = phi i32 [ %418, %409 ], [ %404, %.lr.ph80 ]
  %410 = mul nsw i32 %.omp.iv17.077, 7
  %411 = add nsw i32 %410, %65
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double, double* %406, i64 %412
  %414 = load double, double* %413, align 8, !tbaa !32
  %415 = fcmp oge double %414, %lo.0
  %416 = fcmp olt double %414, %hi.0
  %or.cond34 = and i1 %415, %416
  %417 = zext i1 %or.cond34 to i32
  %nrecv.2 = add nsw i32 %417, %nrecv.178
  %418 = add nsw i32 %.omp.iv17.077, 1
  %419 = icmp slt i64 %indvars.iv119, %408
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1
  br i1 %419, label %409, label %._crit_edge81.loopexit

._crit_edge81.loopexit:                           ; preds = %409
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %400
  %nrecv.1.lcssa = phi i32 [ 0, %400 ], [ %nrecv.2, %._crit_edge81.loopexit ]
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %420

; <label>:420                                     ; preds = %._crit_edge81, %396
  %nrecv.3 = phi i32 [ %nrecv.1.lcssa, %._crit_edge81 ], [ 0, %396 ]
  call void @llvm.lifetime.end(i64 4, i8* %36) #8
  call void @llvm.lifetime.end(i64 4, i8* %35) #8
  call void @llvm.lifetime.end(i64 4, i8* %34) #8
  call void @llvm.lifetime.end(i64 4, i8* %33) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  %421 = load i32*, i32** %38, align 8, !tbaa !221
  %422 = getelementptr inbounds i32, i32* %421, i64 %29
  store i32 %nrecv.3, i32* %422, align 4, !tbaa !1
  %423 = load i32, i32* %16, align 4, !tbaa !88
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %424 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %440, label %.preheader36

.preheader36:                                     ; preds = %420
  %426 = load %class.ThreadData*, %class.ThreadData** %17, align 8, !tbaa !21
  %427 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %426, i64 0, i32 3
  %428 = load i32, i32* %427, align 4, !tbaa !17
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %.preheader36
  %430 = load i32*, i32** %38, align 8
  br label %433

._crit_edge86.loopexit:                           ; preds = %433
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.preheader36
  %total_nrecv.0.lcssa = phi i32 [ 0, %.preheader36 ], [ %436, %._crit_edge86.loopexit ]
  %431 = load i32, i32* %16, align 4, !tbaa !88
  %432 = add nsw i32 %431, %total_nrecv.0.lcssa
  store i32 %432, i32* %16, align 4, !tbaa !88
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %440

; <label>:433                                     ; preds = %433, %.lr.ph85
  %indvars.iv121 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next122, %433 ]
  %total_nrecv.083 = phi i32 [ 0, %.lr.ph85 ], [ %436, %433 ]
  %434 = getelementptr inbounds i32, i32* %430, i64 %indvars.iv121
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = add nsw i32 %435, %total_nrecv.083
  store i32 %436, i32* %434, align 4, !tbaa !1
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %437 = load i32, i32* %427, align 4, !tbaa !17
  %438 = sext i32 %437 to i64
  %439 = icmp slt i64 %indvars.iv.next122, %438
  br i1 %439, label %433, label %._crit_edge86.loopexit

; <label>:440                                     ; preds = %._crit_edge86, %420
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %441 = load i32, i32* %32, align 8, !tbaa !225
  %442 = add nsw i32 %441, -1
  %443 = icmp sgt i32 %441, 0
  br i1 %443, label %444, label %475

; <label>:444                                     ; preds = %440
  %445 = load i32*, i32** %38, align 8, !tbaa !221
  %446 = getelementptr inbounds i32, i32* %445, i64 %29
  %447 = load i32, i32* %446, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %39) #8
  store i32 0, i32* %.omp.lb29, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %40) #8
  store i32 %442, i32* %.omp.ub30, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %41) #8
  store i32 1, i32* %.omp.stride31, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %42) #8
  store i32 0, i32* %.omp.is_last32, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last32, i32* nonnull %.omp.lb29, i32* nonnull %.omp.ub30, i32* nonnull %.omp.stride31, i32 1, i32 1)
  %448 = load i32, i32* %.omp.ub30, align 4, !tbaa !1
  %449 = icmp sgt i32 %448, %442
  %450 = select i1 %449, i32 %442, i32 %448
  store i32 %450, i32* %.omp.ub30, align 4, !tbaa !1
  %451 = load i32, i32* %.omp.lb29, align 4, !tbaa !1
  %452 = icmp sgt i32 %451, %450
  br i1 %452, label %._crit_edge92, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %444
  %453 = sub i32 %423, %nrecv.3
  %454 = add i32 %453, %447
  %455 = sext i32 %451 to i64
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %470, %.lr.ph91.preheader
  %456 = phi i32 [ %450, %.lr.ph91.preheader ], [ %471, %470 ]
  %indvars.iv123 = phi i64 [ %455, %.lr.ph91.preheader ], [ %indvars.iv.next124, %470 ]
  %.omp.iv26.089 = phi i32 [ %451, %.lr.ph91.preheader ], [ %472, %470 ]
  %copyinpos.088 = phi i32 [ %454, %.lr.ph91.preheader ], [ %copyinpos.1, %470 ]
  %457 = mul nsw i32 %.omp.iv26.089, 7
  %458 = add nsw i32 %457, %65
  %459 = sext i32 %458 to i64
  %460 = load double*, double** %37, align 8, !tbaa !146
  %461 = getelementptr inbounds double, double* %460, i64 %459
  %462 = load double, double* %461, align 8, !tbaa !32
  %463 = fcmp oge double %462, %lo.0
  %464 = fcmp olt double %462, %hi.0
  %or.cond35 = and i1 %463, %464
  br i1 %or.cond35, label %465, label %470

; <label>:465                                     ; preds = %.lr.ph91
  %466 = add nsw i32 %copyinpos.088, 1
  %467 = sext i32 %457 to i64
  %468 = getelementptr inbounds double, double* %460, i64 %467
  %469 = invoke i32 @_ZN4Atom15unpack_exchangeEiPd(%class.Atom* nonnull %atom, i32 %copyinpos.088, double* %468)
          to label %._crit_edge2 unwind label %480

._crit_edge2:                                     ; preds = %465
  %.pre3 = load i32, i32* %.omp.ub30, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %._crit_edge2, %.lr.ph91
  %471 = phi i32 [ %.pre3, %._crit_edge2 ], [ %456, %.lr.ph91 ]
  %copyinpos.1 = phi i32 [ %466, %._crit_edge2 ], [ %copyinpos.088, %.lr.ph91 ]
  %472 = add nsw i32 %.omp.iv26.089, 1
  %473 = sext i32 %471 to i64
  %474 = icmp slt i64 %indvars.iv123, %473
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  br i1 %474, label %.lr.ph91, label %._crit_edge92.loopexit

._crit_edge92.loopexit:                           ; preds = %470
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %444
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %475

; <label>:475                                     ; preds = %._crit_edge92, %440
  call void @llvm.lifetime.end(i64 4, i8* %42) #8
  call void @llvm.lifetime.end(i64 4, i8* %41) #8
  call void @llvm.lifetime.end(i64 4, i8* %40) #8
  call void @llvm.lifetime.end(i64 4, i8* %39) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  br label %476

; <label>:476                                     ; preds = %475, %60
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %477 = icmp slt i64 %indvars.iv.next126, 3
  br i1 %477, label %60, label %478

; <label>:478                                     ; preds = %476
  call void @llvm.lifetime.end(i64 20, i8* %11) #8
  call void @llvm.lifetime.end(i64 4, i8* %10) #8
  call void @llvm.lifetime.end(i64 4, i8* %9) #8
  call void @llvm.lifetime.end(i64 4, i8* %8) #8
  call void @llvm.lifetime.end(i64 4, i8* %7) #8
  br label %479

; <label>:479                                     ; preds = %478, %5
  ret void

; <label>:480                                     ; preds = %465
  %481 = landingpad { i8*, i32 }
          catch i8* null
  %482 = extractvalue { i8*, i32 } %481, 0
  call void @__clang_call_terminate(i8* %482) #19
  unreachable

; <label>:483                                     ; preds = %346, %84
  %.0 = phi i8* [ %348, %346 ], [ %86, %84 ]
  call void @__clang_call_terminate(i8* %.0) #19
  unreachable
}

; Function Attrs: uwtable
define void @_ZN4Comm12exchange_allER4Atom(%class.Comm* nocapture %this, %class.Atom* dereferenceable(224) %atom) #13 align 2 {
  %nsend = alloca i32, align 4
  %nrecv = alloca i32, align 4
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = bitcast i32* %nsend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = bitcast i32* %nrecv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  %3 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #8
  %4 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %4) #8
  tail call void @_ZN4Atom3pbcEv(%class.Atom* nonnull %atom)
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %6 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %9 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 14
  %10 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 15
  %11 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 23
  %12 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %13 = bitcast double** %12 to i8**
  %14 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %15 = bitcast double** %14 to i8**
  %16 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  %17 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %20 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  br label %21

; <label>:21                                      ; preds = %.loopexit, %0
  %indvars.iv39 = phi i64 [ 0, %0 ], [ %indvars.iv.next40, %.loopexit ]
  %iswap.026 = phi i32 [ 0, %0 ], [ %iswap.2, %.loopexit ]
  %22 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 25, i64 %indvars.iv39
  %23 = load i32, i32* %22, align 4, !tbaa !1
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv39
  %27 = load i32, i32* %26, align 4, !tbaa !1
  %28 = shl i32 %27, 1
  %29 = add nsw i32 %28, %iswap.026
  br label %.loopexit

; <label>:30                                      ; preds = %21
  store i32 0, i32* %nsend, align 4, !tbaa !1
  %31 = trunc i64 %indvars.iv39 to i32
  switch i32 %31, label %33 [
    i32 0, label %34
    i32 1, label %32
  ]

; <label>:32                                      ; preds = %30
  br label %34

; <label>:33                                      ; preds = %30
  br label %34

; <label>:34                                      ; preds = %33, %32, %30
  %lo.0.in = phi double* [ %19, %32 ], [ %5, %33 ], [ %17, %30 ]
  %hi.0.in = phi double* [ %20, %32 ], [ %6, %33 ], [ %18, %30 ]
  %hi.0 = load double, double* %hi.0.in, align 8, !tbaa !32
  %lo.0 = load double, double* %lo.0.in, align 8, !tbaa !32
  %35 = load double*, double** %7, align 8, !tbaa !80
  %36 = load i32, i32* %8, align 4, !tbaa !88
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %.lr.ph.preheader, label %.outer2._crit_edge

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.outer2, %.lr.ph.preheader
  %i.0.ph8 = phi i32 [ %48, %.outer2 ], [ 0, %.lr.ph.preheader ]
  %nlocal.0.ph7 = phi i32 [ %60, %.outer2 ], [ %36, %.lr.ph.preheader ]
  %38 = sext i32 %i.0.ph8 to i64
  br label %39

; <label>:39                                      ; preds = %62, %.lr.ph
  %indvars.iv = phi i64 [ %38, %.lr.ph ], [ %indvars.iv.next, %62 ]
  %i.05 = phi i32 [ %i.0.ph8, %.lr.ph ], [ %63, %62 ]
  %40 = mul nsw i32 %i.05, 3
  %41 = add nsw i32 %40, %31
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %35, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = fcmp uge double %44, %lo.0
  %46 = fcmp ult double %44, %hi.0
  %or.cond = and i1 %45, %46
  br i1 %or.cond, label %62, label %47

; <label>:47                                      ; preds = %39
  %48 = trunc i64 %indvars.iv to i32
  %49 = load i32, i32* %nsend, align 4, !tbaa !1
  %50 = load i32, i32* %16, align 8, !tbaa !204
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %.outer2

; <label>:52                                      ; preds = %47
  call void @_ZN4Comm8growsendEi(%class.Comm* nonnull %this, i32 %49)
  %.pre = load i32, i32* %nsend, align 4, !tbaa !1
  br label %.outer2

.outer2:                                          ; preds = %52, %47
  %53 = phi i32 [ %.pre, %52 ], [ %49, %47 ]
  %54 = sext i32 %53 to i64
  %55 = load double*, double** %14, align 8, !tbaa !143
  %56 = getelementptr inbounds double, double* %55, i64 %54
  %57 = call i32 @_ZN4Atom13pack_exchangeEiPd(%class.Atom* nonnull %atom, i32 %48, double* %56)
  %58 = load i32, i32* %nsend, align 4, !tbaa !1
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %nsend, align 4, !tbaa !1
  %60 = add nsw i32 %nlocal.0.ph7, -1
  call void @_ZN4Atom4copyEii(%class.Atom* nonnull %atom, i32 %60, i32 %48)
  %61 = icmp slt i32 %48, %60
  br i1 %61, label %.lr.ph, label %.outer2._crit_edge.loopexit5

; <label>:62                                      ; preds = %39
  %63 = add nsw i32 %i.05, 1
  %64 = icmp slt i32 %63, %nlocal.0.ph7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %64, label %39, label %.outer2._crit_edge.loopexit

.outer2._crit_edge.loopexit:                      ; preds = %62
  br label %.outer2._crit_edge

.outer2._crit_edge.loopexit5:                     ; preds = %.outer2
  br label %.outer2._crit_edge

.outer2._crit_edge:                               ; preds = %.outer2._crit_edge.loopexit5, %.outer2._crit_edge.loopexit, %34
  %nlocal.0.ph.lcssa = phi i32 [ %36, %34 ], [ %nlocal.0.ph7, %.outer2._crit_edge.loopexit ], [ %60, %.outer2._crit_edge.loopexit5 ]
  store i32 %nlocal.0.ph.lcssa, i32* %8, align 4, !tbaa !88
  %65 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv39
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %.lr.ph21.preheader, label %.loopexit

.lr.ph21.preheader:                               ; preds = %.outer2._crit_edge
  %68 = sext i32 %iswap.026 to i64
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %124, %.lr.ph21.preheader
  %69 = phi i32 [ %66, %.lr.ph21.preheader ], [ %125, %124 ]
  %indvars.iv37 = phi i64 [ %68, %.lr.ph21.preheader ], [ %indvars.iv.next38, %124 ]
  %ineed.019 = phi i32 [ 0, %.lr.ph21.preheader ], [ %127, %124 ]
  %iswap.118 = phi i32 [ %iswap.026, %.lr.ph21.preheader ], [ %126, %124 ]
  %70 = load i32, i32* %22, align 4, !tbaa !1
  %71 = add nsw i32 %70, -1
  %72 = icmp slt i32 %ineed.019, %71
  br i1 %72, label %73, label %124

; <label>:73                                      ; preds = %.lr.ph21
  %74 = load i32*, i32** %9, align 8, !tbaa !214
  %75 = getelementptr inbounds i32, i32* %74, i64 %indvars.iv37
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = call i32 @MPI_Send(i8* %1, i32 1, i32 1275069445, i32 %76, i32 0, i32 1140850688)
  %78 = load i32*, i32** %10, align 8, !tbaa !215
  %79 = getelementptr inbounds i32, i32* %78, i64 %indvars.iv37
  %80 = load i32, i32* %79, align 4, !tbaa !1
  %81 = call i32 @MPI_Recv(i8* %2, i32 1, i32 1275069445, i32 %80, i32 0, i32 1140850688, %class.ThreadData* nonnull %status)
  %82 = load i32, i32* %nrecv, align 4, !tbaa !1
  %83 = load i32, i32* %11, align 4, !tbaa !205
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %73
  call void @_ZN4Comm8growrecvEi(%class.Comm* nonnull %this, i32 %82)
  %.pre1 = load i32, i32* %nrecv, align 4, !tbaa !1
  br label %86

; <label>:86                                      ; preds = %85, %73
  %87 = phi i32 [ %.pre1, %85 ], [ %82, %73 ]
  %88 = load i8*, i8** %13, align 8, !tbaa !146
  %89 = load i32*, i32** %10, align 8, !tbaa !215
  %90 = getelementptr inbounds i32, i32* %89, i64 %indvars.iv37
  %91 = load i32, i32* %90, align 4, !tbaa !1
  %92 = call i32 @MPI_Irecv(i8* %88, i32 %87, i32 1275070475, i32 %91, i32 0, i32 1140850688, i32* nonnull %request)
  %93 = load i8*, i8** %15, align 8, !tbaa !143
  %94 = load i32, i32* %nsend, align 4, !tbaa !1
  %95 = load i32*, i32** %9, align 8, !tbaa !214
  %96 = getelementptr inbounds i32, i32* %95, i64 %indvars.iv37
  %97 = load i32, i32* %96, align 4, !tbaa !1
  %98 = call i32 @MPI_Send(i8* %93, i32 %94, i32 1275070475, i32 %97, i32 0, i32 1140850688)
  %99 = call i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
  %100 = load i32, i32* %8, align 4, !tbaa !88
  %101 = load i32, i32* %nrecv, align 4, !tbaa !1
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %.lr.ph11.preheader, label %.outer._crit_edge

.lr.ph11.preheader:                               ; preds = %86
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.outer
  %103 = phi i32 [ %116, %.outer ], [ %101, %.lr.ph11.preheader ]
  %m.0.ph16 = phi i32 [ %115, %.outer ], [ 0, %.lr.ph11.preheader ]
  %n.0.ph15 = phi i32 [ %111, %.outer ], [ %100, %.lr.ph11.preheader ]
  %.pre2 = load double*, double** %12, align 8, !tbaa !146
  br label %104

; <label>:104                                     ; preds = %118, %.lr.ph11
  %m.010 = phi i32 [ %m.0.ph16, %.lr.ph11 ], [ %122, %118 ]
  %105 = add nsw i32 %m.010, %31
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %.pre2, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !32
  %109 = fcmp oge double %108, %lo.0
  %110 = fcmp olt double %108, %hi.0
  %or.cond1 = and i1 %109, %110
  br i1 %or.cond1, label %.outer, label %118

.outer:                                           ; preds = %104
  %111 = add nsw i32 %n.0.ph15, 1
  %112 = sext i32 %m.010 to i64
  %113 = getelementptr inbounds double, double* %.pre2, i64 %112
  %114 = call i32 @_ZN4Atom15unpack_exchangeEiPd(%class.Atom* nonnull %atom, i32 %n.0.ph15, double* %113)
  %115 = add nsw i32 %114, %m.010
  %116 = load i32, i32* %nrecv, align 4, !tbaa !1
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %.lr.ph11, label %.outer._crit_edge.loopexit4

; <label>:118                                     ; preds = %104
  %119 = sext i32 %m.010 to i64
  %120 = getelementptr inbounds double, double* %.pre2, i64 %119
  %121 = call i32 @_ZN4Atom13skip_exchangeEPd(%class.Atom* nonnull %atom, double* %120)
  %122 = add nsw i32 %121, %m.010
  %123 = icmp slt i32 %122, %103
  br i1 %123, label %104, label %.outer._crit_edge.loopexit

.outer._crit_edge.loopexit:                       ; preds = %118
  br label %.outer._crit_edge

.outer._crit_edge.loopexit4:                      ; preds = %.outer
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit4, %.outer._crit_edge.loopexit, %86
  %n.0.ph.lcssa = phi i32 [ %100, %86 ], [ %n.0.ph15, %.outer._crit_edge.loopexit ], [ %111, %.outer._crit_edge.loopexit4 ]
  store i32 %n.0.ph.lcssa, i32* %8, align 4, !tbaa !88
  %.pre3 = load i32, i32* %65, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %.outer._crit_edge, %.lr.ph21
  %125 = phi i32 [ %.pre3, %.outer._crit_edge ], [ %69, %.lr.ph21 ]
  %126 = add nsw i32 %iswap.118, 1
  %127 = add nuw nsw i32 %ineed.019, 1
  %128 = shl nsw i32 %125, 1
  %129 = icmp slt i32 %127, %128
  %indvars.iv.next38 = add i64 %indvars.iv37, 1
  br i1 %129, label %.lr.ph21, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %124
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.outer2._crit_edge, %25
  %iswap.2 = phi i32 [ %29, %25 ], [ %iswap.026, %.outer2._crit_edge ], [ %126, %.loopexit.loopexit ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond = icmp eq i64 %indvars.iv.next40, 3
  br i1 %exitcond, label %130, label %21

; <label>:130                                     ; preds = %.loopexit
  call void @llvm.lifetime.end(i64 20, i8* %4) #8
  call void @llvm.lifetime.end(i64 4, i8* %3) #8
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN4Comm8growsendEi(%class.Comm* nocapture %this, i32 %n) #11 align 2 {
  %1 = sitofp i32 %n to double
  %2 = fmul double %1, 1.500000e+00
  %3 = fptosi double %2 to i32
  %4 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  store i32 %3, i32* %4, align 8, !tbaa !204
  %5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %6 = bitcast double** %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !143
  %8 = add nsw i32 %3, 100
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call i8* @realloc(i8* %7, i64 %10) #8
  store i8* %11, i8** %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #5

declare i32 @MPI_Recv(i8*, i32, i32, i32, i32, i32, %class.ThreadData*) #2

; Function Attrs: nounwind uwtable
define void @_ZN4Comm8growrecvEi(%class.Comm* nocapture %this, i32 %n) #11 align 2 {
  %1 = sitofp i32 %n to double
  %2 = fmul double %1, 1.500000e+00
  %3 = fptosi double %2 to i32
  %4 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 23
  store i32 %3, i32* %4, align 4, !tbaa !205
  %5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %6 = bitcast double** %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !146
  tail call void @free(i8* %7) #8
  %8 = load i32, i32* %4, align 4, !tbaa !205
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias i8* @malloc(i64 %10) #8
  store i8* %11, i8** %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() #5

; Function Attrs: uwtable
define void @_ZN4Comm7bordersER4Atom(%class.Comm* %this, %class.Atom* dereferenceable(224) %atom) #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %nsend = alloca i32, align 4
  %nrecv = alloca i32, align 4
  %pbc_flags = alloca [4 x i32], align 16
  %request = alloca i32, align 4
  %status = alloca %class.ThreadData, align 4
  %1 = tail call i32 @__kmpc_global_thread_num(%ident_t* nonnull @19)
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.omp.lb7 = alloca i32, align 4
  %.omp.ub8 = alloca i32, align 4
  %.omp.stride9 = alloca i32, align 4
  %.omp.is_last10 = alloca i32, align 4
  %.omp.lb16 = alloca i32, align 4
  %.omp.ub17 = alloca i32, align 4
  %.omp.stride18 = alloca i32, align 4
  %.omp.is_last19 = alloca i32, align 4
  %2 = bitcast i32* %nsend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  %3 = bitcast i32* %nrecv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #8
  %4 = bitcast [4 x i32]* %pbc_flags to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #8
  %5 = bitcast i32* %request to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  %6 = bitcast %class.ThreadData* %status to i8*
  call void @llvm.lifetime.start(i64 20, i8* %6) #8
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  store i32 0, i32* %7, align 8, !tbaa !112
  %8 = tail call i32 @omp_get_thread_num() #8
  %9 = tail call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %..preheader24_crit_edge, label %11

..preheader24_crit_edge:                          ; preds = %0
  %.pre8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %.pre9 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 29
  br label %.preheader24

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !88
  %14 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 42
  %15 = load i32, i32* %14, align 4, !tbaa !207
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %31

; <label>:17                                      ; preds = %11
  %18 = sext i32 %13 to i64
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %18, i64 4)
  %20 = extractvalue { i64, i1 } %19, 1
  %21 = extractvalue { i64, i1 } %19, 0
  %22 = select i1 %20, i64 -1, i64 %21
  %23 = invoke noalias i8* @_Znam(i64 %22) #20
          to label %24 unwind label %28

; <label>:24                                      ; preds = %17
  %25 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 39
  %26 = bitcast i32** %25 to i8**
  store i8* %23, i8** %26, align 8, !tbaa !219
  %27 = load i32, i32* %12, align 4, !tbaa !88
  store i32 %27, i32* %14, align 4, !tbaa !207
  br label %31

; <label>:28                                      ; preds = %58, %54, %50, %46, %39, %17
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  tail call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %472

; <label>:31                                      ; preds = %24, %11
  %32 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 41
  %33 = load i32, i32* %32, align 8, !tbaa !206
  %34 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 29
  %35 = load %class.ThreadData*, %class.ThreadData** %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %35, i64 0, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !17
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %.loopexit

; <label>:39                                      ; preds = %31
  store i32 %37, i32* %32, align 8, !tbaa !206
  %40 = sext i32 %37 to i64
  %41 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %40, i64 4)
  %42 = extractvalue { i64, i1 } %41, 1
  %43 = extractvalue { i64, i1 } %41, 0
  %44 = select i1 %42, i64 -1, i64 %43
  %45 = invoke noalias i8* @_Znam(i64 %44) #20
          to label %46 unwind label %28

; <label>:46                                      ; preds = %39
  %47 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 35
  %48 = bitcast i32** %47 to i8**
  store i8* %45, i8** %48, align 8, !tbaa !220
  %49 = invoke noalias i8* @_Znam(i64 %44) #20
          to label %50 unwind label %28

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 36
  %52 = bitcast i32** %51 to i8**
  store i8* %49, i8** %52, align 8, !tbaa !221
  %53 = invoke noalias i8* @_Znam(i64 %44) #20
          to label %54 unwind label %28

; <label>:54                                      ; preds = %50
  %55 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 37
  %56 = bitcast i32** %55 to i8**
  store i8* %53, i8** %56, align 8, !tbaa !222
  %57 = invoke noalias i8* @_Znam(i64 %44) #20
          to label %58 unwind label %28

; <label>:58                                      ; preds = %54
  %59 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 40
  %60 = bitcast i32** %59 to i8**
  store i8* %57, i8** %60, align 8, !tbaa !223
  %61 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %40, i64 8)
  %62 = extractvalue { i64, i1 } %61, 1
  %63 = extractvalue { i64, i1 } %61, 0
  %64 = select i1 %62, i64 -1, i64 %63
  %65 = ptrtoint i8* %57 to i64
  %66 = inttoptr i64 %65 to i32*
  %67 = invoke noalias i8* @_Znam(i64 %64) #20
          to label %68 unwind label %28

; <label>:68                                      ; preds = %58
  %69 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 38
  %70 = bitcast i32*** %69 to i8**
  store i8* %67, i8** %70, align 8, !tbaa !224
  %71 = icmp sgt i32 %37, 0
  br i1 %71, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %68
  %72 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  br label %73

; <label>:73                                      ; preds = %._crit_edge1, %.lr.ph68
  %74 = phi i32* [ %66, %.lr.ph68 ], [ %.pre, %._crit_edge1 ]
  %indvars.iv87 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next88, %._crit_edge1 ]
  %75 = load i32, i32* %72, align 8, !tbaa !204
  %76 = getelementptr inbounds i32, i32* %74, i64 %indvars.iv87
  store i32 %75, i32* %76, align 4, !tbaa !1
  %77 = load i32, i32* %72, align 8, !tbaa !204
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  %80 = tail call noalias i8* @malloc(i64 %79) #8
  %81 = load i32**, i32*** %69, align 8, !tbaa !224
  %82 = getelementptr inbounds i32*, i32** %81, i64 %indvars.iv87
  %83 = bitcast i32** %82 to i8**
  store i8* %80, i8** %83, align 8, !tbaa !5
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %84 = load i32, i32* %32, align 8, !tbaa !206
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %indvars.iv.next88, %85
  br i1 %86, label %._crit_edge1, label %.loopexit.loopexit

._crit_edge1:                                     ; preds = %73
  %.pre = load i32*, i32** %59, align 8, !tbaa !223
  br label %73

.loopexit.loopexit:                               ; preds = %73
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %68, %31
  tail call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %.preheader24

.preheader24:                                     ; preds = %..preheader24_crit_edge, %.loopexit
  %.pre-phi10 = phi %class.ThreadData** [ %.pre9, %..preheader24_crit_edge ], [ %34, %.loopexit ]
  %.pre-phi = phi i32* [ %.pre8, %..preheader24_crit_edge ], [ %12, %.loopexit ]
  %87 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 27
  %88 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 28
  %89 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 2
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 0
  %91 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 3
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 1
  %93 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 2
  %95 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 5
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %pbc_flags, i64 0, i64 3
  %97 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %98 = bitcast i32* %.omp.lb to i8*
  %99 = bitcast i32* %.omp.ub to i8*
  %100 = bitcast i32* %.omp.stride to i8*
  %101 = bitcast i32* %.omp.is_last to i8*
  %102 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 35
  %103 = bitcast i32* %.omp.lb7 to i8*
  %104 = bitcast i32* %.omp.ub8 to i8*
  %105 = bitcast i32* %.omp.stride9 to i8*
  %106 = bitcast i32* %.omp.is_last10 to i8*
  %107 = sext i32 %8 to i64
  %108 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 40
  %109 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 38
  %110 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 43
  %111 = bitcast i32* %.omp.lb16 to i8*
  %112 = bitcast i32* %.omp.ub17 to i8*
  %113 = bitcast i32* %.omp.stride18 to i8*
  %114 = bitcast i32* %.omp.is_last19 to i8*
  %115 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 21
  %116 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 6
  %117 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 7
  %118 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 14
  %119 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 8
  %120 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 9
  %121 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 15
  %122 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 10
  %123 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 11
  %124 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 16
  %125 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 12
  %126 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 0
  %127 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 19
  %128 = bitcast double** %127 to i64*
  %129 = bitcast double** %115 to i64*
  %130 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 13
  %131 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 16
  %132 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 23
  %133 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 20
  %134 = bitcast double** %133 to i8**
  %135 = bitcast double** %127 to i8**
  %136 = bitcast double** %133 to i64*
  %137 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 17
  %138 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 18
  %139 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 22
  br label %.preheader23

.preheader23:                                     ; preds = %._crit_edge59, %.preheader24
  %indvars.iv85 = phi i64 [ 0, %.preheader24 ], [ %indvars.iv.next86, %._crit_edge59 ]
  %iswap.065 = phi i32 [ 0, %.preheader24 ], [ %iswap.1.lcssa, %._crit_edge59 ]
  %nfirst.062 = phi i32 [ undef, %.preheader24 ], [ %nfirst.1.lcssa, %._crit_edge59 ]
  %140 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 26, i64 %indvars.iv85
  %141 = load i32, i32* %140, align 4, !tbaa !1
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.preheader23
  %143 = sext i32 %iswap.065 to i64
  %144 = trunc i64 %indvars.iv85 to i32
  br label %.lr.ph58

.preheader:                                       ; preds = %._crit_edge59
  %145 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 1
  %146 = load i32, i32* %145, align 4, !tbaa !141
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %148 = load i32*, i32** %122, align 8
  %149 = load i32*, i32** %123, align 8
  %150 = sext i32 %146 to i64
  br label %448

.lr.ph58:                                         ; preds = %441, %.lr.ph58.preheader
  %indvars.iv83 = phi i64 [ %143, %.lr.ph58.preheader ], [ %indvars.iv.next84, %441 ]
  %iswap.157 = phi i32 [ %iswap.065, %.lr.ph58.preheader ], [ %442, %441 ]
  %ineed.056 = phi i32 [ 0, %.lr.ph58.preheader ], [ %443, %441 ]
  %nfirst.155 = phi i32 [ %nfirst.062, %.lr.ph58.preheader ], [ %nfirst.2, %441 ]
  %nlast.054 = phi i32 [ 0, %.lr.ph58.preheader ], [ %nlast.1, %441 ]
  %151 = load double*, double** %87, align 8, !tbaa !208
  %152 = getelementptr inbounds double, double* %151, i64 %indvars.iv83
  %153 = load double, double* %152, align 8, !tbaa !32
  %154 = load double*, double** %88, align 8, !tbaa !209
  %155 = getelementptr inbounds double, double* %154, i64 %indvars.iv83
  %156 = load double, double* %155, align 8, !tbaa !32
  %157 = load i32*, i32** %89, align 8, !tbaa !210
  %158 = getelementptr inbounds i32, i32* %157, i64 %indvars.iv83
  %159 = load i32, i32* %158, align 4, !tbaa !1
  store i32 %159, i32* %90, align 16, !tbaa !1
  %160 = load i32*, i32** %91, align 8, !tbaa !211
  %161 = getelementptr inbounds i32, i32* %160, i64 %indvars.iv83
  %162 = load i32, i32* %161, align 4, !tbaa !1
  store i32 %162, i32* %92, align 4, !tbaa !1
  %163 = load i32*, i32** %93, align 8, !tbaa !212
  %164 = getelementptr inbounds i32, i32* %163, i64 %indvars.iv83
  %165 = load i32, i32* %164, align 4, !tbaa !1
  store i32 %165, i32* %94, align 8, !tbaa !1
  %166 = load i32*, i32** %95, align 8, !tbaa !213
  %167 = getelementptr inbounds i32, i32* %166, i64 %indvars.iv83
  %168 = load i32, i32* %167, align 4, !tbaa !1
  store i32 %168, i32* %96, align 4, !tbaa !1
  %169 = load double*, double** %97, align 8, !tbaa !80
  %170 = and i32 %ineed.056, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

; <label>:172                                     ; preds = %.lr.ph58
  %173 = load i32, i32* %.pre-phi, align 4, !tbaa !88
  %174 = load i32, i32* %7, align 8, !tbaa !112
  %175 = add nsw i32 %174, %173
  br label %176

; <label>:176                                     ; preds = %172, %.lr.ph58
  %nlast.1 = phi i32 [ %175, %172 ], [ %nlast.054, %.lr.ph58 ]
  %nfirst.2 = phi i32 [ %nlast.054, %172 ], [ %nfirst.155, %.lr.ph58 ]
  %177 = load %class.ThreadData*, %class.ThreadData** %.pre-phi10, align 8, !tbaa !21
  %178 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %177, i64 0, i32 3
  %179 = load i32, i32* %178, align 4, !tbaa !17
  %180 = add nsw i32 %179, -1
  %181 = icmp sgt i32 %179, 0
  br i1 %181, label %182, label %195

; <label>:182                                     ; preds = %176
  call void @llvm.lifetime.start(i64 4, i8* %98) #8
  store i32 0, i32* %.omp.lb, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %99) #8
  store i32 %180, i32* %.omp.ub, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %100) #8
  store i32 1, i32* %.omp.stride, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %101) #8
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %183 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %184 = icmp sgt i32 %183, %180
  %185 = select i1 %184, i32 %180, i32 %183
  store i32 %185, i32* %.omp.ub, align 4, !tbaa !1
  %186 = load i32, i32* %.omp.lb, align 4, !tbaa !1
  %187 = icmp sgt i32 %186, %185
  br i1 %187, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %182
  %188 = load i32*, i32** %102, align 8
  %189 = sext i32 %186 to i64
  br label %190

; <label>:190                                     ; preds = %190, %.lr.ph35
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %190 ], [ %189, %.lr.ph35 ]
  %191 = getelementptr inbounds i32, i32* %188, i64 %indvars.iv73
  store i32 0, i32* %191, align 4, !tbaa !1
  %192 = load i32, i32* %.omp.ub, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %indvars.iv73, %193
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  br i1 %194, label %190, label %._crit_edge36.loopexit

._crit_edge36.loopexit:                           ; preds = %190
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge36.loopexit, %182
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %195

; <label>:195                                     ; preds = %._crit_edge36, %176
  call void @llvm.lifetime.end(i64 4, i8* %101) #8
  call void @llvm.lifetime.end(i64 4, i8* %100) #8
  call void @llvm.lifetime.end(i64 4, i8* %99) #8
  call void @llvm.lifetime.end(i64 4, i8* %98) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  store i32 0, i32* %nsend, align 4, !tbaa !1
  %196 = sub nsw i32 %nlast.1, %nfirst.2
  %197 = add nsw i32 %196, -1
  %198 = icmp sgt i32 %nlast.1, %nfirst.2
  br i1 %198, label %199, label %248

; <label>:199                                     ; preds = %195
  call void @llvm.lifetime.start(i64 4, i8* %103) #8
  store i32 0, i32* %.omp.lb7, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %104) #8
  store i32 %197, i32* %.omp.ub8, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %105) #8
  store i32 1, i32* %.omp.stride9, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %106) #8
  store i32 0, i32* %.omp.is_last10, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last10, i32* nonnull %.omp.lb7, i32* nonnull %.omp.ub8, i32* nonnull %.omp.stride9, i32 1, i32 1)
  %200 = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  %201 = icmp sgt i32 %200, %197
  %202 = select i1 %201, i32 %197, i32 %200
  store i32 %202, i32* %.omp.ub8, align 4, !tbaa !1
  %203 = load i32, i32* %.omp.lb7, align 4, !tbaa !1
  %204 = icmp sgt i32 %203, %202
  br i1 %204, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %199
  %205 = sext i32 %203 to i64
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %243, %.lr.ph39.preheader
  %206 = phi i32 [ %202, %.lr.ph39.preheader ], [ %244, %243 ]
  %indvars.iv75 = phi i64 [ %205, %.lr.ph39.preheader ], [ %indvars.iv.next76, %243 ]
  %.omp.iv4.037 = phi i32 [ %203, %.lr.ph39.preheader ], [ %245, %243 ]
  %207 = add nsw i32 %.omp.iv4.037, %nfirst.2
  %208 = mul nsw i32 %207, 3
  %209 = add nsw i32 %208, %144
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %169, i64 %210
  %212 = load double, double* %211, align 8, !tbaa !32
  %213 = fcmp ult double %212, %153
  %214 = fcmp ugt double %212, %156
  %or.cond = or i1 %213, %214
  br i1 %or.cond, label %243, label %215

; <label>:215                                     ; preds = %.lr.ph39
  %216 = load i32, i32* %nsend, align 4, !tbaa !1
  %217 = load i32*, i32** %108, align 8, !tbaa !223
  %218 = getelementptr inbounds i32, i32* %217, i64 %107
  %219 = load i32, i32* %218, align 4, !tbaa !1
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %235, label %221

; <label>:221                                     ; preds = %215
  %222 = add nsw i32 %216, 100
  store i32 %222, i32* %218, align 4, !tbaa !1
  %223 = load i32**, i32*** %109, align 8, !tbaa !224
  %224 = getelementptr inbounds i32*, i32** %223, i64 %107
  %225 = bitcast i32** %224 to i8**
  %226 = load i8*, i8** %225, align 8, !tbaa !5
  %227 = load i32, i32* %nsend, align 4, !tbaa !1
  %228 = add nsw i32 %227, 100
  %229 = sext i32 %228 to i64
  %230 = shl nsw i64 %229, 2
  %231 = call i8* @realloc(i8* %226, i64 %230) #8
  %232 = load i32**, i32*** %109, align 8, !tbaa !224
  %233 = getelementptr inbounds i32*, i32** %232, i64 %107
  %234 = bitcast i32** %233 to i8**
  store i8* %231, i8** %234, align 8, !tbaa !5
  %.pre2 = load i32, i32* %nsend, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %221, %215
  %236 = phi i32 [ %.pre2, %221 ], [ %216, %215 ]
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %nsend, align 4, !tbaa !1
  %238 = sext i32 %236 to i64
  %239 = load i32**, i32*** %109, align 8, !tbaa !224
  %240 = getelementptr inbounds i32*, i32** %239, i64 %107
  %241 = load i32*, i32** %240, align 8, !tbaa !5
  %242 = getelementptr inbounds i32, i32* %241, i64 %238
  store i32 %207, i32* %242, align 4, !tbaa !1
  %.pre3 = load i32, i32* %.omp.ub8, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %235, %.lr.ph39
  %244 = phi i32 [ %.pre3, %235 ], [ %206, %.lr.ph39 ]
  %245 = add nsw i32 %.omp.iv4.037, 1
  %246 = sext i32 %244 to i64
  %247 = icmp slt i64 %indvars.iv75, %246
  %indvars.iv.next76 = add i64 %indvars.iv75, 1
  br i1 %247, label %.lr.ph39, label %._crit_edge40.loopexit

._crit_edge40.loopexit:                           ; preds = %243
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %199
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %248

; <label>:248                                     ; preds = %._crit_edge40, %195
  call void @llvm.lifetime.end(i64 4, i8* %106) #8
  call void @llvm.lifetime.end(i64 4, i8* %105) #8
  call void @llvm.lifetime.end(i64 4, i8* %104) #8
  call void @llvm.lifetime.end(i64 4, i8* %103) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  %249 = load i32, i32* %nsend, align 4, !tbaa !1
  %250 = load i32*, i32** %102, align 8, !tbaa !220
  %251 = getelementptr inbounds i32, i32* %250, i64 %107
  store i32 %249, i32* %251, align 4, !tbaa !1
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %252 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %278, label %.preheader22

.preheader22:                                     ; preds = %248
  %254 = load %class.ThreadData*, %class.ThreadData** %.pre-phi10, align 8, !tbaa !21
  %255 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %254, i64 0, i32 3
  %256 = load i32, i32* %255, align 4, !tbaa !17
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader22
  %258 = load i32*, i32** %102, align 8
  br label %263

._crit_edge44.loopexit:                           ; preds = %263
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit, %.preheader22
  %total_nsend.0.lcssa = phi i32 [ 0, %.preheader22 ], [ %266, %._crit_edge44.loopexit ]
  %259 = load i32*, i32** %138, align 8, !tbaa !218
  %260 = getelementptr inbounds i32, i32* %259, i64 %indvars.iv83
  %261 = load i32, i32* %260, align 4, !tbaa !1
  %262 = icmp sgt i32 %total_nsend.0.lcssa, %261
  br i1 %262, label %270, label %272

; <label>:263                                     ; preds = %263, %.lr.ph43
  %indvars.iv77 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next78, %263 ]
  %total_nsend.041 = phi i32 [ 0, %.lr.ph43 ], [ %266, %263 ]
  %264 = getelementptr inbounds i32, i32* %258, i64 %indvars.iv77
  %265 = load i32, i32* %264, align 4, !tbaa !1
  %266 = add nsw i32 %265, %total_nsend.041
  store i32 %266, i32* %264, align 4, !tbaa !1
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %267 = load i32, i32* %255, align 4, !tbaa !17
  %268 = sext i32 %267 to i64
  %269 = icmp slt i64 %indvars.iv.next78, %268
  br i1 %269, label %263, label %._crit_edge44.loopexit

; <label>:270                                     ; preds = %._crit_edge44
  %271 = trunc i64 %indvars.iv83 to i32
  call void @_ZN4Comm8growlistEii(%class.Comm* nonnull %this, i32 %271, i32 %total_nsend.0.lcssa)
  br label %272

; <label>:272                                     ; preds = %270, %._crit_edge44
  %273 = shl nsw i32 %total_nsend.0.lcssa, 2
  %274 = load i32, i32* %139, align 8, !tbaa !204
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %272
  call void @_ZN4Comm8growsendEi(%class.Comm* nonnull %this, i32 %273)
  br label %277

; <label>:277                                     ; preds = %276, %272
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %278

; <label>:278                                     ; preds = %277, %248
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %279 = load i32, i32* %nsend, align 4, !tbaa !1
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %278
  br label %.lr.ph48

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %278
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %281 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %376, label %319

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph48 ], [ 0, %.lr.ph48.preheader ]
  %283 = phi i32 [ %316, %.lr.ph48 ], [ %279, %.lr.ph48.preheader ]
  %284 = load i32**, i32*** %109, align 8, !tbaa !224
  %285 = getelementptr inbounds i32*, i32** %284, i64 %107
  %286 = load i32*, i32** %285, align 8, !tbaa !5
  %287 = getelementptr inbounds i32, i32* %286, i64 %indvars.iv79
  %288 = load i32, i32* %287, align 4, !tbaa !1
  %289 = load i32*, i32** %102, align 8, !tbaa !220
  %290 = getelementptr inbounds i32, i32* %289, i64 %107
  %291 = load i32, i32* %290, align 4, !tbaa !1
  %292 = trunc i64 %indvars.iv79 to i32
  %293 = sub i32 %292, %283
  %294 = add i32 %293, %291
  %295 = shl nsw i32 %294, 2
  %296 = sext i32 %295 to i64
  %297 = load double*, double** %127, align 8, !tbaa !143
  %298 = getelementptr inbounds double, double* %297, i64 %296
  %299 = call i32 @_ZN4Atom11pack_borderEiPdPi(%class.Atom* nonnull %atom, i32 %288, double* %298, i32* %90)
  %300 = load i32**, i32*** %109, align 8, !tbaa !224
  %301 = getelementptr inbounds i32*, i32** %300, i64 %107
  %302 = load i32*, i32** %301, align 8, !tbaa !5
  %303 = getelementptr inbounds i32, i32* %302, i64 %indvars.iv79
  %304 = load i32, i32* %303, align 4, !tbaa !1
  %305 = load i32*, i32** %102, align 8, !tbaa !220
  %306 = getelementptr inbounds i32, i32* %305, i64 %107
  %307 = load i32, i32* %306, align 4, !tbaa !1
  %308 = add nsw i32 %307, %292
  %309 = load i32, i32* %nsend, align 4, !tbaa !1
  %310 = sub i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = load i32**, i32*** %137, align 8, !tbaa !144
  %313 = getelementptr inbounds i32*, i32** %312, i64 %indvars.iv83
  %314 = load i32*, i32** %313, align 8, !tbaa !5
  %315 = getelementptr inbounds i32, i32* %314, i64 %311
  store i32 %304, i32* %315, align 4, !tbaa !1
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %316 = load i32, i32* %nsend, align 4, !tbaa !1
  %317 = sext i32 %316 to i64
  %318 = icmp slt i64 %indvars.iv.next80, %317
  br i1 %318, label %.lr.ph48, label %._crit_edge49.loopexit

; <label>:319                                     ; preds = %._crit_edge49
  %320 = load %class.ThreadData*, %class.ThreadData** %.pre-phi10, align 8, !tbaa !21
  %321 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %320, i64 0, i32 3
  %322 = load i32, i32* %321, align 4, !tbaa !17
  %323 = add nsw i32 %322, -1
  %324 = sext i32 %323 to i64
  %325 = load i32*, i32** %102, align 8, !tbaa !220
  %326 = getelementptr inbounds i32, i32* %325, i64 %324
  %327 = load i32, i32* %326, align 4, !tbaa !1
  store i32 %327, i32* %nsend, align 4, !tbaa !1
  %328 = load i32*, i32** %125, align 8, !tbaa !145
  %329 = getelementptr inbounds i32, i32* %328, i64 %indvars.iv83
  %330 = load i32, i32* %329, align 4, !tbaa !1
  %331 = load i32, i32* %126, align 8, !tbaa !95
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %372, label %333

; <label>:333                                     ; preds = %319
  %334 = invoke i32 @MPI_Send(i8* nonnull %2, i32 1, i32 1275069445, i32 %330, i32 0, i32 1140850688)
          to label %335 unwind label %347

; <label>:335                                     ; preds = %333
  %336 = load i32*, i32** %130, align 8, !tbaa !148
  %337 = getelementptr inbounds i32, i32* %336, i64 %indvars.iv83
  %338 = load i32, i32* %337, align 4, !tbaa !1
  %339 = invoke i32 @MPI_Recv(i8* %3, i32 1, i32 1275069445, i32 %338, i32 0, i32 1140850688, %class.ThreadData* nonnull %status)
          to label %340 unwind label %347

; <label>:340                                     ; preds = %335
  %341 = load i32, i32* %nrecv, align 4, !tbaa !1
  %342 = load i32, i32* %131, align 8, !tbaa !98
  %343 = mul nsw i32 %342, %341
  %344 = load i32, i32* %132, align 4, !tbaa !205
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %350

; <label>:346                                     ; preds = %340
  call void @_ZN4Comm8growrecvEi(%class.Comm* nonnull %this, i32 %343)
  %.pre4 = load i32, i32* %nrecv, align 4, !tbaa !1
  %.pre5 = load i32, i32* %131, align 8, !tbaa !98
  br label %350

; <label>:347                                     ; preds = %368, %359, %350, %335, %333
  %348 = landingpad { i8*, i32 }
          catch i8* null
  %349 = extractvalue { i8*, i32 } %348, 0
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %472

; <label>:350                                     ; preds = %346, %340
  %351 = phi i32 [ %.pre5, %346 ], [ %342, %340 ]
  %352 = phi i32 [ %.pre4, %346 ], [ %341, %340 ]
  %353 = load i8*, i8** %134, align 8, !tbaa !146
  %354 = mul nsw i32 %351, %352
  %355 = load i32*, i32** %130, align 8, !tbaa !148
  %356 = getelementptr inbounds i32, i32* %355, i64 %indvars.iv83
  %357 = load i32, i32* %356, align 4, !tbaa !1
  %358 = invoke i32 @MPI_Irecv(i8* %353, i32 %354, i32 1275070475, i32 %357, i32 0, i32 1140850688, i32* nonnull %request)
          to label %359 unwind label %347

; <label>:359                                     ; preds = %350
  %360 = load i8*, i8** %135, align 8, !tbaa !143
  %361 = load i32, i32* %nsend, align 4, !tbaa !1
  %362 = load i32, i32* %131, align 8, !tbaa !98
  %363 = mul nsw i32 %362, %361
  %364 = load i32*, i32** %125, align 8, !tbaa !145
  %365 = getelementptr inbounds i32, i32* %364, i64 %indvars.iv83
  %366 = load i32, i32* %365, align 4, !tbaa !1
  %367 = invoke i32 @MPI_Send(i8* %360, i32 %363, i32 1275070475, i32 %366, i32 0, i32 1140850688)
          to label %368 unwind label %347

; <label>:368                                     ; preds = %359
  %369 = invoke i32 @MPI_Wait(i32* nonnull %request, %class.ThreadData* nonnull %status)
          to label %370 unwind label %347

; <label>:370                                     ; preds = %368
  %371 = load i64, i64* %136, align 8, !tbaa !146
  store i64 %371, i64* %129, align 8, !tbaa !226
  %.pre6 = load i32, i32* %nrecv, align 4, !tbaa !1
  br label %374

; <label>:372                                     ; preds = %319
  store i32 %327, i32* %nrecv, align 4, !tbaa !1
  %373 = load i64, i64* %128, align 8, !tbaa !143
  store i64 %373, i64* %129, align 8, !tbaa !226
  br label %374

; <label>:374                                     ; preds = %372, %370
  %375 = phi i32 [ %327, %372 ], [ %.pre6, %370 ]
  store i32 %375, i32* %110, align 8, !tbaa !225
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %376

; <label>:376                                     ; preds = %374, %._crit_edge49
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %377 = load i32, i32* %.pre-phi, align 4, !tbaa !88
  %378 = load i32, i32* %7, align 8, !tbaa !112
  %379 = add nsw i32 %378, %377
  %380 = load i32, i32* %110, align 8, !tbaa !225
  store i32 %380, i32* %nrecv, align 4, !tbaa !1
  %381 = add nsw i32 %380, -1
  %382 = icmp sgt i32 %380, 0
  br i1 %382, label %383, label %403

; <label>:383                                     ; preds = %376
  call void @llvm.lifetime.start(i64 4, i8* %111) #8
  store i32 0, i32* %.omp.lb16, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %112) #8
  store i32 %381, i32* %.omp.ub17, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %113) #8
  store i32 1, i32* %.omp.stride18, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 4, i8* %114) #8
  store i32 0, i32* %.omp.is_last19, align 4, !tbaa !1
  call void @__kmpc_for_static_init_4(%ident_t* nonnull @19, i32 %1, i32 34, i32* nonnull %.omp.is_last19, i32* nonnull %.omp.lb16, i32* nonnull %.omp.ub17, i32* nonnull %.omp.stride18, i32 1, i32 1)
  %384 = load i32, i32* %.omp.ub17, align 4, !tbaa !1
  %385 = icmp sgt i32 %384, %381
  %386 = select i1 %385, i32 %381, i32 %384
  store i32 %386, i32* %.omp.ub17, align 4, !tbaa !1
  %387 = load i32, i32* %.omp.lb16, align 4, !tbaa !1
  %388 = icmp sgt i32 %387, %386
  br i1 %388, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %383
  %389 = sext i32 %387 to i64
  %390 = zext i32 %379 to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %399, %.lr.ph52.preheader
  %indvars.iv81 = phi i64 [ %389, %.lr.ph52.preheader ], [ %indvars.iv.next82, %399 ]
  %391 = add i64 %390, %indvars.iv81
  %392 = trunc i64 %indvars.iv81 to i32
  %393 = shl nsw i32 %392, 2
  %394 = sext i32 %393 to i64
  %395 = load double*, double** %115, align 8, !tbaa !226
  %396 = getelementptr inbounds double, double* %395, i64 %394
  %397 = trunc i64 %391 to i32
  %398 = invoke i32 @_ZN4Atom13unpack_borderEiPd(%class.Atom* nonnull %atom, i32 %397, double* %396)
          to label %399 unwind label %469

; <label>:399                                     ; preds = %.lr.ph52
  %400 = load i32, i32* %.omp.ub17, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = icmp slt i64 %indvars.iv81, %401
  %indvars.iv.next82 = add i64 %indvars.iv81, 1
  br i1 %402, label %.lr.ph52, label %._crit_edge53.loopexit

._crit_edge53.loopexit:                           ; preds = %399
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %383
  call void @__kmpc_for_static_fini(%ident_t* nonnull @19, i32 %1)
  br label %403

; <label>:403                                     ; preds = %._crit_edge53, %376
  call void @llvm.lifetime.end(i64 4, i8* %114) #8
  call void @llvm.lifetime.end(i64 4, i8* %113) #8
  call void @llvm.lifetime.end(i64 4, i8* %112) #8
  call void @llvm.lifetime.end(i64 4, i8* %111) #8
  call void @__kmpc_barrier(%ident_t* nonnull @21, i32 %1)
  %404 = call i32 @__kmpc_master(%ident_t* nonnull @19, i32 %1)
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %441, label %406

; <label>:406                                     ; preds = %403
  %407 = load i32, i32* %nsend, align 4, !tbaa !1
  %408 = load i32*, i32** %116, align 8, !tbaa !142
  %409 = getelementptr inbounds i32, i32* %408, i64 %indvars.iv83
  store i32 %407, i32* %409, align 4, !tbaa !1
  %410 = load i32, i32* %nrecv, align 4, !tbaa !1
  %411 = load i32*, i32** %117, align 8, !tbaa !150
  %412 = getelementptr inbounds i32, i32* %411, i64 %indvars.iv83
  store i32 %410, i32* %412, align 4, !tbaa !1
  %413 = load i32, i32* %nsend, align 4, !tbaa !1
  %414 = load i32, i32* %118, align 8, !tbaa !96
  %415 = mul nsw i32 %414, %413
  %416 = load i32*, i32** %119, align 8, !tbaa !149
  %417 = getelementptr inbounds i32, i32* %416, i64 %indvars.iv83
  store i32 %415, i32* %417, align 4, !tbaa !1
  %418 = load i32, i32* %nrecv, align 4, !tbaa !1
  %419 = load i32, i32* %118, align 8, !tbaa !96
  %420 = mul nsw i32 %419, %418
  %421 = load i32*, i32** %120, align 8, !tbaa !147
  %422 = getelementptr inbounds i32, i32* %421, i64 %indvars.iv83
  store i32 %420, i32* %422, align 4, !tbaa !1
  %423 = load i32, i32* %nrecv, align 4, !tbaa !1
  %424 = load i32, i32* %121, align 4, !tbaa !97
  %425 = mul nsw i32 %424, %423
  %426 = load i32*, i32** %122, align 8, !tbaa !216
  %427 = getelementptr inbounds i32, i32* %426, i64 %indvars.iv83
  store i32 %425, i32* %427, align 4, !tbaa !1
  %428 = load i32, i32* %nsend, align 4, !tbaa !1
  %429 = load i32, i32* %121, align 4, !tbaa !97
  %430 = mul nsw i32 %429, %428
  %431 = load i32*, i32** %123, align 8, !tbaa !217
  %432 = getelementptr inbounds i32, i32* %431, i64 %indvars.iv83
  store i32 %430, i32* %432, align 4, !tbaa !1
  %433 = load i32, i32* %.pre-phi, align 4, !tbaa !88
  %434 = load i32, i32* %7, align 8, !tbaa !112
  %435 = add nsw i32 %434, %433
  %436 = load i32*, i32** %124, align 8, !tbaa !151
  %437 = getelementptr inbounds i32, i32* %436, i64 %indvars.iv83
  store i32 %435, i32* %437, align 4, !tbaa !1
  %438 = load i32, i32* %nrecv, align 4, !tbaa !1
  %439 = load i32, i32* %7, align 8, !tbaa !112
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %7, align 8, !tbaa !112
  call void @__kmpc_end_master(%ident_t* nonnull @19, i32 %1)
  br label %441

; <label>:441                                     ; preds = %406, %403
  call void @__kmpc_barrier(%ident_t* nonnull @20, i32 %1)
  %442 = add nsw i32 %iswap.157, 1
  %443 = add nuw nsw i32 %ineed.056, 1
  %444 = load i32, i32* %140, align 4, !tbaa !1
  %445 = shl nsw i32 %444, 1
  %446 = icmp slt i32 %443, %445
  %indvars.iv.next84 = add i64 %indvars.iv83, 1
  br i1 %446, label %.lr.ph58, label %._crit_edge59.loopexit

._crit_edge59.loopexit:                           ; preds = %441
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader23
  %iswap.1.lcssa = phi i32 [ %iswap.065, %.preheader23 ], [ %442, %._crit_edge59.loopexit ]
  %nfirst.1.lcssa = phi i32 [ %nfirst.062, %.preheader23 ], [ %nfirst.2, %._crit_edge59.loopexit ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %447 = icmp slt i64 %indvars.iv.next86, 3
  br i1 %447, label %.preheader23, label %.preheader

; <label>:448                                     ; preds = %448, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %448 ]
  %max2.031 = phi i32 [ 0, %.lr.ph ], [ %455, %448 ]
  %max1.030 = phi i32 [ 0, %.lr.ph ], [ %max1.0., %448 ]
  %449 = getelementptr inbounds i32, i32* %148, i64 %indvars.iv
  %450 = load i32, i32* %449, align 4, !tbaa !1
  %451 = icmp sgt i32 %max1.030, %450
  %max1.0. = select i1 %451, i32 %max1.030, i32 %450
  %452 = getelementptr inbounds i32, i32* %149, i64 %indvars.iv
  %453 = load i32, i32* %452, align 4, !tbaa !1
  %454 = icmp sgt i32 %max2.031, %453
  %455 = select i1 %454, i32 %max2.031, i32 %453
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %456 = icmp slt i64 %indvars.iv.next, %150
  br i1 %456, label %448, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %448
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %max2.0.lcssa = phi i32 [ 0, %.preheader ], [ %455, %._crit_edge.loopexit ]
  %max1.0.lcssa = phi i32 [ 0, %.preheader ], [ %max1.0., %._crit_edge.loopexit ]
  %457 = bitcast i32* %139 to i64*
  %458 = load i64, i64* %457, align 8
  %459 = trunc i64 %458 to i32
  %460 = icmp sgt i32 %max1.0.lcssa, %459
  %461 = lshr i64 %458, 32
  %462 = trunc i64 %461 to i32
  br i1 %460, label %463, label %464

; <label>:463                                     ; preds = %._crit_edge
  call void @_ZN4Comm8growsendEi(%class.Comm* nonnull %this, i32 %max1.0.lcssa)
  %.pre7 = load i32, i32* %132, align 4, !tbaa !205
  br label %464

; <label>:464                                     ; preds = %463, %._crit_edge
  %465 = phi i32 [ %.pre7, %463 ], [ %462, %._crit_edge ]
  %466 = icmp sgt i32 %max2.0.lcssa, %465
  br i1 %466, label %467, label %468

; <label>:467                                     ; preds = %464
  call void @_ZN4Comm8growrecvEi(%class.Comm* nonnull %this, i32 %max2.0.lcssa)
  br label %468

; <label>:468                                     ; preds = %467, %464
  call void @llvm.lifetime.end(i64 20, i8* %6) #8
  call void @llvm.lifetime.end(i64 4, i8* %5) #8
  call void @llvm.lifetime.end(i64 16, i8* %4) #8
  call void @llvm.lifetime.end(i64 4, i8* %3) #8
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  ret void

; <label>:469                                     ; preds = %.lr.ph52
  %470 = landingpad { i8*, i32 }
          catch i8* null
  %471 = extractvalue { i8*, i32 } %470, 0
  call void @__clang_call_terminate(i8* %471) #19
  unreachable

; <label>:472                                     ; preds = %347, %28
  %.0 = phi i8* [ %349, %347 ], [ %30, %28 ]
  call void @__clang_call_terminate(i8* %.0) #19
  unreachable
}

; Function Attrs: nounwind uwtable
define void @_ZN4Comm8growlistEii(%class.Comm* nocapture readonly %this, i32 %iswap, i32 %n) #11 align 2 {
  %1 = sitofp i32 %n to double
  %2 = fmul double %1, 1.500000e+00
  %3 = fptosi double %2 to i32
  %4 = sext i32 %iswap to i64
  %5 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 18
  %6 = load i32*, i32** %5, align 8, !tbaa !218
  %7 = getelementptr inbounds i32, i32* %6, i64 %4
  store i32 %3, i32* %7, align 4, !tbaa !1
  %8 = getelementptr inbounds %class.Comm, %class.Comm* %this, i64 0, i32 17
  %9 = load i32**, i32*** %8, align 8, !tbaa !144
  %10 = getelementptr inbounds i32*, i32** %9, i64 %4
  %11 = bitcast i32** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  %13 = load i32*, i32** %5, align 8, !tbaa !218
  %14 = getelementptr inbounds i32, i32* %13, i64 %4
  %15 = load i32, i32* %14, align 4, !tbaa !1
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call i8* @realloc(i8* %12, i64 %17) #8
  %19 = load i32**, i32*** %8, align 8, !tbaa !144
  %20 = getelementptr inbounds i32*, i32** %19, i64 %4
  %21 = bitcast i32** %20 to i8**
  store i8* %18, i8** %21, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN5TimerC2Ev(%class.Timer* nocapture %this) unnamed_addr #11 align 2 {
  %1 = tail call noalias i8* @malloc(i64 40) #8
  %2 = bitcast %class.Timer* %this to i8**
  store i8* %1, i8** %2, align 8, !tbaa !73
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN5TimerD2Ev(%class.Timer* nocapture readonly %this) unnamed_addr #11 align 2 {
  %1 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 0
  %2 = load double*, double** %1, align 8, !tbaa !73
  %3 = icmp eq double* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast double* %2 to i8*
  tail call void @free(i8* %5) #8
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Timer5stampEv(%class.Timer* nocapture %this) #13 align 2 {
  %1 = tail call double @MPI_Wtime()
  %2 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 1
  store double %1, double* %2, align 8, !tbaa !227
  ret void
}

declare double @MPI_Wtime() #2

; Function Attrs: uwtable
define void @_ZN5Timer5stampEi(%class.Timer* nocapture %this, i32 %which) #13 align 2 {
  %1 = tail call double @MPI_Wtime()
  %2 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 1
  %3 = load double, double* %2, align 8, !tbaa !227
  %4 = fsub double %1, %3
  %5 = sext i32 %which to i64
  %6 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 0
  %7 = load double*, double** %6, align 8, !tbaa !73
  %8 = getelementptr inbounds double, double* %7, i64 %5
  %9 = load double, double* %8, align 8, !tbaa !32
  %10 = fadd double %4, %9
  store double %10, double* %8, align 8, !tbaa !32
  store double %1, double* %2, align 8, !tbaa !227
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Timer17stamp_extra_startEv(%class.Timer* nocapture %this) #13 align 2 {
  %1 = tail call double @MPI_Wtime()
  %2 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 2
  store double %1, double* %2, align 8, !tbaa !228
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Timer16stamp_extra_stopEi(%class.Timer* nocapture %this, i32 %which) #13 align 2 {
  %1 = tail call double @MPI_Wtime()
  %2 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 2
  %3 = load double, double* %2, align 8, !tbaa !228
  %4 = fsub double %1, %3
  %5 = sext i32 %which to i64
  %6 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 0
  %7 = load double*, double** %6, align 8, !tbaa !73
  %8 = getelementptr inbounds double, double* %7, i64 %5
  %9 = load double, double* %8, align 8, !tbaa !32
  %10 = fadd double %4, %9
  store double %10, double* %8, align 8, !tbaa !32
  store double %1, double* %2, align 8, !tbaa !228
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Timer13barrier_startEi(%class.Timer* nocapture readonly %this, i32 %which) #13 align 2 {
  %1 = tail call i32 @MPI_Barrier(i32 1140850688)
  %2 = tail call double @MPI_Wtime()
  %3 = sext i32 %which to i64
  %4 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 0
  %5 = load double*, double** %4, align 8, !tbaa !73
  %6 = getelementptr inbounds double, double* %5, i64 %3
  store double %2, double* %6, align 8, !tbaa !32
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Timer12barrier_stopEi(%class.Timer* nocapture readonly %this, i32 %which) #13 align 2 {
  %1 = tail call i32 @MPI_Barrier(i32 1140850688)
  %2 = tail call double @MPI_Wtime()
  %3 = sext i32 %which to i64
  %4 = getelementptr inbounds %class.Timer, %class.Timer* %this, i64 0, i32 0
  %5 = load double*, double** %4, align 8, !tbaa !73
  %6 = getelementptr inbounds double, double* %5, i64 %3
  %7 = load double, double* %6, align 8, !tbaa !32
  %8 = fsub double %2, %7
  store double %8, double* %6, align 8, !tbaa !32
  ret void
}

; Function Attrs: uwtable
define void @_Z6outputR2InR4AtomP5ForceR8NeighborR4CommR6ThermoR9IntegrateR5Timeri(%struct.In* nocapture readonly dereferenceable(112) %in, %class.Atom* dereferenceable(224) %atom, %class.Force* nocapture readonly %force, %class.Neighbor* nocapture readonly dereferenceable(240) %neighbor, %class.Comm* nocapture readonly dereferenceable(336) %comm, %class.Thermo* nocapture readonly dereferenceable(128) %thermo, %class.Integrate* nocapture readonly dereferenceable(88) %integrate, %class.Timer* nocapture readonly dereferenceable(24) %timer, i32 %screen_yaml) #13 {
  %me = alloca i32, align 4
  %nprocs = alloca i32, align 4
  %histo = alloca [10 x i32], align 16
  %tmp = alloca double, align 8
  %ave = alloca double, align 8
  %max = alloca double, align 8
  %min = alloca double, align 8
  %total = alloca double, align 8
  %natoms = alloca i32, align 4
  %nlost = alloca i32, align 4
  %nlostall = alloca i32, align 4
  %general_time = alloca i64, align 8
  %filename = alloca [256 x i8], align 16
  %time_total = alloca double, align 8
  %time_force = alloca double, align 8
  %time_neigh = alloca double, align 8
  %time_comm = alloca double, align 8
  %time_other = alloca double, align 8
  %1 = bitcast i32* %me to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = bitcast i32* %nprocs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #8
  %3 = bitcast [10 x i32]* %histo to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #8
  %4 = bitcast double* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #8
  %5 = bitcast double* %ave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #8
  %6 = bitcast double* %max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #8
  %7 = bitcast double* %min to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #8
  %8 = bitcast double* %total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #8
  %9 = call i32 @MPI_Comm_rank(i32 1140850688, i32* nonnull %me)
  %10 = call i32 @MPI_Comm_size(i32 1140850688, i32* nonnull %nprocs)
  call void @_ZN4Atom3pbcEv(%class.Atom* nonnull %atom)
  %11 = bitcast i32* %natoms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #8
  %12 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @MPI_Allreduce(i8* %13, i8* %11, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
  %15 = bitcast i32* %nlost to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #8
  store i32 0, i32* %nlost, align 4, !tbaa !1
  %16 = load i32, i32* %12, align 4, !tbaa !88
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %0
  %18 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 4
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %21 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %22 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %23 = sext i32 %16 to i64
  br label %24

; <label>:24                                      ; preds = %51, %.lr.ph166
  %25 = phi i32 [ 0, %.lr.ph166 ], [ %52, %51 ]
  %indvars.iv228 = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next229, %51 ]
  %26 = mul nuw nsw i64 %indvars.iv228, 3
  %27 = getelementptr inbounds double, double* %19, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !32
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %49, label %30

; <label>:30                                      ; preds = %24
  %31 = load double, double* %20, align 8, !tbaa !61
  %32 = fcmp ult double %28, %31
  br i1 %32, label %33, label %49

; <label>:33                                      ; preds = %30
  %34 = add nuw nsw i64 %26, 1
  %35 = getelementptr inbounds double, double* %19, i64 %34
  %36 = load double, double* %35, align 8, !tbaa !32
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %49, label %38

; <label>:38                                      ; preds = %33
  %39 = load double, double* %21, align 8, !tbaa !62
  %40 = fcmp ult double %36, %39
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %38
  %42 = add nuw nsw i64 %26, 2
  %43 = getelementptr inbounds double, double* %19, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !32
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %41
  %47 = load double, double* %22, align 8, !tbaa !63
  %48 = fcmp ult double %44, %47
  br i1 %48, label %51, label %49

; <label>:49                                      ; preds = %46, %41, %38, %33, %30, %24
  %50 = add nsw i32 %25, 1
  store i32 %50, i32* %nlost, align 4, !tbaa !1
  br label %51

; <label>:51                                      ; preds = %49, %46
  %52 = phi i32 [ %50, %49 ], [ %25, %46 ]
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %53 = icmp slt i64 %indvars.iv.next229, %23
  br i1 %53, label %24, label %._crit_edge167.loopexit

._crit_edge167.loopexit:                          ; preds = %51
  br label %._crit_edge167

._crit_edge167:                                   ; preds = %._crit_edge167.loopexit, %0
  %54 = bitcast i32* %nlostall to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #8
  %55 = call i32 @MPI_Allreduce(i8* %15, i8* %54, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
  %56 = load i32, i32* %natoms, align 4, !tbaa !1
  %57 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %58 = load i32, i32* %57, align 8, !tbaa !64
  %59 = icmp ne i32 %56, %58
  %60 = load i32, i32* %nlostall, align 4
  %61 = icmp sgt i32 %60, 0
  %or.cond = or i1 %59, %61
  br i1 %or.cond, label %62, label %69

; <label>:62                                      ; preds = %._crit_edge167
  %63 = load i32, i32* %me, align 4, !tbaa !1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %.thread

; <label>:65                                      ; preds = %62
  %66 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i64 0, i64 0), i32 %60, i32 %56, i32 %58)
  %.pr = load i32, i32* %me, align 4, !tbaa !1
  %67 = icmp eq i32 %.pr, 0
  br i1 %67, label %68, label %.thread

; <label>:68                                      ; preds = %65
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @str.183, i64 0, i64 0))
  br label %.thread

; <label>:69                                      ; preds = %._crit_edge167
  %70 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 4
  %71 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 1
  %72 = load double, double* %71, align 8, !tbaa !58
  %73 = call double @pow(double %72, double 9.000000e+00) #8
  %74 = load double, double* %71, align 8, !tbaa !58
  %75 = call double @pow(double %74, double 3.000000e+00) #8
  %76 = load double, double* %71, align 8, !tbaa !58
  %77 = call double @pow(double %76, double 9.000000e+00) #8
  %78 = load double, double* %71, align 8, !tbaa !58
  %79 = call double @pow(double %78, double 3.000000e+00) #8
  %80 = load i32, i32* %me, align 4, !tbaa !1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %.thread102

; <label>:82                                      ; preds = %69
  %83 = bitcast i64* %general_time to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #8
  %84 = call i64 @time(i64* null) #8
  store i64 %84, i64* %general_time, align 8, !tbaa !229
  %85 = call %struct.tm* @localtime(i64* nonnull %general_time) #8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 0
  %87 = bitcast i32* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 1
  %91 = lshr i64 %88, 32
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 2
  %94 = bitcast i32* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 3
  %98 = lshr i64 %95, 32
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 4
  %101 = bitcast i32* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %85, i64 0, i32 5
  %105 = lshr i64 %102, 32
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %filename, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %107) #8
  %108 = add nsw i32 %106, 1900
  %109 = add nsw i32 %103, 1
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.184, i64 0, i64 0), i32 %108, i32 %109, i32 %99, i32 %96, i32 %92, i32 %89) #8
  %111 = call %struct._IO_FILE* @fopen(i8* %107, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.185, i64 0, i64 0))
  %112 = icmp ne i32 %screen_yaml, 0
  br i1 %112, label %113, label %._crit_edge5

._crit_edge5:                                     ; preds = %82
  %.pre6 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 15
  %.pre7 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 9
  %.pre9 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %.pre11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 7
  %.pre13 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %.pre15 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %.pre17 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %.pre19 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %.pre21 = bitcast i32* %.pre19 to i64*
  %.pre23 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %.pre25 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %.pre27 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  %.pre29 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 13
  %.pre31 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 15
  %.pre33 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 4
  %.pre35 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %.pre37 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  %.pre39 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  %.pre41 = bitcast i32* %.pre39 to i64*
  %.pre43 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  %.pre45 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 0
  %.pre47 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 10
  %.pre49 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 0
  %.pre51 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 0
  %.pre53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  %.pre55 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 8
  %.pre57 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 31
  br label %238

; <label>:113                                     ; preds = %82
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %115 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.186, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %114)
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %117 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5.187, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %119 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 15
  %120 = load %class.ThreadData*, %class.ThreadData** %119, align 8, !tbaa !27
  %121 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %120, i64 0, i32 1
  %122 = load i32, i32* %121, align 4, !tbaa !15
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.188, i64 0, i64 0), i32 %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %125 = load %class.ThreadData*, %class.ThreadData** %119, align 8, !tbaa !27
  %126 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %125, i64 0, i32 4
  %127 = load i32, i32* %126, align 4, !tbaa !75
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.189, i64 0, i64 0), i32 %127)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %130 = load %class.ThreadData*, %class.ThreadData** %119, align 8, !tbaa !27
  %131 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %130, i64 0, i32 3
  %132 = load i32, i32* %131, align 4, !tbaa !17
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.190, i64 0, i64 0), i32 %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 9
  %136 = load i8*, i8** %135, align 8, !tbaa !7
  %137 = icmp eq i8* %136, null
  %. = select i1 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.191, i64 0, i64 0), i8* %136
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.192, i64 0, i64 0), i8* %.)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 5
  %141 = load i32, i32* %140, align 8, !tbaa !11
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.193, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.194, i64 0, i64 0)
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11.195, i64 0, i64 0), i8* %143)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %146 = load i32, i32* %57, align 8, !tbaa !64
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14.196, i64 0, i64 0), i32 %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %149 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 7
  %150 = load i32, i32* %149, align 8, !tbaa !71
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15.197, i64 0, i64 0), i32 %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %153 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %154 = load double, double* %153, align 8, !tbaa !61
  %155 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %156 = load double, double* %155, align 8, !tbaa !62
  %157 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %158 = load double, double* %157, align 8, !tbaa !63
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16.198, i64 0, i64 0), double %154, double %156, double %158)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %161 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 0
  %162 = bitcast i32* %161 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 1
  %166 = lshr i64 %163, 32
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 2
  %169 = load i32, i32* %168, align 8, !tbaa !45
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17.199, i64 0, i64 0), i32 %164, i32 %167, i32 %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %172 = load double, double* %70, align 8, !tbaa !65
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18.200, i64 0, i64 0), double %172)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.In, %struct.In* %in, i64 0, i32 6
  %176 = load i32, i32* %175, align 4, !tbaa !12
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.193, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20.201, i64 0, i64 0)
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19.202, i64 0, i64 0), i8* %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %181 = load double, double* %71, align 8, !tbaa !58
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21.203, i64 0, i64 0), double %181)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %184 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 13
  %185 = load double*, double** %184, align 8, !tbaa !114
  %186 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 15
  %187 = load double*, double** %186, align 8, !tbaa !121
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22.204, i64 0, i64 0), double* %185, double* %187)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %190 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 4
  %191 = load double, double* %190, align 8, !tbaa !56
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23.205, i64 0, i64 0), double %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %194 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 11
  %195 = load i32, i32* %194, align 4, !tbaa !40
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24.206, i64 0, i64 0), i32 %195)
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %198 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  %199 = load i32, i32* %198, align 4, !tbaa !46
  %200 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  %201 = bitcast i32* %200 to i64*
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  %205 = lshr i64 %202, 32
  %206 = trunc i64 %205 to i32
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25.207, i64 0, i64 0), i32 %199, i32 %203, i32 %206)
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %209 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 0
  %210 = load i32, i32* %209, align 8, !tbaa !54
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26.208, i64 0, i64 0), i32 %210)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %213 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 10
  %214 = load i32, i32* %213, align 8, !tbaa !53
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27.209, i64 0, i64 0), i32 %214)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %217 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 0
  %218 = load double, double* %217, align 8, !tbaa !51
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28.210, i64 0, i64 0), double %218)
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %221 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 0
  %222 = load i32, i32* %221, align 8, !tbaa !60
  %223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29.211, i64 0, i64 0), i32 %222)
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %225 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 12
  %226 = load i32, i32* %225, align 8, !tbaa !34
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30.212, i64 0, i64 0), i32 %226)
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %229 = getelementptr inbounds %class.Force, %class.Force* %force, i64 0, i32 8
  %230 = load i32, i32* %229, align 4, !tbaa !39
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31.213, i64 0, i64 0), i32 %230)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %233 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 31
  %234 = load i32, i32* %233, align 4, !tbaa !38
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32.214, i64 0, i64 0), i32 %234)
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33.215, i64 0, i64 0), i32 8)
  br label %238

; <label>:238                                     ; preds = %._crit_edge5, %113
  %.pre-phi58 = phi i32* [ %.pre57, %._crit_edge5 ], [ %233, %113 ]
  %.pre-phi56 = phi i32* [ %.pre55, %._crit_edge5 ], [ %229, %113 ]
  %.pre-phi54 = phi i32* [ %.pre53, %._crit_edge5 ], [ %225, %113 ]
  %.pre-phi52 = phi i32* [ %.pre51, %._crit_edge5 ], [ %221, %113 ]
  %.pre-phi50 = phi double* [ %.pre49, %._crit_edge5 ], [ %217, %113 ]
  %.pre-phi48 = phi i32* [ %.pre47, %._crit_edge5 ], [ %213, %113 ]
  %.pre-phi46 = phi i32* [ %.pre45, %._crit_edge5 ], [ %209, %113 ]
  %.pre-phi44 = phi i32* [ %.pre43, %._crit_edge5 ], [ %204, %113 ]
  %.pre-phi42 = phi i64* [ %.pre41, %._crit_edge5 ], [ %201, %113 ]
  %.pre-phi40 = phi i32* [ %.pre39, %._crit_edge5 ], [ %200, %113 ]
  %.pre-phi38 = phi i32* [ %.pre37, %._crit_edge5 ], [ %198, %113 ]
  %.pre-phi36 = phi i32* [ %.pre35, %._crit_edge5 ], [ %194, %113 ]
  %.pre-phi34 = phi double* [ %.pre33, %._crit_edge5 ], [ %190, %113 ]
  %.pre-phi32 = phi double** [ %.pre31, %._crit_edge5 ], [ %186, %113 ]
  %.pre-phi30 = phi double** [ %.pre29, %._crit_edge5 ], [ %184, %113 ]
  %.pre-phi28 = phi i32* [ %.pre27, %._crit_edge5 ], [ %175, %113 ]
  %.pre-phi26 = phi i32* [ %.pre25, %._crit_edge5 ], [ %168, %113 ]
  %.pre-phi24 = phi i32* [ %.pre23, %._crit_edge5 ], [ %165, %113 ]
  %.pre-phi22 = phi i64* [ %.pre21, %._crit_edge5 ], [ %162, %113 ]
  %.pre-phi20 = phi i32* [ %.pre19, %._crit_edge5 ], [ %161, %113 ]
  %.pre-phi18 = phi double* [ %.pre17, %._crit_edge5 ], [ %157, %113 ]
  %.pre-phi16 = phi double* [ %.pre15, %._crit_edge5 ], [ %155, %113 ]
  %.pre-phi14 = phi double* [ %.pre13, %._crit_edge5 ], [ %153, %113 ]
  %.pre-phi12 = phi i32* [ %.pre11, %._crit_edge5 ], [ %149, %113 ]
  %.pre-phi10 = phi i32* [ %.pre9, %._crit_edge5 ], [ %140, %113 ]
  %.pre-phi8 = phi i8** [ %.pre7, %._crit_edge5 ], [ %135, %113 ]
  %.pre-phi = phi %class.ThreadData** [ %.pre6, %._crit_edge5 ], [ %119, %113 ]
  %239 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.186, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %111)
  %240 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5.187, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %111)
  %241 = load %class.ThreadData*, %class.ThreadData** %.pre-phi, align 8, !tbaa !27
  %242 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %241, i64 0, i32 1
  %243 = load i32, i32* %242, align 4, !tbaa !15
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.188, i64 0, i64 0), i32 %243)
  %245 = load %class.ThreadData*, %class.ThreadData** %.pre-phi, align 8, !tbaa !27
  %246 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %245, i64 0, i32 4
  %247 = load i32, i32* %246, align 4, !tbaa !75
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.189, i64 0, i64 0), i32 %247)
  %249 = load %class.ThreadData*, %class.ThreadData** %.pre-phi, align 8, !tbaa !27
  %250 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %249, i64 0, i32 3
  %251 = load i32, i32* %250, align 4, !tbaa !17
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.190, i64 0, i64 0), i32 %251)
  %253 = load i8*, i8** %.pre-phi8, align 8, !tbaa !7
  %254 = icmp eq i8* %253, null
  %.65 = select i1 %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.191, i64 0, i64 0), i8* %253
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.192, i64 0, i64 0), i8* %.65)
  %256 = load i32, i32* %.pre-phi10, align 8, !tbaa !11
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.193, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.194, i64 0, i64 0)
  %259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11.195, i64 0, i64 0), i8* %258)
  %260 = load i32, i32* %57, align 8, !tbaa !64
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14.196, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %.pre-phi12, align 8, !tbaa !71
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15.197, i64 0, i64 0), i32 %262)
  %264 = load double, double* %.pre-phi14, align 8, !tbaa !61
  %265 = load double, double* %.pre-phi16, align 8, !tbaa !62
  %266 = load double, double* %.pre-phi18, align 8, !tbaa !63
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16.198, i64 0, i64 0), double %264, double %265, double %266)
  %268 = load i64, i64* %.pre-phi22, align 8
  %269 = trunc i64 %268 to i32
  %270 = lshr i64 %268, 32
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* %.pre-phi26, align 8, !tbaa !45
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17.199, i64 0, i64 0), i32 %269, i32 %271, i32 %272)
  %274 = load double, double* %70, align 8, !tbaa !65
  %275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18.200, i64 0, i64 0), double %274)
  %276 = load i32, i32* %.pre-phi28, align 4, !tbaa !12
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.193, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20.201, i64 0, i64 0)
  %279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19.202, i64 0, i64 0), i8* %278)
  %280 = load double, double* %71, align 8, !tbaa !58
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21.203, i64 0, i64 0), double %280)
  %282 = load double*, double** %.pre-phi30, align 8, !tbaa !114
  %283 = load double*, double** %.pre-phi32, align 8, !tbaa !121
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22.204, i64 0, i64 0), double* %282, double* %283)
  %285 = load double, double* %.pre-phi34, align 8, !tbaa !56
  %286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23.205, i64 0, i64 0), double %285)
  %287 = load i32, i32* %.pre-phi36, align 4, !tbaa !40
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24.206, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* %.pre-phi38, align 4, !tbaa !46
  %290 = load i64, i64* %.pre-phi42, align 8
  %291 = trunc i64 %290 to i32
  %292 = lshr i64 %290, 32
  %293 = trunc i64 %292 to i32
  %294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25.207, i64 0, i64 0), i32 %289, i32 %291, i32 %293)
  %295 = load i32, i32* %.pre-phi46, align 8, !tbaa !54
  %296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26.208, i64 0, i64 0), i32 %295)
  %297 = load i32, i32* %.pre-phi48, align 8, !tbaa !53
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27.209, i64 0, i64 0), i32 %297)
  %299 = load double, double* %.pre-phi50, align 8, !tbaa !51
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28.210, i64 0, i64 0), double %299)
  %301 = load i32, i32* %.pre-phi52, align 8, !tbaa !60
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29.211, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* %.pre-phi54, align 8, !tbaa !34
  %304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30.212, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %.pre-phi56, align 4, !tbaa !39
  %306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31.213, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %.pre-phi58, align 4, !tbaa !38
  %308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32.214, i64 0, i64 0), i32 %307)
  %309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33.215, i64 0, i64 0), i32 8)
  br i1 %112, label %310, label %313

; <label>:310                                     ; preds = %238
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %312 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34.216, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %311)
  br label %313

; <label>:313                                     ; preds = %310, %238
  %314 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34.216, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %111)
  %315 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 1
  %316 = load i32, i32* %315, align 4, !tbaa !200
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %313
  %318 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 4
  %319 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 5
  %320 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 3
  %321 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 6
  br label %322

; <label>:322                                     ; preds = %359, %.lr.ph162
  %indvars.iv226 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next227, %359 ]
  %323 = load double*, double** %318, align 8, !tbaa !192
  %324 = getelementptr inbounds double, double* %323, i64 %indvars.iv226
  %325 = load double, double* %324, align 8, !tbaa !32
  %326 = fmul double %325, 1.500000e+00
  %327 = load double*, double** %319, align 8, !tbaa !193
  %328 = getelementptr inbounds double, double* %327, i64 %indvars.iv226
  %329 = load double, double* %328, align 8, !tbaa !32
  %330 = fadd double %326, %329
  %331 = load double, double* %323, align 8, !tbaa !32
  %332 = fmul double %331, 1.500000e+00
  %333 = load double, double* %327, align 8, !tbaa !32
  %334 = fadd double %332, %333
  %335 = fdiv double %330, %334
  br i1 %112, label %336, label %359

; <label>:336                                     ; preds = %322
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %338 = load i32*, i32** %320, align 8, !tbaa !191
  %339 = getelementptr inbounds i32, i32* %338, i64 %indvars.iv226
  %340 = load i32, i32* %339, align 4, !tbaa !1
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %337, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35.217, i64 0, i64 0), i32 %340)
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %343 = load double*, double** %318, align 8, !tbaa !192
  %344 = getelementptr inbounds double, double* %343, i64 %indvars.iv226
  %345 = load double, double* %344, align 8, !tbaa !32
  %346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), double %345)
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %348 = load double*, double** %319, align 8, !tbaa !193
  %349 = getelementptr inbounds double, double* %348, i64 %indvars.iv226
  %350 = load double, double* %349, align 8, !tbaa !32
  %351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), double %350)
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %353 = load double*, double** %321, align 8, !tbaa !194
  %354 = getelementptr inbounds double, double* %353, i64 %indvars.iv226
  %355 = load double, double* %354, align 8, !tbaa !32
  %356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %352, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), double %355)
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %357, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), double %335)
  br label %359

; <label>:359                                     ; preds = %336, %322
  %360 = load i32*, i32** %320, align 8, !tbaa !191
  %361 = getelementptr inbounds i32, i32* %360, i64 %indvars.iv226
  %362 = load i32, i32* %361, align 4, !tbaa !1
  %363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35.217, i64 0, i64 0), i32 %362)
  %364 = load double*, double** %318, align 8, !tbaa !192
  %365 = getelementptr inbounds double, double* %364, i64 %indvars.iv226
  %366 = load double, double* %365, align 8, !tbaa !32
  %367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), double %366)
  %368 = load double*, double** %319, align 8, !tbaa !193
  %369 = getelementptr inbounds double, double* %368, i64 %indvars.iv226
  %370 = load double, double* %369, align 8, !tbaa !32
  %371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), double %370)
  %372 = load double*, double** %321, align 8, !tbaa !194
  %373 = getelementptr inbounds double, double* %372, i64 %indvars.iv226
  %374 = load double, double* %373, align 8, !tbaa !32
  %375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), double %374)
  %376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), double %335)
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %377 = load i32, i32* %315, align 4, !tbaa !200
  %378 = sext i32 %377 to i64
  %379 = icmp slt i64 %indvars.iv.next227, %378
  br i1 %379, label %322, label %._crit_edge163.loopexit

._crit_edge163.loopexit:                          ; preds = %359
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge163.loopexit, %313
  call void @llvm.lifetime.end(i64 256, i8* %107) #8
  call void @llvm.lifetime.end(i64 8, i8* %83) #8
  %.pr101 = load i32, i32* %me, align 4, !tbaa !1
  %380 = icmp eq i32 %.pr101, 0
  br i1 %380, label %381, label %.thread102

; <label>:381                                     ; preds = %._crit_edge163
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %383 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %382)
  %384 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %111)
  br label %.thread102

.thread102:                                       ; preds = %381, %._crit_edge163, %69
  %fp.0103 = phi %struct._IO_FILE* [ %111, %381 ], [ %111, %._crit_edge163 ], [ undef, %69 ]
  %385 = bitcast double* %time_total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #8
  %386 = getelementptr inbounds %class.Timer, %class.Timer* %timer, i64 0, i32 0
  %387 = bitcast %class.Timer* %timer to i64**
  %388 = load i64*, i64** %387, align 8, !tbaa !73
  %389 = load i64, i64* %388, align 8, !tbaa !32
  %390 = bitcast double* %time_total to i64*
  store i64 %389, i64* %390, align 8, !tbaa !32
  %391 = call i32 @MPI_Allreduce(i8* %385, i8* %4, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %392 = load double, double* %tmp, align 8, !tbaa !32
  %393 = load i32, i32* %nprocs, align 4, !tbaa !1
  %394 = sitofp i32 %393 to double
  %395 = fdiv double %392, %394
  store double %395, double* %time_total, align 8, !tbaa !32
  %396 = load double, double* %71, align 8, !tbaa !58
  %397 = call double @pow(double %396, double 3.000000e+00) #8
  %398 = getelementptr inbounds %class.Integrate, %class.Integrate* %integrate, i64 0, i32 2
  %399 = load i32, i32* %me, align 4, !tbaa !1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %465

; <label>:401                                     ; preds = %.thread102
  %402 = icmp eq i32 %screen_yaml, 0
  br i1 %402, label %._crit_edge4, label %403

._crit_edge4:                                     ; preds = %401
  %.pre59 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 15
  br label %437

; <label>:403                                     ; preds = %401
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %405 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %404)
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %407 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %406)
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %409 = load double, double* %time_total, align 8, !tbaa !32
  %410 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %408, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), double %409)
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %412 = load i32, i32* %natoms, align 4, !tbaa !1
  %413 = load i32, i32* %398, align 8, !tbaa !49
  %414 = mul nsw i32 %413, %412
  %415 = sitofp i32 %414 to double
  %416 = load double, double* %time_total, align 8, !tbaa !32
  %417 = fdiv double %415, %416
  %418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %411, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), double %417)
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %420 = load i32, i32* %natoms, align 4, !tbaa !1
  %421 = load i32, i32* %398, align 8, !tbaa !49
  %422 = mul nsw i32 %421, %420
  %423 = sitofp i32 %422 to double
  %424 = load double, double* %time_total, align 8, !tbaa !32
  %425 = fdiv double %423, %424
  %426 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 15
  %427 = load %class.ThreadData*, %class.ThreadData** %426, align 8, !tbaa !27
  %428 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %427, i64 0, i32 1
  %429 = load i32, i32* %428, align 4, !tbaa !15
  %430 = sitofp i32 %429 to double
  %431 = fdiv double %425, %430
  %432 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %427, i64 0, i32 3
  %433 = load i32, i32* %432, align 4, !tbaa !17
  %434 = sitofp i32 %433 to double
  %435 = fdiv double %431, %434
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %419, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), double %435)
  br label %437

; <label>:437                                     ; preds = %._crit_edge4, %403
  %.pre-phi60 = phi %class.ThreadData** [ %.pre59, %._crit_edge4 ], [ %426, %403 ]
  %438 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp.0103)
  %439 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %fp.0103)
  %440 = load double, double* %time_total, align 8, !tbaa !32
  %441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), double %440)
  %442 = load i32, i32* %natoms, align 4, !tbaa !1
  %443 = load i32, i32* %398, align 8, !tbaa !49
  %444 = mul nsw i32 %443, %442
  %445 = sitofp i32 %444 to double
  %446 = load double, double* %time_total, align 8, !tbaa !32
  %447 = fdiv double %445, %446
  %448 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), double %447)
  %449 = load i32, i32* %natoms, align 4, !tbaa !1
  %450 = load i32, i32* %398, align 8, !tbaa !49
  %451 = mul nsw i32 %450, %449
  %452 = sitofp i32 %451 to double
  %453 = load double, double* %time_total, align 8, !tbaa !32
  %454 = fdiv double %452, %453
  %455 = load %class.ThreadData*, %class.ThreadData** %.pre-phi60, align 8, !tbaa !27
  %456 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %455, i64 0, i32 1
  %457 = load i32, i32* %456, align 4, !tbaa !15
  %458 = sitofp i32 %457 to double
  %459 = fdiv double %454, %458
  %460 = getelementptr inbounds %class.ThreadData, %class.ThreadData* %455, i64 0, i32 3
  %461 = load i32, i32* %460, align 4, !tbaa !17
  %462 = sitofp i32 %461 to double
  %463 = fdiv double %459, %462
  %464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), double %463)
  br label %465

; <label>:465                                     ; preds = %437, %.thread102
  %466 = load double, double* %time_total, align 8, !tbaa !32
  %467 = fcmp oeq double %466, 0.000000e+00
  br i1 %467, label %468, label %469

; <label>:468                                     ; preds = %465
  store double 1.000000e+00, double* %time_total, align 8, !tbaa !32
  br label %469

; <label>:469                                     ; preds = %468, %465
  %470 = bitcast double* %time_force to i8*
  call void @llvm.lifetime.start(i64 8, i8* %470) #8
  %471 = load double*, double** %386, align 8, !tbaa !73
  %472 = getelementptr inbounds double, double* %471, i64 2
  %473 = bitcast double* %472 to i64*
  %474 = load i64, i64* %473, align 8, !tbaa !32
  %475 = bitcast double* %time_force to i64*
  store i64 %474, i64* %475, align 8, !tbaa !32
  %476 = call i32 @MPI_Allreduce(i8* %470, i8* %4, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %477 = load i32, i32* %nprocs, align 4, !tbaa !1
  %478 = sitofp i32 %477 to double
  %479 = load double, double* %tmp, align 8, !tbaa !32
  %480 = fdiv double %479, %478
  store double %480, double* %tmp, align 8, !tbaa !32
  %481 = load i32, i32* %me, align 4, !tbaa !1
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %491

; <label>:483                                     ; preds = %469
  %484 = icmp eq i32 %screen_yaml, 0
  br i1 %484, label %488, label %485

; <label>:485                                     ; preds = %483
  %486 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %486, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46.218, i64 0, i64 0), double %480)
  %.pre = load double, double* %tmp, align 8, !tbaa !32
  br label %488

; <label>:488                                     ; preds = %485, %483
  %489 = phi double [ %.pre, %485 ], [ %480, %483 ]
  %490 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46.218, i64 0, i64 0), double %489)
  br label %491

; <label>:491                                     ; preds = %488, %469
  %492 = bitcast double* %time_neigh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %492) #8
  %493 = load double*, double** %386, align 8, !tbaa !73
  %494 = getelementptr inbounds double, double* %493, i64 3
  %495 = bitcast double* %494 to i64*
  %496 = load i64, i64* %495, align 8, !tbaa !32
  %497 = bitcast double* %time_neigh to i64*
  store i64 %496, i64* %497, align 8, !tbaa !32
  %498 = call i32 @MPI_Allreduce(i8* %492, i8* nonnull %4, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %499 = load i32, i32* %nprocs, align 4, !tbaa !1
  %500 = sitofp i32 %499 to double
  %501 = load double, double* %tmp, align 8, !tbaa !32
  %502 = fdiv double %501, %500
  store double %502, double* %tmp, align 8, !tbaa !32
  %503 = load i32, i32* %me, align 4, !tbaa !1
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %513

; <label>:505                                     ; preds = %491
  %506 = icmp eq i32 %screen_yaml, 0
  br i1 %506, label %510, label %507

; <label>:507                                     ; preds = %505
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %509 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %508, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), double %502)
  %.pre1 = load double, double* %tmp, align 8, !tbaa !32
  br label %510

; <label>:510                                     ; preds = %507, %505
  %511 = phi double [ %.pre1, %507 ], [ %502, %505 ]
  %512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), double %511)
  br label %513

; <label>:513                                     ; preds = %510, %491
  %514 = bitcast double* %time_comm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %514) #8
  %515 = load double*, double** %386, align 8, !tbaa !73
  %516 = getelementptr inbounds double, double* %515, i64 1
  %517 = bitcast double* %516 to i64*
  %518 = load i64, i64* %517, align 8, !tbaa !32
  %519 = bitcast double* %time_comm to i64*
  store i64 %518, i64* %519, align 8, !tbaa !32
  %520 = call i32 @MPI_Allreduce(i8* %514, i8* nonnull %4, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %521 = load i32, i32* %nprocs, align 4, !tbaa !1
  %522 = sitofp i32 %521 to double
  %523 = load double, double* %tmp, align 8, !tbaa !32
  %524 = fdiv double %523, %522
  store double %524, double* %tmp, align 8, !tbaa !32
  %525 = load i32, i32* %me, align 4, !tbaa !1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %535

; <label>:527                                     ; preds = %513
  %528 = icmp eq i32 %screen_yaml, 0
  br i1 %528, label %532, label %529

; <label>:529                                     ; preds = %527
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %530, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), double %524)
  %.pre2 = load double, double* %tmp, align 8, !tbaa !32
  br label %532

; <label>:532                                     ; preds = %529, %527
  %533 = phi double [ %.pre2, %529 ], [ %524, %527 ]
  %534 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), double %533)
  br label %535

; <label>:535                                     ; preds = %532, %513
  %536 = bitcast double* %time_other to i8*
  call void @llvm.lifetime.start(i64 8, i8* %536) #8
  %537 = load double, double* %time_total, align 8, !tbaa !32
  %538 = load double, double* %time_force, align 8, !tbaa !32
  %539 = load double, double* %time_neigh, align 8, !tbaa !32
  %540 = fadd double %538, %539
  %541 = load double, double* %time_comm, align 8, !tbaa !32
  %542 = fadd double %540, %541
  %543 = fsub double %537, %542
  store double %543, double* %time_other, align 8, !tbaa !32
  %544 = call i32 @MPI_Allreduce(i8* %536, i8* nonnull %4, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %545 = load i32, i32* %nprocs, align 4, !tbaa !1
  %546 = sitofp i32 %545 to double
  %547 = load double, double* %tmp, align 8, !tbaa !32
  %548 = fdiv double %547, %546
  store double %548, double* %tmp, align 8, !tbaa !32
  %549 = load i32, i32* %me, align 4, !tbaa !1
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %.thread119

; <label>:551                                     ; preds = %535
  %552 = icmp eq i32 %screen_yaml, 0
  br i1 %552, label %556, label %553

; <label>:553                                     ; preds = %551
  %554 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %555 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %554, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), double %548)
  %.pre3 = load double, double* %tmp, align 8, !tbaa !32
  br label %556

; <label>:556                                     ; preds = %553, %551
  %557 = phi double [ %.pre3, %553 ], [ %548, %551 ]
  %558 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), double %557)
  %.pr118 = load i32, i32* %me, align 4, !tbaa !1
  %559 = icmp eq i32 %.pr118, 0
  br i1 %559, label %560, label %.thread119

; <label>:560                                     ; preds = %556
  br i1 %552, label %563, label %561

; <label>:561                                     ; preds = %560
  %562 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %fputc61 = call i32 @fputc(i32 10, %struct._IO_FILE* %562)
  br label %563

; <label>:563                                     ; preds = %561, %560
  %fputc64 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %.thread119

.thread119:                                       ; preds = %563, %556, %535
  %564 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 0
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %time_force, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %565 = load i32, i32* %me, align 4, !tbaa !1
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %599

; <label>:567                                     ; preds = %.thread119
  %568 = icmp eq i32 %screen_yaml, 0
  br i1 %568, label %587, label %569

; <label>:569                                     ; preds = %567
  %570 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %571 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51.219, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %570)
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %573 = load double, double* %ave, align 8, !tbaa !32
  %574 = load double, double* %max, align 8, !tbaa !32
  %575 = load double, double* %min, align 8, !tbaa !32
  %576 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), double %573, double %574, double %575)
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %578 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %577)
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %580

; <label>:580                                     ; preds = %580, %569
  %indvars.iv223 = phi i64 [ 0, %569 ], [ %indvars.iv.next224, %580 ]
  %581 = phi %struct._IO_FILE* [ %579, %569 ], [ %585, %580 ]
  %582 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv223
  %583 = load i32, i32* %582, align 4, !tbaa !1
  %584 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %581, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %583)
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond225 = icmp eq i64 %indvars.iv.next224, 10
  br i1 %exitcond225, label %586, label %580

; <label>:586                                     ; preds = %580
  %fputc55 = call i32 @fputc(i32 10, %struct._IO_FILE* %585)
  br label %587

; <label>:587                                     ; preds = %586, %567
  %588 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51.219, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %fp.0103)
  %589 = load double, double* %ave, align 8, !tbaa !32
  %590 = load double, double* %max, align 8, !tbaa !32
  %591 = load double, double* %min, align 8, !tbaa !32
  %592 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), double %589, double %590, double %591)
  %593 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %594

; <label>:594                                     ; preds = %594, %587
  %indvars.iv220 = phi i64 [ 0, %587 ], [ %indvars.iv.next221, %594 ]
  %595 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv220
  %596 = load i32, i32* %595, align 4, !tbaa !1
  %597 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %596)
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  %exitcond222 = icmp eq i64 %indvars.iv.next221, 10
  br i1 %exitcond222, label %598, label %594

; <label>:598                                     ; preds = %594
  %fputc58 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %599

; <label>:599                                     ; preds = %598, %.thread119
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %time_neigh, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %600 = load i32, i32* %me, align 4, !tbaa !1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %631

; <label>:602                                     ; preds = %599
  %603 = icmp eq i32 %screen_yaml, 0
  br i1 %603, label %620, label %604

; <label>:604                                     ; preds = %602
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %606 = load double, double* %ave, align 8, !tbaa !32
  %607 = load double, double* %max, align 8, !tbaa !32
  %608 = load double, double* %min, align 8, !tbaa !32
  %609 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %605, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), double %606, double %607, double %608)
  %610 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %611 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %610)
  %612 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %613

; <label>:613                                     ; preds = %613, %604
  %indvars.iv217 = phi i64 [ 0, %604 ], [ %indvars.iv.next218, %613 ]
  %614 = phi %struct._IO_FILE* [ %612, %604 ], [ %618, %613 ]
  %615 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv217
  %616 = load i32, i32* %615, align 4, !tbaa !1
  %617 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %614, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %616)
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %618 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond219 = icmp eq i64 %indvars.iv.next218, 10
  br i1 %exitcond219, label %619, label %613

; <label>:619                                     ; preds = %613
  %fputc49 = call i32 @fputc(i32 10, %struct._IO_FILE* %618)
  br label %620

; <label>:620                                     ; preds = %619, %602
  %621 = load double, double* %ave, align 8, !tbaa !32
  %622 = load double, double* %max, align 8, !tbaa !32
  %623 = load double, double* %min, align 8, !tbaa !32
  %624 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), double %621, double %622, double %623)
  %625 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %626

; <label>:626                                     ; preds = %626, %620
  %indvars.iv214 = phi i64 [ 0, %620 ], [ %indvars.iv.next215, %626 ]
  %627 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv214
  %628 = load i32, i32* %627, align 4, !tbaa !1
  %629 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %628)
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  %exitcond216 = icmp eq i64 %indvars.iv.next215, 10
  br i1 %exitcond216, label %630, label %626

; <label>:630                                     ; preds = %626
  %fputc52 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %631

; <label>:631                                     ; preds = %630, %599
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %time_comm, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %632 = load i32, i32* %me, align 4, !tbaa !1
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %660

; <label>:634                                     ; preds = %631
  %635 = icmp eq i32 %screen_yaml, 0
  br i1 %635, label %.critedge68, label %.critedge

.critedge:                                        ; preds = %634
  %636 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %637 = load double, double* %ave, align 8, !tbaa !32
  %638 = load double, double* %max, align 8, !tbaa !32
  %639 = load double, double* %min, align 8, !tbaa !32
  %640 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %636, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0), double %637, double %638, double %639)
  %641 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %642 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %641)
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %644

; <label>:644                                     ; preds = %644, %.critedge
  %indvars.iv211 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next212, %644 ]
  %645 = phi %struct._IO_FILE* [ %643, %.critedge ], [ %649, %644 ]
  %646 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv211
  %647 = load i32, i32* %646, align 4, !tbaa !1
  %648 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %645, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %647)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %649 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond213 = icmp eq i64 %indvars.iv.next212, 10
  br i1 %exitcond213, label %.critedge66, label %644

.critedge66:                                      ; preds = %644
  %fputc46 = call i32 @fputc(i32 10, %struct._IO_FILE* %649)
  br label %.critedge68

.critedge68:                                      ; preds = %.critedge66, %634
  %650 = load double, double* %ave, align 8, !tbaa !32
  %651 = load double, double* %max, align 8, !tbaa !32
  %652 = load double, double* %min, align 8, !tbaa !32
  %653 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0), double %650, double %651, double %652)
  %654 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %655

; <label>:655                                     ; preds = %655, %.critedge68
  %indvars.iv208 = phi i64 [ 0, %.critedge68 ], [ %indvars.iv.next209, %655 ]
  %656 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv208
  %657 = load i32, i32* %656, align 4, !tbaa !1
  %658 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %657)
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  %exitcond210 = icmp eq i64 %indvars.iv.next209, 10
  br i1 %exitcond210, label %659, label %655

; <label>:659                                     ; preds = %655
  %fputc43 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %660

; <label>:660                                     ; preds = %659, %631
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %time_other, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %661 = load i32, i32* %me, align 4, !tbaa !1
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %.thread122

; <label>:663                                     ; preds = %660
  %664 = icmp eq i32 %screen_yaml, 0
  br i1 %664, label %.critedge74, label %.critedge71

.critedge71:                                      ; preds = %663
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %666 = load double, double* %ave, align 8, !tbaa !32
  %667 = load double, double* %max, align 8, !tbaa !32
  %668 = load double, double* %min, align 8, !tbaa !32
  %669 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %665, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0), double %666, double %667, double %668)
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %671 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %670)
  %672 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %673

; <label>:673                                     ; preds = %673, %.critedge71
  %indvars.iv205 = phi i64 [ 0, %.critedge71 ], [ %indvars.iv.next206, %673 ]
  %674 = phi %struct._IO_FILE* [ %672, %.critedge71 ], [ %678, %673 ]
  %675 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv205
  %676 = load i32, i32* %675, align 4, !tbaa !1
  %677 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %674, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %676)
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  %678 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond207 = icmp eq i64 %indvars.iv.next206, 10
  br i1 %exitcond207, label %.critedge72, label %673

.critedge72:                                      ; preds = %673
  %fputc40 = call i32 @fputc(i32 10, %struct._IO_FILE* %678)
  br label %.critedge74

.critedge74:                                      ; preds = %.critedge72, %663
  %679 = load double, double* %ave, align 8, !tbaa !32
  %680 = load double, double* %max, align 8, !tbaa !32
  %681 = load double, double* %min, align 8, !tbaa !32
  %682 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0), double %679, double %680, double %681)
  %683 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %684

; <label>:684                                     ; preds = %684, %.critedge74
  %indvars.iv202 = phi i64 [ 0, %.critedge74 ], [ %indvars.iv.next203, %684 ]
  %685 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv202
  %686 = load i32, i32* %685, align 4, !tbaa !1
  %687 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %686)
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  %exitcond204 = icmp eq i64 %indvars.iv.next203, 10
  br i1 %exitcond204, label %688, label %684

; <label>:688                                     ; preds = %684
  %fputc37 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  %.pr121 = load i32, i32* %me, align 4, !tbaa !1
  %689 = icmp eq i32 %.pr121, 0
  br i1 %689, label %690, label %.thread122

; <label>:690                                     ; preds = %688
  %691 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %fputc31 = call i32 @fputc(i32 10, %struct._IO_FILE* %691)
  %fputc34 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %.thread122

.thread122:                                       ; preds = %690, %688, %660
  %692 = load i32, i32* %12, align 4, !tbaa !88
  %693 = sitofp i32 %692 to double
  store double %693, double* %tmp, align 8, !tbaa !32
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %tmp, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %694 = load i32, i32* %me, align 4, !tbaa !1
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %722

; <label>:696                                     ; preds = %.thread122
  %697 = icmp eq i32 %screen_yaml, 0
  br i1 %697, label %.critedge80, label %.critedge77

.critedge77:                                      ; preds = %696
  %698 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %699 = load double, double* %ave, align 8, !tbaa !32
  %700 = load double, double* %max, align 8, !tbaa !32
  %701 = load double, double* %min, align 8, !tbaa !32
  %702 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %698, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), double %699, double %700, double %701)
  %703 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %704 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %703)
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %706

; <label>:706                                     ; preds = %706, %.critedge77
  %indvars.iv199 = phi i64 [ 0, %.critedge77 ], [ %indvars.iv.next200, %706 ]
  %707 = phi %struct._IO_FILE* [ %705, %.critedge77 ], [ %711, %706 ]
  %708 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv199
  %709 = load i32, i32* %708, align 4, !tbaa !1
  %710 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %707, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %709)
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond201 = icmp eq i64 %indvars.iv.next200, 10
  br i1 %exitcond201, label %.critedge78, label %706

.critedge78:                                      ; preds = %706
  %fputc28 = call i32 @fputc(i32 10, %struct._IO_FILE* %711)
  br label %.critedge80

.critedge80:                                      ; preds = %.critedge78, %696
  %712 = load double, double* %ave, align 8, !tbaa !32
  %713 = load double, double* %max, align 8, !tbaa !32
  %714 = load double, double* %min, align 8, !tbaa !32
  %715 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), double %712, double %713, double %714)
  %716 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %717

; <label>:717                                     ; preds = %717, %.critedge80
  %indvars.iv196 = phi i64 [ 0, %.critedge80 ], [ %indvars.iv.next197, %717 ]
  %718 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv196
  %719 = load i32, i32* %718, align 4, !tbaa !1
  %720 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %719)
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond198 = icmp eq i64 %indvars.iv.next197, 10
  br i1 %exitcond198, label %721, label %717

; <label>:721                                     ; preds = %717
  %fputc25 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %722

; <label>:722                                     ; preds = %721, %.thread122
  %723 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 2
  %724 = load i32, i32* %723, align 8, !tbaa !112
  %725 = sitofp i32 %724 to double
  store double %725, double* %tmp, align 8, !tbaa !32
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %tmp, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %726 = load i32, i32* %me, align 4, !tbaa !1
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %.preheader129

; <label>:728                                     ; preds = %722
  %729 = icmp eq i32 %screen_yaml, 0
  br i1 %729, label %.critedge86, label %.critedge83

.critedge83:                                      ; preds = %728
  %730 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %731 = load double, double* %ave, align 8, !tbaa !32
  %732 = load double, double* %max, align 8, !tbaa !32
  %733 = load double, double* %min, align 8, !tbaa !32
  %734 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %730, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i64 0, i64 0), double %731, double %732, double %733)
  %735 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %736 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %735)
  %737 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %738

; <label>:738                                     ; preds = %738, %.critedge83
  %indvars.iv193 = phi i64 [ 0, %.critedge83 ], [ %indvars.iv.next194, %738 ]
  %739 = phi %struct._IO_FILE* [ %737, %.critedge83 ], [ %743, %738 ]
  %740 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv193
  %741 = load i32, i32* %740, align 4, !tbaa !1
  %742 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %739, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %741)
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %743 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond195 = icmp eq i64 %indvars.iv.next194, 10
  br i1 %exitcond195, label %.critedge84, label %738

.critedge84:                                      ; preds = %738
  %fputc22 = call i32 @fputc(i32 10, %struct._IO_FILE* %743)
  br label %.critedge86

.critedge86:                                      ; preds = %.critedge84, %728
  %744 = load double, double* %ave, align 8, !tbaa !32
  %745 = load double, double* %max, align 8, !tbaa !32
  %746 = load double, double* %min, align 8, !tbaa !32
  %747 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i64 0, i64 0), double %744, double %745, double %746)
  %748 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %749

; <label>:749                                     ; preds = %749, %.critedge86
  %indvars.iv190 = phi i64 [ 0, %.critedge86 ], [ %indvars.iv.next191, %749 ]
  %750 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv190
  %751 = load i32, i32* %750, align 4, !tbaa !1
  %752 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %751)
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %exitcond192 = icmp eq i64 %indvars.iv.next191, 10
  br i1 %exitcond192, label %753, label %749

; <label>:753                                     ; preds = %749
  %fputc19 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %.preheader129

.preheader129:                                    ; preds = %753, %722
  %754 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 1
  %755 = load i32, i32* %754, align 4, !tbaa !141
  %756 = icmp sgt i32 %755, 0
  br i1 %756, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader129
  %757 = getelementptr inbounds %class.Comm, %class.Comm* %comm, i64 0, i32 6
  %758 = load i32*, i32** %757, align 8
  %759 = sext i32 %755 to i64
  br label %760

; <label>:760                                     ; preds = %760, %.lr.ph145
  %indvars.iv188 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next189, %760 ]
  %n.0143 = phi i32 [ 0, %.lr.ph145 ], [ %763, %760 ]
  %761 = getelementptr inbounds i32, i32* %758, i64 %indvars.iv188
  %762 = load i32, i32* %761, align 4, !tbaa !1
  %763 = add nsw i32 %762, %n.0143
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1
  %764 = icmp slt i64 %indvars.iv.next189, %759
  br i1 %764, label %760, label %._crit_edge146.loopexit

._crit_edge146.loopexit:                          ; preds = %760
  %phitmp = sitofp i32 %763 to double
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit, %.preheader129
  %n.0.lcssa = phi double [ 0.000000e+00, %.preheader129 ], [ %phitmp, %._crit_edge146.loopexit ]
  store double %n.0.lcssa, double* %tmp, align 8, !tbaa !32
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %tmp, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %765 = load i32, i32* %me, align 4, !tbaa !1
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %.preheader

; <label>:767                                     ; preds = %._crit_edge146
  %768 = icmp eq i32 %screen_yaml, 0
  br i1 %768, label %.critedge92, label %.critedge89

.critedge89:                                      ; preds = %767
  %769 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %770 = load double, double* %ave, align 8, !tbaa !32
  %771 = load double, double* %max, align 8, !tbaa !32
  %772 = load double, double* %min, align 8, !tbaa !32
  %773 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %769, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), double %770, double %771, double %772)
  %774 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %775 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %774)
  %776 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %777

; <label>:777                                     ; preds = %777, %.critedge89
  %indvars.iv185 = phi i64 [ 0, %.critedge89 ], [ %indvars.iv.next186, %777 ]
  %778 = phi %struct._IO_FILE* [ %776, %.critedge89 ], [ %782, %777 ]
  %779 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv185
  %780 = load i32, i32* %779, align 4, !tbaa !1
  %781 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %778, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %780)
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  %782 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond187 = icmp eq i64 %indvars.iv.next186, 10
  br i1 %exitcond187, label %.critedge90, label %777

.critedge90:                                      ; preds = %777
  %fputc16 = call i32 @fputc(i32 10, %struct._IO_FILE* %782)
  br label %.critedge92

.critedge92:                                      ; preds = %.critedge90, %767
  %783 = load double, double* %ave, align 8, !tbaa !32
  %784 = load double, double* %max, align 8, !tbaa !32
  %785 = load double, double* %min, align 8, !tbaa !32
  %786 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), double %783, double %784, double %785)
  %787 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %788

; <label>:788                                     ; preds = %788, %.critedge92
  %indvars.iv182 = phi i64 [ 0, %.critedge92 ], [ %indvars.iv.next183, %788 ]
  %789 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv182
  %790 = load i32, i32* %789, align 4, !tbaa !1
  %791 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %790)
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %exitcond184 = icmp eq i64 %indvars.iv.next183, 10
  br i1 %exitcond184, label %792, label %788

; <label>:792                                     ; preds = %788
  %fputc13 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %.preheader

.preheader:                                       ; preds = %792, %._crit_edge146
  %793 = load i32, i32* %12, align 4, !tbaa !88
  %794 = icmp sgt i32 %793, 0
  br i1 %794, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %795 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 8
  %796 = load i32*, i32** %795, align 8
  %797 = sext i32 %793 to i64
  br label %798

; <label>:798                                     ; preds = %798, %.lr.ph
  %indvars.iv180 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next181, %798 ]
  %n.1139 = phi i32 [ 0, %.lr.ph ], [ %801, %798 ]
  %799 = getelementptr inbounds i32, i32* %796, i64 %indvars.iv180
  %800 = load i32, i32* %799, align 4, !tbaa !1
  %801 = add nsw i32 %800, %n.1139
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %802 = icmp slt i64 %indvars.iv.next181, %797
  br i1 %802, label %798, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %798
  %phitmp230 = sitofp i32 %801 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %n.1.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %phitmp230, %._crit_edge.loopexit ]
  store double %n.1.lcssa, double* %tmp, align 8, !tbaa !32
  call void @_Z5statsiPdS_S_S_iPi(i32 1, double* nonnull %tmp, double* nonnull %ave, double* nonnull %max, double* nonnull %min, i32 10, i32* %564)
  %803 = load i32, i32* %me, align 4, !tbaa !1
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %831

; <label>:805                                     ; preds = %._crit_edge
  %806 = icmp eq i32 %screen_yaml, 0
  br i1 %806, label %.critedge98, label %.critedge95

.critedge95:                                      ; preds = %805
  %807 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %808 = load double, double* %ave, align 8, !tbaa !32
  %809 = load double, double* %max, align 8, !tbaa !32
  %810 = load double, double* %min, align 8, !tbaa !32
  %811 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %807, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), double %808, double %809, double %810)
  %812 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %813 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %812)
  %814 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  br label %815

; <label>:815                                     ; preds = %815, %.critedge95
  %indvars.iv177 = phi i64 [ 0, %.critedge95 ], [ %indvars.iv.next178, %815 ]
  %816 = phi %struct._IO_FILE* [ %814, %.critedge95 ], [ %820, %815 ]
  %817 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv177
  %818 = load i32, i32* %817, align 4, !tbaa !1
  %819 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %816, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %818)
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %820 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %exitcond179 = icmp eq i64 %indvars.iv.next178, 10
  br i1 %exitcond179, label %.critedge96, label %815

.critedge96:                                      ; preds = %815
  %fputc10 = call i32 @fputc(i32 10, %struct._IO_FILE* %820)
  br label %.critedge98

.critedge98:                                      ; preds = %.critedge96, %805
  %821 = load double, double* %ave, align 8, !tbaa !32
  %822 = load double, double* %max, align 8, !tbaa !32
  %823 = load double, double* %min, align 8, !tbaa !32
  %824 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), double %821, double %822, double %823)
  %825 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp.0103)
  br label %826

; <label>:826                                     ; preds = %826, %.critedge98
  %indvars.iv = phi i64 [ 0, %.critedge98 ], [ %indvars.iv.next, %826 ]
  %827 = getelementptr inbounds [10 x i32], [10 x i32]* %histo, i64 0, i64 %indvars.iv
  %828 = load i32, i32* %827, align 4, !tbaa !1
  %829 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %828)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond, label %830, label %826

; <label>:830                                     ; preds = %826
  %fputc7 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  br label %831

; <label>:831                                     ; preds = %830, %._crit_edge
  %832 = call i32 @MPI_Allreduce(i8* %4, i8* %8, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %833 = load i32, i32* %me, align 4, !tbaa !1
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %.thread128

; <label>:835                                     ; preds = %831
  %836 = icmp eq i32 %screen_yaml, 0
  br i1 %836, label %841, label %837

; <label>:837                                     ; preds = %835
  %838 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %839 = load double, double* %total, align 8, !tbaa !32
  %840 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %838, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), double %839)
  br label %841

; <label>:841                                     ; preds = %837, %835
  %842 = load double, double* %total, align 8, !tbaa !32
  %843 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp.0103, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), double %842)
  %.pr124 = load i32, i32* %me, align 4, !tbaa !1
  %844 = icmp eq i32 %.pr124, 0
  br i1 %844, label %845, label %.thread128

; <label>:845                                     ; preds = %841
  br i1 %836, label %.thread125, label %846

; <label>:846                                     ; preds = %845
  %847 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %847)
  br label %.thread125

.thread125:                                       ; preds = %846, %845
  %fputc4 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0103)
  %.pr127.pr = load i32, i32* %me, align 4, !tbaa !1
  %848 = icmp eq i32 %.pr127.pr, 0
  br i1 %848, label %849, label %.thread128

; <label>:849                                     ; preds = %.thread125
  %850 = call i32 @fclose(%struct._IO_FILE* %fp.0103)
  br label %.thread128

.thread128:                                       ; preds = %849, %.thread125, %841, %831
  call void @llvm.lifetime.end(i64 8, i8* %536) #8
  call void @llvm.lifetime.end(i64 8, i8* %514) #8
  call void @llvm.lifetime.end(i64 8, i8* %492) #8
  call void @llvm.lifetime.end(i64 8, i8* %470) #8
  call void @llvm.lifetime.end(i64 8, i8* %385) #8
  br label %.thread

.thread:                                          ; preds = %.thread128, %68, %65, %62
  call void @llvm.lifetime.end(i64 4, i8* %54) #8
  call void @llvm.lifetime.end(i64 4, i8* %15) #8
  call void @llvm.lifetime.end(i64 4, i8* %11) #8
  call void @llvm.lifetime.end(i64 8, i8* %8) #8
  call void @llvm.lifetime.end(i64 8, i8* %7) #8
  call void @llvm.lifetime.end(i64 8, i8* %6) #8
  call void @llvm.lifetime.end(i64 8, i8* %5) #8
  call void @llvm.lifetime.end(i64 8, i8* %4) #8
  call void @llvm.lifetime.end(i64 40, i8* %3) #8
  call void @llvm.lifetime.end(i64 4, i8* %2) #8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #8
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #8

; Function Attrs: uwtable
define void @_Z5statsiPdS_S_S_iPi(i32 %n, double* nocapture readonly %data, double* nocapture %pave, double* nocapture %pmax, double* nocapture %pmin, i32 %nhisto, i32* %histo) #13 {
  %1 = bitcast i32* %histo to i8*
  %2 = alloca i32, align 4
  %min = alloca double, align 8
  %max = alloca double, align 8
  %ave = alloca double, align 8
  %ntotal = alloca i32, align 4
  %tmp = alloca double, align 8
  store i32 %n, i32* %2, align 4, !tbaa !1
  %3 = bitcast double* %min to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #8
  store double 1.000000e+20, double* %min, align 8, !tbaa !32
  %4 = bitcast double* %max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #8
  store double -1.000000e+20, double* %max, align 8, !tbaa !32
  %5 = bitcast double* %ave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #8
  store double 0.000000e+00, double* %ave, align 8, !tbaa !32
  %6 = icmp sgt i32 %n, 0
  br i1 %6, label %.lr.ph12, label %24

.lr.ph12:                                         ; preds = %0
  %7 = sext i32 %n to i64
  br label %8

; <label>:8                                       ; preds = %21, %.lr.ph12
  %9 = phi double [ -1.000000e+20, %.lr.ph12 ], [ %22, %21 ]
  %10 = phi double [ 1.000000e+20, %.lr.ph12 ], [ %18, %21 ]
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %21 ]
  %11 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %14, %21 ]
  %12 = getelementptr inbounds double, double* %data, i64 %indvars.iv20
  %13 = load double, double* %12, align 8, !tbaa !32
  %14 = fadd double %13, %11
  %15 = fcmp olt double %13, %10
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  store double %13, double* %min, align 8, !tbaa !32
  br label %17

; <label>:17                                      ; preds = %16, %8
  %18 = phi double [ %13, %16 ], [ %10, %8 ]
  %19 = fcmp ogt double %13, %9
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %17
  store double %13, double* %max, align 8, !tbaa !32
  br label %21

; <label>:21                                      ; preds = %20, %17
  %22 = phi double [ %13, %20 ], [ %9, %17 ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %23 = icmp slt i64 %indvars.iv.next21, %7
  br i1 %23, label %8, label %._crit_edge13

._crit_edge13:                                    ; preds = %21
  store double %14, double* %ave, align 8, !tbaa !32
  br label %24

; <label>:24                                      ; preds = %._crit_edge13, %0
  %25 = bitcast i32* %ntotal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #8
  %26 = bitcast i32* %2 to i8*
  %27 = call i32 @MPI_Allreduce(i8* %26, i8* %25, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
  %28 = bitcast double* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #8
  %29 = call i32 @MPI_Allreduce(i8* %5, i8* %28, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %30 = load double, double* %tmp, align 8, !tbaa !32
  %31 = load i32, i32* %ntotal, align 4, !tbaa !1
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %30, %32
  store double %33, double* %ave, align 8, !tbaa !32
  %34 = call i32 @MPI_Allreduce(i8* %3, i8* %28, i32 1, i32 1275070475, i32 1476395010, i32 1140850688)
  %35 = bitcast double* %tmp to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !32
  %37 = bitcast double* %min to i64*
  store i64 %36, i64* %37, align 8, !tbaa !32
  %38 = call i32 @MPI_Allreduce(i8* %4, i8* %28, i32 1, i32 1275070475, i32 1476395009, i32 1140850688)
  %39 = load i64, i64* %35, align 8, !tbaa !32
  %40 = bitcast double* %max to i64*
  store i64 %39, i64* %40, align 8, !tbaa !32
  %41 = icmp sgt i32 %nhisto, 0
  %42 = bitcast i64 %39 to double
  br i1 %41, label %._crit_edge9.loopexit, label %._crit_edge9

._crit_edge9.loopexit:                            ; preds = %24
  %43 = add i32 %nhisto, -1
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 2
  %46 = add nuw nsw i64 %45, 4
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %46, i32 4, i1 false)
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %24
  %47 = load double, double* %min, align 8, !tbaa !32
  %48 = fsub double %42, %47
  %49 = load i32, i32* %2, align 4, !tbaa !1
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %._crit_edge9
  %51 = fcmp oeq double %48, 0.000000e+00
  %52 = add nsw i32 %nhisto, -1
  %53 = sitofp i32 %nhisto to double
  %54 = sext i32 %49 to i64
  br label %55

; <label>:55                                      ; preds = %63, %.lr.ph4
  %indvars.iv14 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next15, %63 ]
  br i1 %51, label %63, label %56

; <label>:56                                      ; preds = %55
  %57 = getelementptr inbounds double, double* %data, i64 %indvars.iv14
  %58 = load double, double* %57, align 8, !tbaa !32
  %59 = fsub double %58, %47
  %60 = fdiv double %59, %48
  %61 = fmul double %53, %60
  %62 = fptosi double %61 to i32
  br label %63

; <label>:63                                      ; preds = %56, %55
  %m.0 = phi i32 [ %62, %56 ], [ 0, %55 ]
  %64 = icmp slt i32 %m.0, %nhisto
  %m.0. = select i1 %64, i32 %m.0, i32 %52
  %65 = sext i32 %m.0. to i64
  %66 = getelementptr inbounds i32, i32* %histo, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4, !tbaa !1
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %69 = icmp slt i64 %indvars.iv.next15, %54
  br i1 %69, label %55, label %._crit_edge5.loopexit

._crit_edge5.loopexit:                            ; preds = %63
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %._crit_edge9
  %70 = sext i32 %nhisto to i64
  %71 = shl nsw i64 %70, 2
  %72 = call noalias i8* @malloc(i64 %71) #8
  %73 = call i32 @MPI_Allreduce(i8* %1, i8* %72, i32 %nhisto, i32 1275069445, i32 1476395011, i32 1140850688)
  br i1 %41, label %._crit_edge.loopexit, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %._crit_edge5
  %74 = add i32 %nhisto, -1
  %75 = zext i32 %74 to i64
  %76 = shl nuw nsw i64 %75, 2
  %77 = add nuw nsw i64 %76, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %72, i64 %77, i32 4, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge5
  call void @free(i8* %72) #8
  %78 = bitcast double* %ave to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !32
  %80 = bitcast double* %pave to i64*
  store i64 %79, i64* %80, align 8, !tbaa !32
  %81 = load i64, i64* %40, align 8, !tbaa !32
  %82 = bitcast double* %pmax to i64*
  store i64 %81, i64* %82, align 8, !tbaa !32
  %83 = load i64, i64* %37, align 8, !tbaa !32
  %84 = bitcast double* %pmin to i64*
  store i64 %83, i64* %84, align 8, !tbaa !32
  call void @llvm.lifetime.end(i64 8, i8* %28) #8
  call void @llvm.lifetime.end(i64 4, i8* %25) #8
  call void @llvm.lifetime.end(i64 8, i8* %5) #8
  call void @llvm.lifetime.end(i64 8, i8* %4) #8
  call void @llvm.lifetime.end(i64 8, i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z25read_lammps_parse_keywordi(i32 %first) #11 {
  %buffer = alloca [255 x i8], align 16
  %1 = getelementptr inbounds [255 x i8], [255 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 255, i8* %1) #8
  %2 = icmp eq i32 %first, 0
  br i1 %2, label %select.unfold.preheader, label %.lr.ph.preheader

select.unfold.preheader:                          ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %4 = tail call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %3)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0, %select.unfold.preheader
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %6 = tail call i64 @strspn(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i64 0, i64 0)) #18
  %7 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0)) #18
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %select.unfold, label %.critedge.loopexit

select.unfold:                                    ; preds = %.lr.ph
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %10 = tail call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %9)
  %11 = icmp eq i8* %10, null
  br i1 %11, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %.lr.ph, %select.unfold
  %eof.0.shrunk.lcssa.ph = phi i1 [ false, %select.unfold ], [ true, %.lr.ph ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %select.unfold.preheader
  %eof.0.shrunk.lcssa = phi i1 [ false, %select.unfold.preheader ], [ %eof.0.shrunk.lcssa.ph, %.critedge.loopexit ]
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %13 = call i8* @fgets(i8* %1, i32 255, %struct._IO_FILE* %12)
  %not. = icmp ne i8* %13, null
  %14 = and i1 %not., %eof.0.shrunk.lcssa
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %.critedge
  store i8 0, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), align 16, !tbaa !231
  br label %30

; <label>:16                                      ; preds = %.critedge
  %17 = call i64 @strspn(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i64 0, i64 0)) #18
  %18 = call i64 @strlen(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0)) #18
  %19 = shl i64 %18, 32
  %sext8 = add i64 %19, -4294967296
  %20 = ashr exact i64 %sext8, 32
  br label %21

; <label>:21                                      ; preds = %switch.edge, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %switch.edge ], [ %20, %16 ]
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* @line, i64 0, i64 %indvars.iv
  %23 = load i8, i8* %22, align 1, !tbaa !231
  switch i8 %23, label %.critedge3 [
    i8 32, label %switch.edge
    i8 9, label %switch.edge
    i8 10, label %switch.edge
    i8 13, label %switch.edge
  ]

.critedge3:                                       ; preds = %21
  %24 = shl i64 %indvars.iv, 32
  %sext9 = add i64 %24, 4294967296
  %25 = ashr exact i64 %sext9, 32
  %26 = getelementptr inbounds [255 x i8], [255 x i8]* @line, i64 0, i64 %25
  store i8 0, i8* %26, align 1, !tbaa !231
  %sext = shl i64 %17, 32
  %27 = ashr exact i64 %sext, 32
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* @line, i64 0, i64 %27
  %29 = call i8* @strcpy(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), i8* %28) #8
  br label %30

switch.edge:                                      ; preds = %21, %21, %21, %21
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %21

; <label>:30                                      ; preds = %.critedge3, %15
  call void @llvm.lifetime.end(i64 255, i8* %1) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define void @_Z18read_lammps_headerR4Atom(%class.Atom* dereferenceable(224) %atom) #11 {
  %ntypes = alloca i32, align 4
  %xlo = alloca double, align 8
  %xhi = alloca double, align 8
  %ylo = alloca double, align 8
  %yhi = alloca double, align 8
  %zlo = alloca double, align 8
  %zhi = alloca double, align 8
  %str = alloca [128 x i8], align 16
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %2 = tail call i8* @fgets(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %1)
  %3 = bitcast i32* %ntypes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #8
  store i32 0, i32* %ntypes, align 4, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %5 = call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %4)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %7 = bitcast double* %xlo to i8*
  %8 = bitcast double* %xhi to i8*
  %9 = bitcast double* %ylo to i8*
  %10 = bitcast double* %yhi to i8*
  %11 = bitcast double* %zlo to i8*
  %12 = bitcast double* %zhi to i8*
  %13 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %15 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  br label %20

.critedge:                                        ; preds = %29
  call void @llvm.lifetime.end(i64 8, i8* %12) #8
  call void @llvm.lifetime.end(i64 8, i8* %11) #8
  call void @llvm.lifetime.end(i64 8, i8* %10) #8
  call void @llvm.lifetime.end(i64 8, i8* %9) #8
  call void @llvm.lifetime.end(i64 8, i8* %8) #8
  call void @llvm.lifetime.end(i64 8, i8* %7) #8
  br label %.backedge

.backedge:                                        ; preds = %67, %.critedge
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %18 = call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %17)
  %19 = icmp eq i8* %18, null
  br i1 %19, label %.thread.loopexit, label %20

; <label>:20                                      ; preds = %.backedge, %.lr.ph
  %21 = call i64 @strlen(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0)) #18
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %.thread.loopexit, label %25

.thread.loopexit:                                 ; preds = %.backedge, %20
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %0
  store i8 0, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), align 16, !tbaa !231
  br label %.thread3

; <label>:25                                      ; preds = %20
  call void @llvm.lifetime.start(i64 8, i8* %7) #8
  call void @llvm.lifetime.start(i64 8, i8* %8) #8
  call void @llvm.lifetime.start(i64 8, i8* %9) #8
  call void @llvm.lifetime.start(i64 8, i8* %10) #8
  call void @llvm.lifetime.start(i64 8, i8* %11) #8
  call void @llvm.lifetime.start(i64 8, i8* %12) #8
  %26 = call i8* @strchr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 35) #18
  %27 = icmp eq i8* %26, null
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %25
  store i8 0, i8* %26, align 1, !tbaa !231
  br label %29

; <label>:29                                      ; preds = %28, %25
  %30 = call i64 @strspn(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i64 0, i64 0)) #18
  %31 = call i64 @strlen(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0)) #18
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %.critedge, label %33

; <label>:33                                      ; preds = %29
  %34 = call i8* @strstr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.221, i64 0, i64 0)) #18
  %35 = icmp eq i8* %34, null
  br i1 %35, label %38, label %36

; <label>:36                                      ; preds = %33
  %37 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.222, i64 0, i64 0), i32* %16) #8
  br label %67

; <label>:38                                      ; preds = %33
  %39 = call i8* @strstr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.223, i64 0, i64 0)) #18
  %40 = icmp eq i8* %39, null
  br i1 %40, label %43, label %41

; <label>:41                                      ; preds = %38
  %42 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.222, i64 0, i64 0), i32* nonnull %ntypes) #8
  br label %67

; <label>:43                                      ; preds = %38
  %44 = call i8* @strstr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.224, i64 0, i64 0)) #18
  %45 = icmp eq i8* %44, null
  br i1 %45, label %51, label %46

; <label>:46                                      ; preds = %43
  %47 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.225, i64 0, i64 0), double* nonnull %xlo, double* nonnull %xhi) #8
  %48 = load double, double* %xhi, align 8, !tbaa !32
  %49 = load double, double* %xlo, align 8, !tbaa !32
  %50 = fsub double %48, %49
  store double %50, double* %15, align 8, !tbaa !61
  br label %67

; <label>:51                                      ; preds = %43
  %52 = call i8* @strstr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.226, i64 0, i64 0)) #18
  %53 = icmp eq i8* %52, null
  br i1 %53, label %59, label %54

; <label>:54                                      ; preds = %51
  %55 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.225, i64 0, i64 0), double* nonnull %ylo, double* nonnull %yhi) #8
  %56 = load double, double* %yhi, align 8, !tbaa !32
  %57 = load double, double* %ylo, align 8, !tbaa !32
  %58 = fsub double %56, %57
  store double %58, double* %14, align 8, !tbaa !62
  br label %67

; <label>:59                                      ; preds = %51
  %60 = call i8* @strstr(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.227, i64 0, i64 0)) #18
  %61 = icmp eq i8* %60, null
  br i1 %61, label %.critedge2, label %62

; <label>:62                                      ; preds = %59
  %63 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.225, i64 0, i64 0), double* nonnull %zlo, double* nonnull %zhi) #8
  %64 = load double, double* %zhi, align 8, !tbaa !32
  %65 = load double, double* %zlo, align 8, !tbaa !32
  %66 = fsub double %64, %65
  store double %66, double* %13, align 8, !tbaa !63
  br label %67

; <label>:67                                      ; preds = %62, %54, %46, %41, %36
  call void @llvm.lifetime.end(i64 8, i8* %12) #8
  call void @llvm.lifetime.end(i64 8, i8* %11) #8
  call void @llvm.lifetime.end(i64 8, i8* %10) #8
  call void @llvm.lifetime.end(i64 8, i8* %9) #8
  call void @llvm.lifetime.end(i64 8, i8* %8) #8
  call void @llvm.lifetime.end(i64 8, i8* %7) #8
  br label %.backedge

.critedge2:                                       ; preds = %59
  call void @llvm.lifetime.end(i64 8, i8* %12) #8
  call void @llvm.lifetime.end(i64 8, i8* %11) #8
  call void @llvm.lifetime.end(i64 8, i8* %10) #8
  call void @llvm.lifetime.end(i64 8, i8* %9) #8
  call void @llvm.lifetime.end(i64 8, i8* %8) #8
  call void @llvm.lifetime.end(i64 8, i8* %7) #8
  call void @_Z25read_lammps_parse_keywordi(i32 1)
  br label %68

; <label>:68                                      ; preds = %73, %.critedge2
  %indvars.iv = phi i64 [ 0, %.critedge2 ], [ %indvars.iv.next, %73 ]
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* @_ZZ18read_lammps_headerR4AtomE16section_keywords, i64 0, i64 %indvars.iv
  %70 = load i8*, i8** %69, align 8, !tbaa !5
  %71 = call i32 @strcmp(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), i8* %70) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.thread3.loopexit, label %73

; <label>:73                                      ; preds = %68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %74 = icmp slt i64 %indvars.iv.next, 3
  br i1 %74, label %68, label %75

; <label>:75                                      ; preds = %73
  %76 = trunc i64 %indvars.iv.next to i32
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %.thread3

; <label>:78                                      ; preds = %75
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %79) #8
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.231, i64 0, i64 0), i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0)) #8
  call void @llvm.lifetime.end(i64 128, i8* %79) #8
  br label %.thread3

.thread3.loopexit:                                ; preds = %68
  br label %.thread3

.thread3:                                         ; preds = %.thread3.loopexit, %78, %75, %.thread
  call void @llvm.lifetime.end(i64 4, i8* %3) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define void @_Z17read_lammps_atomsR4AtomPd(%class.Atom* nocapture dereferenceable(224) %atom, double* nocapture %x) #11 {
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %xx = alloca double, align 8
  %xy = alloca double, align 8
  %xz = alloca double, align 8
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  store i32 0, i32* %4, align 4, !tbaa !88
  %5 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #8
  %6 = bitcast double* %xx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #8
  %7 = bitcast double* %xy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #8
  %8 = bitcast double* %xz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #8
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %10 = bitcast double* %xx to i64*
  %11 = bitcast double* %xy to i64*
  %12 = bitcast double* %xz to i64*
  br label %13

; <label>:13                                      ; preds = %13, %.lr.ph
  %nread.01 = phi i32 [ 0, %.lr.ph ], [ %34, %13 ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %15 = call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %14)
  %16 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12.232, i64 0, i64 0), i32* nonnull %i, i32* nonnull %type, double* nonnull %xx, double* nonnull %xy, double* nonnull %xz) #8
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %i, align 4, !tbaa !1
  %19 = load i64, i64* %10, align 8, !tbaa !32
  %20 = mul nsw i32 %18, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %x, i64 %21
  %23 = bitcast double* %22 to i64*
  store i64 %19, i64* %23, align 8, !tbaa !32
  %24 = load i64, i64* %11, align 8, !tbaa !32
  %25 = add nsw i32 %20, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %x, i64 %26
  %28 = bitcast double* %27 to i64*
  store i64 %24, i64* %28, align 8, !tbaa !32
  %29 = load i64, i64* %12, align 8, !tbaa !32
  %30 = add nsw i32 %20, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %x, i64 %31
  %33 = bitcast double* %32 to i64*
  store i64 %29, i64* %33, align 8, !tbaa !32
  %34 = add nuw nsw i32 %nread.01, 1
  %exitcond = icmp eq i32 %34, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %13

._crit_edge.loopexit:                             ; preds = %13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 8, i8* %8) #8
  call void @llvm.lifetime.end(i64 8, i8* %7) #8
  call void @llvm.lifetime.end(i64 8, i8* %6) #8
  call void @llvm.lifetime.end(i64 4, i8* %5) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z22read_lammps_velocitiesR4AtomPd(%class.Atom* nocapture readonly dereferenceable(224) %atom, double* nocapture %v) #11 {
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #8
  %2 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !64
  %4 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #8
  %5 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #8
  %6 = bitcast double* %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #8
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %8 = bitcast double* %x to i64*
  %9 = bitcast double* %y to i64*
  %10 = bitcast double* %z to i64*
  br label %11

; <label>:11                                      ; preds = %11, %.lr.ph
  %nread.01 = phi i32 [ 0, %.lr.ph ], [ %32, %11 ]
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %13 = call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %12)
  %14 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13.233, i64 0, i64 0), i32* nonnull %i, double* nonnull %x, double* nonnull %y, double* nonnull %z) #8
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %i, align 4, !tbaa !1
  %17 = load i64, i64* %8, align 8, !tbaa !32
  %18 = mul nsw i32 %16, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %v, i64 %19
  %21 = bitcast double* %20 to i64*
  store i64 %17, i64* %21, align 8, !tbaa !32
  %22 = load i64, i64* %9, align 8, !tbaa !32
  %23 = add nsw i32 %18, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %v, i64 %24
  %26 = bitcast double* %25 to i64*
  store i64 %22, i64* %26, align 8, !tbaa !32
  %27 = load i64, i64* %10, align 8, !tbaa !32
  %28 = add nsw i32 %18, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %v, i64 %29
  %31 = bitcast double* %30 to i64*
  store i64 %27, i64* %31, align 8, !tbaa !32
  %32 = add nuw nsw i32 %nread.01, 1
  %exitcond = icmp eq i32 %32, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %11

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 8, i8* %6) #8
  call void @llvm.lifetime.end(i64 8, i8* %5) #8
  call void @llvm.lifetime.end(i64 8, i8* %4) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #8
  ret void
}

; Function Attrs: uwtable
define i32 @_Z16read_lammps_dataR4AtomR4CommR8NeighborR9IntegrateR6ThermoPci(%class.Atom* dereferenceable(224) %atom, %class.Comm* dereferenceable(336) %comm, %class.Neighbor* dereferenceable(240) %neighbor, %class.Integrate* dereferenceable(88) %integrate, %class.Thermo* dereferenceable(128) %thermo, i8* %file, i32 %units) #13 {
  %str = alloca [128 x i8], align 16
  %tmp = alloca i32, align 4
  %me = alloca i32, align 4
  %natoms = alloca i32, align 4
  %1 = tail call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.236, i64 0, i64 0))
  store %struct._IO_FILE* %1, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %2 = icmp eq %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %4) #8
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15.237, i64 0, i64 0), i8* %file) #8
  call void @llvm.lifetime.end(i64 128, i8* %4) #8
  br label %6

; <label>:6                                       ; preds = %3, %0
  tail call void @_Z18read_lammps_headerR4Atom(%class.Atom* nonnull dereferenceable(224) %atom)
  %7 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 4
  %8 = load double, double* %7, align 8, !tbaa !56
  %9 = tail call i32 @_ZN4Comm5setupEdR4Atom(%class.Comm* nonnull %comm, double %8, %class.Atom* nonnull dereferenceable(224) %atom)
  %10 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 1
  %11 = load i32, i32* %10, align 4, !tbaa !46
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %39

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %15 = load double, double* %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %17 = load double, double* %16, align 8, !tbaa !62
  %18 = fmul double %15, %17
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %20 = load double, double* %19, align 8, !tbaa !63
  %21 = fmul double %18, %20
  %22 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %23 = load i32, i32* %22, align 8, !tbaa !64
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, %21
  %26 = fmul double %25, 1.600000e+01
  %27 = tail call double @pow(double %26, double 0x3FD5555555555555) #8
  %28 = load double, double* %14, align 8, !tbaa !61
  %29 = fdiv double %28, %27
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %10, align 4, !tbaa !46
  %31 = load double, double* %16, align 8, !tbaa !62
  %32 = fdiv double %31, %27
  %33 = fptosi double %32 to i32
  %34 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  store i32 %33, i32* %34, align 8, !tbaa !47
  %35 = load double, double* %19, align 8, !tbaa !63
  %36 = fdiv double %35, %27
  %37 = fptosi double %36 to i32
  %38 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  store i32 %37, i32* %38, align 4, !tbaa !48
  br label %39

; <label>:39                                      ; preds = %13, %6
  %40 = phi i32 [ %30, %13 ], [ %11, %6 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %39
  store i32 1, i32* %10, align 4, !tbaa !46
  br label %43

; <label>:43                                      ; preds = %42, %39
  %44 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 2
  %45 = bitcast i32* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %47, 0
  %49 = lshr i64 %46, 32
  %50 = trunc i64 %49 to i32
  br i1 %48, label %51, label %52

; <label>:51                                      ; preds = %43
  store i32 1, i32* %44, align 8, !tbaa !47
  br label %52

; <label>:52                                      ; preds = %51, %43
  %53 = getelementptr inbounds %class.Neighbor, %class.Neighbor* %neighbor, i64 0, i32 3
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  store i32 1, i32* %53, align 4, !tbaa !48
  br label %56

; <label>:56                                      ; preds = %55, %52
  %57 = tail call i32 @_ZN8Neighbor5setupER4Atom(%class.Neighbor* nonnull %neighbor, %class.Atom* nonnull dereferenceable(224) %atom)
  tail call void @_ZN9Integrate5setupEv(%class.Integrate* nonnull %integrate)
  %58 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  %59 = load double, double* %58, align 8, !tbaa !61
  %60 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  %61 = load double, double* %60, align 8, !tbaa !62
  %62 = fmul double %59, %61
  %63 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  %64 = load double, double* %63, align 8, !tbaa !63
  %65 = fmul double %62, %64
  %66 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %67 = load i32, i32* %66, align 8, !tbaa !64
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %65, %68
  tail call void @_ZN6Thermo5setupEdR9IntegrateR4Atomi(%class.Thermo* nonnull %thermo, double %69, %class.Integrate* nonnull dereferenceable(88) %integrate, %class.Atom* nonnull dereferenceable(224) %atom, i32 %units)
  %70 = load i32, i32* %66, align 8, !tbaa !64
  %71 = tail call double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* nonnull %atom, i32 %70, i32 3)
  %72 = load i32, i32* %66, align 8, !tbaa !64
  %73 = tail call double* @_ZN4Atom25create_2d_MMD_float_arrayEii(%class.Atom* nonnull %atom, i32 %72, i32 3)
  %74 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #8
  %strlenfirst3 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), align 16
  %75 = icmp eq i8 %strlenfirst3, 0
  br i1 %75, label %.preheader, label %.lr.ph6

.lr.ph6:                                          ; preds = %56
  %76 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 13
  br label %85

.preheader.loopexit:                              ; preds = %103
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %56
  %77 = load i32, i32* %66, align 8, !tbaa !64
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %79 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %80 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %81 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %82 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  %83 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %84 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  br label %114

; <label>:85                                      ; preds = %103, %.lr.ph6
  %atomflag.04 = phi i32 [ 0, %.lr.ph6 ], [ %atomflag.1, %103 ]
  %86 = call i32 @strcmp(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.228, i64 0, i64 0)) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  call void @_Z17read_lammps_atomsR4AtomPd(%class.Atom* nonnull dereferenceable(224) %atom, double* %71)
  br label %103

; <label>:89                                      ; preds = %85
  %90 = call i32 @strcmp(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.229, i64 0, i64 0)) #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %89
  %93 = icmp eq i32 %atomflag.04, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %92
  %puts1 = call i32 @puts(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @str.20, i64 0, i64 0))
  br label %95

; <label>:95                                      ; preds = %94, %92
  call void @_Z22read_lammps_velocitiesR4AtomPd(%class.Atom* nonnull dereferenceable(224) %atom, double* %73)
  br label %103

; <label>:96                                      ; preds = %89
  %97 = call i32 @strcmp(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.230, i64 0, i64 0)) #18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

; <label>:99                                      ; preds = %96
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !5
  %101 = call i8* @fgets(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i32 255, %struct._IO_FILE* %100)
  %102 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull getelementptr inbounds ([255 x i8], [255 x i8]* @line, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17.238, i64 0, i64 0), i32* nonnull %tmp, double* %76) #8
  br label %103

; <label>:103                                     ; preds = %99, %96, %95, %88
  %atomflag.1 = phi i32 [ 1, %88 ], [ %atomflag.04, %95 ], [ %atomflag.04, %99 ], [ %atomflag.04, %96 ]
  call void @_Z25read_lammps_parse_keywordi(i32 0)
  %strlenfirst = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @keyword, i64 0, i64 0), align 16
  %104 = icmp eq i8 %strlenfirst, 0
  br i1 %104, label %.preheader.loopexit, label %85

._crit_edge.loopexit:                             ; preds = %149
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %105 = bitcast i32* %me to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #8
  %106 = call i32 @MPI_Comm_rank(i32 1140850688, i32* nonnull %me)
  %107 = bitcast i32* %natoms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #8
  %108 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %109 = bitcast i32* %108 to i8*
  %110 = call i32 @MPI_Allreduce(i8* %109, i8* %107, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
  %111 = load i32, i32* %natoms, align 4, !tbaa !1
  %112 = load i32, i32* %66, align 8, !tbaa !64
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %157, label %153

; <label>:114                                     ; preds = %149, %.lr.ph
  %115 = phi i32 [ %77, %.lr.ph ], [ %150, %149 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %149 ]
  %116 = mul nuw nsw i64 %indvars.iv, 3
  %117 = getelementptr inbounds double, double* %71, i64 %116
  %118 = load double, double* %117, align 8, !tbaa !32
  %119 = load double, double* %79, align 8, !tbaa !90
  %120 = fcmp ult double %118, %119
  br i1 %120, label %149, label %121

; <label>:121                                     ; preds = %114
  %122 = load double, double* %80, align 8, !tbaa !89
  %123 = fcmp olt double %118, %122
  br i1 %123, label %124, label %149

; <label>:124                                     ; preds = %121
  %125 = add nuw nsw i64 %116, 1
  %126 = getelementptr inbounds double, double* %71, i64 %125
  %127 = load double, double* %126, align 8, !tbaa !32
  %128 = load double, double* %81, align 8, !tbaa !92
  %129 = fcmp ult double %127, %128
  br i1 %129, label %149, label %130

; <label>:130                                     ; preds = %124
  %131 = load double, double* %82, align 8, !tbaa !91
  %132 = fcmp olt double %127, %131
  br i1 %132, label %133, label %149

; <label>:133                                     ; preds = %130
  %134 = add nuw nsw i64 %116, 2
  %135 = getelementptr inbounds double, double* %71, i64 %134
  %136 = load double, double* %135, align 8, !tbaa !32
  %137 = load double, double* %83, align 8, !tbaa !94
  %138 = fcmp ult double %136, %137
  br i1 %138, label %149, label %139

; <label>:139                                     ; preds = %133
  %140 = load double, double* %84, align 8, !tbaa !93
  %141 = fcmp olt double %136, %140
  br i1 %141, label %142, label %149

; <label>:142                                     ; preds = %139
  %143 = getelementptr inbounds double, double* %73, i64 %116
  %144 = load double, double* %143, align 8, !tbaa !32
  %145 = getelementptr inbounds double, double* %73, i64 %125
  %146 = load double, double* %145, align 8, !tbaa !32
  %147 = getelementptr inbounds double, double* %73, i64 %134
  %148 = load double, double* %147, align 8, !tbaa !32
  call void @_ZN4Atom7addatomEdddddd(%class.Atom* nonnull %atom, double %118, double %127, double %136, double %144, double %146, double %148)
  %.pre = load i32, i32* %66, align 8, !tbaa !64
  br label %149

; <label>:149                                     ; preds = %142, %139, %133, %130, %124, %121, %114
  %150 = phi i32 [ %.pre, %142 ], [ %115, %139 ], [ %115, %133 ], [ %115, %130 ], [ %115, %124 ], [ %115, %121 ], [ %115, %114 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %indvars.iv.next, %151
  br i1 %152, label %114, label %._crit_edge.loopexit

; <label>:153                                     ; preds = %._crit_edge
  %154 = load i32, i32* %me, align 4, !tbaa !1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @str.239, i64 0, i64 0))
  br label %157

; <label>:157                                     ; preds = %156, %153, %._crit_edge
  %.0 = phi i32 [ 1, %156 ], [ 1, %153 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end(i64 4, i8* %107) #8
  call void @llvm.lifetime.end(i64 4, i8* %105) #8
  call void @llvm.lifetime.end(i64 4, i8* %74) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @_Z10create_boxR4Atomiiid(%class.Atom* nocapture dereferenceable(224) %atom, i32 %nx, i32 %ny, i32 %nz, double %rho) #11 {
  %1 = fdiv double 4.000000e+00, %rho
  %2 = tail call double @pow(double %1, double 0x3FD5555555555555) #8
  %3 = sitofp i32 %nx to double
  %4 = fmul double %3, %2
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 0
  store double %4, double* %5, align 8, !tbaa !61
  %6 = sitofp i32 %ny to double
  %7 = fmul double %6, %2
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 1
  store double %7, double* %8, align 8, !tbaa !62
  %9 = sitofp i32 %nz to double
  %10 = fmul double %9, %2
  %11 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 2
  store double %10, double* %11, align 8, !tbaa !63
  ret void
}

; Function Attrs: uwtable
define i32 @_Z12create_atomsR4Atomiiid(%class.Atom* dereferenceable(224) %atom, i32 %nx, i32 %ny, i32 %nz, double %rho) #13 {
  %n = alloca i32, align 4
  %iflag = alloca i32, align 4
  %me = alloca i32, align 4
  %iflagall = alloca i32, align 4
  %natoms = alloca i32, align 4
  %1 = shl i32 %nx, 2
  %2 = mul nsw i32 %1, %ny
  %3 = mul nsw i32 %2, %nz
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  store i32 %3, i32* %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  store i32 0, i32* %5, align 4, !tbaa !88
  %6 = fdiv double 4.000000e+00, %rho
  %7 = tail call double @pow(double %6, double 0x3FD5555555555555) #8
  %8 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 3
  %9 = load double, double* %8, align 8, !tbaa !90
  %10 = fmul double %7, 5.000000e-01
  %11 = fdiv double %9, %10
  %12 = fadd double %11, -1.000000e+00
  %13 = fptosi double %12 to i32
  %14 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 4
  %15 = load double, double* %14, align 8, !tbaa !89
  %16 = fdiv double %15, %10
  %17 = fadd double %16, 1.000000e+00
  %18 = fptosi double %17 to i32
  %19 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 5
  %20 = load double, double* %19, align 8, !tbaa !92
  %21 = fdiv double %20, %10
  %22 = fadd double %21, -1.000000e+00
  %23 = fptosi double %22 to i32
  %24 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 6
  %25 = load double, double* %24, align 8, !tbaa !91
  %26 = fdiv double %25, %10
  %27 = fadd double %26, 1.000000e+00
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 7
  %30 = load double, double* %29, align 8, !tbaa !94
  %31 = fdiv double %30, %10
  %32 = fadd double %31, -1.000000e+00
  %33 = fptosi double %32 to i32
  %34 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 18, i32 8
  %35 = load double, double* %34, align 8, !tbaa !93
  %36 = fdiv double %35, %10
  %37 = fadd double %36, 1.000000e+00
  %38 = fptosi double %37 to i32
  %39 = icmp sgt i32 %13, 0
  %40 = select i1 %39, i32 %13, i32 0
  %41 = shl nsw i32 %nx, 1
  %42 = add nsw i32 %41, -1
  %43 = icmp slt i32 %18, %42
  %. = select i1 %43, i32 %18, i32 %42
  %44 = icmp sgt i32 %23, 0
  %45 = select i1 %44, i32 %23, i32 0
  %46 = shl nsw i32 %ny, 1
  %47 = add nsw i32 %46, -1
  %48 = icmp slt i32 %28, %47
  %49 = select i1 %48, i32 %28, i32 %47
  %50 = icmp sgt i32 %33, 0
  %51 = select i1 %50, i32 %33, i32 0
  %52 = shl nsw i32 %nz, 1
  %53 = add nsw i32 %52, -1
  %54 = icmp slt i32 %38, %53
  %.2 = select i1 %54, i32 %38, i32 %53
  %55 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #8
  %56 = bitcast i32* %iflag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #8
  store i32 0, i32* %iflag, align 4, !tbaa !1
  %57 = icmp slt i32 %.2, 0
  br i1 %57, label %.split, label %.outer.split.preheader.preheader

.outer.split.preheader.preheader:                 ; preds = %0
  br label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %.outer.split.preheader.preheader, %.outer
  %58 = phi i32 [ %115, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %59 = phi i1 [ %131, %.outer ], [ true, %.outer.split.preheader.preheader ]
  %60 = phi i32 [ %129, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %oz.0.ph31 = phi i32 [ %.oz.0, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %oy.0.ph30 = phi i32 [ %.oy.1, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %ox.0.ph29 = phi i32 [ %ox.2, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %sz.0.ph28 = phi i32 [ %.sz.1, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %sy.0.ph27 = phi i32 [ %sy.2, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  %sx.0.ph26 = phi i32 [ %.8, %.outer ], [ 0, %.outer.split.preheader.preheader ]
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split, %.outer.split.preheader
  br i1 %59, label %61, label %.outer.split

; <label>:61                                      ; preds = %.outer.split
  %62 = add nsw i32 %60, %sz.0.ph28
  %63 = shl nsw i32 %oy.0.ph30, 3
  %64 = add nsw i32 %63, %sy.0.ph27
  %65 = shl nsw i32 %ox.0.ph29, 3
  %66 = add nsw i32 %65, %sx.0.ph26
  %67 = add nsw i32 %64, %66
  %68 = add nsw i32 %67, %62
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = icmp slt i32 %66, %40
  %or.cond = or i1 %71, %70
  %72 = icmp sgt i32 %66, %.
  %or.cond3 = or i1 %72, %or.cond
  %73 = icmp slt i32 %64, %45
  %or.cond4 = or i1 %73, %or.cond3
  %74 = icmp sgt i32 %64, %49
  %or.cond5 = or i1 %74, %or.cond4
  %75 = icmp slt i32 %62, %51
  %or.cond6 = or i1 %75, %or.cond5
  %76 = icmp sgt i32 %62, %.2
  %or.cond7 = or i1 %76, %or.cond6
  br i1 %or.cond7, label %.outer, label %77

; <label>:77                                      ; preds = %61
  %78 = sitofp i32 %66 to double
  %79 = fmul double %10, %78
  %80 = sitofp i32 %64 to double
  %81 = fmul double %10, %80
  %82 = sitofp i32 %62 to double
  %83 = fmul double %10, %82
  %84 = load double, double* %8, align 8, !tbaa !90
  %85 = fcmp ult double %79, %84
  br i1 %85, label %.outer, label %86

; <label>:86                                      ; preds = %77
  %87 = load double, double* %14, align 8, !tbaa !89
  %88 = fcmp olt double %79, %87
  br i1 %88, label %89, label %.outer

; <label>:89                                      ; preds = %86
  %90 = load double, double* %19, align 8, !tbaa !92
  %91 = fcmp ult double %81, %90
  br i1 %91, label %.outer, label %92

; <label>:92                                      ; preds = %89
  %93 = load double, double* %24, align 8, !tbaa !91
  %94 = fcmp olt double %81, %93
  br i1 %94, label %95, label %.outer

; <label>:95                                      ; preds = %92
  %96 = load double, double* %29, align 8, !tbaa !94
  %97 = fcmp ult double %83, %96
  br i1 %97, label %.outer, label %98

; <label>:98                                      ; preds = %95
  %99 = load double, double* %34, align 8, !tbaa !93
  %100 = fcmp olt double %83, %99
  br i1 %100, label %101, label %.outer

; <label>:101                                     ; preds = %98
  %102 = mul nsw i32 %62, %46
  %103 = add i32 %102, %64
  %104 = mul i32 %103, %41
  %105 = add i32 %66, 1
  %106 = add i32 %105, %104
  store i32 %106, i32* %n, align 4, !tbaa !1
  br label %107

; <label>:107                                     ; preds = %107, %101
  %m.0 = phi i32 [ 0, %101 ], [ %109, %107 ]
  %108 = call double @_Z6randomPi(i32* nonnull %n)
  %109 = add nuw nsw i32 %m.0, 1
  %exitcond = icmp eq i32 %109, 6
  br i1 %exitcond, label %.preheader9.preheader, label %107

.preheader9.preheader:                            ; preds = %107
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.preheader, %.preheader9
  %m.1 = phi i32 [ %111, %.preheader9 ], [ 0, %.preheader9.preheader ]
  %110 = call double @_Z6randomPi(i32* nonnull %n)
  %111 = add nuw nsw i32 %m.1, 1
  %exitcond20 = icmp eq i32 %111, 6
  br i1 %exitcond20, label %.preheader.preheader, label %.preheader9

.preheader.preheader:                             ; preds = %.preheader9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %m.2 = phi i32 [ %113, %.preheader ], [ 0, %.preheader.preheader ]
  %112 = call double @_Z6randomPi(i32* nonnull %n)
  %113 = add nuw nsw i32 %m.2, 1
  %exitcond21 = icmp eq i32 %113, 6
  br i1 %exitcond21, label %114, label %.preheader

; <label>:114                                     ; preds = %.preheader
  tail call void @_ZN4Atom7addatomEdddddd(%class.Atom* nonnull %atom, double %79, double %81, double %83, double %108, double %110, double %112)
  %.pre = load i32, i32* %iflag, align 4
  br label %.outer

.outer:                                           ; preds = %114, %98, %95, %92, %89, %86, %77, %61
  %115 = phi i32 [ %.pre, %114 ], [ %58, %98 ], [ %58, %95 ], [ %58, %92 ], [ %58, %89 ], [ %58, %86 ], [ %58, %77 ], [ %58, %61 ]
  %116 = add nsw i32 %sx.0.ph26, 1
  %117 = icmp eq i32 %116, 8
  %.8 = select i1 %117, i32 0, i32 %116
  %118 = zext i1 %117 to i32
  %.sy.0 = add nsw i32 %118, %sy.0.ph27
  %119 = icmp eq i32 %.sy.0, 8
  %sy.2 = select i1 %119, i32 0, i32 %.sy.0
  %120 = zext i1 %119 to i32
  %sz.1 = add nsw i32 %120, %sz.0.ph28
  %121 = icmp eq i32 %sz.1, 8
  %.sz.1 = select i1 %121, i32 0, i32 %sz.1
  %122 = zext i1 %121 to i32
  %.ox.0 = add nsw i32 %122, %ox.0.ph29
  %123 = shl nsw i32 %.ox.0, 3
  %124 = icmp sgt i32 %123, %.
  %ox.2 = select i1 %124, i32 0, i32 %.ox.0
  %125 = zext i1 %124 to i32
  %oy.1 = add nsw i32 %125, %oy.0.ph30
  %126 = shl nsw i32 %oy.1, 3
  %127 = icmp sgt i32 %126, %49
  %.oy.1 = select i1 %127, i32 0, i32 %oy.1
  %128 = zext i1 %127 to i32
  %.oz.0 = add nsw i32 %128, %oz.0.ph31
  %129 = shl nsw i32 %.oz.0, 3
  %130 = icmp sgt i32 %129, %.2
  %131 = icmp eq i32 %115, 0
  br i1 %130, label %.split.loopexit, label %.outer.split.preheader

.split.loopexit:                                  ; preds = %.outer
  br label %.split

.split:                                           ; preds = %.split.loopexit, %0
  %132 = bitcast i32* %me to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #8
  %133 = call i32 @MPI_Comm_rank(i32 1140850688, i32* nonnull %me)
  %134 = bitcast i32* %iflagall to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #8
  %135 = call i32 @MPI_Allreduce(i8* nonnull %56, i8* %134, i32 1, i32 1275069445, i32 1476395009, i32 1140850688)
  %136 = load i32, i32* %iflagall, align 4, !tbaa !1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

; <label>:138                                     ; preds = %.split
  %139 = load i32, i32* %me, align 4, !tbaa !1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

; <label>:141                                     ; preds = %138
  %puts1 = call i32 @puts(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @str.22, i64 0, i64 0))
  br label %154

; <label>:142                                     ; preds = %.split
  %143 = bitcast i32* %natoms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #8
  %144 = bitcast i32* %5 to i8*
  %145 = call i32 @MPI_Allreduce(i8* %144, i8* %143, i32 1, i32 1275069445, i32 1476395011, i32 1140850688)
  %146 = load i32, i32* %natoms, align 4, !tbaa !1
  %147 = load i32, i32* %4, align 8, !tbaa !64
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %153, label %149

; <label>:149                                     ; preds = %142
  %150 = load i32, i32* %me, align 4, !tbaa !1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %149
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @str.21, i64 0, i64 0))
  br label %153

; <label>:153                                     ; preds = %152, %149, %142
  %.0 = phi i32 [ 1, %152 ], [ 1, %149 ], [ 0, %142 ]
  call void @llvm.lifetime.end(i64 4, i8* %143) #8
  br label %154

; <label>:154                                     ; preds = %153, %141, %138
  %.1 = phi i32 [ %.0, %153 ], [ 1, %141 ], [ 1, %138 ]
  call void @llvm.lifetime.end(i64 4, i8* %134) #8
  call void @llvm.lifetime.end(i64 4, i8* %132) #8
  call void @llvm.lifetime.end(i64 4, i8* %56) #8
  call void @llvm.lifetime.end(i64 4, i8* %55) #8
  ret i32 %.1
}

; Function Attrs: norecurse nounwind uwtable
define double @_Z6randomPi(i32* nocapture %idum) #9 {
  %1 = load i32, i32* %idum, align 4, !tbaa !1
  %2 = sdiv i32 %1, 127773
  %3 = mul i32 %2, -127773
  %4 = add i32 %3, %1
  %5 = mul nsw i32 %4, 16807
  %6 = mul nsw i32 %2, -2836
  %7 = add i32 %5, %6
  %8 = icmp slt i32 %7, 0
  %9 = add nsw i32 %7, 2147483647
  %. = select i1 %8, i32 %9, i32 %7
  store i32 %., i32* %idum, align 4, !tbaa !1
  %10 = sitofp i32 %. to double
  %11 = fmul double %10, 0x3E00000000200000
  ret double %11
}

; Function Attrs: uwtable
define void @_Z15create_velocitydR4AtomR6Thermo(double %t_request, %class.Atom* dereferenceable(224) %atom, %class.Thermo* dereferenceable(128) %thermo) #13 {
  %vxtot = alloca double, align 8
  %vytot = alloca double, align 8
  %vztot = alloca double, align 8
  %tmp = alloca double, align 8
  %1 = bitcast double* %vxtot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #8
  store double 0.000000e+00, double* %vxtot, align 8, !tbaa !32
  %2 = bitcast double* %vytot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #8
  store double 0.000000e+00, double* %vytot, align 8, !tbaa !32
  %3 = bitcast double* %vztot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #8
  store double 0.000000e+00, double* %vztot, align 8, !tbaa !32
  %4 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !88
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %0
  %7 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 5
  %8 = load double*, double** %7, align 8
  %9 = sext i32 %5 to i64
  br label %10

; <label>:10                                      ; preds = %10, %.lr.ph8
  %11 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %25, %10 ]
  %12 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %21, %10 ]
  %13 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %17, %10 ]
  %indvars.iv12 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next13, %10 ]
  %14 = mul nuw nsw i64 %indvars.iv12, 3
  %15 = getelementptr inbounds double, double* %8, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !32
  %17 = fadd double %16, %13
  store double %17, double* %vxtot, align 8, !tbaa !32
  %18 = add nuw nsw i64 %14, 1
  %19 = getelementptr inbounds double, double* %8, i64 %18
  %20 = load double, double* %19, align 8, !tbaa !32
  %21 = fadd double %20, %12
  store double %21, double* %vytot, align 8, !tbaa !32
  %22 = add nuw nsw i64 %14, 2
  %23 = getelementptr inbounds double, double* %8, i64 %22
  %24 = load double, double* %23, align 8, !tbaa !32
  %25 = fadd double %24, %11
  store double %25, double* %vztot, align 8, !tbaa !32
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %26 = icmp slt i64 %indvars.iv.next13, %9
  br i1 %26, label %10, label %._crit_edge9.loopexit

._crit_edge9.loopexit:                            ; preds = %10
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %0
  %27 = bitcast double* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #8
  %28 = call i32 @MPI_Allreduce(i8* %1, i8* %27, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %29 = load double, double* %tmp, align 8, !tbaa !32
  %30 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 0
  %31 = load i32, i32* %30, align 8, !tbaa !64
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %29, %32
  store double %33, double* %vxtot, align 8, !tbaa !32
  %34 = call i32 @MPI_Allreduce(i8* %2, i8* %27, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %35 = load double, double* %tmp, align 8, !tbaa !32
  %36 = load i32, i32* %30, align 8, !tbaa !64
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  store double %38, double* %vytot, align 8, !tbaa !32
  %39 = call i32 @MPI_Allreduce(i8* %3, i8* %27, i32 1, i32 1275070475, i32 1476395011, i32 1140850688)
  %40 = load double, double* %tmp, align 8, !tbaa !32
  %41 = bitcast i32* %30 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %40, %44
  store double %45, double* %vztot, align 8, !tbaa !32
  %46 = lshr i64 %42, 32
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %._crit_edge9
  %49 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 5
  %50 = load double*, double** %49, align 8
  %51 = sext i32 %47 to i64
  br label %52

; <label>:52                                      ; preds = %52, %.lr.ph4
  %indvars.iv10 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next11, %52 ]
  %53 = load double, double* %vxtot, align 8, !tbaa !32
  %54 = mul nuw nsw i64 %indvars.iv10, 3
  %55 = getelementptr inbounds double, double* %50, i64 %54
  %56 = load double, double* %55, align 8, !tbaa !32
  %57 = fsub double %56, %53
  store double %57, double* %55, align 8, !tbaa !32
  %58 = load double, double* %vytot, align 8, !tbaa !32
  %59 = add nuw nsw i64 %54, 1
  %60 = getelementptr inbounds double, double* %50, i64 %59
  %61 = load double, double* %60, align 8, !tbaa !32
  %62 = fsub double %61, %58
  store double %62, double* %60, align 8, !tbaa !32
  %63 = load double, double* %vztot, align 8, !tbaa !32
  %64 = add nuw nsw i64 %54, 2
  %65 = getelementptr inbounds double, double* %50, i64 %64
  %66 = load double, double* %65, align 8, !tbaa !32
  %67 = fsub double %66, %63
  store double %67, double* %65, align 8, !tbaa !32
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %68 = icmp slt i64 %indvars.iv.next11, %51
  br i1 %68, label %52, label %._crit_edge5.loopexit

._crit_edge5.loopexit:                            ; preds = %52
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %._crit_edge9
  %69 = getelementptr inbounds %class.Thermo, %class.Thermo* %thermo, i64 0, i32 7
  store double 0.000000e+00, double* %69, align 8, !tbaa !201
  %70 = call double @_ZN6Thermo11temperatureER4Atom(%class.Thermo* nonnull %thermo, %class.Atom* nonnull dereferenceable(224) %atom)
  %71 = fdiv double %t_request, %70
  %72 = call double @sqrt(double %71) #8
  %73 = load i32, i32* %4, align 4, !tbaa !88
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge5
  %75 = getelementptr inbounds %class.Atom, %class.Atom* %atom, i64 0, i32 5
  %76 = load double*, double** %75, align 8
  %77 = sext i32 %73 to i64
  br label %78

; <label>:78                                      ; preds = %78, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %78 ]
  %79 = mul nuw nsw i64 %indvars.iv, 3
  %80 = getelementptr inbounds double, double* %76, i64 %79
  %81 = load double, double* %80, align 8, !tbaa !32
  %82 = fmul double %72, %81
  store double %82, double* %80, align 8, !tbaa !32
  %83 = add nuw nsw i64 %79, 1
  %84 = getelementptr inbounds double, double* %76, i64 %83
  %85 = load double, double* %84, align 8, !tbaa !32
  %86 = fmul double %72, %85
  store double %86, double* %84, align 8, !tbaa !32
  %87 = add nuw nsw i64 %79, 2
  %88 = getelementptr inbounds double, double* %76, i64 %87
  %89 = load double, double* %88, align 8, !tbaa !32
  %90 = fmul double %72, %89
  store double %90, double* %88, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %91 = icmp slt i64 %indvars.iv.next, %77
  br i1 %91, label %78, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge5
  call void @llvm.lifetime.end(i64 8, i8* %27) #8
  call void @llvm.lifetime.end(i64 8, i8* %3) #8
  call void @llvm.lifetime.end(i64 8, i8* %2) #8
  call void @llvm.lifetime.end(i64 8, i8* %1) #8
  ret void
}

attributes #0 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readnone }
attributes #16 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inlinehint norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin }
attributes #21 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 56}
!8 = !{!"_ZTS2In", !2, i64 0, !2, i64 4, !2, i64 8, !9, i64 16, !9, i64 24, !2, i64 32, !10, i64 36, !9, i64 40, !9, i64 48, !6, i64 56, !2, i64 64, !9, i64 72, !2, i64 80, !9, i64 88, !9, i64 96, !2, i64 104}
!9 = !{!"double", !3, i64 0}
!10 = !{!"_ZTS10ForceStyle", !3, i64 0}
!11 = !{!8, !2, i64 32}
!12 = !{!8, !10, i64 36}
!13 = !{!14, !2, i64 0}
!14 = !{!"_ZTS10ThreadData", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16}
!15 = !{!14, !2, i64 4}
!16 = !{!14, !2, i64 8}
!17 = !{!14, !2, i64 12}
!18 = !{!19, !6, i64 64}
!19 = !{!"_ZTS4Atom", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !9, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !20, i64 104, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !2, i64 216}
!20 = !{!"_ZTS3Box", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!21 = !{!22, !6, i64 240}
!22 = !{!"_ZTS4Comm", !2, i64 0, !2, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !2, i64 168, !2, i64 172, !3, i64 176, !3, i64 200, !3, i64 212, !6, i64 224, !6, i64 232, !6, i64 240, !2, i64 248, !2, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !2, i64 320, !2, i64 324, !2, i64 328}
!23 = !{!24, !6, i64 72}
!24 = !{!"_ZTS5Force", !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56, !2, i64 60, !2, i64 64, !6, i64 72, !2, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !2, i64 124}
!25 = !{!26, !6, i64 80}
!26 = !{!"_ZTS9Integrate", !9, i64 0, !9, i64 8, !2, i64 16, !2, i64 20, !2, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !9, i64 64, !2, i64 72, !6, i64 80}
!27 = !{!28, !6, i64 80}
!28 = !{!"_ZTS8Neighbor", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !9, i64 16, !6, i64 24, !2, i64 32, !2, i64 36, !6, i64 40, !6, i64 48, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !2, i64 104, !2, i64 108, !9, i64 112, !9, i64 120, !9, i64 128, !2, i64 136, !2, i64 140, !2, i64 144, !6, i64 152, !2, i64 160, !2, i64 164, !2, i64 168, !2, i64 172, !2, i64 176, !2, i64 180, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !2, i64 232}
!29 = !{!30, !6, i64 112}
!30 = !{!"_ZTS6Thermo", !2, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !9, i64 120}
!31 = !{!8, !9, i64 40}
!32 = !{!9, !9, i64 0}
!33 = !{!8, !9, i64 48}
!34 = !{!28, !2, i64 64}
!35 = !{!28, !6, i64 72}
!36 = !{!24, !6, i64 88}
!37 = !{!22, !2, i64 248}
!38 = !{!22, !2, i64 252}
!39 = !{!24, !2, i64 60}
!40 = !{!28, !2, i64 60}
!41 = !{!24, !2, i64 64}
!42 = !{!8, !2, i64 64}
!43 = !{!8, !2, i64 0}
!44 = !{!8, !2, i64 4}
!45 = !{!8, !2, i64 8}
!46 = !{!28, !2, i64 4}
!47 = !{!28, !2, i64 8}
!48 = !{!28, !2, i64 12}
!49 = !{!26, !2, i64 16}
!50 = !{!8, !9, i64 72}
!51 = !{!26, !9, i64 0}
!52 = !{!8, !2, i64 80}
!53 = !{!26, !2, i64 72}
!54 = !{!28, !2, i64 0}
!55 = !{!8, !9, i64 96}
!56 = !{!28, !9, i64 16}
!57 = !{!8, !9, i64 88}
!58 = !{!24, !9, i64 8}
!59 = !{!8, !2, i64 104}
!60 = !{!30, !2, i64 0}
!61 = !{!19, !9, i64 104}
!62 = !{!19, !9, i64 112}
!63 = !{!19, !9, i64 120}
!64 = !{!19, !2, i64 0}
!65 = !{!8, !9, i64 24}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !4, i64 0}
!68 = !{!24, !9, i64 32}
!69 = !{!19, !9, i64 80}
!70 = !{!8, !9, i64 16}
!71 = !{!19, !2, i64 40}
!72 = !{!24, !2, i64 40}
!73 = !{!74, !6, i64 0}
!74 = !{!"_ZTS5Timer", !6, i64 0, !9, i64 8, !9, i64 16}
!75 = !{!14, !2, i64 16}
!76 = !{!26, !9, i64 8}
!77 = !{!26, !2, i64 20}
!78 = !{!22, !6, i64 256}
!79 = !{!26, !9, i64 64}
!80 = !{!19, !6, i64 16}
!81 = !{!26, !6, i64 32}
!82 = !{!19, !6, i64 24}
!83 = !{!26, !6, i64 40}
!84 = !{!19, !6, i64 32}
!85 = !{!26, !6, i64 48}
!86 = !{!19, !6, i64 56}
!87 = !{!26, !6, i64 56}
!88 = !{!19, !2, i64 4}
!89 = !{!19, !9, i64 136}
!90 = !{!19, !9, i64 128}
!91 = !{!19, !9, i64 152}
!92 = !{!19, !9, i64 144}
!93 = !{!19, !9, i64 168}
!94 = !{!19, !9, i64 160}
!95 = !{!22, !2, i64 0}
!96 = !{!19, !2, i64 88}
!97 = !{!19, !2, i64 92}
!98 = !{!19, !2, i64 96}
!99 = !{!19, !2, i64 12}
!100 = !{!19, !6, i64 48}
!101 = !{!28, !6, i64 88}
!102 = !{!19, !6, i64 176}
!103 = !{!28, !6, i64 96}
!104 = !{!19, !6, i64 184}
!105 = !{!19, !2, i64 216}
!106 = !{!19, !6, i64 192}
!107 = !{!19, !6, i64 200}
!108 = !{!19, !6, i64 208}
!109 = !{!24, !2, i64 56}
!110 = !{!24, !9, i64 24}
!111 = !{!24, !9, i64 48}
!112 = !{!19, !2, i64 8}
!113 = !{!24, !6, i64 104}
!114 = !{!24, !6, i64 96}
!115 = !{!28, !2, i64 56}
!116 = !{!28, !6, i64 48}
!117 = !{!28, !6, i64 40}
!118 = !{!24, !6, i64 16}
!119 = !{!24, !2, i64 80}
!120 = !{!24, !10, i64 120}
!121 = !{!24, !6, i64 112}
!122 = !{!24, !2, i64 124}
!123 = !{!124, !9, i64 176}
!124 = !{!"_ZTS8ForceEAM", !9, i64 128, !2, i64 136, !2, i64 140, !2, i64 144, !2, i64 148, !6, i64 152, !6, i64 160, !6, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !2, i64 248, !6, i64 256, !125, i64 264}
!125 = !{!"_ZTSN8ForceEAM6FuncflE", !6, i64 0, !2, i64 8, !2, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!126 = !{!124, !9, i64 184}
!127 = !{!124, !9, i64 192}
!128 = !{!124, !9, i64 200}
!129 = !{!124, !2, i64 144}
!130 = !{!124, !2, i64 148}
!131 = !{!124, !6, i64 216}
!132 = !{!124, !6, i64 208}
!133 = !{!124, !6, i64 224}
!134 = !{!124, !6, i64 152}
!135 = !{!124, !2, i64 140}
!136 = !{!124, !6, i64 160}
!137 = !{!124, !6, i64 168}
!138 = !{!124, !2, i64 248}
!139 = !{!124, !6, i64 232}
!140 = !{!124, !6, i64 240}
!141 = !{!22, !2, i64 4}
!142 = !{!22, !6, i64 40}
!143 = !{!22, !6, i64 144}
!144 = !{!22, !6, i64 128}
!145 = !{!22, !6, i64 88}
!146 = !{!22, !6, i64 152}
!147 = !{!22, !6, i64 64}
!148 = !{!22, !6, i64 96}
!149 = !{!22, !6, i64 56}
!150 = !{!22, !6, i64 48}
!151 = !{!22, !6, i64 120}
!152 = !{!124, !2, i64 136}
!153 = !{!124, !6, i64 264}
!154 = !{!124, !9, i64 296}
!155 = !{!124, !9, i64 128}
!156 = !{!125, !9, i64 40}
!157 = !{!125, !6, i64 48}
!158 = !{!125, !6, i64 56}
!159 = !{!125, !6, i64 64}
!160 = !{!125, !2, i64 8}
!161 = !{!125, !2, i64 12}
!162 = !{!125, !9, i64 24}
!163 = !{!125, !9, i64 16}
!164 = !{!28, !2, i64 32}
!165 = !{!28, !2, i64 140}
!166 = !{!28, !2, i64 136}
!167 = !{!28, !2, i64 108}
!168 = !{!28, !6, i64 152}
!169 = !{!28, !6, i64 24}
!170 = !{!28, !2, i64 68}
!171 = !{!28, !2, i64 232}
!172 = !{!28, !2, i64 144}
!173 = !{!28, !9, i64 112}
!174 = !{!28, !9, i64 120}
!175 = !{!28, !9, i64 128}
!176 = !{!28, !2, i64 104}
!177 = !{!28, !9, i64 208}
!178 = !{!28, !2, i64 172}
!179 = !{!28, !9, i64 216}
!180 = !{!28, !9, i64 224}
!181 = !{!28, !2, i64 164}
!182 = !{!28, !2, i64 160}
!183 = !{!28, !9, i64 184}
!184 = !{!28, !9, i64 192}
!185 = !{!28, !9, i64 200}
!186 = !{!28, !2, i64 176}
!187 = !{!28, !2, i64 180}
!188 = !{!28, !2, i64 168}
!189 = !{!30, !9, i64 120}
!190 = !{!30, !2, i64 8}
!191 = !{!30, !6, i64 16}
!192 = !{!30, !6, i64 24}
!193 = !{!30, !6, i64 32}
!194 = !{!30, !6, i64 40}
!195 = !{!30, !9, i64 96}
!196 = !{!30, !9, i64 104}
!197 = !{!30, !9, i64 72}
!198 = !{!30, !9, i64 88}
!199 = !{!30, !9, i64 80}
!200 = !{!30, !2, i64 4}
!201 = !{!30, !9, i64 48}
!202 = !{!30, !9, i64 64}
!203 = !{!30, !9, i64 56}
!204 = !{!22, !2, i64 168}
!205 = !{!22, !2, i64 172}
!206 = !{!22, !2, i64 320}
!207 = !{!22, !2, i64 324}
!208 = !{!22, !6, i64 224}
!209 = !{!22, !6, i64 232}
!210 = !{!22, !6, i64 8}
!211 = !{!22, !6, i64 16}
!212 = !{!22, !6, i64 24}
!213 = !{!22, !6, i64 32}
!214 = !{!22, !6, i64 104}
!215 = !{!22, !6, i64 112}
!216 = !{!22, !6, i64 72}
!217 = !{!22, !6, i64 80}
!218 = !{!22, !6, i64 136}
!219 = !{!22, !6, i64 304}
!220 = !{!22, !6, i64 272}
!221 = !{!22, !6, i64 280}
!222 = !{!22, !6, i64 288}
!223 = !{!22, !6, i64 312}
!224 = !{!22, !6, i64 296}
!225 = !{!22, !2, i64 328}
!226 = !{!22, !6, i64 160}
!227 = !{!74, !9, i64 8}
!228 = !{!74, !9, i64 16}
!229 = !{!230, !230, i64 0}
!230 = !{!"long", !3, i64 0}
!231 = !{!3, !3, i64 0}
