; ModuleID = 'lulesh-O3.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.Domain = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", i32, i32, i32*, i32*, i32**, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }
%struct.cmdLineOpts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_ZN6Domain15AllocateStrainsEi = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZN6Domain17AllocateGradientsEii = comdat any

$_ZN6Domain22AllocateElemPersistentEi = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZN6Domain22AllocateNodePersistentEi = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lulesh.cc, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [55 x i8] c"Running problem size %d^3 per domain until completion\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Num processors: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Total number of elements: %lld\0A\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"To run other sizes, use -s <integer>.\00"
@str.14 = private unnamed_addr constant [55 x i8] c"To run a fixed number of iterations, use -i <integer>.\00"
@str.15 = private unnamed_addr constant [61 x i8] c"To run a more or less balanced region set, use -b <integer>.\00"
@str.16 = private unnamed_addr constant [59 x i8] c"To change the relative costs of regions, use -c <integer>.\00"
@str.17 = private unnamed_addr constant [30 x i8] c"To print out progress, use -p\00"
@str.18 = private unnamed_addr constant [42 x i8] c"To write an output file for VisIt, use -v\00"
@str.19 = private unnamed_addr constant [32 x i8] c"See help (-h) for more options\0A\00"
@.str.11 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"Error in switch at %s line %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"lulesh.cc\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cycle = %d, time = %e, dt=%e\0A\00", align 1
@str.3 = private unnamed_addr constant [58 x i8] c"Must enable -DVIZ_MESH at compile time to call DumpDomain\00"
@.str.6 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1.7 = private unnamed_addr constant [31 x i8] c"Missing integer argument to -i\00", align 1
@.str.2.8 = private unnamed_addr constant [64 x i8] c"Parse Error on option -i integer value required after argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -s\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Parse Error on option -s integer value required after argument\0A\00", align 1
@.str.6.9 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -r\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Parse Error on option -r integer value required after argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.10.10 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -f\0A\00", align 1
@.str.11.11 = private unnamed_addr constant [64 x i8] c"Parse Error on option -f integer value required after argument\0A\00", align 1
@.str.12.12 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.13.13 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -b\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Parse Error on option -b integer value required after argument\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -c\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Parse Error on option -c integer value required after argument\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Use of -v requires compiling with -DVIZ_MESH\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Usage: %s [opts]\0A\00", align 1
@str.20 = private unnamed_addr constant [33 x i8] c" where [opts] is one or more of:\00"
@str.50 = private unnamed_addr constant [52 x i8] c" -q              : quiet mode - suppress all stdout\00"
@str.51 = private unnamed_addr constant [43 x i8] c" -i <iterations> : number of cycles to run\00"
@str.52 = private unnamed_addr constant [50 x i8] c" -s <size>       : length of cube mesh along side\00"
@str.53 = private unnamed_addr constant [56 x i8] c" -r <numregions> : Number of distinct regions (def: 11)\00"
@str.54 = private unnamed_addr constant [69 x i8] c" -b <balance>    : Load balance between regions of a domain (def: 1)\00"
@str.55 = private unnamed_addr constant [65 x i8] c" -c <cost>       : Extra cost of more expensive regions (def: 1)\00"
@str.56 = private unnamed_addr constant [75 x i8] c" -f <numfiles>   : Number of files to split viz dump into (def: (np+10)/9)\00"
@str.57 = private unnamed_addr constant [38 x i8] c" -p              : Print out progress\00"
@str.58 = private unnamed_addr constant [71 x i8] c" -v              : Output viz file (requires compiling with -DVIZ_MESH\00"
@str.59 = private unnamed_addr constant [32 x i8] c" -h              : This message\00"
@str.60 = private unnamed_addr constant [2 x i8] c"\0A\00"
@.str.23 = private unnamed_addr constant [42 x i8] c"ERROR: Unknown command line argument: %s\0A\00", align 1
@str.61 = private unnamed_addr constant [17 x i8] c"Run completed:  \00"
@.str.25 = private unnamed_addr constant [31 x i8] c"   Problem size        =  %i \0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"   MPI tasks           =  %i \0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"   Iteration count     =  %i \0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"   Final Origin Energy = %12.6e \0A\00", align 1
@str.62 = private unnamed_addr constant [46 x i8] c"   Testing Plane 0 of Energy Array on rank 0:\00"
@.str.30 = private unnamed_addr constant [31 x i8] c"        MaxAbsDiff   = %12.6e\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"        TotalAbsDiff = %12.6e\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"        MaxRelDiff   = %12.6e\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"\0AElapsed time         = %10.2f (s)\0A\00", align 1
@.str.34 = private unnamed_addr constant [59 x i8] c"Grind time (us/z/c)  = %10.8g (per dom)  (%10.8g overall)\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"FOM                  = %10.8g (z/s)\0A\0A\00", align 1
@.str.3.23 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@str.26 = private unnamed_addr constant [60 x i8] c"Num processors must be a cube of an integer (1, 8, 27, ...)\00"

@_ZN6DomainC1Eiiiiiiiii = alias void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32), void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_ZN6DomainC2Eiiiiiiiii

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lulesh.cc() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse nounwind readonly uwtable
define double @_Z14CalcElemVolumePKdS0_S0_(double* nocapture readonly %x, double* nocapture readonly %y, double* nocapture readonly %z) #3 {
  %1 = load double, double* %x, align 8, !tbaa !1
  %2 = getelementptr inbounds double, double* %x, i64 1
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = getelementptr inbounds double, double* %x, i64 2
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = getelementptr inbounds double, double* %x, i64 3
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = getelementptr inbounds double, double* %x, i64 4
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = getelementptr inbounds double, double* %x, i64 5
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = getelementptr inbounds double, double* %x, i64 6
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = getelementptr inbounds double, double* %x, i64 7
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = load double, double* %y, align 8, !tbaa !1
  %17 = getelementptr inbounds double, double* %y, i64 1
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = getelementptr inbounds double, double* %y, i64 2
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = getelementptr inbounds double, double* %y, i64 3
  %22 = load double, double* %21, align 8, !tbaa !1
  %23 = getelementptr inbounds double, double* %y, i64 4
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = getelementptr inbounds double, double* %y, i64 5
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = getelementptr inbounds double, double* %y, i64 6
  %28 = load double, double* %27, align 8, !tbaa !1
  %29 = getelementptr inbounds double, double* %y, i64 7
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = load double, double* %z, align 8, !tbaa !1
  %32 = getelementptr inbounds double, double* %z, i64 1
  %33 = load double, double* %32, align 8, !tbaa !1
  %34 = getelementptr inbounds double, double* %z, i64 2
  %35 = load double, double* %34, align 8, !tbaa !1
  %36 = getelementptr inbounds double, double* %z, i64 3
  %37 = load double, double* %36, align 8, !tbaa !1
  %38 = getelementptr inbounds double, double* %z, i64 4
  %39 = load double, double* %38, align 8, !tbaa !1
  %40 = getelementptr inbounds double, double* %z, i64 5
  %41 = load double, double* %40, align 8, !tbaa !1
  %42 = getelementptr inbounds double, double* %z, i64 6
  %43 = load double, double* %42, align 8, !tbaa !1
  %44 = getelementptr inbounds double, double* %z, i64 7
  %45 = load double, double* %44, align 8, !tbaa !1
  %46 = fsub double %13, %3
  %47 = fsub double %28, %18
  %48 = fsub double %43, %33
  %49 = fsub double %15, %1
  %50 = fsub double %30, %16
  %51 = fsub double %45, %31
  %52 = fsub double %13, %7
  %53 = fsub double %28, %22
  %54 = fsub double %43, %37
  %55 = fsub double %5, %1
  %56 = fsub double %20, %16
  %57 = fsub double %35, %31
  %58 = fsub double %11, %1
  %59 = fsub double %26, %16
  %60 = fsub double %41, %31
  %61 = fsub double %13, %9
  %62 = fsub double %28, %24
  %63 = fsub double %43, %39
  %64 = fsub double %7, %3
  %65 = fsub double %22, %18
  %66 = fsub double %37, %33
  %67 = fsub double %15, %5
  %68 = fsub double %30, %20
  %69 = fsub double %45, %35
  %70 = fsub double %9, %7
  %71 = fsub double %24, %22
  %72 = fsub double %39, %37
  %73 = fsub double %11, %15
  %74 = fsub double %26, %30
  %75 = fsub double %41, %45
  %76 = fsub double %3, %9
  %77 = fsub double %18, %24
  %78 = fsub double %33, %39
  %79 = fsub double %5, %11
  %80 = fsub double %20, %26
  %81 = fsub double %35, %41
  %82 = fadd double %64, %67
  %83 = fmul double %53, %57
  %84 = fmul double %56, %54
  %85 = fsub double %83, %84
  %86 = fmul double %82, %85
  %87 = fadd double %65, %68
  %88 = fmul double %55, %54
  %89 = fmul double %52, %57
  %90 = fsub double %88, %89
  %91 = fmul double %87, %90
  %92 = fadd double %86, %91
  %93 = fadd double %66, %69
  %94 = fmul double %52, %56
  %95 = fmul double %55, %53
  %96 = fsub double %94, %95
  %97 = fmul double %96, %93
  %98 = fadd double %97, %92
  %99 = fadd double %70, %73
  %100 = fmul double %62, %51
  %101 = fmul double %50, %63
  %102 = fsub double %100, %101
  %103 = fmul double %99, %102
  %104 = fadd double %71, %74
  %105 = fmul double %49, %63
  %106 = fmul double %61, %51
  %107 = fsub double %105, %106
  %108 = fmul double %104, %107
  %109 = fadd double %103, %108
  %110 = fadd double %72, %75
  %111 = fmul double %61, %50
  %112 = fmul double %49, %62
  %113 = fsub double %111, %112
  %114 = fmul double %113, %110
  %115 = fadd double %114, %109
  %116 = fadd double %98, %115
  %117 = fadd double %76, %79
  %118 = fmul double %47, %60
  %119 = fmul double %59, %48
  %120 = fsub double %118, %119
  %121 = fmul double %117, %120
  %122 = fadd double %77, %80
  %123 = fmul double %58, %48
  %124 = fmul double %46, %60
  %125 = fsub double %123, %124
  %126 = fmul double %122, %125
  %127 = fadd double %121, %126
  %128 = fadd double %78, %81
  %129 = fmul double %46, %59
  %130 = fmul double %58, %47
  %131 = fsub double %129, %130
  %132 = fmul double %131, %128
  %133 = fadd double %132, %127
  %134 = fadd double %133, %116
  %135 = fmul double %134, 0x3FB5555555555555
  ret double %135
}

; Function Attrs: nounwind uwtable
define void @_Z22CalcKinematicsForElemsR6DomainPddi(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double* nocapture %vnew, double %deltaTime, i32 %numElem) #4 {
  %a.i = alloca double, align 8
  %charLength.sroa.0.i = alloca i64, align 8
  %B = alloca [3 x [8 x double]], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %xd_local = alloca [8 x double], align 16
  %yd_local = alloca [8 x double], align 16
  %zd_local = alloca [8 x double], align 16
  %detJ = alloca double, align 8
  %1 = icmp sgt i32 %numElem, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = bitcast [3 x [8 x double]]* %B to i8*
  %3 = bitcast [8 x double]* %x_local to i8*
  %4 = bitcast [8 x double]* %y_local to i8*
  %5 = bitcast [8 x double]* %z_local to i8*
  %6 = bitcast [8 x double]* %xd_local to i8*
  %7 = bitcast [8 x double]* %yd_local to i8*
  %8 = bitcast [8 x double]* %zd_local to i8*
  %9 = bitcast double* %detJ to i8*
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 21, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %12 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %13 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %domain.idx = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 0, i32 0, i32 0, i32 0
  %domain.idx1 = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 1, i32 0, i32 0, i32 0
  %domain.idx2 = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 2, i32 0, i32 0, i32 0
  %14 = bitcast [8 x double]* %x_local to i64*
  %15 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 1
  %16 = bitcast double* %15 to i64*
  %17 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 2
  %18 = bitcast double* %17 to i64*
  %19 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 3
  %20 = bitcast double* %19 to i64*
  %21 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 4
  %22 = bitcast double* %21 to i64*
  %23 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 5
  %24 = bitcast double* %23 to i64*
  %25 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 6
  %26 = bitcast double* %25 to i64*
  %27 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 7
  %28 = bitcast double* %27 to i64*
  %29 = bitcast [8 x double]* %y_local to i64*
  %30 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 1
  %31 = bitcast double* %30 to i64*
  %32 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 2
  %33 = bitcast double* %32 to i64*
  %34 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 3
  %35 = bitcast double* %34 to i64*
  %36 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 4
  %37 = bitcast double* %36 to i64*
  %38 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 5
  %39 = bitcast double* %38 to i64*
  %40 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 6
  %41 = bitcast double* %40 to i64*
  %42 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 7
  %43 = bitcast double* %42 to i64*
  %44 = bitcast [8 x double]* %z_local to i64*
  %45 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 1
  %46 = bitcast double* %45 to i64*
  %47 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 2
  %48 = bitcast double* %47 to i64*
  %49 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 3
  %50 = bitcast double* %49 to i64*
  %51 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 4
  %52 = bitcast double* %51 to i64*
  %53 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 5
  %54 = bitcast double* %53 to i64*
  %55 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 6
  %56 = bitcast double* %55 to i64*
  %57 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 7
  %58 = bitcast double* %57 to i64*
  %59 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 44, i32 0, i32 0, i32 0
  %60 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 43, i32 0, i32 0, i32 0
  %61 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 46, i32 0, i32 0, i32 0
  %62 = bitcast double* %a.i to i8*
  %63 = bitcast i64* %charLength.sroa.0.i to i8*
  %64 = bitcast i64* %charLength.sroa.0.i to double*
  %65 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 48, i32 0, i32 0, i32 0
  %66 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 3, i32 0, i32 0, i32 0
  %67 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 4, i32 0, i32 0, i32 0
  %68 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 5, i32 0, i32 0, i32 0
  %69 = fmul double %deltaTime, 5.000000e-01
  %70 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %71 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 0
  %72 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 0
  %73 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 0
  %74 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0, i64 0
  %75 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1, i64 0
  %76 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2, i64 0
  %77 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 6
  %78 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0, i64 1
  %79 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 1
  %80 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 7
  %81 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0, i64 2
  %82 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 2
  %83 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 4
  %84 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0, i64 3
  %85 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 3
  %86 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 5
  %87 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 6
  %88 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1, i64 1
  %89 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 1
  %90 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 7
  %91 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1, i64 2
  %92 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 2
  %93 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 4
  %94 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1, i64 3
  %95 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 3
  %96 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 5
  %97 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 6
  %98 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2, i64 1
  %99 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 1
  %100 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 7
  %101 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2, i64 2
  %102 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 2
  %103 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 4
  %104 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2, i64 3
  %105 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 3
  %106 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 5
  %107 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 29, i32 0, i32 0, i32 0
  %108 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 30, i32 0, i32 0, i32 0
  %109 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 31, i32 0, i32 0, i32 0
  %110 = bitcast [8 x double]* %xd_local to i64*
  %111 = bitcast [8 x double]* %yd_local to i64*
  %112 = bitcast [8 x double]* %zd_local to i64*
  %113 = bitcast double* %79 to i64*
  %114 = bitcast double* %89 to i64*
  %115 = bitcast double* %99 to i64*
  %116 = bitcast double* %82 to i64*
  %117 = bitcast double* %92 to i64*
  %118 = bitcast double* %102 to i64*
  %119 = bitcast double* %85 to i64*
  %120 = bitcast double* %95 to i64*
  %121 = bitcast double* %105 to i64*
  %122 = bitcast double* %83 to i64*
  %123 = bitcast double* %93 to i64*
  %124 = bitcast double* %103 to i64*
  %125 = bitcast double* %86 to i64*
  %126 = bitcast double* %96 to i64*
  %127 = bitcast double* %106 to i64*
  %128 = bitcast double* %77 to i64*
  %129 = bitcast double* %87 to i64*
  %130 = bitcast double* %97 to i64*
  %131 = bitcast double* %80 to i64*
  %132 = bitcast double* %90 to i64*
  %133 = bitcast double* %100 to i64*
  %134 = insertelement <2 x double> undef, double %69, i32 0
  %135 = insertelement <2 x double> %134, double %69, i32 1
  %136 = bitcast [8 x double]* %xd_local to <2 x double>*
  %137 = bitcast [8 x double]* %x_local to <2 x double>*
  %138 = bitcast [8 x double]* %yd_local to <2 x double>*
  %139 = bitcast [8 x double]* %y_local to <2 x double>*
  %140 = bitcast [8 x double]* %zd_local to <2 x double>*
  %141 = bitcast [8 x double]* %z_local to <2 x double>*
  %142 = bitcast double* %82 to <2 x double>*
  %143 = bitcast double* %17 to <2 x double>*
  %144 = bitcast double* %92 to <2 x double>*
  %145 = bitcast double* %32 to <2 x double>*
  %146 = bitcast double* %102 to <2 x double>*
  %147 = bitcast double* %47 to <2 x double>*
  %148 = bitcast double* %83 to <2 x double>*
  %149 = bitcast double* %21 to <2 x double>*
  %150 = bitcast double* %93 to <2 x double>*
  %151 = bitcast double* %36 to <2 x double>*
  %152 = bitcast double* %103 to <2 x double>*
  %153 = bitcast double* %51 to <2 x double>*
  %154 = bitcast double* %77 to <2 x double>*
  %155 = bitcast double* %25 to <2 x double>*
  %156 = bitcast double* %87 to <2 x double>*
  %157 = bitcast double* %40 to <2 x double>*
  %158 = bitcast double* %97 to <2 x double>*
  %159 = bitcast double* %55 to <2 x double>*
  br label %.preheader12

._crit_edge.loopexit:                             ; preds = %.preheader12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.preheader12:                                     ; preds = %.preheader12, %.lr.ph
  %indvars.iv9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next10, %.preheader12 ]
  call void @llvm.lifetime.start(i64 192, i8* %2) #2
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  call void @llvm.lifetime.start(i64 64, i8* %4) #2
  call void @llvm.lifetime.start(i64 64, i8* %5) #2
  call void @llvm.lifetime.start(i64 64, i8* %6) #2
  call void @llvm.lifetime.start(i64 64, i8* %7) #2
  call void @llvm.lifetime.start(i64 64, i8* %8) #2
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store double 0.000000e+00, double* %detJ, align 8, !tbaa !1
  %160 = trunc i64 %indvars.iv9 to i32
  %161 = shl nsw i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = load i32*, i32** %10, align 8, !tbaa !5
  %164 = getelementptr inbounds i32, i32* %163, i64 %162
  %domain.idx.val = load double*, double** %domain.idx, align 8, !tbaa !9
  %domain.idx1.val = load double*, double** %domain.idx1, align 8, !tbaa !9
  %domain.idx2.val = load double*, double** %domain.idx2, align 8, !tbaa !9
  %165 = load i32, i32* %164, align 4, !tbaa !12
  %166 = getelementptr inbounds i32, i32* %164, i64 1
  %167 = load i32, i32* %166, align 4, !tbaa !12
  %168 = getelementptr inbounds i32, i32* %164, i64 2
  %169 = load i32, i32* %168, align 4, !tbaa !12
  %170 = getelementptr inbounds i32, i32* %164, i64 3
  %171 = load i32, i32* %170, align 4, !tbaa !12
  %172 = getelementptr inbounds i32, i32* %164, i64 4
  %173 = load i32, i32* %172, align 4, !tbaa !12
  %174 = getelementptr inbounds i32, i32* %164, i64 5
  %175 = load i32, i32* %174, align 4, !tbaa !12
  %176 = getelementptr inbounds i32, i32* %164, i64 6
  %177 = load i32, i32* %176, align 4, !tbaa !12
  %178 = getelementptr inbounds i32, i32* %164, i64 7
  %179 = load i32, i32* %178, align 4, !tbaa !12
  %180 = sext i32 %165 to i64
  %181 = getelementptr inbounds double, double* %domain.idx.val, i64 %180
  %182 = bitcast double* %181 to i64*
  %183 = load i64, i64* %182, align 8, !tbaa !1
  store i64 %183, i64* %14, align 16, !tbaa !1
  %184 = sext i32 %167 to i64
  %185 = getelementptr inbounds double, double* %domain.idx.val, i64 %184
  %186 = bitcast double* %185 to i64*
  %187 = load i64, i64* %186, align 8, !tbaa !1
  store i64 %187, i64* %16, align 8, !tbaa !1
  %188 = sext i32 %169 to i64
  %189 = getelementptr inbounds double, double* %domain.idx.val, i64 %188
  %190 = bitcast double* %189 to i64*
  %191 = load i64, i64* %190, align 8, !tbaa !1
  store i64 %191, i64* %18, align 16, !tbaa !1
  %192 = sext i32 %171 to i64
  %193 = getelementptr inbounds double, double* %domain.idx.val, i64 %192
  %194 = bitcast double* %193 to i64*
  %195 = load i64, i64* %194, align 8, !tbaa !1
  store i64 %195, i64* %20, align 8, !tbaa !1
  %196 = sext i32 %173 to i64
  %197 = getelementptr inbounds double, double* %domain.idx.val, i64 %196
  %198 = bitcast double* %197 to i64*
  %199 = load i64, i64* %198, align 8, !tbaa !1
  store i64 %199, i64* %22, align 16, !tbaa !1
  %200 = sext i32 %175 to i64
  %201 = getelementptr inbounds double, double* %domain.idx.val, i64 %200
  %202 = bitcast double* %201 to i64*
  %203 = load i64, i64* %202, align 8, !tbaa !1
  store i64 %203, i64* %24, align 8, !tbaa !1
  %204 = sext i32 %177 to i64
  %205 = getelementptr inbounds double, double* %domain.idx.val, i64 %204
  %206 = bitcast double* %205 to i64*
  %207 = load i64, i64* %206, align 8, !tbaa !1
  store i64 %207, i64* %26, align 16, !tbaa !1
  %208 = sext i32 %179 to i64
  %209 = getelementptr inbounds double, double* %domain.idx.val, i64 %208
  %210 = bitcast double* %209 to i64*
  %211 = load i64, i64* %210, align 8, !tbaa !1
  store i64 %211, i64* %28, align 8, !tbaa !1
  %212 = getelementptr inbounds double, double* %domain.idx1.val, i64 %180
  %213 = bitcast double* %212 to i64*
  %214 = load i64, i64* %213, align 8, !tbaa !1
  store i64 %214, i64* %29, align 16, !tbaa !1
  %215 = getelementptr inbounds double, double* %domain.idx1.val, i64 %184
  %216 = bitcast double* %215 to i64*
  %217 = load i64, i64* %216, align 8, !tbaa !1
  store i64 %217, i64* %31, align 8, !tbaa !1
  %218 = getelementptr inbounds double, double* %domain.idx1.val, i64 %188
  %219 = bitcast double* %218 to i64*
  %220 = load i64, i64* %219, align 8, !tbaa !1
  store i64 %220, i64* %33, align 16, !tbaa !1
  %221 = getelementptr inbounds double, double* %domain.idx1.val, i64 %192
  %222 = bitcast double* %221 to i64*
  %223 = load i64, i64* %222, align 8, !tbaa !1
  store i64 %223, i64* %35, align 8, !tbaa !1
  %224 = getelementptr inbounds double, double* %domain.idx1.val, i64 %196
  %225 = bitcast double* %224 to i64*
  %226 = load i64, i64* %225, align 8, !tbaa !1
  store i64 %226, i64* %37, align 16, !tbaa !1
  %227 = getelementptr inbounds double, double* %domain.idx1.val, i64 %200
  %228 = bitcast double* %227 to i64*
  %229 = load i64, i64* %228, align 8, !tbaa !1
  store i64 %229, i64* %39, align 8, !tbaa !1
  %230 = getelementptr inbounds double, double* %domain.idx1.val, i64 %204
  %231 = bitcast double* %230 to i64*
  %232 = load i64, i64* %231, align 8, !tbaa !1
  store i64 %232, i64* %41, align 16, !tbaa !1
  %233 = getelementptr inbounds double, double* %domain.idx1.val, i64 %208
  %234 = bitcast double* %233 to i64*
  %235 = load i64, i64* %234, align 8, !tbaa !1
  store i64 %235, i64* %43, align 8, !tbaa !1
  %236 = getelementptr inbounds double, double* %domain.idx2.val, i64 %180
  %237 = bitcast double* %236 to i64*
  %238 = load i64, i64* %237, align 8, !tbaa !1
  store i64 %238, i64* %44, align 16, !tbaa !1
  %239 = getelementptr inbounds double, double* %domain.idx2.val, i64 %184
  %240 = bitcast double* %239 to i64*
  %241 = load i64, i64* %240, align 8, !tbaa !1
  store i64 %241, i64* %46, align 8, !tbaa !1
  %242 = getelementptr inbounds double, double* %domain.idx2.val, i64 %188
  %243 = bitcast double* %242 to i64*
  %244 = load i64, i64* %243, align 8, !tbaa !1
  store i64 %244, i64* %48, align 16, !tbaa !1
  %245 = getelementptr inbounds double, double* %domain.idx2.val, i64 %192
  %246 = bitcast double* %245 to i64*
  %247 = load i64, i64* %246, align 8, !tbaa !1
  store i64 %247, i64* %50, align 8, !tbaa !1
  %248 = getelementptr inbounds double, double* %domain.idx2.val, i64 %196
  %249 = bitcast double* %248 to i64*
  %250 = load i64, i64* %249, align 8, !tbaa !1
  store i64 %250, i64* %52, align 16, !tbaa !1
  %251 = getelementptr inbounds double, double* %domain.idx2.val, i64 %200
  %252 = bitcast double* %251 to i64*
  %253 = load i64, i64* %252, align 8, !tbaa !1
  store i64 %253, i64* %54, align 8, !tbaa !1
  %254 = getelementptr inbounds double, double* %domain.idx2.val, i64 %204
  %255 = bitcast double* %254 to i64*
  %256 = load i64, i64* %255, align 8, !tbaa !1
  store i64 %256, i64* %56, align 16, !tbaa !1
  %257 = getelementptr inbounds double, double* %domain.idx2.val, i64 %208
  %258 = bitcast double* %257 to i64*
  %259 = load i64, i64* %258, align 8, !tbaa !1
  store i64 %259, i64* %58, align 8, !tbaa !1
  %260 = call double @_Z14CalcElemVolumePKdS0_S0_(double* %11, double* %12, double* %13)
  %261 = load double*, double** %59, align 8, !tbaa !9
  %262 = getelementptr inbounds double, double* %261, i64 %indvars.iv9
  %263 = load double, double* %262, align 8, !tbaa !1
  %264 = fdiv double %260, %263
  %265 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv9
  store double %264, double* %265, align 8, !tbaa !1
  %266 = load double*, double** %60, align 8, !tbaa !9
  %267 = getelementptr inbounds double, double* %266, i64 %indvars.iv9
  %268 = load double, double* %267, align 8, !tbaa !1
  %269 = fsub double %264, %268
  %270 = load double*, double** %61, align 8, !tbaa !9
  %271 = getelementptr inbounds double, double* %270, i64 %indvars.iv9
  store double %269, double* %271, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 8, i8* %62)
  call void @llvm.lifetime.start(i64 8, i8* %63)
  store i64 0, i64* %charLength.sroa.0.i, align 8
  %272 = load double, double* %11, align 16, !tbaa !1
  %273 = load double, double* %15, align 8, !tbaa !1
  %274 = load double, double* %17, align 16, !tbaa !1
  %275 = load double, double* %19, align 8, !tbaa !1
  %276 = bitcast i64 %214 to double
  %277 = bitcast i64 %217 to double
  %278 = bitcast i64 %220 to double
  %279 = bitcast i64 %223 to double
  %280 = bitcast i64 %238 to double
  %281 = bitcast i64 %241 to double
  %282 = bitcast i64 %244 to double
  %283 = bitcast i64 %247 to double
  %284 = fsub double %274, %272
  %285 = fsub double %275, %273
  %286 = fsub double %284, %285
  %287 = fsub double %278, %276
  %288 = fsub double %279, %277
  %289 = fsub double %287, %288
  %290 = fsub double %282, %280
  %291 = fsub double %283, %281
  %292 = fsub double %290, %291
  %293 = fadd double %284, %285
  %294 = fadd double %287, %288
  %295 = fadd double %290, %291
  %296 = fmul double %293, %293
  %297 = fmul double %294, %294
  %298 = fadd double %296, %297
  %299 = fmul double %295, %295
  %300 = fadd double %298, %299
  %301 = insertelement <2 x double> undef, double %286, i32 0
  %302 = insertelement <2 x double> %301, double %286, i32 1
  %303 = insertelement <2 x double> %301, double %293, i32 1
  %304 = fmul <2 x double> %302, %303
  %305 = insertelement <2 x double> undef, double %289, i32 0
  %306 = insertelement <2 x double> %305, double %289, i32 1
  %307 = insertelement <2 x double> %305, double %294, i32 1
  %308 = fmul <2 x double> %306, %307
  %309 = fadd <2 x double> %304, %308
  %310 = insertelement <2 x double> undef, double %292, i32 0
  %311 = insertelement <2 x double> %310, double %292, i32 1
  %312 = insertelement <2 x double> %310, double %295, i32 1
  %313 = fmul <2 x double> %311, %312
  %314 = fadd <2 x double> %309, %313
  %315 = insertelement <2 x double> undef, double %300, i32 0
  %316 = shufflevector <2 x double> %315, <2 x double> %314, <2 x i32> <i32 0, i32 3>
  %317 = fmul <2 x double> %314, %316
  %318 = extractelement <2 x double> %317, i32 0
  %319 = extractelement <2 x double> %317, i32 1
  %320 = fsub double %318, %319
  store double %320, double* %a.i, align 8
  %321 = fcmp olt double %320, 0.000000e+00
  %__b.__a.i.i = select i1 %321, double* %64, double* %a.i
  %322 = bitcast double* %__b.__a.i.i to i64*
  %323 = load i64, i64* %322, align 8, !tbaa !1
  store i64 %323, i64* %charLength.sroa.0.i, align 8
  %324 = load double, double* %21, align 16, !tbaa !1
  %325 = load double, double* %23, align 8, !tbaa !1
  %326 = load double, double* %25, align 16, !tbaa !1
  %327 = load double, double* %27, align 8, !tbaa !1
  %328 = load double, double* %36, align 16, !tbaa !1
  %329 = load double, double* %38, align 8, !tbaa !1
  %330 = load double, double* %40, align 16, !tbaa !1
  %331 = load double, double* %42, align 8, !tbaa !1
  %332 = bitcast i64 %250 to double
  %333 = bitcast i64 %253 to double
  %334 = bitcast i64 %256 to double
  %335 = bitcast i64 %259 to double
  %336 = fsub double %326, %324
  %337 = fsub double %327, %325
  %338 = fsub double %336, %337
  %339 = fsub double %330, %328
  %340 = fsub double %331, %329
  %341 = fsub double %339, %340
  %342 = fsub double %334, %332
  %343 = fsub double %335, %333
  %344 = fsub double %342, %343
  %345 = fadd double %336, %337
  %346 = fadd double %339, %340
  %347 = fadd double %342, %343
  %348 = fmul double %345, %345
  %349 = fmul double %346, %346
  %350 = fadd double %348, %349
  %351 = fmul double %347, %347
  %352 = fadd double %350, %351
  %353 = insertelement <2 x double> undef, double %338, i32 0
  %354 = insertelement <2 x double> %353, double %338, i32 1
  %355 = insertelement <2 x double> %353, double %345, i32 1
  %356 = fmul <2 x double> %354, %355
  %357 = insertelement <2 x double> undef, double %341, i32 0
  %358 = insertelement <2 x double> %357, double %341, i32 1
  %359 = insertelement <2 x double> %357, double %346, i32 1
  %360 = fmul <2 x double> %358, %359
  %361 = fadd <2 x double> %356, %360
  %362 = insertelement <2 x double> undef, double %344, i32 0
  %363 = insertelement <2 x double> %362, double %344, i32 1
  %364 = insertelement <2 x double> %362, double %347, i32 1
  %365 = fmul <2 x double> %363, %364
  %366 = fadd <2 x double> %361, %365
  %367 = insertelement <2 x double> undef, double %352, i32 0
  %368 = shufflevector <2 x double> %367, <2 x double> %366, <2 x i32> <i32 0, i32 3>
  %369 = fmul <2 x double> %366, %368
  %370 = extractelement <2 x double> %369, i32 0
  %371 = extractelement <2 x double> %369, i32 1
  %372 = fsub double %370, %371
  store double %372, double* %a.i, align 8
  %373 = bitcast i64 %323 to double
  %374 = fcmp olt double %372, %373
  %__b.__a.i5.i = select i1 %374, double* %64, double* %a.i
  %375 = bitcast double* %__b.__a.i5.i to i64*
  %376 = load i64, i64* %375, align 8, !tbaa !1
  store i64 %376, i64* %charLength.sroa.0.i, align 8
  %377 = load double, double* %12, align 16, !tbaa !1
  %378 = load double, double* %30, align 8, !tbaa !1
  %379 = load double, double* %13, align 16, !tbaa !1
  %380 = load double, double* %45, align 8, !tbaa !1
  %381 = fsub double %325, %272
  %382 = fsub double %324, %273
  %383 = fsub double %381, %382
  %384 = fsub double %329, %377
  %385 = fsub double %328, %378
  %386 = fsub double %384, %385
  %387 = fsub double %333, %379
  %388 = fsub double %332, %380
  %389 = fsub double %387, %388
  %390 = fadd double %381, %382
  %391 = fadd double %384, %385
  %392 = fadd double %387, %388
  %393 = fmul double %390, %390
  %394 = fmul double %391, %391
  %395 = fadd double %393, %394
  %396 = fmul double %392, %392
  %397 = fadd double %395, %396
  %398 = insertelement <2 x double> undef, double %383, i32 0
  %399 = insertelement <2 x double> %398, double %383, i32 1
  %400 = insertelement <2 x double> %398, double %390, i32 1
  %401 = fmul <2 x double> %399, %400
  %402 = insertelement <2 x double> undef, double %386, i32 0
  %403 = insertelement <2 x double> %402, double %386, i32 1
  %404 = insertelement <2 x double> %402, double %391, i32 1
  %405 = fmul <2 x double> %403, %404
  %406 = fadd <2 x double> %401, %405
  %407 = insertelement <2 x double> undef, double %389, i32 0
  %408 = insertelement <2 x double> %407, double %389, i32 1
  %409 = insertelement <2 x double> %407, double %392, i32 1
  %410 = fmul <2 x double> %408, %409
  %411 = fadd <2 x double> %406, %410
  %412 = insertelement <2 x double> undef, double %397, i32 0
  %413 = shufflevector <2 x double> %412, <2 x double> %411, <2 x i32> <i32 0, i32 3>
  %414 = fmul <2 x double> %411, %413
  %415 = extractelement <2 x double> %414, i32 0
  %416 = extractelement <2 x double> %414, i32 1
  %417 = fsub double %415, %416
  store double %417, double* %a.i, align 8
  %418 = bitcast i64 %376 to double
  %419 = fcmp olt double %417, %418
  %__b.__a.i4.i = select i1 %419, double* %64, double* %a.i
  %420 = bitcast double* %__b.__a.i4.i to i64*
  %421 = load i64, i64* %420, align 8, !tbaa !1
  store i64 %421, i64* %charLength.sroa.0.i, align 8
  %422 = load double, double* %17, align 16, !tbaa !1
  %423 = load double, double* %32, align 16, !tbaa !1
  %424 = load double, double* %47, align 16, !tbaa !1
  %425 = fsub double %326, %273
  %426 = fsub double %325, %422
  %427 = fsub double %425, %426
  %428 = fsub double %330, %378
  %429 = fsub double %329, %423
  %430 = fsub double %428, %429
  %431 = fsub double %334, %380
  %432 = fsub double %333, %424
  %433 = fsub double %431, %432
  %434 = fadd double %425, %426
  %435 = fadd double %428, %429
  %436 = fadd double %431, %432
  %437 = fmul double %434, %434
  %438 = fmul double %435, %435
  %439 = fadd double %437, %438
  %440 = fmul double %436, %436
  %441 = fadd double %439, %440
  %442 = insertelement <2 x double> undef, double %427, i32 0
  %443 = insertelement <2 x double> %442, double %427, i32 1
  %444 = insertelement <2 x double> %442, double %434, i32 1
  %445 = fmul <2 x double> %443, %444
  %446 = insertelement <2 x double> undef, double %430, i32 0
  %447 = insertelement <2 x double> %446, double %430, i32 1
  %448 = insertelement <2 x double> %446, double %435, i32 1
  %449 = fmul <2 x double> %447, %448
  %450 = fadd <2 x double> %445, %449
  %451 = insertelement <2 x double> undef, double %433, i32 0
  %452 = insertelement <2 x double> %451, double %433, i32 1
  %453 = insertelement <2 x double> %451, double %436, i32 1
  %454 = fmul <2 x double> %452, %453
  %455 = fadd <2 x double> %450, %454
  %456 = insertelement <2 x double> undef, double %441, i32 0
  %457 = shufflevector <2 x double> %456, <2 x double> %455, <2 x i32> <i32 0, i32 3>
  %458 = fmul <2 x double> %455, %457
  %459 = extractelement <2 x double> %458, i32 0
  %460 = extractelement <2 x double> %458, i32 1
  %461 = fsub double %459, %460
  store double %461, double* %a.i, align 8
  %462 = bitcast i64 %421 to double
  %463 = fcmp olt double %461, %462
  %464 = select i1 %463, double %462, double %461
  %465 = load double, double* %19, align 8, !tbaa !1
  %466 = load double, double* %27, align 8, !tbaa !1
  %467 = load double, double* %34, align 8, !tbaa !1
  %468 = load double, double* %42, align 8, !tbaa !1
  %469 = load double, double* %40, align 16, !tbaa !1
  %470 = load double, double* %49, align 8, !tbaa !1
  %471 = load double, double* %57, align 8, !tbaa !1
  %472 = load double, double* %55, align 16, !tbaa !1
  %473 = fsub double %466, %422
  %474 = fsub double %326, %465
  %475 = fsub double %473, %474
  %476 = fsub double %468, %423
  %477 = fsub double %469, %467
  %478 = fsub double %476, %477
  %479 = fsub double %471, %424
  %480 = fsub double %472, %470
  %481 = fsub double %479, %480
  %482 = fadd double %474, %473
  %483 = fadd double %476, %477
  %484 = fadd double %479, %480
  %485 = fmul double %482, %482
  %486 = fmul double %483, %483
  %487 = fadd double %485, %486
  %488 = fmul double %484, %484
  %489 = fadd double %487, %488
  %490 = insertelement <2 x double> undef, double %475, i32 0
  %491 = insertelement <2 x double> %490, double %475, i32 1
  %492 = insertelement <2 x double> %490, double %482, i32 1
  %493 = fmul <2 x double> %491, %492
  %494 = insertelement <2 x double> undef, double %478, i32 0
  %495 = insertelement <2 x double> %494, double %478, i32 1
  %496 = insertelement <2 x double> %494, double %483, i32 1
  %497 = fmul <2 x double> %495, %496
  %498 = fadd <2 x double> %493, %497
  %499 = insertelement <2 x double> undef, double %481, i32 0
  %500 = insertelement <2 x double> %499, double %481, i32 1
  %501 = insertelement <2 x double> %499, double %484, i32 1
  %502 = fmul <2 x double> %500, %501
  %503 = fadd <2 x double> %498, %502
  %504 = insertelement <2 x double> undef, double %489, i32 0
  %505 = shufflevector <2 x double> %504, <2 x double> %503, <2 x i32> <i32 0, i32 3>
  %506 = fmul <2 x double> %503, %505
  %507 = extractelement <2 x double> %506, i32 0
  %508 = extractelement <2 x double> %506, i32 1
  %509 = fsub double %507, %508
  %510 = fcmp olt double %509, %464
  %511 = select i1 %510, double %464, double %509
  %512 = load double, double* %11, align 16, !tbaa !1
  %513 = load double, double* %21, align 16, !tbaa !1
  %514 = load double, double* %12, align 16, !tbaa !1
  %515 = load double, double* %36, align 16, !tbaa !1
  %516 = load double, double* %13, align 16, !tbaa !1
  %517 = load double, double* %51, align 16, !tbaa !1
  %518 = fsub double %513, %465
  %519 = fsub double %466, %512
  %520 = fsub double %518, %519
  %521 = fsub double %515, %467
  %522 = fsub double %468, %514
  %523 = fsub double %521, %522
  %524 = fsub double %517, %470
  %525 = fsub double %471, %516
  %526 = fsub double %524, %525
  %527 = fadd double %519, %518
  %528 = fadd double %522, %521
  %529 = fadd double %525, %524
  %530 = fmul double %527, %527
  %531 = fmul double %528, %528
  %532 = fadd double %530, %531
  %533 = fmul double %529, %529
  %534 = fadd double %532, %533
  %535 = insertelement <2 x double> undef, double %520, i32 0
  %536 = insertelement <2 x double> %535, double %520, i32 1
  %537 = insertelement <2 x double> %535, double %527, i32 1
  %538 = fmul <2 x double> %536, %537
  %539 = insertelement <2 x double> undef, double %523, i32 0
  %540 = insertelement <2 x double> %539, double %523, i32 1
  %541 = insertelement <2 x double> %539, double %528, i32 1
  %542 = fmul <2 x double> %540, %541
  %543 = fadd <2 x double> %538, %542
  %544 = insertelement <2 x double> undef, double %526, i32 0
  %545 = insertelement <2 x double> %544, double %526, i32 1
  %546 = insertelement <2 x double> %544, double %529, i32 1
  %547 = fmul <2 x double> %545, %546
  %548 = fadd <2 x double> %543, %547
  %549 = insertelement <2 x double> undef, double %534, i32 0
  %550 = shufflevector <2 x double> %549, <2 x double> %548, <2 x i32> <i32 0, i32 3>
  %551 = fmul <2 x double> %548, %550
  %552 = extractelement <2 x double> %551, i32 0
  %553 = extractelement <2 x double> %551, i32 1
  %554 = fsub double %552, %553
  %555 = fcmp olt double %554, %511
  %556 = select i1 %555, double %511, double %554
  %557 = fmul double %260, 4.000000e+00
  %558 = call double @sqrt(double %556) #2
  %559 = fdiv double %557, %558
  call void @llvm.lifetime.end(i64 8, i8* %63)
  call void @llvm.lifetime.end(i64 8, i8* %62)
  %560 = load double*, double** %65, align 8, !tbaa !9
  %561 = getelementptr inbounds double, double* %560, i64 %indvars.iv9
  store double %559, double* %561, align 8, !tbaa !1
  %562 = load double*, double** %66, align 8
  %563 = load double*, double** %67, align 8
  %564 = load double*, double** %68, align 8
  %565 = load i32, i32* %164, align 4, !tbaa !12
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds double, double* %562, i64 %566
  %568 = bitcast double* %567 to i64*
  %569 = load i64, i64* %568, align 8, !tbaa !1
  store i64 %569, i64* %110, align 16, !tbaa !1
  %570 = getelementptr inbounds double, double* %563, i64 %566
  %571 = bitcast double* %570 to i64*
  %572 = load i64, i64* %571, align 8, !tbaa !1
  store i64 %572, i64* %111, align 16, !tbaa !1
  %573 = getelementptr inbounds double, double* %564, i64 %566
  %574 = bitcast double* %573 to i64*
  %575 = load i64, i64* %574, align 8, !tbaa !1
  store i64 %575, i64* %112, align 16, !tbaa !1
  %576 = load i32, i32* %166, align 4, !tbaa !12
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds double, double* %562, i64 %577
  %579 = bitcast double* %578 to i64*
  %580 = load i64, i64* %579, align 8, !tbaa !1
  store i64 %580, i64* %113, align 8, !tbaa !1
  %581 = getelementptr inbounds double, double* %563, i64 %577
  %582 = bitcast double* %581 to i64*
  %583 = load i64, i64* %582, align 8, !tbaa !1
  store i64 %583, i64* %114, align 8, !tbaa !1
  %584 = getelementptr inbounds double, double* %564, i64 %577
  %585 = bitcast double* %584 to i64*
  %586 = load i64, i64* %585, align 8, !tbaa !1
  store i64 %586, i64* %115, align 8, !tbaa !1
  %587 = load i32, i32* %168, align 4, !tbaa !12
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds double, double* %562, i64 %588
  %590 = bitcast double* %589 to i64*
  %591 = load i64, i64* %590, align 8, !tbaa !1
  store i64 %591, i64* %116, align 16, !tbaa !1
  %592 = getelementptr inbounds double, double* %563, i64 %588
  %593 = bitcast double* %592 to i64*
  %594 = load i64, i64* %593, align 8, !tbaa !1
  store i64 %594, i64* %117, align 16, !tbaa !1
  %595 = getelementptr inbounds double, double* %564, i64 %588
  %596 = bitcast double* %595 to i64*
  %597 = load i64, i64* %596, align 8, !tbaa !1
  store i64 %597, i64* %118, align 16, !tbaa !1
  %598 = load i32, i32* %170, align 4, !tbaa !12
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds double, double* %562, i64 %599
  %601 = bitcast double* %600 to i64*
  %602 = load i64, i64* %601, align 8, !tbaa !1
  store i64 %602, i64* %119, align 8, !tbaa !1
  %603 = getelementptr inbounds double, double* %563, i64 %599
  %604 = bitcast double* %603 to i64*
  %605 = load i64, i64* %604, align 8, !tbaa !1
  store i64 %605, i64* %120, align 8, !tbaa !1
  %606 = getelementptr inbounds double, double* %564, i64 %599
  %607 = bitcast double* %606 to i64*
  %608 = load i64, i64* %607, align 8, !tbaa !1
  store i64 %608, i64* %121, align 8, !tbaa !1
  %609 = load i32, i32* %172, align 4, !tbaa !12
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds double, double* %562, i64 %610
  %612 = bitcast double* %611 to i64*
  %613 = load i64, i64* %612, align 8, !tbaa !1
  store i64 %613, i64* %122, align 16, !tbaa !1
  %614 = getelementptr inbounds double, double* %563, i64 %610
  %615 = bitcast double* %614 to i64*
  %616 = load i64, i64* %615, align 8, !tbaa !1
  store i64 %616, i64* %123, align 16, !tbaa !1
  %617 = getelementptr inbounds double, double* %564, i64 %610
  %618 = bitcast double* %617 to i64*
  %619 = load i64, i64* %618, align 8, !tbaa !1
  store i64 %619, i64* %124, align 16, !tbaa !1
  %620 = load i32, i32* %174, align 4, !tbaa !12
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds double, double* %562, i64 %621
  %623 = bitcast double* %622 to i64*
  %624 = load i64, i64* %623, align 8, !tbaa !1
  store i64 %624, i64* %125, align 8, !tbaa !1
  %625 = getelementptr inbounds double, double* %563, i64 %621
  %626 = bitcast double* %625 to i64*
  %627 = load i64, i64* %626, align 8, !tbaa !1
  store i64 %627, i64* %126, align 8, !tbaa !1
  %628 = getelementptr inbounds double, double* %564, i64 %621
  %629 = bitcast double* %628 to i64*
  %630 = load i64, i64* %629, align 8, !tbaa !1
  store i64 %630, i64* %127, align 8, !tbaa !1
  %631 = load i32, i32* %176, align 4, !tbaa !12
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds double, double* %562, i64 %632
  %634 = bitcast double* %633 to i64*
  %635 = load i64, i64* %634, align 8, !tbaa !1
  store i64 %635, i64* %128, align 16, !tbaa !1
  %636 = getelementptr inbounds double, double* %563, i64 %632
  %637 = bitcast double* %636 to i64*
  %638 = load i64, i64* %637, align 8, !tbaa !1
  store i64 %638, i64* %129, align 16, !tbaa !1
  %639 = getelementptr inbounds double, double* %564, i64 %632
  %640 = bitcast double* %639 to i64*
  %641 = load i64, i64* %640, align 8, !tbaa !1
  store i64 %641, i64* %130, align 16, !tbaa !1
  %642 = load i32, i32* %178, align 4, !tbaa !12
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double, double* %562, i64 %643
  %645 = bitcast double* %644 to i64*
  %646 = load i64, i64* %645, align 8, !tbaa !1
  store i64 %646, i64* %131, align 8, !tbaa !1
  %647 = getelementptr inbounds double, double* %563, i64 %643
  %648 = bitcast double* %647 to i64*
  %649 = load i64, i64* %648, align 8, !tbaa !1
  store i64 %649, i64* %132, align 8, !tbaa !1
  %650 = getelementptr inbounds double, double* %564, i64 %643
  %651 = bitcast double* %650 to i64*
  %652 = load i64, i64* %651, align 8, !tbaa !1
  store i64 %652, i64* %133, align 8, !tbaa !1
  %653 = load <2 x double>, <2 x double>* %136, align 16, !tbaa !1
  %654 = fmul <2 x double> %135, %653
  %655 = load <2 x double>, <2 x double>* %137, align 16, !tbaa !1
  %656 = fsub <2 x double> %655, %654
  store <2 x double> %656, <2 x double>* %137, align 16, !tbaa !1
  %657 = load <2 x double>, <2 x double>* %138, align 16, !tbaa !1
  %658 = fmul <2 x double> %135, %657
  %659 = load <2 x double>, <2 x double>* %139, align 16, !tbaa !1
  %660 = fsub <2 x double> %659, %658
  store <2 x double> %660, <2 x double>* %139, align 16, !tbaa !1
  %661 = load <2 x double>, <2 x double>* %140, align 16, !tbaa !1
  %662 = fmul <2 x double> %135, %661
  %663 = load <2 x double>, <2 x double>* %141, align 16, !tbaa !1
  %664 = fsub <2 x double> %663, %662
  store <2 x double> %664, <2 x double>* %141, align 16, !tbaa !1
  %665 = load <2 x double>, <2 x double>* %142, align 16, !tbaa !1
  %666 = fmul <2 x double> %135, %665
  %667 = load <2 x double>, <2 x double>* %143, align 16, !tbaa !1
  %668 = fsub <2 x double> %667, %666
  store <2 x double> %668, <2 x double>* %143, align 16, !tbaa !1
  %669 = load <2 x double>, <2 x double>* %144, align 16, !tbaa !1
  %670 = fmul <2 x double> %135, %669
  %671 = load <2 x double>, <2 x double>* %145, align 16, !tbaa !1
  %672 = fsub <2 x double> %671, %670
  store <2 x double> %672, <2 x double>* %145, align 16, !tbaa !1
  %673 = load <2 x double>, <2 x double>* %146, align 16, !tbaa !1
  %674 = fmul <2 x double> %135, %673
  %675 = load <2 x double>, <2 x double>* %147, align 16, !tbaa !1
  %676 = fsub <2 x double> %675, %674
  store <2 x double> %676, <2 x double>* %147, align 16, !tbaa !1
  %677 = load <2 x double>, <2 x double>* %148, align 16, !tbaa !1
  %678 = fmul <2 x double> %135, %677
  %679 = load <2 x double>, <2 x double>* %149, align 16, !tbaa !1
  %680 = fsub <2 x double> %679, %678
  store <2 x double> %680, <2 x double>* %149, align 16, !tbaa !1
  %681 = load <2 x double>, <2 x double>* %150, align 16, !tbaa !1
  %682 = fmul <2 x double> %135, %681
  %683 = load <2 x double>, <2 x double>* %151, align 16, !tbaa !1
  %684 = fsub <2 x double> %683, %682
  store <2 x double> %684, <2 x double>* %151, align 16, !tbaa !1
  %685 = load <2 x double>, <2 x double>* %152, align 16, !tbaa !1
  %686 = fmul <2 x double> %135, %685
  %687 = load <2 x double>, <2 x double>* %153, align 16, !tbaa !1
  %688 = fsub <2 x double> %687, %686
  store <2 x double> %688, <2 x double>* %153, align 16, !tbaa !1
  %689 = load <2 x double>, <2 x double>* %154, align 16, !tbaa !1
  %690 = fmul <2 x double> %135, %689
  %691 = load <2 x double>, <2 x double>* %155, align 16, !tbaa !1
  %692 = fsub <2 x double> %691, %690
  store <2 x double> %692, <2 x double>* %155, align 16, !tbaa !1
  %693 = load <2 x double>, <2 x double>* %156, align 16, !tbaa !1
  %694 = fmul <2 x double> %135, %693
  %695 = load <2 x double>, <2 x double>* %157, align 16, !tbaa !1
  %696 = fsub <2 x double> %695, %694
  store <2 x double> %696, <2 x double>* %157, align 16, !tbaa !1
  %697 = load <2 x double>, <2 x double>* %158, align 16, !tbaa !1
  %698 = fmul <2 x double> %135, %697
  %699 = load <2 x double>, <2 x double>* %159, align 16, !tbaa !1
  %700 = fsub <2 x double> %699, %698
  store <2 x double> %700, <2 x double>* %159, align 16, !tbaa !1
  call fastcc void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %11, double* %12, double* %13, [8 x double]* %70, double* nonnull %detJ)
  %701 = load double, double* %detJ, align 8, !tbaa !1
  %702 = fdiv double 1.000000e+00, %701
  %703 = load double, double* %74, align 16, !tbaa !1
  %704 = bitcast <2 x double> %653 to i128
  %trunc = trunc i128 %704 to i64
  %bitcast = bitcast i64 %trunc to double
  %705 = extractelement <2 x double> %689, i32 0
  %706 = fsub double %bitcast, %705
  %707 = fmul double %703, %706
  %708 = load double, double* %78, align 8, !tbaa !1
  %709 = load double, double* %79, align 8, !tbaa !1
  %710 = extractelement <2 x double> %689, i32 1
  %711 = fsub double %709, %710
  %712 = fmul double %708, %711
  %713 = fadd double %707, %712
  %714 = load double, double* %81, align 16, !tbaa !1
  %715 = bitcast <2 x double> %665 to i128
  %trunc1 = trunc i128 %715 to i64
  %bitcast2 = bitcast i64 %trunc1 to double
  %716 = extractelement <2 x double> %677, i32 0
  %717 = fsub double %bitcast2, %716
  %718 = fmul double %714, %717
  %719 = fadd double %713, %718
  %720 = load double, double* %84, align 8, !tbaa !1
  %721 = extractelement <2 x double> %665, i32 1
  %722 = extractelement <2 x double> %677, i32 1
  %723 = fsub double %721, %722
  %724 = fmul double %720, %723
  %725 = fadd double %719, %724
  %726 = fmul double %702, %725
  %727 = load double, double* %75, align 16, !tbaa !1
  %728 = bitcast <2 x double> %657 to i128
  %trunc3 = trunc i128 %728 to i64
  %bitcast4 = bitcast i64 %trunc3 to double
  %729 = extractelement <2 x double> %693, i32 0
  %730 = fsub double %bitcast4, %729
  %731 = fmul double %727, %730
  %732 = load double, double* %88, align 8, !tbaa !1
  %733 = load double, double* %89, align 8, !tbaa !1
  %734 = extractelement <2 x double> %693, i32 1
  %735 = fsub double %733, %734
  %736 = fmul double %732, %735
  %737 = fadd double %731, %736
  %738 = load double, double* %91, align 16, !tbaa !1
  %739 = bitcast <2 x double> %669 to i128
  %trunc5 = trunc i128 %739 to i64
  %bitcast6 = bitcast i64 %trunc5 to double
  %740 = extractelement <2 x double> %681, i32 0
  %741 = fsub double %bitcast6, %740
  %742 = fmul double %738, %741
  %743 = fadd double %737, %742
  %744 = load double, double* %94, align 8, !tbaa !1
  %745 = load double, double* %95, align 8, !tbaa !1
  %746 = extractelement <2 x double> %681, i32 1
  %747 = fsub double %745, %746
  %748 = fmul double %744, %747
  %749 = fadd double %743, %748
  %750 = fmul double %702, %749
  %751 = load double, double* %76, align 16, !tbaa !1
  %752 = load double, double* %73, align 16, !tbaa !1
  %753 = extractelement <2 x double> %697, i32 0
  %754 = fsub double %752, %753
  %755 = fmul double %751, %754
  %756 = load double, double* %98, align 8, !tbaa !1
  %757 = load double, double* %99, align 8, !tbaa !1
  %758 = extractelement <2 x double> %697, i32 1
  %759 = fsub double %757, %758
  %760 = fmul double %756, %759
  %761 = fadd double %755, %760
  %762 = load double, double* %101, align 16, !tbaa !1
  %763 = load double, double* %102, align 16, !tbaa !1
  %764 = bitcast <2 x double> %685 to i128
  %trunc7 = trunc i128 %764 to i64
  %bitcast8 = bitcast i64 %trunc7 to double
  %765 = fsub double %763, %bitcast8
  %766 = fmul double %762, %765
  %767 = fadd double %761, %766
  %768 = load double, double* %104, align 8, !tbaa !1
  %769 = load double, double* %105, align 8, !tbaa !1
  %770 = extractelement <2 x double> %685, i32 1
  %771 = fsub double %769, %770
  %772 = fmul double %768, %771
  %773 = fadd double %767, %772
  %774 = fmul double %702, %773
  %775 = load double*, double** %107, align 8, !tbaa !9
  %776 = getelementptr inbounds double, double* %775, i64 %indvars.iv9
  store double %726, double* %776, align 8, !tbaa !1
  %777 = load double*, double** %108, align 8, !tbaa !9
  %778 = getelementptr inbounds double, double* %777, i64 %indvars.iv9
  store double %750, double* %778, align 8, !tbaa !1
  %779 = load double*, double** %109, align 8, !tbaa !9
  %780 = getelementptr inbounds double, double* %779, i64 %indvars.iv9
  store double %774, double* %780, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  call void @llvm.lifetime.end(i64 64, i8* %8) #2
  call void @llvm.lifetime.end(i64 64, i8* %7) #2
  call void @llvm.lifetime.end(i64 64, i8* %6) #2
  call void @llvm.lifetime.end(i64 64, i8* %5) #2
  call void @llvm.lifetime.end(i64 64, i8* %4) #2
  call void @llvm.lifetime.end(i64 64, i8* %3) #2
  call void @llvm.lifetime.end(i64 192, i8* %2) #2
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next10 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv, %numElem
  br i1 %exitcond11, label %._crit_edge.loopexit, label %.preheader12
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare double @sqrt(double) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nocapture readonly %x, double* nocapture readonly %y, double* nocapture readonly %z, [8 x double]* %b, double* nocapture %volume) unnamed_addr #7 {
  %1 = load double, double* %x, align 8, !tbaa !1
  %2 = getelementptr inbounds double, double* %x, i64 1
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = getelementptr inbounds double, double* %x, i64 2
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = getelementptr inbounds double, double* %x, i64 3
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = getelementptr inbounds double, double* %x, i64 4
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = getelementptr inbounds double, double* %x, i64 5
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = getelementptr inbounds double, double* %x, i64 6
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = getelementptr inbounds double, double* %x, i64 7
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = load double, double* %y, align 8, !tbaa !1
  %17 = getelementptr inbounds double, double* %y, i64 1
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = getelementptr inbounds double, double* %y, i64 2
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = getelementptr inbounds double, double* %y, i64 3
  %22 = load double, double* %21, align 8, !tbaa !1
  %23 = getelementptr inbounds double, double* %y, i64 4
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = getelementptr inbounds double, double* %y, i64 5
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = getelementptr inbounds double, double* %y, i64 6
  %28 = load double, double* %27, align 8, !tbaa !1
  %29 = getelementptr inbounds double, double* %y, i64 7
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = load double, double* %z, align 8, !tbaa !1
  %32 = getelementptr inbounds double, double* %z, i64 1
  %33 = load double, double* %32, align 8, !tbaa !1
  %34 = getelementptr inbounds double, double* %z, i64 2
  %35 = load double, double* %34, align 8, !tbaa !1
  %36 = getelementptr inbounds double, double* %z, i64 3
  %37 = load double, double* %36, align 8, !tbaa !1
  %38 = getelementptr inbounds double, double* %z, i64 4
  %39 = load double, double* %38, align 8, !tbaa !1
  %40 = getelementptr inbounds double, double* %z, i64 5
  %41 = load double, double* %40, align 8, !tbaa !1
  %42 = getelementptr inbounds double, double* %z, i64 6
  %43 = load double, double* %42, align 8, !tbaa !1
  %44 = getelementptr inbounds double, double* %z, i64 7
  %45 = load double, double* %44, align 8, !tbaa !1
  %46 = fsub double %13, %1
  %47 = fsub double %11, %7
  %48 = fadd double %47, %46
  %49 = fsub double %15, %3
  %50 = fsub double %48, %49
  %51 = fsub double %9, %5
  %52 = fsub double %50, %51
  %53 = fmul double %52, 1.250000e-01
  %54 = fsub double %46, %47
  %55 = fadd double %54, %49
  %56 = fsub double %55, %51
  %57 = fmul double %56, 1.250000e-01
  %58 = fadd double %48, %49
  %59 = fadd double %51, %58
  %60 = fmul double %59, 1.250000e-01
  %61 = fsub double %28, %16
  %62 = fsub double %26, %22
  %63 = fadd double %62, %61
  %64 = fsub double %30, %18
  %65 = fsub double %63, %64
  %66 = fsub double %24, %20
  %67 = fsub double %65, %66
  %68 = fmul double %67, 1.250000e-01
  %69 = fsub double %61, %62
  %70 = fadd double %69, %64
  %71 = fsub double %70, %66
  %72 = fmul double %71, 1.250000e-01
  %73 = fadd double %63, %64
  %74 = fadd double %66, %73
  %75 = fmul double %74, 1.250000e-01
  %76 = fsub double %43, %31
  %77 = fsub double %41, %37
  %78 = fadd double %77, %76
  %79 = fsub double %45, %33
  %80 = fsub double %78, %79
  %81 = fsub double %39, %35
  %82 = fsub double %80, %81
  %83 = fmul double %82, 1.250000e-01
  %84 = fsub double %76, %77
  %85 = fadd double %84, %79
  %86 = fsub double %85, %81
  %87 = fmul double %86, 1.250000e-01
  %88 = fadd double %78, %79
  %89 = fadd double %81, %88
  %90 = fmul double %89, 1.250000e-01
  %91 = fmul double %72, %90
  %92 = fmul double %75, %87
  %93 = fsub double %91, %92
  %94 = fmul double %68, %90
  %95 = fmul double %75, %83
  %96 = fsub double %95, %94
  %97 = fmul double %68, %87
  %98 = fmul double %72, %83
  %99 = fsub double %97, %98
  %100 = fmul double %57, %90
  %101 = fmul double %60, %87
  %102 = fsub double %101, %100
  %103 = fmul double %53, %90
  %104 = fmul double %60, %83
  %105 = fsub double %103, %104
  %106 = fmul double %53, %87
  %107 = fmul double %57, %83
  %108 = fsub double %107, %106
  %109 = fmul double %57, %75
  %110 = fmul double %60, %72
  %111 = fsub double %109, %110
  %112 = fmul double %53, %75
  %113 = fmul double %60, %68
  %114 = fsub double %113, %112
  %115 = fmul double %53, %72
  %116 = fmul double %57, %68
  %117 = fsub double %115, %116
  %118 = fsub double -0.000000e+00, %93
  %119 = insertelement <2 x double> undef, double %118, i32 0
  %120 = insertelement <2 x double> %119, double %93, i32 1
  %121 = insertelement <2 x double> undef, double %96, i32 0
  %122 = insertelement <2 x double> %121, double %96, i32 1
  %123 = fsub <2 x double> %120, %122
  %124 = insertelement <2 x double> undef, double %99, i32 0
  %125 = insertelement <2 x double> %124, double %99, i32 1
  %126 = fsub <2 x double> %123, %125
  %127 = bitcast [8 x double]* %b to <2 x double>*
  store <2 x double> %126, <2 x double>* %127, align 8, !tbaa !1
  %128 = fadd double %93, %96
  %129 = fsub double %128, %99
  %130 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 2
  store double %129, double* %130, align 8, !tbaa !1
  %131 = fsub double %96, %93
  %132 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 3
  %133 = insertelement <2 x double> undef, double %131, i32 0
  %134 = insertelement <2 x double> %133, double -0.000000e+00, i32 1
  %135 = insertelement <2 x double> %124, double %129, i32 1
  %136 = fsub <2 x double> %134, %135
  %137 = bitcast double* %132 to <2 x double>*
  store <2 x double> %136, <2 x double>* %137, align 8, !tbaa !1
  %138 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 5
  %139 = shufflevector <2 x double> %136, <2 x double> %126, <2 x i32> <i32 0, i32 2>
  %140 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %139
  %141 = bitcast double* %138 to <2 x double>*
  store <2 x double> %140, <2 x double>* %141, align 8, !tbaa !1
  %142 = extractelement <2 x double> %126, i32 1
  %143 = fsub double -0.000000e+00, %142
  %144 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 7
  store double %143, double* %144, align 8, !tbaa !1
  %145 = fsub double -0.000000e+00, %102
  %146 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 0
  %147 = insertelement <2 x double> undef, double %145, i32 0
  %148 = insertelement <2 x double> %147, double %102, i32 1
  %149 = insertelement <2 x double> undef, double %105, i32 0
  %150 = insertelement <2 x double> %149, double %105, i32 1
  %151 = fsub <2 x double> %148, %150
  %152 = insertelement <2 x double> undef, double %108, i32 0
  %153 = insertelement <2 x double> %152, double %108, i32 1
  %154 = fsub <2 x double> %151, %153
  %155 = bitcast double* %146 to <2 x double>*
  store <2 x double> %154, <2 x double>* %155, align 8, !tbaa !1
  %156 = fadd double %102, %105
  %157 = fsub double %156, %108
  %158 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 2
  store double %157, double* %158, align 8, !tbaa !1
  %159 = fsub double %105, %102
  %160 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 3
  %161 = insertelement <2 x double> undef, double %159, i32 0
  %162 = insertelement <2 x double> %161, double -0.000000e+00, i32 1
  %163 = insertelement <2 x double> %152, double %157, i32 1
  %164 = fsub <2 x double> %162, %163
  %165 = bitcast double* %160 to <2 x double>*
  store <2 x double> %164, <2 x double>* %165, align 8, !tbaa !1
  %166 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 5
  %167 = shufflevector <2 x double> %164, <2 x double> %154, <2 x i32> <i32 0, i32 2>
  %168 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %167
  %169 = bitcast double* %166 to <2 x double>*
  store <2 x double> %168, <2 x double>* %169, align 8, !tbaa !1
  %170 = extractelement <2 x double> %154, i32 1
  %171 = fsub double -0.000000e+00, %170
  %172 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 7
  store double %171, double* %172, align 8, !tbaa !1
  %173 = fsub double -0.000000e+00, %111
  %174 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 0
  %175 = insertelement <2 x double> undef, double %173, i32 0
  %176 = insertelement <2 x double> %175, double %111, i32 1
  %177 = insertelement <2 x double> undef, double %114, i32 0
  %178 = insertelement <2 x double> %177, double %114, i32 1
  %179 = fsub <2 x double> %176, %178
  %180 = insertelement <2 x double> undef, double %117, i32 0
  %181 = insertelement <2 x double> %180, double %117, i32 1
  %182 = fsub <2 x double> %179, %181
  %183 = bitcast double* %174 to <2 x double>*
  store <2 x double> %182, <2 x double>* %183, align 8, !tbaa !1
  %184 = fadd double %111, %114
  %185 = fsub double %184, %117
  %186 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 2
  store double %185, double* %186, align 8, !tbaa !1
  %187 = fsub double %114, %111
  %188 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 3
  %189 = insertelement <2 x double> undef, double %187, i32 0
  %190 = insertelement <2 x double> %189, double -0.000000e+00, i32 1
  %191 = insertelement <2 x double> %180, double %185, i32 1
  %192 = fsub <2 x double> %190, %191
  %193 = bitcast double* %188 to <2 x double>*
  store <2 x double> %192, <2 x double>* %193, align 8, !tbaa !1
  %194 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 5
  %195 = shufflevector <2 x double> %192, <2 x double> %182, <2 x i32> <i32 0, i32 2>
  %196 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %195
  %197 = bitcast double* %194 to <2 x double>*
  store <2 x double> %196, <2 x double>* %197, align 8, !tbaa !1
  %198 = extractelement <2 x double> %182, i32 1
  %199 = fsub double -0.000000e+00, %198
  %200 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 7
  store double %199, double* %200, align 8, !tbaa !1
  %201 = fmul double %57, %96
  %202 = fmul double %72, %105
  %203 = fadd double %201, %202
  %204 = fmul double %114, %87
  %205 = fadd double %204, %203
  %206 = fmul double %205, 8.000000e+00
  store double %206, double* %volume, align 8, !tbaa !1
  ret void
}

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %opts = alloca %struct.cmdLineOpts, align 16
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %plane = alloca i32, align 4
  %side = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %end = alloca %struct.timeval, align 8
  %1 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #2
  %2 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 0
  %3 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 1
  %4 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 2
  %5 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 3
  %6 = bitcast %struct.cmdLineOpts* %opts to <4 x i32>*
  store <4 x i32> <i32 9999999, i32 30, i32 11, i32 1>, <4 x i32>* %6, align 16, !tbaa !12
  %7 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 4
  %8 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 5
  %9 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 6
  %10 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 8
  store i32 1, i32* %10, align 16, !tbaa !14
  %11 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 7
  %12 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, <4 x i32>* %12, align 16, !tbaa !12
  call void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** %argv, i32 0, %struct.cmdLineOpts* nonnull %opts)
  %13 = load i32, i32* %8, align 4, !tbaa !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre2 = load i32, i32* %3, align 4, !tbaa !17
  br label %23

; <label>:15                                      ; preds = %0
  %16 = load i32, i32* %3, align 4, !tbaa !17
  %17 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %19 = mul nsw i32 %16, %16
  %20 = mul nsw i32 %19, %16
  %21 = sext i32 %20 to i64
  %22 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @str.14, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @str.15, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @str.16, i64 0, i64 0))
  %puts5 = call i32 @puts(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @str.17, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @str.18, i64 0, i64 0))
  %puts7 = call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @str.19, i64 0, i64 0))
  br label %23

; <label>:23                                      ; preds = %._crit_edge1, %15
  %24 = phi i32 [ %.pre2, %._crit_edge1 ], [ %16, %15 ]
  %25 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  call void @_Z14InitMeshDecompiiPiS_S_S_(i32 1, i32 0, i32* nonnull %col, i32* nonnull %row, i32* nonnull %plane, i32* nonnull %side)
  %29 = call noalias i8* @_Znwm(i64 1456) #18
  %30 = bitcast i8* %29 to %class.Domain*
  %31 = load i32, i32* %col, align 4, !tbaa !12
  %32 = load i32, i32* %row, align 4, !tbaa !12
  %33 = load i32, i32* %plane, align 4, !tbaa !12
  %34 = load i32, i32* %side, align 4, !tbaa !12
  %35 = bitcast i32* %4 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %10, align 16, !tbaa !14
  %39 = load i32, i32* %11, align 4, !tbaa !18
  %40 = lshr i64 %36, 32
  %41 = trunc i64 %40 to i32
  invoke void @_ZN6DomainC1Eiiiiiiiii(%class.Domain* %30, i32 1, i32 %31, i32 %32, i32 %33, i32 %24, i32 %34, i32 %37, i32 %38, i32 %39)
          to label %42 unwind label %136

; <label>:42                                      ; preds = %23
  %43 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #2
  %44 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #2
  %45 = getelementptr inbounds i8, i8* %29, i64 1304
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds i8, i8* %29, i64 1320
  %48 = bitcast i8* %47 to double*
  %49 = load double, double* %48, align 8, !tbaa !1
  %50 = getelementptr inbounds i8, i8* %29, i64 1360
  %51 = bitcast i8* %50 to double*
  %52 = load double, double* %51, align 8, !tbaa !1
  %53 = fcmp olt double %49, %52
  br i1 %53, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %42
  %54 = getelementptr inbounds i8, i8* %29, i64 1312
  %55 = bitcast i8* %54 to double*
  %56 = getelementptr inbounds i8, i8* %29, i64 1328
  %57 = bitcast i8* %56 to double*
  %58 = getelementptr inbounds i8, i8* %29, i64 1288
  %59 = bitcast i8* %58 to double*
  %60 = getelementptr inbounds i8, i8* %29, i64 1296
  %61 = bitcast i8* %60 to double*
  %62 = getelementptr inbounds i8, i8* %29, i64 1352
  %63 = bitcast i8* %62 to double*
  %64 = getelementptr inbounds i8, i8* %29, i64 1336
  %65 = bitcast i8* %64 to double*
  %66 = getelementptr inbounds i8, i8* %29, i64 1344
  %67 = bitcast i8* %66 to double*
  %68 = bitcast i32* %2 to i64*
  %.pre3 = load i64, i64* %68, align 16
  %69 = trunc i64 %.pre3 to i32
  %70 = lshr i64 %.pre3, 32
  %71 = trunc i64 %70 to i32
  br label %72

; <label>:72                                      ; preds = %.backedge, %.lr.ph
  %73 = phi i32 [ %13, %.lr.ph ], [ %126, %.backedge ]
  %74 = phi double [ %52, %.lr.ph ], [ %134, %.backedge ]
  %75 = phi double [ %49, %.lr.ph ], [ %133, %.backedge ]
  %76 = load i32, i32* %46, align 4, !tbaa !12
  %77 = icmp slt i32 %76, %69
  br i1 %77, label %78, label %.critedge.loopexit

; <label>:78                                      ; preds = %72
  %79 = fsub double %74, %75
  %80 = load double, double* %55, align 8, !tbaa !1
  %81 = fcmp ugt double %80, 0.000000e+00
  %82 = icmp eq i32 %76, 0
  %or.cond9 = or i1 %82, %81
  %.pre = load double, double* %57, align 8, !tbaa !1
  br i1 %or.cond9, label %._crit_edge, label %83

; <label>:83                                      ; preds = %78
  %84 = load double, double* %59, align 8, !tbaa !1
  %85 = fcmp olt double %84, 1.000000e+20
  %86 = fmul double %84, 5.000000e-01
  %gnewdt.0.i = select i1 %85, double %86, double 1.000000e+20
  %87 = load double, double* %61, align 8, !tbaa !1
  %88 = fcmp olt double %87, %gnewdt.0.i
  br i1 %88, label %89, label %92

; <label>:89                                      ; preds = %83
  %90 = fmul double %87, 2.000000e+00
  %91 = fdiv double %90, 3.000000e+00
  br label %92

; <label>:92                                      ; preds = %89, %83
  %gnewdt.1.i = phi double [ %91, %89 ], [ %gnewdt.0.i, %83 ]
  %93 = fdiv double %gnewdt.1.i, %.pre
  %94 = fcmp ult double %93, 1.000000e+00
  br i1 %94, label %103, label %95

; <label>:95                                      ; preds = %92
  %96 = load double, double* %65, align 8, !tbaa !1
  %97 = fcmp olt double %93, %96
  br i1 %97, label %103, label %98

; <label>:98                                      ; preds = %95
  %99 = load double, double* %67, align 8, !tbaa !1
  %100 = fcmp ogt double %93, %99
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %98
  %102 = fmul double %.pre, %99
  br label %103

; <label>:103                                     ; preds = %101, %98, %95, %92
  %newdt.0.i = phi double [ %102, %101 ], [ %gnewdt.1.i, %98 ], [ %gnewdt.1.i, %92 ], [ %.pre, %95 ]
  %104 = load double, double* %63, align 8, !tbaa !1
  %105 = fcmp ogt double %newdt.0.i, %104
  %newdt.1.i = select i1 %105, double %104, double %newdt.0.i
  store double %newdt.1.i, double* %57, align 8, !tbaa !1
  br label %._crit_edge

._crit_edge:                                      ; preds = %103, %78
  %106 = phi double [ %newdt.1.i, %103 ], [ %.pre, %78 ]
  %107 = fcmp ogt double %79, %106
  br i1 %107, label %108, label %115

; <label>:108                                     ; preds = %._crit_edge
  %109 = fmul double %106, 4.000000e+00
  %110 = fdiv double %109, 3.000000e+00
  %111 = fcmp olt double %79, %110
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %108
  %113 = fmul double %106, 2.000000e+00
  %114 = fdiv double %113, 3.000000e+00
  br label %115

; <label>:115                                     ; preds = %112, %108, %._crit_edge
  %targetdt.0.i = phi double [ %114, %112 ], [ %79, %108 ], [ %79, %._crit_edge ]
  %116 = fcmp olt double %targetdt.0.i, %106
  br i1 %116, label %117, label %_ZL13TimeIncrementR6Domain.exit

; <label>:117                                     ; preds = %115
  store double %targetdt.0.i, double* %57, align 8, !tbaa !1
  br label %_ZL13TimeIncrementR6Domain.exit

_ZL13TimeIncrementR6Domain.exit:                  ; preds = %117, %115
  %118 = phi double [ %targetdt.0.i, %117 ], [ %106, %115 ]
  %119 = fadd double %75, %118
  store double %119, double* %48, align 8, !tbaa !1
  %120 = add nsw i32 %76, 1
  store i32 %120, i32* %46, align 4, !tbaa !12
  call fastcc void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* nonnull dereferenceable(1456) %30)
  %121 = bitcast i32* %7 to i64*
  %122 = load i64, i64* %121, align 16
  %123 = trunc i64 %122 to i32
  %124 = icmp ne i32 %123, 0
  %125 = lshr i64 %122, 32
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 0
  %or.cond = and i1 %124, %127
  br i1 %or.cond, label %128, label %.backedge

; <label>:128                                     ; preds = %_ZL13TimeIncrementR6Domain.exit
  %129 = load i32, i32* %46, align 4, !tbaa !12
  %130 = load double, double* %48, align 8, !tbaa !1
  %131 = load double, double* %57, align 8, !tbaa !1
  %132 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %129, double %130, double %131)
  br label %.backedge

.backedge:                                        ; preds = %128, %_ZL13TimeIncrementR6Domain.exit
  %133 = load double, double* %48, align 8, !tbaa !1
  %134 = load double, double* %51, align 8, !tbaa !1
  %135 = fcmp olt double %133, %134
  br i1 %135, label %72, label %.critedge.loopexit

; <label>:136                                     ; preds = %23
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %29) #19
  resume { i8*, i32 } %137

.critedge.loopexit:                               ; preds = %.backedge, %72
  %138 = phi i32 [ %126, %.backedge ], [ %73, %72 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %42
  %139 = phi i32 [ %71, %.critedge.loopexit ], [ %24, %42 ]
  %140 = phi i32 [ %138, %.critedge.loopexit ], [ %13, %42 ]
  %141 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.start(i64 16, i8* %141) #2
  %142 = call i32 @gettimeofday(%struct.timeval* nonnull %end, %struct.timezone* null) #2
  %143 = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !19
  %145 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %146 = load i64, i64* %145, align 8, !tbaa !19
  %147 = sub nsw i64 %144, %146
  %148 = sitofp i64 %147 to double
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !22
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %152 = load i64, i64* %151, align 8, !tbaa !22
  %153 = sub nsw i64 %150, %152
  %154 = sitofp i64 %153 to double
  %155 = fdiv double %154, 1.000000e+06
  %156 = fadd double %148, %155
  %157 = load i32, i32* %9, align 8, !tbaa !23
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159

; <label>:159                                     ; preds = %.critedge
  call void @_Z11DumpToVisitR6Domainiii(%class.Domain* nonnull dereferenceable(1456) %30, i32 %41, i32 0, i32 1)
  br label %160

; <label>:160                                     ; preds = %159, %.critedge
  %161 = icmp eq i32 %140, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %160
  call void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %156, %class.Domain* nonnull dereferenceable(1456) %30, i32 %139, i32 1)
  br label %163

; <label>:163                                     ; preds = %162, %160
  call void @llvm.lifetime.end(i64 16, i8* %141) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %43) #2
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1) #2
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) #9

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #6

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* dereferenceable(1456) %domain) unnamed_addr #10 {
  %gamma.i.i.i.i.i = alloca [4 x [8 x double]], align 16
  %hourgam.i.i.i.i.i = alloca [8 x [4 x double]], align 16
  %B.i.i.i.i = alloca [3 x [8 x double]], align 16
  %x_local.i.i.i.i = alloca [8 x double], align 16
  %y_local.i.i.i.i = alloca [8 x double], align 16
  %z_local.i.i.i.i = alloca [8 x double], align 16
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 75
  %2 = load double, double* %1, align 8, !tbaa !1
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 55
  %4 = load double, double* %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 89
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph.i6.i, label %._crit_edge.i.i

.lr.ph.i6.i:                                      ; preds = %0
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 9, i32 0, i32 0, i32 0
  %9 = load double*, double** %8, align 8
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 10, i32 0, i32 0, i32 0
  %11 = load double*, double** %10, align 8
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 11, i32 0, i32 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = add i32 %6, -1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %min.iters.check = icmp ult i64 %16, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph.i6.i
  %indvars.iv.i9.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %.lr.ph.i6.i ], [ %n.vec, %middle.block ]
  %17 = add i32 %6, 1
  %18 = or i64 %indvars.iv.i9.i.ph, 1
  %19 = trunc i64 %18 to i32
  %20 = sub i32 %17, %19
  %21 = sub i32 %6, %19
  %xtraiter344 = and i32 %20, 3
  %lcmp.mod345 = icmp eq i32 %xtraiter344, 0
  br i1 %lcmp.mod345, label %scalar.ph.preheader.split, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.i9.i.prol = phi i64 [ %indvars.iv.next.i10.i.prol, %scalar.ph.prol ], [ %indvars.iv.i9.i.ph, %scalar.ph.prol.preheader ]
  %prol.iter346 = phi i32 [ %prol.iter346.sub, %scalar.ph.prol ], [ %xtraiter344, %scalar.ph.prol.preheader ]
  %22 = getelementptr inbounds double, double* %9, i64 %indvars.iv.i9.i.prol
  store double 0.000000e+00, double* %22, align 8, !tbaa !1
  %23 = getelementptr inbounds double, double* %11, i64 %indvars.iv.i9.i.prol
  store double 0.000000e+00, double* %23, align 8, !tbaa !1
  %24 = getelementptr inbounds double, double* %13, i64 %indvars.iv.i9.i.prol
  store double 0.000000e+00, double* %24, align 8, !tbaa !1
  %indvars.iv.next.i10.i.prol = add nuw nsw i64 %indvars.iv.i9.i.prol, 1
  %prol.iter346.sub = add i32 %prol.iter346, -1
  %prol.iter346.cmp = icmp eq i32 %prol.iter346.sub, 0
  br i1 %prol.iter346.cmp, label %scalar.ph.preheader.split.loopexit, label %scalar.ph.prol, !llvm.loop !28

scalar.ph.preheader.split.loopexit:               ; preds = %scalar.ph.prol
  br label %scalar.ph.preheader.split

scalar.ph.preheader.split:                        ; preds = %scalar.ph.preheader.split.loopexit, %scalar.ph.preheader
  %indvars.iv.i9.i.unr = phi i64 [ %indvars.iv.i9.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i10.i.prol, %scalar.ph.preheader.split.loopexit ]
  %25 = icmp ult i32 %21, 3
  br i1 %25, label %._crit_edge.i.i.loopexit, label %scalar.ph.preheader.split.split

scalar.ph.preheader.split.split:                  ; preds = %scalar.ph.preheader.split
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph.i6.i
  %n.vec = and i64 %16, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %scevgep = getelementptr double, double* %9, i64 %15
  %scevgep123 = getelementptr double, double* %11, i64 %15
  %scevgep125 = getelementptr double, double* %13, i64 %15
  %bound0 = icmp ule double* %9, %scevgep123
  %bound1 = icmp ule double* %11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0127 = icmp ule double* %9, %scevgep125
  %bound1128 = icmp ule double* %13, %scevgep
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx = or i1 %found.conflict, %found.conflict129
  %bound0130 = icmp ule double* %11, %scevgep125
  %bound1131 = icmp ule double* %13, %scevgep123
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx, %found.conflict132
  br i1 %conflict.rdx133, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %26 = add nsw i64 %n.vec, -4
  %27 = lshr exact i64 %26, 2
  %28 = and i64 %27, 1
  %lcmp.mod348 = icmp eq i64 %28, 0
  br i1 %lcmp.mod348, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %29 = bitcast double* %9 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %29, align 8, !tbaa !1
  %30 = getelementptr double, double* %9, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %31, align 8, !tbaa !1
  %32 = bitcast double* %11 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %32, align 8, !tbaa !1
  %33 = getelementptr double, double* %11, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %34, align 8, !tbaa !1
  %35 = bitcast double* %13 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %35, align 8, !tbaa !1
  %36 = getelementptr double, double* %13, i64 2
  %37 = bitcast double* %36 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %37, align 8, !tbaa !1
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %38 = icmp eq i64 %27, 0
  br i1 %38, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %39 = getelementptr inbounds double, double* %9, i64 %index
  %40 = bitcast double* %39 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %40, align 8, !tbaa !1
  %41 = getelementptr double, double* %39, i64 2
  %42 = bitcast double* %41 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %42, align 8, !tbaa !1
  %43 = getelementptr inbounds double, double* %11, i64 %index
  %44 = bitcast double* %43 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %44, align 8, !tbaa !1
  %45 = getelementptr double, double* %43, i64 2
  %46 = bitcast double* %45 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %46, align 8, !tbaa !1
  %47 = getelementptr inbounds double, double* %13, i64 %index
  %48 = bitcast double* %47 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %48, align 8, !tbaa !1
  %49 = getelementptr double, double* %47, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %50, align 8, !tbaa !1
  %index.next = add i64 %index, 4
  %51 = getelementptr inbounds double, double* %9, i64 %index.next
  %52 = bitcast double* %51 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %52, align 8, !tbaa !1
  %53 = getelementptr double, double* %51, i64 2
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %54, align 8, !tbaa !1
  %55 = getelementptr inbounds double, double* %11, i64 %index.next
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %56, align 8, !tbaa !1
  %57 = getelementptr double, double* %55, i64 2
  %58 = bitcast double* %57 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %58, align 8, !tbaa !1
  %59 = getelementptr inbounds double, double* %13, i64 %index.next
  %60 = bitcast double* %59 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %60, align 8, !tbaa !1
  %61 = getelementptr double, double* %59, i64 2
  %62 = bitcast double* %61 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %62, align 8, !tbaa !1
  %index.next.1 = add i64 %index, 8
  %63 = icmp eq i64 %index.next.1, %n.vec
  br i1 %63, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %scalar.ph
  br label %._crit_edge.i.i.loopexit

._crit_edge.i.i.loopexit:                         ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %scalar.ph.preheader.split
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %middle.block, %0
  %64 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 88
  %65 = load i32, i32* %64, align 4, !tbaa !12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %_ZL17CalcForceForNodesR6Domain.exit.i, label %67

; <label>:67                                      ; preds = %._crit_edge.i.i
  %68 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 56
  %69 = load double, double* %68, align 8, !tbaa !33
  %70 = sext i32 %65 to i64
  %71 = shl nsw i64 %70, 3
  %72 = tail call noalias i8* @malloc(i64 %71) #2
  %73 = bitcast i8* %72 to double*
  %74 = tail call noalias i8* @malloc(i64 %71) #2
  %75 = bitcast i8* %74 to double*
  %76 = tail call noalias i8* @malloc(i64 %71) #2
  %77 = bitcast i8* %76 to double*
  %78 = tail call noalias i8* @malloc(i64 %71) #2
  %79 = bitcast i8* %78 to double*
  %domain.idx.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 39, i32 0, i32 0, i32 0
  %domain.idx.val.i.i.i = load double*, double** %domain.idx.i.i.i, align 8, !tbaa !9
  %domain.idx1.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 40, i32 0, i32 0, i32 0
  %domain.idx1.val.i.i.i = load double*, double** %domain.idx1.i.i.i, align 8, !tbaa !9
  %80 = icmp sgt i32 %65, 0
  br i1 %80, label %.lr.ph.i.i.i.i.preheader, label %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %67
  %81 = add i32 %65, -1
  %82 = zext i32 %81 to i64
  %83 = add nuw nsw i64 %82, 1
  %min.iters.check140 = icmp ult i64 %83, 2
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.preheader305, label %min.iters.checked141

.lr.ph.i.i.i.i.preheader305:                      ; preds = %middle.block138, %min.iters.checked141, %.lr.ph.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked141 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec143, %middle.block138 ]
  br label %.lr.ph.i.i.i.i

min.iters.checked141:                             ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec143 = and i64 %83, 8589934590
  %cmp.zero144 = icmp eq i64 %n.vec143, 0
  br i1 %cmp.zero144, label %.lr.ph.i.i.i.i.preheader305, label %vector.body137.preheader

vector.body137.preheader:                         ; preds = %min.iters.checked141
  %84 = add nsw i64 %n.vec143, -2
  %85 = lshr exact i64 %84, 1
  %86 = and i64 %85, 1
  %lcmp.mod343 = icmp eq i64 %86, 0
  br i1 %lcmp.mod343, label %vector.body137.prol, label %vector.body137.preheader.split

vector.body137.prol:                              ; preds = %vector.body137.preheader
  %87 = bitcast double* %domain.idx.val.i.i.i to <2 x double>*
  %wide.load.prol = load <2 x double>, <2 x double>* %87, align 8, !tbaa !1
  %88 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %wide.load.prol
  %89 = bitcast double* %domain.idx1.val.i.i.i to <2 x double>*
  %wide.load153.prol = load <2 x double>, <2 x double>* %89, align 8, !tbaa !1
  %90 = fsub <2 x double> %88, %wide.load153.prol
  %91 = bitcast i8* %76 to <2 x double>*
  store <2 x double> %90, <2 x double>* %91, align 8, !tbaa !1
  %92 = bitcast i8* %74 to <2 x double>*
  store <2 x double> %90, <2 x double>* %92, align 8, !tbaa !1
  %93 = bitcast i8* %72 to <2 x double>*
  store <2 x double> %90, <2 x double>* %93, align 8, !tbaa !1
  br label %vector.body137.preheader.split

vector.body137.preheader.split:                   ; preds = %vector.body137.prol, %vector.body137.preheader
  %index146.unr = phi i64 [ 0, %vector.body137.preheader ], [ 2, %vector.body137.prol ]
  %94 = icmp eq i64 %85, 0
  br i1 %94, label %middle.block138, label %vector.body137.preheader.split.split

vector.body137.preheader.split.split:             ; preds = %vector.body137.preheader.split
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.body137.preheader.split.split
  %index146 = phi i64 [ %index146.unr, %vector.body137.preheader.split.split ], [ %index.next147.1, %vector.body137 ]
  %95 = getelementptr inbounds double, double* %domain.idx.val.i.i.i, i64 %index146
  %96 = bitcast double* %95 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %96, align 8, !tbaa !1
  %97 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %wide.load
  %98 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i, i64 %index146
  %99 = bitcast double* %98 to <2 x double>*
  %wide.load153 = load <2 x double>, <2 x double>* %99, align 8, !tbaa !1
  %100 = fsub <2 x double> %97, %wide.load153
  %101 = getelementptr inbounds double, double* %77, i64 %index146
  %102 = bitcast double* %101 to <2 x double>*
  store <2 x double> %100, <2 x double>* %102, align 8, !tbaa !1
  %103 = getelementptr inbounds double, double* %75, i64 %index146
  %104 = bitcast double* %103 to <2 x double>*
  store <2 x double> %100, <2 x double>* %104, align 8, !tbaa !1
  %105 = getelementptr inbounds double, double* %73, i64 %index146
  %106 = bitcast double* %105 to <2 x double>*
  store <2 x double> %100, <2 x double>* %106, align 8, !tbaa !1
  %index.next147 = add i64 %index146, 2
  %107 = getelementptr inbounds double, double* %domain.idx.val.i.i.i, i64 %index.next147
  %108 = bitcast double* %107 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %108, align 8, !tbaa !1
  %109 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %wide.load.1
  %110 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i, i64 %index.next147
  %111 = bitcast double* %110 to <2 x double>*
  %wide.load153.1 = load <2 x double>, <2 x double>* %111, align 8, !tbaa !1
  %112 = fsub <2 x double> %109, %wide.load153.1
  %113 = getelementptr inbounds double, double* %77, i64 %index.next147
  %114 = bitcast double* %113 to <2 x double>*
  store <2 x double> %112, <2 x double>* %114, align 8, !tbaa !1
  %115 = getelementptr inbounds double, double* %75, i64 %index.next147
  %116 = bitcast double* %115 to <2 x double>*
  store <2 x double> %112, <2 x double>* %116, align 8, !tbaa !1
  %117 = getelementptr inbounds double, double* %73, i64 %index.next147
  %118 = bitcast double* %117 to <2 x double>*
  store <2 x double> %112, <2 x double>* %118, align 8, !tbaa !1
  %index.next147.1 = add i64 %index146, 4
  %119 = icmp eq i64 %index.next147.1, %n.vec143
  br i1 %119, label %middle.block138.unr-lcssa, label %vector.body137, !llvm.loop !34

middle.block138.unr-lcssa:                        ; preds = %vector.body137
  br label %middle.block138

middle.block138:                                  ; preds = %middle.block138.unr-lcssa, %vector.body137.preheader.split
  %cmp.n149 = icmp eq i64 %83, %n.vec143
  br i1 %cmp.n149, label %.lr.ph.i5.i.i.i, label %.lr.ph.i.i.i.i.preheader305

._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i: ; preds = %67
  %.pre.i.i = bitcast [8 x double]* %x_local.i.i.i.i to i8*
  %.pre8.i.i = bitcast [8 x double]* %y_local.i.i.i.i to i8*
  %.pre10.i.i = bitcast [8 x double]* %z_local.i.i.i.i to i8*
  br label %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader305
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader305 ]
  %120 = getelementptr inbounds double, double* %domain.idx.val.i.i.i, i64 %indvars.iv.i.i.i.i
  %121 = load double, double* %120, align 8, !tbaa !1
  %122 = fsub double -0.000000e+00, %121
  %123 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i, i64 %indvars.iv.i.i.i.i
  %124 = load double, double* %123, align 8, !tbaa !1
  %125 = fsub double %122, %124
  %126 = getelementptr inbounds double, double* %77, i64 %indvars.iv.i.i.i.i
  store double %125, double* %126, align 8, !tbaa !1
  %127 = getelementptr inbounds double, double* %75, i64 %indvars.iv.i.i.i.i
  store double %125, double* %127, align 8, !tbaa !1
  %128 = getelementptr inbounds double, double* %73, i64 %indvars.iv.i.i.i.i
  store double %125, double* %128, align 8, !tbaa !1
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %lftr.wideiv102 = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %exitcond103 = icmp eq i32 %lftr.wideiv102, %65
  br i1 %exitcond103, label %.lr.ph.i5.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !35

.lr.ph.i5.i.i.i.loopexit:                         ; preds = %.lr.ph.i.i.i.i
  br label %.lr.ph.i5.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %.lr.ph.i5.i.i.i.loopexit, %middle.block138
  %129 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 21, i32 0, i32 0, i32 0
  %130 = bitcast [3 x [8 x double]]* %B.i.i.i.i to i8*
  %131 = bitcast [8 x double]* %x_local.i.i.i.i to i8*
  %132 = bitcast [8 x double]* %y_local.i.i.i.i to i8*
  %133 = bitcast [8 x double]* %z_local.i.i.i.i to i8*
  %134 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 0
  %135 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 0
  %136 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 0
  %domain.idx.i.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 0, i32 0, i32 0, i32 0
  %domain.idx1.i.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 1, i32 0, i32 0, i32 0
  %domain.idx2.i.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 2, i32 0, i32 0, i32 0
  %137 = bitcast [8 x double]* %x_local.i.i.i.i to i64*
  %138 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 1
  %139 = bitcast double* %138 to i64*
  %140 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 2
  %141 = bitcast double* %140 to i64*
  %142 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 3
  %143 = bitcast double* %142 to i64*
  %144 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 4
  %145 = bitcast double* %144 to i64*
  %146 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 5
  %147 = bitcast double* %146 to i64*
  %148 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 6
  %149 = bitcast double* %148 to i64*
  %150 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 7
  %151 = bitcast double* %150 to i64*
  %152 = bitcast [8 x double]* %y_local.i.i.i.i to i64*
  %153 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 1
  %154 = bitcast double* %153 to i64*
  %155 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 2
  %156 = bitcast double* %155 to i64*
  %157 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 3
  %158 = bitcast double* %157 to i64*
  %159 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 4
  %160 = bitcast double* %159 to i64*
  %161 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 5
  %162 = bitcast double* %161 to i64*
  %163 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 6
  %164 = bitcast double* %163 to i64*
  %165 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 7
  %166 = bitcast double* %165 to i64*
  %167 = bitcast [8 x double]* %z_local.i.i.i.i to i64*
  %168 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 1
  %169 = bitcast double* %168 to i64*
  %170 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 2
  %171 = bitcast double* %170 to i64*
  %172 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 3
  %173 = bitcast double* %172 to i64*
  %174 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 4
  %175 = bitcast double* %174 to i64*
  %176 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 5
  %177 = bitcast double* %176 to i64*
  %178 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 6
  %179 = bitcast double* %178 to i64*
  %180 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 7
  %181 = bitcast double* %180 to i64*
  %182 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0
  %183 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 0
  %184 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 0
  %185 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 0
  %186 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 1
  %187 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 1
  %188 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 1
  %189 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 2
  %190 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 2
  %191 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 2
  %192 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 3
  %193 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 3
  %194 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 3
  %195 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 4
  %196 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 4
  %197 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 4
  %198 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 5
  %199 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 5
  %200 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 5
  %201 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 6
  %202 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 6
  %203 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 0, i64 7
  %204 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 1, i64 7
  %205 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B.i.i.i.i, i64 0, i64 2, i64 7
  %206 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 9, i32 0, i32 0, i32 0
  %207 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 10, i32 0, i32 0, i32 0
  %208 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 11, i32 0, i32 0, i32 0
  %209 = bitcast double* %192 to <2 x double>*
  %210 = bitcast double* %193 to <2 x double>*
  %211 = bitcast double* %194 to <2 x double>*
  %212 = bitcast double* %170 to <2 x double>*
  %213 = bitcast double* %163 to <2 x double>*
  %214 = bitcast double* %155 to <2 x double>*
  %215 = bitcast double* %140 to <2 x double>*
  %216 = bitcast double* %200 to <2 x double>*
  %217 = bitcast double* %189 to <2 x double>*
  %218 = bitcast double* %190 to <2 x double>*
  %219 = bitcast double* %191 to <2 x double>*
  %220 = bitcast double* %185 to <2 x double>*
  %221 = bitcast double* %201 to <2 x double>*
  %222 = bitcast double* %198 to <2 x double>*
  %223 = bitcast double* %199 to <2 x double>*
  br label %224

; <label>:224                                     ; preds = %224, %.lr.ph.i5.i.i.i
  %indvars.iv5.i.i.i.i = phi i64 [ 0, %.lr.ph.i5.i.i.i ], [ %indvars.iv.next6.i.i.i.i, %224 ]
  %225 = trunc i64 %indvars.iv5.i.i.i.i to i32
  %226 = shl nsw i32 %225, 3
  %227 = sext i32 %226 to i64
  %228 = load i32*, i32** %129, align 8, !tbaa !5
  %229 = getelementptr inbounds i32, i32* %228, i64 %227
  call void @llvm.lifetime.start(i64 192, i8* %130) #2
  call void @llvm.lifetime.start(i64 64, i8* %131) #2
  call void @llvm.lifetime.start(i64 64, i8* %132) #2
  call void @llvm.lifetime.start(i64 64, i8* %133) #2
  %domain.idx.val.i.i.i.i = load double*, double** %domain.idx.i.i.i.i, align 8, !tbaa !9
  %domain.idx1.val.i.i.i.i = load double*, double** %domain.idx1.i.i.i.i, align 8, !tbaa !9
  %domain.idx2.val.i.i.i.i = load double*, double** %domain.idx2.i.i.i.i, align 8, !tbaa !9
  %230 = load i32, i32* %229, align 4, !tbaa !12
  %231 = getelementptr inbounds i32, i32* %229, i64 1
  %232 = load i32, i32* %231, align 4, !tbaa !12
  %233 = getelementptr inbounds i32, i32* %229, i64 2
  %234 = load i32, i32* %233, align 4, !tbaa !12
  %235 = getelementptr inbounds i32, i32* %229, i64 3
  %236 = load i32, i32* %235, align 4, !tbaa !12
  %237 = getelementptr inbounds i32, i32* %229, i64 4
  %238 = load i32, i32* %237, align 4, !tbaa !12
  %239 = getelementptr inbounds i32, i32* %229, i64 5
  %240 = load i32, i32* %239, align 4, !tbaa !12
  %241 = getelementptr inbounds i32, i32* %229, i64 6
  %242 = load i32, i32* %241, align 4, !tbaa !12
  %243 = getelementptr inbounds i32, i32* %229, i64 7
  %244 = load i32, i32* %243, align 4, !tbaa !12
  %245 = sext i32 %230 to i64
  %246 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %245
  %247 = bitcast double* %246 to i64*
  %248 = load i64, i64* %247, align 8, !tbaa !1
  store i64 %248, i64* %137, align 16, !tbaa !1
  %249 = sext i32 %232 to i64
  %250 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %249
  %251 = bitcast double* %250 to i64*
  %252 = load i64, i64* %251, align 8, !tbaa !1
  store i64 %252, i64* %139, align 8, !tbaa !1
  %253 = sext i32 %234 to i64
  %254 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %253
  %255 = bitcast double* %254 to i64*
  %256 = load i64, i64* %255, align 8, !tbaa !1
  store i64 %256, i64* %141, align 16, !tbaa !1
  %257 = sext i32 %236 to i64
  %258 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %257
  %259 = bitcast double* %258 to i64*
  %260 = load i64, i64* %259, align 8, !tbaa !1
  store i64 %260, i64* %143, align 8, !tbaa !1
  %261 = sext i32 %238 to i64
  %262 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %261
  %263 = bitcast double* %262 to i64*
  %264 = load i64, i64* %263, align 8, !tbaa !1
  store i64 %264, i64* %145, align 16, !tbaa !1
  %265 = sext i32 %240 to i64
  %266 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %265
  %267 = bitcast double* %266 to i64*
  %268 = load i64, i64* %267, align 8, !tbaa !1
  store i64 %268, i64* %147, align 8, !tbaa !1
  %269 = sext i32 %242 to i64
  %270 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %269
  %271 = bitcast double* %270 to i64*
  %272 = load i64, i64* %271, align 8, !tbaa !1
  store i64 %272, i64* %149, align 16, !tbaa !1
  %273 = sext i32 %244 to i64
  %274 = getelementptr inbounds double, double* %domain.idx.val.i.i.i.i, i64 %273
  %275 = bitcast double* %274 to i64*
  %276 = load i64, i64* %275, align 8, !tbaa !1
  store i64 %276, i64* %151, align 8, !tbaa !1
  %277 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %245
  %278 = bitcast double* %277 to i64*
  %279 = load i64, i64* %278, align 8, !tbaa !1
  store i64 %279, i64* %152, align 16, !tbaa !1
  %280 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %249
  %281 = bitcast double* %280 to i64*
  %282 = load i64, i64* %281, align 8, !tbaa !1
  store i64 %282, i64* %154, align 8, !tbaa !1
  %283 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %253
  %284 = bitcast double* %283 to i64*
  %285 = load i64, i64* %284, align 8, !tbaa !1
  store i64 %285, i64* %156, align 16, !tbaa !1
  %286 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %257
  %287 = bitcast double* %286 to i64*
  %288 = load i64, i64* %287, align 8, !tbaa !1
  store i64 %288, i64* %158, align 8, !tbaa !1
  %289 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %261
  %290 = bitcast double* %289 to i64*
  %291 = load i64, i64* %290, align 8, !tbaa !1
  store i64 %291, i64* %160, align 16, !tbaa !1
  %292 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %265
  %293 = bitcast double* %292 to i64*
  %294 = load i64, i64* %293, align 8, !tbaa !1
  store i64 %294, i64* %162, align 8, !tbaa !1
  %295 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %269
  %296 = bitcast double* %295 to i64*
  %297 = load i64, i64* %296, align 8, !tbaa !1
  store i64 %297, i64* %164, align 16, !tbaa !1
  %298 = getelementptr inbounds double, double* %domain.idx1.val.i.i.i.i, i64 %273
  %299 = bitcast double* %298 to i64*
  %300 = load i64, i64* %299, align 8, !tbaa !1
  store i64 %300, i64* %166, align 8, !tbaa !1
  %301 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %245
  %302 = bitcast double* %301 to i64*
  %303 = load i64, i64* %302, align 8, !tbaa !1
  store i64 %303, i64* %167, align 16, !tbaa !1
  %304 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %249
  %305 = bitcast double* %304 to i64*
  %306 = load i64, i64* %305, align 8, !tbaa !1
  store i64 %306, i64* %169, align 8, !tbaa !1
  %307 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %253
  %308 = bitcast double* %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !1
  store i64 %309, i64* %171, align 16, !tbaa !1
  %310 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %257
  %311 = bitcast double* %310 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !1
  store i64 %312, i64* %173, align 8, !tbaa !1
  %313 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %261
  %314 = bitcast double* %313 to i64*
  %315 = load i64, i64* %314, align 8, !tbaa !1
  store i64 %315, i64* %175, align 16, !tbaa !1
  %316 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %265
  %317 = bitcast double* %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !1
  store i64 %318, i64* %177, align 8, !tbaa !1
  %319 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %269
  %320 = bitcast double* %319 to i64*
  %321 = load i64, i64* %320, align 8, !tbaa !1
  store i64 %321, i64* %179, align 16, !tbaa !1
  %322 = getelementptr inbounds double, double* %domain.idx2.val.i.i.i.i, i64 %273
  %323 = bitcast double* %322 to i64*
  %324 = load i64, i64* %323, align 8, !tbaa !1
  store i64 %324, i64* %181, align 8, !tbaa !1
  %325 = getelementptr inbounds double, double* %79, i64 %indvars.iv5.i.i.i.i
  call fastcc void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %134, double* %135, double* %136, [8 x double]* %182, double* %325) #2
  call void @llvm.memset.p0i8.i64(i8* %130, i8 0, i64 192, i32 16, i1 false) #2
  %326 = load double, double* %134, align 16, !tbaa !1
  %327 = bitcast i64 %279 to double
  %328 = bitcast i64 %303 to double
  %329 = load double, double* %138, align 8, !tbaa !1
  %330 = bitcast i64 %282 to double
  %331 = bitcast i64 %256 to double
  %332 = bitcast i64 %285 to double
  %333 = bitcast i64 %260 to double
  %334 = bitcast i64 %288 to double
  %335 = bitcast i64 %312 to double
  %336 = bitcast i64 %264 to double
  %337 = bitcast i64 %268 to double
  %338 = insertelement <2 x double> undef, double %332, i32 0
  %339 = insertelement <2 x double> %338, double %336, i32 1
  %340 = insertelement <2 x double> undef, double %334, i32 0
  %341 = insertelement <2 x double> %340, double %337, i32 1
  %342 = fadd <2 x double> %339, %341
  %343 = insertelement <2 x double> undef, double %330, i32 0
  %344 = insertelement <2 x double> %343, double %329, i32 1
  %345 = fsub <2 x double> %342, %344
  %346 = insertelement <2 x double> undef, double %327, i32 0
  %347 = insertelement <2 x double> %346, double %326, i32 1
  %348 = fsub <2 x double> %345, %347
  %349 = fmul <2 x double> %348, <double 5.000000e-01, double 5.000000e-01>
  %350 = insertelement <2 x double> %338, double %337, i32 1
  %351 = fadd <2 x double> %344, %350
  %352 = insertelement <2 x double> %340, double %336, i32 1
  %353 = fsub <2 x double> %351, %352
  %354 = fsub <2 x double> %353, %347
  %355 = fmul <2 x double> %354, <double 5.000000e-01, double 5.000000e-01>
  %356 = bitcast i64 %291 to double
  %357 = bitcast i64 %294 to double
  %358 = insertelement <2 x double> undef, double %331, i32 0
  %359 = insertelement <2 x double> %358, double %357, i32 1
  %360 = insertelement <2 x double> undef, double %329, i32 0
  %361 = insertelement <2 x double> %360, double %330, i32 1
  %362 = fadd <2 x double> %359, %361
  %363 = insertelement <2 x double> undef, double %333, i32 0
  %364 = insertelement <2 x double> %363, double %356, i32 1
  %365 = fsub <2 x double> %362, %364
  %366 = insertelement <2 x double> undef, double %326, i32 0
  %367 = insertelement <2 x double> %366, double %327, i32 1
  %368 = fsub <2 x double> %365, %367
  %369 = fmul <2 x double> %368, <double 5.000000e-01, double 5.000000e-01>
  %370 = insertelement <2 x i64> undef, i64 %306, i32 0
  %371 = insertelement <2 x i64> %370, i64 %315, i32 1
  %372 = bitcast <2 x i64> %371 to <2 x double>
  %373 = insertelement <2 x i64> undef, i64 %309, i32 0
  %374 = insertelement <2 x i64> %373, i64 %318, i32 1
  %375 = bitcast <2 x i64> %374 to <2 x double>
  %376 = bitcast i64 %309 to double
  %377 = insertelement <2 x double> undef, double %376, i32 0
  %378 = bitcast i64 %306 to double
  %379 = insertelement <2 x double> %377, double %378, i32 1
  %380 = insertelement <2 x double> undef, double %335, i32 0
  %381 = bitcast i64 %318 to double
  %382 = insertelement <2 x double> %380, double %381, i32 1
  %383 = fadd <2 x double> %379, %382
  %384 = fsub <2 x double> %383, %372
  %385 = insertelement <2 x double> undef, double %328, i32 0
  %386 = insertelement <2 x double> %385, double %328, i32 1
  %387 = fsub <2 x double> %384, %386
  %388 = fmul <2 x double> %387, <double 5.000000e-01, double 5.000000e-01>
  %389 = insertelement <2 x double> %358, double %356, i32 1
  %390 = insertelement <2 x double> %363, double %357, i32 1
  %391 = fadd <2 x double> %389, %390
  %392 = fsub <2 x double> %391, %361
  %393 = fsub <2 x double> %392, %367
  %394 = fmul <2 x double> %393, <double 5.000000e-01, double 5.000000e-01>
  %395 = fadd <2 x double> %372, %375
  %396 = insertelement <2 x double> %380, double %378, i32 1
  %397 = fsub <2 x double> %395, %396
  %398 = fsub <2 x double> %397, %386
  %399 = fmul <2 x double> %398, <double 5.000000e-01, double 5.000000e-01>
  %400 = shufflevector <2 x double> %349, <2 x double> %369, <2 x i32> <i32 0, i32 3>
  %401 = fmul <2 x double> %400, %399
  %402 = shufflevector <2 x double> %355, <2 x double> %394, <2 x i32> <i32 0, i32 3>
  %403 = fmul <2 x double> %402, %388
  %404 = fsub <2 x double> %401, %403
  %405 = fmul <2 x double> %404, <double 2.500000e-01, double 2.500000e-01>
  %406 = fadd <2 x double> zeroinitializer, %405
  %407 = extractelement <2 x double> %406, i32 0
  store double %407, double* %189, align 16, !tbaa !1
  %408 = shufflevector <2 x double> %369, <2 x double> %349, <2 x i32> <i32 0, i32 3>
  %409 = fmul <2 x double> %388, %408
  %410 = shufflevector <2 x double> %394, <2 x double> %355, <2 x i32> <i32 0, i32 3>
  %411 = fmul <2 x double> %399, %410
  %412 = fsub <2 x double> %409, %411
  %413 = fmul <2 x double> %412, <double 2.500000e-01, double 2.500000e-01>
  %414 = fadd <2 x double> zeroinitializer, %413
  %415 = extractelement <2 x double> %414, i32 0
  store double %415, double* %190, align 16, !tbaa !1
  %416 = fmul <2 x double> %355, %394
  %417 = fmul <2 x double> %349, %369
  %418 = fsub <2 x double> %416, %417
  %419 = fmul <2 x double> %418, <double 2.500000e-01, double 2.500000e-01>
  %420 = fadd <2 x double> zeroinitializer, %419
  %421 = extractelement <2 x double> %420, i32 0
  store double %421, double* %191, align 16, !tbaa !1
  %422 = extractelement <2 x double> %405, i32 1
  %423 = fadd double %407, %422
  store double %423, double* %183, align 16, !tbaa !1
  store <2 x double> %406, <2 x double>* %209, align 8, !tbaa !1
  %424 = load double, double* %198, align 8, !tbaa !1
  %425 = fadd double %424, %422
  %426 = extractelement <2 x double> %413, i32 1
  %427 = fadd double %415, %426
  store double %427, double* %184, align 16, !tbaa !1
  store <2 x double> %414, <2 x double>* %210, align 8, !tbaa !1
  %428 = load double, double* %199, align 8, !tbaa !1
  %429 = fadd double %426, %428
  %430 = extractelement <2 x double> %419, i32 1
  %431 = fadd double %421, %430
  store double %431, double* %185, align 16, !tbaa !1
  store <2 x double> %420, <2 x double>* %211, align 8, !tbaa !1
  %432 = load double, double* %138, align 8, !tbaa !1
  %433 = load double, double* %148, align 16, !tbaa !1
  %434 = load double, double* %178, align 16, !tbaa !1
  %435 = load double, double* %180, align 8, !tbaa !1
  %436 = load <2 x double>, <2 x double>* %212, align 16, !tbaa !1
  %437 = insertelement <2 x double> undef, double %434, i32 0
  %438 = insertelement <2 x double> %437, double %435, i32 1
  %439 = fadd <2 x double> %438, %436
  %440 = insertelement <2 x double> undef, double %381, i32 0
  %441 = insertelement <2 x double> %440, double %434, i32 1
  %442 = fsub <2 x double> %439, %441
  %443 = insertelement <2 x double> undef, double %378, i32 0
  %444 = shufflevector <2 x double> %443, <2 x double> %436, <2 x i32> <i32 0, i32 2>
  %445 = fsub <2 x double> %442, %444
  %446 = fmul <2 x double> %445, <double 5.000000e-01, double 5.000000e-01>
  %447 = insertelement <2 x double> %440, double %435, i32 1
  %448 = insertelement <2 x double> %437, double %434, i32 1
  %449 = fadd <2 x double> %447, %448
  %450 = fsub <2 x double> %449, %436
  %451 = fsub <2 x double> %450, %444
  %452 = fmul <2 x double> %451, <double 5.000000e-01, double 5.000000e-01>
  %453 = load <2 x double>, <2 x double>* %213, align 16, !tbaa !1
  %454 = load <2 x double>, <2 x double>* %214, align 16, !tbaa !1
  %455 = insertelement <2 x double> undef, double %357, i32 0
  %456 = extractelement <2 x double> %453, i32 1
  %457 = shufflevector <2 x double> %455, <2 x double> %453, <2 x i32> <i32 0, i32 3>
  %458 = shufflevector <2 x double> %453, <2 x double> undef, <2 x i32> zeroinitializer
  %459 = fadd <2 x double> %457, %458
  %460 = fsub <2 x double> %459, %454
  %461 = shufflevector <2 x double> %343, <2 x double> %454, <2 x i32> <i32 0, i32 2>
  %462 = fsub <2 x double> %460, %461
  %463 = fmul <2 x double> %462, <double 5.000000e-01, double 5.000000e-01>
  %464 = load double, double* %150, align 8, !tbaa !1
  %465 = load <2 x double>, <2 x double>* %215, align 16, !tbaa !1
  %466 = insertelement <2 x double> undef, double %433, i32 0
  %467 = insertelement <2 x double> %466, double %464, i32 1
  %468 = fadd <2 x double> %467, %465
  %469 = insertelement <2 x double> undef, double %337, i32 0
  %470 = insertelement <2 x double> %469, double %433, i32 1
  %471 = fsub <2 x double> %468, %470
  %472 = insertelement <2 x double> undef, double %432, i32 0
  %473 = shufflevector <2 x double> %472, <2 x double> %465, <2 x i32> <i32 0, i32 2>
  %474 = fsub <2 x double> %471, %473
  %475 = fmul <2 x double> %474, <double 5.000000e-01, double 5.000000e-01>
  %476 = fadd <2 x double> %453, %454
  %477 = shufflevector <2 x double> %455, <2 x double> %453, <2 x i32> <i32 0, i32 2>
  %478 = fsub <2 x double> %476, %477
  %479 = fsub <2 x double> %478, %461
  %480 = fmul <2 x double> %479, <double 5.000000e-01, double 5.000000e-01>
  %481 = insertelement <2 x double> %469, double %464, i32 1
  %482 = insertelement <2 x double> %466, double %433, i32 1
  %483 = fadd <2 x double> %481, %482
  %484 = fsub <2 x double> %483, %465
  %485 = fsub <2 x double> %484, %473
  %486 = fmul <2 x double> %485, <double 5.000000e-01, double 5.000000e-01>
  %487 = fmul <2 x double> %480, %452
  %488 = fmul <2 x double> %463, %446
  %489 = fsub <2 x double> %487, %488
  %490 = fmul <2 x double> %489, <double 2.500000e-01, double 2.500000e-01>
  %491 = extractelement <2 x double> %490, i32 0
  %492 = fadd double %423, %491
  store double %492, double* %186, align 8, !tbaa !1
  %493 = fadd double %425, %491
  store double %493, double* %198, align 8, !tbaa !1
  %494 = load double, double* %201, align 16, !tbaa !1
  %495 = fmul <2 x double> %486, %446
  %496 = fmul <2 x double> %475, %452
  %497 = fsub <2 x double> %495, %496
  %498 = fmul <2 x double> %497, <double 2.500000e-01, double 2.500000e-01>
  %499 = extractelement <2 x double> %498, i32 0
  %500 = fadd double %427, %499
  store double %500, double* %187, align 8, !tbaa !1
  %501 = fadd double %429, %499
  store double %501, double* %199, align 8, !tbaa !1
  %502 = load double, double* %202, align 16, !tbaa !1
  %503 = fadd double %499, %502
  %504 = load <2 x double>, <2 x double>* %216, align 8, !tbaa !1
  %505 = load double, double* %144, align 16, !tbaa !1
  %506 = load double, double* %159, align 16, !tbaa !1
  %507 = load double, double* %134, align 16, !tbaa !1
  %508 = load double, double* %135, align 16, !tbaa !1
  %509 = fadd double %505, %507
  %510 = fsub double %509, %464
  %511 = extractelement <2 x double> %465, i32 1
  %512 = fsub double %510, %511
  %513 = fmul double %512, 5.000000e-01
  %514 = fadd double %506, %508
  %515 = fsub double %514, %456
  %516 = extractelement <2 x double> %454, i32 1
  %517 = fsub double %515, %516
  %518 = fmul double %517, 5.000000e-01
  %519 = fadd double %464, %505
  %520 = fsub double %519, %507
  %521 = fsub double %520, %511
  %522 = fmul double %521, 5.000000e-01
  %523 = fadd double %456, %506
  %524 = fsub double %523, %508
  %525 = fsub double %524, %516
  %526 = fmul double %525, 5.000000e-01
  %527 = insertelement <2 x double> undef, double %513, i32 0
  %528 = shufflevector <2 x double> %527, <2 x double> %475, <2 x i32> <i32 0, i32 2>
  %529 = insertelement <2 x double> undef, double %526, i32 0
  %530 = shufflevector <2 x double> %529, <2 x double> %463, <2 x i32> <i32 0, i32 2>
  %531 = fmul <2 x double> %528, %530
  %532 = insertelement <2 x double> undef, double %522, i32 0
  %533 = shufflevector <2 x double> %532, <2 x double> %486, <2 x i32> <i32 0, i32 2>
  %534 = insertelement <2 x double> undef, double %518, i32 0
  %535 = shufflevector <2 x double> %534, <2 x double> %480, <2 x i32> <i32 0, i32 2>
  %536 = fmul <2 x double> %533, %535
  %537 = fsub <2 x double> %531, %536
  %538 = fmul <2 x double> %537, <double 2.500000e-01, double 2.500000e-01>
  %539 = extractelement <2 x double> %538, i32 1
  %540 = shufflevector <2 x double> %419, <2 x double> %538, <2 x i32> <i32 1, i32 3>
  %541 = fadd <2 x double> %540, %504
  %542 = extractelement <2 x double> %463, i32 1
  %543 = extractelement <2 x double> %475, i32 1
  %544 = fmul double %543, %542
  %545 = extractelement <2 x double> %480, i32 1
  %546 = extractelement <2 x double> %486, i32 1
  %547 = fmul double %546, %545
  %548 = fsub double %544, %547
  %549 = fmul double %548, 2.500000e-01
  %550 = extractelement <2 x double> %490, i32 1
  %551 = load double, double* %203, align 8, !tbaa !1
  %552 = fadd double %551, %550
  %553 = load <2 x double>, <2 x double>* %217, align 16, !tbaa !1
  %554 = fadd <2 x double> %553, %490
  %555 = extractelement <2 x double> %498, i32 1
  %556 = fadd double %503, %555
  store double %556, double* %202, align 16, !tbaa !1
  %557 = load double, double* %204, align 8, !tbaa !1
  %558 = fadd double %555, %557
  %559 = load <2 x double>, <2 x double>* %218, align 16, !tbaa !1
  %560 = fadd <2 x double> %498, %559
  %561 = insertelement <2 x double> undef, double %539, i32 0
  %562 = insertelement <2 x double> %561, double %549, i32 1
  %563 = fadd <2 x double> %541, %562
  store <2 x double> %563, <2 x double>* %216, align 8, !tbaa !1
  %564 = load double, double* %205, align 8, !tbaa !1
  %565 = fadd double %549, %564
  %566 = load <2 x double>, <2 x double>* %219, align 16, !tbaa !1
  %567 = fadd <2 x double> %562, %566
  %568 = load double, double* %174, align 16, !tbaa !1
  %569 = load double, double* %136, align 16, !tbaa !1
  %570 = fadd double %568, %569
  %571 = fsub double %570, %435
  %572 = extractelement <2 x double> %436, i32 1
  %573 = fsub double %571, %572
  %574 = fmul double %573, 5.000000e-01
  %575 = fadd double %435, %568
  %576 = fsub double %575, %569
  %577 = fsub double %576, %572
  %578 = fmul double %577, 5.000000e-01
  %579 = fmul double %518, %578
  %580 = fmul double %526, %574
  %581 = fsub double %579, %580
  %582 = fmul double %581, 2.500000e-01
  %583 = fmul double %522, %574
  %584 = fmul double %513, %578
  %585 = fsub double %583, %584
  %586 = fmul double %585, 2.500000e-01
  %587 = shufflevector <2 x double> %490, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %588 = insertelement <2 x double> %587, double %582, i32 1
  %589 = fadd <2 x double> %554, %588
  store <2 x double> %589, <2 x double>* %217, align 16, !tbaa !1
  %590 = insertelement <2 x double> undef, double %494, i32 0
  %591 = insertelement <2 x double> %590, double %552, i32 1
  %592 = insertelement <2 x double> undef, double %491, i32 0
  %593 = insertelement <2 x double> %592, double %582, i32 1
  %594 = fadd <2 x double> %591, %593
  %595 = load double, double* %195, align 16, !tbaa !1
  %596 = fadd double %595, %582
  %597 = load double, double* %183, align 16, !tbaa !1
  %598 = fadd double %597, %582
  store double %598, double* %183, align 16, !tbaa !1
  %599 = insertelement <2 x double> undef, double %555, i32 0
  %600 = insertelement <2 x double> %599, double %586, i32 1
  %601 = fadd <2 x double> %560, %600
  store <2 x double> %601, <2 x double>* %218, align 16, !tbaa !1
  %602 = fadd double %558, %586
  %603 = load double, double* %196, align 16, !tbaa !1
  %604 = fadd double %603, %586
  %605 = load double, double* %184, align 16, !tbaa !1
  %606 = fadd double %586, %605
  store double %606, double* %184, align 16, !tbaa !1
  %607 = extractelement <2 x double> %538, i32 0
  %608 = insertelement <2 x double> undef, double %549, i32 0
  %609 = shufflevector <2 x double> %608, <2 x double> %538, <2 x i32> <i32 0, i32 2>
  %610 = fadd <2 x double> %567, %609
  store <2 x double> %610, <2 x double>* %219, align 16, !tbaa !1
  %611 = fadd double %565, %607
  %612 = load double, double* %197, align 16, !tbaa !1
  %613 = fadd double %607, %612
  %614 = load double, double* %185, align 16, !tbaa !1
  %615 = insertelement <2 x double> undef, double %614, i32 0
  %616 = insertelement <2 x double> %615, double %431, i32 1
  %617 = fadd <2 x double> %538, %616
  store <2 x double> %617, <2 x double>* %220, align 16, !tbaa !1
  %618 = load double, double* %150, align 8, !tbaa !1
  %619 = load double, double* %165, align 8, !tbaa !1
  %620 = load double, double* %180, align 8, !tbaa !1
  %621 = load double, double* %148, align 16, !tbaa !1
  %622 = load double, double* %163, align 16, !tbaa !1
  %623 = load double, double* %178, align 16, !tbaa !1
  %624 = load double, double* %146, align 8, !tbaa !1
  %625 = load double, double* %161, align 8, !tbaa !1
  %626 = load double, double* %176, align 8, !tbaa !1
  %627 = fadd double %621, %624
  %628 = fsub double %627, %618
  %629 = fsub double %628, %505
  %630 = fmul double %629, 5.000000e-01
  %631 = fadd double %622, %625
  %632 = fsub double %631, %619
  %633 = fsub double %632, %506
  %634 = fmul double %633, 5.000000e-01
  %635 = fadd double %623, %626
  %636 = fsub double %635, %620
  %637 = fsub double %636, %568
  %638 = fmul double %637, 5.000000e-01
  %639 = fadd double %618, %621
  %640 = fsub double %639, %624
  %641 = fsub double %640, %505
  %642 = fmul double %641, 5.000000e-01
  %643 = fadd double %619, %622
  %644 = fsub double %643, %625
  %645 = fsub double %644, %506
  %646 = fmul double %645, 5.000000e-01
  %647 = fadd double %620, %623
  %648 = fsub double %647, %626
  %649 = fsub double %648, %568
  %650 = fmul double %649, 5.000000e-01
  %651 = fmul double %634, %650
  %652 = fmul double %646, %638
  %653 = fsub double %651, %652
  %654 = fmul double %653, 2.500000e-01
  %655 = fmul double %642, %638
  %656 = fmul double %630, %650
  %657 = fsub double %655, %656
  %658 = fmul double %657, 2.500000e-01
  %659 = fmul double %630, %646
  %660 = fmul double %642, %634
  %661 = fsub double %659, %660
  %662 = fmul double %661, 2.500000e-01
  %663 = fadd double %596, %654
  store double %663, double* %195, align 16, !tbaa !1
  %664 = insertelement <2 x double> %587, double %654, i32 1
  %665 = fadd <2 x double> %594, %664
  store <2 x double> %665, <2 x double>* %221, align 16, !tbaa !1
  %666 = load <2 x double>, <2 x double>* %222, align 8, !tbaa !1
  %667 = insertelement <2 x double> undef, double %654, i32 0
  %668 = insertelement <2 x double> %667, double %654, i32 1
  %669 = fadd <2 x double> %666, %668
  store <2 x double> %669, <2 x double>* %222, align 8, !tbaa !1
  %670 = fadd double %604, %658
  store double %670, double* %196, align 16, !tbaa !1
  %671 = fadd double %602, %658
  store double %671, double* %204, align 8, !tbaa !1
  %672 = load <2 x double>, <2 x double>* %223, align 8, !tbaa !1
  %673 = insertelement <2 x double> undef, double %658, i32 0
  %674 = insertelement <2 x double> %673, double %658, i32 1
  %675 = fadd <2 x double> %674, %672
  store <2 x double> %675, <2 x double>* %223, align 8, !tbaa !1
  %676 = fadd double %613, %662
  store double %676, double* %197, align 16, !tbaa !1
  %677 = fadd double %611, %662
  store double %677, double* %205, align 8, !tbaa !1
  %678 = load <2 x double>, <2 x double>* %216, align 8, !tbaa !1
  %679 = insertelement <2 x double> undef, double %662, i32 0
  %680 = insertelement <2 x double> %679, double %662, i32 1
  %681 = fadd <2 x double> %680, %678
  store <2 x double> %681, <2 x double>* %216, align 8, !tbaa !1
  %682 = getelementptr inbounds double, double* %77, i64 %indvars.iv5.i.i.i.i
  %683 = load double, double* %682, align 8, !tbaa !1
  %684 = getelementptr inbounds double, double* %75, i64 %indvars.iv5.i.i.i.i
  %685 = load double, double* %684, align 8, !tbaa !1
  %686 = getelementptr inbounds double, double* %73, i64 %indvars.iv5.i.i.i.i
  %687 = load double, double* %686, align 8, !tbaa !1
  %688 = fmul double %598, %687
  %689 = fmul double %606, %685
  %690 = extractelement <2 x double> %617, i32 0
  %691 = fmul double %690, %683
  %692 = load double, double* %186, align 8, !tbaa !1
  %693 = fmul double %687, %692
  %694 = load double, double* %187, align 8, !tbaa !1
  %695 = fmul double %685, %694
  %696 = bitcast <2 x double> %617 to i128
  %697 = lshr i128 %696, 64
  %698 = trunc i128 %697 to i64
  %699 = bitcast i64 %698 to double
  %700 = fmul double %683, %699
  %701 = load double, double* %189, align 16, !tbaa !1
  %702 = fmul double %687, %701
  %703 = load double, double* %190, align 16, !tbaa !1
  %704 = fmul double %685, %703
  %705 = load double, double* %191, align 16, !tbaa !1
  %706 = fmul double %683, %705
  %707 = load double, double* %192, align 8, !tbaa !1
  %708 = fmul double %687, %707
  %709 = load double, double* %193, align 8, !tbaa !1
  %710 = fmul double %685, %709
  %711 = load double, double* %194, align 8, !tbaa !1
  %712 = fmul double %683, %711
  %713 = fmul double %663, %687
  %714 = fmul double %670, %685
  %715 = fmul double %676, %683
  %716 = extractelement <2 x double> %669, i32 0
  %717 = fmul double %716, %687
  %718 = extractelement <2 x double> %675, i32 0
  %719 = fmul double %718, %685
  %720 = extractelement <2 x double> %681, i32 0
  %721 = fmul double %720, %683
  %722 = extractelement <2 x double> %669, i32 1
  %723 = fmul double %722, %687
  %724 = extractelement <2 x double> %675, i32 1
  %725 = fmul double %724, %685
  %726 = extractelement <2 x double> %681, i32 1
  %727 = fmul double %726, %683
  %728 = extractelement <2 x double> %665, i32 1
  %729 = fmul double %728, %687
  %730 = fmul double %671, %685
  %731 = fmul double %677, %683
  %732 = load double*, double** %206, align 8
  %733 = load double*, double** %207, align 8
  %734 = load double*, double** %208, align 8
  %735 = load i32, i32* %229, align 4, !tbaa !12
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds double, double* %732, i64 %736
  %738 = load double, double* %737, align 8, !tbaa !1
  %739 = fsub double %738, %688
  store double %739, double* %737, align 8, !tbaa !1
  %740 = getelementptr inbounds double, double* %733, i64 %736
  %741 = load double, double* %740, align 8, !tbaa !1
  %742 = fsub double %741, %689
  store double %742, double* %740, align 8, !tbaa !1
  %743 = getelementptr inbounds double, double* %734, i64 %736
  %744 = load double, double* %743, align 8, !tbaa !1
  %745 = fsub double %744, %691
  store double %745, double* %743, align 8, !tbaa !1
  %746 = load i32, i32* %231, align 4, !tbaa !12
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds double, double* %732, i64 %747
  %749 = load double, double* %748, align 8, !tbaa !1
  %750 = fsub double %749, %693
  store double %750, double* %748, align 8, !tbaa !1
  %751 = getelementptr inbounds double, double* %733, i64 %747
  %752 = load double, double* %751, align 8, !tbaa !1
  %753 = fsub double %752, %695
  store double %753, double* %751, align 8, !tbaa !1
  %754 = getelementptr inbounds double, double* %734, i64 %747
  %755 = load double, double* %754, align 8, !tbaa !1
  %756 = fsub double %755, %700
  store double %756, double* %754, align 8, !tbaa !1
  %757 = load i32, i32* %233, align 4, !tbaa !12
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds double, double* %732, i64 %758
  %760 = load double, double* %759, align 8, !tbaa !1
  %761 = fsub double %760, %702
  store double %761, double* %759, align 8, !tbaa !1
  %762 = getelementptr inbounds double, double* %733, i64 %758
  %763 = load double, double* %762, align 8, !tbaa !1
  %764 = fsub double %763, %704
  store double %764, double* %762, align 8, !tbaa !1
  %765 = getelementptr inbounds double, double* %734, i64 %758
  %766 = load double, double* %765, align 8, !tbaa !1
  %767 = fsub double %766, %706
  store double %767, double* %765, align 8, !tbaa !1
  %768 = load i32, i32* %235, align 4, !tbaa !12
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds double, double* %732, i64 %769
  %771 = load double, double* %770, align 8, !tbaa !1
  %772 = fsub double %771, %708
  store double %772, double* %770, align 8, !tbaa !1
  %773 = getelementptr inbounds double, double* %733, i64 %769
  %774 = load double, double* %773, align 8, !tbaa !1
  %775 = fsub double %774, %710
  store double %775, double* %773, align 8, !tbaa !1
  %776 = getelementptr inbounds double, double* %734, i64 %769
  %777 = load double, double* %776, align 8, !tbaa !1
  %778 = fsub double %777, %712
  store double %778, double* %776, align 8, !tbaa !1
  %779 = load i32, i32* %237, align 4, !tbaa !12
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds double, double* %732, i64 %780
  %782 = load double, double* %781, align 8, !tbaa !1
  %783 = fsub double %782, %713
  store double %783, double* %781, align 8, !tbaa !1
  %784 = getelementptr inbounds double, double* %733, i64 %780
  %785 = load double, double* %784, align 8, !tbaa !1
  %786 = fsub double %785, %714
  store double %786, double* %784, align 8, !tbaa !1
  %787 = getelementptr inbounds double, double* %734, i64 %780
  %788 = load double, double* %787, align 8, !tbaa !1
  %789 = fsub double %788, %715
  store double %789, double* %787, align 8, !tbaa !1
  %790 = load i32, i32* %239, align 4, !tbaa !12
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds double, double* %732, i64 %791
  %793 = load double, double* %792, align 8, !tbaa !1
  %794 = fsub double %793, %717
  store double %794, double* %792, align 8, !tbaa !1
  %795 = getelementptr inbounds double, double* %733, i64 %791
  %796 = load double, double* %795, align 8, !tbaa !1
  %797 = fsub double %796, %719
  store double %797, double* %795, align 8, !tbaa !1
  %798 = getelementptr inbounds double, double* %734, i64 %791
  %799 = load double, double* %798, align 8, !tbaa !1
  %800 = fsub double %799, %721
  store double %800, double* %798, align 8, !tbaa !1
  %801 = load i32, i32* %241, align 4, !tbaa !12
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds double, double* %732, i64 %802
  %804 = load double, double* %803, align 8, !tbaa !1
  %805 = fsub double %804, %723
  store double %805, double* %803, align 8, !tbaa !1
  %806 = getelementptr inbounds double, double* %733, i64 %802
  %807 = load double, double* %806, align 8, !tbaa !1
  %808 = fsub double %807, %725
  store double %808, double* %806, align 8, !tbaa !1
  %809 = getelementptr inbounds double, double* %734, i64 %802
  %810 = load double, double* %809, align 8, !tbaa !1
  %811 = fsub double %810, %727
  store double %811, double* %809, align 8, !tbaa !1
  %812 = load i32, i32* %243, align 4, !tbaa !12
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds double, double* %732, i64 %813
  %815 = load double, double* %814, align 8, !tbaa !1
  %816 = fsub double %815, %729
  store double %816, double* %814, align 8, !tbaa !1
  %817 = getelementptr inbounds double, double* %733, i64 %813
  %818 = load double, double* %817, align 8, !tbaa !1
  %819 = fsub double %818, %730
  store double %819, double* %817, align 8, !tbaa !1
  %820 = getelementptr inbounds double, double* %734, i64 %813
  %821 = load double, double* %820, align 8, !tbaa !1
  %822 = fsub double %821, %731
  store double %822, double* %820, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 64, i8* %133) #2
  call void @llvm.lifetime.end(i64 64, i8* %132) #2
  call void @llvm.lifetime.end(i64 64, i8* %131) #2
  call void @llvm.lifetime.end(i64 192, i8* %130) #2
  %indvars.iv.next6.i.i.i.i = add nuw nsw i64 %indvars.iv5.i.i.i.i, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv.next6.i.i.i.i to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %65
  br i1 %exitcond101, label %.lr.ph.i.i.i.preheader, label %224

.lr.ph.i.i.i.preheader:                           ; preds = %224
  br label %.lr.ph.i.i.i

_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %823 = icmp slt i64 %indvars.iv.next.i.i.i, %70
  br i1 %823, label %.lr.ph.i.i.i, label %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i

_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i: ; preds = %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit.i.i.i
  %.pre.i = load i32, i32* %64, align 4, !tbaa !12
  br label %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.i

_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.i: ; preds = %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i, %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i
  %824 = phi i32 [ %65, %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i ], [ %.pre.i, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i ]
  %.pre-phi11.i.i = phi i8* [ %.pre10.i.i, %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i ], [ %133, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i ]
  %.pre-phi9.i.i = phi i8* [ %.pre8.i.i, %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i ], [ %132, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i ]
  %.pre-phi.i.i = phi i8* [ %.pre.i.i, %._ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i_crit_edge.i.i ], [ %131, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.loopexit.i ]
  %825 = shl nsw i32 %824, 3
  %826 = sext i32 %825 to i64
  %827 = shl nsw i64 %826, 3
  %828 = call noalias i8* @malloc(i64 %827) #2
  %829 = bitcast i8* %828 to double*
  %830 = call noalias i8* @malloc(i64 %827) #2
  %831 = bitcast i8* %830 to double*
  %832 = call noalias i8* @malloc(i64 %827) #2
  %833 = bitcast i8* %832 to double*
  %834 = call noalias i8* @malloc(i64 %827) #2
  %835 = bitcast i8* %834 to double*
  %836 = call noalias i8* @malloc(i64 %827) #2
  %837 = bitcast i8* %836 to double*
  %838 = call noalias i8* @malloc(i64 %827) #2
  %839 = bitcast i8* %838 to double*
  %840 = icmp sgt i32 %824, 0
  br i1 %840, label %.lr.ph.i13.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.i
  %841 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 21, i32 0, i32 0, i32 0
  %842 = load i32*, i32** %841, align 8
  %843 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 0
  %844 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 0
  %845 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 0
  %domain.idx.i7.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 0, i32 0, i32 0, i32 0
  %domain.idx.val.i8.i.i.i = load double*, double** %domain.idx.i7.i.i.i, align 8
  %domain.idx1.i9.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 1, i32 0, i32 0, i32 0
  %domain.idx1.val.i10.i.i.i = load double*, double** %domain.idx1.i9.i.i.i, align 8
  %domain.idx2.i11.i.i.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 2, i32 0, i32 0, i32 0
  %domain.idx2.val.i12.i.i.i = load double*, double** %domain.idx2.i11.i.i.i, align 8
  %846 = bitcast [8 x double]* %x_local.i.i.i.i to i64*
  %847 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 1
  %848 = bitcast double* %847 to i64*
  %849 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 2
  %850 = bitcast double* %849 to i64*
  %851 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 3
  %852 = bitcast double* %851 to i64*
  %853 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 4
  %854 = bitcast double* %853 to i64*
  %855 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 5
  %856 = bitcast double* %855 to i64*
  %857 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 6
  %858 = bitcast double* %857 to i64*
  %859 = getelementptr inbounds [8 x double], [8 x double]* %x_local.i.i.i.i, i64 0, i64 7
  %860 = bitcast double* %859 to i64*
  %861 = bitcast [8 x double]* %y_local.i.i.i.i to i64*
  %862 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 1
  %863 = bitcast double* %862 to i64*
  %864 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 2
  %865 = bitcast double* %864 to i64*
  %866 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 3
  %867 = bitcast double* %866 to i64*
  %868 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 4
  %869 = bitcast double* %868 to i64*
  %870 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 5
  %871 = bitcast double* %870 to i64*
  %872 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 6
  %873 = bitcast double* %872 to i64*
  %874 = getelementptr inbounds [8 x double], [8 x double]* %y_local.i.i.i.i, i64 0, i64 7
  %875 = bitcast double* %874 to i64*
  %876 = bitcast [8 x double]* %z_local.i.i.i.i to i64*
  %877 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 1
  %878 = bitcast double* %877 to i64*
  %879 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 2
  %880 = bitcast double* %879 to i64*
  %881 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 3
  %882 = bitcast double* %881 to i64*
  %883 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 4
  %884 = bitcast double* %883 to i64*
  %885 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 5
  %886 = bitcast double* %885 to i64*
  %887 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 6
  %888 = bitcast double* %887 to i64*
  %889 = getelementptr inbounds [8 x double], [8 x double]* %z_local.i.i.i.i, i64 0, i64 7
  %890 = bitcast double* %889 to i64*
  %891 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 44, i32 0, i32 0, i32 0
  %892 = load double*, double** %891, align 8
  %893 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 43, i32 0, i32 0, i32 0
  %894 = load double*, double** %893, align 8
  %895 = sext i32 %824 to i64
  br label %897

._crit_edge.i.i.i.i.loopexit:                     ; preds = %1409
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit._crit_edge.i.i.i
  %896 = fcmp ogt double %69, 0.000000e+00
  br i1 %896, label %1411, label %2297

; <label>:897                                     ; preds = %1409, %.lr.ph.i13.i.i.i
  %indvars.iv11.i.i.i.i = phi i64 [ 0, %.lr.ph.i13.i.i.i ], [ %indvars.iv.next12.i.i.i.i, %1409 ]
  %898 = shl i64 %indvars.iv11.i.i.i.i, 35
  %899 = ashr exact i64 %898, 29
  %scevgep17.i.i.i.i = getelementptr i8, i8* %838, i64 %899
  %scevgep16.i.i.i.i = getelementptr i8, i8* %836, i64 %899
  %scevgep15.i.i.i.i = getelementptr i8, i8* %834, i64 %899
  %scevgep14.i.i.i.i = getelementptr i8, i8* %832, i64 %899
  %scevgep13.i.i.i.i = getelementptr i8, i8* %830, i64 %899
  %scevgep.i.i.i.i = getelementptr i8, i8* %828, i64 %899
  call void @llvm.lifetime.start(i64 64, i8* %.pre-phi.i.i) #2
  call void @llvm.lifetime.start(i64 64, i8* %.pre-phi9.i.i) #2
  call void @llvm.lifetime.start(i64 64, i8* %.pre-phi11.i.i) #2
  %900 = trunc i64 %indvars.iv11.i.i.i.i to i32
  %901 = shl nsw i32 %900, 3
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i32, i32* %842, i64 %902
  %904 = load i32, i32* %903, align 4, !tbaa !12
  %905 = getelementptr inbounds i32, i32* %903, i64 1
  %906 = load i32, i32* %905, align 4, !tbaa !12
  %907 = getelementptr inbounds i32, i32* %903, i64 2
  %908 = load i32, i32* %907, align 4, !tbaa !12
  %909 = getelementptr inbounds i32, i32* %903, i64 3
  %910 = load i32, i32* %909, align 4, !tbaa !12
  %911 = getelementptr inbounds i32, i32* %903, i64 4
  %912 = load i32, i32* %911, align 4, !tbaa !12
  %913 = getelementptr inbounds i32, i32* %903, i64 5
  %914 = load i32, i32* %913, align 4, !tbaa !12
  %915 = getelementptr inbounds i32, i32* %903, i64 6
  %916 = load i32, i32* %915, align 4, !tbaa !12
  %917 = getelementptr inbounds i32, i32* %903, i64 7
  %918 = load i32, i32* %917, align 4, !tbaa !12
  %919 = sext i32 %904 to i64
  %920 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %919
  %921 = bitcast double* %920 to i64*
  %922 = load i64, i64* %921, align 8, !tbaa !1
  store i64 %922, i64* %846, align 16, !tbaa !1
  %923 = sext i32 %906 to i64
  %924 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %923
  %925 = bitcast double* %924 to i64*
  %926 = load i64, i64* %925, align 8, !tbaa !1
  store i64 %926, i64* %848, align 8, !tbaa !1
  %927 = sext i32 %908 to i64
  %928 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %927
  %929 = bitcast double* %928 to i64*
  %930 = load i64, i64* %929, align 8, !tbaa !1
  store i64 %930, i64* %850, align 16, !tbaa !1
  %931 = sext i32 %910 to i64
  %932 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %931
  %933 = bitcast double* %932 to i64*
  %934 = load i64, i64* %933, align 8, !tbaa !1
  store i64 %934, i64* %852, align 8, !tbaa !1
  %935 = sext i32 %912 to i64
  %936 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %935
  %937 = bitcast double* %936 to i64*
  %938 = load i64, i64* %937, align 8, !tbaa !1
  store i64 %938, i64* %854, align 16, !tbaa !1
  %939 = sext i32 %914 to i64
  %940 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %939
  %941 = bitcast double* %940 to i64*
  %942 = load i64, i64* %941, align 8, !tbaa !1
  store i64 %942, i64* %856, align 8, !tbaa !1
  %943 = sext i32 %916 to i64
  %944 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %943
  %945 = bitcast double* %944 to i64*
  %946 = load i64, i64* %945, align 8, !tbaa !1
  store i64 %946, i64* %858, align 16, !tbaa !1
  %947 = sext i32 %918 to i64
  %948 = getelementptr inbounds double, double* %domain.idx.val.i8.i.i.i, i64 %947
  %949 = bitcast double* %948 to i64*
  %950 = load i64, i64* %949, align 8, !tbaa !1
  store i64 %950, i64* %860, align 8, !tbaa !1
  %951 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %919
  %952 = bitcast double* %951 to i64*
  %953 = load i64, i64* %952, align 8, !tbaa !1
  store i64 %953, i64* %861, align 16, !tbaa !1
  %954 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %923
  %955 = bitcast double* %954 to i64*
  %956 = load i64, i64* %955, align 8, !tbaa !1
  store i64 %956, i64* %863, align 8, !tbaa !1
  %957 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %927
  %958 = bitcast double* %957 to i64*
  %959 = load i64, i64* %958, align 8, !tbaa !1
  store i64 %959, i64* %865, align 16, !tbaa !1
  %960 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %931
  %961 = bitcast double* %960 to i64*
  %962 = load i64, i64* %961, align 8, !tbaa !1
  store i64 %962, i64* %867, align 8, !tbaa !1
  %963 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %935
  %964 = bitcast double* %963 to i64*
  %965 = load i64, i64* %964, align 8, !tbaa !1
  store i64 %965, i64* %869, align 16, !tbaa !1
  %966 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %939
  %967 = bitcast double* %966 to i64*
  %968 = load i64, i64* %967, align 8, !tbaa !1
  store i64 %968, i64* %871, align 8, !tbaa !1
  %969 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %943
  %970 = bitcast double* %969 to i64*
  %971 = load i64, i64* %970, align 8, !tbaa !1
  store i64 %971, i64* %873, align 16, !tbaa !1
  %972 = getelementptr inbounds double, double* %domain.idx1.val.i10.i.i.i, i64 %947
  %973 = bitcast double* %972 to i64*
  %974 = load i64, i64* %973, align 8, !tbaa !1
  store i64 %974, i64* %875, align 8, !tbaa !1
  %975 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %919
  %976 = bitcast double* %975 to i64*
  %977 = load i64, i64* %976, align 8, !tbaa !1
  store i64 %977, i64* %876, align 16, !tbaa !1
  %978 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %923
  %979 = bitcast double* %978 to i64*
  %980 = load i64, i64* %979, align 8, !tbaa !1
  store i64 %980, i64* %878, align 8, !tbaa !1
  %981 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %927
  %982 = bitcast double* %981 to i64*
  %983 = load i64, i64* %982, align 8, !tbaa !1
  store i64 %983, i64* %880, align 16, !tbaa !1
  %984 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %931
  %985 = bitcast double* %984 to i64*
  %986 = load i64, i64* %985, align 8, !tbaa !1
  store i64 %986, i64* %882, align 8, !tbaa !1
  %987 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %935
  %988 = bitcast double* %987 to i64*
  %989 = load i64, i64* %988, align 8, !tbaa !1
  store i64 %989, i64* %884, align 16, !tbaa !1
  %990 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %939
  %991 = bitcast double* %990 to i64*
  %992 = load i64, i64* %991, align 8, !tbaa !1
  store i64 %992, i64* %886, align 8, !tbaa !1
  %993 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %943
  %994 = bitcast double* %993 to i64*
  %995 = load i64, i64* %994, align 8, !tbaa !1
  store i64 %995, i64* %888, align 16, !tbaa !1
  %996 = getelementptr inbounds double, double* %domain.idx2.val.i12.i.i.i, i64 %947
  %997 = bitcast double* %996 to i64*
  %998 = load i64, i64* %997, align 8, !tbaa !1
  store i64 %998, i64* %890, align 8, !tbaa !1
  %999 = bitcast i64 %926 to double
  %1000 = bitcast i64 %930 to double
  %1001 = bitcast i64 %934 to double
  %1002 = bitcast i64 %938 to double
  %1003 = bitcast i64 %942 to double
  %1004 = bitcast i64 %950 to double
  %1005 = bitcast i64 %956 to double
  %1006 = bitcast i64 %959 to double
  %1007 = bitcast i64 %962 to double
  %1008 = bitcast i64 %965 to double
  %1009 = bitcast i64 %968 to double
  %1010 = bitcast i64 %974 to double
  %1011 = bitcast i64 %980 to double
  %1012 = bitcast i64 %983 to double
  %1013 = bitcast i64 %986 to double
  %1014 = bitcast i64 %992 to double
  %1015 = bitcast i64 %998 to double
  %1016 = insertelement <2 x double> undef, double %1011, i32 0
  %1017 = insertelement <2 x double> %1016, double %1012, i32 1
  %1018 = insertelement <2 x double> undef, double %1012, i32 0
  %1019 = insertelement <2 x double> %1018, double %1013, i32 1
  %1020 = fadd <2 x double> %1017, %1019
  %1021 = bitcast i64 %977 to double
  %1022 = insertelement <2 x double> %1018, double %1021, i32 1
  %1023 = insertelement <2 x double> undef, double %1013, i32 0
  %1024 = insertelement <2 x double> %1023, double %1013, i32 1
  %1025 = fadd <2 x double> %1022, %1024
  %1026 = insertelement <2 x i64> undef, i64 %989, i32 0
  %1027 = insertelement <2 x i64> %1026, i64 %995, i32 1
  %1028 = bitcast <2 x i64> %1027 to <2 x double>
  %1029 = insertelement <2 x double> undef, double %1014, i32 0
  %1030 = insertelement <2 x double> %1029, double %1014, i32 1
  %1031 = fadd <2 x double> %1028, %1030
  %1032 = bitcast i64 %971 to double
  %1033 = insertelement <2 x double> %1016, double %1032, i32 1
  %1034 = insertelement <2 x double> %1029, double %1009, i32 1
  %1035 = fadd <2 x double> %1033, %1034
  %1036 = bitcast i64 %989 to double
  %1037 = insertelement <2 x double> undef, double %1036, i32 0
  %1038 = insertelement <2 x double> %1037, double %1036, i32 1
  %1039 = insertelement <2 x double> undef, double %1015, i32 0
  %1040 = insertelement <2 x double> %1039, double %1014, i32 1
  %1041 = fadd <2 x double> %1038, %1040
  %1042 = insertelement <2 x double> %1023, double %1008, i32 1
  %1043 = insertelement <2 x double> %1039, double %1009, i32 1
  %1044 = fadd <2 x double> %1042, %1043
  %1045 = load double, double* %844, align 16, !tbaa !1
  %1046 = insertelement <2 x double> undef, double %1006, i32 0
  %1047 = insertelement <2 x double> %1046, double %1045, i32 1
  %1048 = insertelement <2 x double> undef, double %1007, i32 0
  %1049 = insertelement <2 x double> %1048, double %1007, i32 1
  %1050 = fadd <2 x double> %1047, %1049
  %1051 = load double, double* %849, align 16, !tbaa !1
  %1052 = load double, double* %851, align 8, !tbaa !1
  %1053 = insertelement <2 x double> undef, double %999, i32 0
  %1054 = insertelement <2 x double> %1053, double %1051, i32 1
  %1055 = insertelement <2 x double> undef, double %1000, i32 0
  %1056 = insertelement <2 x double> %1055, double %1052, i32 1
  %1057 = fadd <2 x double> %1054, %1056
  %1058 = load double, double* %864, align 16, !tbaa !1
  %1059 = insertelement <2 x double> undef, double %1005, i32 0
  %1060 = insertelement <2 x double> %1059, double %1058, i32 1
  %1061 = insertelement <2 x double> %1046, double %1007, i32 1
  %1062 = fadd <2 x double> %1060, %1061
  %1063 = load double, double* %843, align 16, !tbaa !1
  %1064 = insertelement <2 x double> %1055, double %1063, i32 1
  %1065 = insertelement <2 x double> undef, double %1001, i32 0
  %1066 = insertelement <2 x double> %1065, double %1052, i32 1
  %1067 = fadd <2 x double> %1064, %1066
  %1068 = insertelement <2 x double> undef, double %1009, i32 0
  %1069 = insertelement <2 x double> %1068, double %1032, i32 1
  %1070 = fadd <2 x double> %1060, %1069
  %1071 = load double, double* %857, align 16, !tbaa !1
  %1072 = load double, double* %855, align 8, !tbaa !1
  %1073 = insertelement <2 x double> undef, double %1002, i32 0
  %1074 = insertelement <2 x double> %1073, double %1071, i32 1
  %1075 = insertelement <2 x double> undef, double %1003, i32 0
  %1076 = insertelement <2 x double> %1075, double %1072, i32 1
  %1077 = fadd <2 x double> %1074, %1076
  %1078 = insertelement <2 x double> undef, double %1008, i32 0
  %1079 = bitcast i64 %995 to double
  %1080 = insertelement <2 x double> %1078, double %1079, i32 1
  %1081 = insertelement <2 x double> %1068, double %1012, i32 1
  %1082 = fadd <2 x double> %1080, %1081
  %1083 = insertelement <2 x double> %1075, double %1071, i32 1
  %1084 = fadd <2 x double> %1054, %1083
  %1085 = insertelement <2 x double> %1048, double %1045, i32 1
  %1086 = insertelement <2 x double> undef, double %1010, i32 0
  %1087 = insertelement <2 x double> %1086, double %1008, i32 1
  %1088 = fadd <2 x double> %1085, %1087
  %1089 = load double, double* %853, align 16, !tbaa !1
  %1090 = insertelement <2 x double> %1073, double %1089, i32 1
  %1091 = insertelement <2 x double> undef, double %1004, i32 0
  %1092 = insertelement <2 x double> %1091, double %1072, i32 1
  %1093 = fadd <2 x double> %1090, %1092
  %1094 = insertelement <2 x double> %1078, double %1021, i32 1
  %1095 = insertelement <2 x double> %1086, double %1036, i32 1
  %1096 = fadd <2 x double> %1094, %1095
  %1097 = insertelement <2 x double> %1065, double %1063, i32 1
  %1098 = insertelement <2 x double> %1091, double %1089, i32 1
  %1099 = fadd <2 x double> %1097, %1098
  %1100 = load double, double* %847, align 8, !tbaa !1
  %1101 = load double, double* %859, align 8, !tbaa !1
  %1102 = load double, double* %862, align 8, !tbaa !1
  %1103 = load double, double* %874, align 8, !tbaa !1
  %1104 = load double, double* %877, align 8, !tbaa !1
  %1105 = insertelement <2 x double> undef, double %1045, i32 0
  %1106 = insertelement <2 x double> %1105, double %1058, i32 1
  %1107 = insertelement <2 x double> undef, double %1102, i32 0
  %1108 = insertelement <2 x double> %1107, double %1102, i32 1
  %1109 = fadd <2 x double> %1106, %1108
  %1110 = fadd double %1100, %1051
  %1111 = insertelement <2 x double> undef, double %1103, i32 0
  %1112 = insertelement <2 x double> %1111, double %1021, i32 1
  %1113 = insertelement <2 x double> %1048, double %1104, i32 1
  %1114 = fadd <2 x double> %1112, %1113
  %1115 = load double, double* %889, align 8, !tbaa !1
  %1116 = insertelement <2 x double> undef, double %1079, i32 0
  %1117 = insertelement <2 x double> %1116, double %1015, i32 1
  %1118 = insertelement <2 x double> undef, double %1115, i32 0
  %1119 = insertelement <2 x double> %1118, double %1036, i32 1
  %1120 = fadd <2 x double> %1117, %1119
  %1121 = insertelement <2 x double> %1107, double %1079, i32 1
  %1122 = insertelement <2 x double> %1068, double %1015, i32 1
  %1123 = fadd <2 x double> %1121, %1122
  %1124 = insertelement <2 x double> undef, double %1101, i32 0
  %1125 = insertelement <2 x double> %1124, double %1101, i32 1
  %1126 = insertelement <2 x double> undef, double %1071, i32 0
  %1127 = insertelement <2 x double> %1126, double %1089, i32 1
  %1128 = fadd <2 x double> %1125, %1127
  %1129 = insertelement <2 x double> %1023, double %1063, i32 1
  %1130 = insertelement <2 x double> %1118, double %1100, i32 1
  %1131 = fadd <2 x double> %1129, %1130
  %1132 = extractelement <2 x double> %1131, i32 1
  %1133 = insertelement <2 x double> undef, double %1104, i32 0
  %1134 = insertelement <2 x double> %1133, double %1103, i32 1
  %1135 = insertelement <2 x double> %1029, double %1032, i32 1
  %1136 = fadd <2 x double> %1134, %1135
  %1137 = shufflevector <2 x double> %1025, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1138 = shufflevector <2 x double> %1137, <2 x double> %1114, <2 x i32> <i32 0, i32 3>
  %1139 = fmul <2 x double> %1109, %1138
  %1140 = shufflevector <2 x double> %1114, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1141 = shufflevector <2 x double> %1140, <2 x double> %1109, <2 x i32> <i32 0, i32 2>
  %1142 = shufflevector <2 x double> %1050, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1143 = insertelement <2 x double> undef, double %1100, i32 0
  %1144 = insertelement <2 x double> %1143, double %1104, i32 1
  %1145 = insertelement <2 x double> undef, double %1072, i32 0
  %1146 = insertelement <2 x double> %1145, double %1012, i32 1
  %1147 = fadd <2 x double> %1144, %1146
  %1148 = shufflevector <2 x double> %1142, <2 x double> %1147, <2 x i32> <i32 0, i32 3>
  %1149 = fmul <2 x double> %1141, %1148
  %1150 = fsub <2 x double> %1139, %1149
  %1151 = shufflevector <2 x double> %1114, <2 x double> %1088, <2 x i32> <i32 0, i32 3>
  %1152 = fmul <2 x double> %1151, %1120
  %1153 = fadd <2 x double> %1150, %1152
  %1154 = shufflevector <2 x double> %1136, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1155 = insertelement <2 x double> %1124, double %1103, i32 1
  %1156 = insertelement <2 x double> undef, double %1052, i32 0
  %1157 = insertelement <2 x double> %1156, double %1008, i32 1
  %1158 = fadd <2 x double> %1155, %1157
  %1159 = shufflevector <2 x double> %1154, <2 x double> %1158, <2 x i32> <i32 0, i32 3>
  %1160 = shufflevector <2 x double> %1131, <2 x double> %1096, <2 x i32> <i32 0, i32 3>
  %1161 = fmul <2 x double> %1159, %1160
  %1162 = fsub <2 x double> %1153, %1161
  %1163 = shufflevector <2 x double> %1031, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1164 = shufflevector <2 x double> %1163, <2 x double> %1070, <2 x i32> <i32 0, i32 3>
  %1165 = fmul <2 x double> %1123, %1164
  %1166 = fsub <2 x double> %1162, %1165
  %1167 = shufflevector <2 x double> %1035, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1168 = shufflevector <2 x double> %1167, <2 x double> %1082, <2 x i32> <i32 0, i32 3>
  %1169 = fmul <2 x double> %1168, %1136
  %1170 = fadd <2 x double> %1169, %1166
  %1171 = insertelement <2 x double> undef, double %1132, i32 0
  %1172 = insertelement <2 x double> %1171, double %1110, i32 1
  %1173 = fmul <2 x double> %1172, %1138
  %1174 = shufflevector <2 x double> %1140, <2 x double> %1131, <2 x i32> <i32 0, i32 3>
  %1175 = shufflevector <2 x double> %1067, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1176 = shufflevector <2 x double> %1175, <2 x double> %1147, <2 x i32> <i32 0, i32 3>
  %1177 = fmul <2 x double> %1174, %1176
  %1178 = fsub <2 x double> %1177, %1173
  %1179 = shufflevector <2 x double> %1158, <2 x double> %1099, <2 x i32> <i32 0, i32 3>
  %1180 = fmul <2 x double> %1179, %1120
  %1181 = fsub <2 x double> %1178, %1180
  %1182 = fmul <2 x double> %1128, %1160
  %1183 = fadd <2 x double> %1182, %1181
  %1184 = shufflevector <2 x double> %1147, <2 x double> %1123, <2 x i32> <i32 0, i32 3>
  %1185 = shufflevector <2 x double> %1163, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1186 = fmul <2 x double> %1184, %1185
  %1187 = fadd <2 x double> %1186, %1183
  %1188 = shufflevector <2 x double> %1077, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1189 = shufflevector <2 x double> %1188, <2 x double> %1128, <2 x i32> <i32 0, i32 2>
  %1190 = shufflevector <2 x double> %1136, <2 x double> %1082, <2 x i32> <i32 0, i32 3>
  %1191 = fmul <2 x double> %1189, %1190
  %1192 = fsub <2 x double> %1187, %1191
  %1193 = shufflevector <2 x double> %1109, <2 x double> %1131, <2 x i32> <i32 0, i32 3>
  %1194 = shufflevector <2 x double> %1175, <2 x double> %1109, <2 x i32> <i32 0, i32 3>
  %1195 = fmul <2 x double> %1193, %1194
  %1196 = shufflevector <2 x double> %1142, <2 x double> %1109, <2 x i32> <i32 0, i32 2>
  %1197 = fmul <2 x double> %1172, %1196
  %1198 = fsub <2 x double> %1197, %1195
  %1199 = fmul <2 x double> %1128, %1151
  %1200 = fsub <2 x double> %1198, %1199
  %1201 = shufflevector <2 x double> %1154, <2 x double> %1099, <2 x i32> <i32 0, i32 3>
  %1202 = fmul <2 x double> %1201, %1158
  %1203 = fadd <2 x double> %1202, %1200
  %1204 = shufflevector <2 x double> %1123, <2 x double> %1070, <2 x i32> <i32 0, i32 3>
  %1205 = fmul <2 x double> %1189, %1204
  %1206 = fadd <2 x double> %1205, %1203
  %1207 = shufflevector <2 x double> %1147, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1208 = shufflevector <2 x double> %1167, <2 x double> %1136, <2 x i32> <i32 0, i32 3>
  %1209 = fmul <2 x double> %1207, %1208
  %1210 = fsub <2 x double> %1206, %1209
  %1211 = fmul <2 x double> %1170, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1212 = fmul <2 x double> %1192, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1213 = fmul <2 x double> %1210, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1214 = fmul <2 x double> %1050, %1020
  %1215 = fmul <2 x double> %1062, %1025
  %1216 = fsub <2 x double> %1214, %1215
  %1217 = fmul <2 x double> %1070, %1031
  %1218 = fadd <2 x double> %1216, %1217
  %1219 = fmul <2 x double> %1082, %1035
  %1220 = fsub <2 x double> %1218, %1219
  %1221 = fmul <2 x double> %1088, %1041
  %1222 = fsub <2 x double> %1220, %1221
  %1223 = fmul <2 x double> %1096, %1044
  %1224 = fadd <2 x double> %1223, %1222
  %1225 = fmul <2 x double> %1067, %1020
  %1226 = fmul <2 x double> %1057, %1025
  %1227 = fsub <2 x double> %1226, %1225
  %1228 = fmul <2 x double> %1084, %1031
  %1229 = fsub <2 x double> %1227, %1228
  %1230 = shufflevector <2 x double> %1035, <2 x double> %1082, <2 x i32> <i32 0, i32 3>
  %1231 = fmul <2 x double> %1077, %1230
  %1232 = fadd <2 x double> %1231, %1229
  %1233 = fmul <2 x double> %1099, %1041
  %1234 = fadd <2 x double> %1232, %1233
  %1235 = shufflevector <2 x double> %1044, <2 x double> %1096, <2 x i32> <i32 0, i32 3>
  %1236 = fmul <2 x double> %1093, %1235
  %1237 = fsub <2 x double> %1234, %1236
  %1238 = fmul <2 x double> %1057, %1050
  %1239 = fmul <2 x double> %1067, %1062
  %1240 = fsub <2 x double> %1239, %1238
  %1241 = shufflevector <2 x double> %1077, <2 x double> %1070, <2 x i32> <i32 0, i32 3>
  %1242 = shufflevector <2 x double> %1070, <2 x double> %1077, <2 x i32> <i32 0, i32 3>
  %1243 = fmul <2 x double> %1241, %1242
  %1244 = fsub <2 x double> %1240, %1243
  %1245 = shufflevector <2 x double> %1082, <2 x double> %1035, <2 x i32> <i32 0, i32 3>
  %1246 = fmul <2 x double> %1084, %1245
  %1247 = fadd <2 x double> %1246, %1244
  %1248 = shufflevector <2 x double> %1093, <2 x double> %1088, <2 x i32> <i32 0, i32 3>
  %1249 = shufflevector <2 x double> %1088, <2 x double> %1093, <2 x i32> <i32 0, i32 3>
  %1250 = fmul <2 x double> %1248, %1249
  %1251 = fadd <2 x double> %1247, %1250
  %1252 = shufflevector <2 x double> %1096, <2 x double> %1044, <2 x i32> <i32 0, i32 3>
  %1253 = fmul <2 x double> %1099, %1252
  %1254 = fsub <2 x double> %1251, %1253
  %1255 = fmul <2 x double> %1224, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1256 = fmul <2 x double> %1237, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1257 = fmul <2 x double> %1254, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1258 = extractelement <2 x double> %1120, i32 0
  %1259 = fadd double %1036, %1115
  %1260 = insertelement <2 x double> undef, double %1258, i32 0
  %1261 = insertelement <2 x double> %1260, double %1259, i32 1
  %1262 = fmul <2 x double> %1208, %1261
  %1263 = shufflevector <2 x double> %1163, <2 x double> %1120, <2 x i32> <i32 0, i32 2>
  %1264 = fmul <2 x double> %1159, %1263
  %1265 = fsub <2 x double> %1262, %1264
  %1266 = shufflevector <2 x double> %1137, <2 x double> %1088, <2 x i32> <i32 0, i32 3>
  %1267 = fmul <2 x double> %1114, %1266
  %1268 = fadd <2 x double> %1267, %1265
  %1269 = fmul <2 x double> %1196, %1160
  %1270 = fsub <2 x double> %1268, %1269
  %1271 = shufflevector <2 x double> %1140, <2 x double> %1147, <2 x i32> <i32 0, i32 3>
  %1272 = fmul <2 x double> %1271, %1204
  %1273 = fsub <2 x double> %1270, %1272
  %1274 = fmul <2 x double> %1109, %1190
  %1275 = fadd <2 x double> %1274, %1273
  %1276 = fmul <2 x double> %1189, %1261
  %1277 = fmul <2 x double> %1128, %1263
  %1278 = fsub <2 x double> %1277, %1276
  %1279 = fmul <2 x double> %1179, %1138
  %1280 = fsub <2 x double> %1278, %1279
  %1281 = shufflevector <2 x double> %1175, <2 x double> %1096, <2 x i32> <i32 0, i32 3>
  %1282 = fmul <2 x double> %1281, %1131
  %1283 = fadd <2 x double> %1282, %1280
  %1284 = shufflevector <2 x double> %1140, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1285 = fmul <2 x double> %1284, %1147
  %1286 = fadd <2 x double> %1285, %1283
  %1287 = fmul <2 x double> %1172, %1190
  %1288 = fsub <2 x double> %1286, %1287
  %1289 = fmul <2 x double> %1128, %1208
  %1290 = shufflevector <2 x double> %1154, <2 x double> %1128, <2 x i32> <i32 0, i32 2>
  %1291 = shufflevector <2 x double> %1188, <2 x double> %1158, <2 x i32> <i32 0, i32 3>
  %1292 = fmul <2 x double> %1290, %1291
  %1293 = fsub <2 x double> %1292, %1289
  %1294 = shufflevector <2 x double> %1175, <2 x double> %1131, <2 x i32> <i32 0, i32 3>
  %1295 = fmul <2 x double> %1294, %1151
  %1296 = fsub <2 x double> %1293, %1295
  %1297 = fmul <2 x double> %1179, %1196
  %1298 = fadd <2 x double> %1297, %1296
  %1299 = fmul <2 x double> %1172, %1204
  %1300 = fadd <2 x double> %1299, %1298
  %1301 = shufflevector <2 x double> %1109, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1302 = shufflevector <2 x double> %1147, <2 x double> %1109, <2 x i32> <i32 0, i32 3>
  %1303 = fmul <2 x double> %1301, %1302
  %1304 = fsub <2 x double> %1300, %1303
  %1305 = fmul <2 x double> %1275, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1306 = fmul <2 x double> %1288, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1307 = fmul <2 x double> %1304, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1308 = shufflevector <2 x double> %1158, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1309 = shufflevector <2 x double> %1308, <2 x double> %1044, <2 x i32> <i32 0, i32 3>
  %1310 = shufflevector <2 x double> %1041, <2 x double> %1031, <2 x i32> <i32 1, i32 3>
  %1311 = fmul <2 x double> %1309, %1310
  %1312 = shufflevector <2 x double> %1044, <2 x double> %1035, <2 x i32> <i32 1, i32 3>
  %1313 = insertelement <2 x double> undef, double %1259, i32 0
  %1314 = shufflevector <2 x double> %1313, <2 x double> %1041, <2 x i32> <i32 0, i32 3>
  %1315 = fmul <2 x double> %1312, %1314
  %1316 = fsub <2 x double> %1311, %1315
  %1317 = shufflevector <2 x double> %1147, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1318 = shufflevector <2 x double> %1317, <2 x double> %1070, <2 x i32> <i32 0, i32 3>
  %1319 = shufflevector <2 x double> %1123, <2 x double> %1020, <2 x i32> <i32 0, i32 3>
  %1320 = fmul <2 x double> %1318, %1319
  %1321 = fadd <2 x double> %1320, %1316
  %1322 = shufflevector <2 x double> %1109, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1323 = shufflevector <2 x double> %1322, <2 x double> %1082, <2 x i32> <i32 0, i32 3>
  %1324 = shufflevector <2 x double> %1136, <2 x double> %1062, <2 x i32> <i32 0, i32 3>
  %1325 = fmul <2 x double> %1323, %1324
  %1326 = fsub <2 x double> %1321, %1325
  %1327 = shufflevector <2 x double> %1020, <2 x double> %1025, <2 x i32> <i32 1, i32 3>
  %1328 = fmul <2 x double> %1151, %1327
  %1329 = fsub <2 x double> %1326, %1328
  %1330 = shufflevector <2 x double> %1062, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1331 = shufflevector <2 x double> %1330, <2 x double> %1096, <2 x i32> <i32 0, i32 3>
  %1332 = shufflevector <2 x double> %1131, <2 x double> %1050, <2 x i32> <i32 0, i32 3>
  %1333 = fmul <2 x double> %1331, %1332
  %1334 = fadd <2 x double> %1333, %1329
  %1335 = shufflevector <2 x double> %1128, <2 x double> %1093, <2 x i32> <i32 1, i32 3>
  %1336 = fmul <2 x double> %1335, %1310
  %1337 = shufflevector <2 x double> %1093, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1338 = shufflevector <2 x double> %1337, <2 x double> %1077, <2 x i32> <i32 0, i32 3>
  %1339 = fmul <2 x double> %1338, %1314
  %1340 = fsub <2 x double> %1339, %1336
  %1341 = shufflevector <2 x double> %1317, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1342 = shufflevector <2 x double> %1147, <2 x double> %1020, <2 x i32> <i32 0, i32 3>
  %1343 = fmul <2 x double> %1341, %1342
  %1344 = fsub <2 x double> %1340, %1343
  %1345 = insertelement <2 x double> undef, double %1110, i32 0
  %1346 = shufflevector <2 x double> %1345, <2 x double> %1082, <2 x i32> <i32 0, i32 3>
  %1347 = shufflevector <2 x double> %1136, <2 x double> %1057, <2 x i32> <i32 0, i32 3>
  %1348 = fmul <2 x double> %1346, %1347
  %1349 = fadd <2 x double> %1348, %1344
  %1350 = fmul <2 x double> %1179, %1327
  %1351 = fadd <2 x double> %1350, %1349
  %1352 = shufflevector <2 x double> %1057, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %1353 = shufflevector <2 x double> %1352, <2 x double> %1096, <2 x i32> <i32 0, i32 3>
  %1354 = shufflevector <2 x double> %1131, <2 x double> %1067, <2 x i32> <i32 0, i32 3>
  %1355 = fmul <2 x double> %1353, %1354
  %1356 = fsub <2 x double> %1351, %1355
  %1357 = shufflevector <2 x double> %1308, <2 x double> %1077, <2 x i32> <i32 0, i32 3>
  %1358 = shufflevector <2 x double> %1337, <2 x double> %1044, <2 x i32> <i32 0, i32 3>
  %1359 = fmul <2 x double> %1357, %1358
  %1360 = fmul <2 x double> %1335, %1312
  %1361 = fsub <2 x double> %1360, %1359
  %1362 = shufflevector <2 x double> %1345, <2 x double> %1070, <2 x i32> <i32 0, i32 3>
  %1363 = shufflevector <2 x double> %1123, <2 x double> %1057, <2 x i32> <i32 0, i32 3>
  %1364 = fmul <2 x double> %1362, %1363
  %1365 = fsub <2 x double> %1361, %1364
  %1366 = shufflevector <2 x double> %1322, <2 x double> %1084, <2 x i32> <i32 0, i32 3>
  %1367 = shufflevector <2 x double> %1147, <2 x double> %1062, <2 x i32> <i32 0, i32 3>
  %1368 = fmul <2 x double> %1366, %1367
  %1369 = fadd <2 x double> %1368, %1365
  %1370 = shufflevector <2 x double> %1352, <2 x double> %1088, <2 x i32> <i32 0, i32 3>
  %1371 = shufflevector <2 x double> %1114, <2 x double> %1067, <2 x i32> <i32 0, i32 3>
  %1372 = fmul <2 x double> %1370, %1371
  %1373 = fadd <2 x double> %1372, %1369
  %1374 = shufflevector <2 x double> %1330, <2 x double> %1050, <2 x i32> <i32 0, i32 3>
  %1375 = fmul <2 x double> %1179, %1374
  %1376 = fsub <2 x double> %1373, %1375
  %1377 = fmul <2 x double> %1334, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1378 = fmul <2 x double> %1356, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1379 = fmul <2 x double> %1376, <double 0x3FB5555555555555, double 0x3FB5555555555555>
  %1380 = bitcast i8* %scevgep.i.i.i.i to <2 x double>*
  store <2 x double> %1255, <2 x double>* %1380, align 8
  %1381 = getelementptr inbounds i8, i8* %scevgep.i.i.i.i, i64 16
  %1382 = bitcast i8* %1381 to <2 x double>*
  store <2 x double> %1211, <2 x double>* %1382, align 8
  %1383 = getelementptr inbounds i8, i8* %scevgep.i.i.i.i, i64 32
  %1384 = bitcast i8* %1383 to <2 x double>*
  store <2 x double> %1305, <2 x double>* %1384, align 8
  %1385 = getelementptr inbounds i8, i8* %scevgep.i.i.i.i, i64 48
  %1386 = bitcast i8* %1385 to <2 x double>*
  store <2 x double> %1377, <2 x double>* %1386, align 8
  %1387 = bitcast i8* %scevgep13.i.i.i.i to <2 x double>*
  store <2 x double> %1256, <2 x double>* %1387, align 8
  %1388 = getelementptr inbounds i8, i8* %scevgep13.i.i.i.i, i64 16
  %1389 = bitcast i8* %1388 to <2 x double>*
  store <2 x double> %1212, <2 x double>* %1389, align 8
  %1390 = getelementptr inbounds i8, i8* %scevgep13.i.i.i.i, i64 32
  %1391 = bitcast i8* %1390 to <2 x double>*
  store <2 x double> %1306, <2 x double>* %1391, align 8
  %1392 = getelementptr inbounds i8, i8* %scevgep13.i.i.i.i, i64 48
  %1393 = bitcast i8* %1392 to <2 x double>*
  store <2 x double> %1378, <2 x double>* %1393, align 8
  %1394 = bitcast i8* %scevgep14.i.i.i.i to <2 x double>*
  store <2 x double> %1257, <2 x double>* %1394, align 8
  %1395 = getelementptr inbounds i8, i8* %scevgep14.i.i.i.i, i64 16
  %1396 = bitcast i8* %1395 to <2 x double>*
  store <2 x double> %1213, <2 x double>* %1396, align 8
  %1397 = getelementptr inbounds i8, i8* %scevgep14.i.i.i.i, i64 32
  %1398 = bitcast i8* %1397 to <2 x double>*
  store <2 x double> %1307, <2 x double>* %1398, align 8
  %1399 = getelementptr inbounds i8, i8* %scevgep14.i.i.i.i, i64 48
  %1400 = bitcast i8* %1399 to <2 x double>*
  store <2 x double> %1379, <2 x double>* %1400, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep15.i.i.i.i, i8* %.pre-phi.i.i, i64 64, i32 8, i1 false) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep16.i.i.i.i, i8* %.pre-phi9.i.i, i64 64, i32 8, i1 false) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep17.i.i.i.i, i8* %.pre-phi11.i.i, i64 64, i32 8, i1 false) #2
  %1401 = getelementptr inbounds double, double* %892, i64 %indvars.iv11.i.i.i.i
  %1402 = load double, double* %1401, align 8, !tbaa !1
  %1403 = getelementptr inbounds double, double* %894, i64 %indvars.iv11.i.i.i.i
  %1404 = load double, double* %1403, align 8, !tbaa !1
  %1405 = fmul double %1402, %1404
  %1406 = getelementptr inbounds double, double* %79, i64 %indvars.iv11.i.i.i.i
  store double %1405, double* %1406, align 8, !tbaa !1
  %1407 = fcmp ugt double %1404, 0.000000e+00
  br i1 %1407, label %1409, label %1408

; <label>:1408                                    ; preds = %897
  call void @exit(i32 -1) #20
  unreachable

; <label>:1409                                    ; preds = %897
  call void @llvm.lifetime.end(i64 64, i8* nonnull %.pre-phi11.i.i) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %.pre-phi9.i.i) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %.pre-phi.i.i) #2
  %indvars.iv.next12.i.i.i.i = add nuw nsw i64 %indvars.iv11.i.i.i.i, 1
  %1410 = icmp slt i64 %indvars.iv.next12.i.i.i.i, %895
  br i1 %1410, label %897, label %._crit_edge.i.i.i.i.loopexit

; <label>:1411                                    ; preds = %._crit_edge.i.i.i.i
  %1412 = bitcast [4 x [8 x double]]* %gamma.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1412) #2
  %1413 = bitcast [4 x [8 x double]]* %gamma.i.i.i.i.i to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %1413, align 16, !tbaa !1
  %1414 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 0, i64 2
  %1415 = bitcast double* %1414 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %1415, align 16, !tbaa !1
  %1416 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 0, i64 4
  %1417 = bitcast double* %1416 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %1417, align 16, !tbaa !1
  %1418 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 0, i64 6
  %1419 = bitcast double* %1418 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %1419, align 16, !tbaa !1
  %1420 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 1, i64 0
  %1421 = bitcast double* %1420 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1421, align 16, !tbaa !1
  %1422 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 1, i64 2
  %1423 = bitcast double* %1422 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %1423, align 16, !tbaa !1
  %1424 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 1, i64 4
  %1425 = bitcast double* %1424 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %1425, align 16, !tbaa !1
  %1426 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 1, i64 6
  %1427 = bitcast double* %1426 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1427, align 16, !tbaa !1
  %1428 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 2, i64 0
  %1429 = bitcast double* %1428 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1429, align 16, !tbaa !1
  %1430 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 2, i64 2
  %1431 = bitcast double* %1430 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1431, align 16, !tbaa !1
  %1432 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 2, i64 4
  %1433 = bitcast double* %1432 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1433, align 16, !tbaa !1
  %1434 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 2, i64 6
  %1435 = bitcast double* %1434 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1435, align 16, !tbaa !1
  %1436 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 3, i64 0
  %1437 = bitcast double* %1436 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %1437, align 16, !tbaa !1
  %1438 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 3, i64 2
  %1439 = bitcast double* %1438 to <2 x double>*
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, <2 x double>* %1439, align 16, !tbaa !1
  %1440 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 3, i64 4
  %1441 = bitcast double* %1440 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1441, align 16, !tbaa !1
  %1442 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 3, i64 6
  %1443 = bitcast double* %1442 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, <2 x double>* %1443, align 16, !tbaa !1
  br i1 %840, label %.lr.ph.i.i.i.i.i, label %_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %1411
  %1444 = bitcast [8 x [4 x double]]* %hourgam.i.i.i.i.i to i8*
  %1445 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 21, i32 0, i32 0, i32 0
  %1446 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 49, i32 0, i32 0, i32 0
  %1447 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 50, i32 0, i32 0, i32 0
  %1448 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 3, i32 0, i32 0, i32 0
  %1449 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 4, i32 0, i32 0, i32 0
  %1450 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 5, i32 0, i32 0, i32 0
  %1451 = fmul double %69, -1.000000e-02
  %1452 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 0, i64 0
  %1453 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 1, i64 0
  %1454 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 2, i64 0
  %1455 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 3, i64 0
  %1456 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 4, i64 0
  %1457 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 5, i64 0
  %1458 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 6, i64 0
  %1459 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 7, i64 0
  %1460 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 0, i64 1
  %1461 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 1, i64 1
  %1462 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 2, i64 1
  %1463 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 3, i64 1
  %1464 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 4, i64 1
  %1465 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 5, i64 1
  %1466 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 6, i64 1
  %1467 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 7, i64 1
  %1468 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 0, i64 2
  %1469 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 1, i64 2
  %1470 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 2, i64 2
  %1471 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 3, i64 2
  %1472 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 4, i64 2
  %1473 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 5, i64 2
  %1474 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 6, i64 2
  %1475 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 7, i64 2
  %1476 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 0, i64 3
  %1477 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 1, i64 3
  %1478 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 2, i64 3
  %1479 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 3, i64 3
  %1480 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 4, i64 3
  %1481 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 5, i64 3
  %1482 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 6, i64 3
  %1483 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 7, i64 3
  %1484 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 9, i32 0, i32 0, i32 0
  %1485 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 10, i32 0, i32 0, i32 0
  %1486 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 11, i32 0, i32 0, i32 0
  br label %1487

; <label>:1487                                    ; preds = %1605, %.lr.ph.i.i.i.i.i
  %indvars.iv3.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next4.i.i.i.i.i, %1605 ]
  call void @llvm.lifetime.start(i64 256, i8* %1444) #2
  %1488 = trunc i64 %indvars.iv3.i.i.i.i.i to i32
  %1489 = shl nsw i32 %1488, 3
  %1490 = sext i32 %1489 to i64
  %1491 = load i32*, i32** %1445, align 8, !tbaa !5
  %1492 = getelementptr inbounds double, double* %79, i64 %indvars.iv3.i.i.i.i.i
  %1493 = load double, double* %1492, align 8, !tbaa !1
  %1494 = fdiv double 1.000000e+00, %1493
  %1495 = getelementptr inbounds double, double* %835, i64 %1490
  %1496 = load double, double* %1495, align 8
  %1497 = or i32 %1489, 1
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds double, double* %835, i64 %1498
  %1500 = load double, double* %1499, align 8
  %1501 = or i32 %1489, 2
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds double, double* %835, i64 %1502
  %1504 = load double, double* %1503, align 8
  %1505 = or i32 %1489, 3
  %1506 = sext i32 %1505 to i64
  %1507 = getelementptr inbounds double, double* %835, i64 %1506
  %1508 = load double, double* %1507, align 8
  %1509 = or i32 %1489, 4
  %1510 = sext i32 %1509 to i64
  %1511 = getelementptr inbounds double, double* %835, i64 %1510
  %1512 = load double, double* %1511, align 8
  %1513 = or i32 %1489, 5
  %1514 = sext i32 %1513 to i64
  %1515 = getelementptr inbounds double, double* %835, i64 %1514
  %1516 = load double, double* %1515, align 8
  %1517 = or i32 %1489, 6
  %1518 = sext i32 %1517 to i64
  %1519 = getelementptr inbounds double, double* %835, i64 %1518
  %1520 = load double, double* %1519, align 8
  %1521 = or i32 %1489, 7
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds double, double* %835, i64 %1522
  %1524 = load double, double* %1523, align 8
  %1525 = getelementptr inbounds double, double* %837, i64 %1490
  %1526 = load double, double* %1525, align 8
  %1527 = getelementptr inbounds double, double* %837, i64 %1498
  %1528 = load double, double* %1527, align 8
  %1529 = getelementptr inbounds double, double* %837, i64 %1502
  %1530 = load double, double* %1529, align 8
  %1531 = getelementptr inbounds double, double* %837, i64 %1506
  %1532 = load double, double* %1531, align 8
  %1533 = getelementptr inbounds double, double* %837, i64 %1510
  %1534 = load double, double* %1533, align 8
  %1535 = getelementptr inbounds double, double* %837, i64 %1514
  %1536 = load double, double* %1535, align 8
  %1537 = getelementptr inbounds double, double* %837, i64 %1518
  %1538 = load double, double* %1537, align 8
  %1539 = getelementptr inbounds double, double* %837, i64 %1522
  %1540 = load double, double* %1539, align 8
  %1541 = getelementptr inbounds double, double* %839, i64 %1490
  %1542 = load double, double* %1541, align 8
  %1543 = getelementptr inbounds double, double* %839, i64 %1498
  %1544 = load double, double* %1543, align 8
  %1545 = getelementptr inbounds double, double* %839, i64 %1502
  %1546 = load double, double* %1545, align 8
  %1547 = getelementptr inbounds double, double* %839, i64 %1506
  %1548 = load double, double* %1547, align 8
  %1549 = getelementptr inbounds double, double* %839, i64 %1510
  %1550 = load double, double* %1549, align 8
  %1551 = getelementptr inbounds double, double* %839, i64 %1514
  %1552 = load double, double* %1551, align 8
  %1553 = getelementptr inbounds double, double* %839, i64 %1518
  %1554 = load double, double* %1553, align 8
  %1555 = getelementptr inbounds double, double* %839, i64 %1522
  %1556 = load double, double* %1555, align 8
  %1557 = getelementptr inbounds double, double* %829, i64 %1490
  %1558 = load double, double* %1557, align 8
  %1559 = getelementptr inbounds double, double* %831, i64 %1490
  %1560 = load double, double* %1559, align 8
  %1561 = getelementptr inbounds double, double* %833, i64 %1490
  %1562 = load double, double* %1561, align 8
  %1563 = getelementptr inbounds double, double* %829, i64 %1498
  %1564 = load double, double* %1563, align 8
  %1565 = getelementptr inbounds double, double* %831, i64 %1498
  %1566 = load double, double* %1565, align 8
  %1567 = getelementptr inbounds double, double* %833, i64 %1498
  %1568 = load double, double* %1567, align 8
  %1569 = getelementptr inbounds double, double* %829, i64 %1502
  %1570 = load double, double* %1569, align 8
  %1571 = getelementptr inbounds double, double* %831, i64 %1502
  %1572 = load double, double* %1571, align 8
  %1573 = getelementptr inbounds double, double* %833, i64 %1502
  %1574 = load double, double* %1573, align 8
  %1575 = getelementptr inbounds double, double* %829, i64 %1506
  %1576 = load double, double* %1575, align 8
  %1577 = getelementptr inbounds double, double* %831, i64 %1506
  %1578 = load double, double* %1577, align 8
  %1579 = getelementptr inbounds double, double* %833, i64 %1506
  %1580 = load double, double* %1579, align 8
  %1581 = getelementptr inbounds double, double* %829, i64 %1510
  %1582 = load double, double* %1581, align 8
  %1583 = getelementptr inbounds double, double* %831, i64 %1510
  %1584 = load double, double* %1583, align 8
  %1585 = getelementptr inbounds double, double* %833, i64 %1510
  %1586 = load double, double* %1585, align 8
  %1587 = getelementptr inbounds double, double* %829, i64 %1514
  %1588 = load double, double* %1587, align 8
  %1589 = getelementptr inbounds double, double* %831, i64 %1514
  %1590 = load double, double* %1589, align 8
  %1591 = getelementptr inbounds double, double* %833, i64 %1514
  %1592 = load double, double* %1591, align 8
  %1593 = getelementptr inbounds double, double* %829, i64 %1518
  %1594 = load double, double* %1593, align 8
  %1595 = getelementptr inbounds double, double* %831, i64 %1518
  %1596 = load double, double* %1595, align 8
  %1597 = getelementptr inbounds double, double* %833, i64 %1518
  %1598 = load double, double* %1597, align 8
  %1599 = getelementptr inbounds double, double* %829, i64 %1522
  %1600 = load double, double* %1599, align 8
  %1601 = getelementptr inbounds double, double* %831, i64 %1522
  %1602 = load double, double* %1601, align 8
  %1603 = getelementptr inbounds double, double* %833, i64 %1522
  %1604 = load double, double* %1603, align 8
  br label %2171

; <label>:1605                                    ; preds = %2171
  %1606 = getelementptr inbounds i32, i32* %1491, i64 %1490
  %1607 = load double*, double** %1446, align 8, !tbaa !9
  %1608 = getelementptr inbounds double, double* %1607, i64 %indvars.iv3.i.i.i.i.i
  %1609 = load double, double* %1608, align 8, !tbaa !1
  %1610 = load double*, double** %1447, align 8, !tbaa !9
  %1611 = getelementptr inbounds double, double* %1610, i64 %indvars.iv3.i.i.i.i.i
  %1612 = load double, double* %1611, align 8, !tbaa !1
  %1613 = load double, double* %1492, align 8, !tbaa !1
  %1614 = call double @cbrt(double %1613) #2
  %1615 = load i32, i32* %1606, align 4, !tbaa !12
  %1616 = getelementptr inbounds i32, i32* %1606, i64 1
  %1617 = load i32, i32* %1616, align 4, !tbaa !12
  %1618 = getelementptr inbounds i32, i32* %1606, i64 2
  %1619 = load i32, i32* %1618, align 4, !tbaa !12
  %1620 = getelementptr inbounds i32, i32* %1606, i64 3
  %1621 = load i32, i32* %1620, align 4, !tbaa !12
  %1622 = getelementptr inbounds i32, i32* %1606, i64 4
  %1623 = load i32, i32* %1622, align 4, !tbaa !12
  %1624 = getelementptr inbounds i32, i32* %1606, i64 5
  %1625 = load i32, i32* %1624, align 4, !tbaa !12
  %1626 = getelementptr inbounds i32, i32* %1606, i64 6
  %1627 = load i32, i32* %1626, align 4, !tbaa !12
  %1628 = getelementptr inbounds i32, i32* %1606, i64 7
  %1629 = load i32, i32* %1628, align 4, !tbaa !12
  %1630 = sext i32 %1615 to i64
  %1631 = load double*, double** %1448, align 8, !tbaa !9
  %1632 = getelementptr inbounds double, double* %1631, i64 %1630
  %1633 = load double, double* %1632, align 8, !tbaa !1
  %1634 = sext i32 %1617 to i64
  %1635 = getelementptr inbounds double, double* %1631, i64 %1634
  %1636 = load double, double* %1635, align 8, !tbaa !1
  %1637 = sext i32 %1619 to i64
  %1638 = getelementptr inbounds double, double* %1631, i64 %1637
  %1639 = load double, double* %1638, align 8, !tbaa !1
  %1640 = sext i32 %1621 to i64
  %1641 = getelementptr inbounds double, double* %1631, i64 %1640
  %1642 = load double, double* %1641, align 8, !tbaa !1
  %1643 = sext i32 %1623 to i64
  %1644 = getelementptr inbounds double, double* %1631, i64 %1643
  %1645 = load double, double* %1644, align 8, !tbaa !1
  %1646 = sext i32 %1625 to i64
  %1647 = getelementptr inbounds double, double* %1631, i64 %1646
  %1648 = load double, double* %1647, align 8, !tbaa !1
  %1649 = sext i32 %1627 to i64
  %1650 = getelementptr inbounds double, double* %1631, i64 %1649
  %1651 = load double, double* %1650, align 8, !tbaa !1
  %1652 = sext i32 %1629 to i64
  %1653 = getelementptr inbounds double, double* %1631, i64 %1652
  %1654 = load double, double* %1653, align 8, !tbaa !1
  %1655 = load double*, double** %1449, align 8, !tbaa !9
  %1656 = getelementptr inbounds double, double* %1655, i64 %1630
  %1657 = load double, double* %1656, align 8, !tbaa !1
  %1658 = getelementptr inbounds double, double* %1655, i64 %1634
  %1659 = load double, double* %1658, align 8, !tbaa !1
  %1660 = getelementptr inbounds double, double* %1655, i64 %1637
  %1661 = load double, double* %1660, align 8, !tbaa !1
  %1662 = getelementptr inbounds double, double* %1655, i64 %1640
  %1663 = load double, double* %1662, align 8, !tbaa !1
  %1664 = getelementptr inbounds double, double* %1655, i64 %1643
  %1665 = load double, double* %1664, align 8, !tbaa !1
  %1666 = getelementptr inbounds double, double* %1655, i64 %1646
  %1667 = load double, double* %1666, align 8, !tbaa !1
  %1668 = getelementptr inbounds double, double* %1655, i64 %1649
  %1669 = load double, double* %1668, align 8, !tbaa !1
  %1670 = getelementptr inbounds double, double* %1655, i64 %1652
  %1671 = load double, double* %1670, align 8, !tbaa !1
  %1672 = load double*, double** %1450, align 8, !tbaa !9
  %1673 = getelementptr inbounds double, double* %1672, i64 %1630
  %1674 = load double, double* %1673, align 8, !tbaa !1
  %1675 = getelementptr inbounds double, double* %1672, i64 %1634
  %1676 = load double, double* %1675, align 8, !tbaa !1
  %1677 = getelementptr inbounds double, double* %1672, i64 %1637
  %1678 = load double, double* %1677, align 8, !tbaa !1
  %1679 = getelementptr inbounds double, double* %1672, i64 %1640
  %1680 = load double, double* %1679, align 8, !tbaa !1
  %1681 = getelementptr inbounds double, double* %1672, i64 %1643
  %1682 = load double, double* %1681, align 8, !tbaa !1
  %1683 = getelementptr inbounds double, double* %1672, i64 %1646
  %1684 = load double, double* %1683, align 8, !tbaa !1
  %1685 = getelementptr inbounds double, double* %1672, i64 %1649
  %1686 = load double, double* %1685, align 8, !tbaa !1
  %1687 = getelementptr inbounds double, double* %1672, i64 %1652
  %1688 = load double, double* %1687, align 8, !tbaa !1
  %1689 = fmul double %1451, %1609
  %1690 = fmul double %1689, %1612
  %1691 = fdiv double %1690, %1614
  %1692 = load double, double* %1452, align 16, !tbaa !1
  %1693 = fmul double %1633, %1692
  %1694 = load double, double* %1453, align 16, !tbaa !1
  %1695 = fmul double %1636, %1694
  %1696 = fadd double %1693, %1695
  %1697 = load double, double* %1454, align 16, !tbaa !1
  %1698 = fmul double %1639, %1697
  %1699 = fadd double %1696, %1698
  %1700 = load double, double* %1455, align 16, !tbaa !1
  %1701 = fmul double %1642, %1700
  %1702 = fadd double %1699, %1701
  %1703 = load double, double* %1456, align 16, !tbaa !1
  %1704 = fmul double %1645, %1703
  %1705 = fadd double %1702, %1704
  %1706 = load double, double* %1457, align 16, !tbaa !1
  %1707 = fmul double %1648, %1706
  %1708 = fadd double %1705, %1707
  %1709 = load double, double* %1458, align 16, !tbaa !1
  %1710 = fmul double %1651, %1709
  %1711 = fadd double %1708, %1710
  %1712 = load double, double* %1459, align 16, !tbaa !1
  %1713 = fmul double %1654, %1712
  %1714 = fadd double %1711, %1713
  %1715 = load double, double* %1460, align 8, !tbaa !1
  %1716 = fmul double %1633, %1715
  %1717 = load double, double* %1461, align 8, !tbaa !1
  %1718 = fmul double %1636, %1717
  %1719 = fadd double %1716, %1718
  %1720 = load double, double* %1462, align 8, !tbaa !1
  %1721 = fmul double %1639, %1720
  %1722 = fadd double %1719, %1721
  %1723 = load double, double* %1463, align 8, !tbaa !1
  %1724 = fmul double %1642, %1723
  %1725 = fadd double %1722, %1724
  %1726 = load double, double* %1464, align 8, !tbaa !1
  %1727 = fmul double %1645, %1726
  %1728 = fadd double %1725, %1727
  %1729 = load double, double* %1465, align 8, !tbaa !1
  %1730 = fmul double %1648, %1729
  %1731 = fadd double %1728, %1730
  %1732 = load double, double* %1466, align 8, !tbaa !1
  %1733 = fmul double %1651, %1732
  %1734 = fadd double %1731, %1733
  %1735 = load double, double* %1467, align 8, !tbaa !1
  %1736 = fmul double %1654, %1735
  %1737 = fadd double %1734, %1736
  %1738 = load double, double* %1468, align 16, !tbaa !1
  %1739 = fmul double %1633, %1738
  %1740 = load double, double* %1469, align 16, !tbaa !1
  %1741 = fmul double %1636, %1740
  %1742 = fadd double %1739, %1741
  %1743 = load double, double* %1470, align 16, !tbaa !1
  %1744 = fmul double %1639, %1743
  %1745 = fadd double %1742, %1744
  %1746 = load double, double* %1471, align 16, !tbaa !1
  %1747 = fmul double %1642, %1746
  %1748 = fadd double %1745, %1747
  %1749 = load double, double* %1472, align 16, !tbaa !1
  %1750 = fmul double %1645, %1749
  %1751 = fadd double %1748, %1750
  %1752 = load double, double* %1473, align 16, !tbaa !1
  %1753 = fmul double %1648, %1752
  %1754 = fadd double %1751, %1753
  %1755 = load double, double* %1474, align 16, !tbaa !1
  %1756 = fmul double %1651, %1755
  %1757 = fadd double %1754, %1756
  %1758 = load double, double* %1475, align 16, !tbaa !1
  %1759 = fmul double %1654, %1758
  %1760 = fadd double %1757, %1759
  %1761 = load double, double* %1476, align 8, !tbaa !1
  %1762 = fmul double %1633, %1761
  %1763 = load double, double* %1477, align 8, !tbaa !1
  %1764 = fmul double %1636, %1763
  %1765 = fadd double %1762, %1764
  %1766 = load double, double* %1478, align 8, !tbaa !1
  %1767 = fmul double %1639, %1766
  %1768 = fadd double %1765, %1767
  %1769 = load double, double* %1479, align 8, !tbaa !1
  %1770 = fmul double %1642, %1769
  %1771 = fadd double %1768, %1770
  %1772 = load double, double* %1480, align 8, !tbaa !1
  %1773 = fmul double %1645, %1772
  %1774 = fadd double %1771, %1773
  %1775 = load double, double* %1481, align 8, !tbaa !1
  %1776 = fmul double %1648, %1775
  %1777 = fadd double %1774, %1776
  %1778 = load double, double* %1482, align 8, !tbaa !1
  %1779 = fmul double %1651, %1778
  %1780 = fadd double %1777, %1779
  %1781 = load double, double* %1483, align 8, !tbaa !1
  %1782 = fmul double %1654, %1781
  %1783 = fadd double %1780, %1782
  %1784 = fmul double %1692, %1714
  %1785 = fmul double %1715, %1737
  %1786 = fadd double %1784, %1785
  %1787 = fmul double %1738, %1760
  %1788 = fadd double %1786, %1787
  %1789 = fmul double %1761, %1783
  %1790 = fadd double %1788, %1789
  %1791 = fmul double %1691, %1790
  %1792 = fmul double %1694, %1714
  %1793 = fmul double %1717, %1737
  %1794 = fadd double %1792, %1793
  %1795 = fmul double %1740, %1760
  %1796 = fadd double %1794, %1795
  %1797 = fmul double %1763, %1783
  %1798 = fadd double %1796, %1797
  %1799 = fmul double %1691, %1798
  %1800 = fmul double %1697, %1714
  %1801 = fmul double %1720, %1737
  %1802 = fadd double %1800, %1801
  %1803 = fmul double %1743, %1760
  %1804 = fadd double %1802, %1803
  %1805 = fmul double %1766, %1783
  %1806 = fadd double %1804, %1805
  %1807 = fmul double %1691, %1806
  %1808 = fmul double %1700, %1714
  %1809 = fmul double %1723, %1737
  %1810 = fadd double %1808, %1809
  %1811 = fmul double %1746, %1760
  %1812 = fadd double %1810, %1811
  %1813 = fmul double %1769, %1783
  %1814 = fadd double %1812, %1813
  %1815 = fmul double %1691, %1814
  %1816 = fmul double %1703, %1714
  %1817 = fmul double %1726, %1737
  %1818 = fadd double %1816, %1817
  %1819 = fmul double %1749, %1760
  %1820 = fadd double %1818, %1819
  %1821 = fmul double %1772, %1783
  %1822 = fadd double %1820, %1821
  %1823 = fmul double %1691, %1822
  %1824 = fmul double %1706, %1714
  %1825 = fmul double %1729, %1737
  %1826 = fadd double %1824, %1825
  %1827 = fmul double %1752, %1760
  %1828 = fadd double %1826, %1827
  %1829 = fmul double %1775, %1783
  %1830 = fadd double %1828, %1829
  %1831 = fmul double %1691, %1830
  %1832 = fmul double %1709, %1714
  %1833 = fmul double %1732, %1737
  %1834 = fadd double %1832, %1833
  %1835 = fmul double %1755, %1760
  %1836 = fadd double %1834, %1835
  %1837 = fmul double %1778, %1783
  %1838 = fadd double %1836, %1837
  %1839 = fmul double %1691, %1838
  %1840 = fmul double %1712, %1714
  %1841 = fmul double %1735, %1737
  %1842 = fadd double %1840, %1841
  %1843 = fmul double %1758, %1760
  %1844 = fadd double %1842, %1843
  %1845 = fmul double %1781, %1783
  %1846 = fadd double %1844, %1845
  %1847 = fmul double %1691, %1846
  %1848 = fmul double %1657, %1692
  %1849 = fmul double %1659, %1694
  %1850 = fadd double %1848, %1849
  %1851 = fmul double %1661, %1697
  %1852 = fadd double %1850, %1851
  %1853 = fmul double %1663, %1700
  %1854 = fadd double %1852, %1853
  %1855 = fmul double %1665, %1703
  %1856 = fadd double %1854, %1855
  %1857 = fmul double %1667, %1706
  %1858 = fadd double %1856, %1857
  %1859 = fmul double %1669, %1709
  %1860 = fadd double %1858, %1859
  %1861 = fmul double %1671, %1712
  %1862 = fadd double %1860, %1861
  %1863 = fmul double %1657, %1715
  %1864 = fmul double %1659, %1717
  %1865 = fadd double %1863, %1864
  %1866 = fmul double %1661, %1720
  %1867 = fadd double %1865, %1866
  %1868 = fmul double %1663, %1723
  %1869 = fadd double %1867, %1868
  %1870 = fmul double %1665, %1726
  %1871 = fadd double %1869, %1870
  %1872 = fmul double %1667, %1729
  %1873 = fadd double %1871, %1872
  %1874 = fmul double %1669, %1732
  %1875 = fadd double %1873, %1874
  %1876 = fmul double %1671, %1735
  %1877 = fadd double %1875, %1876
  %1878 = fmul double %1657, %1738
  %1879 = fmul double %1659, %1740
  %1880 = fadd double %1878, %1879
  %1881 = fmul double %1661, %1743
  %1882 = fadd double %1880, %1881
  %1883 = fmul double %1663, %1746
  %1884 = fadd double %1882, %1883
  %1885 = fmul double %1665, %1749
  %1886 = fadd double %1884, %1885
  %1887 = fmul double %1667, %1752
  %1888 = fadd double %1886, %1887
  %1889 = fmul double %1669, %1755
  %1890 = fadd double %1888, %1889
  %1891 = fmul double %1671, %1758
  %1892 = fadd double %1890, %1891
  %1893 = fmul double %1657, %1761
  %1894 = fmul double %1659, %1763
  %1895 = fadd double %1893, %1894
  %1896 = fmul double %1661, %1766
  %1897 = fadd double %1895, %1896
  %1898 = fmul double %1663, %1769
  %1899 = fadd double %1897, %1898
  %1900 = fmul double %1665, %1772
  %1901 = fadd double %1899, %1900
  %1902 = fmul double %1667, %1775
  %1903 = fadd double %1901, %1902
  %1904 = fmul double %1669, %1778
  %1905 = fadd double %1903, %1904
  %1906 = fmul double %1671, %1781
  %1907 = fadd double %1905, %1906
  %1908 = fmul double %1692, %1862
  %1909 = fmul double %1715, %1877
  %1910 = fadd double %1908, %1909
  %1911 = fmul double %1738, %1892
  %1912 = fadd double %1910, %1911
  %1913 = fmul double %1761, %1907
  %1914 = fadd double %1912, %1913
  %1915 = fmul double %1691, %1914
  %1916 = fmul double %1694, %1862
  %1917 = fmul double %1717, %1877
  %1918 = fadd double %1916, %1917
  %1919 = fmul double %1740, %1892
  %1920 = fadd double %1918, %1919
  %1921 = fmul double %1763, %1907
  %1922 = fadd double %1920, %1921
  %1923 = fmul double %1691, %1922
  %1924 = fmul double %1697, %1862
  %1925 = fmul double %1720, %1877
  %1926 = fadd double %1924, %1925
  %1927 = fmul double %1743, %1892
  %1928 = fadd double %1926, %1927
  %1929 = fmul double %1766, %1907
  %1930 = fadd double %1928, %1929
  %1931 = fmul double %1691, %1930
  %1932 = fmul double %1700, %1862
  %1933 = fmul double %1723, %1877
  %1934 = fadd double %1932, %1933
  %1935 = fmul double %1746, %1892
  %1936 = fadd double %1934, %1935
  %1937 = fmul double %1769, %1907
  %1938 = fadd double %1936, %1937
  %1939 = fmul double %1691, %1938
  %1940 = fmul double %1703, %1862
  %1941 = fmul double %1726, %1877
  %1942 = fadd double %1940, %1941
  %1943 = fmul double %1749, %1892
  %1944 = fadd double %1942, %1943
  %1945 = fmul double %1772, %1907
  %1946 = fadd double %1944, %1945
  %1947 = fmul double %1691, %1946
  %1948 = fmul double %1706, %1862
  %1949 = fmul double %1729, %1877
  %1950 = fadd double %1948, %1949
  %1951 = fmul double %1752, %1892
  %1952 = fadd double %1950, %1951
  %1953 = fmul double %1775, %1907
  %1954 = fadd double %1952, %1953
  %1955 = fmul double %1691, %1954
  %1956 = fmul double %1709, %1862
  %1957 = fmul double %1732, %1877
  %1958 = fadd double %1956, %1957
  %1959 = fmul double %1755, %1892
  %1960 = fadd double %1958, %1959
  %1961 = fmul double %1778, %1907
  %1962 = fadd double %1960, %1961
  %1963 = fmul double %1691, %1962
  %1964 = fmul double %1712, %1862
  %1965 = fmul double %1735, %1877
  %1966 = fadd double %1964, %1965
  %1967 = fmul double %1758, %1892
  %1968 = fadd double %1966, %1967
  %1969 = fmul double %1781, %1907
  %1970 = fadd double %1968, %1969
  %1971 = fmul double %1691, %1970
  %1972 = fmul double %1674, %1692
  %1973 = fmul double %1676, %1694
  %1974 = fadd double %1972, %1973
  %1975 = fmul double %1678, %1697
  %1976 = fadd double %1974, %1975
  %1977 = fmul double %1680, %1700
  %1978 = fadd double %1976, %1977
  %1979 = fmul double %1682, %1703
  %1980 = fadd double %1978, %1979
  %1981 = fmul double %1684, %1706
  %1982 = fadd double %1980, %1981
  %1983 = fmul double %1686, %1709
  %1984 = fadd double %1982, %1983
  %1985 = fmul double %1688, %1712
  %1986 = fadd double %1984, %1985
  %1987 = fmul double %1674, %1715
  %1988 = fmul double %1676, %1717
  %1989 = fadd double %1987, %1988
  %1990 = fmul double %1678, %1720
  %1991 = fadd double %1989, %1990
  %1992 = fmul double %1680, %1723
  %1993 = fadd double %1991, %1992
  %1994 = fmul double %1682, %1726
  %1995 = fadd double %1993, %1994
  %1996 = fmul double %1684, %1729
  %1997 = fadd double %1995, %1996
  %1998 = fmul double %1686, %1732
  %1999 = fadd double %1997, %1998
  %2000 = fmul double %1688, %1735
  %2001 = fadd double %1999, %2000
  %2002 = fmul double %1674, %1738
  %2003 = fmul double %1676, %1740
  %2004 = fadd double %2002, %2003
  %2005 = fmul double %1678, %1743
  %2006 = fadd double %2004, %2005
  %2007 = fmul double %1680, %1746
  %2008 = fadd double %2006, %2007
  %2009 = fmul double %1682, %1749
  %2010 = fadd double %2008, %2009
  %2011 = fmul double %1684, %1752
  %2012 = fadd double %2010, %2011
  %2013 = fmul double %1686, %1755
  %2014 = fadd double %2012, %2013
  %2015 = fmul double %1688, %1758
  %2016 = fadd double %2014, %2015
  %2017 = fmul double %1674, %1761
  %2018 = fmul double %1676, %1763
  %2019 = fadd double %2017, %2018
  %2020 = fmul double %1678, %1766
  %2021 = fadd double %2019, %2020
  %2022 = fmul double %1680, %1769
  %2023 = fadd double %2021, %2022
  %2024 = fmul double %1682, %1772
  %2025 = fadd double %2023, %2024
  %2026 = fmul double %1684, %1775
  %2027 = fadd double %2025, %2026
  %2028 = fmul double %1686, %1778
  %2029 = fadd double %2027, %2028
  %2030 = fmul double %1688, %1781
  %2031 = fadd double %2029, %2030
  %2032 = fmul double %1692, %1986
  %2033 = fmul double %1715, %2001
  %2034 = fadd double %2032, %2033
  %2035 = fmul double %1738, %2016
  %2036 = fadd double %2034, %2035
  %2037 = fmul double %1761, %2031
  %2038 = fadd double %2036, %2037
  %2039 = fmul double %1691, %2038
  %2040 = fmul double %1694, %1986
  %2041 = fmul double %1717, %2001
  %2042 = fadd double %2040, %2041
  %2043 = fmul double %1740, %2016
  %2044 = fadd double %2042, %2043
  %2045 = fmul double %1763, %2031
  %2046 = fadd double %2044, %2045
  %2047 = fmul double %1691, %2046
  %2048 = fmul double %1697, %1986
  %2049 = fmul double %1720, %2001
  %2050 = fadd double %2048, %2049
  %2051 = fmul double %1743, %2016
  %2052 = fadd double %2050, %2051
  %2053 = fmul double %1766, %2031
  %2054 = fadd double %2052, %2053
  %2055 = fmul double %1691, %2054
  %2056 = fmul double %1700, %1986
  %2057 = fmul double %1723, %2001
  %2058 = fadd double %2056, %2057
  %2059 = fmul double %1746, %2016
  %2060 = fadd double %2058, %2059
  %2061 = fmul double %1769, %2031
  %2062 = fadd double %2060, %2061
  %2063 = fmul double %1691, %2062
  %2064 = fmul double %1703, %1986
  %2065 = fmul double %1726, %2001
  %2066 = fadd double %2064, %2065
  %2067 = fmul double %1749, %2016
  %2068 = fadd double %2066, %2067
  %2069 = fmul double %1772, %2031
  %2070 = fadd double %2068, %2069
  %2071 = fmul double %1691, %2070
  %2072 = fmul double %1706, %1986
  %2073 = fmul double %1729, %2001
  %2074 = fadd double %2072, %2073
  %2075 = fmul double %1752, %2016
  %2076 = fadd double %2074, %2075
  %2077 = fmul double %1775, %2031
  %2078 = fadd double %2076, %2077
  %2079 = fmul double %1691, %2078
  %2080 = fmul double %1709, %1986
  %2081 = fmul double %1732, %2001
  %2082 = fadd double %2080, %2081
  %2083 = fmul double %1755, %2016
  %2084 = fadd double %2082, %2083
  %2085 = fmul double %1778, %2031
  %2086 = fadd double %2084, %2085
  %2087 = fmul double %1691, %2086
  %2088 = fmul double %1712, %1986
  %2089 = fmul double %1735, %2001
  %2090 = fadd double %2088, %2089
  %2091 = fmul double %1758, %2016
  %2092 = fadd double %2090, %2091
  %2093 = fmul double %1781, %2031
  %2094 = fadd double %2092, %2093
  %2095 = fmul double %1691, %2094
  %2096 = load double*, double** %1484, align 8, !tbaa !9
  %2097 = getelementptr inbounds double, double* %2096, i64 %1630
  %2098 = load double, double* %2097, align 8, !tbaa !1
  %2099 = fadd double %2098, %1791
  store double %2099, double* %2097, align 8, !tbaa !1
  %2100 = load double*, double** %1485, align 8, !tbaa !9
  %2101 = getelementptr inbounds double, double* %2100, i64 %1630
  %2102 = load double, double* %2101, align 8, !tbaa !1
  %2103 = fadd double %2102, %1915
  store double %2103, double* %2101, align 8, !tbaa !1
  %2104 = load double*, double** %1486, align 8, !tbaa !9
  %2105 = getelementptr inbounds double, double* %2104, i64 %1630
  %2106 = load double, double* %2105, align 8, !tbaa !1
  %2107 = fadd double %2039, %2106
  store double %2107, double* %2105, align 8, !tbaa !1
  %2108 = getelementptr inbounds double, double* %2096, i64 %1634
  %2109 = load double, double* %2108, align 8, !tbaa !1
  %2110 = fadd double %1799, %2109
  store double %2110, double* %2108, align 8, !tbaa !1
  %2111 = getelementptr inbounds double, double* %2100, i64 %1634
  %2112 = load double, double* %2111, align 8, !tbaa !1
  %2113 = fadd double %1923, %2112
  store double %2113, double* %2111, align 8, !tbaa !1
  %2114 = getelementptr inbounds double, double* %2104, i64 %1634
  %2115 = load double, double* %2114, align 8, !tbaa !1
  %2116 = fadd double %2047, %2115
  store double %2116, double* %2114, align 8, !tbaa !1
  %2117 = getelementptr inbounds double, double* %2096, i64 %1637
  %2118 = load double, double* %2117, align 8, !tbaa !1
  %2119 = fadd double %1807, %2118
  store double %2119, double* %2117, align 8, !tbaa !1
  %2120 = getelementptr inbounds double, double* %2100, i64 %1637
  %2121 = load double, double* %2120, align 8, !tbaa !1
  %2122 = fadd double %1931, %2121
  store double %2122, double* %2120, align 8, !tbaa !1
  %2123 = getelementptr inbounds double, double* %2104, i64 %1637
  %2124 = load double, double* %2123, align 8, !tbaa !1
  %2125 = fadd double %2055, %2124
  store double %2125, double* %2123, align 8, !tbaa !1
  %2126 = getelementptr inbounds double, double* %2096, i64 %1640
  %2127 = load double, double* %2126, align 8, !tbaa !1
  %2128 = fadd double %1815, %2127
  store double %2128, double* %2126, align 8, !tbaa !1
  %2129 = getelementptr inbounds double, double* %2100, i64 %1640
  %2130 = load double, double* %2129, align 8, !tbaa !1
  %2131 = fadd double %1939, %2130
  store double %2131, double* %2129, align 8, !tbaa !1
  %2132 = getelementptr inbounds double, double* %2104, i64 %1640
  %2133 = load double, double* %2132, align 8, !tbaa !1
  %2134 = fadd double %2063, %2133
  store double %2134, double* %2132, align 8, !tbaa !1
  %2135 = getelementptr inbounds double, double* %2096, i64 %1643
  %2136 = load double, double* %2135, align 8, !tbaa !1
  %2137 = fadd double %1823, %2136
  store double %2137, double* %2135, align 8, !tbaa !1
  %2138 = getelementptr inbounds double, double* %2100, i64 %1643
  %2139 = load double, double* %2138, align 8, !tbaa !1
  %2140 = fadd double %1947, %2139
  store double %2140, double* %2138, align 8, !tbaa !1
  %2141 = getelementptr inbounds double, double* %2104, i64 %1643
  %2142 = load double, double* %2141, align 8, !tbaa !1
  %2143 = fadd double %2071, %2142
  store double %2143, double* %2141, align 8, !tbaa !1
  %2144 = getelementptr inbounds double, double* %2096, i64 %1646
  %2145 = load double, double* %2144, align 8, !tbaa !1
  %2146 = fadd double %1831, %2145
  store double %2146, double* %2144, align 8, !tbaa !1
  %2147 = getelementptr inbounds double, double* %2100, i64 %1646
  %2148 = load double, double* %2147, align 8, !tbaa !1
  %2149 = fadd double %1955, %2148
  store double %2149, double* %2147, align 8, !tbaa !1
  %2150 = getelementptr inbounds double, double* %2104, i64 %1646
  %2151 = load double, double* %2150, align 8, !tbaa !1
  %2152 = fadd double %2079, %2151
  store double %2152, double* %2150, align 8, !tbaa !1
  %2153 = getelementptr inbounds double, double* %2096, i64 %1649
  %2154 = load double, double* %2153, align 8, !tbaa !1
  %2155 = fadd double %1839, %2154
  store double %2155, double* %2153, align 8, !tbaa !1
  %2156 = getelementptr inbounds double, double* %2100, i64 %1649
  %2157 = load double, double* %2156, align 8, !tbaa !1
  %2158 = fadd double %1963, %2157
  store double %2158, double* %2156, align 8, !tbaa !1
  %2159 = getelementptr inbounds double, double* %2104, i64 %1649
  %2160 = load double, double* %2159, align 8, !tbaa !1
  %2161 = fadd double %2087, %2160
  store double %2161, double* %2159, align 8, !tbaa !1
  %2162 = getelementptr inbounds double, double* %2096, i64 %1652
  %2163 = load double, double* %2162, align 8, !tbaa !1
  %2164 = fadd double %1847, %2163
  store double %2164, double* %2162, align 8, !tbaa !1
  %2165 = getelementptr inbounds double, double* %2100, i64 %1652
  %2166 = load double, double* %2165, align 8, !tbaa !1
  %2167 = fadd double %1971, %2166
  store double %2167, double* %2165, align 8, !tbaa !1
  %2168 = getelementptr inbounds double, double* %2104, i64 %1652
  %2169 = load double, double* %2168, align 8, !tbaa !1
  %2170 = fadd double %2095, %2169
  store double %2170, double* %2168, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 256, i8* nonnull %1444) #2
  %indvars.iv.next4.i.i.i.i.i = add nuw nsw i64 %indvars.iv3.i.i.i.i.i, 1
  %lftr.wideiv98 = trunc i64 %indvars.iv.next4.i.i.i.i.i to i32
  %exitcond99 = icmp eq i32 %lftr.wideiv98, %824
  br i1 %exitcond99, label %_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i.loopexit, label %1487

; <label>:2171                                    ; preds = %2171, %1487
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %1487 ], [ %indvars.iv.next.i.i.i.i.i, %2171 ]
  %2172 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 0
  %2173 = load double, double* %2172, align 16, !tbaa !1
  %2174 = fmul double %1496, %2173
  %2175 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 1
  %2176 = load double, double* %2175, align 8, !tbaa !1
  %2177 = fmul double %1500, %2176
  %2178 = fadd double %2174, %2177
  %2179 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 2
  %2180 = load double, double* %2179, align 16, !tbaa !1
  %2181 = fmul double %1504, %2180
  %2182 = fadd double %2178, %2181
  %2183 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 3
  %2184 = load double, double* %2183, align 8, !tbaa !1
  %2185 = fmul double %1508, %2184
  %2186 = fadd double %2182, %2185
  %2187 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 4
  %2188 = load double, double* %2187, align 16, !tbaa !1
  %2189 = fmul double %1512, %2188
  %2190 = fadd double %2186, %2189
  %2191 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 5
  %2192 = load double, double* %2191, align 8, !tbaa !1
  %2193 = fmul double %1516, %2192
  %2194 = fadd double %2190, %2193
  %2195 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 6
  %2196 = load double, double* %2195, align 16, !tbaa !1
  %2197 = fmul double %1520, %2196
  %2198 = fadd double %2194, %2197
  %2199 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma.i.i.i.i.i, i64 0, i64 %indvars.iv.i.i.i.i.i, i64 7
  %2200 = load double, double* %2199, align 8, !tbaa !1
  %2201 = fmul double %1524, %2200
  %2202 = fadd double %2198, %2201
  %2203 = fmul double %1526, %2173
  %2204 = fmul double %1528, %2176
  %2205 = fadd double %2203, %2204
  %2206 = fmul double %1530, %2180
  %2207 = fadd double %2205, %2206
  %2208 = fmul double %1532, %2184
  %2209 = fadd double %2207, %2208
  %2210 = fmul double %1534, %2188
  %2211 = fadd double %2209, %2210
  %2212 = fmul double %1536, %2192
  %2213 = fadd double %2211, %2212
  %2214 = fmul double %1538, %2196
  %2215 = fadd double %2213, %2214
  %2216 = fmul double %1540, %2200
  %2217 = fadd double %2215, %2216
  %2218 = fmul double %1542, %2173
  %2219 = fmul double %1544, %2176
  %2220 = fadd double %2218, %2219
  %2221 = fmul double %1546, %2180
  %2222 = fadd double %2220, %2221
  %2223 = fmul double %1548, %2184
  %2224 = fadd double %2222, %2223
  %2225 = fmul double %1550, %2188
  %2226 = fadd double %2224, %2225
  %2227 = fmul double %1552, %2192
  %2228 = fadd double %2226, %2227
  %2229 = fmul double %1554, %2196
  %2230 = fadd double %2228, %2229
  %2231 = fmul double %1556, %2200
  %2232 = fadd double %2230, %2231
  %2233 = fmul double %1558, %2202
  %2234 = fmul double %1560, %2217
  %2235 = fadd double %2233, %2234
  %2236 = fmul double %1562, %2232
  %2237 = fadd double %2236, %2235
  %2238 = fmul double %1494, %2237
  %2239 = fsub double %2173, %2238
  %2240 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 0, i64 %indvars.iv.i.i.i.i.i
  store double %2239, double* %2240, align 8, !tbaa !1
  %2241 = fmul double %1564, %2202
  %2242 = fmul double %1566, %2217
  %2243 = fadd double %2241, %2242
  %2244 = fmul double %1568, %2232
  %2245 = fadd double %2244, %2243
  %2246 = fmul double %1494, %2245
  %2247 = fsub double %2176, %2246
  %2248 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 1, i64 %indvars.iv.i.i.i.i.i
  store double %2247, double* %2248, align 8, !tbaa !1
  %2249 = fmul double %1570, %2202
  %2250 = fmul double %1572, %2217
  %2251 = fadd double %2249, %2250
  %2252 = fmul double %1574, %2232
  %2253 = fadd double %2252, %2251
  %2254 = fmul double %1494, %2253
  %2255 = fsub double %2180, %2254
  %2256 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 2, i64 %indvars.iv.i.i.i.i.i
  store double %2255, double* %2256, align 8, !tbaa !1
  %2257 = fmul double %1576, %2202
  %2258 = fmul double %1578, %2217
  %2259 = fadd double %2257, %2258
  %2260 = fmul double %1580, %2232
  %2261 = fadd double %2260, %2259
  %2262 = fmul double %1494, %2261
  %2263 = fsub double %2184, %2262
  %2264 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 3, i64 %indvars.iv.i.i.i.i.i
  store double %2263, double* %2264, align 8, !tbaa !1
  %2265 = fmul double %1582, %2202
  %2266 = fmul double %1584, %2217
  %2267 = fadd double %2265, %2266
  %2268 = fmul double %1586, %2232
  %2269 = fadd double %2268, %2267
  %2270 = fmul double %1494, %2269
  %2271 = fsub double %2188, %2270
  %2272 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 4, i64 %indvars.iv.i.i.i.i.i
  store double %2271, double* %2272, align 8, !tbaa !1
  %2273 = fmul double %1588, %2202
  %2274 = fmul double %1590, %2217
  %2275 = fadd double %2273, %2274
  %2276 = fmul double %1592, %2232
  %2277 = fadd double %2276, %2275
  %2278 = fmul double %1494, %2277
  %2279 = fsub double %2192, %2278
  %2280 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 5, i64 %indvars.iv.i.i.i.i.i
  store double %2279, double* %2280, align 8, !tbaa !1
  %2281 = fmul double %1594, %2202
  %2282 = fmul double %1596, %2217
  %2283 = fadd double %2281, %2282
  %2284 = fmul double %1598, %2232
  %2285 = fadd double %2284, %2283
  %2286 = fmul double %1494, %2285
  %2287 = fsub double %2196, %2286
  %2288 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 6, i64 %indvars.iv.i.i.i.i.i
  store double %2287, double* %2288, align 8, !tbaa !1
  %2289 = fmul double %1600, %2202
  %2290 = fmul double %1602, %2217
  %2291 = fadd double %2289, %2290
  %2292 = fmul double %1604, %2232
  %2293 = fadd double %2292, %2291
  %2294 = fmul double %1494, %2293
  %2295 = fsub double %2200, %2294
  %2296 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam.i.i.i.i.i, i64 0, i64 7, i64 %indvars.iv.i.i.i.i.i
  store double %2295, double* %2296, align 8, !tbaa !1
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1
  %exitcond.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 4
  br i1 %exitcond.i.i.i.i.i, label %1605, label %2171

_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i.loopexit: ; preds = %1605
  br label %_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i

_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i: ; preds = %_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i.loopexit, %1411
  call void @llvm.lifetime.end(i64 256, i8* %1412) #2
  br label %2297

; <label>:2297                                    ; preds = %_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %2298 = icmp eq i8* %838, null
  br i1 %2298, label %_Z7ReleaseIdEvPPT_.exit7.i.i.i.i, label %2299

; <label>:2299                                    ; preds = %2297
  call void @free(i8* nonnull %838) #2
  br label %_Z7ReleaseIdEvPPT_.exit7.i.i.i.i

_Z7ReleaseIdEvPPT_.exit7.i.i.i.i:                 ; preds = %2299, %2297
  %2300 = icmp eq i8* %836, null
  br i1 %2300, label %_Z7ReleaseIdEvPPT_.exit6.i.i.i.i, label %2301

; <label>:2301                                    ; preds = %_Z7ReleaseIdEvPPT_.exit7.i.i.i.i
  call void @free(i8* nonnull %836) #2
  br label %_Z7ReleaseIdEvPPT_.exit6.i.i.i.i

_Z7ReleaseIdEvPPT_.exit6.i.i.i.i:                 ; preds = %2301, %_Z7ReleaseIdEvPPT_.exit7.i.i.i.i
  %2302 = icmp eq i8* %834, null
  br i1 %2302, label %_Z7ReleaseIdEvPPT_.exit5.i.i.i.i, label %2303

; <label>:2303                                    ; preds = %_Z7ReleaseIdEvPPT_.exit6.i.i.i.i
  call void @free(i8* nonnull %834) #2
  br label %_Z7ReleaseIdEvPPT_.exit5.i.i.i.i

_Z7ReleaseIdEvPPT_.exit5.i.i.i.i:                 ; preds = %2303, %_Z7ReleaseIdEvPPT_.exit6.i.i.i.i
  %2304 = icmp eq i8* %832, null
  br i1 %2304, label %_Z7ReleaseIdEvPPT_.exit4.i.i.i.i, label %2305

; <label>:2305                                    ; preds = %_Z7ReleaseIdEvPPT_.exit5.i.i.i.i
  call void @free(i8* nonnull %832) #2
  br label %_Z7ReleaseIdEvPPT_.exit4.i.i.i.i

_Z7ReleaseIdEvPPT_.exit4.i.i.i.i:                 ; preds = %2305, %_Z7ReleaseIdEvPPT_.exit5.i.i.i.i
  %2306 = icmp eq i8* %830, null
  br i1 %2306, label %_Z7ReleaseIdEvPPT_.exit3.i.i.i.i, label %2307

; <label>:2307                                    ; preds = %_Z7ReleaseIdEvPPT_.exit4.i.i.i.i
  call void @free(i8* nonnull %830) #2
  br label %_Z7ReleaseIdEvPPT_.exit3.i.i.i.i

_Z7ReleaseIdEvPPT_.exit3.i.i.i.i:                 ; preds = %2307, %_Z7ReleaseIdEvPPT_.exit4.i.i.i.i
  %2308 = icmp eq i8* %828, null
  br i1 %2308, label %_ZL28CalcHourglassControlForElemsR6DomainPdd.exit.i.i.i, label %2309

; <label>:2309                                    ; preds = %_Z7ReleaseIdEvPPT_.exit3.i.i.i.i
  call void @free(i8* nonnull %828) #2
  br label %_ZL28CalcHourglassControlForElemsR6DomainPdd.exit.i.i.i

_ZL28CalcHourglassControlForElemsR6DomainPdd.exit.i.i.i: ; preds = %2309, %_Z7ReleaseIdEvPPT_.exit3.i.i.i.i
  %2310 = icmp eq i8* %78, null
  br i1 %2310, label %_Z7ReleaseIdEvPPT_.exit4.i.i.i, label %2311

; <label>:2311                                    ; preds = %_ZL28CalcHourglassControlForElemsR6DomainPdd.exit.i.i.i
  call void @free(i8* nonnull %78) #2
  br label %_Z7ReleaseIdEvPPT_.exit4.i.i.i

_Z7ReleaseIdEvPPT_.exit4.i.i.i:                   ; preds = %2311, %_ZL28CalcHourglassControlForElemsR6DomainPdd.exit.i.i.i
  %2312 = icmp eq i8* %76, null
  br i1 %2312, label %_Z7ReleaseIdEvPPT_.exit3.i.i.i, label %2313

; <label>:2313                                    ; preds = %_Z7ReleaseIdEvPPT_.exit4.i.i.i
  call void @free(i8* nonnull %76) #2
  br label %_Z7ReleaseIdEvPPT_.exit3.i.i.i

_Z7ReleaseIdEvPPT_.exit3.i.i.i:                   ; preds = %2313, %_Z7ReleaseIdEvPPT_.exit4.i.i.i
  %2314 = icmp eq i8* %74, null
  br i1 %2314, label %_Z7ReleaseIdEvPPT_.exit2.i.i.i, label %2315

; <label>:2315                                    ; preds = %_Z7ReleaseIdEvPPT_.exit3.i.i.i
  call void @free(i8* nonnull %74) #2
  br label %_Z7ReleaseIdEvPPT_.exit2.i.i.i

_Z7ReleaseIdEvPPT_.exit2.i.i.i:                   ; preds = %2315, %_Z7ReleaseIdEvPPT_.exit3.i.i.i
  %2316 = icmp eq i8* %72, null
  br i1 %2316, label %_ZL17CalcForceForNodesR6Domain.exit.i, label %2317

; <label>:2317                                    ; preds = %_Z7ReleaseIdEvPPT_.exit2.i.i.i
  call void @free(i8* nonnull %72) #2
  br label %_ZL17CalcForceForNodesR6Domain.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit.i.i.i, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %2318 = getelementptr inbounds double, double* %79, i64 %indvars.iv.i.i.i
  %2319 = load double, double* %2318, align 8, !tbaa !1
  %2320 = fcmp ugt double %2319, 0.000000e+00
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %2320, label %_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii.exit.i.i.i, label %2321

; <label>:2321                                    ; preds = %.lr.ph.i.i.i
  call void @exit(i32 -1) #20
  unreachable

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.split.split
  %indvars.iv.i9.i = phi i64 [ %indvars.iv.i9.i.unr, %scalar.ph.preheader.split.split ], [ %indvars.iv.next.i10.i.3, %scalar.ph ]
  %2322 = getelementptr inbounds double, double* %9, i64 %indvars.iv.i9.i
  store double 0.000000e+00, double* %2322, align 8, !tbaa !1
  %2323 = getelementptr inbounds double, double* %11, i64 %indvars.iv.i9.i
  store double 0.000000e+00, double* %2323, align 8, !tbaa !1
  %2324 = getelementptr inbounds double, double* %13, i64 %indvars.iv.i9.i
  store double 0.000000e+00, double* %2324, align 8, !tbaa !1
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1
  %2325 = getelementptr inbounds double, double* %9, i64 %indvars.iv.next.i10.i
  store double 0.000000e+00, double* %2325, align 8, !tbaa !1
  %2326 = getelementptr inbounds double, double* %11, i64 %indvars.iv.next.i10.i
  store double 0.000000e+00, double* %2326, align 8, !tbaa !1
  %2327 = getelementptr inbounds double, double* %13, i64 %indvars.iv.next.i10.i
  store double 0.000000e+00, double* %2327, align 8, !tbaa !1
  %indvars.iv.next.i10.i.1 = add nsw i64 %indvars.iv.i9.i, 2
  %2328 = getelementptr inbounds double, double* %9, i64 %indvars.iv.next.i10.i.1
  store double 0.000000e+00, double* %2328, align 8, !tbaa !1
  %2329 = getelementptr inbounds double, double* %11, i64 %indvars.iv.next.i10.i.1
  store double 0.000000e+00, double* %2329, align 8, !tbaa !1
  %2330 = getelementptr inbounds double, double* %13, i64 %indvars.iv.next.i10.i.1
  store double 0.000000e+00, double* %2330, align 8, !tbaa !1
  %indvars.iv.next.i10.i.2 = add nsw i64 %indvars.iv.i9.i, 3
  %2331 = getelementptr inbounds double, double* %9, i64 %indvars.iv.next.i10.i.2
  store double 0.000000e+00, double* %2331, align 8, !tbaa !1
  %2332 = getelementptr inbounds double, double* %11, i64 %indvars.iv.next.i10.i.2
  store double 0.000000e+00, double* %2332, align 8, !tbaa !1
  %2333 = getelementptr inbounds double, double* %13, i64 %indvars.iv.next.i10.i.2
  store double 0.000000e+00, double* %2333, align 8, !tbaa !1
  %indvars.iv.next.i10.i.3 = add nsw i64 %indvars.iv.i9.i, 4
  %lftr.wideiv104.3 = trunc i64 %indvars.iv.next.i10.i.3 to i32
  %exitcond105.3 = icmp eq i32 %lftr.wideiv104.3, %6
  br i1 %exitcond105.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !37

_ZL17CalcForceForNodesR6Domain.exit.i:            ; preds = %2317, %_Z7ReleaseIdEvPPT_.exit2.i.i.i, %._crit_edge.i.i
  %2334 = load i32, i32* %5, align 4, !tbaa !12
  %2335 = icmp sgt i32 %2334, 0
  br i1 %2335, label %.lr.ph.i11.i, label %_ZL24CalcAccelerationForNodesR6Domaini.exit.i

.lr.ph.i11.i:                                     ; preds = %_ZL17CalcForceForNodesR6Domain.exit.i
  %2336 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 9, i32 0, i32 0, i32 0
  %2337 = load double*, double** %2336, align 8
  %2338 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 12, i32 0, i32 0, i32 0
  %2339 = load double*, double** %2338, align 8
  %2340 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 6, i32 0, i32 0, i32 0
  %2341 = load double*, double** %2340, align 8
  %2342 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 10, i32 0, i32 0, i32 0
  %2343 = load double*, double** %2342, align 8
  %2344 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 7, i32 0, i32 0, i32 0
  %2345 = load double*, double** %2344, align 8
  %2346 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 11, i32 0, i32 0, i32 0
  %2347 = load double*, double** %2346, align 8
  %2348 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 8, i32 0, i32 0, i32 0
  %2349 = load double*, double** %2348, align 8
  br label %2350

; <label>:2350                                    ; preds = %2350, %.lr.ph.i11.i
  %indvars.iv.i13.i = phi i64 [ 0, %.lr.ph.i11.i ], [ %indvars.iv.next.i14.i, %2350 ]
  %2351 = getelementptr inbounds double, double* %2337, i64 %indvars.iv.i13.i
  %2352 = load double, double* %2351, align 8, !tbaa !1
  %2353 = getelementptr inbounds double, double* %2339, i64 %indvars.iv.i13.i
  %2354 = load double, double* %2353, align 8, !tbaa !1
  %2355 = fdiv double %2352, %2354
  %2356 = getelementptr inbounds double, double* %2341, i64 %indvars.iv.i13.i
  store double %2355, double* %2356, align 8, !tbaa !1
  %2357 = getelementptr inbounds double, double* %2343, i64 %indvars.iv.i13.i
  %2358 = load double, double* %2357, align 8, !tbaa !1
  %2359 = load double, double* %2353, align 8, !tbaa !1
  %2360 = fdiv double %2358, %2359
  %2361 = getelementptr inbounds double, double* %2345, i64 %indvars.iv.i13.i
  store double %2360, double* %2361, align 8, !tbaa !1
  %2362 = getelementptr inbounds double, double* %2347, i64 %indvars.iv.i13.i
  %2363 = load double, double* %2362, align 8, !tbaa !1
  %2364 = load double, double* %2353, align 8, !tbaa !1
  %2365 = fdiv double %2363, %2364
  %2366 = getelementptr inbounds double, double* %2349, i64 %indvars.iv.i13.i
  store double %2365, double* %2366, align 8, !tbaa !1
  %indvars.iv.next.i14.i = add nuw nsw i64 %indvars.iv.i13.i, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next.i14.i to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %2334
  br i1 %exitcond97, label %_ZL24CalcAccelerationForNodesR6Domaini.exit.i.loopexit, label %2350

_ZL24CalcAccelerationForNodesR6Domaini.exit.i.loopexit: ; preds = %2350
  br label %_ZL24CalcAccelerationForNodesR6Domaini.exit.i

_ZL24CalcAccelerationForNodesR6Domaini.exit.i:    ; preds = %_ZL24CalcAccelerationForNodesR6Domaini.exit.i.loopexit, %_ZL17CalcForceForNodesR6Domain.exit.i
  %2367 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 85
  %2368 = load i32, i32* %2367, align 4, !tbaa !12
  %2369 = add i32 %2368, 1
  %2370 = mul i32 %2369, %2369
  %2371 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 13, i32 0, i32 0, i32 0
  %2372 = load i32*, i32** %2371, align 8, !tbaa !5
  %2373 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 13, i32 0, i32 0, i32 1
  %2374 = load i32*, i32** %2373, align 8, !tbaa !38
  %2375 = icmp ne i32* %2372, %2374
  %2376 = icmp ne i32 %2370, 0
  %or.cond.i.i = and i1 %2375, %2376
  br i1 %or.cond.i.i, label %.lr.ph11.i.i, label %.loopexit6.i.i

.lr.ph11.i.i:                                     ; preds = %_ZL24CalcAccelerationForNodesR6Domaini.exit.i
  %2377 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 6, i32 0, i32 0, i32 0
  %2378 = load double*, double** %2377, align 8
  %2379 = zext i32 %2370 to i64
  %2380 = add nsw i64 %2379, -1
  %xtraiter339 = and i64 %2379, 3
  %lcmp.mod340 = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340, label %.lr.ph11.i.i.split, label %.preheader350

.preheader350:                                    ; preds = %.lr.ph11.i.i
  br label %2381

; <label>:2381                                    ; preds = %2381, %.preheader350
  %indvars.iv16.i.i.prol = phi i64 [ %indvars.iv.next17.i.i.prol, %2381 ], [ 0, %.preheader350 ]
  %prol.iter341 = phi i64 [ %prol.iter341.sub, %2381 ], [ %xtraiter339, %.preheader350 ]
  %2382 = getelementptr inbounds i32, i32* %2372, i64 %indvars.iv16.i.i.prol
  %2383 = load i32, i32* %2382, align 4, !tbaa !12
  %2384 = sext i32 %2383 to i64
  %2385 = getelementptr inbounds double, double* %2378, i64 %2384
  store double 0.000000e+00, double* %2385, align 8, !tbaa !1
  %indvars.iv.next17.i.i.prol = add nuw nsw i64 %indvars.iv16.i.i.prol, 1
  %prol.iter341.sub = add i64 %prol.iter341, -1
  %prol.iter341.cmp = icmp eq i64 %prol.iter341.sub, 0
  br i1 %prol.iter341.cmp, label %.lr.ph11.i.i.split.loopexit, label %2381, !llvm.loop !39

.lr.ph11.i.i.split.loopexit:                      ; preds = %2381
  br label %.lr.ph11.i.i.split

.lr.ph11.i.i.split:                               ; preds = %.lr.ph11.i.i.split.loopexit, %.lr.ph11.i.i
  %indvars.iv16.i.i.unr = phi i64 [ 0, %.lr.ph11.i.i ], [ %indvars.iv.next17.i.i.prol, %.lr.ph11.i.i.split.loopexit ]
  %2386 = icmp ult i64 %2380, 3
  br i1 %2386, label %.loopexit6.i.i.loopexit, label %.lr.ph11.i.i.split.split

.lr.ph11.i.i.split.split:                         ; preds = %.lr.ph11.i.i.split
  br label %2387

; <label>:2387                                    ; preds = %2387, %.lr.ph11.i.i.split.split
  %indvars.iv16.i.i = phi i64 [ %indvars.iv16.i.i.unr, %.lr.ph11.i.i.split.split ], [ %indvars.iv.next17.i.i.3, %2387 ]
  %2388 = getelementptr inbounds i32, i32* %2372, i64 %indvars.iv16.i.i
  %2389 = load i32, i32* %2388, align 4, !tbaa !12
  %2390 = sext i32 %2389 to i64
  %2391 = getelementptr inbounds double, double* %2378, i64 %2390
  store double 0.000000e+00, double* %2391, align 8, !tbaa !1
  %indvars.iv.next17.i.i = add nuw nsw i64 %indvars.iv16.i.i, 1
  %2392 = getelementptr inbounds i32, i32* %2372, i64 %indvars.iv.next17.i.i
  %2393 = load i32, i32* %2392, align 4, !tbaa !12
  %2394 = sext i32 %2393 to i64
  %2395 = getelementptr inbounds double, double* %2378, i64 %2394
  store double 0.000000e+00, double* %2395, align 8, !tbaa !1
  %indvars.iv.next17.i.i.1 = add nsw i64 %indvars.iv16.i.i, 2
  %2396 = getelementptr inbounds i32, i32* %2372, i64 %indvars.iv.next17.i.i.1
  %2397 = load i32, i32* %2396, align 4, !tbaa !12
  %2398 = sext i32 %2397 to i64
  %2399 = getelementptr inbounds double, double* %2378, i64 %2398
  store double 0.000000e+00, double* %2399, align 8, !tbaa !1
  %indvars.iv.next17.i.i.2 = add nsw i64 %indvars.iv16.i.i, 3
  %2400 = getelementptr inbounds i32, i32* %2372, i64 %indvars.iv.next17.i.i.2
  %2401 = load i32, i32* %2400, align 4, !tbaa !12
  %2402 = sext i32 %2401 to i64
  %2403 = getelementptr inbounds double, double* %2378, i64 %2402
  store double 0.000000e+00, double* %2403, align 8, !tbaa !1
  %indvars.iv.next17.i.i.3 = add nsw i64 %indvars.iv16.i.i, 4
  %exitcond24.i.3 = icmp eq i64 %indvars.iv.next17.i.i.3, %2379
  br i1 %exitcond24.i.3, label %.loopexit6.i.i.loopexit.unr-lcssa, label %2387

.loopexit6.i.i.loopexit.unr-lcssa:                ; preds = %2387
  br label %.loopexit6.i.i.loopexit

.loopexit6.i.i.loopexit:                          ; preds = %.loopexit6.i.i.loopexit.unr-lcssa, %.lr.ph11.i.i.split
  br label %.loopexit6.i.i

.loopexit6.i.i:                                   ; preds = %.loopexit6.i.i.loopexit, %_ZL24CalcAccelerationForNodesR6Domaini.exit.i
  %2404 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 14, i32 0, i32 0, i32 0
  %2405 = load i32*, i32** %2404, align 8, !tbaa !5
  %2406 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 14, i32 0, i32 0, i32 1
  %2407 = load i32*, i32** %2406, align 8, !tbaa !38
  %2408 = icmp ne i32* %2405, %2407
  %or.cond12.i.i = and i1 %2376, %2408
  br i1 %or.cond12.i.i, label %.lr.ph9.i.i, label %.loopexit4.i.i

.lr.ph9.i.i:                                      ; preds = %.loopexit6.i.i
  %2409 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 7, i32 0, i32 0, i32 0
  %2410 = load double*, double** %2409, align 8
  %2411 = zext i32 %2370 to i64
  %2412 = add nsw i64 %2411, -1
  %xtraiter336 = and i64 %2411, 3
  %lcmp.mod337 = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337, label %.lr.ph9.i.i.split, label %.preheader349

.preheader349:                                    ; preds = %.lr.ph9.i.i
  br label %2413

; <label>:2413                                    ; preds = %2413, %.preheader349
  %indvars.iv14.i.i.prol = phi i64 [ %indvars.iv.next15.i.i.prol, %2413 ], [ 0, %.preheader349 ]
  %prol.iter338 = phi i64 [ %prol.iter338.sub, %2413 ], [ %xtraiter336, %.preheader349 ]
  %2414 = getelementptr inbounds i32, i32* %2405, i64 %indvars.iv14.i.i.prol
  %2415 = load i32, i32* %2414, align 4, !tbaa !12
  %2416 = sext i32 %2415 to i64
  %2417 = getelementptr inbounds double, double* %2410, i64 %2416
  store double 0.000000e+00, double* %2417, align 8, !tbaa !1
  %indvars.iv.next15.i.i.prol = add nuw nsw i64 %indvars.iv14.i.i.prol, 1
  %prol.iter338.sub = add i64 %prol.iter338, -1
  %prol.iter338.cmp = icmp eq i64 %prol.iter338.sub, 0
  br i1 %prol.iter338.cmp, label %.lr.ph9.i.i.split.loopexit, label %2413, !llvm.loop !40

.lr.ph9.i.i.split.loopexit:                       ; preds = %2413
  br label %.lr.ph9.i.i.split

.lr.ph9.i.i.split:                                ; preds = %.lr.ph9.i.i.split.loopexit, %.lr.ph9.i.i
  %indvars.iv14.i.i.unr = phi i64 [ 0, %.lr.ph9.i.i ], [ %indvars.iv.next15.i.i.prol, %.lr.ph9.i.i.split.loopexit ]
  %2418 = icmp ult i64 %2412, 3
  br i1 %2418, label %.loopexit4.i.i.loopexit, label %.lr.ph9.i.i.split.split

.lr.ph9.i.i.split.split:                          ; preds = %.lr.ph9.i.i.split
  br label %2419

; <label>:2419                                    ; preds = %2419, %.lr.ph9.i.i.split.split
  %indvars.iv14.i.i = phi i64 [ %indvars.iv14.i.i.unr, %.lr.ph9.i.i.split.split ], [ %indvars.iv.next15.i.i.3, %2419 ]
  %2420 = getelementptr inbounds i32, i32* %2405, i64 %indvars.iv14.i.i
  %2421 = load i32, i32* %2420, align 4, !tbaa !12
  %2422 = sext i32 %2421 to i64
  %2423 = getelementptr inbounds double, double* %2410, i64 %2422
  store double 0.000000e+00, double* %2423, align 8, !tbaa !1
  %indvars.iv.next15.i.i = add nuw nsw i64 %indvars.iv14.i.i, 1
  %2424 = getelementptr inbounds i32, i32* %2405, i64 %indvars.iv.next15.i.i
  %2425 = load i32, i32* %2424, align 4, !tbaa !12
  %2426 = sext i32 %2425 to i64
  %2427 = getelementptr inbounds double, double* %2410, i64 %2426
  store double 0.000000e+00, double* %2427, align 8, !tbaa !1
  %indvars.iv.next15.i.i.1 = add nsw i64 %indvars.iv14.i.i, 2
  %2428 = getelementptr inbounds i32, i32* %2405, i64 %indvars.iv.next15.i.i.1
  %2429 = load i32, i32* %2428, align 4, !tbaa !12
  %2430 = sext i32 %2429 to i64
  %2431 = getelementptr inbounds double, double* %2410, i64 %2430
  store double 0.000000e+00, double* %2431, align 8, !tbaa !1
  %indvars.iv.next15.i.i.2 = add nsw i64 %indvars.iv14.i.i, 3
  %2432 = getelementptr inbounds i32, i32* %2405, i64 %indvars.iv.next15.i.i.2
  %2433 = load i32, i32* %2432, align 4, !tbaa !12
  %2434 = sext i32 %2433 to i64
  %2435 = getelementptr inbounds double, double* %2410, i64 %2434
  store double 0.000000e+00, double* %2435, align 8, !tbaa !1
  %indvars.iv.next15.i.i.3 = add nsw i64 %indvars.iv14.i.i, 4
  %exitcond23.i.3 = icmp eq i64 %indvars.iv.next15.i.i.3, %2411
  br i1 %exitcond23.i.3, label %.loopexit4.i.i.loopexit.unr-lcssa, label %2419

.loopexit4.i.i.loopexit.unr-lcssa:                ; preds = %2419
  br label %.loopexit4.i.i.loopexit

.loopexit4.i.i.loopexit:                          ; preds = %.loopexit4.i.i.loopexit.unr-lcssa, %.lr.ph9.i.i.split
  br label %.loopexit4.i.i

.loopexit4.i.i:                                   ; preds = %.loopexit4.i.i.loopexit, %.loopexit6.i.i
  %2436 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 15, i32 0, i32 0, i32 0
  %2437 = load i32*, i32** %2436, align 8, !tbaa !5
  %2438 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 15, i32 0, i32 0, i32 1
  %2439 = load i32*, i32** %2438, align 8, !tbaa !38
  %2440 = icmp ne i32* %2437, %2439
  %or.cond13.i.i = and i1 %2376, %2440
  br i1 %or.cond13.i.i, label %.lr.ph.i17.i, label %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i

.lr.ph.i17.i:                                     ; preds = %.loopexit4.i.i
  %2441 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 8, i32 0, i32 0, i32 0
  %2442 = load double*, double** %2441, align 8
  %2443 = zext i32 %2370 to i64
  %2444 = add nsw i64 %2443, -1
  %xtraiter333 = and i64 %2443, 3
  %lcmp.mod334 = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334, label %.lr.ph.i17.i.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph.i17.i
  br label %2445

; <label>:2445                                    ; preds = %2445, %.preheader
  %indvars.iv.i18.i.prol = phi i64 [ %indvars.iv.next.i19.i.prol, %2445 ], [ 0, %.preheader ]
  %prol.iter335 = phi i64 [ %prol.iter335.sub, %2445 ], [ %xtraiter333, %.preheader ]
  %2446 = getelementptr inbounds i32, i32* %2437, i64 %indvars.iv.i18.i.prol
  %2447 = load i32, i32* %2446, align 4, !tbaa !12
  %2448 = sext i32 %2447 to i64
  %2449 = getelementptr inbounds double, double* %2442, i64 %2448
  store double 0.000000e+00, double* %2449, align 8, !tbaa !1
  %indvars.iv.next.i19.i.prol = add nuw nsw i64 %indvars.iv.i18.i.prol, 1
  %prol.iter335.sub = add i64 %prol.iter335, -1
  %prol.iter335.cmp = icmp eq i64 %prol.iter335.sub, 0
  br i1 %prol.iter335.cmp, label %.lr.ph.i17.i.split.loopexit, label %2445, !llvm.loop !41

.lr.ph.i17.i.split.loopexit:                      ; preds = %2445
  br label %.lr.ph.i17.i.split

.lr.ph.i17.i.split:                               ; preds = %.lr.ph.i17.i.split.loopexit, %.lr.ph.i17.i
  %indvars.iv.i18.i.unr = phi i64 [ 0, %.lr.ph.i17.i ], [ %indvars.iv.next.i19.i.prol, %.lr.ph.i17.i.split.loopexit ]
  %2450 = icmp ult i64 %2444, 3
  br i1 %2450, label %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit, label %.lr.ph.i17.i.split.split

.lr.ph.i17.i.split.split:                         ; preds = %.lr.ph.i17.i.split
  br label %2451

; <label>:2451                                    ; preds = %2451, %.lr.ph.i17.i.split.split
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.i18.i.unr, %.lr.ph.i17.i.split.split ], [ %indvars.iv.next.i19.i.3, %2451 ]
  %2452 = getelementptr inbounds i32, i32* %2437, i64 %indvars.iv.i18.i
  %2453 = load i32, i32* %2452, align 4, !tbaa !12
  %2454 = sext i32 %2453 to i64
  %2455 = getelementptr inbounds double, double* %2442, i64 %2454
  store double 0.000000e+00, double* %2455, align 8, !tbaa !1
  %indvars.iv.next.i19.i = add nuw nsw i64 %indvars.iv.i18.i, 1
  %2456 = getelementptr inbounds i32, i32* %2437, i64 %indvars.iv.next.i19.i
  %2457 = load i32, i32* %2456, align 4, !tbaa !12
  %2458 = sext i32 %2457 to i64
  %2459 = getelementptr inbounds double, double* %2442, i64 %2458
  store double 0.000000e+00, double* %2459, align 8, !tbaa !1
  %indvars.iv.next.i19.i.1 = add nsw i64 %indvars.iv.i18.i, 2
  %2460 = getelementptr inbounds i32, i32* %2437, i64 %indvars.iv.next.i19.i.1
  %2461 = load i32, i32* %2460, align 4, !tbaa !12
  %2462 = sext i32 %2461 to i64
  %2463 = getelementptr inbounds double, double* %2442, i64 %2462
  store double 0.000000e+00, double* %2463, align 8, !tbaa !1
  %indvars.iv.next.i19.i.2 = add nsw i64 %indvars.iv.i18.i, 3
  %2464 = getelementptr inbounds i32, i32* %2437, i64 %indvars.iv.next.i19.i.2
  %2465 = load i32, i32* %2464, align 4, !tbaa !12
  %2466 = sext i32 %2465 to i64
  %2467 = getelementptr inbounds double, double* %2442, i64 %2466
  store double 0.000000e+00, double* %2467, align 8, !tbaa !1
  %indvars.iv.next.i19.i.3 = add nsw i64 %indvars.iv.i18.i, 4
  %exitcond22.i.3 = icmp eq i64 %indvars.iv.next.i19.i.3, %2443
  br i1 %exitcond22.i.3, label %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit.unr-lcssa, label %2451

_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit.unr-lcssa: ; preds = %2451
  br label %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit

_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit: ; preds = %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit.unr-lcssa, %.lr.ph.i17.i.split
  br label %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i

_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i: ; preds = %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i.loopexit, %.loopexit4.i.i
  br i1 %2335, label %.lr.ph.i1.i, label %_ZL13LagrangeNodalR6Domain.exit

.lr.ph.i1.i:                                      ; preds = %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i
  %2468 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 3, i32 0, i32 0, i32 0
  %2469 = load double*, double** %2468, align 8
  %2470 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 6, i32 0, i32 0, i32 0
  %2471 = load double*, double** %2470, align 8
  %2472 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 4, i32 0, i32 0, i32 0
  %2473 = load double*, double** %2472, align 8
  %2474 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 7, i32 0, i32 0, i32 0
  %2475 = load double*, double** %2474, align 8
  %2476 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 5, i32 0, i32 0, i32 0
  %2477 = load double*, double** %2476, align 8
  %2478 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 8, i32 0, i32 0, i32 0
  %2479 = load double*, double** %2478, align 8
  br label %2480

; <label>:2480                                    ; preds = %2480, %.lr.ph.i1.i
  %indvars.iv.i2.i = phi i64 [ 0, %.lr.ph.i1.i ], [ %indvars.iv.next.i3.i, %2480 ]
  %2481 = getelementptr inbounds double, double* %2469, i64 %indvars.iv.i2.i
  %2482 = load double, double* %2481, align 8, !tbaa !1
  %2483 = getelementptr inbounds double, double* %2471, i64 %indvars.iv.i2.i
  %2484 = load double, double* %2483, align 8, !tbaa !1
  %2485 = fmul double %2, %2484
  %2486 = fadd double %2482, %2485
  %2487 = call double @fabs(double %2486) #15
  %2488 = fcmp olt double %2487, %4
  %xdtmp.0.i.i = select i1 %2488, double 0.000000e+00, double %2486
  store double %xdtmp.0.i.i, double* %2481, align 8, !tbaa !1
  %2489 = getelementptr inbounds double, double* %2473, i64 %indvars.iv.i2.i
  %2490 = load double, double* %2489, align 8, !tbaa !1
  %2491 = getelementptr inbounds double, double* %2475, i64 %indvars.iv.i2.i
  %2492 = load double, double* %2491, align 8, !tbaa !1
  %2493 = fmul double %2, %2492
  %2494 = fadd double %2490, %2493
  %2495 = call double @fabs(double %2494) #15
  %2496 = fcmp olt double %2495, %4
  %ydtmp.0.i.i = select i1 %2496, double 0.000000e+00, double %2494
  store double %ydtmp.0.i.i, double* %2489, align 8, !tbaa !1
  %2497 = getelementptr inbounds double, double* %2477, i64 %indvars.iv.i2.i
  %2498 = load double, double* %2497, align 8, !tbaa !1
  %2499 = getelementptr inbounds double, double* %2479, i64 %indvars.iv.i2.i
  %2500 = load double, double* %2499, align 8, !tbaa !1
  %2501 = fmul double %2, %2500
  %2502 = fadd double %2498, %2501
  %2503 = call double @fabs(double %2502) #15
  %2504 = fcmp olt double %2503, %4
  %zdtmp.0.i.i = select i1 %2504, double 0.000000e+00, double %2502
  store double %zdtmp.0.i.i, double* %2497, align 8, !tbaa !1
  %indvars.iv.next.i3.i = add nuw nsw i64 %indvars.iv.i2.i, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next.i3.i to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %2334
  br i1 %exitcond95, label %.lr.ph.i.i, label %2480

.lr.ph.i.i:                                       ; preds = %2480
  %2505 = load double*, double** %2468, align 8
  %2506 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 0, i32 0, i32 0, i32 0
  %2507 = load double*, double** %2506, align 8
  %2508 = load double*, double** %2472, align 8
  %2509 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 1, i32 0, i32 0, i32 0
  %2510 = load double*, double** %2509, align 8
  %2511 = load double*, double** %2476, align 8
  %2512 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 2, i32 0, i32 0, i32 0
  %2513 = load double*, double** %2512, align 8
  br label %2514

; <label>:2514                                    ; preds = %2514, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %2514 ]
  %2515 = getelementptr inbounds double, double* %2505, i64 %indvars.iv.i.i
  %2516 = load double, double* %2515, align 8, !tbaa !1
  %2517 = fmul double %2, %2516
  %2518 = getelementptr inbounds double, double* %2507, i64 %indvars.iv.i.i
  %2519 = load double, double* %2518, align 8, !tbaa !1
  %2520 = fadd double %2517, %2519
  store double %2520, double* %2518, align 8, !tbaa !1
  %2521 = getelementptr inbounds double, double* %2508, i64 %indvars.iv.i.i
  %2522 = load double, double* %2521, align 8, !tbaa !1
  %2523 = fmul double %2, %2522
  %2524 = getelementptr inbounds double, double* %2510, i64 %indvars.iv.i.i
  %2525 = load double, double* %2524, align 8, !tbaa !1
  %2526 = fadd double %2523, %2525
  store double %2526, double* %2524, align 8, !tbaa !1
  %2527 = getelementptr inbounds double, double* %2511, i64 %indvars.iv.i.i
  %2528 = load double, double* %2527, align 8, !tbaa !1
  %2529 = fmul double %2, %2528
  %2530 = getelementptr inbounds double, double* %2513, i64 %indvars.iv.i.i
  %2531 = load double, double* %2530, align 8, !tbaa !1
  %2532 = fadd double %2529, %2531
  store double %2532, double* %2530, align 8, !tbaa !1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %lftr.wideiv92 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %2334
  br i1 %exitcond93, label %_ZL13LagrangeNodalR6Domain.exit.loopexit, label %2514

_ZL13LagrangeNodalR6Domain.exit.loopexit:         ; preds = %2514
  br label %_ZL13LagrangeNodalR6Domain.exit

_ZL13LagrangeNodalR6Domain.exit:                  ; preds = %_ZL13LagrangeNodalR6Domain.exit.loopexit, %_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain.exit.i
  %2533 = load i32, i32* %64, align 4, !tbaa !12
  %2534 = sext i32 %2533 to i64
  %2535 = shl nsw i64 %2534, 3
  %2536 = call noalias i8* @malloc(i64 %2535) #2
  %2537 = bitcast i8* %2536 to double*
  %2538 = icmp sgt i32 %2533, 0
  br i1 %2538, label %.lr.ph.i.i1, label %_ZL20CalcLagrangeElementsR6DomainPd.exit.i

.lr.ph.i.i1:                                      ; preds = %_ZL13LagrangeNodalR6Domain.exit
  %2539 = load double, double* %1, align 8, !tbaa !1
  call void @_ZN6Domain15AllocateStrainsEi(%class.Domain* nonnull %domain, i32 %2533)
  call void @_Z22CalcKinematicsForElemsR6DomainPddi(%class.Domain* nonnull dereferenceable(1456) %domain, double* %2537, double %2539, i32 %2533)
  %2540 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 29, i32 0, i32 0, i32 0
  %2541 = load double*, double** %2540, align 8
  %2542 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 30, i32 0, i32 0, i32 0
  %2543 = load double*, double** %2542, align 8
  %2544 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 31, i32 0, i32 0, i32 0
  %2545 = load double*, double** %2544, align 8
  %2546 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 47, i32 0, i32 0, i32 0
  %2547 = load double*, double** %2546, align 8
  %2548 = ptrtoint double* %2545 to i64
  %2549 = ptrtoint double* %2543 to i64
  %2550 = ptrtoint double* %2541 to i64
  br label %2559

; <label>:2551                                    ; preds = %2559
  %2552 = icmp slt i64 %indvars.iv.next.i.i4, %2534
  br i1 %2552, label %2559, label %._crit_edge.i.i2

._crit_edge.i.i2:                                 ; preds = %2551
  %2553 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 31, i32 0, i32 0, i32 1
  %2554 = bitcast double** %2553 to i64*
  store i64 %2548, i64* %2554, align 8, !tbaa !42
  %2555 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 30, i32 0, i32 0, i32 1
  %2556 = bitcast double** %2555 to i64*
  store i64 %2549, i64* %2556, align 8, !tbaa !42
  %2557 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 29, i32 0, i32 0, i32 1
  %2558 = bitcast double** %2557 to i64*
  store i64 %2550, i64* %2558, align 8, !tbaa !42
  %.pr.i = load i32, i32* %64, align 4, !tbaa !12
  br label %_ZL20CalcLagrangeElementsR6DomainPd.exit.i

; <label>:2559                                    ; preds = %2551, %.lr.ph.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph.i.i1 ], [ %indvars.iv.next.i.i4, %2551 ]
  %2560 = getelementptr inbounds double, double* %2541, i64 %indvars.iv.i.i3
  %2561 = load double, double* %2560, align 8, !tbaa !1
  %2562 = getelementptr inbounds double, double* %2543, i64 %indvars.iv.i.i3
  %2563 = load double, double* %2562, align 8, !tbaa !1
  %2564 = fadd double %2561, %2563
  %2565 = getelementptr inbounds double, double* %2545, i64 %indvars.iv.i.i3
  %2566 = load double, double* %2565, align 8, !tbaa !1
  %2567 = fadd double %2564, %2566
  %2568 = fdiv double %2567, 3.000000e+00
  %2569 = getelementptr inbounds double, double* %2547, i64 %indvars.iv.i.i3
  store double %2567, double* %2569, align 8, !tbaa !1
  %2570 = load double, double* %2560, align 8, !tbaa !1
  %2571 = fsub double %2570, %2568
  store double %2571, double* %2560, align 8, !tbaa !1
  %2572 = load double, double* %2562, align 8, !tbaa !1
  %2573 = fsub double %2572, %2568
  store double %2573, double* %2562, align 8, !tbaa !1
  %2574 = load double, double* %2565, align 8, !tbaa !1
  %2575 = fsub double %2574, %2568
  store double %2575, double* %2565, align 8, !tbaa !1
  %2576 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.i.i3
  %2577 = load double, double* %2576, align 8, !tbaa !1
  %2578 = fcmp ugt double %2577, 0.000000e+00
  %indvars.iv.next.i.i4 = add nuw nsw i64 %indvars.iv.i.i3, 1
  br i1 %2578, label %2551, label %2579

; <label>:2579                                    ; preds = %2559
  call void @exit(i32 -1) #20
  unreachable

_ZL20CalcLagrangeElementsR6DomainPd.exit.i:       ; preds = %._crit_edge.i.i2, %_ZL13LagrangeNodalR6Domain.exit
  %2580 = phi i32 [ %2533, %_ZL13LagrangeNodalR6Domain.exit ], [ %.pr.i, %._crit_edge.i.i2 ]
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %_ZL13CalcQForElemsR6DomainPd.exit.i, label %2582

; <label>:2582                                    ; preds = %_ZL20CalcLagrangeElementsR6DomainPd.exit.i
  %2583 = load i32, i32* %2367, align 4, !tbaa !12
  %2584 = shl nsw i32 %2583, 1
  %2585 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 86
  %2586 = load i32, i32* %2585, align 4, !tbaa !12
  %2587 = mul nsw i32 %2584, %2586
  %2588 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 87
  %2589 = load i32, i32* %2588, align 4, !tbaa !12
  %2590 = shl i32 %2586, 1
  %tmp.i.i = add i32 %2590, %2584
  %tmp4.i.i = mul i32 %tmp.i.i, %2589
  %2591 = add i32 %2587, %2580
  %2592 = add i32 %2591, %tmp4.i.i
  call void @_ZN6Domain17AllocateGradientsEii(%class.Domain* nonnull %domain, i32 %2580, i32 %2592)
  %2593 = load i32, i32* %64, align 4, !tbaa !12
  %2594 = icmp sgt i32 %2593, 0
  br i1 %2594, label %.lr.ph.i1.i.i, label %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i

.lr.ph.i1.i.i:                                    ; preds = %2582
  %2595 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 21, i32 0, i32 0, i32 0
  %2596 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 0, i32 0, i32 0, i32 0
  %2597 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 1, i32 0, i32 0, i32 0
  %2598 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 2, i32 0, i32 0, i32 0
  %2599 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 3, i32 0, i32 0, i32 0
  %2600 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 4, i32 0, i32 0, i32 0
  %2601 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 5, i32 0, i32 0, i32 0
  %2602 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 44, i32 0, i32 0, i32 0
  %2603 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 37, i32 0, i32 0, i32 0
  %2604 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 34, i32 0, i32 0, i32 0
  %2605 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 35, i32 0, i32 0, i32 0
  %2606 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 32, i32 0, i32 0, i32 0
  %2607 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 36, i32 0, i32 0, i32 0
  %2608 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 33, i32 0, i32 0, i32 0
  br label %2609

; <label>:2609                                    ; preds = %2609, %.lr.ph.i1.i.i
  %indvars.iv.i2.i.i = phi i64 [ 0, %.lr.ph.i1.i.i ], [ %indvars.iv.next.i3.i.i, %2609 ]
  %2610 = shl nsw i64 %indvars.iv.i2.i.i, 3
  %2611 = load i32*, i32** %2595, align 8, !tbaa !5
  %2612 = getelementptr inbounds i32, i32* %2611, i64 %2610
  %2613 = load i32, i32* %2612, align 4, !tbaa !12
  %2614 = getelementptr inbounds i32, i32* %2612, i64 1
  %2615 = load i32, i32* %2614, align 4, !tbaa !12
  %2616 = getelementptr inbounds i32, i32* %2612, i64 2
  %2617 = load i32, i32* %2616, align 4, !tbaa !12
  %2618 = getelementptr inbounds i32, i32* %2612, i64 3
  %2619 = load i32, i32* %2618, align 4, !tbaa !12
  %2620 = getelementptr inbounds i32, i32* %2612, i64 4
  %2621 = load i32, i32* %2620, align 4, !tbaa !12
  %2622 = getelementptr inbounds i32, i32* %2612, i64 5
  %2623 = load i32, i32* %2622, align 4, !tbaa !12
  %2624 = getelementptr inbounds i32, i32* %2612, i64 6
  %2625 = load i32, i32* %2624, align 4, !tbaa !12
  %2626 = getelementptr inbounds i32, i32* %2612, i64 7
  %2627 = load i32, i32* %2626, align 4, !tbaa !12
  %2628 = sext i32 %2613 to i64
  %2629 = load double*, double** %2596, align 8, !tbaa !9
  %2630 = getelementptr inbounds double, double* %2629, i64 %2628
  %2631 = load double, double* %2630, align 8, !tbaa !1
  %2632 = sext i32 %2615 to i64
  %2633 = getelementptr inbounds double, double* %2629, i64 %2632
  %2634 = load double, double* %2633, align 8, !tbaa !1
  %2635 = sext i32 %2617 to i64
  %2636 = getelementptr inbounds double, double* %2629, i64 %2635
  %2637 = load double, double* %2636, align 8, !tbaa !1
  %2638 = sext i32 %2619 to i64
  %2639 = getelementptr inbounds double, double* %2629, i64 %2638
  %2640 = load double, double* %2639, align 8, !tbaa !1
  %2641 = sext i32 %2621 to i64
  %2642 = getelementptr inbounds double, double* %2629, i64 %2641
  %2643 = load double, double* %2642, align 8, !tbaa !1
  %2644 = sext i32 %2623 to i64
  %2645 = getelementptr inbounds double, double* %2629, i64 %2644
  %2646 = load double, double* %2645, align 8, !tbaa !1
  %2647 = sext i32 %2625 to i64
  %2648 = getelementptr inbounds double, double* %2629, i64 %2647
  %2649 = load double, double* %2648, align 8, !tbaa !1
  %2650 = sext i32 %2627 to i64
  %2651 = getelementptr inbounds double, double* %2629, i64 %2650
  %2652 = load double, double* %2651, align 8, !tbaa !1
  %2653 = load double*, double** %2597, align 8, !tbaa !9
  %2654 = getelementptr inbounds double, double* %2653, i64 %2628
  %2655 = load double, double* %2654, align 8, !tbaa !1
  %2656 = getelementptr inbounds double, double* %2653, i64 %2632
  %2657 = load double, double* %2656, align 8, !tbaa !1
  %2658 = getelementptr inbounds double, double* %2653, i64 %2635
  %2659 = load double, double* %2658, align 8, !tbaa !1
  %2660 = getelementptr inbounds double, double* %2653, i64 %2638
  %2661 = load double, double* %2660, align 8, !tbaa !1
  %2662 = getelementptr inbounds double, double* %2653, i64 %2641
  %2663 = load double, double* %2662, align 8, !tbaa !1
  %2664 = getelementptr inbounds double, double* %2653, i64 %2644
  %2665 = load double, double* %2664, align 8, !tbaa !1
  %2666 = getelementptr inbounds double, double* %2653, i64 %2647
  %2667 = load double, double* %2666, align 8, !tbaa !1
  %2668 = getelementptr inbounds double, double* %2653, i64 %2650
  %2669 = load double, double* %2668, align 8, !tbaa !1
  %2670 = load double*, double** %2598, align 8, !tbaa !9
  %2671 = getelementptr inbounds double, double* %2670, i64 %2628
  %2672 = load double, double* %2671, align 8, !tbaa !1
  %2673 = getelementptr inbounds double, double* %2670, i64 %2632
  %2674 = load double, double* %2673, align 8, !tbaa !1
  %2675 = getelementptr inbounds double, double* %2670, i64 %2635
  %2676 = load double, double* %2675, align 8, !tbaa !1
  %2677 = getelementptr inbounds double, double* %2670, i64 %2638
  %2678 = load double, double* %2677, align 8, !tbaa !1
  %2679 = getelementptr inbounds double, double* %2670, i64 %2641
  %2680 = load double, double* %2679, align 8, !tbaa !1
  %2681 = getelementptr inbounds double, double* %2670, i64 %2644
  %2682 = load double, double* %2681, align 8, !tbaa !1
  %2683 = getelementptr inbounds double, double* %2670, i64 %2647
  %2684 = load double, double* %2683, align 8, !tbaa !1
  %2685 = getelementptr inbounds double, double* %2670, i64 %2650
  %2686 = load double, double* %2685, align 8, !tbaa !1
  %2687 = load double*, double** %2599, align 8, !tbaa !9
  %2688 = getelementptr inbounds double, double* %2687, i64 %2628
  %2689 = load double, double* %2688, align 8, !tbaa !1
  %2690 = getelementptr inbounds double, double* %2687, i64 %2632
  %2691 = load double, double* %2690, align 8, !tbaa !1
  %2692 = getelementptr inbounds double, double* %2687, i64 %2635
  %2693 = load double, double* %2692, align 8, !tbaa !1
  %2694 = getelementptr inbounds double, double* %2687, i64 %2638
  %2695 = load double, double* %2694, align 8, !tbaa !1
  %2696 = getelementptr inbounds double, double* %2687, i64 %2641
  %2697 = load double, double* %2696, align 8, !tbaa !1
  %2698 = getelementptr inbounds double, double* %2687, i64 %2644
  %2699 = load double, double* %2698, align 8, !tbaa !1
  %2700 = getelementptr inbounds double, double* %2687, i64 %2647
  %2701 = load double, double* %2700, align 8, !tbaa !1
  %2702 = getelementptr inbounds double, double* %2687, i64 %2650
  %2703 = load double, double* %2702, align 8, !tbaa !1
  %2704 = load double*, double** %2600, align 8, !tbaa !9
  %2705 = getelementptr inbounds double, double* %2704, i64 %2628
  %2706 = load double, double* %2705, align 8, !tbaa !1
  %2707 = getelementptr inbounds double, double* %2704, i64 %2632
  %2708 = load double, double* %2707, align 8, !tbaa !1
  %2709 = getelementptr inbounds double, double* %2704, i64 %2635
  %2710 = load double, double* %2709, align 8, !tbaa !1
  %2711 = getelementptr inbounds double, double* %2704, i64 %2638
  %2712 = load double, double* %2711, align 8, !tbaa !1
  %2713 = getelementptr inbounds double, double* %2704, i64 %2641
  %2714 = load double, double* %2713, align 8, !tbaa !1
  %2715 = getelementptr inbounds double, double* %2704, i64 %2644
  %2716 = load double, double* %2715, align 8, !tbaa !1
  %2717 = getelementptr inbounds double, double* %2704, i64 %2647
  %2718 = load double, double* %2717, align 8, !tbaa !1
  %2719 = getelementptr inbounds double, double* %2704, i64 %2650
  %2720 = load double, double* %2719, align 8, !tbaa !1
  %2721 = load double*, double** %2601, align 8, !tbaa !9
  %2722 = getelementptr inbounds double, double* %2721, i64 %2628
  %2723 = load double, double* %2722, align 8, !tbaa !1
  %2724 = getelementptr inbounds double, double* %2721, i64 %2632
  %2725 = load double, double* %2724, align 8, !tbaa !1
  %2726 = getelementptr inbounds double, double* %2721, i64 %2635
  %2727 = load double, double* %2726, align 8, !tbaa !1
  %2728 = getelementptr inbounds double, double* %2721, i64 %2638
  %2729 = load double, double* %2728, align 8, !tbaa !1
  %2730 = getelementptr inbounds double, double* %2721, i64 %2641
  %2731 = load double, double* %2730, align 8, !tbaa !1
  %2732 = getelementptr inbounds double, double* %2721, i64 %2644
  %2733 = load double, double* %2732, align 8, !tbaa !1
  %2734 = getelementptr inbounds double, double* %2721, i64 %2647
  %2735 = load double, double* %2734, align 8, !tbaa !1
  %2736 = getelementptr inbounds double, double* %2721, i64 %2650
  %2737 = load double, double* %2736, align 8, !tbaa !1
  %2738 = load double*, double** %2602, align 8, !tbaa !9
  %2739 = getelementptr inbounds double, double* %2738, i64 %indvars.iv.i2.i.i
  %2740 = load double, double* %2739, align 8, !tbaa !1
  %2741 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.i2.i.i
  %2742 = load double, double* %2741, align 8, !tbaa !1
  %2743 = fmul double %2740, %2742
  %2744 = fadd double %2743, 1.000000e-36
  %2745 = fdiv double 1.000000e+00, %2744
  %2746 = fadd double %2631, %2634
  %2747 = fadd double %2746, %2646
  %2748 = fadd double %2643, %2747
  %2749 = fadd double %2637, %2640
  %2750 = fadd double %2749, %2649
  %2751 = fadd double %2750, %2652
  %2752 = fsub double %2748, %2751
  %2753 = fmul double %2752, -2.500000e-01
  %2754 = fadd double %2655, %2657
  %2755 = fadd double %2754, %2665
  %2756 = fadd double %2663, %2755
  %2757 = fadd double %2659, %2661
  %2758 = fadd double %2757, %2667
  %2759 = fadd double %2758, %2669
  %2760 = fsub double %2756, %2759
  %2761 = fmul double %2760, -2.500000e-01
  %2762 = fadd double %2672, %2674
  %2763 = fadd double %2762, %2682
  %2764 = fadd double %2680, %2763
  %2765 = fadd double %2676, %2678
  %2766 = fadd double %2765, %2684
  %2767 = fadd double %2766, %2686
  %2768 = fsub double %2764, %2767
  %2769 = fmul double %2768, -2.500000e-01
  %2770 = fadd double %2634, %2637
  %2771 = fadd double %2770, %2649
  %2772 = fadd double %2646, %2771
  %2773 = fadd double %2631, %2640
  %2774 = fadd double %2773, %2652
  %2775 = fadd double %2643, %2774
  %2776 = fsub double %2772, %2775
  %2777 = fmul double %2776, 2.500000e-01
  %2778 = fadd double %2657, %2659
  %2779 = fadd double %2778, %2667
  %2780 = fadd double %2665, %2779
  %2781 = fadd double %2655, %2661
  %2782 = fadd double %2781, %2669
  %2783 = fadd double %2663, %2782
  %2784 = fsub double %2780, %2783
  %2785 = fmul double %2784, 2.500000e-01
  %2786 = fadd double %2674, %2676
  %2787 = fadd double %2786, %2684
  %2788 = fadd double %2682, %2787
  %2789 = fadd double %2672, %2678
  %2790 = fadd double %2789, %2686
  %2791 = fadd double %2680, %2790
  %2792 = fsub double %2788, %2791
  %2793 = fmul double %2792, 2.500000e-01
  %2794 = fadd double %2643, %2646
  %2795 = fadd double %2794, %2649
  %2796 = fadd double %2795, %2652
  %2797 = fadd double %2746, %2637
  %2798 = fadd double %2797, %2640
  %2799 = fsub double %2796, %2798
  %2800 = fmul double %2799, 2.500000e-01
  %2801 = fadd double %2663, %2665
  %2802 = fadd double %2801, %2667
  %2803 = fadd double %2802, %2669
  %2804 = fadd double %2754, %2659
  %2805 = fadd double %2804, %2661
  %2806 = fsub double %2803, %2805
  %2807 = fmul double %2806, 2.500000e-01
  %2808 = fadd double %2680, %2682
  %2809 = fadd double %2808, %2684
  %2810 = fadd double %2809, %2686
  %2811 = fadd double %2762, %2676
  %2812 = fadd double %2811, %2678
  %2813 = fsub double %2810, %2812
  %2814 = fmul double %2813, 2.500000e-01
  %2815 = fmul double %2785, %2769
  %2816 = fmul double %2761, %2793
  %2817 = fsub double %2815, %2816
  %2818 = fmul double %2753, %2793
  %2819 = fmul double %2777, %2769
  %2820 = fsub double %2818, %2819
  %2821 = fmul double %2777, %2761
  %2822 = fmul double %2753, %2785
  %2823 = fsub double %2821, %2822
  %2824 = fmul double %2817, %2817
  %2825 = fmul double %2820, %2820
  %2826 = fadd double %2824, %2825
  %2827 = fmul double %2823, %2823
  %2828 = fadd double %2827, %2826
  %2829 = fadd double %2828, 1.000000e-36
  %2830 = call double @sqrt(double %2829) #2
  %2831 = fdiv double %2743, %2830
  %2832 = load double*, double** %2603, align 8, !tbaa !9
  %2833 = getelementptr inbounds double, double* %2832, i64 %indvars.iv.i2.i.i
  store double %2831, double* %2833, align 8, !tbaa !1
  %2834 = fmul double %2817, %2745
  %2835 = fmul double %2820, %2745
  %2836 = fmul double %2823, %2745
  %2837 = fadd double %2697, %2699
  %2838 = fadd double %2837, %2701
  %2839 = fadd double %2838, %2703
  %2840 = fadd double %2689, %2691
  %2841 = fadd double %2840, %2693
  %2842 = fadd double %2841, %2695
  %2843 = fsub double %2839, %2842
  %2844 = fmul double %2843, 2.500000e-01
  %2845 = fadd double %2714, %2716
  %2846 = fadd double %2845, %2718
  %2847 = fadd double %2846, %2720
  %2848 = fadd double %2706, %2708
  %2849 = fadd double %2848, %2710
  %2850 = fadd double %2849, %2712
  %2851 = fsub double %2847, %2850
  %2852 = fmul double %2851, 2.500000e-01
  %2853 = fadd double %2731, %2733
  %2854 = fadd double %2853, %2735
  %2855 = fadd double %2854, %2737
  %2856 = fadd double %2723, %2725
  %2857 = fadd double %2856, %2727
  %2858 = fadd double %2857, %2729
  %2859 = fsub double %2855, %2858
  %2860 = fmul double %2859, 2.500000e-01
  %2861 = fmul double %2844, %2834
  %2862 = fmul double %2852, %2835
  %2863 = fadd double %2861, %2862
  %2864 = fmul double %2860, %2836
  %2865 = fadd double %2864, %2863
  %2866 = load double*, double** %2604, align 8, !tbaa !9
  %2867 = getelementptr inbounds double, double* %2866, i64 %indvars.iv.i2.i.i
  store double %2865, double* %2867, align 8, !tbaa !1
  %2868 = fmul double %2761, %2814
  %2869 = fmul double %2807, %2769
  %2870 = fsub double %2868, %2869
  %2871 = fmul double %2800, %2769
  %2872 = fmul double %2753, %2814
  %2873 = fsub double %2871, %2872
  %2874 = fmul double %2753, %2807
  %2875 = fmul double %2800, %2761
  %2876 = fsub double %2874, %2875
  %2877 = fmul double %2870, %2870
  %2878 = fmul double %2873, %2873
  %2879 = fadd double %2877, %2878
  %2880 = fmul double %2876, %2876
  %2881 = fadd double %2880, %2879
  %2882 = fadd double %2881, 1.000000e-36
  %2883 = call double @sqrt(double %2882) #2
  %2884 = fdiv double %2743, %2883
  %2885 = load double*, double** %2605, align 8, !tbaa !9
  %2886 = getelementptr inbounds double, double* %2885, i64 %indvars.iv.i2.i.i
  store double %2884, double* %2886, align 8, !tbaa !1
  %2887 = fmul double %2870, %2745
  %2888 = fmul double %2873, %2745
  %2889 = fmul double %2876, %2745
  %2890 = fadd double %2691, %2693
  %2891 = fadd double %2890, %2701
  %2892 = fadd double %2699, %2891
  %2893 = fadd double %2689, %2695
  %2894 = fadd double %2893, %2703
  %2895 = fadd double %2697, %2894
  %2896 = fsub double %2892, %2895
  %2897 = fmul double %2896, 2.500000e-01
  %2898 = fadd double %2708, %2710
  %2899 = fadd double %2898, %2718
  %2900 = fadd double %2716, %2899
  %2901 = fadd double %2706, %2712
  %2902 = fadd double %2901, %2720
  %2903 = fadd double %2714, %2902
  %2904 = fsub double %2900, %2903
  %2905 = fmul double %2904, 2.500000e-01
  %2906 = fadd double %2725, %2727
  %2907 = fadd double %2906, %2735
  %2908 = fadd double %2733, %2907
  %2909 = fadd double %2723, %2729
  %2910 = fadd double %2909, %2737
  %2911 = fadd double %2731, %2910
  %2912 = fsub double %2908, %2911
  %2913 = fmul double %2912, 2.500000e-01
  %2914 = fmul double %2897, %2887
  %2915 = fmul double %2905, %2888
  %2916 = fadd double %2914, %2915
  %2917 = fmul double %2913, %2889
  %2918 = fadd double %2917, %2916
  %2919 = load double*, double** %2606, align 8, !tbaa !9
  %2920 = getelementptr inbounds double, double* %2919, i64 %indvars.iv.i2.i.i
  store double %2918, double* %2920, align 8, !tbaa !1
  %2921 = fmul double %2807, %2793
  %2922 = fmul double %2785, %2814
  %2923 = fsub double %2921, %2922
  %2924 = fmul double %2777, %2814
  %2925 = fmul double %2800, %2793
  %2926 = fsub double %2924, %2925
  %2927 = fmul double %2800, %2785
  %2928 = fmul double %2777, %2807
  %2929 = fsub double %2927, %2928
  %2930 = fmul double %2923, %2923
  %2931 = fmul double %2926, %2926
  %2932 = fadd double %2930, %2931
  %2933 = fmul double %2929, %2929
  %2934 = fadd double %2933, %2932
  %2935 = fadd double %2934, 1.000000e-36
  %2936 = call double @sqrt(double %2935) #2
  %2937 = fdiv double %2743, %2936
  %2938 = load double*, double** %2607, align 8, !tbaa !9
  %2939 = getelementptr inbounds double, double* %2938, i64 %indvars.iv.i2.i.i
  store double %2937, double* %2939, align 8, !tbaa !1
  %2940 = fmul double %2923, %2745
  %2941 = fmul double %2926, %2745
  %2942 = fmul double %2929, %2745
  %2943 = fadd double %2840, %2699
  %2944 = fadd double %2697, %2943
  %2945 = fadd double %2693, %2695
  %2946 = fadd double %2945, %2701
  %2947 = fadd double %2946, %2703
  %2948 = fsub double %2944, %2947
  %2949 = fmul double %2948, -2.500000e-01
  %2950 = fadd double %2848, %2716
  %2951 = fadd double %2714, %2950
  %2952 = fadd double %2710, %2712
  %2953 = fadd double %2952, %2718
  %2954 = fadd double %2953, %2720
  %2955 = fsub double %2951, %2954
  %2956 = fmul double %2955, -2.500000e-01
  %2957 = fadd double %2856, %2733
  %2958 = fadd double %2731, %2957
  %2959 = fadd double %2727, %2729
  %2960 = fadd double %2959, %2735
  %2961 = fadd double %2960, %2737
  %2962 = fsub double %2958, %2961
  %2963 = fmul double %2962, -2.500000e-01
  %2964 = fmul double %2949, %2940
  %2965 = fmul double %2956, %2941
  %2966 = fadd double %2964, %2965
  %2967 = fmul double %2963, %2942
  %2968 = fadd double %2967, %2966
  %2969 = load double*, double** %2608, align 8, !tbaa !9
  %2970 = getelementptr inbounds double, double* %2969, i64 %indvars.iv.i2.i.i
  store double %2968, double* %2970, align 8, !tbaa !1
  %indvars.iv.next.i3.i.i = add nuw nsw i64 %indvars.iv.i2.i.i, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next.i3.i.i to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %2593
  br i1 %exitcond91, label %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i.loopexit, label %2609

_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i.loopexit: ; preds = %2609
  br label %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i

_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i: ; preds = %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i.loopexit, %2582
  %2971 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 16
  %2972 = load i32, i32* %2971, align 4, !tbaa !12
  %2973 = icmp sgt i32 %2972, 0
  br i1 %2973, label %.lr.ph.i.i.i5, label %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i

.lr.ph.i.i.i5:                                    ; preds = %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i
  %2974 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 18
  %2975 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 60
  %2976 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 59
  %2977 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 61
  %2978 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 62
  %2979 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 20
  %2980 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 28, i32 0, i32 0, i32 0
  %2981 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 32, i32 0, i32 0, i32 0
  %2982 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 33, i32 0, i32 0, i32 0
  %2983 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 34, i32 0, i32 0, i32 0
  %2984 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 47, i32 0, i32 0, i32 0
  %2985 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 42, i32 0, i32 0, i32 0
  %2986 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 41, i32 0, i32 0, i32 0
  %2987 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 35, i32 0, i32 0, i32 0
  %2988 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 36, i32 0, i32 0, i32 0
  %2989 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 37, i32 0, i32 0, i32 0
  %2990 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 50, i32 0, i32 0, i32 0
  %2991 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 44, i32 0, i32 0, i32 0
  %2992 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 27, i32 0, i32 0, i32 0
  %2993 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 26, i32 0, i32 0, i32 0
  %2994 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 25, i32 0, i32 0, i32 0
  %2995 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 24, i32 0, i32 0, i32 0
  %2996 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 23, i32 0, i32 0, i32 0
  %2997 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 22, i32 0, i32 0, i32 0
  %.pre.i.i.i = load i32*, i32** %2974, align 8, !tbaa !43
  br label %2998

; <label>:2998                                    ; preds = %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i, %.lr.ph.i.i.i5
  %2999 = phi i32 [ %2972, %.lr.ph.i.i.i5 ], [ %3229, %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i ]
  %3000 = phi i32* [ %.pre.i.i.i, %.lr.ph.i.i.i5 ], [ %3230, %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i ]
  %indvars.iv.i.i.i6 = phi i64 [ 0, %.lr.ph.i.i.i5 ], [ %indvars.iv.next.i.i.i10, %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i ]
  %3001 = getelementptr inbounds i32, i32* %3000, i64 %indvars.iv.i.i.i6
  %3002 = load i32, i32* %3001, align 4, !tbaa !12
  %3003 = icmp sgt i32 %3002, 0
  br i1 %3003, label %.lr.ph.i.i.i.i7, label %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i

.lr.ph.i.i.i.i7:                                  ; preds = %2998
  %3004 = load double, double* %2975, align 8, !tbaa !44
  %3005 = load double, double* %2976, align 8, !tbaa !45
  %3006 = load double, double* %2977, align 8, !tbaa !46
  %3007 = load double, double* %2978, align 8, !tbaa !47
  br label %3008

; <label>:3008                                    ; preds = %3219, %.lr.ph.i.i.i.i7
  %indvars.iv.i.i.i.i8 = phi i64 [ 0, %.lr.ph.i.i.i.i7 ], [ %indvars.iv.next.i.i.i.i9, %3219 ]
  %3009 = load i32**, i32*** %2979, align 8, !tbaa !48
  %3010 = getelementptr inbounds i32*, i32** %3009, i64 %indvars.iv.i.i.i6
  %3011 = load i32*, i32** %3010, align 8, !tbaa !49
  %3012 = getelementptr inbounds i32, i32* %3011, i64 %indvars.iv.i.i.i.i8
  %3013 = load i32, i32* %3012, align 4, !tbaa !12
  %3014 = sext i32 %3013 to i64
  %3015 = load i32*, i32** %2980, align 8, !tbaa !5
  %3016 = getelementptr inbounds i32, i32* %3015, i64 %3014
  %3017 = load i32, i32* %3016, align 4, !tbaa !12
  %3018 = load double*, double** %2981, align 8, !tbaa !9
  %3019 = getelementptr inbounds double, double* %3018, i64 %3014
  %3020 = load double, double* %3019, align 8, !tbaa !1
  %3021 = fadd double %3020, 1.000000e-36
  %3022 = fdiv double 1.000000e+00, %3021
  %3023 = and i32 %3017, 7
  switch i32 %3023, label %3032 [
    i32 4, label %3024
    i32 0, label %3024
    i32 1, label %3031
    i32 2, label %3035
  ]

; <label>:3024                                    ; preds = %3008, %3008
  %3025 = load i32*, i32** %2997, align 8, !tbaa !5
  %3026 = getelementptr inbounds i32, i32* %3025, i64 %3014
  %3027 = load i32, i32* %3026, align 4, !tbaa !12
  %3028 = sext i32 %3027 to i64
  %3029 = getelementptr inbounds double, double* %3018, i64 %3028
  %3030 = load double, double* %3029, align 8, !tbaa !1
  br label %3035

; <label>:3031                                    ; preds = %3008
  br label %3035

; <label>:3032                                    ; preds = %3008
  %3033 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3034 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3033, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1815) #21
  br label %3035

; <label>:3035                                    ; preds = %3032, %3031, %3024, %3008
  %delvm.0.i.i.i.i = phi double [ 0.000000e+00, %3032 ], [ %3020, %3031 ], [ %3030, %3024 ], [ 0.000000e+00, %3008 ]
  %3036 = and i32 %3017, 56
  switch i32 %3036, label %3049 [
    i32 32, label %3037
    i32 0, label %3037
    i32 8, label %3045
    i32 16, label %3052
  ]

; <label>:3037                                    ; preds = %3035, %3035
  %3038 = load i32*, i32** %2996, align 8, !tbaa !5
  %3039 = getelementptr inbounds i32, i32* %3038, i64 %3014
  %3040 = load i32, i32* %3039, align 4, !tbaa !12
  %3041 = sext i32 %3040 to i64
  %3042 = load double*, double** %2981, align 8, !tbaa !9
  %3043 = getelementptr inbounds double, double* %3042, i64 %3041
  %3044 = load double, double* %3043, align 8, !tbaa !1
  br label %3052

; <label>:3045                                    ; preds = %3035
  %3046 = load double*, double** %2981, align 8, !tbaa !9
  %3047 = getelementptr inbounds double, double* %3046, i64 %3014
  %3048 = load double, double* %3047, align 8, !tbaa !1
  br label %3052

; <label>:3049                                    ; preds = %3035
  %3050 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3051 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3050, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1825) #21
  br label %3052

; <label>:3052                                    ; preds = %3049, %3045, %3037, %3035
  %delvp.0.i.i.i.i = phi double [ 0.000000e+00, %3049 ], [ %3048, %3045 ], [ %3044, %3037 ], [ 0.000000e+00, %3035 ]
  %3053 = fmul double %3022, %delvm.0.i.i.i.i
  %3054 = fmul double %3022, %delvp.0.i.i.i.i
  %3055 = fadd double %3053, %3054
  %3056 = fmul double %3055, 5.000000e-01
  %3057 = fmul double %3004, %3053
  %3058 = fmul double %3004, %3054
  %3059 = fcmp olt double %3057, %3056
  %phixi.0.i.i.i.i = select i1 %3059, double %3057, double %3056
  %3060 = fcmp olt double %3058, %phixi.0.i.i.i.i
  %phixi.1.i.i.i.i = select i1 %3060, double %3058, double %phixi.0.i.i.i.i
  %3061 = fcmp olt double %phixi.1.i.i.i.i, 0.000000e+00
  %phixi.2.i.i.i.i = select i1 %3061, double 0.000000e+00, double %phixi.1.i.i.i.i
  %3062 = fcmp ogt double %phixi.2.i.i.i.i, %3005
  %phixi.3.i.i.i.i = select i1 %3062, double %3005, double %phixi.2.i.i.i.i
  %3063 = load double*, double** %2982, align 8, !tbaa !9
  %3064 = getelementptr inbounds double, double* %3063, i64 %3014
  %3065 = load double, double* %3064, align 8, !tbaa !1
  %3066 = fadd double %3065, 1.000000e-36
  %3067 = fdiv double 1.000000e+00, %3066
  %3068 = and i32 %3017, 448
  switch i32 %3068, label %3077 [
    i32 256, label %3069
    i32 0, label %3069
    i32 64, label %3076
    i32 128, label %3080
  ]

; <label>:3069                                    ; preds = %3052, %3052
  %3070 = load i32*, i32** %2995, align 8, !tbaa !5
  %3071 = getelementptr inbounds i32, i32* %3070, i64 %3014
  %3072 = load i32, i32* %3071, align 4, !tbaa !12
  %3073 = sext i32 %3072 to i64
  %3074 = getelementptr inbounds double, double* %3063, i64 %3073
  %3075 = load double, double* %3074, align 8, !tbaa !1
  br label %3080

; <label>:3076                                    ; preds = %3052
  br label %3080

; <label>:3077                                    ; preds = %3052
  %3078 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3079 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3078, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1853) #21
  br label %3080

; <label>:3080                                    ; preds = %3077, %3076, %3069, %3052
  %delvm.1.i.i.i.i = phi double [ 0.000000e+00, %3077 ], [ %3065, %3076 ], [ %3075, %3069 ], [ 0.000000e+00, %3052 ]
  %3081 = and i32 %3017, 3584
  switch i32 %3081, label %3094 [
    i32 2048, label %3082
    i32 0, label %3082
    i32 512, label %3090
    i32 1024, label %3097
  ]

; <label>:3082                                    ; preds = %3080, %3080
  %3083 = load i32*, i32** %2994, align 8, !tbaa !5
  %3084 = getelementptr inbounds i32, i32* %3083, i64 %3014
  %3085 = load i32, i32* %3084, align 4, !tbaa !12
  %3086 = sext i32 %3085 to i64
  %3087 = load double*, double** %2982, align 8, !tbaa !9
  %3088 = getelementptr inbounds double, double* %3087, i64 %3086
  %3089 = load double, double* %3088, align 8, !tbaa !1
  br label %3097

; <label>:3090                                    ; preds = %3080
  %3091 = load double*, double** %2982, align 8, !tbaa !9
  %3092 = getelementptr inbounds double, double* %3091, i64 %3014
  %3093 = load double, double* %3092, align 8, !tbaa !1
  br label %3097

; <label>:3094                                    ; preds = %3080
  %3095 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3096 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3095, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1863) #21
  br label %3097

; <label>:3097                                    ; preds = %3094, %3090, %3082, %3080
  %delvp.1.i.i.i.i = phi double [ 0.000000e+00, %3094 ], [ %3093, %3090 ], [ %3089, %3082 ], [ 0.000000e+00, %3080 ]
  %3098 = fmul double %3067, %delvm.1.i.i.i.i
  %3099 = fmul double %3067, %delvp.1.i.i.i.i
  %3100 = fadd double %3098, %3099
  %3101 = fmul double %3100, 5.000000e-01
  %3102 = fmul double %3004, %3098
  %3103 = fmul double %3004, %3099
  %3104 = fcmp olt double %3102, %3101
  %phieta.0.i.i.i.i = select i1 %3104, double %3102, double %3101
  %3105 = fcmp olt double %3103, %phieta.0.i.i.i.i
  %phieta.1.i.i.i.i = select i1 %3105, double %3103, double %phieta.0.i.i.i.i
  %3106 = fcmp olt double %phieta.1.i.i.i.i, 0.000000e+00
  %phieta.2.i.i.i.i = select i1 %3106, double 0.000000e+00, double %phieta.1.i.i.i.i
  %3107 = fcmp ogt double %phieta.2.i.i.i.i, %3005
  %phieta.3.i.i.i.i = select i1 %3107, double %3005, double %phieta.2.i.i.i.i
  %3108 = load double*, double** %2983, align 8, !tbaa !9
  %3109 = getelementptr inbounds double, double* %3108, i64 %3014
  %3110 = load double, double* %3109, align 8, !tbaa !1
  %3111 = fadd double %3110, 1.000000e-36
  %3112 = fdiv double 1.000000e+00, %3111
  %3113 = and i32 %3017, 28672
  switch i32 %3113, label %3122 [
    i32 16384, label %3114
    i32 0, label %3114
    i32 4096, label %3121
    i32 8192, label %3125
  ]

; <label>:3114                                    ; preds = %3097, %3097
  %3115 = load i32*, i32** %2993, align 8, !tbaa !5
  %3116 = getelementptr inbounds i32, i32* %3115, i64 %3014
  %3117 = load i32, i32* %3116, align 4, !tbaa !12
  %3118 = sext i32 %3117 to i64
  %3119 = getelementptr inbounds double, double* %3108, i64 %3118
  %3120 = load double, double* %3119, align 8, !tbaa !1
  br label %3125

; <label>:3121                                    ; preds = %3097
  br label %3125

; <label>:3122                                    ; preds = %3097
  %3123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3123, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1890) #21
  br label %3125

; <label>:3125                                    ; preds = %3122, %3121, %3114, %3097
  %delvm.2.i.i.i.i = phi double [ 0.000000e+00, %3122 ], [ %3110, %3121 ], [ %3120, %3114 ], [ 0.000000e+00, %3097 ]
  %3126 = and i32 %3017, 229376
  switch i32 %3126, label %3139 [
    i32 131072, label %3127
    i32 0, label %3127
    i32 32768, label %3135
    i32 65536, label %3142
  ]

; <label>:3127                                    ; preds = %3125, %3125
  %3128 = load i32*, i32** %2992, align 8, !tbaa !5
  %3129 = getelementptr inbounds i32, i32* %3128, i64 %3014
  %3130 = load i32, i32* %3129, align 4, !tbaa !12
  %3131 = sext i32 %3130 to i64
  %3132 = load double*, double** %2983, align 8, !tbaa !9
  %3133 = getelementptr inbounds double, double* %3132, i64 %3131
  %3134 = load double, double* %3133, align 8, !tbaa !1
  br label %3142

; <label>:3135                                    ; preds = %3125
  %3136 = load double*, double** %2983, align 8, !tbaa !9
  %3137 = getelementptr inbounds double, double* %3136, i64 %3014
  %3138 = load double, double* %3137, align 8, !tbaa !1
  br label %3142

; <label>:3139                                    ; preds = %3125
  %3140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !49
  %3141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3140, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1900) #21
  br label %3142

; <label>:3142                                    ; preds = %3139, %3135, %3127, %3125
  %delvp.2.i.i.i.i = phi double [ 0.000000e+00, %3139 ], [ %3138, %3135 ], [ %3134, %3127 ], [ 0.000000e+00, %3125 ]
  %3143 = fmul double %3112, %delvm.2.i.i.i.i
  %3144 = fmul double %3112, %delvp.2.i.i.i.i
  %3145 = fadd double %3143, %3144
  %3146 = fmul double %3145, 5.000000e-01
  %3147 = fmul double %3004, %3143
  %3148 = fmul double %3004, %3144
  %3149 = fcmp olt double %3147, %3146
  %phizeta.0.i.i.i.i = select i1 %3149, double %3147, double %3146
  %3150 = fcmp olt double %3148, %phizeta.0.i.i.i.i
  %phizeta.1.i.i.i.i = select i1 %3150, double %3148, double %phizeta.0.i.i.i.i
  %3151 = fcmp olt double %phizeta.1.i.i.i.i, 0.000000e+00
  %phizeta.2.i.i.i.i = select i1 %3151, double 0.000000e+00, double %phizeta.1.i.i.i.i
  %3152 = fcmp ogt double %phizeta.2.i.i.i.i, %3005
  %phizeta.3.i.i.i.i = select i1 %3152, double %3005, double %phizeta.2.i.i.i.i
  %3153 = load double*, double** %2984, align 8, !tbaa !9
  %3154 = getelementptr inbounds double, double* %3153, i64 %3014
  %3155 = load double, double* %3154, align 8, !tbaa !1
  %3156 = fcmp ogt double %3155, 0.000000e+00
  br i1 %3156, label %3219, label %3157

; <label>:3157                                    ; preds = %3142
  %3158 = load double*, double** %2981, align 8, !tbaa !9
  %3159 = getelementptr inbounds double, double* %3158, i64 %3014
  %3160 = load double, double* %3159, align 8, !tbaa !1
  %3161 = load double*, double** %2987, align 8, !tbaa !9
  %3162 = getelementptr inbounds double, double* %3161, i64 %3014
  %3163 = load double, double* %3162, align 8, !tbaa !1
  %3164 = fmul double %3160, %3163
  %3165 = load double*, double** %2982, align 8, !tbaa !9
  %3166 = getelementptr inbounds double, double* %3165, i64 %3014
  %3167 = load double, double* %3166, align 8, !tbaa !1
  %3168 = load double*, double** %2988, align 8, !tbaa !9
  %3169 = getelementptr inbounds double, double* %3168, i64 %3014
  %3170 = load double, double* %3169, align 8, !tbaa !1
  %3171 = fmul double %3167, %3170
  %3172 = load double*, double** %2983, align 8, !tbaa !9
  %3173 = getelementptr inbounds double, double* %3172, i64 %3014
  %3174 = load double, double* %3173, align 8, !tbaa !1
  %3175 = load double*, double** %2989, align 8, !tbaa !9
  %3176 = getelementptr inbounds double, double* %3175, i64 %3014
  %3177 = load double, double* %3176, align 8, !tbaa !1
  %3178 = fmul double %3174, %3177
  %3179 = fcmp ogt double %3164, 0.000000e+00
  %delvxxi.0.i.i.i.i = select i1 %3179, double 0.000000e+00, double %3164
  %3180 = fcmp ogt double %3171, 0.000000e+00
  %delvxeta.0.i.i.i.i = select i1 %3180, double 0.000000e+00, double %3171
  %3181 = fcmp ogt double %3178, 0.000000e+00
  %delvxzeta.0.i.i.i.i = select i1 %3181, double 0.000000e+00, double %3178
  %3182 = load double*, double** %2990, align 8, !tbaa !9
  %3183 = getelementptr inbounds double, double* %3182, i64 %3014
  %3184 = load double, double* %3183, align 8, !tbaa !1
  %3185 = load double*, double** %2991, align 8, !tbaa !9
  %3186 = getelementptr inbounds double, double* %3185, i64 %3014
  %3187 = load double, double* %3186, align 8, !tbaa !1
  %3188 = getelementptr inbounds double, double* %2537, i64 %3014
  %3189 = load double, double* %3188, align 8, !tbaa !1
  %3190 = fmul double %3187, %3189
  %3191 = fdiv double %3184, %3190
  %3192 = fmul double %3006, %3191
  %3193 = fsub double 1.000000e+00, %phixi.3.i.i.i.i
  %3194 = fmul double %3193, %delvxxi.0.i.i.i.i
  %3195 = fsub double 1.000000e+00, %phieta.3.i.i.i.i
  %3196 = fmul double %3195, %delvxeta.0.i.i.i.i
  %3197 = fadd double %3194, %3196
  %3198 = fsub double 1.000000e+00, %phizeta.3.i.i.i.i
  %3199 = fmul double %3198, %delvxzeta.0.i.i.i.i
  %3200 = fadd double %3197, %3199
  %3201 = fmul double %3200, %3192
  %3202 = fsub double -0.000000e+00, %3201
  %3203 = fmul double %3007, %3191
  %3204 = fmul double %delvxxi.0.i.i.i.i, %delvxxi.0.i.i.i.i
  %3205 = fmul double %phixi.3.i.i.i.i, %phixi.3.i.i.i.i
  %3206 = fsub double 1.000000e+00, %3205
  %3207 = fmul double %3206, %3204
  %3208 = fmul double %delvxeta.0.i.i.i.i, %delvxeta.0.i.i.i.i
  %3209 = fmul double %phieta.3.i.i.i.i, %phieta.3.i.i.i.i
  %3210 = fsub double 1.000000e+00, %3209
  %3211 = fmul double %3210, %3208
  %3212 = fadd double %3207, %3211
  %3213 = fmul double %delvxzeta.0.i.i.i.i, %delvxzeta.0.i.i.i.i
  %3214 = fmul double %phizeta.3.i.i.i.i, %phizeta.3.i.i.i.i
  %3215 = fsub double 1.000000e+00, %3214
  %3216 = fmul double %3215, %3213
  %3217 = fadd double %3212, %3216
  %3218 = fmul double %3217, %3203
  br label %3219

; <label>:3219                                    ; preds = %3157, %3142
  %qquad.0.i.i.i.i = phi double [ %3218, %3157 ], [ 0.000000e+00, %3142 ]
  %qlin.0.i.i.i.i = phi double [ %3202, %3157 ], [ 0.000000e+00, %3142 ]
  %3220 = load double*, double** %2985, align 8, !tbaa !9
  %3221 = getelementptr inbounds double, double* %3220, i64 %3014
  store double %qquad.0.i.i.i.i, double* %3221, align 8, !tbaa !1
  %3222 = load double*, double** %2986, align 8, !tbaa !9
  %3223 = getelementptr inbounds double, double* %3222, i64 %3014
  store double %qlin.0.i.i.i.i, double* %3223, align 8, !tbaa !1
  %indvars.iv.next.i.i.i.i9 = add nuw nsw i64 %indvars.iv.i.i.i.i8, 1
  %3224 = load i32*, i32** %2974, align 8, !tbaa !43
  %3225 = getelementptr inbounds i32, i32* %3224, i64 %indvars.iv.i.i.i6
  %3226 = load i32, i32* %3225, align 4, !tbaa !12
  %3227 = sext i32 %3226 to i64
  %3228 = icmp slt i64 %indvars.iv.next.i.i.i.i9, %3227
  br i1 %3228, label %3008, label %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.loopexit.i.i.i

_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.loopexit.i.i.i: ; preds = %3219
  %.pre2.i.i.i = load i32, i32* %2971, align 4, !tbaa !12
  br label %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i

_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i: ; preds = %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.loopexit.i.i.i, %2998
  %3229 = phi i32 [ %.pre2.i.i.i, %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.loopexit.i.i.i ], [ %2999, %2998 ]
  %3230 = phi i32* [ %3224, %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.loopexit.i.i.i ], [ %3000, %2998 ]
  %indvars.iv.next.i.i.i10 = add nuw nsw i64 %indvars.iv.i.i.i6, 1
  %3231 = sext i32 %3229 to i64
  %3232 = icmp slt i64 %indvars.iv.next.i.i.i10, %3231
  br i1 %3232, label %2998, label %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i.loopexit

_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i.loopexit: ; preds = %_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd.exit.i.i.i
  br label %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i

_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i:   ; preds = %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i.loopexit, %_ZL31CalcMonotonicQGradientsForElemsR6DomainPd.exit.i.i
  %3233 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 37
  %3234 = bitcast %"class.std::vector"* %3233 to i64*
  %3235 = load i64, i64* %3234, align 8, !tbaa !9
  %3236 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 37, i32 0, i32 0, i32 1
  %3237 = bitcast double** %3236 to i64*
  store i64 %3235, i64* %3237, align 8, !tbaa !42
  %3238 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 36
  %3239 = bitcast %"class.std::vector"* %3238 to i64*
  %3240 = load i64, i64* %3239, align 8, !tbaa !9
  %3241 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 36, i32 0, i32 0, i32 1
  %3242 = bitcast double** %3241 to i64*
  store i64 %3240, i64* %3242, align 8, !tbaa !42
  %3243 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 35
  %3244 = bitcast %"class.std::vector"* %3243 to i64*
  %3245 = load i64, i64* %3244, align 8, !tbaa !9
  %3246 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 35, i32 0, i32 0, i32 1
  %3247 = bitcast double** %3246 to i64*
  store i64 %3245, i64* %3247, align 8, !tbaa !42
  %3248 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 34
  %3249 = bitcast %"class.std::vector"* %3248 to i64*
  %3250 = load i64, i64* %3249, align 8, !tbaa !9
  %3251 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 34, i32 0, i32 0, i32 1
  %3252 = bitcast double** %3251 to i64*
  store i64 %3250, i64* %3252, align 8, !tbaa !42
  %3253 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 33
  %3254 = bitcast %"class.std::vector"* %3253 to i64*
  %3255 = load i64, i64* %3254, align 8, !tbaa !9
  %3256 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 33, i32 0, i32 0, i32 1
  %3257 = bitcast double** %3256 to i64*
  store i64 %3255, i64* %3257, align 8, !tbaa !42
  %3258 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 32
  %3259 = bitcast %"class.std::vector"* %3258 to i64*
  %3260 = load i64, i64* %3259, align 8, !tbaa !9
  %3261 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 32, i32 0, i32 0, i32 1
  %3262 = bitcast double** %3261 to i64*
  store i64 %3260, i64* %3262, align 8, !tbaa !42
  %3263 = icmp sgt i32 %2580, 0
  br i1 %3263, label %.lr.ph.i1.i11, label %_ZL13CalcQForElemsR6DomainPd.exit.i

.lr.ph.i1.i11:                                    ; preds = %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i
  %3264 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 40, i32 0, i32 0, i32 0
  %3265 = load double*, double** %3264, align 8
  %3266 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 58
  %3267 = load double, double* %3266, align 8
  %3268 = sext i32 %2580 to i64
  br label %3269

; <label>:3269                                    ; preds = %3273, %.lr.ph.i1.i11
  %indvars.iv.i2.i12 = phi i64 [ 0, %.lr.ph.i1.i11 ], [ %indvars.iv.next.i3.i13, %3273 ]
  %3270 = getelementptr inbounds double, double* %3265, i64 %indvars.iv.i2.i12
  %3271 = load double, double* %3270, align 8, !tbaa !1
  %3272 = fcmp ogt double %3271, %3267
  br i1 %3272, label %3275, label %3273

; <label>:3273                                    ; preds = %3269
  %indvars.iv.next.i3.i13 = add nuw nsw i64 %indvars.iv.i2.i12, 1
  %3274 = icmp slt i64 %indvars.iv.next.i3.i13, %3268
  br i1 %3274, label %3269, label %_ZL13CalcQForElemsR6DomainPd.exit.i.loopexit

; <label>:3275                                    ; preds = %3269
  %3276 = trunc i64 %indvars.iv.i2.i12 to i32
  %3277 = icmp sgt i32 %3276, -1
  br i1 %3277, label %3278, label %_ZL13CalcQForElemsR6DomainPd.exit.i

; <label>:3278                                    ; preds = %3275
  call void @exit(i32 -2) #20
  unreachable

_ZL13CalcQForElemsR6DomainPd.exit.i.loopexit:     ; preds = %3273
  br label %_ZL13CalcQForElemsR6DomainPd.exit.i

_ZL13CalcQForElemsR6DomainPd.exit.i:              ; preds = %_ZL13CalcQForElemsR6DomainPd.exit.i.loopexit, %3275, %_ZL22CalcMonotonicQForElemsR6DomainPd.exit.i.i, %_ZL20CalcLagrangeElementsR6DomainPd.exit.i
  %3279 = load i32, i32* %64, align 4, !tbaa !12
  %3280 = icmp eq i32 %3279, 0
  br i1 %3280, label %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i, label %3281

; <label>:3281                                    ; preds = %_ZL13CalcQForElemsR6DomainPd.exit.i
  %3282 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 65
  %3283 = load double, double* %3282, align 8, !tbaa !50
  %3284 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 64
  %3285 = load double, double* %3284, align 8, !tbaa !51
  %3286 = fcmp une double %3283, 0.000000e+00
  %3287 = icmp sgt i32 %3279, 0
  %or.cond.i.i14 = and i1 %3287, %3286
  br i1 %or.cond.i.i14, label %.lr.ph15.i.i.preheader, label %.loopexit8.i.i

.lr.ph15.i.i.preheader:                           ; preds = %3281
  %3288 = add i32 %3279, -1
  %xtraiter327 = and i32 %3279, 3
  %lcmp.mod328 = icmp eq i32 %xtraiter327, 0
  br i1 %lcmp.mod328, label %.lr.ph15.i.i.preheader.split, label %.lr.ph15.i.i.prol.preheader

.lr.ph15.i.i.prol.preheader:                      ; preds = %.lr.ph15.i.i.preheader
  br label %.lr.ph15.i.i.prol

.lr.ph15.i.i.prol:                                ; preds = %3293, %.lr.ph15.i.i.prol.preheader
  %indvars.iv71.i.i.prol = phi i64 [ %indvars.iv.next72.i.i.prol, %3293 ], [ 0, %.lr.ph15.i.i.prol.preheader ]
  %prol.iter329 = phi i32 [ %prol.iter329.sub, %3293 ], [ %xtraiter327, %.lr.ph15.i.i.prol.preheader ]
  %3289 = getelementptr inbounds double, double* %2537, i64 %indvars.iv71.i.i.prol
  %3290 = load double, double* %3289, align 8, !tbaa !1
  %3291 = fcmp olt double %3290, %3283
  br i1 %3291, label %3292, label %3293

; <label>:3292                                    ; preds = %.lr.ph15.i.i.prol
  store double %3283, double* %3289, align 8, !tbaa !1
  br label %3293

; <label>:3293                                    ; preds = %3292, %.lr.ph15.i.i.prol
  %indvars.iv.next72.i.i.prol = add nuw nsw i64 %indvars.iv71.i.i.prol, 1
  %prol.iter329.sub = add i32 %prol.iter329, -1
  %prol.iter329.cmp = icmp eq i32 %prol.iter329.sub, 0
  br i1 %prol.iter329.cmp, label %.lr.ph15.i.i.preheader.split.loopexit, label %.lr.ph15.i.i.prol, !llvm.loop !52

.lr.ph15.i.i.preheader.split.loopexit:            ; preds = %3293
  br label %.lr.ph15.i.i.preheader.split

.lr.ph15.i.i.preheader.split:                     ; preds = %.lr.ph15.i.i.preheader.split.loopexit, %.lr.ph15.i.i.preheader
  %indvars.iv71.i.i.unr = phi i64 [ 0, %.lr.ph15.i.i.preheader ], [ %indvars.iv.next72.i.i.prol, %.lr.ph15.i.i.preheader.split.loopexit ]
  %3294 = icmp ult i32 %3288, 3
  br i1 %3294, label %.loopexit8.i.i.loopexit, label %.lr.ph15.i.i.preheader.split.split

.lr.ph15.i.i.preheader.split.split:               ; preds = %.lr.ph15.i.i.preheader.split
  br label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %4252, %.lr.ph15.i.i.preheader.split.split
  %indvars.iv71.i.i = phi i64 [ %indvars.iv71.i.i.unr, %.lr.ph15.i.i.preheader.split.split ], [ %indvars.iv.next72.i.i.3, %4252 ]
  %3295 = getelementptr inbounds double, double* %2537, i64 %indvars.iv71.i.i
  %3296 = load double, double* %3295, align 8, !tbaa !1
  %3297 = fcmp olt double %3296, %3283
  br i1 %3297, label %3298, label %.lr.ph15.i.i.1330

; <label>:3298                                    ; preds = %.lr.ph15.i.i
  store double %3283, double* %3295, align 8, !tbaa !1
  br label %.lr.ph15.i.i.1330

.lr.ph15.i.i.1330:                                ; preds = %3298, %.lr.ph15.i.i
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 1
  %3299 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next72.i.i
  %3300 = load double, double* %3299, align 8, !tbaa !1
  %3301 = fcmp olt double %3300, %3283
  br i1 %3301, label %4243, label %.lr.ph15.i.i.2331

.loopexit8.i.i.loopexit.unr-lcssa:                ; preds = %4252
  br label %.loopexit8.i.i.loopexit

.loopexit8.i.i.loopexit:                          ; preds = %.loopexit8.i.i.loopexit.unr-lcssa, %.lr.ph15.i.i.preheader.split
  br label %.loopexit8.i.i

.loopexit8.i.i:                                   ; preds = %.loopexit8.i.i.loopexit, %3281
  %3302 = fcmp une double %3285, 0.000000e+00
  %or.cond20.i.i = and i1 %3287, %3302
  br i1 %or.cond20.i.i, label %.lr.ph13.i.i.preheader, label %.preheader5.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.loopexit8.i.i
  %3303 = add i32 %3279, -1
  %xtraiter322 = and i32 %3279, 3
  %lcmp.mod323 = icmp eq i32 %xtraiter322, 0
  br i1 %lcmp.mod323, label %.lr.ph13.i.i.preheader.split, label %.lr.ph13.i.i.prol.preheader

.lr.ph13.i.i.prol.preheader:                      ; preds = %.lr.ph13.i.i.preheader
  br label %.lr.ph13.i.i.prol

.lr.ph13.i.i.prol:                                ; preds = %3308, %.lr.ph13.i.i.prol.preheader
  %indvars.iv67.i.i.prol = phi i64 [ %indvars.iv.next68.i.i.prol, %3308 ], [ 0, %.lr.ph13.i.i.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %3308 ], [ %xtraiter322, %.lr.ph13.i.i.prol.preheader ]
  %3304 = getelementptr inbounds double, double* %2537, i64 %indvars.iv67.i.i.prol
  %3305 = load double, double* %3304, align 8, !tbaa !1
  %3306 = fcmp ogt double %3305, %3285
  br i1 %3306, label %3307, label %3308

; <label>:3307                                    ; preds = %.lr.ph13.i.i.prol
  store double %3285, double* %3304, align 8, !tbaa !1
  br label %3308

; <label>:3308                                    ; preds = %3307, %.lr.ph13.i.i.prol
  %indvars.iv.next68.i.i.prol = add nuw nsw i64 %indvars.iv67.i.i.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph13.i.i.preheader.split.loopexit, label %.lr.ph13.i.i.prol, !llvm.loop !53

.lr.ph13.i.i.preheader.split.loopexit:            ; preds = %3308
  br label %.lr.ph13.i.i.preheader.split

.lr.ph13.i.i.preheader.split:                     ; preds = %.lr.ph13.i.i.preheader.split.loopexit, %.lr.ph13.i.i.preheader
  %indvars.iv67.i.i.unr = phi i64 [ 0, %.lr.ph13.i.i.preheader ], [ %indvars.iv.next68.i.i.prol, %.lr.ph13.i.i.preheader.split.loopexit ]
  %3309 = icmp ult i32 %3303, 3
  br i1 %3309, label %.preheader5.i.i.loopexit, label %.lr.ph13.i.i.preheader.split.split

.lr.ph13.i.i.preheader.split.split:               ; preds = %.lr.ph13.i.i.preheader.split
  br label %.lr.ph13.i.i

.preheader5.i.i.loopexit.unr-lcssa:               ; preds = %4242
  br label %.preheader5.i.i.loopexit

.preheader5.i.i.loopexit:                         ; preds = %.preheader5.i.i.loopexit.unr-lcssa, %.lr.ph13.i.i.preheader.split
  br label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %.preheader5.i.i.loopexit, %.loopexit8.i.i
  br i1 %3287, label %.lr.ph11.i.i15, label %.preheader.i.i

.lr.ph11.i.i15:                                   ; preds = %.preheader5.i.i
  %3310 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 43, i32 0, i32 0, i32 0
  %3311 = load double*, double** %3310, align 8
  %3312 = sext i32 %3279 to i64
  br i1 %3286, label %.lr.ph11.split.us.i.i, label %.lr.ph11.split.i.i

.lr.ph11.split.us.i.i:                            ; preds = %.lr.ph11.i.i15
  br i1 %3302, label %.lr.ph11.split.us.split.us.i.i.preheader, label %.lr.ph11.split.us.split.i.i.preheader

.lr.ph11.split.us.split.i.i.preheader:            ; preds = %.lr.ph11.split.us.i.i
  br label %.lr.ph11.split.us.split.i.i

.lr.ph11.split.us.split.us.i.i.preheader:         ; preds = %.lr.ph11.split.us.i.i
  br label %.lr.ph11.split.us.split.us.i.i

.lr.ph11.split.us.split.us.i.i:                   ; preds = %3318, %.lr.ph11.split.us.split.us.i.i.preheader
  %indvars.iv59.i.i = phi i64 [ %indvars.iv.next60.i.i, %3318 ], [ 0, %.lr.ph11.split.us.split.us.i.i.preheader ]
  %3313 = getelementptr inbounds double, double* %3311, i64 %indvars.iv59.i.i
  %3314 = load double, double* %3313, align 8, !tbaa !1
  %3315 = fcmp olt double %3314, %3283
  %vc.0.us.us.i.i = select i1 %3315, double %3283, double %3314
  %3316 = fcmp ogt double %vc.0.us.us.i.i, %3285
  %vc.1.us.us.i.i = select i1 %3316, double %3285, double %vc.0.us.us.i.i
  %3317 = fcmp ugt double %vc.1.us.us.i.i, 0.000000e+00
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1
  br i1 %3317, label %3318, label %.us-lcssa.us.i.i.loopexit

; <label>:3318                                    ; preds = %.lr.ph11.split.us.split.us.i.i
  %3319 = icmp slt i64 %indvars.iv.next60.i.i, %3312
  br i1 %3319, label %.lr.ph11.split.us.split.us.i.i, label %.preheader.i.i.loopexit

.lr.ph11.split.us.split.i.i:                      ; preds = %3324, %.lr.ph11.split.us.split.i.i.preheader
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %3324 ], [ 0, %.lr.ph11.split.us.split.i.i.preheader ]
  %3320 = getelementptr inbounds double, double* %3311, i64 %indvars.iv61.i.i
  %3321 = load double, double* %3320, align 8, !tbaa !1
  %3322 = fcmp olt double %3321, %3283
  %vc.0.us.i.i = select i1 %3322, double %3283, double %3321
  %3323 = fcmp ugt double %vc.0.us.i.i, 0.000000e+00
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 1
  br i1 %3323, label %3324, label %.us-lcssa.us.i.i.loopexit299

; <label>:3324                                    ; preds = %.lr.ph11.split.us.split.i.i
  %3325 = icmp slt i64 %indvars.iv.next62.i.i, %3312
  br i1 %3325, label %.lr.ph11.split.us.split.i.i, label %.preheader.i.i.loopexit300

.lr.ph11.split.i.i:                               ; preds = %.lr.ph11.i.i15
  br i1 %3302, label %.lr.ph11.split.split.us.i.i.preheader, label %.lr.ph11.split.split.i.i.preheader

.lr.ph11.split.split.i.i.preheader:               ; preds = %.lr.ph11.split.i.i
  br label %.lr.ph11.split.split.i.i

.lr.ph11.split.split.us.i.i.preheader:            ; preds = %.lr.ph11.split.i.i
  br label %.lr.ph11.split.split.us.i.i

.lr.ph11.split.split.us.i.i:                      ; preds = %3330, %.lr.ph11.split.split.us.i.i.preheader
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i, %3330 ], [ 0, %.lr.ph11.split.split.us.i.i.preheader ]
  %3326 = getelementptr inbounds double, double* %3311, i64 %indvars.iv63.i.i
  %3327 = load double, double* %3326, align 8, !tbaa !1
  %3328 = fcmp ogt double %3327, %3285
  %vc.1.us18.i.i = select i1 %3328, double %3285, double %3327
  %3329 = fcmp ugt double %vc.1.us18.i.i, 0.000000e+00
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1
  br i1 %3329, label %3330, label %.us-lcssa.us.i.i.loopexit301

; <label>:3330                                    ; preds = %.lr.ph11.split.split.us.i.i
  %3331 = icmp slt i64 %indvars.iv.next64.i.i, %3312
  br i1 %3331, label %.lr.ph11.split.split.us.i.i, label %.preheader.i.i.loopexit302

.lr.ph13.i.i:                                     ; preds = %4242, %.lr.ph13.i.i.preheader.split.split
  %indvars.iv67.i.i = phi i64 [ %indvars.iv67.i.i.unr, %.lr.ph13.i.i.preheader.split.split ], [ %indvars.iv.next68.i.i.3, %4242 ]
  %3332 = getelementptr inbounds double, double* %2537, i64 %indvars.iv67.i.i
  %3333 = load double, double* %3332, align 8, !tbaa !1
  %3334 = fcmp ogt double %3333, %3285
  br i1 %3334, label %3335, label %.lr.ph13.i.i.1324

; <label>:3335                                    ; preds = %.lr.ph13.i.i
  store double %3285, double* %3332, align 8, !tbaa !1
  br label %.lr.ph13.i.i.1324

.lr.ph13.i.i.1324:                                ; preds = %3335, %.lr.ph13.i.i
  %indvars.iv.next68.i.i = add nuw nsw i64 %indvars.iv67.i.i, 1
  %3336 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next68.i.i
  %3337 = load double, double* %3336, align 8, !tbaa !1
  %3338 = fcmp ogt double %3337, %3285
  br i1 %3338, label %4233, label %.lr.ph13.i.i.2325

; <label>:3339                                    ; preds = %.lr.ph11.split.split.i.i
  %3340 = icmp slt i64 %indvars.iv.next66.i.i, %3312
  br i1 %3340, label %.lr.ph11.split.split.i.i, label %.preheader.i.i.loopexit304

.preheader.i.i.loopexit:                          ; preds = %3318
  br label %.preheader.i.i

.preheader.i.i.loopexit300:                       ; preds = %3324
  br label %.preheader.i.i

.preheader.i.i.loopexit302:                       ; preds = %3330
  br label %.preheader.i.i

.preheader.i.i.loopexit304:                       ; preds = %3339
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit304, %.preheader.i.i.loopexit302, %.preheader.i.i.loopexit300, %.preheader.i.i.loopexit, %.preheader5.i.i
  %3341 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 16
  %3342 = load i32, i32* %3341, align 4, !tbaa !12
  %3343 = icmp sgt i32 %3342, 0
  br i1 %3343, label %.lr.ph.i4.i, label %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i

.lr.ph.i4.i:                                      ; preds = %.preheader.i.i
  %3344 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 18
  %3345 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 20
  %3346 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 51
  %3347 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 52
  %3348 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 53
  %3349 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 66
  %3350 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 67
  %3351 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 69
  %3352 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 38, i32 0, i32 0, i32 0
  %3353 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 46, i32 0, i32 0, i32 0
  %3354 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 39, i32 0, i32 0, i32 0
  %3355 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 40, i32 0, i32 0, i32 0
  %3356 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 42, i32 0, i32 0, i32 0
  %3357 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 41, i32 0, i32 0, i32 0
  %3358 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 49, i32 0, i32 0, i32 0
  %3359 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 17
  br label %3363

.lr.ph11.split.split.i.i:                         ; preds = %3339, %.lr.ph11.split.split.i.i.preheader
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %3339 ], [ 0, %.lr.ph11.split.split.i.i.preheader ]
  %3360 = getelementptr inbounds double, double* %3311, i64 %indvars.iv65.i.i
  %3361 = load double, double* %3360, align 8, !tbaa !1
  %3362 = fcmp ugt double %3361, 0.000000e+00
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1
  br i1 %3362, label %3339, label %.us-lcssa.us.i.i.loopexit303

.us-lcssa.us.i.i.loopexit:                        ; preds = %.lr.ph11.split.us.split.us.i.i
  br label %.us-lcssa.us.i.i

.us-lcssa.us.i.i.loopexit299:                     ; preds = %.lr.ph11.split.us.split.i.i
  br label %.us-lcssa.us.i.i

.us-lcssa.us.i.i.loopexit301:                     ; preds = %.lr.ph11.split.split.us.i.i
  br label %.us-lcssa.us.i.i

.us-lcssa.us.i.i.loopexit303:                     ; preds = %.lr.ph11.split.split.i.i
  br label %.us-lcssa.us.i.i

.us-lcssa.us.i.i:                                 ; preds = %.us-lcssa.us.i.i.loopexit303, %.us-lcssa.us.i.i.loopexit301, %.us-lcssa.us.i.i.loopexit299, %.us-lcssa.us.i.i.loopexit
  call void @exit(i32 -1) #20
  unreachable

; <label>:3363                                    ; preds = %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i, %.lr.ph.i4.i
  %indvars.iv.i5.i = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i15.i, %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i ]
  %3364 = phi i32 [ %3342, %.lr.ph.i4.i ], [ %4071, %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i ]
  %3365 = load i32*, i32** %3344, align 8, !tbaa !43
  %3366 = getelementptr inbounds i32, i32* %3365, i64 %indvars.iv.i5.i
  %3367 = load i32, i32* %3366, align 4, !tbaa !12
  %3368 = load i32**, i32*** %3345, align 8, !tbaa !48
  %3369 = getelementptr inbounds i32*, i32** %3368, i64 %indvars.iv.i5.i
  %3370 = load i32*, i32** %3369, align 8, !tbaa !49
  %3371 = sdiv i32 %3364, 2
  %3372 = sext i32 %3371 to i64
  %3373 = icmp slt i64 %indvars.iv.i5.i, %3372
  br i1 %3373, label %3383, label %3374

; <label>:3374                                    ; preds = %3363
  %3375 = add nsw i32 %3364, 15
  %3376 = sdiv i32 %3375, 20
  %3377 = sub nsw i32 %3364, %3376
  %3378 = sext i32 %3377 to i64
  %3379 = icmp slt i64 %indvars.iv.i5.i, %3378
  %3380 = load i32, i32* %3359, align 4, !tbaa !12
  %3381 = add nsw i32 %3380, 1
  %3382 = mul nsw i32 %3381, 10
  %..i.i = select i1 %3379, i32 %3381, i32 %3382
  br label %3383

; <label>:3383                                    ; preds = %3374, %3363
  %rep.0.i.i = phi i32 [ 1, %3363 ], [ %..i.i, %3374 ]
  %3384 = load double, double* %3346, align 8, !tbaa !54
  %3385 = load double, double* %3347, align 8, !tbaa !55
  %3386 = load double, double* %3348, align 8, !tbaa !56
  %3387 = load double, double* %3284, align 8, !tbaa !51
  %3388 = load double, double* %3282, align 8, !tbaa !50
  %3389 = load double, double* %3349, align 8, !tbaa !57
  %3390 = load double, double* %3350, align 8, !tbaa !58
  %3391 = load double, double* %3351, align 8, !tbaa !59
  %3392 = sext i32 %3367 to i64
  %3393 = shl nsw i64 %3392, 3
  %3394 = call noalias i8* @malloc(i64 %3393) #2
  %3395 = bitcast i8* %3394 to double*
  %3396 = call noalias i8* @malloc(i64 %3393) #2
  %3397 = bitcast i8* %3396 to double*
  %3398 = call noalias i8* @malloc(i64 %3393) #2
  %3399 = bitcast i8* %3398 to double*
  %3400 = call noalias i8* @malloc(i64 %3393) #2
  %3401 = bitcast i8* %3400 to double*
  %3402 = call noalias i8* @malloc(i64 %3393) #2
  %3403 = bitcast i8* %3402 to double*
  %3404 = call noalias i8* @malloc(i64 %3393) #2
  %3405 = bitcast i8* %3404 to double*
  %3406 = call noalias i8* @malloc(i64 %3393) #2
  %3407 = bitcast i8* %3406 to double*
  %3408 = call noalias i8* @malloc(i64 %3393) #2
  %3409 = bitcast i8* %3408 to double*
  %3410 = call noalias i8* @malloc(i64 %3393) #2
  %3411 = bitcast i8* %3410 to double*
  %3412 = call noalias i8* @malloc(i64 %3393) #2
  %3413 = bitcast i8* %3412 to double*
  %3414 = call noalias i8* @malloc(i64 %3393) #2
  %3415 = bitcast i8* %3414 to double*
  %3416 = call noalias i8* @malloc(i64 %3393) #2
  %3417 = bitcast i8* %3416 to double*
  %3418 = call noalias i8* @malloc(i64 %3393) #2
  %3419 = bitcast i8* %3418 to double*
  %3420 = call noalias i8* @malloc(i64 %3393) #2
  %3421 = bitcast i8* %3420 to double*
  %3422 = icmp sgt i32 %rep.0.i.i, 0
  br i1 %3422, label %.preheader32.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader32.lr.ph.i.i.i:                         ; preds = %3383
  %3423 = icmp sgt i32 %3367, 0
  %3424 = add i32 %3367, -1
  %3425 = zext i32 %3424 to i64
  %3426 = shl nuw nsw i64 %3425, 3
  %3427 = add nuw nsw i64 %3426, 8
  %.not.i.i.i = fcmp oeq double %3388, 0.000000e+00
  %.not47.i.i.i = icmp slt i32 %3367, 1
  %brmerge.i.i.i = or i1 %.not47.i.i.i, %.not.i.i.i
  %.not48.i.i.i = fcmp oeq double %3387, 0.000000e+00
  %brmerge50.i.i.i = or i1 %.not47.i.i.i, %.not48.i.i.i
  %3428 = add nuw nsw i64 %3425, 1
  %3429 = and i64 %3428, 8589934588
  %3430 = add nsw i64 %3429, -4
  %3431 = lshr exact i64 %3430, 2
  %min.iters.check249 = icmp ult i64 %3428, 2
  %min.iters.check228 = icmp ult i64 %3428, 4
  %cmp.zero163 = icmp eq i64 %3429, 0
  %3432 = and i64 %3431, 1
  %lcmp.mod319 = icmp eq i64 %3432, 0
  %3433 = bitcast i8* %3402 to <2 x double>*
  %3434 = getelementptr i8, i8* %3402, i64 16
  %3435 = bitcast i8* %3434 to <2 x double>*
  %3436 = bitcast i8* %3418 to <2 x double>*
  %3437 = getelementptr i8, i8* %3418, i64 16
  %3438 = bitcast i8* %3437 to <2 x double>*
  %3439 = bitcast i8* %3420 to <2 x double>*
  %3440 = getelementptr i8, i8* %3420, i64 16
  %3441 = bitcast i8* %3440 to <2 x double>*
  %3442 = icmp eq i64 %3431, 0
  %cmp.n168 = icmp eq i64 %3428, %3429
  %broadcast.splatinsert219 = insertelement <2 x double> undef, double %3384, i32 0
  %broadcast.splat220 = shufflevector <2 x double> %broadcast.splatinsert219, <2 x double> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <2 x double> undef, double %3390, i32 0
  %broadcast.splat222 = shufflevector <2 x double> %broadcast.splatinsert221, <2 x double> undef, <2 x i32> zeroinitializer
  %3443 = bitcast i8* %3404 to <2 x double>*
  %3444 = getelementptr i8, i8* %3404, i64 16
  %3445 = bitcast i8* %3444 to <2 x double>*
  %n.vec252 = and i64 %3428, 8589934590
  %cmp.zero253 = icmp eq i64 %n.vec252, 0
  %cmp.n258 = icmp eq i64 %3428, %n.vec252
  %xtraiter311 = and i32 %3367, 1
  %lcmp.mod312 = icmp eq i32 %xtraiter311, 0
  %3446 = icmp eq i32 %3424, 0
  %3447 = bitcast i8* %3402 to i64*
  %3448 = bitcast i8* %3404 to i64*
  br label %.preheader32.i.i.i

.preheader32.i.i.i:                               ; preds = %_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i, %.preheader32.lr.ph.i.i.i
  %j.046.i.i.i = phi i32 [ 0, %.preheader32.lr.ph.i.i.i ], [ %3981, %_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i ]
  br i1 %3423, label %.lr.ph35.i.i.i, label %._crit_edge45.i.i.i

.lr.ph35.i.i.i:                                   ; preds = %.preheader32.i.i.i
  %3449 = load double*, double** %3352, align 8
  %3450 = load double*, double** %3353, align 8
  %3451 = load double*, double** %3354, align 8
  %3452 = load double*, double** %3355, align 8
  %3453 = load double*, double** %3356, align 8
  %3454 = load double*, double** %3357, align 8
  br label %3475

.preheader.i.i.i.loopexit:                        ; preds = %_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.loopexit, %3383
  %3455 = icmp sgt i32 %3367, 0
  br i1 %3455, label %.lr.ph.i.i6.i, label %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.i.i.i

.lr.ph.i.i6.i:                                    ; preds = %.preheader.i.i.i
  %3456 = load double*, double** %3354, align 8
  %3457 = load double*, double** %3352, align 8
  %3458 = load double*, double** %3355, align 8
  %xtraiter320 = and i32 %3367, 1
  %lcmp.mod321 = icmp eq i32 %xtraiter320, 0
  br i1 %lcmp.mod321, label %.lr.ph.i.i6.i.split, label %3459

; <label>:3459                                    ; preds = %.lr.ph.i.i6.i
  %3460 = load i32, i32* %3370, align 4, !tbaa !12
  %3461 = bitcast i8* %3412 to i64*
  %3462 = load i64, i64* %3461, align 8, !tbaa !1
  %3463 = sext i32 %3460 to i64
  %3464 = getelementptr inbounds double, double* %3456, i64 %3463
  %3465 = bitcast double* %3464 to i64*
  store i64 %3462, i64* %3465, align 8, !tbaa !1
  %3466 = bitcast i8* %3414 to i64*
  %3467 = load i64, i64* %3466, align 8, !tbaa !1
  %3468 = getelementptr inbounds double, double* %3457, i64 %3463
  %3469 = bitcast double* %3468 to i64*
  store i64 %3467, i64* %3469, align 8, !tbaa !1
  %3470 = bitcast i8* %3416 to i64*
  %3471 = load i64, i64* %3470, align 8, !tbaa !1
  %3472 = getelementptr inbounds double, double* %3458, i64 %3463
  %3473 = bitcast double* %3472 to i64*
  store i64 %3471, i64* %3473, align 8, !tbaa !1
  br label %.lr.ph.i.i6.i.split

.lr.ph.i.i6.i.split:                              ; preds = %3459, %.lr.ph.i.i6.i
  %indvars.iv.i.i13.i.unr = phi i64 [ 0, %.lr.ph.i.i6.i ], [ 1, %3459 ]
  %3474 = icmp eq i32 %3367, 1
  br i1 %3474, label %.lr.ph.i.i.i11.i.preheader, label %.lr.ph.i.i6.i.split.split

.lr.ph.i.i6.i.split.split:                        ; preds = %.lr.ph.i.i6.i.split
  br label %4034

; <label>:3475                                    ; preds = %3475, %.lr.ph35.i.i.i
  %indvars.iv53.i.i.i = phi i64 [ 0, %.lr.ph35.i.i.i ], [ %indvars.iv.next54.i.i.i, %3475 ]
  %3476 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv53.i.i.i
  %3477 = load i32, i32* %3476, align 4, !tbaa !12
  %3478 = sext i32 %3477 to i64
  %3479 = getelementptr inbounds double, double* %3449, i64 %3478
  %3480 = bitcast double* %3479 to i64*
  %3481 = load i64, i64* %3480, align 8, !tbaa !1
  %3482 = getelementptr inbounds double, double* %3395, i64 %indvars.iv53.i.i.i
  %3483 = bitcast double* %3482 to i64*
  store i64 %3481, i64* %3483, align 8, !tbaa !1
  %3484 = getelementptr inbounds double, double* %3450, i64 %3478
  %3485 = bitcast double* %3484 to i64*
  %3486 = load i64, i64* %3485, align 8, !tbaa !1
  %3487 = getelementptr inbounds double, double* %3397, i64 %indvars.iv53.i.i.i
  %3488 = bitcast double* %3487 to i64*
  store i64 %3486, i64* %3488, align 8, !tbaa !1
  %3489 = getelementptr inbounds double, double* %3451, i64 %3478
  %3490 = bitcast double* %3489 to i64*
  %3491 = load i64, i64* %3490, align 8, !tbaa !1
  %3492 = getelementptr inbounds double, double* %3399, i64 %indvars.iv53.i.i.i
  %3493 = bitcast double* %3492 to i64*
  store i64 %3491, i64* %3493, align 8, !tbaa !1
  %3494 = getelementptr inbounds double, double* %3452, i64 %3478
  %3495 = bitcast double* %3494 to i64*
  %3496 = load i64, i64* %3495, align 8, !tbaa !1
  %3497 = getelementptr inbounds double, double* %3401, i64 %indvars.iv53.i.i.i
  %3498 = bitcast double* %3497 to i64*
  store i64 %3496, i64* %3498, align 8, !tbaa !1
  %3499 = getelementptr inbounds double, double* %3453, i64 %3478
  %3500 = bitcast double* %3499 to i64*
  %3501 = load i64, i64* %3500, align 8, !tbaa !1
  %3502 = getelementptr inbounds double, double* %3407, i64 %indvars.iv53.i.i.i
  %3503 = bitcast double* %3502 to i64*
  store i64 %3501, i64* %3503, align 8, !tbaa !1
  %3504 = getelementptr inbounds double, double* %3454, i64 %3478
  %3505 = bitcast double* %3504 to i64*
  %3506 = load i64, i64* %3505, align 8, !tbaa !1
  %3507 = getelementptr inbounds double, double* %3409, i64 %indvars.iv53.i.i.i
  %3508 = bitcast double* %3507 to i64*
  store i64 %3506, i64* %3508, align 8, !tbaa !1
  %indvars.iv.next54.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv.next54.i.i.i to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %3367
  br i1 %exitcond53, label %.lr.ph37.i.i.i.preheader, label %3475

.lr.ph37.i.i.i.preheader:                         ; preds = %3475
  br label %.lr.ph37.i.i.i

._crit_edge38.i.i.i:                              ; preds = %.lr.ph37.i.i.i
  br i1 %brmerge.i.i.i, label %.loopexit.i.i.i, label %.lr.ph40.i.i.i.preheader

.lr.ph40.i.i.i.preheader:                         ; preds = %._crit_edge38.i.i.i
  br i1 %lcmp.mod312, label %.lr.ph40.i.i.i.preheader.split, label %.lr.ph40.i.i.i.prol

.lr.ph40.i.i.i.prol:                              ; preds = %.lr.ph40.i.i.i.preheader
  %3509 = load i32, i32* %3370, align 4, !tbaa !12
  %3510 = sext i32 %3509 to i64
  %3511 = getelementptr inbounds double, double* %2537, i64 %3510
  %3512 = load double, double* %3511, align 8, !tbaa !1
  %3513 = fcmp ugt double %3512, %3388
  br i1 %3513, label %3516, label %3514

; <label>:3514                                    ; preds = %.lr.ph40.i.i.i.prol
  %3515 = load i64, i64* %3447, align 8, !tbaa !1
  store i64 %3515, i64* %3448, align 8, !tbaa !1
  br label %3516

; <label>:3516                                    ; preds = %3514, %.lr.ph40.i.i.i.prol
  br label %.lr.ph40.i.i.i.preheader.split

.lr.ph40.i.i.i.preheader.split:                   ; preds = %3516, %.lr.ph40.i.i.i.preheader
  %indvars.iv61.i.i.i.unr = phi i64 [ 0, %.lr.ph40.i.i.i.preheader ], [ 1, %3516 ]
  br i1 %3446, label %.loopexit.i.i.i.loopexit, label %.lr.ph40.i.i.i.preheader.split.split

.lr.ph40.i.i.i.preheader.split.split:             ; preds = %.lr.ph40.i.i.i.preheader.split
  br label %.lr.ph40.i.i.i

.lr.ph37.i.i.i:                                   ; preds = %.lr.ph37.i.i.i, %.lr.ph37.i.i.i.preheader
  %indvars.iv57.i.i.i = phi i64 [ %indvars.iv.next58.i.i.i, %.lr.ph37.i.i.i ], [ 0, %.lr.ph37.i.i.i.preheader ]
  %3517 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv57.i.i.i
  %3518 = load i32, i32* %3517, align 4, !tbaa !12
  %3519 = sext i32 %3518 to i64
  %3520 = getelementptr inbounds double, double* %2537, i64 %3519
  %3521 = load double, double* %3520, align 8, !tbaa !1
  %3522 = fdiv double 1.000000e+00, %3521
  %3523 = fadd double %3522, -1.000000e+00
  %3524 = getelementptr inbounds double, double* %3403, i64 %indvars.iv57.i.i.i
  store double %3523, double* %3524, align 8, !tbaa !1
  %3525 = getelementptr inbounds double, double* %3397, i64 %indvars.iv57.i.i.i
  %3526 = load double, double* %3525, align 8, !tbaa !1
  %3527 = fmul double %3526, 5.000000e-01
  %3528 = fsub double %3521, %3527
  %3529 = fdiv double 1.000000e+00, %3528
  %3530 = fadd double %3529, -1.000000e+00
  %3531 = getelementptr inbounds double, double* %3405, i64 %indvars.iv57.i.i.i
  store double %3530, double* %3531, align 8, !tbaa !1
  %indvars.iv.next58.i.i.i = add nuw nsw i64 %indvars.iv57.i.i.i, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv.next58.i.i.i to i32
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %3367
  br i1 %exitcond55, label %._crit_edge38.i.i.i, label %.lr.ph37.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %4227, %.lr.ph40.i.i.i.preheader.split.split
  %indvars.iv61.i.i.i = phi i64 [ %indvars.iv61.i.i.i.unr, %.lr.ph40.i.i.i.preheader.split.split ], [ %indvars.iv.next62.i.i.i.1, %4227 ]
  %3532 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv61.i.i.i
  %3533 = load i32, i32* %3532, align 4, !tbaa !12
  %3534 = sext i32 %3533 to i64
  %3535 = getelementptr inbounds double, double* %2537, i64 %3534
  %3536 = load double, double* %3535, align 8, !tbaa !1
  %3537 = fcmp ugt double %3536, %3388
  br i1 %3537, label %.lr.ph40.i.i.i.1310, label %3538

; <label>:3538                                    ; preds = %.lr.ph40.i.i.i
  %3539 = getelementptr inbounds double, double* %3403, i64 %indvars.iv61.i.i.i
  %3540 = bitcast double* %3539 to i64*
  %3541 = load i64, i64* %3540, align 8, !tbaa !1
  %3542 = getelementptr inbounds double, double* %3405, i64 %indvars.iv61.i.i.i
  %3543 = bitcast double* %3542 to i64*
  store i64 %3541, i64* %3543, align 8, !tbaa !1
  br label %.lr.ph40.i.i.i.1310

.lr.ph40.i.i.i.1310:                              ; preds = %3538, %.lr.ph40.i.i.i
  %indvars.iv.next62.i.i.i = add nuw nsw i64 %indvars.iv61.i.i.i, 1
  %3544 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.next62.i.i.i
  %3545 = load i32, i32* %3544, align 4, !tbaa !12
  %3546 = sext i32 %3545 to i64
  %3547 = getelementptr inbounds double, double* %2537, i64 %3546
  %3548 = load double, double* %3547, align 8, !tbaa !1
  %3549 = fcmp ugt double %3548, %3388
  br i1 %3549, label %4227, label %4221

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %4227
  br label %.loopexit.i.i.i.loopexit

.loopexit.i.i.i.loopexit:                         ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph40.i.i.i.preheader.split
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit, %._crit_edge38.i.i.i
  br i1 %brmerge50.i.i.i, label %.lr.ph47.i.preheader.i.i.i, label %.lr.ph42.i.i.i.preheader

.lr.ph42.i.i.i.preheader:                         ; preds = %.loopexit.i.i.i
  br i1 %lcmp.mod312, label %.lr.ph42.i.i.i.preheader.split, label %.lr.ph42.i.i.i.prol

.lr.ph42.i.i.i.prol:                              ; preds = %.lr.ph42.i.i.i.preheader
  %3550 = load i32, i32* %3370, align 4, !tbaa !12
  %3551 = sext i32 %3550 to i64
  %3552 = getelementptr inbounds double, double* %2537, i64 %3551
  %3553 = load double, double* %3552, align 8, !tbaa !1
  %3554 = fcmp ult double %3553, %3387
  br i1 %3554, label %3556, label %3555

; <label>:3555                                    ; preds = %.lr.ph42.i.i.i.prol
  store double 0.000000e+00, double* %3399, align 8, !tbaa !1
  store double 0.000000e+00, double* %3403, align 8, !tbaa !1
  store double 0.000000e+00, double* %3405, align 8, !tbaa !1
  br label %3556

; <label>:3556                                    ; preds = %3555, %.lr.ph42.i.i.i.prol
  br label %.lr.ph42.i.i.i.preheader.split

.lr.ph42.i.i.i.preheader.split:                   ; preds = %3556, %.lr.ph42.i.i.i.preheader
  %indvars.iv65.i.i.i.unr = phi i64 [ 0, %.lr.ph42.i.i.i.preheader ], [ 1, %3556 ]
  br i1 %3446, label %.lr.ph47.i.preheader.i.i.i.loopexit, label %.lr.ph42.i.i.i.preheader.split.split

.lr.ph42.i.i.i.preheader.split.split:             ; preds = %.lr.ph42.i.i.i.preheader.split
  br label %.lr.ph42.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %4232, %.lr.ph42.i.i.i.preheader.split.split
  %indvars.iv65.i.i.i = phi i64 [ %indvars.iv65.i.i.i.unr, %.lr.ph42.i.i.i.preheader.split.split ], [ %indvars.iv.next66.i.i.i.1, %4232 ]
  %3557 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv65.i.i.i
  %3558 = load i32, i32* %3557, align 4, !tbaa !12
  %3559 = sext i32 %3558 to i64
  %3560 = getelementptr inbounds double, double* %2537, i64 %3559
  %3561 = load double, double* %3560, align 8, !tbaa !1
  %3562 = fcmp ult double %3561, %3387
  br i1 %3562, label %.lr.ph42.i.i.i.1313, label %3563

; <label>:3563                                    ; preds = %.lr.ph42.i.i.i
  %3564 = getelementptr inbounds double, double* %3399, i64 %indvars.iv65.i.i.i
  store double 0.000000e+00, double* %3564, align 8, !tbaa !1
  %3565 = getelementptr inbounds double, double* %3403, i64 %indvars.iv65.i.i.i
  store double 0.000000e+00, double* %3565, align 8, !tbaa !1
  %3566 = getelementptr inbounds double, double* %3405, i64 %indvars.iv65.i.i.i
  store double 0.000000e+00, double* %3566, align 8, !tbaa !1
  br label %.lr.ph42.i.i.i.1313

.lr.ph42.i.i.i.1313:                              ; preds = %3563, %.lr.ph42.i.i.i
  %indvars.iv.next66.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i, 1
  %3567 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.next66.i.i.i
  %3568 = load i32, i32* %3567, align 4, !tbaa !12
  %3569 = sext i32 %3568 to i64
  %3570 = getelementptr inbounds double, double* %2537, i64 %3569
  %3571 = load double, double* %3570, align 8, !tbaa !1
  %3572 = fcmp ult double %3571, %3387
  br i1 %3572, label %4232, label %4228

._crit_edge45.i.i.i:                              ; preds = %.preheader32.i.i.i
  %3573 = call noalias i8* @malloc(i64 %3393) #2
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i

.lr.ph47.i.preheader.i.i.i.loopexit.unr-lcssa:    ; preds = %4232
  br label %.lr.ph47.i.preheader.i.i.i.loopexit

.lr.ph47.i.preheader.i.i.i.loopexit:              ; preds = %.lr.ph47.i.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph42.i.i.i.preheader.split
  br label %.lr.ph47.i.preheader.i.i.i

.lr.ph47.i.preheader.i.i.i:                       ; preds = %.lr.ph47.i.preheader.i.i.i.loopexit, %.loopexit.i.i.i
  call void @llvm.memset.p0i8.i64(i8* %3410, i8 0, i64 %3427, i32 8, i1 false) #2
  %3574 = call noalias i8* @malloc(i64 %3393) #2
  br i1 %min.iters.check249, label %.lr.ph47.i.i.i.i.preheader, label %min.iters.checked250

.lr.ph47.i.i.i.i.preheader:                       ; preds = %middle.block247, %min.iters.checked250, %.lr.ph47.i.preheader.i.i.i
  %indvars.iv73.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked250 ], [ 0, %.lr.ph47.i.preheader.i.i.i ], [ %n.vec252, %middle.block247 ]
  br label %.lr.ph47.i.i.i.i

min.iters.checked250:                             ; preds = %.lr.ph47.i.preheader.i.i.i
  br i1 %cmp.zero253, label %.lr.ph47.i.i.i.i.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %min.iters.checked250
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph254
  %index255 = phi i64 [ 0, %vector.ph254 ], [ %index.next256, %vector.body246 ]
  %3575 = getelementptr inbounds double, double* %3395, i64 %index255
  %3576 = bitcast double* %3575 to <2 x double>*
  %wide.load262 = load <2 x double>, <2 x double>* %3576, align 8, !tbaa !1
  %3577 = getelementptr inbounds double, double* %3397, i64 %index255
  %3578 = bitcast double* %3577 to <2 x double>*
  %wide.load263 = load <2 x double>, <2 x double>* %3578, align 8, !tbaa !1
  %3579 = fmul <2 x double> %wide.load263, <double 5.000000e-01, double 5.000000e-01>
  %3580 = getelementptr inbounds double, double* %3399, i64 %index255
  %3581 = bitcast double* %3580 to <2 x double>*
  %wide.load264 = load <2 x double>, <2 x double>* %3581, align 8, !tbaa !1
  %3582 = getelementptr inbounds double, double* %3401, i64 %index255
  %3583 = bitcast double* %3582 to <2 x double>*
  %wide.load265 = load <2 x double>, <2 x double>* %3583, align 8, !tbaa !1
  %3584 = fadd <2 x double> %wide.load264, %wide.load265
  %3585 = fmul <2 x double> %3579, %3584
  %3586 = fsub <2 x double> %wide.load262, %3585
  %3587 = getelementptr inbounds double, double* %3411, i64 %index255
  %3588 = bitcast double* %3587 to <2 x double>*
  %wide.load266 = load <2 x double>, <2 x double>* %3588, align 8, !tbaa !1
  %3589 = fmul <2 x double> %wide.load266, <double 5.000000e-01, double 5.000000e-01>
  %3590 = fadd <2 x double> %3589, %3586
  %3591 = getelementptr inbounds double, double* %3415, i64 %index255
  %3592 = fcmp olt <2 x double> %3590, %broadcast.splat222
  %3593 = select <2 x i1> %3592, <2 x double> %broadcast.splat222, <2 x double> %3590
  %3594 = bitcast double* %3591 to <2 x double>*
  store <2 x double> %3593, <2 x double>* %3594, align 8, !tbaa !1
  %index.next256 = add i64 %index255, 2
  %3595 = icmp eq i64 %index.next256, %n.vec252
  br i1 %3595, label %middle.block247, label %vector.body246, !llvm.loop !60

middle.block247:                                  ; preds = %vector.body246
  br i1 %cmp.n258, label %.lr.ph5.i.i.i.i.i.preheader, label %.lr.ph47.i.i.i.i.preheader

.lr.ph5.i.i.i.i.i:                                ; preds = %.lr.ph5.i.i.i.i.i.preheader298, %.lr.ph5.i.i.i.i.i
  %indvars.iv6.i.i.i.i.i = phi i64 [ %indvars.iv.next7.i.i.i.i.i, %.lr.ph5.i.i.i.i.i ], [ %indvars.iv6.i.i.i.i.i.ph, %.lr.ph5.i.i.i.i.i.preheader298 ]
  %3596 = getelementptr inbounds double, double* %3405, i64 %indvars.iv6.i.i.i.i.i
  %3597 = load double, double* %3596, align 8, !tbaa !1
  %3598 = fadd double %3597, 1.000000e+00
  %3599 = fmul double %3598, 0x3FE5555555555555
  %3600 = getelementptr inbounds double, double* %3419, i64 %indvars.iv6.i.i.i.i.i
  store double %3599, double* %3600, align 8, !tbaa !1
  %3601 = getelementptr inbounds double, double* %3421, i64 %indvars.iv6.i.i.i.i.i
  store double 0x3FE5555555555555, double* %3601, align 8, !tbaa !1
  %indvars.iv.next7.i.i.i.i.i = add nuw nsw i64 %indvars.iv6.i.i.i.i.i, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv.next7.i.i.i.i.i to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %3367
  br i1 %exitcond63, label %.lr.ph.i.i.i.preheader.i.i.loopexit, label %.lr.ph5.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.preheader.i.i.loopexit:              ; preds = %.lr.ph5.i.i.i.i.i
  br label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %middle.block226, %.lr.ph.i.i.i.preheader.i.i.loopexit
  %3602 = bitcast i8* %3574 to double*
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %3622, %.lr.ph.i.i.i.preheader.i.i
  %indvars.iv.i.i.i.i.i16 = phi i64 [ %indvars.iv.next.i.i.i.i.i18, %3622 ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  %3603 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i.i.i.i.i16
  %3604 = load i32, i32* %3603, align 4, !tbaa !12
  %3605 = getelementptr inbounds double, double* %3419, i64 %indvars.iv.i.i.i.i.i16
  %3606 = load double, double* %3605, align 8, !tbaa !1
  %3607 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i.i.i.i.i16
  %3608 = load double, double* %3607, align 8, !tbaa !1
  %3609 = fmul double %3606, %3608
  %3610 = getelementptr inbounds double, double* %3602, i64 %indvars.iv.i.i.i.i.i16
  %3611 = call double @fabs(double %3609) #15
  %3612 = fcmp olt double %3611, %3385
  %storemerge.i.i.i.i.i = select i1 %3612, double 0.000000e+00, double %3609
  store double %storemerge.i.i.i.i.i, double* %3610, align 8, !tbaa !1
  %3613 = sext i32 %3604 to i64
  %3614 = getelementptr inbounds double, double* %2537, i64 %3613
  %3615 = load double, double* %3614, align 8, !tbaa !1
  %3616 = fcmp ult double %3615, %3387
  br i1 %3616, label %3618, label %3617

; <label>:3617                                    ; preds = %.lr.ph.i.i.i.i.i17
  store double 0.000000e+00, double* %3610, align 8, !tbaa !1
  br label %3618

; <label>:3618                                    ; preds = %3617, %.lr.ph.i.i.i.i.i17
  %3619 = phi double [ %storemerge.i.i.i.i.i, %.lr.ph.i.i.i.i.i17 ], [ 0.000000e+00, %3617 ]
  %3620 = fcmp olt double %3619, %3389
  br i1 %3620, label %3621, label %3622

; <label>:3621                                    ; preds = %3618
  store double %3389, double* %3610, align 8, !tbaa !1
  br label %3622

; <label>:3622                                    ; preds = %3621, %3618
  %indvars.iv.next.i.i.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i.i.i16, 1
  %lftr.wideiv64 = trunc i64 %indvars.iv.next.i.i.i.i.i18 to i32
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %3367
  br i1 %exitcond65, label %.lr.ph44.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i17

.lr.ph44.i.i.i.i.preheader:                       ; preds = %3622
  br label %.lr.ph44.i.i.i.i

.lr.ph47.i.i.i.i:                                 ; preds = %.lr.ph47.i.i.i.i, %.lr.ph47.i.i.i.i.preheader
  %indvars.iv73.i.i.i.i = phi i64 [ %indvars.iv.next74.i.i.i.i, %.lr.ph47.i.i.i.i ], [ %indvars.iv73.i.i.i.i.ph, %.lr.ph47.i.i.i.i.preheader ]
  %3623 = getelementptr inbounds double, double* %3395, i64 %indvars.iv73.i.i.i.i
  %3624 = load double, double* %3623, align 8, !tbaa !1
  %3625 = getelementptr inbounds double, double* %3397, i64 %indvars.iv73.i.i.i.i
  %3626 = load double, double* %3625, align 8, !tbaa !1
  %3627 = fmul double %3626, 5.000000e-01
  %3628 = getelementptr inbounds double, double* %3399, i64 %indvars.iv73.i.i.i.i
  %3629 = load double, double* %3628, align 8, !tbaa !1
  %3630 = getelementptr inbounds double, double* %3401, i64 %indvars.iv73.i.i.i.i
  %3631 = load double, double* %3630, align 8, !tbaa !1
  %3632 = fadd double %3629, %3631
  %3633 = fmul double %3627, %3632
  %3634 = fsub double %3624, %3633
  %3635 = getelementptr inbounds double, double* %3411, i64 %indvars.iv73.i.i.i.i
  %3636 = load double, double* %3635, align 8, !tbaa !1
  %3637 = fmul double %3636, 5.000000e-01
  %3638 = fadd double %3637, %3634
  %3639 = getelementptr inbounds double, double* %3415, i64 %indvars.iv73.i.i.i.i
  %3640 = fcmp olt double %3638, %3390
  %storemerge.i.i.i.i = select i1 %3640, double %3390, double %3638
  store double %storemerge.i.i.i.i, double* %3639, align 8, !tbaa !1
  %indvars.iv.next74.i.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i.i, 1
  %lftr.wideiv60 = trunc i64 %indvars.iv.next74.i.i.i.i to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %3367
  br i1 %exitcond61, label %.lr.ph5.i.i.i.i.i.preheader.loopexit, label %.lr.ph47.i.i.i.i, !llvm.loop !62

.lr.ph5.i.i.i.i.i.preheader.loopexit:             ; preds = %.lr.ph47.i.i.i.i
  br label %.lr.ph5.i.i.i.i.i.preheader

.lr.ph5.i.i.i.i.i.preheader:                      ; preds = %.lr.ph5.i.i.i.i.i.preheader.loopexit, %middle.block247
  br i1 %min.iters.check228, label %.lr.ph5.i.i.i.i.i.preheader298, label %min.iters.checked229

.lr.ph5.i.i.i.i.i.preheader298:                   ; preds = %middle.block226, %min.iters.checked229, %.lr.ph5.i.i.i.i.i.preheader
  %indvars.iv6.i.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked229 ], [ 0, %.lr.ph5.i.i.i.i.i.preheader ], [ %3429, %middle.block226 ]
  br label %.lr.ph5.i.i.i.i.i

min.iters.checked229:                             ; preds = %.lr.ph5.i.i.i.i.i.preheader
  br i1 %cmp.zero163, label %.lr.ph5.i.i.i.i.i.preheader298, label %vector.body225.preheader

vector.body225.preheader:                         ; preds = %min.iters.checked229
  br i1 %lcmp.mod319, label %vector.body225.prol, label %vector.body225.preheader.split

vector.body225.prol:                              ; preds = %vector.body225.preheader
  %wide.load242.prol = load <2 x double>, <2 x double>* %3443, align 8, !tbaa !1
  %wide.load243.prol = load <2 x double>, <2 x double>* %3445, align 8, !tbaa !1
  %3641 = fadd <2 x double> %wide.load242.prol, <double 1.000000e+00, double 1.000000e+00>
  %3642 = fadd <2 x double> %wide.load243.prol, <double 1.000000e+00, double 1.000000e+00>
  %3643 = fmul <2 x double> %3641, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3644 = fmul <2 x double> %3642, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  store <2 x double> %3643, <2 x double>* %3436, align 8, !tbaa !1
  store <2 x double> %3644, <2 x double>* %3438, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3439, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3441, align 8, !tbaa !1
  br label %vector.body225.preheader.split

vector.body225.preheader.split:                   ; preds = %vector.body225.prol, %vector.body225.preheader
  %index234.unr = phi i64 [ 0, %vector.body225.preheader ], [ 4, %vector.body225.prol ]
  br i1 %3442, label %middle.block226, label %vector.body225.preheader.split.split

vector.body225.preheader.split.split:             ; preds = %vector.body225.preheader.split
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.body225.preheader.split.split
  %index234 = phi i64 [ %index234.unr, %vector.body225.preheader.split.split ], [ %index.next235.1, %vector.body225 ]
  %3645 = getelementptr inbounds double, double* %3405, i64 %index234
  %3646 = bitcast double* %3645 to <2 x double>*
  %wide.load242 = load <2 x double>, <2 x double>* %3646, align 8, !tbaa !1
  %3647 = getelementptr double, double* %3645, i64 2
  %3648 = bitcast double* %3647 to <2 x double>*
  %wide.load243 = load <2 x double>, <2 x double>* %3648, align 8, !tbaa !1
  %3649 = fadd <2 x double> %wide.load242, <double 1.000000e+00, double 1.000000e+00>
  %3650 = fadd <2 x double> %wide.load243, <double 1.000000e+00, double 1.000000e+00>
  %3651 = fmul <2 x double> %3649, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3652 = fmul <2 x double> %3650, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3653 = getelementptr inbounds double, double* %3419, i64 %index234
  %3654 = bitcast double* %3653 to <2 x double>*
  store <2 x double> %3651, <2 x double>* %3654, align 8, !tbaa !1
  %3655 = getelementptr double, double* %3653, i64 2
  %3656 = bitcast double* %3655 to <2 x double>*
  store <2 x double> %3652, <2 x double>* %3656, align 8, !tbaa !1
  %3657 = getelementptr inbounds double, double* %3421, i64 %index234
  %3658 = bitcast double* %3657 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3658, align 8, !tbaa !1
  %3659 = getelementptr double, double* %3657, i64 2
  %3660 = bitcast double* %3659 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3660, align 8, !tbaa !1
  %index.next235 = add i64 %index234, 4
  %3661 = getelementptr inbounds double, double* %3405, i64 %index.next235
  %3662 = bitcast double* %3661 to <2 x double>*
  %wide.load242.1 = load <2 x double>, <2 x double>* %3662, align 8, !tbaa !1
  %3663 = getelementptr double, double* %3661, i64 2
  %3664 = bitcast double* %3663 to <2 x double>*
  %wide.load243.1 = load <2 x double>, <2 x double>* %3664, align 8, !tbaa !1
  %3665 = fadd <2 x double> %wide.load242.1, <double 1.000000e+00, double 1.000000e+00>
  %3666 = fadd <2 x double> %wide.load243.1, <double 1.000000e+00, double 1.000000e+00>
  %3667 = fmul <2 x double> %3665, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3668 = fmul <2 x double> %3666, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3669 = getelementptr inbounds double, double* %3419, i64 %index.next235
  %3670 = bitcast double* %3669 to <2 x double>*
  store <2 x double> %3667, <2 x double>* %3670, align 8, !tbaa !1
  %3671 = getelementptr double, double* %3669, i64 2
  %3672 = bitcast double* %3671 to <2 x double>*
  store <2 x double> %3668, <2 x double>* %3672, align 8, !tbaa !1
  %3673 = getelementptr inbounds double, double* %3421, i64 %index.next235
  %3674 = bitcast double* %3673 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3674, align 8, !tbaa !1
  %3675 = getelementptr double, double* %3673, i64 2
  %3676 = bitcast double* %3675 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3676, align 8, !tbaa !1
  %index.next235.1 = add i64 %index234, 8
  %3677 = icmp eq i64 %index.next235.1, %3429
  br i1 %3677, label %middle.block226.unr-lcssa, label %vector.body225, !llvm.loop !63

middle.block226.unr-lcssa:                        ; preds = %vector.body225
  br label %middle.block226

middle.block226:                                  ; preds = %middle.block226.unr-lcssa, %vector.body225.preheader.split
  br i1 %cmp.n168, label %.lr.ph.i.i.i.preheader.i.i, label %.lr.ph5.i.i.i.i.i.preheader298

.lr.ph44.i.i.i.i:                                 ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i, %.lr.ph44.i.i.i.i.preheader
  %indvars.iv65.i.i.i.i = phi i64 [ %indvars.iv.next66.i.i.i.i, %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i ], [ 0, %.lr.ph44.i.i.i.i.preheader ]
  %3678 = getelementptr inbounds double, double* %3405, i64 %indvars.iv65.i.i.i.i
  %3679 = load double, double* %3678, align 8, !tbaa !1
  %3680 = fadd double %3679, 1.000000e+00
  %3681 = fdiv double 1.000000e+00, %3680
  %3682 = getelementptr inbounds double, double* %3397, i64 %indvars.iv65.i.i.i.i
  %3683 = load double, double* %3682, align 8, !tbaa !1
  %3684 = fcmp ogt double %3683, 0.000000e+00
  br i1 %3684, label %3685, label %3687

; <label>:3685                                    ; preds = %.lr.ph44.i.i.i.i
  %3686 = getelementptr inbounds double, double* %3417, i64 %indvars.iv65.i.i.i.i
  store double 0.000000e+00, double* %3686, align 8, !tbaa !1
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds double, double* %3602, i64 %indvars.iv65.i.i.i.i
  %.pre.i.i.i.i = load double, double* %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1
  %.pre79.i.i.i.i = getelementptr inbounds double, double* %3415, i64 %indvars.iv65.i.i.i.i
  %.pre.i.i9.i = load double, double* %.pre79.i.i.i.i, align 8, !tbaa !1
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i

; <label>:3687                                    ; preds = %.lr.ph44.i.i.i.i
  %3688 = getelementptr inbounds double, double* %3421, i64 %indvars.iv65.i.i.i.i
  %3689 = load double, double* %3688, align 8, !tbaa !1
  %3690 = getelementptr inbounds double, double* %3415, i64 %indvars.iv65.i.i.i.i
  %3691 = load double, double* %3690, align 8, !tbaa !1
  %3692 = fmul double %3689, %3691
  %3693 = fmul double %3681, %3681
  %3694 = getelementptr inbounds double, double* %3419, i64 %indvars.iv65.i.i.i.i
  %3695 = load double, double* %3694, align 8, !tbaa !1
  %3696 = fmul double %3693, %3695
  %3697 = getelementptr inbounds double, double* %3602, i64 %indvars.iv65.i.i.i.i
  %3698 = load double, double* %3697, align 8, !tbaa !1
  %3699 = fmul double %3696, %3698
  %3700 = fadd double %3692, %3699
  %3701 = fdiv double %3700, %3391
  %3702 = fcmp ugt double %3701, 1.111111e-37
  br i1 %3702, label %3703, label %3705

; <label>:3703                                    ; preds = %3687
  %3704 = call double @sqrt(double %3701) #2
  br label %3705

; <label>:3705                                    ; preds = %3703, %3687
  %ssc.0.i.i.i.i = phi double [ %3704, %3703 ], [ 3.333333e-19, %3687 ]
  %3706 = getelementptr inbounds double, double* %3409, i64 %indvars.iv65.i.i.i.i
  %3707 = load double, double* %3706, align 8, !tbaa !1
  %3708 = fmul double %ssc.0.i.i.i.i, %3707
  %3709 = getelementptr inbounds double, double* %3407, i64 %indvars.iv65.i.i.i.i
  %3710 = load double, double* %3709, align 8, !tbaa !1
  %3711 = fadd double %3708, %3710
  %3712 = getelementptr inbounds double, double* %3417, i64 %indvars.iv65.i.i.i.i
  store double %3711, double* %3712, align 8, !tbaa !1
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i: ; preds = %3705, %3685
  %3713 = phi double [ %3691, %3705 ], [ %.pre.i.i9.i, %3685 ]
  %.pre-phi.i.i.i.i = phi double* [ %3690, %3705 ], [ %.pre79.i.i.i.i, %3685 ]
  %3714 = phi double [ %3711, %3705 ], [ 0.000000e+00, %3685 ]
  %3715 = phi double [ %3698, %3705 ], [ %.pre.i.i.i.i, %3685 ]
  %3716 = fmul double %3683, 5.000000e-01
  %3717 = getelementptr inbounds double, double* %3399, i64 %indvars.iv65.i.i.i.i
  %3718 = load double, double* %3717, align 8, !tbaa !1
  %3719 = getelementptr inbounds double, double* %3401, i64 %indvars.iv65.i.i.i.i
  %3720 = load double, double* %3719, align 8, !tbaa !1
  %3721 = fadd double %3718, %3720
  %3722 = fmul double %3721, 3.000000e+00
  %3723 = fadd double %3714, %3715
  %3724 = fmul double %3723, 4.000000e+00
  %3725 = fsub double %3722, %3724
  %3726 = fmul double %3716, %3725
  %3727 = fadd double %3713, %3726
  store double %3727, double* %.pre-phi.i.i.i.i, align 8, !tbaa !1
  %indvars.iv.next66.i.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i.i, 1
  %lftr.wideiv66 = trunc i64 %indvars.iv.next66.i.i.i.i to i32
  %exitcond67 = icmp eq i32 %lftr.wideiv66, %3367
  br i1 %exitcond67, label %.lr.ph42.i.i.i.i.preheader, label %.lr.ph44.i.i.i.i

.lr.ph42.i.i.i.i.preheader:                       ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit.i.i.i.i
  br i1 %min.iters.check228, label %.lr.ph42.i.i.i.i.preheader297, label %min.iters.checked202

.lr.ph42.i.i.i.i.preheader297:                    ; preds = %middle.block199, %min.iters.checked202, %.lr.ph42.i.i.i.i.preheader
  %indvars.iv61.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked202 ], [ 0, %.lr.ph42.i.i.i.i.preheader ], [ %3429, %middle.block199 ]
  br label %.lr.ph42.i.i.i.i

min.iters.checked202:                             ; preds = %.lr.ph42.i.i.i.i.preheader
  br i1 %cmp.zero163, label %.lr.ph42.i.i.i.i.preheader297, label %vector.ph206

vector.ph206:                                     ; preds = %min.iters.checked202
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph206
  %index207 = phi i64 [ 0, %vector.ph206 ], [ %index.next208, %vector.body198 ]
  %3728 = getelementptr inbounds double, double* %3411, i64 %index207
  %3729 = bitcast double* %3728 to <2 x double>*
  %wide.load215 = load <2 x double>, <2 x double>* %3729, align 8, !tbaa !1
  %3730 = getelementptr double, double* %3728, i64 2
  %3731 = bitcast double* %3730 to <2 x double>*
  %wide.load216 = load <2 x double>, <2 x double>* %3731, align 8, !tbaa !1
  %3732 = fmul <2 x double> %wide.load215, <double 5.000000e-01, double 5.000000e-01>
  %3733 = fmul <2 x double> %wide.load216, <double 5.000000e-01, double 5.000000e-01>
  %3734 = getelementptr inbounds double, double* %3415, i64 %index207
  %3735 = bitcast double* %3734 to <2 x double>*
  %wide.load217 = load <2 x double>, <2 x double>* %3735, align 8, !tbaa !1
  %3736 = getelementptr double, double* %3734, i64 2
  %3737 = bitcast double* %3736 to <2 x double>*
  %wide.load218 = load <2 x double>, <2 x double>* %3737, align 8, !tbaa !1
  %3738 = fadd <2 x double> %wide.load217, %3732
  %3739 = fadd <2 x double> %wide.load218, %3733
  %3740 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %3738)
  %3741 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %3739)
  %3742 = fcmp olt <2 x double> %3740, %broadcast.splat220
  %3743 = fcmp olt <2 x double> %3741, %broadcast.splat220
  %3744 = select <2 x i1> %3742, <2 x double> zeroinitializer, <2 x double> %3738
  %3745 = select <2 x i1> %3743, <2 x double> zeroinitializer, <2 x double> %3739
  %3746 = fcmp olt <2 x double> %3744, %broadcast.splat222
  %3747 = fcmp olt <2 x double> %3745, %broadcast.splat222
  %3748 = select <2 x i1> %3746, <2 x double> %broadcast.splat222, <2 x double> %3744
  %3749 = select <2 x i1> %3747, <2 x double> %broadcast.splat222, <2 x double> %3745
  store <2 x double> %3748, <2 x double>* %3735, align 8, !tbaa !1
  store <2 x double> %3749, <2 x double>* %3737, align 8, !tbaa !1
  %index.next208 = add i64 %index207, 4
  %3750 = icmp eq i64 %index.next208, %3429
  br i1 %3750, label %middle.block199, label %vector.body198, !llvm.loop !64

middle.block199:                                  ; preds = %vector.body198
  br i1 %cmp.n168, label %.lr.ph5.i13.i.i.i.i.preheader, label %.lr.ph42.i.i.i.i.preheader297

.lr.ph5.i13.i.i.i.i:                              ; preds = %.lr.ph5.i13.i.i.i.i.preheader296, %.lr.ph5.i13.i.i.i.i
  %indvars.iv6.i9.i.i.i.i = phi i64 [ %indvars.iv.next7.i10.i.i.i.i, %.lr.ph5.i13.i.i.i.i ], [ %indvars.iv6.i9.i.i.i.i.ph, %.lr.ph5.i13.i.i.i.i.preheader296 ]
  %3751 = getelementptr inbounds double, double* %3403, i64 %indvars.iv6.i9.i.i.i.i
  %3752 = load double, double* %3751, align 8, !tbaa !1
  %3753 = fadd double %3752, 1.000000e+00
  %3754 = fmul double %3753, 0x3FE5555555555555
  %3755 = getelementptr inbounds double, double* %3419, i64 %indvars.iv6.i9.i.i.i.i
  store double %3754, double* %3755, align 8, !tbaa !1
  %3756 = getelementptr inbounds double, double* %3421, i64 %indvars.iv6.i9.i.i.i.i
  store double 0x3FE5555555555555, double* %3756, align 8, !tbaa !1
  %indvars.iv.next7.i10.i.i.i.i = add nuw nsw i64 %indvars.iv6.i9.i.i.i.i, 1
  %lftr.wideiv70 = trunc i64 %indvars.iv.next7.i10.i.i.i.i to i32
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %3367
  br i1 %exitcond71, label %.lr.ph.i16.i.i.i.i.preheader.loopexit, label %.lr.ph5.i13.i.i.i.i, !llvm.loop !65

.lr.ph.i16.i.i.i.i.preheader.loopexit:            ; preds = %.lr.ph5.i13.i.i.i.i
  br label %.lr.ph.i16.i.i.i.i.preheader

.lr.ph.i16.i.i.i.i.preheader:                     ; preds = %middle.block178, %.lr.ph.i16.i.i.i.i.preheader.loopexit
  br label %.lr.ph.i16.i.i.i.i

.lr.ph.i16.i.i.i.i:                               ; preds = %3776, %.lr.ph.i16.i.i.i.i.preheader
  %indvars.iv.i14.i.i.i.i = phi i64 [ %indvars.iv.next.i17.i.i.i.i, %3776 ], [ 0, %.lr.ph.i16.i.i.i.i.preheader ]
  %3757 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i14.i.i.i.i
  %3758 = load i32, i32* %3757, align 4, !tbaa !12
  %3759 = getelementptr inbounds double, double* %3419, i64 %indvars.iv.i14.i.i.i.i
  %3760 = load double, double* %3759, align 8, !tbaa !1
  %3761 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i14.i.i.i.i
  %3762 = load double, double* %3761, align 8, !tbaa !1
  %3763 = fmul double %3760, %3762
  %3764 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.i14.i.i.i.i
  %3765 = call double @fabs(double %3763) #15
  %3766 = fcmp olt double %3765, %3385
  %storemerge.i15.i.i.i.i = select i1 %3766, double 0.000000e+00, double %3763
  store double %storemerge.i15.i.i.i.i, double* %3764, align 8, !tbaa !1
  %3767 = sext i32 %3758 to i64
  %3768 = getelementptr inbounds double, double* %2537, i64 %3767
  %3769 = load double, double* %3768, align 8, !tbaa !1
  %3770 = fcmp ult double %3769, %3387
  br i1 %3770, label %3772, label %3771

; <label>:3771                                    ; preds = %.lr.ph.i16.i.i.i.i
  store double 0.000000e+00, double* %3764, align 8, !tbaa !1
  br label %3772

; <label>:3772                                    ; preds = %3771, %.lr.ph.i16.i.i.i.i
  %3773 = phi double [ %storemerge.i15.i.i.i.i, %.lr.ph.i16.i.i.i.i ], [ 0.000000e+00, %3771 ]
  %3774 = fcmp olt double %3773, %3389
  br i1 %3774, label %3775, label %3776

; <label>:3775                                    ; preds = %3772
  store double %3389, double* %3764, align 8, !tbaa !1
  br label %3776

; <label>:3776                                    ; preds = %3775, %3772
  %indvars.iv.next.i17.i.i.i.i = add nuw nsw i64 %indvars.iv.i14.i.i.i.i, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next.i17.i.i.i.i to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %3367
  br i1 %exitcond73, label %.lr.ph40.i.i.i.i.preheader, label %.lr.ph.i16.i.i.i.i

.lr.ph40.i.i.i.i.preheader:                       ; preds = %3776
  br label %.lr.ph40.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.lr.ph42.i.i.i.i, %.lr.ph42.i.i.i.i.preheader297
  %indvars.iv61.i.i.i.i = phi i64 [ %indvars.iv.next62.i.i.i.i, %.lr.ph42.i.i.i.i ], [ %indvars.iv61.i.i.i.i.ph, %.lr.ph42.i.i.i.i.preheader297 ]
  %3777 = getelementptr inbounds double, double* %3411, i64 %indvars.iv61.i.i.i.i
  %3778 = load double, double* %3777, align 8, !tbaa !1
  %3779 = fmul double %3778, 5.000000e-01
  %3780 = getelementptr inbounds double, double* %3415, i64 %indvars.iv61.i.i.i.i
  %3781 = load double, double* %3780, align 8, !tbaa !1
  %3782 = fadd double %3781, %3779
  %3783 = call double @fabs(double %3782) #15
  %3784 = fcmp olt double %3783, %3384
  %storemerge35.i.i.i.i = select i1 %3784, double 0.000000e+00, double %3782
  %3785 = fcmp olt double %storemerge35.i.i.i.i, %3390
  %storemerge37.i.i.i.i = select i1 %3785, double %3390, double %storemerge35.i.i.i.i
  store double %storemerge37.i.i.i.i, double* %3780, align 8, !tbaa !1
  %indvars.iv.next62.i.i.i.i = add nuw nsw i64 %indvars.iv61.i.i.i.i, 1
  %lftr.wideiv68 = trunc i64 %indvars.iv.next62.i.i.i.i to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %3367
  br i1 %exitcond69, label %.lr.ph5.i13.i.i.i.i.preheader.loopexit, label %.lr.ph42.i.i.i.i, !llvm.loop !66

.lr.ph5.i13.i.i.i.i.preheader.loopexit:           ; preds = %.lr.ph42.i.i.i.i
  br label %.lr.ph5.i13.i.i.i.i.preheader

.lr.ph5.i13.i.i.i.i.preheader:                    ; preds = %.lr.ph5.i13.i.i.i.i.preheader.loopexit, %middle.block199
  br i1 %min.iters.check228, label %.lr.ph5.i13.i.i.i.i.preheader296, label %min.iters.checked181

.lr.ph5.i13.i.i.i.i.preheader296:                 ; preds = %middle.block178, %min.iters.checked181, %.lr.ph5.i13.i.i.i.i.preheader
  %indvars.iv6.i9.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked181 ], [ 0, %.lr.ph5.i13.i.i.i.i.preheader ], [ %3429, %middle.block178 ]
  br label %.lr.ph5.i13.i.i.i.i

min.iters.checked181:                             ; preds = %.lr.ph5.i13.i.i.i.i.preheader
  br i1 %cmp.zero163, label %.lr.ph5.i13.i.i.i.i.preheader296, label %vector.body177.preheader

vector.body177.preheader:                         ; preds = %min.iters.checked181
  br i1 %lcmp.mod319, label %vector.body177.prol, label %vector.body177.preheader.split

vector.body177.prol:                              ; preds = %vector.body177.preheader
  %wide.load194.prol = load <2 x double>, <2 x double>* %3433, align 8, !tbaa !1
  %wide.load195.prol = load <2 x double>, <2 x double>* %3435, align 8, !tbaa !1
  %3786 = fadd <2 x double> %wide.load194.prol, <double 1.000000e+00, double 1.000000e+00>
  %3787 = fadd <2 x double> %wide.load195.prol, <double 1.000000e+00, double 1.000000e+00>
  %3788 = fmul <2 x double> %3786, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3789 = fmul <2 x double> %3787, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  store <2 x double> %3788, <2 x double>* %3436, align 8, !tbaa !1
  store <2 x double> %3789, <2 x double>* %3438, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3439, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3441, align 8, !tbaa !1
  br label %vector.body177.preheader.split

vector.body177.preheader.split:                   ; preds = %vector.body177.prol, %vector.body177.preheader
  %index186.unr = phi i64 [ 0, %vector.body177.preheader ], [ 4, %vector.body177.prol ]
  br i1 %3442, label %middle.block178, label %vector.body177.preheader.split.split

vector.body177.preheader.split.split:             ; preds = %vector.body177.preheader.split
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.body177.preheader.split.split
  %index186 = phi i64 [ %index186.unr, %vector.body177.preheader.split.split ], [ %index.next187.1, %vector.body177 ]
  %3790 = getelementptr inbounds double, double* %3403, i64 %index186
  %3791 = bitcast double* %3790 to <2 x double>*
  %wide.load194 = load <2 x double>, <2 x double>* %3791, align 8, !tbaa !1
  %3792 = getelementptr double, double* %3790, i64 2
  %3793 = bitcast double* %3792 to <2 x double>*
  %wide.load195 = load <2 x double>, <2 x double>* %3793, align 8, !tbaa !1
  %3794 = fadd <2 x double> %wide.load194, <double 1.000000e+00, double 1.000000e+00>
  %3795 = fadd <2 x double> %wide.load195, <double 1.000000e+00, double 1.000000e+00>
  %3796 = fmul <2 x double> %3794, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3797 = fmul <2 x double> %3795, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3798 = getelementptr inbounds double, double* %3419, i64 %index186
  %3799 = bitcast double* %3798 to <2 x double>*
  store <2 x double> %3796, <2 x double>* %3799, align 8, !tbaa !1
  %3800 = getelementptr double, double* %3798, i64 2
  %3801 = bitcast double* %3800 to <2 x double>*
  store <2 x double> %3797, <2 x double>* %3801, align 8, !tbaa !1
  %3802 = getelementptr inbounds double, double* %3421, i64 %index186
  %3803 = bitcast double* %3802 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3803, align 8, !tbaa !1
  %3804 = getelementptr double, double* %3802, i64 2
  %3805 = bitcast double* %3804 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3805, align 8, !tbaa !1
  %index.next187 = add i64 %index186, 4
  %3806 = getelementptr inbounds double, double* %3403, i64 %index.next187
  %3807 = bitcast double* %3806 to <2 x double>*
  %wide.load194.1 = load <2 x double>, <2 x double>* %3807, align 8, !tbaa !1
  %3808 = getelementptr double, double* %3806, i64 2
  %3809 = bitcast double* %3808 to <2 x double>*
  %wide.load195.1 = load <2 x double>, <2 x double>* %3809, align 8, !tbaa !1
  %3810 = fadd <2 x double> %wide.load194.1, <double 1.000000e+00, double 1.000000e+00>
  %3811 = fadd <2 x double> %wide.load195.1, <double 1.000000e+00, double 1.000000e+00>
  %3812 = fmul <2 x double> %3810, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3813 = fmul <2 x double> %3811, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3814 = getelementptr inbounds double, double* %3419, i64 %index.next187
  %3815 = bitcast double* %3814 to <2 x double>*
  store <2 x double> %3812, <2 x double>* %3815, align 8, !tbaa !1
  %3816 = getelementptr double, double* %3814, i64 2
  %3817 = bitcast double* %3816 to <2 x double>*
  store <2 x double> %3813, <2 x double>* %3817, align 8, !tbaa !1
  %3818 = getelementptr inbounds double, double* %3421, i64 %index.next187
  %3819 = bitcast double* %3818 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3819, align 8, !tbaa !1
  %3820 = getelementptr double, double* %3818, i64 2
  %3821 = bitcast double* %3820 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3821, align 8, !tbaa !1
  %index.next187.1 = add i64 %index186, 8
  %3822 = icmp eq i64 %index.next187.1, %3429
  br i1 %3822, label %middle.block178.unr-lcssa, label %vector.body177, !llvm.loop !67

middle.block178.unr-lcssa:                        ; preds = %vector.body177
  br label %middle.block178

middle.block178:                                  ; preds = %middle.block178.unr-lcssa, %vector.body177.preheader.split
  br i1 %cmp.n168, label %.lr.ph.i16.i.i.i.i.preheader, label %.lr.ph5.i13.i.i.i.i.preheader296

.lr.ph5.i26.i.i.i.i:                              ; preds = %.lr.ph5.i26.i.i.i.i.preheader295, %.lr.ph5.i26.i.i.i.i
  %indvars.iv6.i22.i.i.i.i = phi i64 [ %indvars.iv.next7.i23.i.i.i.i, %.lr.ph5.i26.i.i.i.i ], [ %indvars.iv6.i22.i.i.i.i.ph, %.lr.ph5.i26.i.i.i.i.preheader295 ]
  %3823 = getelementptr inbounds double, double* %3403, i64 %indvars.iv6.i22.i.i.i.i
  %3824 = load double, double* %3823, align 8, !tbaa !1
  %3825 = fadd double %3824, 1.000000e+00
  %3826 = fmul double %3825, 0x3FE5555555555555
  %3827 = getelementptr inbounds double, double* %3419, i64 %indvars.iv6.i22.i.i.i.i
  store double %3826, double* %3827, align 8, !tbaa !1
  %3828 = getelementptr inbounds double, double* %3421, i64 %indvars.iv6.i22.i.i.i.i
  store double 0x3FE5555555555555, double* %3828, align 8, !tbaa !1
  %indvars.iv.next7.i23.i.i.i.i = add nuw nsw i64 %indvars.iv6.i22.i.i.i.i, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next7.i23.i.i.i.i to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %3367
  br i1 %exitcond77, label %.lr.ph.i29.i.i.i.i.preheader.loopexit, label %.lr.ph5.i26.i.i.i.i, !llvm.loop !68

.lr.ph.i29.i.i.i.i.preheader.loopexit:            ; preds = %.lr.ph5.i26.i.i.i.i
  br label %.lr.ph.i29.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.preheader:                     ; preds = %middle.block157, %.lr.ph.i29.i.i.i.i.preheader.loopexit
  br label %.lr.ph.i29.i.i.i.i

.lr.ph.i29.i.i.i.i:                               ; preds = %3848, %.lr.ph.i29.i.i.i.i.preheader
  %indvars.iv.i27.i.i.i.i = phi i64 [ %indvars.iv.next.i30.i.i.i.i, %3848 ], [ 0, %.lr.ph.i29.i.i.i.i.preheader ]
  %3829 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i27.i.i.i.i
  %3830 = load i32, i32* %3829, align 4, !tbaa !12
  %3831 = getelementptr inbounds double, double* %3419, i64 %indvars.iv.i27.i.i.i.i
  %3832 = load double, double* %3831, align 8, !tbaa !1
  %3833 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i27.i.i.i.i
  %3834 = load double, double* %3833, align 8, !tbaa !1
  %3835 = fmul double %3832, %3834
  %3836 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.i27.i.i.i.i
  %3837 = call double @fabs(double %3835) #15
  %3838 = fcmp olt double %3837, %3385
  %storemerge.i28.i.i.i.i = select i1 %3838, double 0.000000e+00, double %3835
  store double %storemerge.i28.i.i.i.i, double* %3836, align 8, !tbaa !1
  %3839 = sext i32 %3830 to i64
  %3840 = getelementptr inbounds double, double* %2537, i64 %3839
  %3841 = load double, double* %3840, align 8, !tbaa !1
  %3842 = fcmp ult double %3841, %3387
  br i1 %3842, label %3844, label %3843

; <label>:3843                                    ; preds = %.lr.ph.i29.i.i.i.i
  store double 0.000000e+00, double* %3836, align 8, !tbaa !1
  br label %3844

; <label>:3844                                    ; preds = %3843, %.lr.ph.i29.i.i.i.i
  %3845 = phi double [ %storemerge.i28.i.i.i.i, %.lr.ph.i29.i.i.i.i ], [ 0.000000e+00, %3843 ]
  %3846 = fcmp olt double %3845, %3389
  br i1 %3846, label %3847, label %3848

; <label>:3847                                    ; preds = %3844
  store double %3389, double* %3836, align 8, !tbaa !1
  br label %3848

; <label>:3848                                    ; preds = %3847, %3844
  %indvars.iv.next.i30.i.i.i.i = add nuw nsw i64 %indvars.iv.i27.i.i.i.i, 1
  %lftr.wideiv78 = trunc i64 %indvars.iv.next.i30.i.i.i.i to i32
  %exitcond79 = icmp eq i32 %lftr.wideiv78, %3367
  br i1 %exitcond79, label %.lr.ph.i24.i.i.i.preheader, label %.lr.ph.i29.i.i.i.i

.lr.ph.i24.i.i.i.preheader:                       ; preds = %3848
  br label %.lr.ph.i24.i.i.i

.lr.ph40.i.i.i.i:                                 ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i, %.lr.ph40.i.i.i.i.preheader
  %indvars.iv53.i.i.i.i = phi i64 [ %indvars.iv.next54.i.i.i.i, %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i ], [ 0, %.lr.ph40.i.i.i.i.preheader ]
  %3849 = getelementptr inbounds double, double* %3397, i64 %indvars.iv53.i.i.i.i
  %3850 = load double, double* %3849, align 8, !tbaa !1
  %3851 = fcmp ogt double %3850, 0.000000e+00
  br i1 %3851, label %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i, label %3852

.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i: ; preds = %.lr.ph40.i.i.i.i
  %.pre82.i.i.i.i = getelementptr inbounds double, double* %3415, i64 %indvars.iv53.i.i.i.i
  %.pre84.i.i.i.i = getelementptr inbounds double, double* %3413, i64 %indvars.iv53.i.i.i.i
  %.pre96.i.i.i = load double, double* %.pre82.i.i.i.i, align 8, !tbaa !1
  %.pre97.i.i.i = load double, double* %.pre84.i.i.i.i, align 8, !tbaa !1
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i

; <label>:3852                                    ; preds = %.lr.ph40.i.i.i.i
  %3853 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv53.i.i.i.i
  %3854 = load i32, i32* %3853, align 4, !tbaa !12
  %3855 = getelementptr inbounds double, double* %3421, i64 %indvars.iv53.i.i.i.i
  %3856 = load double, double* %3855, align 8, !tbaa !1
  %3857 = getelementptr inbounds double, double* %3415, i64 %indvars.iv53.i.i.i.i
  %3858 = load double, double* %3857, align 8, !tbaa !1
  %3859 = fmul double %3856, %3858
  %3860 = sext i32 %3854 to i64
  %3861 = getelementptr inbounds double, double* %2537, i64 %3860
  %3862 = load double, double* %3861, align 8, !tbaa !1
  %3863 = fmul double %3862, %3862
  %3864 = getelementptr inbounds double, double* %3419, i64 %indvars.iv53.i.i.i.i
  %3865 = load double, double* %3864, align 8, !tbaa !1
  %3866 = fmul double %3863, %3865
  %3867 = getelementptr inbounds double, double* %3413, i64 %indvars.iv53.i.i.i.i
  %3868 = load double, double* %3867, align 8, !tbaa !1
  %3869 = fmul double %3866, %3868
  %3870 = fadd double %3859, %3869
  %3871 = fdiv double %3870, %3391
  %3872 = fcmp ugt double %3871, 1.111111e-37
  br i1 %3872, label %3873, label %3875

; <label>:3873                                    ; preds = %3852
  %3874 = call double @sqrt(double %3871) #2
  br label %3875

; <label>:3875                                    ; preds = %3873, %3852
  %ssc4.0.i.i.i.i = phi double [ %3874, %3873 ], [ 3.333333e-19, %3852 ]
  %3876 = getelementptr inbounds double, double* %3409, i64 %indvars.iv53.i.i.i.i
  %3877 = load double, double* %3876, align 8, !tbaa !1
  %3878 = fmul double %ssc4.0.i.i.i.i, %3877
  %3879 = getelementptr inbounds double, double* %3407, i64 %indvars.iv53.i.i.i.i
  %3880 = load double, double* %3879, align 8, !tbaa !1
  %3881 = fadd double %3878, %3880
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i: ; preds = %3875, %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i
  %3882 = phi double [ %.pre97.i.i.i, %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i ], [ %3868, %3875 ]
  %3883 = phi double [ %.pre96.i.i.i, %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i ], [ %3858, %3875 ]
  %.pre-phi83.i.i.i.i = phi double* [ %.pre82.i.i.i.i, %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i ], [ %3857, %3875 ]
  %q_tilde.0.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph40._ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20_crit_edge.i.i.i.i ], [ %3881, %3875 ]
  %3884 = getelementptr inbounds double, double* %3399, i64 %indvars.iv53.i.i.i.i
  %3885 = load double, double* %3884, align 8, !tbaa !1
  %3886 = getelementptr inbounds double, double* %3401, i64 %indvars.iv53.i.i.i.i
  %3887 = load double, double* %3886, align 8, !tbaa !1
  %3888 = fadd double %3885, %3887
  %3889 = fmul double %3888, 7.000000e+00
  %3890 = getelementptr inbounds double, double* %3602, i64 %indvars.iv53.i.i.i.i
  %3891 = load double, double* %3890, align 8, !tbaa !1
  %3892 = getelementptr inbounds double, double* %3417, i64 %indvars.iv53.i.i.i.i
  %3893 = load double, double* %3892, align 8, !tbaa !1
  %3894 = fadd double %3891, %3893
  %3895 = fmul double %3894, 8.000000e+00
  %3896 = fsub double %3889, %3895
  %3897 = fadd double %3882, %q_tilde.0.i.i.i.i
  %3898 = fadd double %3897, %3896
  %3899 = fmul double %3850, %3898
  %3900 = fmul double %3899, 0x3FC5555555555555
  %3901 = fsub double %3883, %3900
  %3902 = call double @fabs(double %3901) #15
  %3903 = fcmp olt double %3902, %3384
  %storemerge34.i.i.i.i = select i1 %3903, double 0.000000e+00, double %3901
  %3904 = fcmp olt double %storemerge34.i.i.i.i, %3390
  %storemerge36.i.i.i.i = select i1 %3904, double %3390, double %storemerge34.i.i.i.i
  store double %storemerge36.i.i.i.i, double* %.pre-phi83.i.i.i.i, align 8, !tbaa !1
  %indvars.iv.next54.i.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i.i, 1
  %lftr.wideiv74 = trunc i64 %indvars.iv.next54.i.i.i.i to i32
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %3367
  br i1 %exitcond75, label %.lr.ph5.i26.i.i.i.i.preheader, label %.lr.ph40.i.i.i.i

.lr.ph5.i26.i.i.i.i.preheader:                    ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit20.i.i.i.i
  br i1 %min.iters.check228, label %.lr.ph5.i26.i.i.i.i.preheader295, label %min.iters.checked160

.lr.ph5.i26.i.i.i.i.preheader295:                 ; preds = %middle.block157, %min.iters.checked160, %.lr.ph5.i26.i.i.i.i.preheader
  %indvars.iv6.i22.i.i.i.i.ph = phi i64 [ 0, %min.iters.checked160 ], [ 0, %.lr.ph5.i26.i.i.i.i.preheader ], [ %3429, %middle.block157 ]
  br label %.lr.ph5.i26.i.i.i.i

min.iters.checked160:                             ; preds = %.lr.ph5.i26.i.i.i.i.preheader
  br i1 %cmp.zero163, label %.lr.ph5.i26.i.i.i.i.preheader295, label %vector.body156.preheader

vector.body156.preheader:                         ; preds = %min.iters.checked160
  br i1 %lcmp.mod319, label %vector.body156.prol, label %vector.body156.preheader.split

vector.body156.prol:                              ; preds = %vector.body156.preheader
  %wide.load173.prol = load <2 x double>, <2 x double>* %3433, align 8, !tbaa !1
  %wide.load174.prol = load <2 x double>, <2 x double>* %3435, align 8, !tbaa !1
  %3905 = fadd <2 x double> %wide.load173.prol, <double 1.000000e+00, double 1.000000e+00>
  %3906 = fadd <2 x double> %wide.load174.prol, <double 1.000000e+00, double 1.000000e+00>
  %3907 = fmul <2 x double> %3905, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3908 = fmul <2 x double> %3906, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  store <2 x double> %3907, <2 x double>* %3436, align 8, !tbaa !1
  store <2 x double> %3908, <2 x double>* %3438, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3439, align 8, !tbaa !1
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3441, align 8, !tbaa !1
  br label %vector.body156.preheader.split

vector.body156.preheader.split:                   ; preds = %vector.body156.prol, %vector.body156.preheader
  %index165.unr = phi i64 [ 0, %vector.body156.preheader ], [ 4, %vector.body156.prol ]
  br i1 %3442, label %middle.block157, label %vector.body156.preheader.split.split

vector.body156.preheader.split.split:             ; preds = %vector.body156.preheader.split
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.body156.preheader.split.split
  %index165 = phi i64 [ %index165.unr, %vector.body156.preheader.split.split ], [ %index.next166.1, %vector.body156 ]
  %3909 = getelementptr inbounds double, double* %3403, i64 %index165
  %3910 = bitcast double* %3909 to <2 x double>*
  %wide.load173 = load <2 x double>, <2 x double>* %3910, align 8, !tbaa !1
  %3911 = getelementptr double, double* %3909, i64 2
  %3912 = bitcast double* %3911 to <2 x double>*
  %wide.load174 = load <2 x double>, <2 x double>* %3912, align 8, !tbaa !1
  %3913 = fadd <2 x double> %wide.load173, <double 1.000000e+00, double 1.000000e+00>
  %3914 = fadd <2 x double> %wide.load174, <double 1.000000e+00, double 1.000000e+00>
  %3915 = fmul <2 x double> %3913, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3916 = fmul <2 x double> %3914, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3917 = getelementptr inbounds double, double* %3419, i64 %index165
  %3918 = bitcast double* %3917 to <2 x double>*
  store <2 x double> %3915, <2 x double>* %3918, align 8, !tbaa !1
  %3919 = getelementptr double, double* %3917, i64 2
  %3920 = bitcast double* %3919 to <2 x double>*
  store <2 x double> %3916, <2 x double>* %3920, align 8, !tbaa !1
  %3921 = getelementptr inbounds double, double* %3421, i64 %index165
  %3922 = bitcast double* %3921 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3922, align 8, !tbaa !1
  %3923 = getelementptr double, double* %3921, i64 2
  %3924 = bitcast double* %3923 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3924, align 8, !tbaa !1
  %index.next166 = add i64 %index165, 4
  %3925 = getelementptr inbounds double, double* %3403, i64 %index.next166
  %3926 = bitcast double* %3925 to <2 x double>*
  %wide.load173.1 = load <2 x double>, <2 x double>* %3926, align 8, !tbaa !1
  %3927 = getelementptr double, double* %3925, i64 2
  %3928 = bitcast double* %3927 to <2 x double>*
  %wide.load174.1 = load <2 x double>, <2 x double>* %3928, align 8, !tbaa !1
  %3929 = fadd <2 x double> %wide.load173.1, <double 1.000000e+00, double 1.000000e+00>
  %3930 = fadd <2 x double> %wide.load174.1, <double 1.000000e+00, double 1.000000e+00>
  %3931 = fmul <2 x double> %3929, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3932 = fmul <2 x double> %3930, <double 0x3FE5555555555555, double 0x3FE5555555555555>
  %3933 = getelementptr inbounds double, double* %3419, i64 %index.next166
  %3934 = bitcast double* %3933 to <2 x double>*
  store <2 x double> %3931, <2 x double>* %3934, align 8, !tbaa !1
  %3935 = getelementptr double, double* %3933, i64 2
  %3936 = bitcast double* %3935 to <2 x double>*
  store <2 x double> %3932, <2 x double>* %3936, align 8, !tbaa !1
  %3937 = getelementptr inbounds double, double* %3421, i64 %index.next166
  %3938 = bitcast double* %3937 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3938, align 8, !tbaa !1
  %3939 = getelementptr double, double* %3937, i64 2
  %3940 = bitcast double* %3939 to <2 x double>*
  store <2 x double> <double 0x3FE5555555555555, double 0x3FE5555555555555>, <2 x double>* %3940, align 8, !tbaa !1
  %index.next166.1 = add i64 %index165, 8
  %3941 = icmp eq i64 %index.next166.1, %3429
  br i1 %3941, label %middle.block157.unr-lcssa, label %vector.body156, !llvm.loop !69

middle.block157.unr-lcssa:                        ; preds = %vector.body156
  br label %middle.block157

middle.block157:                                  ; preds = %middle.block157.unr-lcssa, %vector.body156.preheader.split
  br i1 %cmp.n168, label %.lr.ph.i29.i.i.i.i.preheader, label %.lr.ph5.i26.i.i.i.i.preheader295

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i.loopexit: ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i: ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i.loopexit, %._crit_edge45.i.i.i
  %3942 = phi i8* [ %3573, %._crit_edge45.i.i.i ], [ %3574, %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i.loopexit ]
  %3943 = icmp eq i8* %3942, null
  br i1 %3943, label %_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i, label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.thread.i.i.i.i

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.thread.i.i.i.i: ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i
  call void @free(i8* nonnull %3942) #2
  br label %_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i, %.lr.ph.i24.i.i.i.preheader
  %indvars.iv.i23.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i ], [ 0, %.lr.ph.i24.i.i.i.preheader ]
  %3944 = getelementptr inbounds double, double* %3397, i64 %indvars.iv.i23.i.i.i
  %3945 = load double, double* %3944, align 8, !tbaa !1
  %3946 = fcmp ugt double %3945, 0.000000e+00
  br i1 %3946, label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i, label %3947

; <label>:3947                                    ; preds = %.lr.ph.i24.i.i.i
  %3948 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i23.i.i.i
  %3949 = load i32, i32* %3948, align 4, !tbaa !12
  %3950 = getelementptr inbounds double, double* %3421, i64 %indvars.iv.i23.i.i.i
  %3951 = load double, double* %3950, align 8, !tbaa !1
  %3952 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i23.i.i.i
  %3953 = load double, double* %3952, align 8, !tbaa !1
  %3954 = fmul double %3951, %3953
  %3955 = sext i32 %3949 to i64
  %3956 = getelementptr inbounds double, double* %2537, i64 %3955
  %3957 = load double, double* %3956, align 8, !tbaa !1
  %3958 = fmul double %3957, %3957
  %3959 = getelementptr inbounds double, double* %3419, i64 %indvars.iv.i23.i.i.i
  %3960 = load double, double* %3959, align 8, !tbaa !1
  %3961 = fmul double %3958, %3960
  %3962 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.i23.i.i.i
  %3963 = load double, double* %3962, align 8, !tbaa !1
  %3964 = fmul double %3961, %3963
  %3965 = fadd double %3954, %3964
  %3966 = fdiv double %3965, %3391
  %3967 = fcmp ugt double %3966, 1.111111e-37
  br i1 %3967, label %3968, label %3970

; <label>:3968                                    ; preds = %3947
  %3969 = call double @sqrt(double %3966) #2
  br label %3970

; <label>:3970                                    ; preds = %3968, %3947
  %ssc7.0.i.i.i.i = phi double [ %3969, %3968 ], [ 3.333333e-19, %3947 ]
  %3971 = getelementptr inbounds double, double* %3409, i64 %indvars.iv.i23.i.i.i
  %3972 = load double, double* %3971, align 8, !tbaa !1
  %3973 = fmul double %ssc7.0.i.i.i.i, %3972
  %3974 = getelementptr inbounds double, double* %3407, i64 %indvars.iv.i23.i.i.i
  %3975 = load double, double* %3974, align 8, !tbaa !1
  %3976 = fadd double %3973, %3975
  %3977 = getelementptr inbounds double, double* %3417, i64 %indvars.iv.i23.i.i.i
  store double %3976, double* %3977, align 8, !tbaa !1
  %3978 = call double @fabs(double %3976) #15
  %3979 = fcmp olt double %3978, %3386
  br i1 %3979, label %3980, label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i

; <label>:3980                                    ; preds = %3970
  store double 0.000000e+00, double* %3977, align 8, !tbaa !1
  br label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i

_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33.i.i.i.i: ; preds = %3980, %3970, %.lr.ph.i24.i.i.i
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i23.i.i.i, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv.next.i25.i.i.i to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %3367
  br i1 %exitcond81, label %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i.loopexit, label %.lr.ph.i24.i.i.i

_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi.exit.i.i.i: ; preds = %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.thread.i.i.i.i, %_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi.exit33._crit_edge.i.i.i.i
  %3981 = add nuw nsw i32 %j.046.i.i.i, 1
  %exitcond95.i.i.i = icmp eq i32 %3981, %rep.0.i.i
  br i1 %exitcond95.i.i.i, label %.preheader.i.i.i.loopexit, label %.preheader32.i.i.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i.i.i11.i.preheader, %4004
  %indvars.iv.i.i.i10.i = phi i64 [ %indvars.iv.next.i.i.i12.i, %4004 ], [ 0, %.lr.ph.i.i.i11.i.preheader ]
  %3982 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i.i.i10.i
  %3983 = load i32, i32* %3982, align 4, !tbaa !12
  %3984 = getelementptr inbounds double, double* %3421, i64 %indvars.iv.i.i.i10.i
  %3985 = load double, double* %3984, align 8, !tbaa !1
  %3986 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i.i.i10.i
  %3987 = load double, double* %3986, align 8, !tbaa !1
  %3988 = fmul double %3985, %3987
  %3989 = sext i32 %3983 to i64
  %3990 = getelementptr inbounds double, double* %2537, i64 %3989
  %3991 = load double, double* %3990, align 8, !tbaa !1
  %3992 = fmul double %3991, %3991
  %3993 = getelementptr inbounds double, double* %3419, i64 %indvars.iv.i.i.i10.i
  %3994 = load double, double* %3993, align 8, !tbaa !1
  %3995 = fmul double %3992, %3994
  %3996 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.i.i.i10.i
  %3997 = load double, double* %3996, align 8, !tbaa !1
  %3998 = fmul double %3995, %3997
  %3999 = fadd double %3988, %3998
  %4000 = fdiv double %3999, %3391
  %4001 = fcmp ugt double %4000, 1.111111e-37
  br i1 %4001, label %4002, label %4004

; <label>:4002                                    ; preds = %.lr.ph.i.i.i11.i
  %4003 = call double @sqrt(double %4000) #2
  br label %4004

; <label>:4004                                    ; preds = %4002, %.lr.ph.i.i.i11.i
  %ssTmp.0.i.i.i.i = phi double [ %4003, %4002 ], [ 3.333333e-19, %.lr.ph.i.i.i11.i ]
  %4005 = load double*, double** %3358, align 8, !tbaa !9
  %4006 = getelementptr inbounds double, double* %4005, i64 %3989
  store double %ssTmp.0.i.i.i.i, double* %4006, align 8, !tbaa !1
  %indvars.iv.next.i.i.i12.i = add nuw nsw i64 %indvars.iv.i.i.i10.i, 1
  %lftr.wideiv84 = trunc i64 %indvars.iv.next.i.i.i12.i to i32
  %exitcond85 = icmp eq i32 %lftr.wideiv84, %3367
  br i1 %exitcond85, label %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i.loopexit, label %.lr.ph.i.i.i11.i

_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.i.i.i: ; preds = %.preheader.i.i.i
  %4007 = icmp eq i8* %3420, null
  br i1 %4007, label %_Z7ReleaseIdEvPPT_.exit22.i.i.i, label %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i

_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i.loopexit: ; preds = %4004
  br label %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i

_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i: ; preds = %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i.loopexit, %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.i.i.i
  call void @free(i8* nonnull %3420) #2
  br label %_Z7ReleaseIdEvPPT_.exit22.i.i.i

_Z7ReleaseIdEvPPT_.exit22.i.i.i:                  ; preds = %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.thread.i.i.i, %_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi.exit.i.i.i
  %4008 = icmp eq i8* %3418, null
  br i1 %4008, label %_Z7ReleaseIdEvPPT_.exit21.i.i.i, label %4009

; <label>:4009                                    ; preds = %_Z7ReleaseIdEvPPT_.exit22.i.i.i
  call void @free(i8* nonnull %3418) #2
  br label %_Z7ReleaseIdEvPPT_.exit21.i.i.i

_Z7ReleaseIdEvPPT_.exit21.i.i.i:                  ; preds = %4009, %_Z7ReleaseIdEvPPT_.exit22.i.i.i
  %4010 = icmp eq i8* %3416, null
  br i1 %4010, label %_Z7ReleaseIdEvPPT_.exit20.i.i.i, label %4011

; <label>:4011                                    ; preds = %_Z7ReleaseIdEvPPT_.exit21.i.i.i
  call void @free(i8* nonnull %3416) #2
  br label %_Z7ReleaseIdEvPPT_.exit20.i.i.i

_Z7ReleaseIdEvPPT_.exit20.i.i.i:                  ; preds = %4011, %_Z7ReleaseIdEvPPT_.exit21.i.i.i
  %4012 = icmp eq i8* %3414, null
  br i1 %4012, label %_Z7ReleaseIdEvPPT_.exit19.i.i.i, label %4013

; <label>:4013                                    ; preds = %_Z7ReleaseIdEvPPT_.exit20.i.i.i
  call void @free(i8* nonnull %3414) #2
  br label %_Z7ReleaseIdEvPPT_.exit19.i.i.i

_Z7ReleaseIdEvPPT_.exit19.i.i.i:                  ; preds = %4013, %_Z7ReleaseIdEvPPT_.exit20.i.i.i
  %4014 = icmp eq i8* %3412, null
  br i1 %4014, label %_Z7ReleaseIdEvPPT_.exit18.i.i.i, label %4015

; <label>:4015                                    ; preds = %_Z7ReleaseIdEvPPT_.exit19.i.i.i
  call void @free(i8* nonnull %3412) #2
  br label %_Z7ReleaseIdEvPPT_.exit18.i.i.i

_Z7ReleaseIdEvPPT_.exit18.i.i.i:                  ; preds = %4015, %_Z7ReleaseIdEvPPT_.exit19.i.i.i
  %4016 = icmp eq i8* %3410, null
  br i1 %4016, label %_Z7ReleaseIdEvPPT_.exit17.i.i.i, label %4017

; <label>:4017                                    ; preds = %_Z7ReleaseIdEvPPT_.exit18.i.i.i
  call void @free(i8* nonnull %3410) #2
  br label %_Z7ReleaseIdEvPPT_.exit17.i.i.i

_Z7ReleaseIdEvPPT_.exit17.i.i.i:                  ; preds = %4017, %_Z7ReleaseIdEvPPT_.exit18.i.i.i
  %4018 = icmp eq i8* %3408, null
  br i1 %4018, label %_Z7ReleaseIdEvPPT_.exit16.i.i.i, label %4019

; <label>:4019                                    ; preds = %_Z7ReleaseIdEvPPT_.exit17.i.i.i
  call void @free(i8* nonnull %3408) #2
  br label %_Z7ReleaseIdEvPPT_.exit16.i.i.i

_Z7ReleaseIdEvPPT_.exit16.i.i.i:                  ; preds = %4019, %_Z7ReleaseIdEvPPT_.exit17.i.i.i
  %4020 = icmp eq i8* %3406, null
  br i1 %4020, label %_Z7ReleaseIdEvPPT_.exit15.i.i.i, label %4021

; <label>:4021                                    ; preds = %_Z7ReleaseIdEvPPT_.exit16.i.i.i
  call void @free(i8* nonnull %3406) #2
  br label %_Z7ReleaseIdEvPPT_.exit15.i.i.i

_Z7ReleaseIdEvPPT_.exit15.i.i.i:                  ; preds = %4021, %_Z7ReleaseIdEvPPT_.exit16.i.i.i
  %4022 = icmp eq i8* %3404, null
  br i1 %4022, label %_Z7ReleaseIdEvPPT_.exit14.i.i.i, label %4023

; <label>:4023                                    ; preds = %_Z7ReleaseIdEvPPT_.exit15.i.i.i
  call void @free(i8* nonnull %3404) #2
  br label %_Z7ReleaseIdEvPPT_.exit14.i.i.i

_Z7ReleaseIdEvPPT_.exit14.i.i.i:                  ; preds = %4023, %_Z7ReleaseIdEvPPT_.exit15.i.i.i
  %4024 = icmp eq i8* %3402, null
  br i1 %4024, label %_Z7ReleaseIdEvPPT_.exit13.i.i.i, label %4025

; <label>:4025                                    ; preds = %_Z7ReleaseIdEvPPT_.exit14.i.i.i
  call void @free(i8* nonnull %3402) #2
  br label %_Z7ReleaseIdEvPPT_.exit13.i.i.i

_Z7ReleaseIdEvPPT_.exit13.i.i.i:                  ; preds = %4025, %_Z7ReleaseIdEvPPT_.exit14.i.i.i
  %4026 = icmp eq i8* %3400, null
  br i1 %4026, label %_Z7ReleaseIdEvPPT_.exit12.i.i.i, label %4027

; <label>:4027                                    ; preds = %_Z7ReleaseIdEvPPT_.exit13.i.i.i
  call void @free(i8* nonnull %3400) #2
  br label %_Z7ReleaseIdEvPPT_.exit12.i.i.i

_Z7ReleaseIdEvPPT_.exit12.i.i.i:                  ; preds = %4027, %_Z7ReleaseIdEvPPT_.exit13.i.i.i
  %4028 = icmp eq i8* %3398, null
  br i1 %4028, label %_Z7ReleaseIdEvPPT_.exit11.i.i.i, label %4029

; <label>:4029                                    ; preds = %_Z7ReleaseIdEvPPT_.exit12.i.i.i
  call void @free(i8* nonnull %3398) #2
  br label %_Z7ReleaseIdEvPPT_.exit11.i.i.i

_Z7ReleaseIdEvPPT_.exit11.i.i.i:                  ; preds = %4029, %_Z7ReleaseIdEvPPT_.exit12.i.i.i
  %4030 = icmp eq i8* %3396, null
  br i1 %4030, label %_Z7ReleaseIdEvPPT_.exit10.i.i.i, label %4031

; <label>:4031                                    ; preds = %_Z7ReleaseIdEvPPT_.exit11.i.i.i
  call void @free(i8* nonnull %3396) #2
  br label %_Z7ReleaseIdEvPPT_.exit10.i.i.i

_Z7ReleaseIdEvPPT_.exit10.i.i.i:                  ; preds = %4031, %_Z7ReleaseIdEvPPT_.exit11.i.i.i
  %4032 = icmp eq i8* %3394, null
  br i1 %4032, label %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i, label %4033

; <label>:4033                                    ; preds = %_Z7ReleaseIdEvPPT_.exit10.i.i.i
  call void @free(i8* nonnull %3394) #2
  br label %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i

; <label>:4034                                    ; preds = %4034, %.lr.ph.i.i6.i.split.split
  %indvars.iv.i.i13.i = phi i64 [ %indvars.iv.i.i13.i.unr, %.lr.ph.i.i6.i.split.split ], [ %indvars.iv.next.i.i14.i.1, %4034 ]
  %4035 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.i.i13.i
  %4036 = load i32, i32* %4035, align 4, !tbaa !12
  %4037 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.i.i13.i
  %4038 = bitcast double* %4037 to i64*
  %4039 = load i64, i64* %4038, align 8, !tbaa !1
  %4040 = sext i32 %4036 to i64
  %4041 = getelementptr inbounds double, double* %3456, i64 %4040
  %4042 = bitcast double* %4041 to i64*
  store i64 %4039, i64* %4042, align 8, !tbaa !1
  %4043 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.i.i13.i
  %4044 = bitcast double* %4043 to i64*
  %4045 = load i64, i64* %4044, align 8, !tbaa !1
  %4046 = getelementptr inbounds double, double* %3457, i64 %4040
  %4047 = bitcast double* %4046 to i64*
  store i64 %4045, i64* %4047, align 8, !tbaa !1
  %4048 = getelementptr inbounds double, double* %3417, i64 %indvars.iv.i.i13.i
  %4049 = bitcast double* %4048 to i64*
  %4050 = load i64, i64* %4049, align 8, !tbaa !1
  %4051 = getelementptr inbounds double, double* %3458, i64 %4040
  %4052 = bitcast double* %4051 to i64*
  store i64 %4050, i64* %4052, align 8, !tbaa !1
  %indvars.iv.next.i.i14.i = add nuw nsw i64 %indvars.iv.i.i13.i, 1
  %4053 = getelementptr inbounds i32, i32* %3370, i64 %indvars.iv.next.i.i14.i
  %4054 = load i32, i32* %4053, align 4, !tbaa !12
  %4055 = getelementptr inbounds double, double* %3413, i64 %indvars.iv.next.i.i14.i
  %4056 = bitcast double* %4055 to i64*
  %4057 = load i64, i64* %4056, align 8, !tbaa !1
  %4058 = sext i32 %4054 to i64
  %4059 = getelementptr inbounds double, double* %3456, i64 %4058
  %4060 = bitcast double* %4059 to i64*
  store i64 %4057, i64* %4060, align 8, !tbaa !1
  %4061 = getelementptr inbounds double, double* %3415, i64 %indvars.iv.next.i.i14.i
  %4062 = bitcast double* %4061 to i64*
  %4063 = load i64, i64* %4062, align 8, !tbaa !1
  %4064 = getelementptr inbounds double, double* %3457, i64 %4058
  %4065 = bitcast double* %4064 to i64*
  store i64 %4063, i64* %4065, align 8, !tbaa !1
  %4066 = getelementptr inbounds double, double* %3417, i64 %indvars.iv.next.i.i14.i
  %4067 = bitcast double* %4066 to i64*
  %4068 = load i64, i64* %4067, align 8, !tbaa !1
  %4069 = getelementptr inbounds double, double* %3458, i64 %4058
  %4070 = bitcast double* %4069 to i64*
  store i64 %4068, i64* %4070, align 8, !tbaa !1
  %indvars.iv.next.i.i14.i.1 = add nsw i64 %indvars.iv.i.i13.i, 2
  %lftr.wideiv82.1 = trunc i64 %indvars.iv.next.i.i14.i.1 to i32
  %exitcond83.1 = icmp eq i32 %lftr.wideiv82.1, %3367
  br i1 %exitcond83.1, label %.lr.ph.i.i.i11.i.preheader.unr-lcssa, label %4034

.lr.ph.i.i.i11.i.preheader.unr-lcssa:             ; preds = %4034
  br label %.lr.ph.i.i.i11.i.preheader

.lr.ph.i.i.i11.i.preheader:                       ; preds = %.lr.ph.i.i.i11.i.preheader.unr-lcssa, %.lr.ph.i.i6.i.split
  br label %.lr.ph.i.i.i11.i

_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i:      ; preds = %4033, %_Z7ReleaseIdEvPPT_.exit10.i.i.i
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %4071 = load i32, i32* %3341, align 4, !tbaa !12
  %4072 = sext i32 %4071 to i64
  %4073 = icmp slt i64 %indvars.iv.next.i15.i, %4072
  br i1 %4073, label %3363, label %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i.loopexit

_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i.loopexit: ; preds = %_ZL15EvalEOSForElemsR6DomainPdiPii.exit.i.i
  br label %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i

_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i: ; preds = %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i.loopexit, %.preheader.i.i, %_ZL13CalcQForElemsR6DomainPd.exit.i
  %4074 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 54
  %4075 = load double, double* %4074, align 8, !tbaa !70
  %domain.idx.i = getelementptr %class.Domain, %class.Domain* %domain, i64 0, i32 43, i32 0, i32 0, i32 0
  %domain.idx.val.i = load double*, double** %domain.idx.i, align 8, !tbaa !9
  br i1 %2538, label %.lr.ph.i20.i.preheader, label %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.i

.lr.ph.i20.i.preheader:                           ; preds = %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i
  %4076 = add i32 %2533, -1
  %4077 = zext i32 %4076 to i64
  %4078 = add nuw nsw i64 %4077, 1
  %min.iters.check274 = icmp ult i64 %4078, 4
  br i1 %min.iters.check274, label %.lr.ph.i20.i.preheader294, label %min.iters.checked275

min.iters.checked275:                             ; preds = %.lr.ph.i20.i.preheader
  %n.vec277 = and i64 %4078, 8589934588
  %cmp.zero278 = icmp eq i64 %n.vec277, 0
  br i1 %cmp.zero278, label %.lr.ph.i20.i.preheader294, label %vector.ph279

vector.ph279:                                     ; preds = %min.iters.checked275
  %broadcast.splatinsert290 = insertelement <2 x double> undef, double %4075, i32 0
  %broadcast.splat291 = shufflevector <2 x double> %broadcast.splatinsert290, <2 x double> undef, <2 x i32> zeroinitializer
  %4079 = add nsw i64 %n.vec277, -4
  %4080 = lshr exact i64 %4079, 2
  %4081 = and i64 %4080, 1
  %lcmp.mod = icmp eq i64 %4081, 0
  br i1 %lcmp.mod, label %vector.body271.prol, label %vector.ph279.split

vector.body271.prol:                              ; preds = %vector.ph279
  %4082 = bitcast i8* %2536 to <2 x double>*
  %wide.load288.prol = load <2 x double>, <2 x double>* %4082, align 8, !tbaa !1
  %4083 = getelementptr i8, i8* %2536, i64 16
  %4084 = bitcast i8* %4083 to <2 x double>*
  %wide.load289.prol = load <2 x double>, <2 x double>* %4084, align 8, !tbaa !1
  %4085 = fadd <2 x double> %wide.load288.prol, <double -1.000000e+00, double -1.000000e+00>
  %4086 = fadd <2 x double> %wide.load289.prol, <double -1.000000e+00, double -1.000000e+00>
  %4087 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4085)
  %4088 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4086)
  %4089 = fcmp olt <2 x double> %4087, %broadcast.splat291
  %4090 = fcmp olt <2 x double> %4088, %broadcast.splat291
  %4091 = select <2 x i1> %4089, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load288.prol
  %4092 = select <2 x i1> %4090, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load289.prol
  %4093 = bitcast double* %domain.idx.val.i to <2 x double>*
  store <2 x double> %4091, <2 x double>* %4093, align 8, !tbaa !1
  %4094 = getelementptr double, double* %domain.idx.val.i, i64 2
  %4095 = bitcast double* %4094 to <2 x double>*
  store <2 x double> %4092, <2 x double>* %4095, align 8, !tbaa !1
  br label %vector.ph279.split

vector.ph279.split:                               ; preds = %vector.body271.prol, %vector.ph279
  %index280.unr = phi i64 [ 0, %vector.ph279 ], [ 4, %vector.body271.prol ]
  %4096 = icmp eq i64 %4080, 0
  br i1 %4096, label %middle.block272, label %vector.ph279.split.split

vector.ph279.split.split:                         ; preds = %vector.ph279.split
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph279.split.split
  %index280 = phi i64 [ %index280.unr, %vector.ph279.split.split ], [ %index.next281.1, %vector.body271 ]
  %4097 = getelementptr inbounds double, double* %2537, i64 %index280
  %4098 = bitcast double* %4097 to <2 x double>*
  %wide.load288 = load <2 x double>, <2 x double>* %4098, align 8, !tbaa !1
  %4099 = getelementptr double, double* %4097, i64 2
  %4100 = bitcast double* %4099 to <2 x double>*
  %wide.load289 = load <2 x double>, <2 x double>* %4100, align 8, !tbaa !1
  %4101 = fadd <2 x double> %wide.load288, <double -1.000000e+00, double -1.000000e+00>
  %4102 = fadd <2 x double> %wide.load289, <double -1.000000e+00, double -1.000000e+00>
  %4103 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4101)
  %4104 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4102)
  %4105 = fcmp olt <2 x double> %4103, %broadcast.splat291
  %4106 = fcmp olt <2 x double> %4104, %broadcast.splat291
  %4107 = select <2 x i1> %4105, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load288
  %4108 = select <2 x i1> %4106, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load289
  %4109 = getelementptr inbounds double, double* %domain.idx.val.i, i64 %index280
  %4110 = bitcast double* %4109 to <2 x double>*
  store <2 x double> %4107, <2 x double>* %4110, align 8, !tbaa !1
  %4111 = getelementptr double, double* %4109, i64 2
  %4112 = bitcast double* %4111 to <2 x double>*
  store <2 x double> %4108, <2 x double>* %4112, align 8, !tbaa !1
  %index.next281 = add i64 %index280, 4
  %4113 = getelementptr inbounds double, double* %2537, i64 %index.next281
  %4114 = bitcast double* %4113 to <2 x double>*
  %wide.load288.1 = load <2 x double>, <2 x double>* %4114, align 8, !tbaa !1
  %4115 = getelementptr double, double* %4113, i64 2
  %4116 = bitcast double* %4115 to <2 x double>*
  %wide.load289.1 = load <2 x double>, <2 x double>* %4116, align 8, !tbaa !1
  %4117 = fadd <2 x double> %wide.load288.1, <double -1.000000e+00, double -1.000000e+00>
  %4118 = fadd <2 x double> %wide.load289.1, <double -1.000000e+00, double -1.000000e+00>
  %4119 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4117)
  %4120 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4118)
  %4121 = fcmp olt <2 x double> %4119, %broadcast.splat291
  %4122 = fcmp olt <2 x double> %4120, %broadcast.splat291
  %4123 = select <2 x i1> %4121, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load288.1
  %4124 = select <2 x i1> %4122, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %wide.load289.1
  %4125 = getelementptr inbounds double, double* %domain.idx.val.i, i64 %index.next281
  %4126 = bitcast double* %4125 to <2 x double>*
  store <2 x double> %4123, <2 x double>* %4126, align 8, !tbaa !1
  %4127 = getelementptr double, double* %4125, i64 2
  %4128 = bitcast double* %4127 to <2 x double>*
  store <2 x double> %4124, <2 x double>* %4128, align 8, !tbaa !1
  %index.next281.1 = add i64 %index280, 8
  %4129 = icmp eq i64 %index.next281.1, %n.vec277
  br i1 %4129, label %middle.block272.unr-lcssa, label %vector.body271, !llvm.loop !71

middle.block272.unr-lcssa:                        ; preds = %vector.body271
  br label %middle.block272

middle.block272:                                  ; preds = %middle.block272.unr-lcssa, %vector.ph279.split
  %cmp.n283 = icmp eq i64 %4078, %n.vec277
  br i1 %cmp.n283, label %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i, label %.lr.ph.i20.i.preheader294

.lr.ph.i20.i.preheader294:                        ; preds = %middle.block272, %min.iters.checked275, %.lr.ph.i20.i.preheader
  %indvars.iv.i16.i.ph = phi i64 [ 0, %min.iters.checked275 ], [ 0, %.lr.ph.i20.i.preheader ], [ %n.vec277, %middle.block272 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.i.preheader294
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i17.i, %.lr.ph.i20.i ], [ %indvars.iv.i16.i.ph, %.lr.ph.i20.i.preheader294 ]
  %4130 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.i16.i
  %4131 = load double, double* %4130, align 8, !tbaa !1
  %4132 = fadd double %4131, -1.000000e+00
  %4133 = call double @fabs(double %4132) #15
  %4134 = fcmp olt double %4133, %4075
  %tmpV.0.i.i = select i1 %4134, double 1.000000e+00, double %4131
  %4135 = getelementptr inbounds double, double* %domain.idx.val.i, i64 %indvars.iv.i16.i
  store double %tmpV.0.i.i, double* %4135, align 8, !tbaa !1
  %indvars.iv.next.i17.i = add nuw nsw i64 %indvars.iv.i16.i, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.next.i17.i to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %2533
  br i1 %exitcond51, label %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i.loopexit, label %.lr.ph.i20.i, !llvm.loop !72

_ZL21UpdateVolumesForElemsR6DomainPddi.exit.i:    ; preds = %_ZL31ApplyMaterialPropertiesForElemsR6DomainPd.exit.i
  %4136 = icmp eq i8* %2536, null
  br i1 %4136, label %_ZL16LagrangeElementsR6Domaini.exit, label %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i

_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i.loopexit: ; preds = %.lr.ph.i20.i
  br label %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i

_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i: ; preds = %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i.loopexit, %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.i, %middle.block272
  call void @free(i8* nonnull %2536) #2
  br label %_ZL16LagrangeElementsR6Domaini.exit

_ZL16LagrangeElementsR6Domaini.exit:              ; preds = %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.thread.i, %_ZL21UpdateVolumesForElemsR6DomainPddi.exit.i
  %4137 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 70
  %4138 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 71
  %4139 = bitcast double* %4137 to <2 x double>*
  store <2 x double> <double 1.000000e+20, double 1.000000e+20>, <2 x double>* %4139, align 8, !tbaa !1
  %4140 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 16
  %4141 = load i32, i32* %4140, align 4, !tbaa !12
  %4142 = icmp sgt i32 %4141, 0
  br i1 %4142, label %.lr.ph.i, label %_ZL27CalcTimeConstraintsForElemsR6Domain.exit

.lr.ph.i:                                         ; preds = %_ZL16LagrangeElementsR6Domaini.exit
  %4143 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 18
  %4144 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 20
  %4145 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 63
  %4146 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 49, i32 0, i32 0, i32 0
  %4147 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 47, i32 0, i32 0, i32 0
  %4148 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 48, i32 0, i32 0, i32 0
  %4149 = getelementptr inbounds %class.Domain, %class.Domain* %domain, i64 0, i32 68
  %.pre.i21 = load i32*, i32** %4143, align 8, !tbaa !43
  %.pre10.i = load i32**, i32*** %4144, align 8, !tbaa !48
  br label %4150

; <label>:4150                                    ; preds = %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i, %.lr.ph.i
  %4151 = phi i32** [ %.pre10.i, %.lr.ph.i ], [ %4198, %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i ]
  %4152 = phi i32* [ %.pre.i21, %.lr.ph.i ], [ %4195, %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i ]
  %4153 = getelementptr inbounds i32, i32* %4152, i64 %indvars.iv.i
  %4154 = load i32, i32* %4153, align 4, !tbaa !12
  %4155 = getelementptr inbounds i32*, i32** %4151, i64 %indvars.iv.i
  %4156 = load i32*, i32** %4155, align 8, !tbaa !49
  %4157 = load double, double* %4145, align 8, !tbaa !73
  %4158 = fmul double %4157, 6.400000e+01
  %4159 = fmul double %4157, %4158
  %4160 = icmp sgt i32 %4154, 0
  br i1 %4160, label %.lr.ph.i1.i23, label %._ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit_crit_edge.i

._ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit_crit_edge.i: ; preds = %4150
  %domain.idx.val.pre.i = load double*, double** %4147, align 8, !tbaa !9
  br label %_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i

.lr.ph.i1.i23:                                    ; preds = %4150
  %4161 = load double, double* %4137, align 8, !tbaa !1
  %.pre.i.i22 = load double*, double** %4147, align 8, !tbaa !9
  br label %4162

._crit_edge.i2.i:                                 ; preds = %4183
  %phitmp.i.i = icmp eq i32 %courant_elem.1.i.i, -1
  br i1 %phitmp.i.i, label %_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i, label %4194

; <label>:4162                                    ; preds = %4183, %.lr.ph.i1.i23
  %4163 = phi double* [ %.pre.i.i22, %.lr.ph.i1.i23 ], [ %4189, %4183 ]
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i1.i23 ], [ %indvars.iv.next.i4.i, %4183 ]
  %dtcourant_tmp.04.i.i = phi double [ %4161, %.lr.ph.i1.i23 ], [ %dtcourant_tmp.1.i.i, %4183 ]
  %courant_elem.02.i.i = phi i32 [ -1, %.lr.ph.i1.i23 ], [ %courant_elem.1.i.i, %4183 ]
  %4164 = getelementptr inbounds i32, i32* %4156, i64 %indvars.iv.i3.i
  %4165 = load i32, i32* %4164, align 4, !tbaa !12
  %4166 = sext i32 %4165 to i64
  %4167 = load double*, double** %4146, align 8, !tbaa !9
  %4168 = getelementptr inbounds double, double* %4167, i64 %4166
  %4169 = load double, double* %4168, align 8, !tbaa !1
  %4170 = fmul double %4169, %4169
  %4171 = getelementptr inbounds double, double* %4163, i64 %4166
  %4172 = load double, double* %4171, align 8, !tbaa !1
  %4173 = fcmp olt double %4172, 0.000000e+00
  br i1 %4173, label %4174, label %4183

; <label>:4174                                    ; preds = %4162
  %4175 = load double*, double** %4148, align 8, !tbaa !9
  %4176 = getelementptr inbounds double, double* %4175, i64 %4166
  %4177 = load double, double* %4176, align 8, !tbaa !1
  %4178 = fmul double %4159, %4177
  %4179 = fmul double %4177, %4178
  %4180 = fmul double %4172, %4179
  %4181 = fmul double %4172, %4180
  %4182 = fadd double %4170, %4181
  br label %4183

; <label>:4183                                    ; preds = %4174, %4162
  %dtf.0.i.i = phi double [ %4182, %4174 ], [ %4170, %4162 ]
  %4184 = call double @sqrt(double %dtf.0.i.i) #2
  %4185 = load double*, double** %4148, align 8, !tbaa !9
  %4186 = getelementptr inbounds double, double* %4185, i64 %4166
  %4187 = load double, double* %4186, align 8, !tbaa !1
  %4188 = fdiv double %4187, %4184
  %4189 = load double*, double** %4147, align 8, !tbaa !9
  %4190 = getelementptr inbounds double, double* %4189, i64 %4166
  %4191 = load double, double* %4190, align 8, !tbaa !1
  %4192 = fcmp une double %4191, 0.000000e+00
  %4193 = fcmp olt double %4188, %dtcourant_tmp.04.i.i
  %or.cond.i.i24 = and i1 %4193, %4192
  %courant_elem.1.i.i = select i1 %or.cond.i.i24, i32 %4165, i32 %courant_elem.02.i.i
  %dtcourant_tmp.1.i.i = select i1 %or.cond.i.i24, double %4188, double %dtcourant_tmp.04.i.i
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i4.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4154
  br i1 %exitcond, label %._crit_edge.i2.i, label %4162

; <label>:4194                                    ; preds = %._crit_edge.i2.i
  store double %dtcourant_tmp.1.i.i, double* %4137, align 8, !tbaa !1
  br label %_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i

_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i: ; preds = %4194, %._crit_edge.i2.i, %._ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit_crit_edge.i
  %domain.idx.val.i27 = phi double* [ %domain.idx.val.pre.i, %._ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit_crit_edge.i ], [ %4189, %._crit_edge.i2.i ], [ %4189, %4194 ]
  %4195 = load i32*, i32** %4143, align 8, !tbaa !43
  %4196 = getelementptr inbounds i32, i32* %4195, i64 %indvars.iv.i
  %4197 = load i32, i32* %4196, align 4, !tbaa !12
  %4198 = load i32**, i32*** %4144, align 8, !tbaa !48
  %4199 = getelementptr inbounds i32*, i32** %4198, i64 %indvars.iv.i
  %4200 = load i32*, i32** %4199, align 8, !tbaa !49
  %4201 = load double, double* %4149, align 8, !tbaa !74
  %4202 = icmp sgt i32 %4197, 0
  br i1 %4202, label %.lr.ph.i.preheader.i, label %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i

.lr.ph.i.preheader.i:                             ; preds = %_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i
  %4203 = load double, double* %4138, align 8, !tbaa !1
  br label %.lr.ph.i.i30

._crit_edge.i.i28:                                ; preds = %4216
  %4204 = icmp eq i32 %hydro_elem.2.i.i, -1
  br i1 %4204, label %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i, label %4217

.lr.ph.i.i30:                                     ; preds = %4216, %.lr.ph.i.preheader.i
  %indvars.iv.i.i29 = phi i64 [ %indvars.iv.next.i.i31, %4216 ], [ 0, %.lr.ph.i.preheader.i ]
  %dthydro_tmp.03.i.i = phi double [ %dthydro_tmp.2.i.i, %4216 ], [ %4203, %.lr.ph.i.preheader.i ]
  %hydro_elem.02.i.i = phi i32 [ %hydro_elem.2.i.i, %4216 ], [ -1, %.lr.ph.i.preheader.i ]
  %4205 = getelementptr inbounds i32, i32* %4200, i64 %indvars.iv.i.i29
  %4206 = load i32, i32* %4205, align 4, !tbaa !12
  %4207 = sext i32 %4206 to i64
  %4208 = getelementptr inbounds double, double* %domain.idx.val.i27, i64 %4207
  %4209 = load double, double* %4208, align 8, !tbaa !1
  %4210 = fcmp une double %4209, 0.000000e+00
  br i1 %4210, label %4211, label %4216

; <label>:4211                                    ; preds = %.lr.ph.i.i30
  %4212 = call double @fabs(double %4209) #15
  %4213 = fadd double %4212, 1.000000e-20
  %4214 = fdiv double %4201, %4213
  %4215 = fcmp ogt double %dthydro_tmp.03.i.i, %4214
  %hydro_elem.1.i.i = select i1 %4215, i32 %4206, i32 %hydro_elem.02.i.i
  %dthydro_tmp.1.i.i = select i1 %4215, double %4214, double %dthydro_tmp.03.i.i
  br label %4216

; <label>:4216                                    ; preds = %4211, %.lr.ph.i.i30
  %hydro_elem.2.i.i = phi i32 [ %hydro_elem.02.i.i, %.lr.ph.i.i30 ], [ %hydro_elem.1.i.i, %4211 ]
  %dthydro_tmp.2.i.i = phi double [ %dthydro_tmp.03.i.i, %.lr.ph.i.i30 ], [ %dthydro_tmp.1.i.i, %4211 ]
  %indvars.iv.next.i.i31 = add nuw nsw i64 %indvars.iv.i.i29, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.next.i.i31 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %4197
  br i1 %exitcond49, label %._crit_edge.i.i28, label %.lr.ph.i.i30

; <label>:4217                                    ; preds = %._crit_edge.i.i28
  store double %dthydro_tmp.2.i.i, double* %4138, align 8, !tbaa !1
  br label %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i

_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i: ; preds = %4217, %._crit_edge.i.i28, %_ZL29CalcCourantConstraintForElemsR6DomainiPidRd.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %4218 = load i32, i32* %4140, align 4, !tbaa !12
  %4219 = sext i32 %4218 to i64
  %4220 = icmp slt i64 %indvars.iv.next.i, %4219
  br i1 %4220, label %4150, label %_ZL27CalcTimeConstraintsForElemsR6Domain.exit.loopexit

_ZL27CalcTimeConstraintsForElemsR6Domain.exit.loopexit: ; preds = %_ZL27CalcHydroConstraintForElemsR6DomainiPidRd.exit.i
  br label %_ZL27CalcTimeConstraintsForElemsR6Domain.exit

_ZL27CalcTimeConstraintsForElemsR6Domain.exit:    ; preds = %_ZL27CalcTimeConstraintsForElemsR6Domain.exit.loopexit, %_ZL16LagrangeElementsR6Domaini.exit
  ret void

; <label>:4221                                    ; preds = %.lr.ph40.i.i.i.1310
  %4222 = getelementptr inbounds double, double* %3403, i64 %indvars.iv.next62.i.i.i
  %4223 = bitcast double* %4222 to i64*
  %4224 = load i64, i64* %4223, align 8, !tbaa !1
  %4225 = getelementptr inbounds double, double* %3405, i64 %indvars.iv.next62.i.i.i
  %4226 = bitcast double* %4225 to i64*
  store i64 %4224, i64* %4226, align 8, !tbaa !1
  br label %4227

; <label>:4227                                    ; preds = %4221, %.lr.ph40.i.i.i.1310
  %indvars.iv.next62.i.i.i.1 = add nsw i64 %indvars.iv61.i.i.i, 2
  %lftr.wideiv56.1 = trunc i64 %indvars.iv.next62.i.i.i.1 to i32
  %exitcond57.1 = icmp eq i32 %lftr.wideiv56.1, %3367
  br i1 %exitcond57.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph40.i.i.i

; <label>:4228                                    ; preds = %.lr.ph42.i.i.i.1313
  %4229 = getelementptr inbounds double, double* %3399, i64 %indvars.iv.next66.i.i.i
  store double 0.000000e+00, double* %4229, align 8, !tbaa !1
  %4230 = getelementptr inbounds double, double* %3403, i64 %indvars.iv.next66.i.i.i
  store double 0.000000e+00, double* %4230, align 8, !tbaa !1
  %4231 = getelementptr inbounds double, double* %3405, i64 %indvars.iv.next66.i.i.i
  store double 0.000000e+00, double* %4231, align 8, !tbaa !1
  br label %4232

; <label>:4232                                    ; preds = %4228, %.lr.ph42.i.i.i.1313
  %indvars.iv.next66.i.i.i.1 = add nsw i64 %indvars.iv65.i.i.i, 2
  %lftr.wideiv58.1 = trunc i64 %indvars.iv.next66.i.i.i.1 to i32
  %exitcond59.1 = icmp eq i32 %lftr.wideiv58.1, %3367
  br i1 %exitcond59.1, label %.lr.ph47.i.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph42.i.i.i

; <label>:4233                                    ; preds = %.lr.ph13.i.i.1324
  store double %3285, double* %3336, align 8, !tbaa !1
  br label %.lr.ph13.i.i.2325

.lr.ph13.i.i.2325:                                ; preds = %4233, %.lr.ph13.i.i.1324
  %indvars.iv.next68.i.i.1 = add nsw i64 %indvars.iv67.i.i, 2
  %4234 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next68.i.i.1
  %4235 = load double, double* %4234, align 8, !tbaa !1
  %4236 = fcmp ogt double %4235, %3285
  br i1 %4236, label %4237, label %.lr.ph13.i.i.3326

; <label>:4237                                    ; preds = %.lr.ph13.i.i.2325
  store double %3285, double* %4234, align 8, !tbaa !1
  br label %.lr.ph13.i.i.3326

.lr.ph13.i.i.3326:                                ; preds = %4237, %.lr.ph13.i.i.2325
  %indvars.iv.next68.i.i.2 = add nsw i64 %indvars.iv67.i.i, 3
  %4238 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next68.i.i.2
  %4239 = load double, double* %4238, align 8, !tbaa !1
  %4240 = fcmp ogt double %4239, %3285
  br i1 %4240, label %4241, label %4242

; <label>:4241                                    ; preds = %.lr.ph13.i.i.3326
  store double %3285, double* %4238, align 8, !tbaa !1
  br label %4242

; <label>:4242                                    ; preds = %4241, %.lr.ph13.i.i.3326
  %indvars.iv.next68.i.i.3 = add nsw i64 %indvars.iv67.i.i, 4
  %lftr.wideiv86.3 = trunc i64 %indvars.iv.next68.i.i.3 to i32
  %exitcond87.3 = icmp eq i32 %lftr.wideiv86.3, %3279
  br i1 %exitcond87.3, label %.preheader5.i.i.loopexit.unr-lcssa, label %.lr.ph13.i.i

; <label>:4243                                    ; preds = %.lr.ph15.i.i.1330
  store double %3283, double* %3299, align 8, !tbaa !1
  br label %.lr.ph15.i.i.2331

.lr.ph15.i.i.2331:                                ; preds = %4243, %.lr.ph15.i.i.1330
  %indvars.iv.next72.i.i.1 = add nsw i64 %indvars.iv71.i.i, 2
  %4244 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next72.i.i.1
  %4245 = load double, double* %4244, align 8, !tbaa !1
  %4246 = fcmp olt double %4245, %3283
  br i1 %4246, label %4247, label %.lr.ph15.i.i.3332

; <label>:4247                                    ; preds = %.lr.ph15.i.i.2331
  store double %3283, double* %4244, align 8, !tbaa !1
  br label %.lr.ph15.i.i.3332

.lr.ph15.i.i.3332:                                ; preds = %4247, %.lr.ph15.i.i.2331
  %indvars.iv.next72.i.i.2 = add nsw i64 %indvars.iv71.i.i, 3
  %4248 = getelementptr inbounds double, double* %2537, i64 %indvars.iv.next72.i.i.2
  %4249 = load double, double* %4248, align 8, !tbaa !1
  %4250 = fcmp olt double %4249, %3283
  br i1 %4250, label %4251, label %4252

; <label>:4251                                    ; preds = %.lr.ph15.i.i.3332
  store double %3283, double* %4248, align 8, !tbaa !1
  br label %4252

; <label>:4252                                    ; preds = %4251, %.lr.ph15.i.i.3332
  %indvars.iv.next72.i.i.3 = add nsw i64 %indvars.iv71.i.i, 4
  %lftr.wideiv88.3 = trunc i64 %indvars.iv.next72.i.i.3 to i32
  %exitcond89.3 = icmp eq i32 %lftr.wideiv88.3, %3279
  br i1 %exitcond89.3, label %.loopexit8.i.i.loopexit.unr-lcssa, label %.lr.ph15.i.i
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #11

; Function Attrs: nounwind
declare double @cbrt(double) #6

; Function Attrs: nounwind
declare void @free(i8* nocapture) #6

; Function Attrs: nounwind readnone
declare double @fabs(double) #12

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain15AllocateStrainsEi(%class.Domain* nocapture %this, i32 %numElem) #0 comdat align 2 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29
  %5 = sext i32 %numElem to i64
  %6 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  store double 0.000000e+00, double* %3, align 8, !tbaa !1
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29, i32 0, i32 0, i32 1
  %8 = bitcast double** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !42
  %10 = bitcast %"class.std::vector"* %4 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !9
  %12 = sub i64 %9, %11
  %13 = ashr exact i64 %12, 3
  %14 = icmp ugt i64 %5, %13
  %15 = inttoptr i64 %11 to double*
  br i1 %14, label %16, label %19

; <label>:16                                      ; preds = %0
  %17 = inttoptr i64 %9 to double*
  %18 = sub nsw i64 %5, %13
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %4, double* %17, i64 %18, double* nonnull dereferenceable(8) %3)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:19                                      ; preds = %0
  %20 = icmp ult i64 %5, %13
  br i1 %20, label %21, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds double, double* %15, i64 %5
  store double* %22, double** %7, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

_ZNSt6vectorIdSaIdEE6resizeEmd.exit:              ; preds = %21, %19, %16
  call void @llvm.lifetime.end(i64 8, i8* %6)
  %23 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30
  %24 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24)
  store double 0.000000e+00, double* %2, align 8, !tbaa !1
  %25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30, i32 0, i32 0, i32 1
  %26 = bitcast double** %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !42
  %28 = bitcast %"class.std::vector"* %23 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = sub i64 %27, %29
  %31 = ashr exact i64 %30, 3
  %32 = icmp ugt i64 %5, %31
  %33 = inttoptr i64 %29 to double*
  br i1 %32, label %34, label %37

; <label>:34                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %35 = inttoptr i64 %27 to double*
  %36 = sub nsw i64 %5, %31
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %23, double* %35, i64 %36, double* nonnull dereferenceable(8) %2)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:37                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %38 = icmp ult i64 %5, %31
  br i1 %38, label %39, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:39                                      ; preds = %37
  %40 = getelementptr inbounds double, double* %33, i64 %5
  store double* %40, double** %25, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

_ZNSt6vectorIdSaIdEE6resizeEmd.exit1:             ; preds = %39, %37, %34
  call void @llvm.lifetime.end(i64 8, i8* %24)
  %41 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31
  %42 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42)
  store double 0.000000e+00, double* %1, align 8, !tbaa !1
  %43 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31, i32 0, i32 0, i32 1
  %44 = bitcast double** %43 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !42
  %46 = bitcast %"class.std::vector"* %41 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !9
  %48 = sub i64 %45, %47
  %49 = ashr exact i64 %48, 3
  %50 = icmp ugt i64 %5, %49
  %51 = inttoptr i64 %47 to double*
  br i1 %50, label %52, label %55

; <label>:52                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %53 = inttoptr i64 %45 to double*
  %54 = sub nsw i64 %5, %49
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %41, double* %53, i64 %54, double* nonnull dereferenceable(8) %1)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:55                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %56 = icmp ult i64 %5, %49
  br i1 %56, label %57, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:57                                      ; preds = %55
  %58 = getelementptr inbounds double, double* %51, i64 %5
  store double* %58, double** %43, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

_ZNSt6vectorIdSaIdEE6resizeEmd.exit2:             ; preds = %57, %55, %52
  call void @llvm.lifetime.end(i64 8, i8* %42)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nocapture %this, double* %__position.coerce, i64 %__n, double* nocapture readonly dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = ptrtoint double* %__position.coerce to i64
  %2 = icmp eq i64 %__n, 0
  br i1 %2, label %_ZSt4fillIPddEvT_S1_RKT0_.exit13, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %5 = bitcast double** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = bitcast double** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !42
  %10 = sub i64 %6, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ult i64 %11, %__n
  %13 = inttoptr i64 %9 to double*
  br i1 %12, label %116, label %14

; <label>:14                                      ; preds = %3
  %15 = bitcast double* %__x to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !1
  %17 = sub i64 %9, %1
  %18 = ashr exact i64 %17, 3
  %19 = icmp ugt i64 %18, %__n
  br i1 %19, label %20, label %60

; <label>:20                                      ; preds = %14
  %21 = sub i64 0, %__n
  %22 = getelementptr inbounds double, double* %13, i64 %21
  %23 = ptrtoint double* %22 to i64
  %diff.neg = shl i64 %__n, 3
  %24 = icmp eq i64 %diff.neg, 0
  br i1 %24, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit, label %25

; <label>:25                                      ; preds = %20
  %26 = inttoptr i64 %9 to i8*
  %27 = bitcast double* %22 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %diff.neg, i32 8, i1 false) #2
  %.pre17 = load double*, double** %7, align 8, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %25, %20
  %28 = phi double* [ %13, %20 ], [ %.pre17, %25 ]
  %29 = getelementptr inbounds double, double* %28, i64 %__n
  store double* %29, double** %7, align 8, !tbaa !42
  %30 = sub i64 %23, %1
  %31 = ashr exact i64 %30, 3
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %.lr.ph.i.i12.preheader, label %33

; <label>:33                                      ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %.pre.i.i.i.i = sub nsw i64 0, %31
  %.pre1.i.i.i.i = getelementptr inbounds double, double* %13, i64 %.pre.i.i.i.i
  %34 = bitcast double* %.pre1.i.i.i.i to i8*
  %35 = bitcast double* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %34, i8* %35, i64 %30, i32 8, i1 false) #2
  br label %.lr.ph.i.i12.preheader

.lr.ph.i.i12.preheader:                           ; preds = %33, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %36 = getelementptr inbounds double, double* %__position.coerce, i64 %__n
  %37 = add i64 %diff.neg, -8
  %38 = lshr exact i64 %37, 3
  %39 = add nuw nsw i64 %38, 1
  %xtraiter23 = and i64 %39, 7
  %lcmp.mod24 = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24, label %.lr.ph.i.i12.preheader.split, label %.lr.ph.i.i12.prol.preheader

.lr.ph.i.i12.prol.preheader:                      ; preds = %.lr.ph.i.i12.preheader
  br label %.lr.ph.i.i12.prol

.lr.ph.i.i12.prol:                                ; preds = %.lr.ph.i.i12.prol, %.lr.ph.i.i12.prol.preheader
  %.01.i.i11.prol = phi double* [ %41, %.lr.ph.i.i12.prol ], [ %__position.coerce, %.lr.ph.i.i12.prol.preheader ]
  %prol.iter25 = phi i64 [ %prol.iter25.sub, %.lr.ph.i.i12.prol ], [ %xtraiter23, %.lr.ph.i.i12.prol.preheader ]
  %40 = bitcast double* %.01.i.i11.prol to i64*
  store i64 %16, i64* %40, align 8, !tbaa !1
  %41 = getelementptr inbounds double, double* %.01.i.i11.prol, i64 1
  %prol.iter25.sub = add i64 %prol.iter25, -1
  %prol.iter25.cmp = icmp eq i64 %prol.iter25.sub, 0
  br i1 %prol.iter25.cmp, label %.lr.ph.i.i12.preheader.split.loopexit, label %.lr.ph.i.i12.prol, !llvm.loop !76

.lr.ph.i.i12.preheader.split.loopexit:            ; preds = %.lr.ph.i.i12.prol
  br label %.lr.ph.i.i12.preheader.split

.lr.ph.i.i12.preheader.split:                     ; preds = %.lr.ph.i.i12.preheader.split.loopexit, %.lr.ph.i.i12.preheader
  %.01.i.i11.unr = phi double* [ %__position.coerce, %.lr.ph.i.i12.preheader ], [ %41, %.lr.ph.i.i12.preheader.split.loopexit ]
  %42 = icmp ult i64 %37, 56
  br i1 %42, label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit, label %.lr.ph.i.i12.preheader.split.split

.lr.ph.i.i12.preheader.split.split:               ; preds = %.lr.ph.i.i12.preheader.split
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i.i12, %.lr.ph.i.i12.preheader.split.split
  %.01.i.i11 = phi double* [ %.01.i.i11.unr, %.lr.ph.i.i12.preheader.split.split ], [ %58, %.lr.ph.i.i12 ]
  %43 = bitcast double* %.01.i.i11 to i64*
  store i64 %16, i64* %43, align 8, !tbaa !1
  %44 = getelementptr inbounds double, double* %.01.i.i11, i64 1
  %45 = bitcast double* %44 to i64*
  store i64 %16, i64* %45, align 8, !tbaa !1
  %46 = getelementptr inbounds double, double* %.01.i.i11, i64 2
  %47 = bitcast double* %46 to i64*
  store i64 %16, i64* %47, align 8, !tbaa !1
  %48 = getelementptr inbounds double, double* %.01.i.i11, i64 3
  %49 = bitcast double* %48 to i64*
  store i64 %16, i64* %49, align 8, !tbaa !1
  %50 = getelementptr inbounds double, double* %.01.i.i11, i64 4
  %51 = bitcast double* %50 to i64*
  store i64 %16, i64* %51, align 8, !tbaa !1
  %52 = getelementptr inbounds double, double* %.01.i.i11, i64 5
  %53 = bitcast double* %52 to i64*
  store i64 %16, i64* %53, align 8, !tbaa !1
  %54 = getelementptr inbounds double, double* %.01.i.i11, i64 6
  %55 = bitcast double* %54 to i64*
  store i64 %16, i64* %55, align 8, !tbaa !1
  %56 = getelementptr inbounds double, double* %.01.i.i11, i64 7
  %57 = bitcast double* %56 to i64*
  store i64 %16, i64* %57, align 8, !tbaa !1
  %58 = getelementptr inbounds double, double* %.01.i.i11, i64 8
  %59 = icmp eq double* %58, %36
  br i1 %59, label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit.unr-lcssa, label %.lr.ph.i.i12

; <label>:60                                      ; preds = %14
  %61 = sub i64 %__n, %18
  %62 = icmp eq i64 %18, %__n
  br i1 %62, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit10, label %.lr.ph.i.i.i.i.i8.preheader

.lr.ph.i.i.i.i.i8.preheader:                      ; preds = %60
  %63 = add i64 %__n, -1
  %64 = sub i64 %63, %18
  %xtraiter31 = and i64 %61, 7
  %lcmp.mod32 = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32, label %.lr.ph.i.i.i.i.i8.preheader.split, label %.lr.ph.i.i.i.i.i8.prol.preheader

.lr.ph.i.i.i.i.i8.prol.preheader:                 ; preds = %.lr.ph.i.i.i.i.i8.preheader
  br label %.lr.ph.i.i.i.i.i8.prol

.lr.ph.i.i.i.i.i8.prol:                           ; preds = %.lr.ph.i.i.i.i.i8.prol, %.lr.ph.i.i.i.i.i8.prol.preheader
  %__niter.02.i.i.i.i.i6.prol = phi i64 [ %66, %.lr.ph.i.i.i.i.i8.prol ], [ %61, %.lr.ph.i.i.i.i.i8.prol.preheader ]
  %.01.i.i.i.i.i7.prol = phi double* [ %67, %.lr.ph.i.i.i.i.i8.prol ], [ %13, %.lr.ph.i.i.i.i.i8.prol.preheader ]
  %prol.iter33 = phi i64 [ %prol.iter33.sub, %.lr.ph.i.i.i.i.i8.prol ], [ %xtraiter31, %.lr.ph.i.i.i.i.i8.prol.preheader ]
  %65 = bitcast double* %.01.i.i.i.i.i7.prol to i64*
  store i64 %16, i64* %65, align 8, !tbaa !1
  %66 = add i64 %__niter.02.i.i.i.i.i6.prol, -1
  %67 = getelementptr inbounds double, double* %.01.i.i.i.i.i7.prol, i64 1
  %prol.iter33.sub = add i64 %prol.iter33, -1
  %prol.iter33.cmp = icmp eq i64 %prol.iter33.sub, 0
  br i1 %prol.iter33.cmp, label %.lr.ph.i.i.i.i.i8.preheader.split.loopexit, label %.lr.ph.i.i.i.i.i8.prol, !llvm.loop !77

.lr.ph.i.i.i.i.i8.preheader.split.loopexit:       ; preds = %.lr.ph.i.i.i.i.i8.prol
  br label %.lr.ph.i.i.i.i.i8.preheader.split

.lr.ph.i.i.i.i.i8.preheader.split:                ; preds = %.lr.ph.i.i.i.i.i8.preheader.split.loopexit, %.lr.ph.i.i.i.i.i8.preheader
  %__niter.02.i.i.i.i.i6.unr = phi i64 [ %61, %.lr.ph.i.i.i.i.i8.preheader ], [ %66, %.lr.ph.i.i.i.i.i8.preheader.split.loopexit ]
  %.01.i.i.i.i.i7.unr = phi double* [ %13, %.lr.ph.i.i.i.i.i8.preheader ], [ %67, %.lr.ph.i.i.i.i.i8.preheader.split.loopexit ]
  %68 = icmp ult i64 %64, 7
  br i1 %68, label %._crit_edge.loopexit.i.i.i.i.i5, label %.lr.ph.i.i.i.i.i8.preheader.split.split

.lr.ph.i.i.i.i.i8.preheader.split.split:          ; preds = %.lr.ph.i.i.i.i.i8.preheader.split
  br label %.lr.ph.i.i.i.i.i8

._crit_edge.loopexit.i.i.i.i.i5.unr-lcssa:        ; preds = %.lr.ph.i.i.i.i.i8
  br label %._crit_edge.loopexit.i.i.i.i.i5

._crit_edge.loopexit.i.i.i.i.i5:                  ; preds = %._crit_edge.loopexit.i.i.i.i.i5.unr-lcssa, %.lr.ph.i.i.i.i.i8.preheader.split
  %scevgep.i.i.i.i.i4 = getelementptr double, double* %13, i64 %61
  br label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit10

.lr.ph.i.i.i.i.i8:                                ; preds = %.lr.ph.i.i.i.i.i8, %.lr.ph.i.i.i.i.i8.preheader.split.split
  %__niter.02.i.i.i.i.i6 = phi i64 [ %__niter.02.i.i.i.i.i6.unr, %.lr.ph.i.i.i.i.i8.preheader.split.split ], [ %84, %.lr.ph.i.i.i.i.i8 ]
  %.01.i.i.i.i.i7 = phi double* [ %.01.i.i.i.i.i7.unr, %.lr.ph.i.i.i.i.i8.preheader.split.split ], [ %85, %.lr.ph.i.i.i.i.i8 ]
  %69 = bitcast double* %.01.i.i.i.i.i7 to i64*
  store i64 %16, i64* %69, align 8, !tbaa !1
  %70 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 1
  %71 = bitcast double* %70 to i64*
  store i64 %16, i64* %71, align 8, !tbaa !1
  %72 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 2
  %73 = bitcast double* %72 to i64*
  store i64 %16, i64* %73, align 8, !tbaa !1
  %74 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 3
  %75 = bitcast double* %74 to i64*
  store i64 %16, i64* %75, align 8, !tbaa !1
  %76 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 4
  %77 = bitcast double* %76 to i64*
  store i64 %16, i64* %77, align 8, !tbaa !1
  %78 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 5
  %79 = bitcast double* %78 to i64*
  store i64 %16, i64* %79, align 8, !tbaa !1
  %80 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 6
  %81 = bitcast double* %80 to i64*
  store i64 %16, i64* %81, align 8, !tbaa !1
  %82 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 7
  %83 = bitcast double* %82 to i64*
  store i64 %16, i64* %83, align 8, !tbaa !1
  %84 = add i64 %__niter.02.i.i.i.i.i6, -8
  %85 = getelementptr inbounds double, double* %.01.i.i.i.i.i7, i64 8
  %86 = icmp eq i64 %84, 0
  br i1 %86, label %._crit_edge.loopexit.i.i.i.i.i5.unr-lcssa, label %.lr.ph.i.i.i.i.i8

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit10: ; preds = %._crit_edge.loopexit.i.i.i.i.i5, %60
  %.0.lcssa.i.i.i.i.i9 = phi double* [ %13, %60 ], [ %scevgep.i.i.i.i.i4, %._crit_edge.loopexit.i.i.i.i.i5 ]
  store double* %.0.lcssa.i.i.i.i.i9, double** %7, align 8, !tbaa !42
  %87 = icmp eq double* %13, %__position.coerce
  br i1 %87, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit3.thread, label %.lr.ph.i.i.preheader

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit3.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit10
  %88 = getelementptr inbounds double, double* %.0.lcssa.i.i.i.i.i9, i64 %18
  store double* %88, double** %7, align 8, !tbaa !42
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13

.lr.ph.i.i.preheader:                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit10
  %89 = bitcast double* %.0.lcssa.i.i.i.i.i9 to i8*
  %90 = bitcast double* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %89, i8* %90, i64 %17, i32 8, i1 false) #2
  %.pre19 = load double*, double** %7, align 8, !tbaa !42
  %91 = getelementptr inbounds double, double* %.pre19, i64 %18
  store double* %91, double** %7, align 8, !tbaa !42
  %scevgep = getelementptr double, double* %13, i64 -1
  %92 = ptrtoint double* %scevgep to i64
  %93 = sub i64 %92, %1
  %94 = lshr i64 %93, 3
  %95 = add nuw nsw i64 %94, 1
  %xtraiter28 = and i64 %95, 7
  %lcmp.mod29 = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29, label %.lr.ph.i.i.preheader.split, label %.lr.ph.i.i.prol.preheader

.lr.ph.i.i.prol.preheader:                        ; preds = %.lr.ph.i.i.preheader
  br label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.prol.preheader
  %.01.i.i.prol = phi double* [ %97, %.lr.ph.i.i.prol ], [ %__position.coerce, %.lr.ph.i.i.prol.preheader ]
  %prol.iter30 = phi i64 [ %prol.iter30.sub, %.lr.ph.i.i.prol ], [ %xtraiter28, %.lr.ph.i.i.prol.preheader ]
  %96 = bitcast double* %.01.i.i.prol to i64*
  store i64 %16, i64* %96, align 8, !tbaa !1
  %97 = getelementptr inbounds double, double* %.01.i.i.prol, i64 1
  %prol.iter30.sub = add i64 %prol.iter30, -1
  %prol.iter30.cmp = icmp eq i64 %prol.iter30.sub, 0
  br i1 %prol.iter30.cmp, label %.lr.ph.i.i.preheader.split.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !78

.lr.ph.i.i.preheader.split.loopexit:              ; preds = %.lr.ph.i.i.prol
  br label %.lr.ph.i.i.preheader.split

.lr.ph.i.i.preheader.split:                       ; preds = %.lr.ph.i.i.preheader.split.loopexit, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi double* [ %__position.coerce, %.lr.ph.i.i.preheader ], [ %97, %.lr.ph.i.i.preheader.split.loopexit ]
  %98 = icmp ult i64 %93, 56
  br i1 %98, label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22, label %.lr.ph.i.i.preheader.split.split

.lr.ph.i.i.preheader.split.split:                 ; preds = %.lr.ph.i.i.preheader.split
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.split.split
  %.01.i.i = phi double* [ %.01.i.i.unr, %.lr.ph.i.i.preheader.split.split ], [ %114, %.lr.ph.i.i ]
  %99 = bitcast double* %.01.i.i to i64*
  store i64 %16, i64* %99, align 8, !tbaa !1
  %100 = getelementptr inbounds double, double* %.01.i.i, i64 1
  %101 = bitcast double* %100 to i64*
  store i64 %16, i64* %101, align 8, !tbaa !1
  %102 = getelementptr inbounds double, double* %.01.i.i, i64 2
  %103 = bitcast double* %102 to i64*
  store i64 %16, i64* %103, align 8, !tbaa !1
  %104 = getelementptr inbounds double, double* %.01.i.i, i64 3
  %105 = bitcast double* %104 to i64*
  store i64 %16, i64* %105, align 8, !tbaa !1
  %106 = getelementptr inbounds double, double* %.01.i.i, i64 4
  %107 = bitcast double* %106 to i64*
  store i64 %16, i64* %107, align 8, !tbaa !1
  %108 = getelementptr inbounds double, double* %.01.i.i, i64 5
  %109 = bitcast double* %108 to i64*
  store i64 %16, i64* %109, align 8, !tbaa !1
  %110 = getelementptr inbounds double, double* %.01.i.i, i64 6
  %111 = bitcast double* %110 to i64*
  store i64 %16, i64* %111, align 8, !tbaa !1
  %112 = getelementptr inbounds double, double* %.01.i.i, i64 7
  %113 = bitcast double* %112 to i64*
  store i64 %16, i64* %113, align 8, !tbaa !1
  %114 = getelementptr inbounds double, double* %.01.i.i, i64 8
  %115 = icmp eq double* %114, %13
  br i1 %115, label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22.unr-lcssa, label %.lr.ph.i.i

; <label>:116                                     ; preds = %3
  %117 = bitcast %"class.std::vector"* %this to i64*
  %118 = load i64, i64* %117, align 8, !tbaa !9
  %119 = sub i64 %9, %118
  %120 = ashr exact i64 %119, 3
  %121 = sub nsw i64 2305843009213693951, %120
  %122 = icmp ult i64 %121, %__n
  br i1 %122, label %123, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

; <label>:123                                     ; preds = %116
  tail call void @_ZSt20__throw_length_errorPKc(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)) #22
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %116
  %124 = icmp ult i64 %120, %__n
  %125 = select i1 %124, i64 %__n, i64 %120
  %126 = add i64 %125, %120
  %127 = icmp ult i64 %126, %120
  %128 = icmp ugt i64 %126, 2305843009213693951
  %or.cond.i = or i1 %127, %128
  %129 = select i1 %or.cond.i, i64 2305843009213693951, i64 %126
  %130 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %131 = sub i64 %1, %118
  %132 = ashr exact i64 %131, 3
  %133 = icmp eq i64 %129, 0
  br i1 %133, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit, label %134

; <label>:134                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %135 = icmp ugt i64 %129, 2305843009213693951
  br i1 %135, label %136, label %_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m.exit.i

; <label>:136                                     ; preds = %134
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m.exit.i: ; preds = %134
  %137 = shl i64 %129, 3
  %138 = tail call noalias i8* @_Znwm(i64 %137)
  %139 = bitcast i8* %138 to double*
  br label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit:  ; preds = %_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m.exit.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %140 = phi double* [ %139, %_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m.exit.i ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ]
  %141 = getelementptr inbounds double, double* %140, i64 %132
  %142 = bitcast double* %__x to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !1
  %144 = add i64 %__n, -1
  %xtraiter = and i64 %__n, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %__niter.02.i.i.i.i.i.prol = phi i64 [ %146, %.lr.ph.i.i.i.i.i.prol ], [ %__n, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.01.i.i.i.i.i.prol = phi double* [ %147, %.lr.ph.i.i.i.i.i.prol ], [ %141, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph.i.i.i.i.i.prol ], [ %xtraiter, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %145 = bitcast double* %.01.i.i.i.i.i.prol to i64*
  store i64 %143, i64* %145, align 8, !tbaa !1
  %146 = add i64 %__niter.02.i.i.i.i.i.prol, -1
  %147 = getelementptr inbounds double, double* %.01.i.i.i.i.i.prol, i64 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !79

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.loopexit: ; preds = %.lr.ph.i.i.i.i.i.prol
  br label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split: ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.loopexit, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  %__niter.02.i.i.i.i.i.unr = phi i64 [ %__n, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit ], [ %146, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.loopexit ]
  %.01.i.i.i.i.i.unr = phi double* [ %141, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit ], [ %147, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.loopexit ]
  %148 = icmp ult i64 %144, 7
  br i1 %148, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.split

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.split: ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.split
  %__niter.02.i.i.i.i.i = phi i64 [ %__niter.02.i.i.i.i.i.unr, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.split ], [ %164, %.lr.ph.i.i.i.i.i ]
  %.01.i.i.i.i.i = phi double* [ %.01.i.i.i.i.i.unr, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split.split ], [ %165, %.lr.ph.i.i.i.i.i ]
  %149 = bitcast double* %.01.i.i.i.i.i to i64*
  store i64 %143, i64* %149, align 8, !tbaa !1
  %150 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 1
  %151 = bitcast double* %150 to i64*
  store i64 %143, i64* %151, align 8, !tbaa !1
  %152 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 2
  %153 = bitcast double* %152 to i64*
  store i64 %143, i64* %153, align 8, !tbaa !1
  %154 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 3
  %155 = bitcast double* %154 to i64*
  store i64 %143, i64* %155, align 8, !tbaa !1
  %156 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 4
  %157 = bitcast double* %156 to i64*
  store i64 %143, i64* %157, align 8, !tbaa !1
  %158 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 5
  %159 = bitcast double* %158 to i64*
  store i64 %143, i64* %159, align 8, !tbaa !1
  %160 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 6
  %161 = bitcast double* %160 to i64*
  store i64 %143, i64* %161, align 8, !tbaa !1
  %162 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 7
  %163 = bitcast double* %162 to i64*
  store i64 %143, i64* %163, align 8, !tbaa !1
  %164 = add i64 %__niter.02.i.i.i.i.i, -8
  %165 = getelementptr inbounds double, double* %.01.i.i.i.i.i, i64 8
  %166 = icmp eq i64 %164, 0
  br i1 %166, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  br label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit.unr-lcssa, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.split
  %167 = load double*, double** %130, align 8, !tbaa !9
  %168 = ptrtoint double* %167 to i64
  %169 = sub i64 %1, %168
  %170 = ashr exact i64 %169, 3
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %175, label %172

; <label>:172                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %173 = bitcast double* %140 to i8*
  %174 = bitcast double* %167 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %173, i8* %174, i64 %169, i32 8, i1 false) #2
  br label %175

; <label>:175                                     ; preds = %172, %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %176 = getelementptr inbounds double, double* %140, i64 %170
  %177 = getelementptr inbounds double, double* %176, i64 %__n
  %178 = load i64, i64* %8, align 8, !tbaa !42
  %179 = sub i64 %178, %1
  %180 = ashr exact i64 %179, 3
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %185, label %182

; <label>:182                                     ; preds = %175
  %183 = bitcast double* %177 to i8*
  %184 = bitcast double* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %183, i8* %184, i64 %179, i32 8, i1 false) #2
  br label %185

; <label>:185                                     ; preds = %182, %175
  %186 = getelementptr inbounds double, double* %177, i64 %180
  %187 = icmp eq double* %167, null
  br i1 %187, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit1, label %188

; <label>:188                                     ; preds = %185
  %189 = bitcast double* %167 to i8*
  tail call void @_ZdlPv(i8* %189) #2
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit1

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit1: ; preds = %188, %185
  store double* %140, double** %130, align 8, !tbaa !9
  store double* %186, double** %7, align 8, !tbaa !42
  %190 = getelementptr inbounds double, double* %140, i64 %129
  store double* %190, double** %4, align 8, !tbaa !75
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13

_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i12
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit

_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit:        ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit.unr-lcssa, %.lr.ph.i.i12.preheader.split
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13

_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22.unr-lcssa: ; preds = %.lr.ph.i.i
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22

_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22:      ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22.unr-lcssa, %.lr.ph.i.i.preheader.split
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit13

_ZSt4fillIPddEvT_S1_RKT0_.exit13:                 ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit22, %_ZSt4fillIPddEvT_S1_RKT0_.exit13.loopexit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit1, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit3.thread, %0
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #14

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain17AllocateGradientsEii(%class.Domain* nocapture %this, i32 %numElem, i32 %allElem) #0 comdat align 2 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35
  %8 = sext i32 %numElem to i64
  %9 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9)
  store double 0.000000e+00, double* %6, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35, i32 0, i32 0, i32 1
  %11 = bitcast double** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !42
  %13 = bitcast %"class.std::vector"* %7 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !9
  %15 = sub i64 %12, %14
  %16 = ashr exact i64 %15, 3
  %17 = icmp ugt i64 %8, %16
  %18 = inttoptr i64 %14 to double*
  br i1 %17, label %19, label %22

; <label>:19                                      ; preds = %0
  %20 = inttoptr i64 %12 to double*
  %21 = sub nsw i64 %8, %16
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %7, double* %20, i64 %21, double* nonnull dereferenceable(8) %6)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:22                                      ; preds = %0
  %23 = icmp ult i64 %8, %16
  br i1 %23, label %24, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds double, double* %18, i64 %8
  store double* %25, double** %10, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

_ZNSt6vectorIdSaIdEE6resizeEmd.exit:              ; preds = %24, %22, %19
  call void @llvm.lifetime.end(i64 8, i8* %9)
  %26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36
  %27 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27)
  store double 0.000000e+00, double* %5, align 8, !tbaa !1
  %28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36, i32 0, i32 0, i32 1
  %29 = bitcast double** %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !42
  %31 = bitcast %"class.std::vector"* %26 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !9
  %33 = sub i64 %30, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp ugt i64 %8, %34
  %36 = inttoptr i64 %32 to double*
  br i1 %35, label %37, label %40

; <label>:37                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %38 = inttoptr i64 %30 to double*
  %39 = sub nsw i64 %8, %34
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %26, double* %38, i64 %39, double* nonnull dereferenceable(8) %5)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:40                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %41 = icmp ult i64 %8, %34
  br i1 %41, label %42, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:42                                      ; preds = %40
  %43 = getelementptr inbounds double, double* %36, i64 %8
  store double* %43, double** %28, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

_ZNSt6vectorIdSaIdEE6resizeEmd.exit1:             ; preds = %42, %40, %37
  call void @llvm.lifetime.end(i64 8, i8* %27)
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37
  %45 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45)
  store double 0.000000e+00, double* %4, align 8, !tbaa !1
  %46 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37, i32 0, i32 0, i32 1
  %47 = bitcast double** %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !42
  %49 = bitcast %"class.std::vector"* %44 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !9
  %51 = sub i64 %48, %50
  %52 = ashr exact i64 %51, 3
  %53 = icmp ugt i64 %8, %52
  %54 = inttoptr i64 %50 to double*
  br i1 %53, label %55, label %58

; <label>:55                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %56 = inttoptr i64 %48 to double*
  %57 = sub nsw i64 %8, %52
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %44, double* %56, i64 %57, double* nonnull dereferenceable(8) %4)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:58                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %59 = icmp ult i64 %8, %52
  br i1 %59, label %60, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:60                                      ; preds = %58
  %61 = getelementptr inbounds double, double* %54, i64 %8
  store double* %61, double** %46, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

_ZNSt6vectorIdSaIdEE6resizeEmd.exit2:             ; preds = %60, %58, %55
  call void @llvm.lifetime.end(i64 8, i8* %45)
  %62 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32
  %63 = sext i32 %allElem to i64
  %64 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64)
  store double 0.000000e+00, double* %3, align 8, !tbaa !1
  %65 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32, i32 0, i32 0, i32 1
  %66 = bitcast double** %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !42
  %68 = bitcast %"class.std::vector"* %62 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !9
  %70 = sub i64 %67, %69
  %71 = ashr exact i64 %70, 3
  %72 = icmp ugt i64 %63, %71
  %73 = inttoptr i64 %69 to double*
  br i1 %72, label %74, label %77

; <label>:74                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2
  %75 = inttoptr i64 %67 to double*
  %76 = sub nsw i64 %63, %71
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %62, double* %75, i64 %76, double* nonnull dereferenceable(8) %3)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

; <label>:77                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2
  %78 = icmp ult i64 %63, %71
  br i1 %78, label %79, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

; <label>:79                                      ; preds = %77
  %80 = getelementptr inbounds double, double* %73, i64 %63
  store double* %80, double** %65, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

_ZNSt6vectorIdSaIdEE6resizeEmd.exit3:             ; preds = %79, %77, %74
  call void @llvm.lifetime.end(i64 8, i8* %64)
  %81 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33
  %82 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82)
  store double 0.000000e+00, double* %2, align 8, !tbaa !1
  %83 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33, i32 0, i32 0, i32 1
  %84 = bitcast double** %83 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !42
  %86 = bitcast %"class.std::vector"* %81 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !9
  %88 = sub i64 %85, %87
  %89 = ashr exact i64 %88, 3
  %90 = icmp ugt i64 %63, %89
  %91 = inttoptr i64 %87 to double*
  br i1 %90, label %92, label %95

; <label>:92                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3
  %93 = inttoptr i64 %85 to double*
  %94 = sub nsw i64 %63, %89
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %81, double* %93, i64 %94, double* nonnull dereferenceable(8) %2)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

; <label>:95                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3
  %96 = icmp ult i64 %63, %89
  br i1 %96, label %97, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

; <label>:97                                      ; preds = %95
  %98 = getelementptr inbounds double, double* %91, i64 %63
  store double* %98, double** %83, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

_ZNSt6vectorIdSaIdEE6resizeEmd.exit4:             ; preds = %97, %95, %92
  call void @llvm.lifetime.end(i64 8, i8* %82)
  %99 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34
  %100 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100)
  store double 0.000000e+00, double* %1, align 8, !tbaa !1
  %101 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34, i32 0, i32 0, i32 1
  %102 = bitcast double** %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !42
  %104 = bitcast %"class.std::vector"* %99 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !9
  %106 = sub i64 %103, %105
  %107 = ashr exact i64 %106, 3
  %108 = icmp ugt i64 %63, %107
  %109 = inttoptr i64 %105 to double*
  br i1 %108, label %110, label %113

; <label>:110                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4
  %111 = inttoptr i64 %103 to double*
  %112 = sub nsw i64 %63, %107
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %99, double* %111, i64 %112, double* nonnull dereferenceable(8) %1)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

; <label>:113                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4
  %114 = icmp ult i64 %63, %107
  br i1 %114, label %115, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

; <label>:115                                     ; preds = %113
  %116 = getelementptr inbounds double, double* %109, i64 %63
  store double* %116, double** %101, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

_ZNSt6vectorIdSaIdEE6resizeEmd.exit5:             ; preds = %115, %113, %110
  call void @llvm.lifetime.end(i64 8, i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind readnone
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nounwind uwtable
define void @_Z11DumpToVisitR6Domainiii(%class.Domain* nocapture readnone dereferenceable(1456) %domain, i32 %numFiles, i32 %myRank, i32 %numRanks) #4 {
  %1 = icmp eq i32 %myRank, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @str.3, i64 0, i64 0))
  br label %3

; <label>:3                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Z8StrToIntPKcPi(i8* %token, i32* nocapture %retVal) #4 {
  %endptr = alloca i8*, align 8
  %1 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = icmp eq i8* %token, null
  br i1 %2, label %11, label %3

; <label>:3                                       ; preds = %0
  %4 = call i64 @strtol(i8* nonnull %token, i8** nonnull %endptr, i32 10) #2
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %retVal, align 4, !tbaa !12
  %6 = load i8*, i8** %endptr, align 8, !tbaa !49
  %7 = icmp eq i8* %6, %token
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = load i8, i8* %6, align 1, !tbaa !80
  switch i8 %9, label %10 [
    i8 32, label %11
    i8 0, label %11
  ]

; <label>:10                                      ; preds = %8, %3
  br label %11

; <label>:11                                      ; preds = %10, %8, %8, %0
  %.0 = phi i32 [ 0, %10 ], [ 0, %0 ], [ 1, %8 ], [ 1, %8 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #6

; Function Attrs: nounwind uwtable
define void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** nocapture readonly %argv, i32 %myRank, %struct.cmdLineOpts* nocapture %opts) #4 {
  %endptr.i33 = alloca i8*, align 8
  %endptr.i26 = alloca i8*, align 8
  %endptr.i19 = alloca i8*, align 8
  %endptr.i12 = alloca i8*, align 8
  %endptr.i5 = alloca i8*, align 8
  %endptr.i = alloca i8*, align 8
  %msg = alloca [80 x i8], align 16
  %1 = icmp sgt i32 %argc, 1
  br i1 %1, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32 %myRank, 0
  %3 = bitcast i8** %endptr.i to i8*
  %4 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 0
  %5 = bitcast i8** %endptr.i5 to i8*
  %6 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 1
  %7 = bitcast i8** %endptr.i12 to i8*
  %8 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 2
  %9 = bitcast i8** %endptr.i19 to i8*
  %10 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 3
  %11 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 4
  %12 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 5
  %13 = bitcast i8** %endptr.i26 to i8*
  %14 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 8
  %15 = bitcast i8** %endptr.i33 to i8*
  %16 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 7
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  br label %18

; <label>:18                                      ; preds = %.backedge, %.lr.ph
  %i.047 = phi i32 [ 1, %.lr.ph ], [ %i.0.be, %.backedge ]
  %19 = sext i32 %i.047 to i64
  %20 = getelementptr inbounds i8*, i8** %argv, i64 %19
  %21 = load i8*, i8** %20, align 8, !tbaa !49
  %22 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

; <label>:24                                      ; preds = %18
  %25 = add nsw i32 %i.047, 1
  %26 = icmp sge i32 %25, %argc
  %or.cond = and i1 %2, %26
  br i1 %or.cond, label %27, label %_ZL10ParseErrorPKci.exit

; <label>:27                                      ; preds = %24
  %puts.i = tail call i32 @puts(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.7, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit:                         ; preds = %24
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds i8*, i8** %argv, i64 %28
  %30 = load i8*, i8** %29, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %31 = icmp eq i8* %30, null
  br i1 %31, label %39, label %32

; <label>:32                                      ; preds = %_ZL10ParseErrorPKci.exit
  %33 = call i64 @strtol(i8* nonnull %30, i8** nonnull %endptr.i, i32 10) #2
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4, !tbaa !12
  %35 = load i8*, i8** %endptr.i, align 8, !tbaa !49
  %36 = icmp eq i8* %35, %30
  br i1 %36, label %39, label %37

; <label>:37                                      ; preds = %32
  %38 = load i8, i8* %35, align 1, !tbaa !80
  switch i8 %38, label %39 [
    i8 32, label %_Z8StrToIntPKcPi.exit
    i8 0, label %_Z8StrToIntPKcPi.exit
  ]

_Z8StrToIntPKcPi.exit:                            ; preds = %37, %37
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #2
  br label %_ZL10ParseErrorPKci.exit2

; <label>:39                                      ; preds = %37, %32, %_ZL10ParseErrorPKci.exit
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  br i1 %2, label %40, label %_ZL10ParseErrorPKci.exit2

; <label>:40                                      ; preds = %39
  %puts.i1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.8, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit2:                        ; preds = %39, %_Z8StrToIntPKcPi.exit
  %41 = add nsw i32 %i.047, 2
  br label %.backedge

; <label>:42                                      ; preds = %18
  %43 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

; <label>:45                                      ; preds = %42
  %46 = add nsw i32 %i.047, 1
  %47 = icmp sge i32 %46, %argc
  %or.cond42 = and i1 %2, %47
  br i1 %or.cond42, label %48, label %_ZL10ParseErrorPKci.exit4

; <label>:48                                      ; preds = %45
  %puts.i3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit4:                        ; preds = %45
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i8*, i8** %argv, i64 %49
  %51 = load i8*, i8** %50, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %52 = icmp eq i8* %51, null
  br i1 %52, label %60, label %53

; <label>:53                                      ; preds = %_ZL10ParseErrorPKci.exit4
  %54 = call i64 @strtol(i8* nonnull %51, i8** nonnull %endptr.i5, i32 10) #2
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4, !tbaa !12
  %56 = load i8*, i8** %endptr.i5, align 8, !tbaa !49
  %57 = icmp eq i8* %56, %51
  br i1 %57, label %60, label %58

; <label>:58                                      ; preds = %53
  %59 = load i8, i8* %56, align 1, !tbaa !80
  switch i8 %59, label %60 [
    i8 32, label %_Z8StrToIntPKcPi.exit7
    i8 0, label %_Z8StrToIntPKcPi.exit7
  ]

_Z8StrToIntPKcPi.exit7:                           ; preds = %58, %58
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #2
  br label %_ZL10ParseErrorPKci.exit9

; <label>:60                                      ; preds = %58, %53, %_ZL10ParseErrorPKci.exit4
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  br i1 %2, label %61, label %_ZL10ParseErrorPKci.exit9

; <label>:61                                      ; preds = %60
  %puts.i8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit9:                        ; preds = %60, %_Z8StrToIntPKcPi.exit7
  %62 = add nsw i32 %i.047, 2
  br label %.backedge

.backedge:                                        ; preds = %_ZL10ParseErrorPKci.exit41, %_ZL10ParseErrorPKci.exit39, %_ZL10ParseErrorPKci.exit37, %_ZL10ParseErrorPKci.exit30, %114, %109, %_ZL10ParseErrorPKci.exit23, %_ZL10ParseErrorPKci.exit16, %_ZL10ParseErrorPKci.exit9, %_ZL10ParseErrorPKci.exit2
  %i.0.be = phi i32 [ %41, %_ZL10ParseErrorPKci.exit2 ], [ %62, %_ZL10ParseErrorPKci.exit9 ], [ %84, %_ZL10ParseErrorPKci.exit16 ], [ %105, %_ZL10ParseErrorPKci.exit23 ], [ %110, %109 ], [ %115, %114 ], [ %136, %_ZL10ParseErrorPKci.exit30 ], [ %157, %_ZL10ParseErrorPKci.exit37 ], [ %163, %_ZL10ParseErrorPKci.exit39 ], [ %i.047, %_ZL10ParseErrorPKci.exit41 ]
  %63 = icmp slt i32 %i.0.be, %argc
  br i1 %63, label %18, label %.loopexit.loopexit

; <label>:64                                      ; preds = %42
  %65 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.9, i64 0, i64 0)) #23
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

; <label>:67                                      ; preds = %64
  %68 = add nsw i32 %i.047, 1
  %69 = icmp sge i32 %68, %argc
  %or.cond43 = and i1 %2, %69
  br i1 %or.cond43, label %70, label %_ZL10ParseErrorPKci.exit11

; <label>:70                                      ; preds = %67
  %puts.i10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit11:                       ; preds = %67
  %71 = sext i32 %68 to i64
  %72 = getelementptr inbounds i8*, i8** %argv, i64 %71
  %73 = load i8*, i8** %72, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %74 = icmp eq i8* %73, null
  br i1 %74, label %82, label %75

; <label>:75                                      ; preds = %_ZL10ParseErrorPKci.exit11
  %76 = call i64 @strtol(i8* nonnull %73, i8** nonnull %endptr.i12, i32 10) #2
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4, !tbaa !12
  %78 = load i8*, i8** %endptr.i12, align 8, !tbaa !49
  %79 = icmp eq i8* %78, %73
  br i1 %79, label %82, label %80

; <label>:80                                      ; preds = %75
  %81 = load i8, i8* %78, align 1, !tbaa !80
  switch i8 %81, label %82 [
    i8 32, label %_Z8StrToIntPKcPi.exit14
    i8 0, label %_Z8StrToIntPKcPi.exit14
  ]

_Z8StrToIntPKcPi.exit14:                          ; preds = %80, %80
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #2
  br label %_ZL10ParseErrorPKci.exit16

; <label>:82                                      ; preds = %80, %75, %_ZL10ParseErrorPKci.exit11
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  br i1 %2, label %83, label %_ZL10ParseErrorPKci.exit16

; <label>:83                                      ; preds = %82
  %puts.i15 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit16:                       ; preds = %82, %_Z8StrToIntPKcPi.exit14
  %84 = add nsw i32 %i.047, 2
  br label %.backedge

; <label>:85                                      ; preds = %64
  %86 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %106

; <label>:88                                      ; preds = %85
  %89 = add nsw i32 %i.047, 1
  %90 = icmp sge i32 %89, %argc
  %or.cond44 = and i1 %2, %90
  br i1 %or.cond44, label %91, label %_ZL10ParseErrorPKci.exit18

; <label>:91                                      ; preds = %88
  %puts.i17 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.10, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit18:                       ; preds = %88
  %92 = sext i32 %89 to i64
  %93 = getelementptr inbounds i8*, i8** %argv, i64 %92
  %94 = load i8*, i8** %93, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %95 = icmp eq i8* %94, null
  br i1 %95, label %103, label %96

; <label>:96                                      ; preds = %_ZL10ParseErrorPKci.exit18
  %97 = call i64 @strtol(i8* nonnull %94, i8** nonnull %endptr.i19, i32 10) #2
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4, !tbaa !12
  %99 = load i8*, i8** %endptr.i19, align 8, !tbaa !49
  %100 = icmp eq i8* %99, %94
  br i1 %100, label %103, label %101

; <label>:101                                     ; preds = %96
  %102 = load i8, i8* %99, align 1, !tbaa !80
  switch i8 %102, label %103 [
    i8 32, label %_Z8StrToIntPKcPi.exit21
    i8 0, label %_Z8StrToIntPKcPi.exit21
  ]

_Z8StrToIntPKcPi.exit21:                          ; preds = %101, %101
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #2
  br label %_ZL10ParseErrorPKci.exit23

; <label>:103                                     ; preds = %101, %96, %_ZL10ParseErrorPKci.exit18
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  br i1 %2, label %104, label %_ZL10ParseErrorPKci.exit23

; <label>:104                                     ; preds = %103
  %puts.i22 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11.11, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit23:                       ; preds = %103, %_Z8StrToIntPKcPi.exit21
  %105 = add nsw i32 %i.047, 2
  br label %.backedge

; <label>:106                                     ; preds = %85
  %107 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.12, i64 0, i64 0)) #23
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

; <label>:109                                     ; preds = %106
  store i32 1, i32* %11, align 4, !tbaa !81
  %110 = add nsw i32 %i.047, 1
  br label %.backedge

; <label>:111                                     ; preds = %106
  %112 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.13, i64 0, i64 0)) #23
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

; <label>:114                                     ; preds = %111
  store i32 1, i32* %12, align 4, !tbaa !16
  %115 = add nsw i32 %i.047, 1
  br label %.backedge

; <label>:116                                     ; preds = %111
  %117 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #23
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %137

; <label>:119                                     ; preds = %116
  %120 = add nsw i32 %i.047, 1
  %121 = icmp sge i32 %120, %argc
  %or.cond45 = and i1 %2, %121
  br i1 %or.cond45, label %122, label %_ZL10ParseErrorPKci.exit25

; <label>:122                                     ; preds = %119
  %puts.i24 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit25:                       ; preds = %119
  %123 = sext i32 %120 to i64
  %124 = getelementptr inbounds i8*, i8** %argv, i64 %123
  %125 = load i8*, i8** %124, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %126 = icmp eq i8* %125, null
  br i1 %126, label %134, label %127

; <label>:127                                     ; preds = %_ZL10ParseErrorPKci.exit25
  %128 = call i64 @strtol(i8* nonnull %125, i8** nonnull %endptr.i26, i32 10) #2
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %14, align 4, !tbaa !12
  %130 = load i8*, i8** %endptr.i26, align 8, !tbaa !49
  %131 = icmp eq i8* %130, %125
  br i1 %131, label %134, label %132

; <label>:132                                     ; preds = %127
  %133 = load i8, i8* %130, align 1, !tbaa !80
  switch i8 %133, label %134 [
    i8 32, label %_Z8StrToIntPKcPi.exit28
    i8 0, label %_Z8StrToIntPKcPi.exit28
  ]

_Z8StrToIntPKcPi.exit28:                          ; preds = %132, %132
  call void @llvm.lifetime.end(i64 8, i8* nonnull %13) #2
  br label %_ZL10ParseErrorPKci.exit30

; <label>:134                                     ; preds = %132, %127, %_ZL10ParseErrorPKci.exit25
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  br i1 %2, label %135, label %_ZL10ParseErrorPKci.exit30

; <label>:135                                     ; preds = %134
  %puts.i29 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit30:                       ; preds = %134, %_Z8StrToIntPKcPi.exit28
  %136 = add nsw i32 %i.047, 2
  br label %.backedge

; <label>:137                                     ; preds = %116
  %138 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #23
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %158

; <label>:140                                     ; preds = %137
  %141 = add nsw i32 %i.047, 1
  %142 = icmp sge i32 %141, %argc
  %or.cond46 = and i1 %2, %142
  br i1 %or.cond46, label %143, label %_ZL10ParseErrorPKci.exit32

; <label>:143                                     ; preds = %140
  %puts.i31 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit32:                       ; preds = %140
  %144 = sext i32 %141 to i64
  %145 = getelementptr inbounds i8*, i8** %argv, i64 %144
  %146 = load i8*, i8** %145, align 8, !tbaa !49
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %147 = icmp eq i8* %146, null
  br i1 %147, label %155, label %148

; <label>:148                                     ; preds = %_ZL10ParseErrorPKci.exit32
  %149 = call i64 @strtol(i8* nonnull %146, i8** nonnull %endptr.i33, i32 10) #2
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %16, align 4, !tbaa !12
  %151 = load i8*, i8** %endptr.i33, align 8, !tbaa !49
  %152 = icmp eq i8* %151, %146
  br i1 %152, label %155, label %153

; <label>:153                                     ; preds = %148
  %154 = load i8, i8* %151, align 1, !tbaa !80
  switch i8 %154, label %155 [
    i8 32, label %_Z8StrToIntPKcPi.exit35
    i8 0, label %_Z8StrToIntPKcPi.exit35
  ]

_Z8StrToIntPKcPi.exit35:                          ; preds = %153, %153
  call void @llvm.lifetime.end(i64 8, i8* nonnull %15) #2
  br label %_ZL10ParseErrorPKci.exit37

; <label>:155                                     ; preds = %153, %148, %_ZL10ParseErrorPKci.exit32
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  br i1 %2, label %156, label %_ZL10ParseErrorPKci.exit37

; <label>:156                                     ; preds = %155
  %puts.i36 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit37:                       ; preds = %155, %_Z8StrToIntPKcPi.exit35
  %157 = add nsw i32 %i.047, 2
  br label %.backedge

; <label>:158                                     ; preds = %137
  %159 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

; <label>:161                                     ; preds = %158
  br i1 %2, label %162, label %_ZL10ParseErrorPKci.exit39

; <label>:162                                     ; preds = %161
  %puts.i38 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit39:                       ; preds = %161
  %163 = add nsw i32 %i.047, 1
  br label %.backedge

; <label>:164                                     ; preds = %158
  %165 = tail call i32 @strcmp(i8* %21, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #23
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

; <label>:167                                     ; preds = %164
  %168 = load i8*, i8** %argv, align 8, !tbaa !49
  tail call fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %168, i32 %myRank)
  tail call void @exit(i32 0) #20
  unreachable

; <label>:169                                     ; preds = %164
  call void @llvm.lifetime.start(i64 80, i8* %17) #2
  %170 = load i8*, i8** %argv, align 8, !tbaa !49
  tail call fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %170, i32 %myRank)
  %171 = load i8*, i8** %20, align 8, !tbaa !49
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* %171) #2
  br i1 %2, label %173, label %_ZL10ParseErrorPKci.exit41

; <label>:173                                     ; preds = %169
  %puts.i40 = call i32 @puts(i8* %17) #2
  tail call void @exit(i32 -1) #20
  unreachable

_ZL10ParseErrorPKci.exit41:                       ; preds = %169
  call void @llvm.lifetime.end(i64 80, i8* %17) #2
  br label %.backedge

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %execname, i32 %myRank) unnamed_addr #4 {
  %1 = icmp eq i32 %myRank, 0
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %execname)
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @str.20, i64 0, i64 0))
  %puts1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @str.50, i64 0, i64 0))
  %puts2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @str.51, i64 0, i64 0))
  %puts3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @str.52, i64 0, i64 0))
  %puts4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @str.53, i64 0, i64 0))
  %puts5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @str.54, i64 0, i64 0))
  %puts6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @str.55, i64 0, i64 0))
  %puts7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @str.56, i64 0, i64 0))
  %puts8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @str.57, i64 0, i64 0))
  %puts9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @str.58, i64 0, i64 0))
  %puts10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @str.59, i64 0, i64 0))
  %puts11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @str.60, i64 0, i64 0))
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind uwtable
define void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %elapsed_time, %class.Domain* nocapture readonly dereferenceable(1456) %locDom, i32 %nx, i32 %numRanks) #4 {
  %1 = fmul double %elapsed_time, 1.000000e+06
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %locDom, i64 0, i32 72
  %3 = load i32, i32* %2, align 4, !tbaa !12
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %1, %4
  %6 = mul nsw i32 %nx, %nx
  %7 = mul nsw i32 %6, %nx
  %8 = sitofp i32 %7 to double
  %9 = fdiv double %5, %8
  %10 = mul nsw i32 %7, %numRanks
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %5, %11
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.61, i64 0, i64 0))
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 %nx)
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %numRanks)
  %15 = load i32, i32* %2, align 4, !tbaa !12
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds %class.Domain, %class.Domain* %locDom, i64 0, i32 38, i32 0, i32 0, i32 0
  %18 = load double*, double** %17, align 8, !tbaa !9
  %19 = load double, double* %18, align 8, !tbaa !1
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), double %19)
  %21 = icmp sgt i32 %nx, 0
  br i1 %21, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %0
  %22 = load double*, double** %17, align 8
  br label %30

.loopexit.loopexit:                               ; preds = %34
  br label %.loopexit

.loopexit:                                        ; preds = %30, %.loopexit.loopexit
  %MaxAbsDiff.1.lcssa = phi double [ %MaxAbsDiff.011, %30 ], [ %MaxAbsDiff.2, %.loopexit.loopexit ]
  %TotalAbsDiff.1.lcssa = phi double [ %TotalAbsDiff.010, %30 ], [ %46, %.loopexit.loopexit ]
  %MaxRelDiff.1.lcssa = phi double [ %MaxRelDiff.08, %30 ], [ %MaxRelDiff.2, %.loopexit.loopexit ]
  %exitcond18 = icmp eq i32 %31, %nx
  br i1 %exitcond18, label %._crit_edge.loopexit, label %30

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %MaxAbsDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %MaxAbsDiff.1.lcssa, %._crit_edge.loopexit ]
  %TotalAbsDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %TotalAbsDiff.1.lcssa, %._crit_edge.loopexit ]
  %MaxRelDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %MaxRelDiff.1.lcssa, %._crit_edge.loopexit ]
  %puts1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @str.62, i64 0, i64 0))
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), double %MaxAbsDiff.0.lcssa)
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), double %TotalAbsDiff.0.lcssa)
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), double %MaxRelDiff.0.lcssa)
  %26 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), double %elapsed_time)
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i64 0, i64 0), double %9, double %12)
  %28 = fdiv double 1.000000e+03, %12
  %29 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), double %28)
  ret void

; <label>:30                                      ; preds = %.loopexit, %.lr.ph12
  %MaxAbsDiff.011 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %MaxAbsDiff.1.lcssa, %.loopexit ]
  %TotalAbsDiff.010 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %TotalAbsDiff.1.lcssa, %.loopexit ]
  %j.09 = phi i32 [ 0, %.lr.ph12 ], [ %31, %.loopexit ]
  %MaxRelDiff.08 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %MaxRelDiff.1.lcssa, %.loopexit ]
  %31 = add nuw nsw i32 %j.09, 1
  %32 = icmp slt i32 %31, %nx
  br i1 %32, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %33 = mul nsw i32 %j.09, %nx
  br label %34

; <label>:34                                      ; preds = %34, %.lr.ph
  %MaxAbsDiff.15 = phi double [ %MaxAbsDiff.011, %.lr.ph ], [ %MaxAbsDiff.2, %34 ]
  %TotalAbsDiff.14 = phi double [ %TotalAbsDiff.010, %.lr.ph ], [ %46, %34 ]
  %k.03 = phi i32 [ %31, %.lr.ph ], [ %50, %34 ]
  %MaxRelDiff.12 = phi double [ %MaxRelDiff.08, %.lr.ph ], [ %MaxRelDiff.2, %34 ]
  %35 = add nsw i32 %k.03, %33
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %22, i64 %36
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = mul nsw i32 %k.03, %nx
  %40 = add nsw i32 %39, %j.09
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %22, i64 %41
  %43 = load double, double* %42, align 8, !tbaa !1
  %44 = fsub double %38, %43
  %45 = tail call double @fabs(double %44) #15
  %46 = fadd double %TotalAbsDiff.14, %45
  %47 = fcmp olt double %MaxAbsDiff.15, %45
  %MaxAbsDiff.2 = select i1 %47, double %45, double %MaxAbsDiff.15
  %48 = fdiv double %45, %43
  %49 = fcmp olt double %MaxRelDiff.12, %48
  %MaxRelDiff.2 = select i1 %49, double %48, double %MaxRelDiff.12
  %50 = add nuw nsw i32 %k.03, 1
  %exitcond = icmp eq i32 %50, %nx
  br i1 %exitcond, label %.loopexit.loopexit, label %34
}

; Function Attrs: uwtable
define void @_ZN6DomainC2Eiiiiiiiii(%class.Domain* %this, i32 %numRanks, i32 %colLoc, i32 %rowLoc, i32 %planeLoc, i32 %nx, i32 %tp, i32 %nr, i32 %balance, i32 %cost) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 51
  %3 = bitcast %class.Domain* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 384, i32 8, i1 false)
  %4 = bitcast %"class.std::vector.0"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 720, i32 8, i1 false)
  %5 = bitcast double* %2 to <2 x double>*
  store <2 x double> <double 1.000000e-07, double 1.000000e-07>, <2 x double>* %5, align 8, !tbaa !1
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 53
  %7 = bitcast double* %6 to <2 x double>*
  store <2 x double> <double 1.000000e-07, double 1.000000e-10>, <2 x double>* %7, align 8, !tbaa !1
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 55
  %9 = bitcast double* %8 to <2 x double>*
  store <2 x double> <double 1.000000e-07, double 3.000000e+00>, <2 x double>* %9, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 57
  %11 = bitcast double* %10 to <2 x double>*
  store <2 x double> <double 0x3FF5555555555555, double 1.000000e+12>, <2 x double>* %11, align 8, !tbaa !1
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 59
  %13 = bitcast double* %12 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, <2 x double>* %13, align 8, !tbaa !1
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 61
  %15 = bitcast double* %14 to <2 x double>*
  store <2 x double> <double 5.000000e-01, double 0x3FE5555555555555>, <2 x double>* %15, align 8, !tbaa !1
  %16 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 63
  %17 = bitcast double* %16 to <2 x double>*
  store <2 x double> <double 2.000000e+00, double 1.000000e+09>, <2 x double>* %17, align 8, !tbaa !1
  %18 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 65
  %19 = bitcast double* %18 to <2 x double>*
  store <2 x double> <double 1.000000e-09, double 0.000000e+00>, <2 x double>* %19, align 8, !tbaa !1
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 67
  %21 = bitcast double* %20 to <2 x double>*
  store <2 x double> <double -1.000000e+15, double 1.000000e-01>, <2 x double>* %21, align 8, !tbaa !1
  %22 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 69
  store double 1.000000e+00, double* %22, align 8, !tbaa !59
  %23 = add nsw i32 %nx, 1
  %24 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 17
  store i32 %cost, i32* %24, align 4, !tbaa !12
  %25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  store i32 %tp, i32* %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 80
  store i32 %numRanks, i32* %26, align 8, !tbaa !83
  %27 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  store i32 %colLoc, i32* %27, align 4, !tbaa !84
  %28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  store i32 %rowLoc, i32* %28, align 8, !tbaa !85
  %29 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  store i32 %planeLoc, i32* %29, align 4, !tbaa !86
  %30 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  store i32 %nx, i32* %30, align 4, !tbaa !87
  %31 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  store i32 %nx, i32* %31, align 8, !tbaa !88
  %32 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  store i32 %nx, i32* %32, align 4, !tbaa !89
  %33 = mul nsw i32 %nx, %nx
  %34 = mul nsw i32 %33, %nx
  %35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  store i32 %34, i32* %35, align 8, !tbaa !90
  %36 = mul nsw i32 %23, %23
  %37 = mul nsw i32 %36, %23
  %38 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 89
  store i32 %37, i32* %38, align 4, !tbaa !91
  %39 = sext i32 %34 to i64
  %40 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 4)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %44 = invoke noalias i8* @_Znam(i64 %43) #18
          to label %45 unwind label %.loopexit.split-lp

; <label>:45                                      ; preds = %0
  %46 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %47 = bitcast i32** %46 to i8**
  store i8* %44, i8** %47, align 8, !tbaa !92
  invoke void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* nonnull %this, i32 %34)
          to label %48 unwind label %.loopexit.split-lp

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* %38, align 4, !tbaa !12
  invoke void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* nonnull %this, i32 %49)
          to label %50 unwind label %.loopexit.split-lp

; <label>:50                                      ; preds = %48
  invoke void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* nonnull %this, i32 %23)
          to label %.preheader102 unwind label %.loopexit.split-lp

.preheader102:                                    ; preds = %50
  %51 = load i32, i32* %35, align 4, !tbaa !12
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %.lr.ph116, label %.preheader100

.lr.ph116:                                        ; preds = %.preheader102
  %53 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38, i32 0, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39, i32 0, i32 0, i32 0
  %56 = load double*, double** %55, align 8
  %57 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40, i32 0, i32 0, i32 0
  %58 = load double*, double** %57, align 8
  %59 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49, i32 0, i32 0, i32 0
  %60 = load double*, double** %59, align 8
  %61 = sext i32 %51 to i64
  %min.iters.check = icmp ult i32 %51, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph116
  %indvars.iv130.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %.lr.ph116 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph116
  %n.vec = and i64 %61, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %62 = add nsw i64 %61, -1
  %scevgep = getelementptr double, double* %54, i64 %62
  %scevgep135 = getelementptr double, double* %56, i64 %62
  %scevgep137 = getelementptr double, double* %58, i64 %62
  %scevgep139 = getelementptr double, double* %60, i64 %62
  %bound0 = icmp ule double* %54, %scevgep135
  %bound1 = icmp ule double* %56, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0141 = icmp ule double* %54, %scevgep137
  %bound1142 = icmp ule double* %58, %scevgep
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx = or i1 %found.conflict, %found.conflict143
  %bound0144 = icmp ule double* %54, %scevgep139
  %bound1145 = icmp ule double* %60, %scevgep
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx, %found.conflict146
  %bound0148 = icmp ule double* %56, %scevgep137
  %bound1149 = icmp ule double* %58, %scevgep135
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  %bound0152 = icmp ule double* %56, %scevgep139
  %bound1153 = icmp ule double* %60, %scevgep135
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  %bound0156 = icmp ule double* %58, %scevgep139
  %bound1157 = icmp ule double* %60, %scevgep137
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  br i1 %conflict.rdx159, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %63 = add nsw i64 %61, -4
  %64 = lshr i64 %63, 2
  %65 = and i64 %64, 1
  %lcmp.mod265 = icmp eq i64 %65, 0
  br i1 %lcmp.mod265, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %66 = bitcast double* %54 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %66, align 8, !tbaa !1
  %67 = getelementptr double, double* %54, i64 2
  %68 = bitcast double* %67 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %68, align 8, !tbaa !1
  %69 = bitcast double* %56 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %69, align 8, !tbaa !1
  %70 = getelementptr double, double* %56, i64 2
  %71 = bitcast double* %70 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %71, align 8, !tbaa !1
  %72 = bitcast double* %58 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %72, align 8, !tbaa !1
  %73 = getelementptr double, double* %58, i64 2
  %74 = bitcast double* %73 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %74, align 8, !tbaa !1
  %75 = bitcast double* %60 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %75, align 8, !tbaa !1
  %76 = getelementptr double, double* %60, i64 2
  %77 = bitcast double* %76 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %77, align 8, !tbaa !1
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %78 = icmp eq i64 %64, 0
  br i1 %78, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %79 = getelementptr inbounds double, double* %54, i64 %index
  %80 = bitcast double* %79 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %80, align 8, !tbaa !1
  %81 = getelementptr double, double* %79, i64 2
  %82 = bitcast double* %81 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %82, align 8, !tbaa !1
  %83 = getelementptr inbounds double, double* %56, i64 %index
  %84 = bitcast double* %83 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %84, align 8, !tbaa !1
  %85 = getelementptr double, double* %83, i64 2
  %86 = bitcast double* %85 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %86, align 8, !tbaa !1
  %87 = getelementptr inbounds double, double* %58, i64 %index
  %88 = bitcast double* %87 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %88, align 8, !tbaa !1
  %89 = getelementptr double, double* %87, i64 2
  %90 = bitcast double* %89 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %90, align 8, !tbaa !1
  %91 = getelementptr inbounds double, double* %60, i64 %index
  %92 = bitcast double* %91 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %92, align 8, !tbaa !1
  %93 = getelementptr double, double* %91, i64 2
  %94 = bitcast double* %93 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %94, align 8, !tbaa !1
  %index.next = add i64 %index, 4
  %95 = getelementptr inbounds double, double* %54, i64 %index.next
  %96 = bitcast double* %95 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %96, align 8, !tbaa !1
  %97 = getelementptr double, double* %95, i64 2
  %98 = bitcast double* %97 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %98, align 8, !tbaa !1
  %99 = getelementptr inbounds double, double* %56, i64 %index.next
  %100 = bitcast double* %99 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %100, align 8, !tbaa !1
  %101 = getelementptr double, double* %99, i64 2
  %102 = bitcast double* %101 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %102, align 8, !tbaa !1
  %103 = getelementptr inbounds double, double* %58, i64 %index.next
  %104 = bitcast double* %103 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %104, align 8, !tbaa !1
  %105 = getelementptr double, double* %103, i64 2
  %106 = bitcast double* %105 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %106, align 8, !tbaa !1
  %107 = getelementptr inbounds double, double* %60, i64 %index.next
  %108 = bitcast double* %107 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %108, align 8, !tbaa !1
  %109 = getelementptr double, double* %107, i64 2
  %110 = bitcast double* %109 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %110, align 8, !tbaa !1
  %index.next.1 = add i64 %index, 8
  %111 = icmp eq i64 %index.next.1, %n.vec
  br i1 %111, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !93

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %cmp.n = icmp eq i64 %61, %n.vec
  br i1 %cmp.n, label %.preheader101, label %scalar.ph.preheader

.preheader101.loopexit:                           ; preds = %scalar.ph
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.loopexit, %middle.block
  %.pre = load i32, i32* %35, align 4, !tbaa !12
  %112 = icmp sgt i32 %.pre, 0
  br i1 %112, label %.lr.ph114, label %.preheader100

.lr.ph114:                                        ; preds = %.preheader101
  %113 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43, i32 0, i32 0, i32 0
  %114 = load double*, double** %113, align 8
  %115 = sext i32 %.pre to i64
  %min.iters.check166 = icmp ult i32 %.pre, 4
  br i1 %min.iters.check166, label %scalar.ph165.preheader, label %min.iters.checked167

scalar.ph165.preheader:                           ; preds = %middle.block164, %min.iters.checked167, %.lr.ph114
  %indvars.iv128.ph = phi i64 [ 0, %min.iters.checked167 ], [ 0, %.lr.ph114 ], [ %n.vec169, %middle.block164 ]
  br label %scalar.ph165

min.iters.checked167:                             ; preds = %.lr.ph114
  %n.vec169 = and i64 %115, -4
  %cmp.zero170 = icmp eq i64 %n.vec169, 0
  br i1 %cmp.zero170, label %scalar.ph165.preheader, label %vector.body163.preheader

vector.body163.preheader:                         ; preds = %min.iters.checked167
  %116 = add nsw i64 %115, -4
  %117 = lshr i64 %116, 2
  %118 = add nuw nsw i64 %117, 1
  %xtraiter262 = and i64 %118, 7
  %lcmp.mod263 = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263, label %vector.body163.preheader.split, label %vector.body163.prol.preheader

vector.body163.prol.preheader:                    ; preds = %vector.body163.preheader
  br label %vector.body163.prol

vector.body163.prol:                              ; preds = %vector.body163.prol, %vector.body163.prol.preheader
  %index172.prol = phi i64 [ %index.next173.prol, %vector.body163.prol ], [ 0, %vector.body163.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body163.prol ], [ %xtraiter262, %vector.body163.prol.preheader ]
  %119 = getelementptr inbounds double, double* %114, i64 %index172.prol
  %120 = bitcast double* %119 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %120, align 8, !tbaa !1
  %121 = getelementptr double, double* %119, i64 2
  %122 = bitcast double* %121 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %122, align 8, !tbaa !1
  %index.next173.prol = add i64 %index172.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body163.preheader.split.loopexit, label %vector.body163.prol, !llvm.loop !94

vector.body163.preheader.split.loopexit:          ; preds = %vector.body163.prol
  br label %vector.body163.preheader.split

vector.body163.preheader.split:                   ; preds = %vector.body163.preheader.split.loopexit, %vector.body163.preheader
  %index172.unr = phi i64 [ 0, %vector.body163.preheader ], [ %index.next173.prol, %vector.body163.preheader.split.loopexit ]
  %123 = icmp ult i64 %116, 28
  br i1 %123, label %middle.block164, label %vector.body163.preheader.split.split

vector.body163.preheader.split.split:             ; preds = %vector.body163.preheader.split
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.body163.preheader.split.split
  %index172 = phi i64 [ %index172.unr, %vector.body163.preheader.split.split ], [ %index.next173.7, %vector.body163 ]
  %124 = getelementptr inbounds double, double* %114, i64 %index172
  %125 = bitcast double* %124 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %125, align 8, !tbaa !1
  %126 = getelementptr double, double* %124, i64 2
  %127 = bitcast double* %126 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %127, align 8, !tbaa !1
  %index.next173 = add i64 %index172, 4
  %128 = getelementptr inbounds double, double* %114, i64 %index.next173
  %129 = bitcast double* %128 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %129, align 8, !tbaa !1
  %130 = getelementptr double, double* %128, i64 2
  %131 = bitcast double* %130 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %131, align 8, !tbaa !1
  %index.next173.1 = add i64 %index172, 8
  %132 = getelementptr inbounds double, double* %114, i64 %index.next173.1
  %133 = bitcast double* %132 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %133, align 8, !tbaa !1
  %134 = getelementptr double, double* %132, i64 2
  %135 = bitcast double* %134 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %135, align 8, !tbaa !1
  %index.next173.2 = add i64 %index172, 12
  %136 = getelementptr inbounds double, double* %114, i64 %index.next173.2
  %137 = bitcast double* %136 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %137, align 8, !tbaa !1
  %138 = getelementptr double, double* %136, i64 2
  %139 = bitcast double* %138 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %139, align 8, !tbaa !1
  %index.next173.3 = add i64 %index172, 16
  %140 = getelementptr inbounds double, double* %114, i64 %index.next173.3
  %141 = bitcast double* %140 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %141, align 8, !tbaa !1
  %142 = getelementptr double, double* %140, i64 2
  %143 = bitcast double* %142 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %143, align 8, !tbaa !1
  %index.next173.4 = add i64 %index172, 20
  %144 = getelementptr inbounds double, double* %114, i64 %index.next173.4
  %145 = bitcast double* %144 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %145, align 8, !tbaa !1
  %146 = getelementptr double, double* %144, i64 2
  %147 = bitcast double* %146 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %147, align 8, !tbaa !1
  %index.next173.5 = add i64 %index172, 24
  %148 = getelementptr inbounds double, double* %114, i64 %index.next173.5
  %149 = bitcast double* %148 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %149, align 8, !tbaa !1
  %150 = getelementptr double, double* %148, i64 2
  %151 = bitcast double* %150 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %151, align 8, !tbaa !1
  %index.next173.6 = add i64 %index172, 28
  %152 = getelementptr inbounds double, double* %114, i64 %index.next173.6
  %153 = bitcast double* %152 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %153, align 8, !tbaa !1
  %154 = getelementptr double, double* %152, i64 2
  %155 = bitcast double* %154 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %155, align 8, !tbaa !1
  %index.next173.7 = add i64 %index172, 32
  %156 = icmp eq i64 %index.next173.7, %n.vec169
  br i1 %156, label %middle.block164.unr-lcssa, label %vector.body163, !llvm.loop !95

middle.block164.unr-lcssa:                        ; preds = %vector.body163
  br label %middle.block164

middle.block164:                                  ; preds = %middle.block164.unr-lcssa, %vector.body163.preheader.split
  %cmp.n175 = icmp eq i64 %115, %n.vec169
  br i1 %cmp.n175, label %.preheader100, label %scalar.ph165.preheader

.loopexit:                                        ; preds = %402
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %157

.loopexit.split-lp:                               ; preds = %._crit_edge108, %50, %48, %45, %0
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  %.pre1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50, i32 0, i32 0, i32 0
  br label %157

; <label>:157                                     ; preds = %.loopexit.split-lp, %.loopexit
  %.pre-phi = phi double** [ %.pre1, %.loopexit.split-lp ], [ %339, %.loopexit ]
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %158 = load double*, double** %.pre-phi, align 8, !tbaa !9
  %159 = icmp eq double* %158, null
  br i1 %159, label %_ZNSt6vectorIdSaIdEED2Ev.exit97, label %160

; <label>:160                                     ; preds = %157
  %161 = bitcast double* %158 to i8*
  call void @_ZdlPv(i8* %161) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit97

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph ], [ %indvars.iv130.ph, %scalar.ph.preheader ]
  %162 = getelementptr inbounds double, double* %54, i64 %indvars.iv130
  store double 0.000000e+00, double* %162, align 8, !tbaa !1
  %163 = getelementptr inbounds double, double* %56, i64 %indvars.iv130
  store double 0.000000e+00, double* %163, align 8, !tbaa !1
  %164 = getelementptr inbounds double, double* %58, i64 %indvars.iv130
  store double 0.000000e+00, double* %164, align 8, !tbaa !1
  %165 = getelementptr inbounds double, double* %60, i64 %indvars.iv130
  store double 0.000000e+00, double* %165, align 8, !tbaa !1
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %166 = icmp slt i64 %indvars.iv.next131, %61
  br i1 %166, label %scalar.ph, label %.preheader101.loopexit, !llvm.loop !96

.preheader100.loopexit:                           ; preds = %scalar.ph165
  br label %.preheader100

.preheader100:                                    ; preds = %.preheader100.loopexit, %middle.block164, %.preheader101, %.preheader102
  %167 = load i32, i32* %38, align 4, !tbaa !12
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %.lr.ph112, label %._crit_edge108

.lr.ph112:                                        ; preds = %.preheader100
  %169 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3, i32 0, i32 0, i32 0
  %170 = load double*, double** %169, align 8
  %171 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4, i32 0, i32 0, i32 0
  %172 = load double*, double** %171, align 8
  %173 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5, i32 0, i32 0, i32 0
  %174 = load double*, double** %173, align 8
  %175 = sext i32 %167 to i64
  %min.iters.check185 = icmp ult i32 %167, 4
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %min.iters.checked186

scalar.ph184.preheader:                           ; preds = %middle.block183, %vector.memcheck209, %min.iters.checked186, %.lr.ph112
  %indvars.iv126.ph = phi i64 [ 0, %vector.memcheck209 ], [ 0, %min.iters.checked186 ], [ 0, %.lr.ph112 ], [ %n.vec188, %middle.block183 ]
  br label %scalar.ph184

min.iters.checked186:                             ; preds = %.lr.ph112
  %n.vec188 = and i64 %175, -4
  %cmp.zero189 = icmp eq i64 %n.vec188, 0
  br i1 %cmp.zero189, label %scalar.ph184.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %min.iters.checked186
  %176 = add nsw i64 %175, -1
  %scevgep191 = getelementptr double, double* %170, i64 %176
  %scevgep193 = getelementptr double, double* %172, i64 %176
  %scevgep195 = getelementptr double, double* %174, i64 %176
  %bound0197 = icmp ule double* %170, %scevgep193
  %bound1198 = icmp ule double* %172, %scevgep191
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0200 = icmp ule double* %170, %scevgep195
  %bound1201 = icmp ule double* %174, %scevgep191
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %found.conflict199, %found.conflict202
  %bound0204 = icmp ule double* %172, %scevgep195
  %bound1205 = icmp ule double* %174, %scevgep193
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  br i1 %conflict.rdx207, label %scalar.ph184.preheader, label %vector.body182.preheader

vector.body182.preheader:                         ; preds = %vector.memcheck209
  %177 = add nsw i64 %175, -4
  %178 = lshr i64 %177, 2
  %179 = and i64 %178, 1
  %lcmp.mod261 = icmp eq i64 %179, 0
  br i1 %lcmp.mod261, label %vector.body182.prol, label %vector.body182.preheader.split

vector.body182.prol:                              ; preds = %vector.body182.preheader
  %180 = bitcast double* %170 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %180, align 8, !tbaa !1
  %181 = getelementptr double, double* %170, i64 2
  %182 = bitcast double* %181 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %182, align 8, !tbaa !1
  %183 = bitcast double* %172 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %183, align 8, !tbaa !1
  %184 = getelementptr double, double* %172, i64 2
  %185 = bitcast double* %184 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %185, align 8, !tbaa !1
  %186 = bitcast double* %174 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %186, align 8, !tbaa !1
  %187 = getelementptr double, double* %174, i64 2
  %188 = bitcast double* %187 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %188, align 8, !tbaa !1
  br label %vector.body182.preheader.split

vector.body182.preheader.split:                   ; preds = %vector.body182.prol, %vector.body182.preheader
  %index211.unr = phi i64 [ 0, %vector.body182.preheader ], [ 4, %vector.body182.prol ]
  %189 = icmp eq i64 %178, 0
  br i1 %189, label %middle.block183, label %vector.body182.preheader.split.split

vector.body182.preheader.split.split:             ; preds = %vector.body182.preheader.split
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.body182.preheader.split.split
  %index211 = phi i64 [ %index211.unr, %vector.body182.preheader.split.split ], [ %index.next212.1, %vector.body182 ]
  %190 = getelementptr inbounds double, double* %170, i64 %index211
  %191 = bitcast double* %190 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %191, align 8, !tbaa !1
  %192 = getelementptr double, double* %190, i64 2
  %193 = bitcast double* %192 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %193, align 8, !tbaa !1
  %194 = getelementptr inbounds double, double* %172, i64 %index211
  %195 = bitcast double* %194 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %195, align 8, !tbaa !1
  %196 = getelementptr double, double* %194, i64 2
  %197 = bitcast double* %196 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %197, align 8, !tbaa !1
  %198 = getelementptr inbounds double, double* %174, i64 %index211
  %199 = bitcast double* %198 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %199, align 8, !tbaa !1
  %200 = getelementptr double, double* %198, i64 2
  %201 = bitcast double* %200 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %201, align 8, !tbaa !1
  %index.next212 = add i64 %index211, 4
  %202 = getelementptr inbounds double, double* %170, i64 %index.next212
  %203 = bitcast double* %202 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %203, align 8, !tbaa !1
  %204 = getelementptr double, double* %202, i64 2
  %205 = bitcast double* %204 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %205, align 8, !tbaa !1
  %206 = getelementptr inbounds double, double* %172, i64 %index.next212
  %207 = bitcast double* %206 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %207, align 8, !tbaa !1
  %208 = getelementptr double, double* %206, i64 2
  %209 = bitcast double* %208 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %209, align 8, !tbaa !1
  %210 = getelementptr inbounds double, double* %174, i64 %index.next212
  %211 = bitcast double* %210 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %211, align 8, !tbaa !1
  %212 = getelementptr double, double* %210, i64 2
  %213 = bitcast double* %212 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %213, align 8, !tbaa !1
  %index.next212.1 = add i64 %index211, 8
  %214 = icmp eq i64 %index.next212.1, %n.vec188
  br i1 %214, label %middle.block183.unr-lcssa, label %vector.body182, !llvm.loop !97

middle.block183.unr-lcssa:                        ; preds = %vector.body182
  br label %middle.block183

middle.block183:                                  ; preds = %middle.block183.unr-lcssa, %vector.body182.preheader.split
  %cmp.n214 = icmp eq i64 %175, %n.vec188
  br i1 %cmp.n214, label %.preheader99, label %scalar.ph184.preheader

scalar.ph165:                                     ; preds = %scalar.ph165, %scalar.ph165.preheader
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph165 ], [ %indvars.iv128.ph, %scalar.ph165.preheader ]
  %215 = getelementptr inbounds double, double* %114, i64 %indvars.iv128
  store double 1.000000e+00, double* %215, align 8, !tbaa !1
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %216 = icmp slt i64 %indvars.iv.next129, %115
  br i1 %216, label %scalar.ph165, label %.preheader100.loopexit, !llvm.loop !98

.preheader99.loopexit:                            ; preds = %scalar.ph184
  br label %.preheader99

.preheader99:                                     ; preds = %.preheader99.loopexit, %middle.block183
  %.pre132 = load i32, i32* %38, align 4, !tbaa !12
  %217 = icmp sgt i32 %.pre132, 0
  br i1 %217, label %.lr.ph110, label %._crit_edge108

.lr.ph110:                                        ; preds = %.preheader99
  %218 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6, i32 0, i32 0, i32 0
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7, i32 0, i32 0, i32 0
  %221 = load double*, double** %220, align 8
  %222 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8, i32 0, i32 0, i32 0
  %223 = load double*, double** %222, align 8
  %224 = sext i32 %.pre132 to i64
  %min.iters.check224 = icmp ult i32 %.pre132, 4
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %min.iters.checked225

scalar.ph223.preheader:                           ; preds = %middle.block222, %vector.memcheck248, %min.iters.checked225, %.lr.ph110
  %indvars.iv124.ph = phi i64 [ 0, %vector.memcheck248 ], [ 0, %min.iters.checked225 ], [ 0, %.lr.ph110 ], [ %n.vec227, %middle.block222 ]
  br label %scalar.ph223

min.iters.checked225:                             ; preds = %.lr.ph110
  %n.vec227 = and i64 %224, -4
  %cmp.zero228 = icmp eq i64 %n.vec227, 0
  br i1 %cmp.zero228, label %scalar.ph223.preheader, label %vector.memcheck248

vector.memcheck248:                               ; preds = %min.iters.checked225
  %225 = add nsw i64 %224, -1
  %scevgep230 = getelementptr double, double* %219, i64 %225
  %scevgep232 = getelementptr double, double* %221, i64 %225
  %scevgep234 = getelementptr double, double* %223, i64 %225
  %bound0236 = icmp ule double* %219, %scevgep232
  %bound1237 = icmp ule double* %221, %scevgep230
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ule double* %219, %scevgep234
  %bound1240 = icmp ule double* %223, %scevgep230
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  %bound0243 = icmp ule double* %221, %scevgep234
  %bound1244 = icmp ule double* %223, %scevgep232
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  br i1 %conflict.rdx246, label %scalar.ph223.preheader, label %vector.body221.preheader

vector.body221.preheader:                         ; preds = %vector.memcheck248
  %226 = add nsw i64 %224, -4
  %227 = lshr i64 %226, 2
  %228 = and i64 %227, 1
  %lcmp.mod = icmp eq i64 %228, 0
  br i1 %lcmp.mod, label %vector.body221.prol, label %vector.body221.preheader.split

vector.body221.prol:                              ; preds = %vector.body221.preheader
  %229 = bitcast double* %219 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %229, align 8, !tbaa !1
  %230 = getelementptr double, double* %219, i64 2
  %231 = bitcast double* %230 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %231, align 8, !tbaa !1
  %232 = bitcast double* %221 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %232, align 8, !tbaa !1
  %233 = getelementptr double, double* %221, i64 2
  %234 = bitcast double* %233 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %234, align 8, !tbaa !1
  %235 = bitcast double* %223 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %235, align 8, !tbaa !1
  %236 = getelementptr double, double* %223, i64 2
  %237 = bitcast double* %236 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %237, align 8, !tbaa !1
  br label %vector.body221.preheader.split

vector.body221.preheader.split:                   ; preds = %vector.body221.prol, %vector.body221.preheader
  %index250.unr = phi i64 [ 0, %vector.body221.preheader ], [ 4, %vector.body221.prol ]
  %238 = icmp eq i64 %227, 0
  br i1 %238, label %middle.block222, label %vector.body221.preheader.split.split

vector.body221.preheader.split.split:             ; preds = %vector.body221.preheader.split
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.body221.preheader.split.split
  %index250 = phi i64 [ %index250.unr, %vector.body221.preheader.split.split ], [ %index.next251.1, %vector.body221 ]
  %239 = getelementptr inbounds double, double* %219, i64 %index250
  %240 = bitcast double* %239 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %240, align 8, !tbaa !1
  %241 = getelementptr double, double* %239, i64 2
  %242 = bitcast double* %241 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %242, align 8, !tbaa !1
  %243 = getelementptr inbounds double, double* %221, i64 %index250
  %244 = bitcast double* %243 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %244, align 8, !tbaa !1
  %245 = getelementptr double, double* %243, i64 2
  %246 = bitcast double* %245 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %246, align 8, !tbaa !1
  %247 = getelementptr inbounds double, double* %223, i64 %index250
  %248 = bitcast double* %247 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %248, align 8, !tbaa !1
  %249 = getelementptr double, double* %247, i64 2
  %250 = bitcast double* %249 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %250, align 8, !tbaa !1
  %index.next251 = add i64 %index250, 4
  %251 = getelementptr inbounds double, double* %219, i64 %index.next251
  %252 = bitcast double* %251 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %252, align 8, !tbaa !1
  %253 = getelementptr double, double* %251, i64 2
  %254 = bitcast double* %253 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %254, align 8, !tbaa !1
  %255 = getelementptr inbounds double, double* %221, i64 %index.next251
  %256 = bitcast double* %255 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %256, align 8, !tbaa !1
  %257 = getelementptr double, double* %255, i64 2
  %258 = bitcast double* %257 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %258, align 8, !tbaa !1
  %259 = getelementptr inbounds double, double* %223, i64 %index.next251
  %260 = bitcast double* %259 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %260, align 8, !tbaa !1
  %261 = getelementptr double, double* %259, i64 2
  %262 = bitcast double* %261 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %262, align 8, !tbaa !1
  %index.next251.1 = add i64 %index250, 8
  %263 = icmp eq i64 %index.next251.1, %n.vec227
  br i1 %263, label %middle.block222.unr-lcssa, label %vector.body221, !llvm.loop !99

middle.block222.unr-lcssa:                        ; preds = %vector.body221
  br label %middle.block222

middle.block222:                                  ; preds = %middle.block222.unr-lcssa, %vector.body221.preheader.split
  %cmp.n253 = icmp eq i64 %224, %n.vec227
  br i1 %cmp.n253, label %.preheader, label %scalar.ph223.preheader

scalar.ph184:                                     ; preds = %scalar.ph184, %scalar.ph184.preheader
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %scalar.ph184 ], [ %indvars.iv126.ph, %scalar.ph184.preheader ]
  %264 = getelementptr inbounds double, double* %170, i64 %indvars.iv126
  store double 0.000000e+00, double* %264, align 8, !tbaa !1
  %265 = getelementptr inbounds double, double* %172, i64 %indvars.iv126
  store double 0.000000e+00, double* %265, align 8, !tbaa !1
  %266 = getelementptr inbounds double, double* %174, i64 %indvars.iv126
  store double 0.000000e+00, double* %266, align 8, !tbaa !1
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %267 = icmp slt i64 %indvars.iv.next127, %175
  br i1 %267, label %scalar.ph184, label %.preheader99.loopexit, !llvm.loop !100

.preheader.loopexit:                              ; preds = %scalar.ph223
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %middle.block222
  %.pre133 = load i32, i32* %38, align 4, !tbaa !12
  %268 = icmp sgt i32 %.pre133, 0
  br i1 %268, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.preheader
  %269 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12, i32 0, i32 0, i32 0
  %270 = bitcast double** %269 to i8**
  %271 = load i8*, i8** %270, align 8
  %272 = icmp sgt i32 %.pre133, 1
  %smax = select i1 %272, i32 %.pre133, i32 1
  %273 = add i32 %smax, -1
  %274 = zext i32 %273 to i64
  %275 = shl nuw nsw i64 %274, 3
  %276 = add nuw nsw i64 %275, 8
  call void @llvm.memset.p0i8.i64(i8* %271, i8 0, i64 %276, i32 8, i1 false)
  br label %._crit_edge108

scalar.ph223:                                     ; preds = %scalar.ph223, %scalar.ph223.preheader
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph223 ], [ %indvars.iv124.ph, %scalar.ph223.preheader ]
  %277 = getelementptr inbounds double, double* %219, i64 %indvars.iv124
  store double 0.000000e+00, double* %277, align 8, !tbaa !1
  %278 = getelementptr inbounds double, double* %221, i64 %indvars.iv124
  store double 0.000000e+00, double* %278, align 8, !tbaa !1
  %279 = getelementptr inbounds double, double* %223, i64 %indvars.iv124
  store double 0.000000e+00, double* %279, align 8, !tbaa !1
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %280 = icmp slt i64 %indvars.iv.next125, %224
  br i1 %280, label %scalar.ph223, label %.preheader.loopexit, !llvm.loop !101

._crit_edge108:                                   ; preds = %.lr.ph107, %.preheader, %.preheader99, %.preheader100
  tail call void @_ZN6Domain9BuildMeshEiii(%class.Domain* nonnull %this, i32 %nx, i32 %23, i32 %nx)
  %281 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 92
  %282 = bitcast i32** %281 to i8*
  call void @llvm.memset.p0i8.i64(i8* %282, i8 0, i64 16, i32 8, i1 false)
  invoke void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* nonnull %this, i32 %nr, i32 %balance)
          to label %283 unwind label %.loopexit.split-lp

; <label>:283                                     ; preds = %._crit_edge108
  %284 = icmp sgt i32 %nx, -1
  br i1 %284, label %.lr.ph6.i, label %.loopexit98

.lr.ph6.i:                                        ; preds = %283
  %285 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15, i32 0, i32 0, i32 0
  %286 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14, i32 0, i32 0, i32 0
  %287 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13, i32 0, i32 0, i32 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph6.i
  %nidx.04.us.i = phi i32 [ 0, %.lr.ph6.i ], [ %315, %._crit_edge.us.i ]
  %i.03.us.i = phi i32 [ 0, %.lr.ph6.i ], [ %316, %._crit_edge.us.i ]
  %288 = mul nsw i32 %i.03.us.i, %23
  %289 = mul nsw i32 %288, %23
  %290 = sext i32 %nidx.04.us.i to i64
  br label %291

; <label>:291                                     ; preds = %313, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %290, %.lr.ph.us.i ], [ %indvars.iv.next.i, %313 ]
  %j.02.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %314, %313 ]
  %292 = load i32, i32* %29, align 4, !tbaa !86
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %298

; <label>:294                                     ; preds = %291
  %295 = add nsw i32 %j.02.us.i, %288
  %296 = load i32*, i32** %285, align 8, !tbaa !5
  %297 = getelementptr inbounds i32, i32* %296, i64 %indvars.iv.i
  store i32 %295, i32* %297, align 4, !tbaa !12
  br label %298

; <label>:298                                     ; preds = %294, %291
  %299 = load i32, i32* %28, align 8, !tbaa !85
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %305

; <label>:301                                     ; preds = %298
  %302 = add nsw i32 %j.02.us.i, %289
  %303 = load i32*, i32** %286, align 8, !tbaa !5
  %304 = getelementptr inbounds i32, i32* %303, i64 %indvars.iv.i
  store i32 %302, i32* %304, align 4, !tbaa !12
  br label %305

; <label>:305                                     ; preds = %301, %298
  %306 = load i32, i32* %27, align 4, !tbaa !84
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

; <label>:308                                     ; preds = %305
  %309 = mul nsw i32 %j.02.us.i, %23
  %310 = add nsw i32 %309, %289
  %311 = load i32*, i32** %287, align 8, !tbaa !5
  %312 = getelementptr inbounds i32, i32* %311, i64 %indvars.iv.i
  store i32 %310, i32* %312, align 4, !tbaa !12
  br label %313

; <label>:313                                     ; preds = %308, %305
  %314 = add nuw nsw i32 %j.02.us.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i32 %314, %23
  br i1 %exitcond.i, label %._crit_edge.us.i, label %291

._crit_edge.us.i:                                 ; preds = %313
  %315 = add i32 %nidx.04.us.i, %23
  %316 = add nuw nsw i32 %i.03.us.i, 1
  %exitcond8.i = icmp eq i32 %316, %23
  br i1 %exitcond8.i, label %.loopexit98.loopexit, label %.lr.ph.us.i

.loopexit98.loopexit:                             ; preds = %._crit_edge.us.i
  br label %.loopexit98

.loopexit98:                                      ; preds = %.loopexit98.loopexit, %283
  tail call void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* nonnull %this, i32 %nx)
  tail call void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* nonnull %this, i32 %nx)
  %317 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 73
  %318 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 76
  %319 = bitcast double* %318 to <2 x double>*
  store <2 x double> <double 1.100000e+00, double 1.200000e+00>, <2 x double>* %319, align 8, !tbaa !1
  %320 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 70
  %321 = bitcast double* %320 to <2 x double>*
  store <2 x double> <double 1.000000e+20, double 1.000000e+20>, <2 x double>* %321, align 8, !tbaa !1
  %322 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 78
  %323 = bitcast double* %322 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %323, align 8, !tbaa !1
  %324 = bitcast double* %317 to <2 x double>*
  store <2 x double> <double -1.000000e-06, double 0.000000e+00>, <2 x double>* %324, align 8, !tbaa !1
  %325 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 72
  store i32 0, i32* %325, align 4, !tbaa !12
  %326 = load i32, i32* %35, align 4, !tbaa !12
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit98
  %328 = bitcast [8 x double]* %x_local to i8*
  %329 = bitcast [8 x double]* %y_local to i8*
  %330 = bitcast [8 x double]* %z_local to i8*
  %331 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21, i32 0, i32 0, i32 0
  %332 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %333 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1, i32 0, i32 0, i32 0
  %334 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %335 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %336 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %337 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %338 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44, i32 0, i32 0, i32 0
  %339 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50, i32 0, i32 0, i32 0
  %340 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12, i32 0, i32 0, i32 0
  %341 = bitcast [8 x double]* %x_local to i64*
  %342 = bitcast [8 x double]* %y_local to i64*
  %343 = bitcast [8 x double]* %z_local to i64*
  %344 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 1
  %345 = bitcast double* %344 to i64*
  %346 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 1
  %347 = bitcast double* %346 to i64*
  %348 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 1
  %349 = bitcast double* %348 to i64*
  %350 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 2
  %351 = bitcast double* %350 to i64*
  %352 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 2
  %353 = bitcast double* %352 to i64*
  %354 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 2
  %355 = bitcast double* %354 to i64*
  %356 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 3
  %357 = bitcast double* %356 to i64*
  %358 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 3
  %359 = bitcast double* %358 to i64*
  %360 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 3
  %361 = bitcast double* %360 to i64*
  %362 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 4
  %363 = bitcast double* %362 to i64*
  %364 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 4
  %365 = bitcast double* %364 to i64*
  %366 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 4
  %367 = bitcast double* %366 to i64*
  %368 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 5
  %369 = bitcast double* %368 to i64*
  %370 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 5
  %371 = bitcast double* %370 to i64*
  %372 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 5
  %373 = bitcast double* %372 to i64*
  %374 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 6
  %375 = bitcast double* %374 to i64*
  %376 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 6
  %377 = bitcast double* %376 to i64*
  %378 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 6
  %379 = bitcast double* %378 to i64*
  %380 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 7
  %381 = bitcast double* %380 to i64*
  %382 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 7
  %383 = bitcast double* %382 to i64*
  %384 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 7
  %385 = bitcast double* %384 to i64*
  br label %402

._crit_edge.loopexit:                             ; preds = %507
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit98
  %386 = load i32, i32* %25, align 8, !tbaa !82
  %387 = mul nsw i32 %386, %nx
  %388 = sitofp i32 %387 to double
  %389 = fdiv double %388, 4.500000e+01
  %390 = fmul double %389, 3.948746e+07
  %391 = fmul double %389, %390
  %392 = fmul double %389, %391
  %393 = bitcast i32* %28 to i64*
  %394 = load i64, i64* %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = load i32, i32* %27, align 4, !tbaa !84
  %397 = add nsw i32 %396, %395
  %398 = lshr i64 %394, 32
  %399 = trunc i64 %398 to i32
  %400 = sub i32 0, %399
  %401 = icmp eq i32 %397, %400
  br i1 %401, label %557, label %560

; <label>:402                                     ; preds = %507, %.lr.ph
  %indvars.iv120 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next121, %507 ]
  call void @llvm.lifetime.start(i64 64, i8* %328) #2
  call void @llvm.lifetime.start(i64 64, i8* %329) #2
  call void @llvm.lifetime.start(i64 64, i8* %330) #2
  %403 = trunc i64 %indvars.iv120 to i32
  %404 = shl nsw i32 %403, 3
  %405 = sext i32 %404 to i64
  %406 = load i32*, i32** %331, align 8, !tbaa !5
  %407 = getelementptr inbounds i32, i32* %406, i64 %405
  %408 = load double*, double** %332, align 8
  %409 = load double*, double** %333, align 8
  %410 = load double*, double** %334, align 8
  %411 = load i32, i32* %407, align 4, !tbaa !12
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double, double* %408, i64 %412
  %414 = bitcast double* %413 to i64*
  %415 = load i64, i64* %414, align 8, !tbaa !1
  store i64 %415, i64* %341, align 16, !tbaa !1
  %416 = getelementptr inbounds double, double* %409, i64 %412
  %417 = bitcast double* %416 to i64*
  %418 = load i64, i64* %417, align 8, !tbaa !1
  store i64 %418, i64* %342, align 16, !tbaa !1
  %419 = getelementptr inbounds double, double* %410, i64 %412
  %420 = bitcast double* %419 to i64*
  %421 = load i64, i64* %420, align 8, !tbaa !1
  store i64 %421, i64* %343, align 16, !tbaa !1
  %422 = getelementptr inbounds i32, i32* %407, i64 1
  %423 = load i32, i32* %422, align 4, !tbaa !12
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, double* %408, i64 %424
  %426 = bitcast double* %425 to i64*
  %427 = load i64, i64* %426, align 8, !tbaa !1
  store i64 %427, i64* %345, align 8, !tbaa !1
  %428 = getelementptr inbounds double, double* %409, i64 %424
  %429 = bitcast double* %428 to i64*
  %430 = load i64, i64* %429, align 8, !tbaa !1
  store i64 %430, i64* %347, align 8, !tbaa !1
  %431 = getelementptr inbounds double, double* %410, i64 %424
  %432 = bitcast double* %431 to i64*
  %433 = load i64, i64* %432, align 8, !tbaa !1
  store i64 %433, i64* %349, align 8, !tbaa !1
  %434 = getelementptr inbounds i32, i32* %407, i64 2
  %435 = load i32, i32* %434, align 4, !tbaa !12
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds double, double* %408, i64 %436
  %438 = bitcast double* %437 to i64*
  %439 = load i64, i64* %438, align 8, !tbaa !1
  store i64 %439, i64* %351, align 16, !tbaa !1
  %440 = getelementptr inbounds double, double* %409, i64 %436
  %441 = bitcast double* %440 to i64*
  %442 = load i64, i64* %441, align 8, !tbaa !1
  store i64 %442, i64* %353, align 16, !tbaa !1
  %443 = getelementptr inbounds double, double* %410, i64 %436
  %444 = bitcast double* %443 to i64*
  %445 = load i64, i64* %444, align 8, !tbaa !1
  store i64 %445, i64* %355, align 16, !tbaa !1
  %446 = getelementptr inbounds i32, i32* %407, i64 3
  %447 = load i32, i32* %446, align 4, !tbaa !12
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double, double* %408, i64 %448
  %450 = bitcast double* %449 to i64*
  %451 = load i64, i64* %450, align 8, !tbaa !1
  store i64 %451, i64* %357, align 8, !tbaa !1
  %452 = getelementptr inbounds double, double* %409, i64 %448
  %453 = bitcast double* %452 to i64*
  %454 = load i64, i64* %453, align 8, !tbaa !1
  store i64 %454, i64* %359, align 8, !tbaa !1
  %455 = getelementptr inbounds double, double* %410, i64 %448
  %456 = bitcast double* %455 to i64*
  %457 = load i64, i64* %456, align 8, !tbaa !1
  store i64 %457, i64* %361, align 8, !tbaa !1
  %458 = getelementptr inbounds i32, i32* %407, i64 4
  %459 = load i32, i32* %458, align 4, !tbaa !12
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double, double* %408, i64 %460
  %462 = bitcast double* %461 to i64*
  %463 = load i64, i64* %462, align 8, !tbaa !1
  store i64 %463, i64* %363, align 16, !tbaa !1
  %464 = getelementptr inbounds double, double* %409, i64 %460
  %465 = bitcast double* %464 to i64*
  %466 = load i64, i64* %465, align 8, !tbaa !1
  store i64 %466, i64* %365, align 16, !tbaa !1
  %467 = getelementptr inbounds double, double* %410, i64 %460
  %468 = bitcast double* %467 to i64*
  %469 = load i64, i64* %468, align 8, !tbaa !1
  store i64 %469, i64* %367, align 16, !tbaa !1
  %470 = getelementptr inbounds i32, i32* %407, i64 5
  %471 = load i32, i32* %470, align 4, !tbaa !12
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds double, double* %408, i64 %472
  %474 = bitcast double* %473 to i64*
  %475 = load i64, i64* %474, align 8, !tbaa !1
  store i64 %475, i64* %369, align 8, !tbaa !1
  %476 = getelementptr inbounds double, double* %409, i64 %472
  %477 = bitcast double* %476 to i64*
  %478 = load i64, i64* %477, align 8, !tbaa !1
  store i64 %478, i64* %371, align 8, !tbaa !1
  %479 = getelementptr inbounds double, double* %410, i64 %472
  %480 = bitcast double* %479 to i64*
  %481 = load i64, i64* %480, align 8, !tbaa !1
  store i64 %481, i64* %373, align 8, !tbaa !1
  %482 = getelementptr inbounds i32, i32* %407, i64 6
  %483 = load i32, i32* %482, align 4, !tbaa !12
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds double, double* %408, i64 %484
  %486 = bitcast double* %485 to i64*
  %487 = load i64, i64* %486, align 8, !tbaa !1
  store i64 %487, i64* %375, align 16, !tbaa !1
  %488 = getelementptr inbounds double, double* %409, i64 %484
  %489 = bitcast double* %488 to i64*
  %490 = load i64, i64* %489, align 8, !tbaa !1
  store i64 %490, i64* %377, align 16, !tbaa !1
  %491 = getelementptr inbounds double, double* %410, i64 %484
  %492 = bitcast double* %491 to i64*
  %493 = load i64, i64* %492, align 8, !tbaa !1
  store i64 %493, i64* %379, align 16, !tbaa !1
  %494 = getelementptr inbounds i32, i32* %407, i64 7
  %495 = load i32, i32* %494, align 4, !tbaa !12
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds double, double* %408, i64 %496
  %498 = bitcast double* %497 to i64*
  %499 = load i64, i64* %498, align 8, !tbaa !1
  store i64 %499, i64* %381, align 8, !tbaa !1
  %500 = getelementptr inbounds double, double* %409, i64 %496
  %501 = bitcast double* %500 to i64*
  %502 = load i64, i64* %501, align 8, !tbaa !1
  store i64 %502, i64* %383, align 8, !tbaa !1
  %503 = getelementptr inbounds double, double* %410, i64 %496
  %504 = bitcast double* %503 to i64*
  %505 = load i64, i64* %504, align 8, !tbaa !1
  store i64 %505, i64* %385, align 8, !tbaa !1
  %506 = invoke double @_Z14CalcElemVolumePKdS0_S0_(double* %335, double* %336, double* %337)
          to label %507 unwind label %.loopexit

; <label>:507                                     ; preds = %402
  %508 = load double*, double** %338, align 8, !tbaa !9
  %509 = getelementptr inbounds double, double* %508, i64 %indvars.iv120
  store double %506, double* %509, align 8, !tbaa !1
  %510 = load double*, double** %339, align 8, !tbaa !9
  %511 = getelementptr inbounds double, double* %510, i64 %indvars.iv120
  store double %506, double* %511, align 8, !tbaa !1
  %512 = fmul double %506, 1.250000e-01
  %513 = load double*, double** %340, align 8
  %514 = load i32, i32* %407, align 4, !tbaa !12
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds double, double* %513, i64 %515
  %517 = load double, double* %516, align 8, !tbaa !1
  %518 = fadd double %512, %517
  store double %518, double* %516, align 8, !tbaa !1
  %519 = load i32, i32* %422, align 4, !tbaa !12
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds double, double* %513, i64 %520
  %522 = load double, double* %521, align 8, !tbaa !1
  %523 = fadd double %512, %522
  store double %523, double* %521, align 8, !tbaa !1
  %524 = load i32, i32* %434, align 4, !tbaa !12
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds double, double* %513, i64 %525
  %527 = load double, double* %526, align 8, !tbaa !1
  %528 = fadd double %512, %527
  store double %528, double* %526, align 8, !tbaa !1
  %529 = load i32, i32* %446, align 4, !tbaa !12
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds double, double* %513, i64 %530
  %532 = load double, double* %531, align 8, !tbaa !1
  %533 = fadd double %512, %532
  store double %533, double* %531, align 8, !tbaa !1
  %534 = load i32, i32* %458, align 4, !tbaa !12
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %513, i64 %535
  %537 = load double, double* %536, align 8, !tbaa !1
  %538 = fadd double %512, %537
  store double %538, double* %536, align 8, !tbaa !1
  %539 = load i32, i32* %470, align 4, !tbaa !12
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds double, double* %513, i64 %540
  %542 = load double, double* %541, align 8, !tbaa !1
  %543 = fadd double %512, %542
  store double %543, double* %541, align 8, !tbaa !1
  %544 = load i32, i32* %482, align 4, !tbaa !12
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds double, double* %513, i64 %545
  %547 = load double, double* %546, align 8, !tbaa !1
  %548 = fadd double %512, %547
  store double %548, double* %546, align 8, !tbaa !1
  %549 = load i32, i32* %494, align 4, !tbaa !12
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds double, double* %513, i64 %550
  %552 = load double, double* %551, align 8, !tbaa !1
  %553 = fadd double %512, %552
  store double %553, double* %551, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 64, i8* nonnull %330) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %329) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %328) #2
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %554 = load i32, i32* %35, align 4, !tbaa !12
  %555 = sext i32 %554 to i64
  %556 = icmp slt i64 %indvars.iv.next121, %555
  br i1 %556, label %402, label %._crit_edge.loopexit

; <label>:557                                     ; preds = %._crit_edge
  %558 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38, i32 0, i32 0, i32 0
  %559 = load double*, double** %558, align 8, !tbaa !9
  store double %392, double* %559, align 8, !tbaa !1
  br label %560

; <label>:560                                     ; preds = %557, %._crit_edge
  %561 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44, i32 0, i32 0, i32 0
  %562 = load double*, double** %561, align 8, !tbaa !9
  %563 = load double, double* %562, align 8, !tbaa !1
  %564 = call double @cbrt(double %563) #2
  %565 = fmul double %564, 5.000000e-01
  %566 = fmul double %392, 2.000000e+00
  %567 = call double @sqrt(double %566) #2
  %568 = fdiv double %565, %567
  %569 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 75
  store double %568, double* %569, align 8, !tbaa !1
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit97:                  ; preds = %160, %157
  %570 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49, i32 0, i32 0, i32 0
  %571 = load double*, double** %570, align 8, !tbaa !9
  %572 = icmp eq double* %571, null
  br i1 %572, label %_ZNSt6vectorIdSaIdEED2Ev.exit96, label %573

; <label>:573                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit97
  %574 = bitcast double* %571 to i8*
  call void @_ZdlPv(i8* %574) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit96

_ZNSt6vectorIdSaIdEED2Ev.exit96:                  ; preds = %573, %_ZNSt6vectorIdSaIdEED2Ev.exit97
  %575 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48, i32 0, i32 0, i32 0
  %576 = load double*, double** %575, align 8, !tbaa !9
  %577 = icmp eq double* %576, null
  br i1 %577, label %_ZNSt6vectorIdSaIdEED2Ev.exit95, label %578

; <label>:578                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit96
  %579 = bitcast double* %576 to i8*
  call void @_ZdlPv(i8* %579) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit95

_ZNSt6vectorIdSaIdEED2Ev.exit95:                  ; preds = %578, %_ZNSt6vectorIdSaIdEED2Ev.exit96
  %580 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47, i32 0, i32 0, i32 0
  %581 = load double*, double** %580, align 8, !tbaa !9
  %582 = icmp eq double* %581, null
  br i1 %582, label %_ZNSt6vectorIdSaIdEED2Ev.exit94, label %583

; <label>:583                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit95
  %584 = bitcast double* %581 to i8*
  call void @_ZdlPv(i8* %584) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit94

_ZNSt6vectorIdSaIdEED2Ev.exit94:                  ; preds = %583, %_ZNSt6vectorIdSaIdEED2Ev.exit95
  %585 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46, i32 0, i32 0, i32 0
  %586 = load double*, double** %585, align 8, !tbaa !9
  %587 = icmp eq double* %586, null
  br i1 %587, label %_ZNSt6vectorIdSaIdEED2Ev.exit93, label %588

; <label>:588                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit94
  %589 = bitcast double* %586 to i8*
  call void @_ZdlPv(i8* %589) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit93

_ZNSt6vectorIdSaIdEED2Ev.exit93:                  ; preds = %588, %_ZNSt6vectorIdSaIdEED2Ev.exit94
  %590 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 45, i32 0, i32 0, i32 0
  %591 = load double*, double** %590, align 8, !tbaa !9
  %592 = icmp eq double* %591, null
  br i1 %592, label %_ZNSt6vectorIdSaIdEED2Ev.exit92, label %593

; <label>:593                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit93
  %594 = bitcast double* %591 to i8*
  call void @_ZdlPv(i8* %594) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit92

_ZNSt6vectorIdSaIdEED2Ev.exit92:                  ; preds = %593, %_ZNSt6vectorIdSaIdEED2Ev.exit93
  %595 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44, i32 0, i32 0, i32 0
  %596 = load double*, double** %595, align 8, !tbaa !9
  %597 = icmp eq double* %596, null
  br i1 %597, label %_ZNSt6vectorIdSaIdEED2Ev.exit91, label %598

; <label>:598                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit92
  %599 = bitcast double* %596 to i8*
  call void @_ZdlPv(i8* %599) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit91

_ZNSt6vectorIdSaIdEED2Ev.exit91:                  ; preds = %598, %_ZNSt6vectorIdSaIdEED2Ev.exit92
  %600 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43, i32 0, i32 0, i32 0
  %601 = load double*, double** %600, align 8, !tbaa !9
  %602 = icmp eq double* %601, null
  br i1 %602, label %_ZNSt6vectorIdSaIdEED2Ev.exit90, label %603

; <label>:603                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit91
  %604 = bitcast double* %601 to i8*
  call void @_ZdlPv(i8* %604) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit90

_ZNSt6vectorIdSaIdEED2Ev.exit90:                  ; preds = %603, %_ZNSt6vectorIdSaIdEED2Ev.exit91
  %605 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42, i32 0, i32 0, i32 0
  %606 = load double*, double** %605, align 8, !tbaa !9
  %607 = icmp eq double* %606, null
  br i1 %607, label %_ZNSt6vectorIdSaIdEED2Ev.exit89, label %608

; <label>:608                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit90
  %609 = bitcast double* %606 to i8*
  call void @_ZdlPv(i8* %609) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit89

_ZNSt6vectorIdSaIdEED2Ev.exit89:                  ; preds = %608, %_ZNSt6vectorIdSaIdEED2Ev.exit90
  %610 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41, i32 0, i32 0, i32 0
  %611 = load double*, double** %610, align 8, !tbaa !9
  %612 = icmp eq double* %611, null
  br i1 %612, label %_ZNSt6vectorIdSaIdEED2Ev.exit88, label %613

; <label>:613                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit89
  %614 = bitcast double* %611 to i8*
  call void @_ZdlPv(i8* %614) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit88

_ZNSt6vectorIdSaIdEED2Ev.exit88:                  ; preds = %613, %_ZNSt6vectorIdSaIdEED2Ev.exit89
  %615 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40, i32 0, i32 0, i32 0
  %616 = load double*, double** %615, align 8, !tbaa !9
  %617 = icmp eq double* %616, null
  br i1 %617, label %_ZNSt6vectorIdSaIdEED2Ev.exit87, label %618

; <label>:618                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit88
  %619 = bitcast double* %616 to i8*
  call void @_ZdlPv(i8* %619) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit87

_ZNSt6vectorIdSaIdEED2Ev.exit87:                  ; preds = %618, %_ZNSt6vectorIdSaIdEED2Ev.exit88
  %620 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39, i32 0, i32 0, i32 0
  %621 = load double*, double** %620, align 8, !tbaa !9
  %622 = icmp eq double* %621, null
  br i1 %622, label %_ZNSt6vectorIdSaIdEED2Ev.exit86, label %623

; <label>:623                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit87
  %624 = bitcast double* %621 to i8*
  call void @_ZdlPv(i8* %624) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit86

_ZNSt6vectorIdSaIdEED2Ev.exit86:                  ; preds = %623, %_ZNSt6vectorIdSaIdEED2Ev.exit87
  %625 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38, i32 0, i32 0, i32 0
  %626 = load double*, double** %625, align 8, !tbaa !9
  %627 = icmp eq double* %626, null
  br i1 %627, label %_ZNSt6vectorIdSaIdEED2Ev.exit85, label %628

; <label>:628                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit86
  %629 = bitcast double* %626 to i8*
  call void @_ZdlPv(i8* %629) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit85

_ZNSt6vectorIdSaIdEED2Ev.exit85:                  ; preds = %628, %_ZNSt6vectorIdSaIdEED2Ev.exit86
  %630 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37, i32 0, i32 0, i32 0
  %631 = load double*, double** %630, align 8, !tbaa !9
  %632 = icmp eq double* %631, null
  br i1 %632, label %_ZNSt6vectorIdSaIdEED2Ev.exit84, label %633

; <label>:633                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit85
  %634 = bitcast double* %631 to i8*
  call void @_ZdlPv(i8* %634) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit84

_ZNSt6vectorIdSaIdEED2Ev.exit84:                  ; preds = %633, %_ZNSt6vectorIdSaIdEED2Ev.exit85
  %635 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36, i32 0, i32 0, i32 0
  %636 = load double*, double** %635, align 8, !tbaa !9
  %637 = icmp eq double* %636, null
  br i1 %637, label %_ZNSt6vectorIdSaIdEED2Ev.exit83, label %638

; <label>:638                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit84
  %639 = bitcast double* %636 to i8*
  call void @_ZdlPv(i8* %639) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit83

_ZNSt6vectorIdSaIdEED2Ev.exit83:                  ; preds = %638, %_ZNSt6vectorIdSaIdEED2Ev.exit84
  %640 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35, i32 0, i32 0, i32 0
  %641 = load double*, double** %640, align 8, !tbaa !9
  %642 = icmp eq double* %641, null
  br i1 %642, label %_ZNSt6vectorIdSaIdEED2Ev.exit82, label %643

; <label>:643                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit83
  %644 = bitcast double* %641 to i8*
  call void @_ZdlPv(i8* %644) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit82

_ZNSt6vectorIdSaIdEED2Ev.exit82:                  ; preds = %643, %_ZNSt6vectorIdSaIdEED2Ev.exit83
  %645 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34, i32 0, i32 0, i32 0
  %646 = load double*, double** %645, align 8, !tbaa !9
  %647 = icmp eq double* %646, null
  br i1 %647, label %_ZNSt6vectorIdSaIdEED2Ev.exit81, label %648

; <label>:648                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit82
  %649 = bitcast double* %646 to i8*
  call void @_ZdlPv(i8* %649) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit81

_ZNSt6vectorIdSaIdEED2Ev.exit81:                  ; preds = %648, %_ZNSt6vectorIdSaIdEED2Ev.exit82
  %650 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33, i32 0, i32 0, i32 0
  %651 = load double*, double** %650, align 8, !tbaa !9
  %652 = icmp eq double* %651, null
  br i1 %652, label %_ZNSt6vectorIdSaIdEED2Ev.exit80, label %653

; <label>:653                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit81
  %654 = bitcast double* %651 to i8*
  call void @_ZdlPv(i8* %654) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit80

_ZNSt6vectorIdSaIdEED2Ev.exit80:                  ; preds = %653, %_ZNSt6vectorIdSaIdEED2Ev.exit81
  %655 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32, i32 0, i32 0, i32 0
  %656 = load double*, double** %655, align 8, !tbaa !9
  %657 = icmp eq double* %656, null
  br i1 %657, label %_ZNSt6vectorIdSaIdEED2Ev.exit79, label %658

; <label>:658                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit80
  %659 = bitcast double* %656 to i8*
  call void @_ZdlPv(i8* %659) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79

_ZNSt6vectorIdSaIdEED2Ev.exit79:                  ; preds = %658, %_ZNSt6vectorIdSaIdEED2Ev.exit80
  %660 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31, i32 0, i32 0, i32 0
  %661 = load double*, double** %660, align 8, !tbaa !9
  %662 = icmp eq double* %661, null
  br i1 %662, label %_ZNSt6vectorIdSaIdEED2Ev.exit78, label %663

; <label>:663                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit79
  %664 = bitcast double* %661 to i8*
  call void @_ZdlPv(i8* %664) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit78

_ZNSt6vectorIdSaIdEED2Ev.exit78:                  ; preds = %663, %_ZNSt6vectorIdSaIdEED2Ev.exit79
  %665 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30, i32 0, i32 0, i32 0
  %666 = load double*, double** %665, align 8, !tbaa !9
  %667 = icmp eq double* %666, null
  br i1 %667, label %_ZNSt6vectorIdSaIdEED2Ev.exit77, label %668

; <label>:668                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit78
  %669 = bitcast double* %666 to i8*
  call void @_ZdlPv(i8* %669) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit77

_ZNSt6vectorIdSaIdEED2Ev.exit77:                  ; preds = %668, %_ZNSt6vectorIdSaIdEED2Ev.exit78
  %670 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29, i32 0, i32 0, i32 0
  %671 = load double*, double** %670, align 8, !tbaa !9
  %672 = icmp eq double* %671, null
  br i1 %672, label %_ZNSt6vectorIdSaIdEED2Ev.exit76, label %673

; <label>:673                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit77
  %674 = bitcast double* %671 to i8*
  call void @_ZdlPv(i8* %674) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit76

_ZNSt6vectorIdSaIdEED2Ev.exit76:                  ; preds = %673, %_ZNSt6vectorIdSaIdEED2Ev.exit77
  %675 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28, i32 0, i32 0, i32 0
  %676 = load i32*, i32** %675, align 8, !tbaa !5
  %677 = icmp eq i32* %676, null
  br i1 %677, label %_ZNSt6vectorIiSaIiEED2Ev.exit75, label %678

; <label>:678                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit76
  %679 = bitcast i32* %676 to i8*
  call void @_ZdlPv(i8* %679) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

_ZNSt6vectorIiSaIiEED2Ev.exit75:                  ; preds = %678, %_ZNSt6vectorIdSaIdEED2Ev.exit76
  %680 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27, i32 0, i32 0, i32 0
  %681 = load i32*, i32** %680, align 8, !tbaa !5
  %682 = icmp eq i32* %681, null
  br i1 %682, label %_ZNSt6vectorIiSaIiEED2Ev.exit74, label %683

; <label>:683                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75
  %684 = bitcast i32* %681 to i8*
  call void @_ZdlPv(i8* %684) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit74:                  ; preds = %683, %_ZNSt6vectorIiSaIiEED2Ev.exit75
  %685 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26, i32 0, i32 0, i32 0
  %686 = load i32*, i32** %685, align 8, !tbaa !5
  %687 = icmp eq i32* %686, null
  br i1 %687, label %_ZNSt6vectorIiSaIiEED2Ev.exit73, label %688

; <label>:688                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit74
  %689 = bitcast i32* %686 to i8*
  call void @_ZdlPv(i8* %689) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %688, %_ZNSt6vectorIiSaIiEED2Ev.exit74
  %690 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25, i32 0, i32 0, i32 0
  %691 = load i32*, i32** %690, align 8, !tbaa !5
  %692 = icmp eq i32* %691, null
  br i1 %692, label %_ZNSt6vectorIiSaIiEED2Ev.exit72, label %693

; <label>:693                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %694 = bitcast i32* %691 to i8*
  call void @_ZdlPv(i8* %694) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit72

_ZNSt6vectorIiSaIiEED2Ev.exit72:                  ; preds = %693, %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %695 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24, i32 0, i32 0, i32 0
  %696 = load i32*, i32** %695, align 8, !tbaa !5
  %697 = icmp eq i32* %696, null
  br i1 %697, label %_ZNSt6vectorIiSaIiEED2Ev.exit71, label %698

; <label>:698                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit72
  %699 = bitcast i32* %696 to i8*
  call void @_ZdlPv(i8* %699) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71

_ZNSt6vectorIiSaIiEED2Ev.exit71:                  ; preds = %698, %_ZNSt6vectorIiSaIiEED2Ev.exit72
  %700 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23, i32 0, i32 0, i32 0
  %701 = load i32*, i32** %700, align 8, !tbaa !5
  %702 = icmp eq i32* %701, null
  br i1 %702, label %_ZNSt6vectorIiSaIiEED2Ev.exit70, label %703

; <label>:703                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit71
  %704 = bitcast i32* %701 to i8*
  call void @_ZdlPv(i8* %704) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

_ZNSt6vectorIiSaIiEED2Ev.exit70:                  ; preds = %703, %_ZNSt6vectorIiSaIiEED2Ev.exit71
  %705 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22, i32 0, i32 0, i32 0
  %706 = load i32*, i32** %705, align 8, !tbaa !5
  %707 = icmp eq i32* %706, null
  br i1 %707, label %_ZNSt6vectorIiSaIiEED2Ev.exit69, label %708

; <label>:708                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit70
  %709 = bitcast i32* %706 to i8*
  call void @_ZdlPv(i8* %709) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69

_ZNSt6vectorIiSaIiEED2Ev.exit69:                  ; preds = %708, %_ZNSt6vectorIiSaIiEED2Ev.exit70
  %710 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %1, i64 0, i32 0, i32 0, i32 0
  %711 = load i32*, i32** %710, align 8, !tbaa !5
  %712 = icmp eq i32* %711, null
  br i1 %712, label %_ZNSt6vectorIiSaIiEED2Ev.exit68, label %713

; <label>:713                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69
  %714 = bitcast i32* %711 to i8*
  call void @_ZdlPv(i8* %714) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit68

_ZNSt6vectorIiSaIiEED2Ev.exit68:                  ; preds = %713, %_ZNSt6vectorIiSaIiEED2Ev.exit69
  %715 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15, i32 0, i32 0, i32 0
  %716 = load i32*, i32** %715, align 8, !tbaa !5
  %717 = icmp eq i32* %716, null
  br i1 %717, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %718

; <label>:718                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit68
  %719 = bitcast i32* %716 to i8*
  call void @_ZdlPv(i8* %719) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit67:                  ; preds = %718, %_ZNSt6vectorIiSaIiEED2Ev.exit68
  %720 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14, i32 0, i32 0, i32 0
  %721 = load i32*, i32** %720, align 8, !tbaa !5
  %722 = icmp eq i32* %721, null
  br i1 %722, label %_ZNSt6vectorIiSaIiEED2Ev.exit66, label %723

; <label>:723                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit67
  %724 = bitcast i32* %721 to i8*
  call void @_ZdlPv(i8* %724) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit66

_ZNSt6vectorIiSaIiEED2Ev.exit66:                  ; preds = %723, %_ZNSt6vectorIiSaIiEED2Ev.exit67
  %725 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13, i32 0, i32 0, i32 0
  %726 = load i32*, i32** %725, align 8, !tbaa !5
  %727 = icmp eq i32* %726, null
  br i1 %727, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %728

; <label>:728                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit66
  %729 = bitcast i32* %726 to i8*
  call void @_ZdlPv(i8* %729) #2
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %728, %_ZNSt6vectorIiSaIiEED2Ev.exit66
  %730 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12, i32 0, i32 0, i32 0
  %731 = load double*, double** %730, align 8, !tbaa !9
  %732 = icmp eq double* %731, null
  br i1 %732, label %_ZNSt6vectorIdSaIdEED2Ev.exit65, label %733

; <label>:733                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %734 = bitcast double* %731 to i8*
  call void @_ZdlPv(i8* %734) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit65

_ZNSt6vectorIdSaIdEED2Ev.exit65:                  ; preds = %733, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %735 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11, i32 0, i32 0, i32 0
  %736 = load double*, double** %735, align 8, !tbaa !9
  %737 = icmp eq double* %736, null
  br i1 %737, label %_ZNSt6vectorIdSaIdEED2Ev.exit64, label %738

; <label>:738                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit65
  %739 = bitcast double* %736 to i8*
  call void @_ZdlPv(i8* %739) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit64

_ZNSt6vectorIdSaIdEED2Ev.exit64:                  ; preds = %738, %_ZNSt6vectorIdSaIdEED2Ev.exit65
  %740 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10, i32 0, i32 0, i32 0
  %741 = load double*, double** %740, align 8, !tbaa !9
  %742 = icmp eq double* %741, null
  br i1 %742, label %_ZNSt6vectorIdSaIdEED2Ev.exit63, label %743

; <label>:743                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit64
  %744 = bitcast double* %741 to i8*
  call void @_ZdlPv(i8* %744) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit63

_ZNSt6vectorIdSaIdEED2Ev.exit63:                  ; preds = %743, %_ZNSt6vectorIdSaIdEED2Ev.exit64
  %745 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9, i32 0, i32 0, i32 0
  %746 = load double*, double** %745, align 8, !tbaa !9
  %747 = icmp eq double* %746, null
  br i1 %747, label %_ZNSt6vectorIdSaIdEED2Ev.exit62, label %748

; <label>:748                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit63
  %749 = bitcast double* %746 to i8*
  call void @_ZdlPv(i8* %749) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit62

_ZNSt6vectorIdSaIdEED2Ev.exit62:                  ; preds = %748, %_ZNSt6vectorIdSaIdEED2Ev.exit63
  %750 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8, i32 0, i32 0, i32 0
  %751 = load double*, double** %750, align 8, !tbaa !9
  %752 = icmp eq double* %751, null
  br i1 %752, label %_ZNSt6vectorIdSaIdEED2Ev.exit61, label %753

; <label>:753                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit62
  %754 = bitcast double* %751 to i8*
  call void @_ZdlPv(i8* %754) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit61

_ZNSt6vectorIdSaIdEED2Ev.exit61:                  ; preds = %753, %_ZNSt6vectorIdSaIdEED2Ev.exit62
  %755 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7, i32 0, i32 0, i32 0
  %756 = load double*, double** %755, align 8, !tbaa !9
  %757 = icmp eq double* %756, null
  br i1 %757, label %_ZNSt6vectorIdSaIdEED2Ev.exit60, label %758

; <label>:758                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit61
  %759 = bitcast double* %756 to i8*
  call void @_ZdlPv(i8* %759) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit60

_ZNSt6vectorIdSaIdEED2Ev.exit60:                  ; preds = %758, %_ZNSt6vectorIdSaIdEED2Ev.exit61
  %760 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6, i32 0, i32 0, i32 0
  %761 = load double*, double** %760, align 8, !tbaa !9
  %762 = icmp eq double* %761, null
  br i1 %762, label %_ZNSt6vectorIdSaIdEED2Ev.exit59, label %763

; <label>:763                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit60
  %764 = bitcast double* %761 to i8*
  call void @_ZdlPv(i8* %764) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit59

_ZNSt6vectorIdSaIdEED2Ev.exit59:                  ; preds = %763, %_ZNSt6vectorIdSaIdEED2Ev.exit60
  %765 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5, i32 0, i32 0, i32 0
  %766 = load double*, double** %765, align 8, !tbaa !9
  %767 = icmp eq double* %766, null
  br i1 %767, label %_ZNSt6vectorIdSaIdEED2Ev.exit58, label %768

; <label>:768                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit59
  %769 = bitcast double* %766 to i8*
  call void @_ZdlPv(i8* %769) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit58

_ZNSt6vectorIdSaIdEED2Ev.exit58:                  ; preds = %768, %_ZNSt6vectorIdSaIdEED2Ev.exit59
  %770 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4, i32 0, i32 0, i32 0
  %771 = load double*, double** %770, align 8, !tbaa !9
  %772 = icmp eq double* %771, null
  br i1 %772, label %_ZNSt6vectorIdSaIdEED2Ev.exit57, label %773

; <label>:773                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit58
  %774 = bitcast double* %771 to i8*
  call void @_ZdlPv(i8* %774) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit57

_ZNSt6vectorIdSaIdEED2Ev.exit57:                  ; preds = %773, %_ZNSt6vectorIdSaIdEED2Ev.exit58
  %775 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3, i32 0, i32 0, i32 0
  %776 = load double*, double** %775, align 8, !tbaa !9
  %777 = icmp eq double* %776, null
  br i1 %777, label %_ZNSt6vectorIdSaIdEED2Ev.exit56, label %778

; <label>:778                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit57
  %779 = bitcast double* %776 to i8*
  call void @_ZdlPv(i8* %779) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit56

_ZNSt6vectorIdSaIdEED2Ev.exit56:                  ; preds = %778, %_ZNSt6vectorIdSaIdEED2Ev.exit57
  %780 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %781 = load double*, double** %780, align 8, !tbaa !9
  %782 = icmp eq double* %781, null
  br i1 %782, label %_ZNSt6vectorIdSaIdEED2Ev.exit55, label %783

; <label>:783                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit56
  %784 = bitcast double* %781 to i8*
  call void @_ZdlPv(i8* %784) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit55

_ZNSt6vectorIdSaIdEED2Ev.exit55:                  ; preds = %783, %_ZNSt6vectorIdSaIdEED2Ev.exit56
  %785 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1, i32 0, i32 0, i32 0
  %786 = load double*, double** %785, align 8, !tbaa !9
  %787 = icmp eq double* %786, null
  br i1 %787, label %_ZNSt6vectorIdSaIdEED2Ev.exit54, label %788

; <label>:788                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit55
  %789 = bitcast double* %786 to i8*
  call void @_ZdlPv(i8* %789) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit54

_ZNSt6vectorIdSaIdEED2Ev.exit54:                  ; preds = %788, %_ZNSt6vectorIdSaIdEED2Ev.exit55
  %790 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %791 = load double*, double** %790, align 8, !tbaa !9
  %792 = icmp eq double* %791, null
  br i1 %792, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %793

; <label>:793                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit54
  %794 = bitcast double* %791 to i8*
  call void @_ZdlPv(i8* %794) #2
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %793, %_ZNSt6vectorIdSaIdEED2Ev.exit54
  resume { i8*, i32 } %lpad.phi
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) #9

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* nocapture %this, i32 %numElem) #0 comdat align 2 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21
  %22 = shl nsw i32 %numElem, 3
  %23 = sext i32 %22 to i64
  %24 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24)
  store i32 0, i32* %20, align 4, !tbaa !12
  %25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21, i32 0, i32 0, i32 1
  %26 = bitcast i32** %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !38
  %28 = bitcast %"class.std::vector.0"* %21 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !5
  %30 = sub i64 %27, %29
  %31 = ashr exact i64 %30, 2
  %32 = icmp ugt i64 %23, %31
  %33 = inttoptr i64 %29 to i32*
  br i1 %32, label %34, label %37

; <label>:34                                      ; preds = %0
  %35 = inttoptr i64 %27 to i32*
  %36 = sub nsw i64 %23, %31
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %21, i32* %35, i64 %36, i32* nonnull dereferenceable(4) %20)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

; <label>:37                                      ; preds = %0
  %38 = icmp ult i64 %23, %31
  br i1 %38, label %39, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

; <label>:39                                      ; preds = %37
  %40 = getelementptr inbounds i32, i32* %33, i64 %23
  store i32* %40, i32** %25, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

_ZNSt6vectorIiSaIiEE6resizeEmi.exit:              ; preds = %39, %37, %34
  call void @llvm.lifetime.end(i64 4, i8* %24)
  %41 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22
  %42 = sext i32 %numElem to i64
  %43 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43)
  store i32 0, i32* %19, align 4, !tbaa !12
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22, i32 0, i32 0, i32 1
  %45 = bitcast i32** %44 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !38
  %47 = bitcast %"class.std::vector.0"* %41 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !5
  %49 = sub i64 %46, %48
  %50 = ashr exact i64 %49, 2
  %51 = icmp ugt i64 %42, %50
  %52 = inttoptr i64 %48 to i32*
  br i1 %51, label %53, label %56

; <label>:53                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit
  %54 = inttoptr i64 %46 to i32*
  %55 = sub nsw i64 %42, %50
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %41, i32* %54, i64 %55, i32* nonnull dereferenceable(4) %19)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit1

; <label>:56                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit
  %57 = icmp ult i64 %42, %50
  br i1 %57, label %58, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit1

; <label>:58                                      ; preds = %56
  %59 = getelementptr inbounds i32, i32* %52, i64 %42
  store i32* %59, i32** %44, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit1

_ZNSt6vectorIiSaIiEE6resizeEmi.exit1:             ; preds = %58, %56, %53
  call void @llvm.lifetime.end(i64 4, i8* %43)
  %60 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23
  %61 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61)
  store i32 0, i32* %18, align 4, !tbaa !12
  %62 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23, i32 0, i32 0, i32 1
  %63 = bitcast i32** %62 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !38
  %65 = bitcast %"class.std::vector.0"* %60 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !5
  %67 = sub i64 %64, %66
  %68 = ashr exact i64 %67, 2
  %69 = icmp ugt i64 %42, %68
  %70 = inttoptr i64 %66 to i32*
  br i1 %69, label %71, label %74

; <label>:71                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit1
  %72 = inttoptr i64 %64 to i32*
  %73 = sub nsw i64 %42, %68
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %60, i32* %72, i64 %73, i32* nonnull dereferenceable(4) %18)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit2

; <label>:74                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit1
  %75 = icmp ult i64 %42, %68
  br i1 %75, label %76, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit2

; <label>:76                                      ; preds = %74
  %77 = getelementptr inbounds i32, i32* %70, i64 %42
  store i32* %77, i32** %62, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit2

_ZNSt6vectorIiSaIiEE6resizeEmi.exit2:             ; preds = %76, %74, %71
  call void @llvm.lifetime.end(i64 4, i8* %61)
  %78 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24
  %79 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79)
  store i32 0, i32* %17, align 4, !tbaa !12
  %80 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24, i32 0, i32 0, i32 1
  %81 = bitcast i32** %80 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !38
  %83 = bitcast %"class.std::vector.0"* %78 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !5
  %85 = sub i64 %82, %84
  %86 = ashr exact i64 %85, 2
  %87 = icmp ugt i64 %42, %86
  %88 = inttoptr i64 %84 to i32*
  br i1 %87, label %89, label %92

; <label>:89                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit2
  %90 = inttoptr i64 %82 to i32*
  %91 = sub nsw i64 %42, %86
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %78, i32* %90, i64 %91, i32* nonnull dereferenceable(4) %17)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit3

; <label>:92                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit2
  %93 = icmp ult i64 %42, %86
  br i1 %93, label %94, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit3

; <label>:94                                      ; preds = %92
  %95 = getelementptr inbounds i32, i32* %88, i64 %42
  store i32* %95, i32** %80, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit3

_ZNSt6vectorIiSaIiEE6resizeEmi.exit3:             ; preds = %94, %92, %89
  call void @llvm.lifetime.end(i64 4, i8* %79)
  %96 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25
  %97 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97)
  store i32 0, i32* %16, align 4, !tbaa !12
  %98 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25, i32 0, i32 0, i32 1
  %99 = bitcast i32** %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !38
  %101 = bitcast %"class.std::vector.0"* %96 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !5
  %103 = sub i64 %100, %102
  %104 = ashr exact i64 %103, 2
  %105 = icmp ugt i64 %42, %104
  %106 = inttoptr i64 %102 to i32*
  br i1 %105, label %107, label %110

; <label>:107                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit3
  %108 = inttoptr i64 %100 to i32*
  %109 = sub nsw i64 %42, %104
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %96, i32* %108, i64 %109, i32* nonnull dereferenceable(4) %16)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit4

; <label>:110                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit3
  %111 = icmp ult i64 %42, %104
  br i1 %111, label %112, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit4

; <label>:112                                     ; preds = %110
  %113 = getelementptr inbounds i32, i32* %106, i64 %42
  store i32* %113, i32** %98, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit4

_ZNSt6vectorIiSaIiEE6resizeEmi.exit4:             ; preds = %112, %110, %107
  call void @llvm.lifetime.end(i64 4, i8* %97)
  %114 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26
  %115 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115)
  store i32 0, i32* %15, align 4, !tbaa !12
  %116 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26, i32 0, i32 0, i32 1
  %117 = bitcast i32** %116 to i64*
  %118 = load i64, i64* %117, align 8, !tbaa !38
  %119 = bitcast %"class.std::vector.0"* %114 to i64*
  %120 = load i64, i64* %119, align 8, !tbaa !5
  %121 = sub i64 %118, %120
  %122 = ashr exact i64 %121, 2
  %123 = icmp ugt i64 %42, %122
  %124 = inttoptr i64 %120 to i32*
  br i1 %123, label %125, label %128

; <label>:125                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit4
  %126 = inttoptr i64 %118 to i32*
  %127 = sub nsw i64 %42, %122
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %114, i32* %126, i64 %127, i32* nonnull dereferenceable(4) %15)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit5

; <label>:128                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit4
  %129 = icmp ult i64 %42, %122
  br i1 %129, label %130, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit5

; <label>:130                                     ; preds = %128
  %131 = getelementptr inbounds i32, i32* %124, i64 %42
  store i32* %131, i32** %116, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit5

_ZNSt6vectorIiSaIiEE6resizeEmi.exit5:             ; preds = %130, %128, %125
  call void @llvm.lifetime.end(i64 4, i8* %115)
  %132 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27
  %133 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133)
  store i32 0, i32* %14, align 4, !tbaa !12
  %134 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27, i32 0, i32 0, i32 1
  %135 = bitcast i32** %134 to i64*
  %136 = load i64, i64* %135, align 8, !tbaa !38
  %137 = bitcast %"class.std::vector.0"* %132 to i64*
  %138 = load i64, i64* %137, align 8, !tbaa !5
  %139 = sub i64 %136, %138
  %140 = ashr exact i64 %139, 2
  %141 = icmp ugt i64 %42, %140
  %142 = inttoptr i64 %138 to i32*
  br i1 %141, label %143, label %146

; <label>:143                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit5
  %144 = inttoptr i64 %136 to i32*
  %145 = sub nsw i64 %42, %140
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %132, i32* %144, i64 %145, i32* nonnull dereferenceable(4) %14)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit6

; <label>:146                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit5
  %147 = icmp ult i64 %42, %140
  br i1 %147, label %148, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit6

; <label>:148                                     ; preds = %146
  %149 = getelementptr inbounds i32, i32* %142, i64 %42
  store i32* %149, i32** %134, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit6

_ZNSt6vectorIiSaIiEE6resizeEmi.exit6:             ; preds = %148, %146, %143
  call void @llvm.lifetime.end(i64 4, i8* %133)
  %150 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28
  %151 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151)
  store i32 0, i32* %13, align 4, !tbaa !12
  %152 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28, i32 0, i32 0, i32 1
  %153 = bitcast i32** %152 to i64*
  %154 = load i64, i64* %153, align 8, !tbaa !38
  %155 = bitcast %"class.std::vector.0"* %150 to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !5
  %157 = sub i64 %154, %156
  %158 = ashr exact i64 %157, 2
  %159 = icmp ugt i64 %42, %158
  %160 = inttoptr i64 %156 to i32*
  br i1 %159, label %161, label %164

; <label>:161                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit6
  %162 = inttoptr i64 %154 to i32*
  %163 = sub nsw i64 %42, %158
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %150, i32* %162, i64 %163, i32* nonnull dereferenceable(4) %13)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

; <label>:164                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit6
  %165 = icmp ult i64 %42, %158
  br i1 %165, label %166, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

; <label>:166                                     ; preds = %164
  %167 = getelementptr inbounds i32, i32* %160, i64 %42
  store i32* %167, i32** %152, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

_ZNSt6vectorIiSaIiEE6resizeEmi.exit7:             ; preds = %166, %164, %161
  call void @llvm.lifetime.end(i64 4, i8* %151)
  %168 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38
  %169 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169)
  store double 0.000000e+00, double* %12, align 8, !tbaa !1
  %170 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38, i32 0, i32 0, i32 1
  %171 = bitcast double** %170 to i64*
  %172 = load i64, i64* %171, align 8, !tbaa !42
  %173 = bitcast %"class.std::vector"* %168 to i64*
  %174 = load i64, i64* %173, align 8, !tbaa !9
  %175 = sub i64 %172, %174
  %176 = ashr exact i64 %175, 3
  %177 = icmp ugt i64 %42, %176
  %178 = inttoptr i64 %174 to double*
  br i1 %177, label %179, label %182

; <label>:179                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7
  %180 = inttoptr i64 %172 to double*
  %181 = sub nsw i64 %42, %176
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %168, double* %180, i64 %181, double* nonnull dereferenceable(8) %12)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:182                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7
  %183 = icmp ult i64 %42, %176
  br i1 %183, label %184, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:184                                     ; preds = %182
  %185 = getelementptr inbounds double, double* %178, i64 %42
  store double* %185, double** %170, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

_ZNSt6vectorIdSaIdEE6resizeEmd.exit:              ; preds = %184, %182, %179
  call void @llvm.lifetime.end(i64 8, i8* %169)
  %186 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39
  %187 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187)
  store double 0.000000e+00, double* %11, align 8, !tbaa !1
  %188 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39, i32 0, i32 0, i32 1
  %189 = bitcast double** %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !42
  %191 = bitcast %"class.std::vector"* %186 to i64*
  %192 = load i64, i64* %191, align 8, !tbaa !9
  %193 = sub i64 %190, %192
  %194 = ashr exact i64 %193, 3
  %195 = icmp ugt i64 %42, %194
  %196 = inttoptr i64 %192 to double*
  br i1 %195, label %197, label %200

; <label>:197                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %198 = inttoptr i64 %190 to double*
  %199 = sub nsw i64 %42, %194
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %186, double* %198, i64 %199, double* nonnull dereferenceable(8) %11)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

; <label>:200                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %201 = icmp ult i64 %42, %194
  br i1 %201, label %202, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

; <label>:202                                     ; preds = %200
  %203 = getelementptr inbounds double, double* %196, i64 %42
  store double* %203, double** %188, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

_ZNSt6vectorIdSaIdEE6resizeEmd.exit8:             ; preds = %202, %200, %197
  call void @llvm.lifetime.end(i64 8, i8* %187)
  %204 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40
  %205 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205)
  store double 0.000000e+00, double* %10, align 8, !tbaa !1
  %206 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40, i32 0, i32 0, i32 1
  %207 = bitcast double** %206 to i64*
  %208 = load i64, i64* %207, align 8, !tbaa !42
  %209 = bitcast %"class.std::vector"* %204 to i64*
  %210 = load i64, i64* %209, align 8, !tbaa !9
  %211 = sub i64 %208, %210
  %212 = ashr exact i64 %211, 3
  %213 = icmp ugt i64 %42, %212
  %214 = inttoptr i64 %210 to double*
  br i1 %213, label %215, label %218

; <label>:215                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8
  %216 = inttoptr i64 %208 to double*
  %217 = sub nsw i64 %42, %212
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %204, double* %216, i64 %217, double* nonnull dereferenceable(8) %10)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

; <label>:218                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8
  %219 = icmp ult i64 %42, %212
  br i1 %219, label %220, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

; <label>:220                                     ; preds = %218
  %221 = getelementptr inbounds double, double* %214, i64 %42
  store double* %221, double** %206, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

_ZNSt6vectorIdSaIdEE6resizeEmd.exit9:             ; preds = %220, %218, %215
  call void @llvm.lifetime.end(i64 8, i8* %205)
  %222 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41
  %223 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223)
  store double 0.000000e+00, double* %9, align 8, !tbaa !1
  %224 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41, i32 0, i32 0, i32 1
  %225 = bitcast double** %224 to i64*
  %226 = load i64, i64* %225, align 8, !tbaa !42
  %227 = bitcast %"class.std::vector"* %222 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !9
  %229 = sub i64 %226, %228
  %230 = ashr exact i64 %229, 3
  %231 = icmp ugt i64 %42, %230
  %232 = inttoptr i64 %228 to double*
  br i1 %231, label %233, label %236

; <label>:233                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9
  %234 = inttoptr i64 %226 to double*
  %235 = sub nsw i64 %42, %230
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %222, double* %234, i64 %235, double* nonnull dereferenceable(8) %9)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

; <label>:236                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9
  %237 = icmp ult i64 %42, %230
  br i1 %237, label %238, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

; <label>:238                                     ; preds = %236
  %239 = getelementptr inbounds double, double* %232, i64 %42
  store double* %239, double** %224, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

_ZNSt6vectorIdSaIdEE6resizeEmd.exit10:            ; preds = %238, %236, %233
  call void @llvm.lifetime.end(i64 8, i8* %223)
  %240 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42
  %241 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %241)
  store double 0.000000e+00, double* %8, align 8, !tbaa !1
  %242 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42, i32 0, i32 0, i32 1
  %243 = bitcast double** %242 to i64*
  %244 = load i64, i64* %243, align 8, !tbaa !42
  %245 = bitcast %"class.std::vector"* %240 to i64*
  %246 = load i64, i64* %245, align 8, !tbaa !9
  %247 = sub i64 %244, %246
  %248 = ashr exact i64 %247, 3
  %249 = icmp ugt i64 %42, %248
  %250 = inttoptr i64 %246 to double*
  br i1 %249, label %251, label %254

; <label>:251                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10
  %252 = inttoptr i64 %244 to double*
  %253 = sub nsw i64 %42, %248
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %240, double* %252, i64 %253, double* nonnull dereferenceable(8) %8)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

; <label>:254                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10
  %255 = icmp ult i64 %42, %248
  br i1 %255, label %256, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

; <label>:256                                     ; preds = %254
  %257 = getelementptr inbounds double, double* %250, i64 %42
  store double* %257, double** %242, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

_ZNSt6vectorIdSaIdEE6resizeEmd.exit11:            ; preds = %256, %254, %251
  call void @llvm.lifetime.end(i64 8, i8* %241)
  %258 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43
  %259 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259)
  store double 0.000000e+00, double* %7, align 8, !tbaa !1
  %260 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43, i32 0, i32 0, i32 1
  %261 = bitcast double** %260 to i64*
  %262 = load i64, i64* %261, align 8, !tbaa !42
  %263 = bitcast %"class.std::vector"* %258 to i64*
  %264 = load i64, i64* %263, align 8, !tbaa !9
  %265 = sub i64 %262, %264
  %266 = ashr exact i64 %265, 3
  %267 = icmp ugt i64 %42, %266
  %268 = inttoptr i64 %264 to double*
  br i1 %267, label %269, label %272

; <label>:269                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11
  %270 = inttoptr i64 %262 to double*
  %271 = sub nsw i64 %42, %266
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %258, double* %270, i64 %271, double* nonnull dereferenceable(8) %7)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

; <label>:272                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11
  %273 = icmp ult i64 %42, %266
  br i1 %273, label %274, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

; <label>:274                                     ; preds = %272
  %275 = getelementptr inbounds double, double* %268, i64 %42
  store double* %275, double** %260, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

_ZNSt6vectorIdSaIdEE6resizeEmd.exit12:            ; preds = %274, %272, %269
  call void @llvm.lifetime.end(i64 8, i8* %259)
  %276 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44
  %277 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277)
  store double 0.000000e+00, double* %6, align 8, !tbaa !1
  %278 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44, i32 0, i32 0, i32 1
  %279 = bitcast double** %278 to i64*
  %280 = load i64, i64* %279, align 8, !tbaa !42
  %281 = bitcast %"class.std::vector"* %276 to i64*
  %282 = load i64, i64* %281, align 8, !tbaa !9
  %283 = sub i64 %280, %282
  %284 = ashr exact i64 %283, 3
  %285 = icmp ugt i64 %42, %284
  %286 = inttoptr i64 %282 to double*
  br i1 %285, label %287, label %290

; <label>:287                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12
  %288 = inttoptr i64 %280 to double*
  %289 = sub nsw i64 %42, %284
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %276, double* %288, i64 %289, double* nonnull dereferenceable(8) %6)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit13

; <label>:290                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12
  %291 = icmp ult i64 %42, %284
  br i1 %291, label %292, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit13

; <label>:292                                     ; preds = %290
  %293 = getelementptr inbounds double, double* %286, i64 %42
  store double* %293, double** %278, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit13

_ZNSt6vectorIdSaIdEE6resizeEmd.exit13:            ; preds = %292, %290, %287
  call void @llvm.lifetime.end(i64 8, i8* %277)
  %294 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46
  %295 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %295)
  store double 0.000000e+00, double* %5, align 8, !tbaa !1
  %296 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46, i32 0, i32 0, i32 1
  %297 = bitcast double** %296 to i64*
  %298 = load i64, i64* %297, align 8, !tbaa !42
  %299 = bitcast %"class.std::vector"* %294 to i64*
  %300 = load i64, i64* %299, align 8, !tbaa !9
  %301 = sub i64 %298, %300
  %302 = ashr exact i64 %301, 3
  %303 = icmp ugt i64 %42, %302
  %304 = inttoptr i64 %300 to double*
  br i1 %303, label %305, label %308

; <label>:305                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit13
  %306 = inttoptr i64 %298 to double*
  %307 = sub nsw i64 %42, %302
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %294, double* %306, i64 %307, double* nonnull dereferenceable(8) %5)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit14

; <label>:308                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit13
  %309 = icmp ult i64 %42, %302
  br i1 %309, label %310, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit14

; <label>:310                                     ; preds = %308
  %311 = getelementptr inbounds double, double* %304, i64 %42
  store double* %311, double** %296, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit14

_ZNSt6vectorIdSaIdEE6resizeEmd.exit14:            ; preds = %310, %308, %305
  call void @llvm.lifetime.end(i64 8, i8* %295)
  %312 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47
  %313 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313)
  store double 0.000000e+00, double* %4, align 8, !tbaa !1
  %314 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47, i32 0, i32 0, i32 1
  %315 = bitcast double** %314 to i64*
  %316 = load i64, i64* %315, align 8, !tbaa !42
  %317 = bitcast %"class.std::vector"* %312 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !9
  %319 = sub i64 %316, %318
  %320 = ashr exact i64 %319, 3
  %321 = icmp ugt i64 %42, %320
  %322 = inttoptr i64 %318 to double*
  br i1 %321, label %323, label %326

; <label>:323                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit14
  %324 = inttoptr i64 %316 to double*
  %325 = sub nsw i64 %42, %320
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %312, double* %324, i64 %325, double* nonnull dereferenceable(8) %4)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit15

; <label>:326                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit14
  %327 = icmp ult i64 %42, %320
  br i1 %327, label %328, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit15

; <label>:328                                     ; preds = %326
  %329 = getelementptr inbounds double, double* %322, i64 %42
  store double* %329, double** %314, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit15

_ZNSt6vectorIdSaIdEE6resizeEmd.exit15:            ; preds = %328, %326, %323
  call void @llvm.lifetime.end(i64 8, i8* %313)
  %330 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48
  %331 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %331)
  store double 0.000000e+00, double* %3, align 8, !tbaa !1
  %332 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48, i32 0, i32 0, i32 1
  %333 = bitcast double** %332 to i64*
  %334 = load i64, i64* %333, align 8, !tbaa !42
  %335 = bitcast %"class.std::vector"* %330 to i64*
  %336 = load i64, i64* %335, align 8, !tbaa !9
  %337 = sub i64 %334, %336
  %338 = ashr exact i64 %337, 3
  %339 = icmp ugt i64 %42, %338
  %340 = inttoptr i64 %336 to double*
  br i1 %339, label %341, label %344

; <label>:341                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit15
  %342 = inttoptr i64 %334 to double*
  %343 = sub nsw i64 %42, %338
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %330, double* %342, i64 %343, double* nonnull dereferenceable(8) %3)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit16

; <label>:344                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit15
  %345 = icmp ult i64 %42, %338
  br i1 %345, label %346, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit16

; <label>:346                                     ; preds = %344
  %347 = getelementptr inbounds double, double* %340, i64 %42
  store double* %347, double** %332, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit16

_ZNSt6vectorIdSaIdEE6resizeEmd.exit16:            ; preds = %346, %344, %341
  call void @llvm.lifetime.end(i64 8, i8* %331)
  %348 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49
  %349 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %349)
  store double 0.000000e+00, double* %2, align 8, !tbaa !1
  %350 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49, i32 0, i32 0, i32 1
  %351 = bitcast double** %350 to i64*
  %352 = load i64, i64* %351, align 8, !tbaa !42
  %353 = bitcast %"class.std::vector"* %348 to i64*
  %354 = load i64, i64* %353, align 8, !tbaa !9
  %355 = sub i64 %352, %354
  %356 = ashr exact i64 %355, 3
  %357 = icmp ugt i64 %42, %356
  %358 = inttoptr i64 %354 to double*
  br i1 %357, label %359, label %362

; <label>:359                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit16
  %360 = inttoptr i64 %352 to double*
  %361 = sub nsw i64 %42, %356
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %348, double* %360, i64 %361, double* nonnull dereferenceable(8) %2)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit17

; <label>:362                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit16
  %363 = icmp ult i64 %42, %356
  br i1 %363, label %364, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit17

; <label>:364                                     ; preds = %362
  %365 = getelementptr inbounds double, double* %358, i64 %42
  store double* %365, double** %350, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit17

_ZNSt6vectorIdSaIdEE6resizeEmd.exit17:            ; preds = %364, %362, %359
  call void @llvm.lifetime.end(i64 8, i8* %349)
  %366 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50
  %367 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %367)
  store double 0.000000e+00, double* %1, align 8, !tbaa !1
  %368 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50, i32 0, i32 0, i32 1
  %369 = bitcast double** %368 to i64*
  %370 = load i64, i64* %369, align 8, !tbaa !42
  %371 = bitcast %"class.std::vector"* %366 to i64*
  %372 = load i64, i64* %371, align 8, !tbaa !9
  %373 = sub i64 %370, %372
  %374 = ashr exact i64 %373, 3
  %375 = icmp ugt i64 %42, %374
  %376 = inttoptr i64 %372 to double*
  br i1 %375, label %377, label %380

; <label>:377                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit17
  %378 = inttoptr i64 %370 to double*
  %379 = sub nsw i64 %42, %374
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %366, double* %378, i64 %379, double* nonnull dereferenceable(8) %1)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit18

; <label>:380                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit17
  %381 = icmp ult i64 %42, %374
  br i1 %381, label %382, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit18

; <label>:382                                     ; preds = %380
  %383 = getelementptr inbounds double, double* %376, i64 %42
  store double* %383, double** %368, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit18

_ZNSt6vectorIdSaIdEE6resizeEmd.exit18:            ; preds = %382, %380, %377
  call void @llvm.lifetime.end(i64 8, i8* %367)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nocapture %this, i32* %__position.coerce, i64 %__n, i32* nocapture readonly dereferenceable(4) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = ptrtoint i32* %__position.coerce to i64
  %2 = icmp eq i64 %__n, 0
  br i1 %2, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 2
  %5 = bitcast i32** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = bitcast i32** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = sub i64 %6, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp ult i64 %11, %__n
  %13 = inttoptr i64 %9 to i32*
  br i1 %12, label %154, label %14

; <label>:14                                      ; preds = %3
  %15 = load i32, i32* %__x, align 4, !tbaa !12
  %16 = sub i64 %9, %1
  %17 = ashr exact i64 %16, 2
  %18 = icmp ugt i64 %17, %__n
  br i1 %18, label %19, label %73

; <label>:19                                      ; preds = %14
  %20 = sub i64 0, %__n
  %21 = getelementptr inbounds i32, i32* %13, i64 %20
  %22 = ptrtoint i32* %21 to i64
  %diff.neg = shl i64 %__n, 2
  %23 = icmp eq i64 %diff.neg, 0
  br i1 %23, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit, label %24

; <label>:24                                      ; preds = %19
  %25 = inttoptr i64 %9 to i8*
  %26 = bitcast i32* %21 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %diff.neg, i32 4, i1 false) #2
  %.pre17 = load i32*, i32** %7, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %24, %19
  %27 = phi i32* [ %13, %19 ], [ %.pre17, %24 ]
  %28 = getelementptr inbounds i32, i32* %27, i64 %__n
  store i32* %28, i32** %7, align 8, !tbaa !38
  %29 = sub i64 %22, %1
  %30 = ashr exact i64 %29, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.lr.ph.i.i12.preheader, label %32

; <label>:32                                      ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %.pre.i.i.i.i = sub nsw i64 0, %30
  %.pre1.i.i.i.i = getelementptr inbounds i32, i32* %13, i64 %.pre.i.i.i.i
  %33 = bitcast i32* %.pre1.i.i.i.i to i8*
  %34 = bitcast i32* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %29, i32 4, i1 false) #2
  br label %.lr.ph.i.i12.preheader

.lr.ph.i.i12.preheader:                           ; preds = %32, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %35 = getelementptr inbounds i32, i32* %__position.coerce, i64 %__n
  %36 = add i64 %diff.neg, -4
  %37 = lshr exact i64 %36, 2
  %38 = add nuw nsw i64 %37, 1
  %min.iters.check80 = icmp ult i64 %38, 8
  br i1 %min.iters.check80, label %.lr.ph.i.i12.preheader150, label %min.iters.checked81

min.iters.checked81:                              ; preds = %.lr.ph.i.i12.preheader
  %n.vec83 = and i64 %38, 9223372036854775800
  %cmp.zero84 = icmp eq i64 %n.vec83, 0
  %ind.end89 = getelementptr i32, i32* %__position.coerce, i64 %n.vec83
  br i1 %cmp.zero84, label %.lr.ph.i.i12.preheader150, label %vector.ph85

vector.ph85:                                      ; preds = %min.iters.checked81
  %broadcast.splatinsert107 = insertelement <4 x i32> undef, i32 %15, i32 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> undef, <4 x i32> zeroinitializer
  %39 = add nsw i64 %n.vec83, -8
  %40 = lshr exact i64 %39, 3
  %41 = add nuw nsw i64 %40, 1
  %xtraiter154 = and i64 %41, 7
  %lcmp.mod155 = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155, label %vector.ph85.split, label %vector.body77.prol.preheader

vector.body77.prol.preheader:                     ; preds = %vector.ph85
  br label %vector.body77.prol

vector.body77.prol:                               ; preds = %vector.body77.prol, %vector.body77.prol.preheader
  %index86.prol = phi i64 [ %index.next87.prol, %vector.body77.prol ], [ 0, %vector.body77.prol.preheader ]
  %prol.iter156 = phi i64 [ %prol.iter156.sub, %vector.body77.prol ], [ %xtraiter154, %vector.body77.prol.preheader ]
  %next.gep91.prol = getelementptr i32, i32* %__position.coerce, i64 %index86.prol
  %42 = bitcast i32* %next.gep91.prol to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %42, align 4, !tbaa !12
  %43 = getelementptr i32, i32* %next.gep91.prol, i64 4
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %44, align 4, !tbaa !12
  %index.next87.prol = add i64 %index86.prol, 8
  %prol.iter156.sub = add i64 %prol.iter156, -1
  %prol.iter156.cmp = icmp eq i64 %prol.iter156.sub, 0
  br i1 %prol.iter156.cmp, label %vector.ph85.split.loopexit, label %vector.body77.prol, !llvm.loop !103

vector.ph85.split.loopexit:                       ; preds = %vector.body77.prol
  br label %vector.ph85.split

vector.ph85.split:                                ; preds = %vector.ph85.split.loopexit, %vector.ph85
  %index86.unr = phi i64 [ 0, %vector.ph85 ], [ %index.next87.prol, %vector.ph85.split.loopexit ]
  %45 = icmp ult i64 %39, 56
  br i1 %45, label %middle.block78, label %vector.ph85.split.split

vector.ph85.split.split:                          ; preds = %vector.ph85.split
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph85.split.split
  %index86 = phi i64 [ %index86.unr, %vector.ph85.split.split ], [ %index.next87.7, %vector.body77 ]
  %next.gep91 = getelementptr i32, i32* %__position.coerce, i64 %index86
  %46 = bitcast i32* %next.gep91 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %46, align 4, !tbaa !12
  %47 = getelementptr i32, i32* %next.gep91, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %48, align 4, !tbaa !12
  %index.next87 = add i64 %index86, 8
  %next.gep91.1 = getelementptr i32, i32* %__position.coerce, i64 %index.next87
  %49 = bitcast i32* %next.gep91.1 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %49, align 4, !tbaa !12
  %50 = getelementptr i32, i32* %next.gep91.1, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %51, align 4, !tbaa !12
  %index.next87.1 = add i64 %index86, 16
  %next.gep91.2 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.1
  %52 = bitcast i32* %next.gep91.2 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %52, align 4, !tbaa !12
  %53 = getelementptr i32, i32* %next.gep91.2, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %54, align 4, !tbaa !12
  %index.next87.2 = add i64 %index86, 24
  %next.gep91.3 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.2
  %55 = bitcast i32* %next.gep91.3 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %55, align 4, !tbaa !12
  %56 = getelementptr i32, i32* %next.gep91.3, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %57, align 4, !tbaa !12
  %index.next87.3 = add i64 %index86, 32
  %next.gep91.4 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.3
  %58 = bitcast i32* %next.gep91.4 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %58, align 4, !tbaa !12
  %59 = getelementptr i32, i32* %next.gep91.4, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %60, align 4, !tbaa !12
  %index.next87.4 = add i64 %index86, 40
  %next.gep91.5 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.4
  %61 = bitcast i32* %next.gep91.5 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %61, align 4, !tbaa !12
  %62 = getelementptr i32, i32* %next.gep91.5, i64 4
  %63 = bitcast i32* %62 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %63, align 4, !tbaa !12
  %index.next87.5 = add i64 %index86, 48
  %next.gep91.6 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.5
  %64 = bitcast i32* %next.gep91.6 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %64, align 4, !tbaa !12
  %65 = getelementptr i32, i32* %next.gep91.6, i64 4
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %66, align 4, !tbaa !12
  %index.next87.6 = add i64 %index86, 56
  %next.gep91.7 = getelementptr i32, i32* %__position.coerce, i64 %index.next87.6
  %67 = bitcast i32* %next.gep91.7 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %67, align 4, !tbaa !12
  %68 = getelementptr i32, i32* %next.gep91.7, i64 4
  %69 = bitcast i32* %68 to <4 x i32>*
  store <4 x i32> %broadcast.splat108, <4 x i32>* %69, align 4, !tbaa !12
  %index.next87.7 = add i64 %index86, 64
  %70 = icmp eq i64 %index.next87.7, %n.vec83
  br i1 %70, label %middle.block78.unr-lcssa, label %vector.body77, !llvm.loop !104

middle.block78.unr-lcssa:                         ; preds = %vector.body77
  br label %middle.block78

middle.block78:                                   ; preds = %middle.block78.unr-lcssa, %vector.ph85.split
  %cmp.n90 = icmp eq i64 %38, %n.vec83
  br i1 %cmp.n90, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13, label %.lr.ph.i.i12.preheader150

.lr.ph.i.i12.preheader150:                        ; preds = %middle.block78, %min.iters.checked81, %.lr.ph.i.i12.preheader
  %.01.i.i11.ph = phi i32* [ %__position.coerce, %min.iters.checked81 ], [ %__position.coerce, %.lr.ph.i.i12.preheader ], [ %ind.end89, %middle.block78 ]
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i.i12, %.lr.ph.i.i12.preheader150
  %.01.i.i11 = phi i32* [ %71, %.lr.ph.i.i12 ], [ %.01.i.i11.ph, %.lr.ph.i.i12.preheader150 ]
  store i32 %15, i32* %.01.i.i11, align 4, !tbaa !12
  %71 = getelementptr inbounds i32, i32* %.01.i.i11, i64 1
  %72 = icmp eq i32* %71, %35
  br i1 %72, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit, label %.lr.ph.i.i12, !llvm.loop !105

; <label>:73                                      ; preds = %14
  %74 = sub i64 %__n, %17
  %75 = icmp eq i64 %17, %__n
  br i1 %75, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit10, label %.lr.ph.i.i.i.i.i8.preheader

.lr.ph.i.i.i.i.i8.preheader:                      ; preds = %73
  %min.iters.check = icmp ult i64 %74, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i8.preheader153, label %min.iters.checked

.lr.ph.i.i.i.i.i8.preheader153:                   ; preds = %middle.block, %min.iters.checked, %.lr.ph.i.i.i.i.i8.preheader
  %__niter.02.i.i.i.i.i6.ph = phi i64 [ %74, %min.iters.checked ], [ %74, %.lr.ph.i.i.i.i.i8.preheader ], [ %ind.end, %middle.block ]
  %.01.i.i.i.i.i7.ph = phi i32* [ %13, %min.iters.checked ], [ %13, %.lr.ph.i.i.i.i.i8.preheader ], [ %ind.end23, %middle.block ]
  br label %.lr.ph.i.i.i.i.i8

min.iters.checked:                                ; preds = %.lr.ph.i.i.i.i.i8.preheader
  %n.vec = and i64 %74, -8
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = sub i64 %74, %n.vec
  %ind.end23 = getelementptr i32, i32* %13, i64 %n.vec
  br i1 %cmp.zero, label %.lr.ph.i.i.i.i.i8.preheader153, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert39 = insertelement <4 x i32> undef, i32 %15, i32 0
  %broadcast.splat40 = shufflevector <4 x i32> %broadcast.splatinsert39, <4 x i32> undef, <4 x i32> zeroinitializer
  %76 = add i64 %74, -8
  %77 = lshr i64 %76, 3
  %78 = add nuw nsw i64 %77, 1
  %xtraiter160 = and i64 %78, 7
  %lcmp.mod161 = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161, label %vector.ph.split, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.ph
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter162 = phi i64 [ %prol.iter162.sub, %vector.body.prol ], [ %xtraiter160, %vector.body.prol.preheader ]
  %next.gep.prol = getelementptr i32, i32* %13, i64 %index.prol
  %79 = bitcast i32* %next.gep.prol to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %79, align 4, !tbaa !12
  %80 = getelementptr i32, i32* %next.gep.prol, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %81, align 4, !tbaa !12
  %index.next.prol = add i64 %index.prol, 8
  %prol.iter162.sub = add i64 %prol.iter162, -1
  %prol.iter162.cmp = icmp eq i64 %prol.iter162.sub, 0
  br i1 %prol.iter162.cmp, label %vector.ph.split.loopexit, label %vector.body.prol, !llvm.loop !106

vector.ph.split.loopexit:                         ; preds = %vector.body.prol
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.ph.split.loopexit, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.prol, %vector.ph.split.loopexit ]
  %82 = icmp ult i64 %76, 56
  br i1 %82, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.7, %vector.body ]
  %next.gep = getelementptr i32, i32* %13, i64 %index
  %83 = bitcast i32* %next.gep to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %83, align 4, !tbaa !12
  %84 = getelementptr i32, i32* %next.gep, i64 4
  %85 = bitcast i32* %84 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %85, align 4, !tbaa !12
  %index.next = add i64 %index, 8
  %next.gep.1 = getelementptr i32, i32* %13, i64 %index.next
  %86 = bitcast i32* %next.gep.1 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %86, align 4, !tbaa !12
  %87 = getelementptr i32, i32* %next.gep.1, i64 4
  %88 = bitcast i32* %87 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %88, align 4, !tbaa !12
  %index.next.1 = add i64 %index, 16
  %next.gep.2 = getelementptr i32, i32* %13, i64 %index.next.1
  %89 = bitcast i32* %next.gep.2 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %89, align 4, !tbaa !12
  %90 = getelementptr i32, i32* %next.gep.2, i64 4
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %91, align 4, !tbaa !12
  %index.next.2 = add i64 %index, 24
  %next.gep.3 = getelementptr i32, i32* %13, i64 %index.next.2
  %92 = bitcast i32* %next.gep.3 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %92, align 4, !tbaa !12
  %93 = getelementptr i32, i32* %next.gep.3, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %94, align 4, !tbaa !12
  %index.next.3 = add i64 %index, 32
  %next.gep.4 = getelementptr i32, i32* %13, i64 %index.next.3
  %95 = bitcast i32* %next.gep.4 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %95, align 4, !tbaa !12
  %96 = getelementptr i32, i32* %next.gep.4, i64 4
  %97 = bitcast i32* %96 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %97, align 4, !tbaa !12
  %index.next.4 = add i64 %index, 40
  %next.gep.5 = getelementptr i32, i32* %13, i64 %index.next.4
  %98 = bitcast i32* %next.gep.5 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %98, align 4, !tbaa !12
  %99 = getelementptr i32, i32* %next.gep.5, i64 4
  %100 = bitcast i32* %99 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %100, align 4, !tbaa !12
  %index.next.5 = add i64 %index, 48
  %next.gep.6 = getelementptr i32, i32* %13, i64 %index.next.5
  %101 = bitcast i32* %next.gep.6 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %101, align 4, !tbaa !12
  %102 = getelementptr i32, i32* %next.gep.6, i64 4
  %103 = bitcast i32* %102 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %103, align 4, !tbaa !12
  %index.next.6 = add i64 %index, 56
  %next.gep.7 = getelementptr i32, i32* %13, i64 %index.next.6
  %104 = bitcast i32* %next.gep.7 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %104, align 4, !tbaa !12
  %105 = getelementptr i32, i32* %next.gep.7, i64 4
  %106 = bitcast i32* %105 to <4 x i32>*
  store <4 x i32> %broadcast.splat40, <4 x i32>* %106, align 4, !tbaa !12
  %index.next.7 = add i64 %index, 64
  %107 = icmp eq i64 %index.next.7, %n.vec
  br i1 %107, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !107

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.ph.split
  %cmp.n = icmp eq i64 %74, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i.i.i5, label %.lr.ph.i.i.i.i.i8.preheader153

._crit_edge.loopexit.i.i.i.i.i5.loopexit:         ; preds = %.lr.ph.i.i.i.i.i8
  br label %._crit_edge.loopexit.i.i.i.i.i5

._crit_edge.loopexit.i.i.i.i.i5:                  ; preds = %._crit_edge.loopexit.i.i.i.i.i5.loopexit, %middle.block
  %scevgep.i.i.i.i.i4 = getelementptr i32, i32* %13, i64 %74
  br label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit10

.lr.ph.i.i.i.i.i8:                                ; preds = %.lr.ph.i.i.i.i.i8, %.lr.ph.i.i.i.i.i8.preheader153
  %__niter.02.i.i.i.i.i6 = phi i64 [ %108, %.lr.ph.i.i.i.i.i8 ], [ %__niter.02.i.i.i.i.i6.ph, %.lr.ph.i.i.i.i.i8.preheader153 ]
  %.01.i.i.i.i.i7 = phi i32* [ %109, %.lr.ph.i.i.i.i.i8 ], [ %.01.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i8.preheader153 ]
  store i32 %15, i32* %.01.i.i.i.i.i7, align 4, !tbaa !12
  %108 = add i64 %__niter.02.i.i.i.i.i6, -1
  %109 = getelementptr inbounds i32, i32* %.01.i.i.i.i.i7, i64 1
  %110 = icmp eq i64 %108, 0
  br i1 %110, label %._crit_edge.loopexit.i.i.i.i.i5.loopexit, label %.lr.ph.i.i.i.i.i8, !llvm.loop !108

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit10: ; preds = %._crit_edge.loopexit.i.i.i.i.i5, %73
  %.0.lcssa.i.i.i.i.i9 = phi i32* [ %13, %73 ], [ %scevgep.i.i.i.i.i4, %._crit_edge.loopexit.i.i.i.i.i5 ]
  store i32* %.0.lcssa.i.i.i.i.i9, i32** %7, align 8, !tbaa !38
  %111 = icmp eq i32* %13, %__position.coerce
  br i1 %111, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit3.thread, label %.lr.ph.i.i.preheader

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit3.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit10
  %112 = getelementptr inbounds i32, i32* %.0.lcssa.i.i.i.i.i9, i64 %17
  store i32* %112, i32** %7, align 8, !tbaa !38
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13

.lr.ph.i.i.preheader:                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit10
  %113 = bitcast i32* %.0.lcssa.i.i.i.i.i9 to i8*
  %114 = bitcast i32* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %113, i8* %114, i64 %16, i32 4, i1 false) #2
  %.pre19 = load i32*, i32** %7, align 8, !tbaa !38
  %115 = getelementptr inbounds i32, i32* %.pre19, i64 %17
  store i32* %115, i32** %7, align 8, !tbaa !38
  %scevgep = getelementptr i32, i32* %13, i64 -1
  %116 = ptrtoint i32* %scevgep to i64
  %117 = sub i64 %116, %1
  %118 = lshr i64 %117, 2
  %119 = add nuw nsw i64 %118, 1
  %min.iters.check46 = icmp ult i64 %119, 8
  br i1 %min.iters.check46, label %.lr.ph.i.i.preheader151, label %min.iters.checked47

min.iters.checked47:                              ; preds = %.lr.ph.i.i.preheader
  %n.vec49 = and i64 %119, 9223372036854775800
  %cmp.zero50 = icmp eq i64 %n.vec49, 0
  %ind.end55 = getelementptr i32, i32* %__position.coerce, i64 %n.vec49
  br i1 %cmp.zero50, label %.lr.ph.i.i.preheader151, label %vector.ph51

vector.ph51:                                      ; preds = %min.iters.checked47
  %broadcast.splatinsert73 = insertelement <4 x i32> undef, i32 %15, i32 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> undef, <4 x i32> zeroinitializer
  %120 = add nsw i64 %n.vec49, -8
  %121 = lshr exact i64 %120, 3
  %122 = add nuw nsw i64 %121, 1
  %xtraiter157 = and i64 %122, 7
  %lcmp.mod158 = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158, label %vector.ph51.split, label %vector.body41.prol.preheader

vector.body41.prol.preheader:                     ; preds = %vector.ph51
  br label %vector.body41.prol

vector.body41.prol:                               ; preds = %vector.body41.prol, %vector.body41.prol.preheader
  %index52.prol = phi i64 [ %index.next53.prol, %vector.body41.prol ], [ 0, %vector.body41.prol.preheader ]
  %prol.iter159 = phi i64 [ %prol.iter159.sub, %vector.body41.prol ], [ %xtraiter157, %vector.body41.prol.preheader ]
  %next.gep57.prol = getelementptr i32, i32* %__position.coerce, i64 %index52.prol
  %123 = bitcast i32* %next.gep57.prol to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %123, align 4, !tbaa !12
  %124 = getelementptr i32, i32* %next.gep57.prol, i64 4
  %125 = bitcast i32* %124 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %125, align 4, !tbaa !12
  %index.next53.prol = add i64 %index52.prol, 8
  %prol.iter159.sub = add i64 %prol.iter159, -1
  %prol.iter159.cmp = icmp eq i64 %prol.iter159.sub, 0
  br i1 %prol.iter159.cmp, label %vector.ph51.split.loopexit, label %vector.body41.prol, !llvm.loop !109

vector.ph51.split.loopexit:                       ; preds = %vector.body41.prol
  br label %vector.ph51.split

vector.ph51.split:                                ; preds = %vector.ph51.split.loopexit, %vector.ph51
  %index52.unr = phi i64 [ 0, %vector.ph51 ], [ %index.next53.prol, %vector.ph51.split.loopexit ]
  %126 = icmp ult i64 %120, 56
  br i1 %126, label %middle.block42, label %vector.ph51.split.split

vector.ph51.split.split:                          ; preds = %vector.ph51.split
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph51.split.split
  %index52 = phi i64 [ %index52.unr, %vector.ph51.split.split ], [ %index.next53.7, %vector.body41 ]
  %next.gep57 = getelementptr i32, i32* %__position.coerce, i64 %index52
  %127 = bitcast i32* %next.gep57 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %127, align 4, !tbaa !12
  %128 = getelementptr i32, i32* %next.gep57, i64 4
  %129 = bitcast i32* %128 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %129, align 4, !tbaa !12
  %index.next53 = add i64 %index52, 8
  %next.gep57.1 = getelementptr i32, i32* %__position.coerce, i64 %index.next53
  %130 = bitcast i32* %next.gep57.1 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %130, align 4, !tbaa !12
  %131 = getelementptr i32, i32* %next.gep57.1, i64 4
  %132 = bitcast i32* %131 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %132, align 4, !tbaa !12
  %index.next53.1 = add i64 %index52, 16
  %next.gep57.2 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.1
  %133 = bitcast i32* %next.gep57.2 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %133, align 4, !tbaa !12
  %134 = getelementptr i32, i32* %next.gep57.2, i64 4
  %135 = bitcast i32* %134 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %135, align 4, !tbaa !12
  %index.next53.2 = add i64 %index52, 24
  %next.gep57.3 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.2
  %136 = bitcast i32* %next.gep57.3 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %136, align 4, !tbaa !12
  %137 = getelementptr i32, i32* %next.gep57.3, i64 4
  %138 = bitcast i32* %137 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %138, align 4, !tbaa !12
  %index.next53.3 = add i64 %index52, 32
  %next.gep57.4 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.3
  %139 = bitcast i32* %next.gep57.4 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %139, align 4, !tbaa !12
  %140 = getelementptr i32, i32* %next.gep57.4, i64 4
  %141 = bitcast i32* %140 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %141, align 4, !tbaa !12
  %index.next53.4 = add i64 %index52, 40
  %next.gep57.5 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.4
  %142 = bitcast i32* %next.gep57.5 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %142, align 4, !tbaa !12
  %143 = getelementptr i32, i32* %next.gep57.5, i64 4
  %144 = bitcast i32* %143 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %144, align 4, !tbaa !12
  %index.next53.5 = add i64 %index52, 48
  %next.gep57.6 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.5
  %145 = bitcast i32* %next.gep57.6 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %145, align 4, !tbaa !12
  %146 = getelementptr i32, i32* %next.gep57.6, i64 4
  %147 = bitcast i32* %146 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %147, align 4, !tbaa !12
  %index.next53.6 = add i64 %index52, 56
  %next.gep57.7 = getelementptr i32, i32* %__position.coerce, i64 %index.next53.6
  %148 = bitcast i32* %next.gep57.7 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %148, align 4, !tbaa !12
  %149 = getelementptr i32, i32* %next.gep57.7, i64 4
  %150 = bitcast i32* %149 to <4 x i32>*
  store <4 x i32> %broadcast.splat74, <4 x i32>* %150, align 4, !tbaa !12
  %index.next53.7 = add i64 %index52, 64
  %151 = icmp eq i64 %index.next53.7, %n.vec49
  br i1 %151, label %middle.block42.unr-lcssa, label %vector.body41, !llvm.loop !110

middle.block42.unr-lcssa:                         ; preds = %vector.body41
  br label %middle.block42

middle.block42:                                   ; preds = %middle.block42.unr-lcssa, %vector.ph51.split
  %cmp.n56 = icmp eq i64 %119, %n.vec49
  br i1 %cmp.n56, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13, label %.lr.ph.i.i.preheader151

.lr.ph.i.i.preheader151:                          ; preds = %middle.block42, %min.iters.checked47, %.lr.ph.i.i.preheader
  %.01.i.i.ph = phi i32* [ %__position.coerce, %min.iters.checked47 ], [ %__position.coerce, %.lr.ph.i.i.preheader ], [ %ind.end55, %middle.block42 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader151
  %.01.i.i = phi i32* [ %152, %.lr.ph.i.i ], [ %.01.i.i.ph, %.lr.ph.i.i.preheader151 ]
  store i32 %15, i32* %.01.i.i, align 4, !tbaa !12
  %152 = getelementptr inbounds i32, i32* %.01.i.i, i64 1
  %153 = icmp eq i32* %152, %13
  br i1 %153, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit152, label %.lr.ph.i.i, !llvm.loop !111

; <label>:154                                     ; preds = %3
  %155 = bitcast %"class.std::vector.0"* %this to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !5
  %157 = sub i64 %9, %156
  %158 = ashr exact i64 %157, 2
  %159 = sub nsw i64 4611686018427387903, %158
  %160 = icmp ult i64 %159, %__n
  br i1 %160, label %161, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

; <label>:161                                     ; preds = %154
  tail call void @_ZSt20__throw_length_errorPKc(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.23, i64 0, i64 0)) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %154
  %162 = icmp ult i64 %158, %__n
  %163 = select i1 %162, i64 %__n, i64 %158
  %164 = add i64 %163, %158
  %165 = icmp ult i64 %164, %158
  %166 = icmp ugt i64 %164, 4611686018427387903
  %or.cond.i = or i1 %165, %166
  %167 = select i1 %or.cond.i, i64 4611686018427387903, i64 %164
  %168 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %169 = sub i64 %1, %156
  %170 = ashr exact i64 %169, 2
  %171 = icmp eq i64 %167, 0
  br i1 %171, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %172

; <label>:172                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %173 = icmp ugt i64 %167, 4611686018427387903
  br i1 %173, label %174, label %_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m.exit.i

; <label>:174                                     ; preds = %172
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m.exit.i: ; preds = %172
  %175 = shl i64 %167, 2
  %176 = tail call noalias i8* @_Znwm(i64 %175)
  %177 = bitcast i8* %176 to i32*
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %178 = phi i32* [ %177, %_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m.exit.i ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ]
  %179 = getelementptr inbounds i32, i32* %178, i64 %170
  %180 = load i32, i32* %__x, align 4, !tbaa !12
  %min.iters.check114 = icmp ult i64 %__n, 8
  br i1 %min.iters.check114, label %.lr.ph.i.i.i.i.i.preheader, label %min.iters.checked115

min.iters.checked115:                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %n.vec117 = and i64 %__n, -8
  %cmp.zero118 = icmp eq i64 %n.vec117, 0
  %ind.end123 = sub i64 %__n, %n.vec117
  %ind.end125 = getelementptr i32, i32* %179, i64 %n.vec117
  br i1 %cmp.zero118, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %min.iters.checked115
  %broadcast.splatinsert148 = insertelement <4 x i32> undef, i32 %180, i32 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> undef, <4 x i32> zeroinitializer
  %181 = add i64 %__n, -8
  %182 = lshr i64 %181, 3
  %183 = add nuw nsw i64 %182, 1
  %xtraiter = and i64 %183, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.ph119.split, label %vector.body111.prol.preheader

vector.body111.prol.preheader:                    ; preds = %vector.ph119
  br label %vector.body111.prol

vector.body111.prol:                              ; preds = %vector.body111.prol, %vector.body111.prol.preheader
  %index120.prol = phi i64 [ %index.next121.prol, %vector.body111.prol ], [ 0, %vector.body111.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body111.prol ], [ %xtraiter, %vector.body111.prol.preheader ]
  %next.gep132.prol = getelementptr i32, i32* %179, i64 %index120.prol
  %184 = bitcast i32* %next.gep132.prol to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %184, align 4, !tbaa !12
  %185 = getelementptr i32, i32* %next.gep132.prol, i64 4
  %186 = bitcast i32* %185 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %186, align 4, !tbaa !12
  %index.next121.prol = add i64 %index120.prol, 8
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph119.split.loopexit, label %vector.body111.prol, !llvm.loop !112

vector.ph119.split.loopexit:                      ; preds = %vector.body111.prol
  br label %vector.ph119.split

vector.ph119.split:                               ; preds = %vector.ph119.split.loopexit, %vector.ph119
  %index120.unr = phi i64 [ 0, %vector.ph119 ], [ %index.next121.prol, %vector.ph119.split.loopexit ]
  %187 = icmp ult i64 %181, 56
  br i1 %187, label %middle.block112, label %vector.ph119.split.split

vector.ph119.split.split:                         ; preds = %vector.ph119.split
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph119.split.split
  %index120 = phi i64 [ %index120.unr, %vector.ph119.split.split ], [ %index.next121.7, %vector.body111 ]
  %next.gep132 = getelementptr i32, i32* %179, i64 %index120
  %188 = bitcast i32* %next.gep132 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %188, align 4, !tbaa !12
  %189 = getelementptr i32, i32* %next.gep132, i64 4
  %190 = bitcast i32* %189 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %190, align 4, !tbaa !12
  %index.next121 = add i64 %index120, 8
  %next.gep132.1 = getelementptr i32, i32* %179, i64 %index.next121
  %191 = bitcast i32* %next.gep132.1 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %191, align 4, !tbaa !12
  %192 = getelementptr i32, i32* %next.gep132.1, i64 4
  %193 = bitcast i32* %192 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %193, align 4, !tbaa !12
  %index.next121.1 = add i64 %index120, 16
  %next.gep132.2 = getelementptr i32, i32* %179, i64 %index.next121.1
  %194 = bitcast i32* %next.gep132.2 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %194, align 4, !tbaa !12
  %195 = getelementptr i32, i32* %next.gep132.2, i64 4
  %196 = bitcast i32* %195 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %196, align 4, !tbaa !12
  %index.next121.2 = add i64 %index120, 24
  %next.gep132.3 = getelementptr i32, i32* %179, i64 %index.next121.2
  %197 = bitcast i32* %next.gep132.3 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %197, align 4, !tbaa !12
  %198 = getelementptr i32, i32* %next.gep132.3, i64 4
  %199 = bitcast i32* %198 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %199, align 4, !tbaa !12
  %index.next121.3 = add i64 %index120, 32
  %next.gep132.4 = getelementptr i32, i32* %179, i64 %index.next121.3
  %200 = bitcast i32* %next.gep132.4 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %200, align 4, !tbaa !12
  %201 = getelementptr i32, i32* %next.gep132.4, i64 4
  %202 = bitcast i32* %201 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %202, align 4, !tbaa !12
  %index.next121.4 = add i64 %index120, 40
  %next.gep132.5 = getelementptr i32, i32* %179, i64 %index.next121.4
  %203 = bitcast i32* %next.gep132.5 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %203, align 4, !tbaa !12
  %204 = getelementptr i32, i32* %next.gep132.5, i64 4
  %205 = bitcast i32* %204 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %205, align 4, !tbaa !12
  %index.next121.5 = add i64 %index120, 48
  %next.gep132.6 = getelementptr i32, i32* %179, i64 %index.next121.5
  %206 = bitcast i32* %next.gep132.6 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %206, align 4, !tbaa !12
  %207 = getelementptr i32, i32* %next.gep132.6, i64 4
  %208 = bitcast i32* %207 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %208, align 4, !tbaa !12
  %index.next121.6 = add i64 %index120, 56
  %next.gep132.7 = getelementptr i32, i32* %179, i64 %index.next121.6
  %209 = bitcast i32* %next.gep132.7 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %209, align 4, !tbaa !12
  %210 = getelementptr i32, i32* %next.gep132.7, i64 4
  %211 = bitcast i32* %210 to <4 x i32>*
  store <4 x i32> %broadcast.splat149, <4 x i32>* %211, align 4, !tbaa !12
  %index.next121.7 = add i64 %index120, 64
  %212 = icmp eq i64 %index.next121.7, %n.vec117
  br i1 %212, label %middle.block112.unr-lcssa, label %vector.body111, !llvm.loop !113

middle.block112.unr-lcssa:                        ; preds = %vector.body111
  br label %middle.block112

middle.block112:                                  ; preds = %middle.block112.unr-lcssa, %vector.ph119.split
  %cmp.n126 = icmp eq i64 %n.vec117, %__n
  br i1 %cmp.n126, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %middle.block112, %min.iters.checked115, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %__niter.02.i.i.i.i.i.ph = phi i64 [ %__n, %min.iters.checked115 ], [ %__n, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit ], [ %ind.end123, %middle.block112 ]
  %.01.i.i.i.i.i.ph = phi i32* [ %179, %min.iters.checked115 ], [ %179, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit ], [ %ind.end125, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader
  %__niter.02.i.i.i.i.i = phi i64 [ %213, %.lr.ph.i.i.i.i.i ], [ %__niter.02.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01.i.i.i.i.i = phi i32* [ %214, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i32 %180, i32* %.01.i.i.i.i.i, align 4, !tbaa !12
  %213 = add i64 %__niter.02.i.i.i.i.i, -1
  %214 = getelementptr inbounds i32, i32* %.01.i.i.i.i.i, i64 1
  %215 = icmp eq i64 %213, 0
  br i1 %215, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !114

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  br label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.loopexit, %middle.block112
  %216 = load i32*, i32** %168, align 8, !tbaa !5
  %217 = ptrtoint i32* %216 to i64
  %218 = sub i64 %1, %217
  %219 = ashr exact i64 %218, 2
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %224, label %221

; <label>:221                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %222 = bitcast i32* %178 to i8*
  %223 = bitcast i32* %216 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %222, i8* %223, i64 %218, i32 4, i1 false) #2
  br label %224

; <label>:224                                     ; preds = %221, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %225 = getelementptr inbounds i32, i32* %178, i64 %219
  %226 = getelementptr inbounds i32, i32* %225, i64 %__n
  %227 = load i64, i64* %8, align 8, !tbaa !38
  %228 = sub i64 %227, %1
  %229 = ashr exact i64 %228, 2
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %234, label %231

; <label>:231                                     ; preds = %224
  %232 = bitcast i32* %226 to i8*
  %233 = bitcast i32* %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %232, i8* %233, i64 %228, i32 4, i1 false) #2
  br label %234

; <label>:234                                     ; preds = %231, %224
  %235 = getelementptr inbounds i32, i32* %226, i64 %229
  %236 = icmp eq i32* %216, null
  br i1 %236, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit1, label %237

; <label>:237                                     ; preds = %234
  %238 = bitcast i32* %216 to i8*
  tail call void @_ZdlPv(i8* %238) #2
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit1

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit1: ; preds = %237, %234
  store i32* %178, i32** %168, align 8, !tbaa !5
  store i32* %235, i32** %7, align 8, !tbaa !38
  %239 = getelementptr inbounds i32, i32* %178, i64 %167
  store i32* %239, i32** %4, align 8, !tbaa !102
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13

_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit:        ; preds = %.lr.ph.i.i12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13

_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit152:     ; preds = %.lr.ph.i.i
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit13

_ZSt4fillIPiiEvT_S1_RKT0_.exit13:                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit152, %_ZSt4fillIPiiEvT_S1_RKT0_.exit13.loopexit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit1, %middle.block42, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit3.thread, %middle.block78, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* nocapture %this, i32 %numNode) #0 comdat align 2 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = sext i32 %numNode to i64
  %15 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15)
  store double 0.000000e+00, double* %13, align 8, !tbaa !1
  %16 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0, i32 0, i32 0, i32 1
  %17 = bitcast double** %16 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !42
  %19 = bitcast %class.Domain* %this to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !9
  %21 = sub i64 %18, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp ugt i64 %14, %22
  %24 = inttoptr i64 %20 to double*
  br i1 %23, label %25, label %29

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0
  %27 = inttoptr i64 %18 to double*
  %28 = sub nsw i64 %14, %22
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %26, double* %27, i64 %28, double* nonnull dereferenceable(8) %13)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:29                                      ; preds = %0
  %30 = icmp ult i64 %14, %22
  br i1 %30, label %31, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

; <label>:31                                      ; preds = %29
  %32 = getelementptr inbounds double, double* %24, i64 %14
  store double* %32, double** %16, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit

_ZNSt6vectorIdSaIdEE6resizeEmd.exit:              ; preds = %31, %29, %25
  call void @llvm.lifetime.end(i64 8, i8* %15)
  %33 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1
  %34 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34)
  store double 0.000000e+00, double* %12, align 8, !tbaa !1
  %35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1, i32 0, i32 0, i32 1
  %36 = bitcast double** %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !42
  %38 = bitcast %"class.std::vector"* %33 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !9
  %40 = sub i64 %37, %39
  %41 = ashr exact i64 %40, 3
  %42 = icmp ugt i64 %14, %41
  %43 = inttoptr i64 %39 to double*
  br i1 %42, label %44, label %47

; <label>:44                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %45 = inttoptr i64 %37 to double*
  %46 = sub nsw i64 %14, %41
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %33, double* %45, i64 %46, double* nonnull dereferenceable(8) %12)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:47                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit
  %48 = icmp ult i64 %14, %41
  br i1 %48, label %49, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds double, double* %43, i64 %14
  store double* %50, double** %35, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1

_ZNSt6vectorIdSaIdEE6resizeEmd.exit1:             ; preds = %49, %47, %44
  call void @llvm.lifetime.end(i64 8, i8* %34)
  %51 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2
  %52 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52)
  store double 0.000000e+00, double* %11, align 8, !tbaa !1
  %53 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %54 = bitcast double** %53 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !42
  %56 = bitcast %"class.std::vector"* %51 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !9
  %58 = sub i64 %55, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp ugt i64 %14, %59
  %61 = inttoptr i64 %57 to double*
  br i1 %60, label %62, label %65

; <label>:62                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %63 = inttoptr i64 %55 to double*
  %64 = sub nsw i64 %14, %59
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %51, double* %63, i64 %64, double* nonnull dereferenceable(8) %11)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:65                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit1
  %66 = icmp ult i64 %14, %59
  br i1 %66, label %67, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

; <label>:67                                      ; preds = %65
  %68 = getelementptr inbounds double, double* %61, i64 %14
  store double* %68, double** %53, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2

_ZNSt6vectorIdSaIdEE6resizeEmd.exit2:             ; preds = %67, %65, %62
  call void @llvm.lifetime.end(i64 8, i8* %52)
  %69 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3
  %70 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70)
  store double 0.000000e+00, double* %10, align 8, !tbaa !1
  %71 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3, i32 0, i32 0, i32 1
  %72 = bitcast double** %71 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !42
  %74 = bitcast %"class.std::vector"* %69 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !9
  %76 = sub i64 %73, %75
  %77 = ashr exact i64 %76, 3
  %78 = icmp ugt i64 %14, %77
  %79 = inttoptr i64 %75 to double*
  br i1 %78, label %80, label %83

; <label>:80                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2
  %81 = inttoptr i64 %73 to double*
  %82 = sub nsw i64 %14, %77
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %69, double* %81, i64 %82, double* nonnull dereferenceable(8) %10)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

; <label>:83                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit2
  %84 = icmp ult i64 %14, %77
  br i1 %84, label %85, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

; <label>:85                                      ; preds = %83
  %86 = getelementptr inbounds double, double* %79, i64 %14
  store double* %86, double** %71, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3

_ZNSt6vectorIdSaIdEE6resizeEmd.exit3:             ; preds = %85, %83, %80
  call void @llvm.lifetime.end(i64 8, i8* %70)
  %87 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4
  %88 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88)
  store double 0.000000e+00, double* %9, align 8, !tbaa !1
  %89 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4, i32 0, i32 0, i32 1
  %90 = bitcast double** %89 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !42
  %92 = bitcast %"class.std::vector"* %87 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !9
  %94 = sub i64 %91, %93
  %95 = ashr exact i64 %94, 3
  %96 = icmp ugt i64 %14, %95
  %97 = inttoptr i64 %93 to double*
  br i1 %96, label %98, label %101

; <label>:98                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3
  %99 = inttoptr i64 %91 to double*
  %100 = sub nsw i64 %14, %95
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %87, double* %99, i64 %100, double* nonnull dereferenceable(8) %9)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

; <label>:101                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit3
  %102 = icmp ult i64 %14, %95
  br i1 %102, label %103, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

; <label>:103                                     ; preds = %101
  %104 = getelementptr inbounds double, double* %97, i64 %14
  store double* %104, double** %89, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4

_ZNSt6vectorIdSaIdEE6resizeEmd.exit4:             ; preds = %103, %101, %98
  call void @llvm.lifetime.end(i64 8, i8* %88)
  %105 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5
  %106 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106)
  store double 0.000000e+00, double* %8, align 8, !tbaa !1
  %107 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5, i32 0, i32 0, i32 1
  %108 = bitcast double** %107 to i64*
  %109 = load i64, i64* %108, align 8, !tbaa !42
  %110 = bitcast %"class.std::vector"* %105 to i64*
  %111 = load i64, i64* %110, align 8, !tbaa !9
  %112 = sub i64 %109, %111
  %113 = ashr exact i64 %112, 3
  %114 = icmp ugt i64 %14, %113
  %115 = inttoptr i64 %111 to double*
  br i1 %114, label %116, label %119

; <label>:116                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4
  %117 = inttoptr i64 %109 to double*
  %118 = sub nsw i64 %14, %113
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %105, double* %117, i64 %118, double* nonnull dereferenceable(8) %8)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

; <label>:119                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit4
  %120 = icmp ult i64 %14, %113
  br i1 %120, label %121, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

; <label>:121                                     ; preds = %119
  %122 = getelementptr inbounds double, double* %115, i64 %14
  store double* %122, double** %107, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5

_ZNSt6vectorIdSaIdEE6resizeEmd.exit5:             ; preds = %121, %119, %116
  call void @llvm.lifetime.end(i64 8, i8* %106)
  %123 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6
  %124 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124)
  store double 0.000000e+00, double* %7, align 8, !tbaa !1
  %125 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6, i32 0, i32 0, i32 1
  %126 = bitcast double** %125 to i64*
  %127 = load i64, i64* %126, align 8, !tbaa !42
  %128 = bitcast %"class.std::vector"* %123 to i64*
  %129 = load i64, i64* %128, align 8, !tbaa !9
  %130 = sub i64 %127, %129
  %131 = ashr exact i64 %130, 3
  %132 = icmp ugt i64 %14, %131
  %133 = inttoptr i64 %129 to double*
  br i1 %132, label %134, label %137

; <label>:134                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5
  %135 = inttoptr i64 %127 to double*
  %136 = sub nsw i64 %14, %131
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %123, double* %135, i64 %136, double* nonnull dereferenceable(8) %7)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit6

; <label>:137                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit5
  %138 = icmp ult i64 %14, %131
  br i1 %138, label %139, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit6

; <label>:139                                     ; preds = %137
  %140 = getelementptr inbounds double, double* %133, i64 %14
  store double* %140, double** %125, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit6

_ZNSt6vectorIdSaIdEE6resizeEmd.exit6:             ; preds = %139, %137, %134
  call void @llvm.lifetime.end(i64 8, i8* %124)
  %141 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7
  %142 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142)
  store double 0.000000e+00, double* %6, align 8, !tbaa !1
  %143 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7, i32 0, i32 0, i32 1
  %144 = bitcast double** %143 to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !42
  %146 = bitcast %"class.std::vector"* %141 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !9
  %148 = sub i64 %145, %147
  %149 = ashr exact i64 %148, 3
  %150 = icmp ugt i64 %14, %149
  %151 = inttoptr i64 %147 to double*
  br i1 %150, label %152, label %155

; <label>:152                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit6
  %153 = inttoptr i64 %145 to double*
  %154 = sub nsw i64 %14, %149
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %141, double* %153, i64 %154, double* nonnull dereferenceable(8) %6)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit7

; <label>:155                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit6
  %156 = icmp ult i64 %14, %149
  br i1 %156, label %157, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit7

; <label>:157                                     ; preds = %155
  %158 = getelementptr inbounds double, double* %151, i64 %14
  store double* %158, double** %143, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit7

_ZNSt6vectorIdSaIdEE6resizeEmd.exit7:             ; preds = %157, %155, %152
  call void @llvm.lifetime.end(i64 8, i8* %142)
  %159 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8
  %160 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160)
  store double 0.000000e+00, double* %5, align 8, !tbaa !1
  %161 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8, i32 0, i32 0, i32 1
  %162 = bitcast double** %161 to i64*
  %163 = load i64, i64* %162, align 8, !tbaa !42
  %164 = bitcast %"class.std::vector"* %159 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !9
  %166 = sub i64 %163, %165
  %167 = ashr exact i64 %166, 3
  %168 = icmp ugt i64 %14, %167
  %169 = inttoptr i64 %165 to double*
  br i1 %168, label %170, label %173

; <label>:170                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit7
  %171 = inttoptr i64 %163 to double*
  %172 = sub nsw i64 %14, %167
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %159, double* %171, i64 %172, double* nonnull dereferenceable(8) %5)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

; <label>:173                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit7
  %174 = icmp ult i64 %14, %167
  br i1 %174, label %175, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

; <label>:175                                     ; preds = %173
  %176 = getelementptr inbounds double, double* %169, i64 %14
  store double* %176, double** %161, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8

_ZNSt6vectorIdSaIdEE6resizeEmd.exit8:             ; preds = %175, %173, %170
  call void @llvm.lifetime.end(i64 8, i8* %160)
  %177 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9
  %178 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178)
  store double 0.000000e+00, double* %4, align 8, !tbaa !1
  %179 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9, i32 0, i32 0, i32 1
  %180 = bitcast double** %179 to i64*
  %181 = load i64, i64* %180, align 8, !tbaa !42
  %182 = bitcast %"class.std::vector"* %177 to i64*
  %183 = load i64, i64* %182, align 8, !tbaa !9
  %184 = sub i64 %181, %183
  %185 = ashr exact i64 %184, 3
  %186 = icmp ugt i64 %14, %185
  %187 = inttoptr i64 %183 to double*
  br i1 %186, label %188, label %191

; <label>:188                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8
  %189 = inttoptr i64 %181 to double*
  %190 = sub nsw i64 %14, %185
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %177, double* %189, i64 %190, double* nonnull dereferenceable(8) %4)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

; <label>:191                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit8
  %192 = icmp ult i64 %14, %185
  br i1 %192, label %193, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

; <label>:193                                     ; preds = %191
  %194 = getelementptr inbounds double, double* %187, i64 %14
  store double* %194, double** %179, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9

_ZNSt6vectorIdSaIdEE6resizeEmd.exit9:             ; preds = %193, %191, %188
  call void @llvm.lifetime.end(i64 8, i8* %178)
  %195 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10
  %196 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196)
  store double 0.000000e+00, double* %3, align 8, !tbaa !1
  %197 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10, i32 0, i32 0, i32 1
  %198 = bitcast double** %197 to i64*
  %199 = load i64, i64* %198, align 8, !tbaa !42
  %200 = bitcast %"class.std::vector"* %195 to i64*
  %201 = load i64, i64* %200, align 8, !tbaa !9
  %202 = sub i64 %199, %201
  %203 = ashr exact i64 %202, 3
  %204 = icmp ugt i64 %14, %203
  %205 = inttoptr i64 %201 to double*
  br i1 %204, label %206, label %209

; <label>:206                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9
  %207 = inttoptr i64 %199 to double*
  %208 = sub nsw i64 %14, %203
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %195, double* %207, i64 %208, double* nonnull dereferenceable(8) %3)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

; <label>:209                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit9
  %210 = icmp ult i64 %14, %203
  br i1 %210, label %211, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

; <label>:211                                     ; preds = %209
  %212 = getelementptr inbounds double, double* %205, i64 %14
  store double* %212, double** %197, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10

_ZNSt6vectorIdSaIdEE6resizeEmd.exit10:            ; preds = %211, %209, %206
  call void @llvm.lifetime.end(i64 8, i8* %196)
  %213 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11
  %214 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214)
  store double 0.000000e+00, double* %2, align 8, !tbaa !1
  %215 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11, i32 0, i32 0, i32 1
  %216 = bitcast double** %215 to i64*
  %217 = load i64, i64* %216, align 8, !tbaa !42
  %218 = bitcast %"class.std::vector"* %213 to i64*
  %219 = load i64, i64* %218, align 8, !tbaa !9
  %220 = sub i64 %217, %219
  %221 = ashr exact i64 %220, 3
  %222 = icmp ugt i64 %14, %221
  %223 = inttoptr i64 %219 to double*
  br i1 %222, label %224, label %227

; <label>:224                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10
  %225 = inttoptr i64 %217 to double*
  %226 = sub nsw i64 %14, %221
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %213, double* %225, i64 %226, double* nonnull dereferenceable(8) %2)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

; <label>:227                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit10
  %228 = icmp ult i64 %14, %221
  br i1 %228, label %229, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

; <label>:229                                     ; preds = %227
  %230 = getelementptr inbounds double, double* %223, i64 %14
  store double* %230, double** %215, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11

_ZNSt6vectorIdSaIdEE6resizeEmd.exit11:            ; preds = %229, %227, %224
  call void @llvm.lifetime.end(i64 8, i8* %214)
  %231 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12
  %232 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %232)
  store double 0.000000e+00, double* %1, align 8, !tbaa !1
  %233 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12, i32 0, i32 0, i32 1
  %234 = bitcast double** %233 to i64*
  %235 = load i64, i64* %234, align 8, !tbaa !42
  %236 = bitcast %"class.std::vector"* %231 to i64*
  %237 = load i64, i64* %236, align 8, !tbaa !9
  %238 = sub i64 %235, %237
  %239 = ashr exact i64 %238, 3
  %240 = icmp ugt i64 %14, %239
  %241 = inttoptr i64 %237 to double*
  br i1 %240, label %242, label %245

; <label>:242                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11
  %243 = inttoptr i64 %235 to double*
  %244 = sub nsw i64 %14, %239
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* nonnull %231, double* %243, i64 %244, double* nonnull dereferenceable(8) %1)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

; <label>:245                                     ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmd.exit11
  %246 = icmp ult i64 %14, %239
  br i1 %246, label %247, label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

; <label>:247                                     ; preds = %245
  %248 = getelementptr inbounds double, double* %241, i64 %14
  store double* %248, double** %233, align 8, !tbaa !42
  br label %_ZNSt6vectorIdSaIdEE6resizeEmd.exit12

_ZNSt6vectorIdSaIdEE6resizeEmd.exit12:            ; preds = %247, %245, %242
  call void @llvm.lifetime.end(i64 8, i8* %232)
  ret void
}

; Function Attrs: uwtable
define void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this, i32 %edgeNodes) #0 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  %5 = load i32, i32* %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %7, %9
  %11 = select i1 %10, i32 %7, i32 %9
  %12 = icmp sgt i32 %5, %11
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %0
  %.9 = select i1 %10, i32* %6, i32* %8
  %.pre = load i32, i32* %.9, align 4, !tbaa !12
  br label %14

; <label>:14                                      ; preds = %13, %0
  %15 = phi i32 [ %5, %0 ], [ %.pre, %13 ]
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 %16, %16
  %18 = add nuw i32 %17, 15
  %19 = and i32 %18, -16
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 90
  store i32 %19, i32* %20, align 8, !tbaa !115
  %21 = add i32 %15, 16
  %22 = and i32 %21, -16
  %23 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 91
  store i32 %22, i32* %23, align 4, !tbaa !116
  %24 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %25 = bitcast i32* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 94
  %29 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %30 = load i32, i32* %29, align 8, !tbaa !82
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %33 = load i32, i32* %32, align 4, !tbaa !84
  %34 = insertelement <4 x i32> undef, i32 %27, i32 0
  %35 = insertelement <4 x i32> %34, i32 %27, i32 1
  %36 = insertelement <4 x i32> %35, i32 %33, i32 2
  %37 = insertelement <4 x i32> %36, i32 %33, i32 3
  %38 = insertelement <4 x i32> <i32 0, i32 undef, i32 undef, i32 undef>, i32 %31, i32 1
  %39 = insertelement <4 x i32> %38, i32 0, i32 2
  %40 = insertelement <4 x i32> %39, i32 %31, i32 3
  %41 = icmp ne <4 x i32> %37, %40
  %42 = zext <4 x i1> %41 to <4 x i32>
  %43 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %43, align 8, !tbaa !12
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %45 = lshr i64 %26, 32
  %46 = trunc i64 %45 to i32
  %not.5 = icmp ne i32 %46, 0
  %47 = zext i1 %not.5 to i32
  %48 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 98
  store i32 %47, i32* %48, align 8, !tbaa !117
  %not.6 = icmp ne i32 %46, %31
  %49 = zext i1 %not.6 to i32
  %50 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 99
  store i32 %49, i32* %50, align 4, !tbaa !118
  %51 = icmp eq i32 %33, 0
  br i1 %51, label %52, label %76

; <label>:52                                      ; preds = %14
  %53 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  %54 = mul nsw i32 %edgeNodes, %edgeNodes
  %55 = zext i32 %54 to i64
  %56 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56)
  store i32 0, i32* %1, align 4, !tbaa !12
  %57 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13, i32 0, i32 0, i32 1
  %58 = bitcast i32** %57 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !38
  %60 = bitcast %"class.std::vector.0"* %53 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !5
  %62 = sub i64 %59, %61
  %63 = ashr exact i64 %62, 2
  %64 = icmp ugt i64 %55, %63
  %65 = inttoptr i64 %61 to i32*
  br i1 %64, label %66, label %69

; <label>:66                                      ; preds = %52
  %67 = inttoptr i64 %59 to i32*
  %68 = sub nsw i64 %55, %63
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %53, i32* %67, i64 %68, i32* nonnull dereferenceable(4) %1)
  %.pre11.pre = load i64, i64* %25, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8

; <label>:69                                      ; preds = %52
  %70 = icmp ult i64 %55, %63
  br i1 %70, label %71, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8

; <label>:71                                      ; preds = %69
  %72 = getelementptr inbounds i32, i32* %65, i64 %55
  store i32* %72, i32** %57, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8

_ZNSt6vectorIiSaIiEE6resizeEmi.exit8:             ; preds = %71, %69, %66
  %.pre11 = phi i64 [ %.pre11.pre, %66 ], [ %26, %69 ], [ %26, %71 ]
  call void @llvm.lifetime.end(i64 4, i8* %56)
  %73 = trunc i64 %.pre11 to i32
  %74 = lshr i64 %.pre11, 32
  %75 = trunc i64 %74 to i32
  br label %76

; <label>:76                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8, %14
  %77 = phi i32 [ %75, %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8 ], [ %46, %14 ]
  %78 = phi i32 [ %73, %_ZNSt6vectorIiSaIiEE6resizeEmi.exit8 ], [ %27, %14 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %101

; <label>:80                                      ; preds = %76
  %81 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  %82 = mul nsw i32 %edgeNodes, %edgeNodes
  %83 = zext i32 %82 to i64
  %84 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84)
  store i32 0, i32* %2, align 4, !tbaa !12
  %85 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14, i32 0, i32 0, i32 1
  %86 = bitcast i32** %85 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !38
  %88 = bitcast %"class.std::vector.0"* %81 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !5
  %90 = sub i64 %87, %89
  %91 = ashr exact i64 %90, 2
  %92 = icmp ugt i64 %83, %91
  %93 = inttoptr i64 %89 to i32*
  br i1 %92, label %94, label %97

; <label>:94                                      ; preds = %80
  %95 = inttoptr i64 %87 to i32*
  %96 = sub nsw i64 %83, %91
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %81, i32* %95, i64 %96, i32* nonnull dereferenceable(4) %2)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

; <label>:97                                      ; preds = %80
  %98 = icmp ult i64 %83, %91
  br i1 %98, label %99, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

; <label>:99                                      ; preds = %97
  %100 = getelementptr inbounds i32, i32* %93, i64 %83
  store i32* %100, i32** %85, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7

_ZNSt6vectorIiSaIiEE6resizeEmi.exit7:             ; preds = %99, %97, %94
  call void @llvm.lifetime.end(i64 4, i8* %84)
  %.pre12 = load i32, i32* %44, align 4, !tbaa !86
  br label %101

; <label>:101                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7, %76
  %102 = phi i32 [ %.pre12, %_ZNSt6vectorIiSaIiEE6resizeEmi.exit7 ], [ %77, %76 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %125

; <label>:104                                     ; preds = %101
  %105 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  %106 = mul nsw i32 %edgeNodes, %edgeNodes
  %107 = zext i32 %106 to i64
  %108 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108)
  store i32 0, i32* %3, align 4, !tbaa !12
  %109 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15, i32 0, i32 0, i32 1
  %110 = bitcast i32** %109 to i64*
  %111 = load i64, i64* %110, align 8, !tbaa !38
  %112 = bitcast %"class.std::vector.0"* %105 to i64*
  %113 = load i64, i64* %112, align 8, !tbaa !5
  %114 = sub i64 %111, %113
  %115 = ashr exact i64 %114, 2
  %116 = icmp ugt i64 %107, %115
  %117 = inttoptr i64 %113 to i32*
  br i1 %116, label %118, label %121

; <label>:118                                     ; preds = %104
  %119 = inttoptr i64 %111 to i32*
  %120 = sub nsw i64 %107, %115
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* nonnull %105, i32* %119, i64 %120, i32* nonnull dereferenceable(4) %3)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

; <label>:121                                     ; preds = %104
  %122 = icmp ult i64 %107, %115
  br i1 %122, label %123, label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

; <label>:123                                     ; preds = %121
  %124 = getelementptr inbounds i32, i32* %117, i64 %107
  store i32* %124, i32** %109, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEmi.exit

_ZNSt6vectorIiSaIiEE6resizeEmi.exit:              ; preds = %123, %121, %118
  call void @llvm.lifetime.end(i64 4, i8* %108)
  br label %125

; <label>:125                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmi.exit, %101
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain9BuildMeshEiii(%class.Domain* nocapture readonly %this, i32 %nx, i32 %edgeNodes, i32 %edgeElems) #17 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %2 = load i32, i32* %1, align 8, !tbaa !82
  %3 = mul nsw i32 %2, %nx
  %4 = sitofp i32 %3 to double
  %5 = icmp sgt i32 %edgeNodes, 0
  br i1 %5, label %.lr.ph46, label %.preheader7

.lr.ph46:                                         ; preds = %0
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, %nx
  %9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, %nx
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %13 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1, i32 0, i32 0, i32 0
  %15 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %16 = mul i32 %edgeNodes, %edgeNodes
  %xtraiter = and i32 %edgeNodes, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %17 = icmp eq i32 %edgeNodes, 1
  br label %.lr.ph26.us.us.preheader

.lr.ph26.us.us.preheader:                         ; preds = %._crit_edge37.us..lr.ph36.us_crit_edge, %.lr.ph46
  %18 = phi i32 [ %10, %.lr.ph46 ], [ %.pre, %._crit_edge37.us..lr.ph36.us_crit_edge ]
  %.pn40.pn.in.in = phi i32 [ %8, %.lr.ph46 ], [ %24, %._crit_edge37.us..lr.ph36.us_crit_edge ]
  %nidx.043.us = phi i32 [ 0, %.lr.ph46 ], [ %23, %._crit_edge37.us..lr.ph36.us_crit_edge ]
  %plane.042.us = phi i32 [ 0, %.lr.ph46 ], [ %22, %._crit_edge37.us..lr.ph36.us_crit_edge ]
  %.pn40.pn.in = sitofp i32 %.pn40.pn.in.in to double
  %.pn40.pn = fmul double %.pn40.pn.in, 1.125000e+00
  %tz.044.us = fdiv double %.pn40.pn, %4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 %19, %nx
  %21 = mul nsw i32 %18, %nx
  %.pn5.in.us.us.prol = sitofp i32 %20 to double
  %.pn5.us.us.prol = fmul double %.pn5.in.us.us.prol, 1.125000e+00
  %tx.0.us.us.prol = fdiv double %.pn5.us.us.prol, %4
  br label %.lr.ph26.us.us

._crit_edge37.us:                                 ; preds = %._crit_edge27.us.us
  %22 = add nuw nsw i32 %plane.042.us, 1
  %exitcond94 = icmp eq i32 %22, %edgeNodes
  br i1 %exitcond94, label %.preheader7.loopexit, label %._crit_edge37.us..lr.ph36.us_crit_edge

._crit_edge37.us..lr.ph36.us_crit_edge:           ; preds = %._crit_edge37.us
  %23 = add i32 %16, %nidx.043.us
  %24 = add i32 %22, %8
  %.pre = load i32, i32* %9, align 8
  br label %.lr.ph26.us.us.preheader

.lr.ph26.us.us:                                   ; preds = %._crit_edge27.us.us..lr.ph26.us.us_crit_edge, %.lr.ph26.us.us.preheader
  %25 = phi i32 [ %.pre95, %._crit_edge27.us.us..lr.ph26.us.us_crit_edge ], [ %19, %.lr.ph26.us.us.preheader ]
  %.pn4.us.us.pn.in.in = phi i32 [ %37, %._crit_edge27.us.us..lr.ph26.us.us_crit_edge ], [ %11, %.lr.ph26.us.us.preheader ]
  %nidx.133.us.us = phi i32 [ %38, %._crit_edge27.us.us..lr.ph26.us.us_crit_edge ], [ %nidx.043.us, %.lr.ph26.us.us.preheader ]
  %row.032.us.us = phi i32 [ %36, %._crit_edge27.us.us..lr.ph26.us.us_crit_edge ], [ 0, %.lr.ph26.us.us.preheader ]
  %.pn4.us.us.pn.in = sitofp i32 %.pn4.us.us.pn.in.in to double
  %.pn4.us.us.pn = fmul double %.pn4.us.us.pn.in, 1.125000e+00
  %ty.034.us.us = fdiv double %.pn4.us.us.pn, %4
  %26 = load double*, double** %13, align 8
  %27 = load double*, double** %14, align 8
  %28 = load double*, double** %15, align 8
  %29 = mul nsw i32 %25, %nx
  %30 = sext i32 %nidx.133.us.us to i64
  br i1 %lcmp.mod, label %.lr.ph26.us.us.split, label %31

; <label>:31                                      ; preds = %.lr.ph26.us.us
  %32 = getelementptr inbounds double, double* %26, i64 %30
  store double %tx.0.us.us.prol, double* %32, align 8, !tbaa !1
  %33 = getelementptr inbounds double, double* %27, i64 %30
  store double %ty.034.us.us, double* %33, align 8, !tbaa !1
  %34 = getelementptr inbounds double, double* %28, i64 %30
  store double %tz.044.us, double* %34, align 8, !tbaa !1
  %35 = add i32 %29, 1
  %indvars.iv.next.prol = add nsw i64 %30, 1
  br label %.lr.ph26.us.us.split

.lr.ph26.us.us.split:                             ; preds = %31, %.lr.ph26.us.us
  %indvars.iv.unr = phi i64 [ %30, %.lr.ph26.us.us ], [ %indvars.iv.next.prol, %31 ]
  %col.023.us.us.unr = phi i32 [ 0, %.lr.ph26.us.us ], [ 1, %31 ]
  %.pn5.in.in22.us.us.unr = phi i32 [ %20, %.lr.ph26.us.us ], [ %35, %31 ]
  br i1 %17, label %._crit_edge27.us.us, label %.lr.ph26.us.us.split.split

.lr.ph26.us.us.split.split:                       ; preds = %.lr.ph26.us.us.split
  br label %39

._crit_edge27.us.us.unr-lcssa:                    ; preds = %39
  br label %._crit_edge27.us.us

._crit_edge27.us.us:                              ; preds = %._crit_edge27.us.us.unr-lcssa, %.lr.ph26.us.us.split
  %36 = add nuw nsw i32 %row.032.us.us, 1
  %exitcond93 = icmp eq i32 %36, %edgeNodes
  br i1 %exitcond93, label %._crit_edge37.us, label %._crit_edge27.us.us..lr.ph26.us.us_crit_edge

._crit_edge27.us.us..lr.ph26.us.us_crit_edge:     ; preds = %._crit_edge27.us.us
  %37 = add i32 %36, %21
  %38 = add i32 %nidx.133.us.us, %edgeNodes
  %.pre95 = load i32, i32* %12, align 4
  br label %.lr.ph26.us.us

; <label>:39                                      ; preds = %39, %.lr.ph26.us.us.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph26.us.us.split.split ], [ %indvars.iv.next.1, %39 ]
  %col.023.us.us = phi i32 [ %col.023.us.us.unr, %.lr.ph26.us.us.split.split ], [ %48, %39 ]
  %.pn5.in.in22.us.us = phi i32 [ %.pn5.in.in22.us.us.unr, %.lr.ph26.us.us.split.split ], [ %49, %39 ]
  %.pn5.in.us.us = sitofp i32 %.pn5.in.in22.us.us to double
  %.pn5.us.us = fmul double %.pn5.in.us.us, 1.125000e+00
  %tx.0.us.us = fdiv double %.pn5.us.us, %4
  %40 = getelementptr inbounds double, double* %26, i64 %indvars.iv
  store double %tx.0.us.us, double* %40, align 8, !tbaa !1
  %41 = getelementptr inbounds double, double* %27, i64 %indvars.iv
  store double %ty.034.us.us, double* %41, align 8, !tbaa !1
  %42 = getelementptr inbounds double, double* %28, i64 %indvars.iv
  store double %tz.044.us, double* %42, align 8, !tbaa !1
  %43 = add nuw nsw i32 %col.023.us.us, 1
  %44 = add i32 %43, %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.pn5.in.us.us.1 = sitofp i32 %44 to double
  %.pn5.us.us.1 = fmul double %.pn5.in.us.us.1, 1.125000e+00
  %tx.0.us.us.1 = fdiv double %.pn5.us.us.1, %4
  %45 = getelementptr inbounds double, double* %26, i64 %indvars.iv.next
  store double %tx.0.us.us.1, double* %45, align 8, !tbaa !1
  %46 = getelementptr inbounds double, double* %27, i64 %indvars.iv.next
  store double %ty.034.us.us, double* %46, align 8, !tbaa !1
  %47 = getelementptr inbounds double, double* %28, i64 %indvars.iv.next
  store double %tz.044.us, double* %47, align 8, !tbaa !1
  %48 = add nsw i32 %col.023.us.us, 2
  %49 = add i32 %48, %29
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %exitcond92.1 = icmp eq i32 %48, %edgeNodes
  br i1 %exitcond92.1, label %._crit_edge27.us.us.unr-lcssa, label %39

.preheader7.loopexit:                             ; preds = %._crit_edge37.us
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit, %0
  %50 = icmp sgt i32 %edgeElems, 0
  br i1 %50, label %.preheader6.lr.ph, label %._crit_edge21

.preheader6.lr.ph:                                ; preds = %.preheader7
  %51 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21, i32 0, i32 0, i32 0
  %52 = mul nsw i32 %edgeNodes, %edgeNodes
  %53 = add i32 %edgeElems, -1
  %54 = add i32 %edgeElems, 1
  %55 = mul i32 %53, %54
  %56 = add i32 %55, %edgeElems
  %57 = add i32 %56, 1
  %58 = mul i32 %edgeElems, %edgeElems
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %._crit_edge15.us, %.preheader6.lr.ph
  %nidx.320.us = phi i32 [ 0, %.preheader6.lr.ph ], [ %61, %._crit_edge15.us ]
  %plane1.019.us = phi i32 [ 0, %.preheader6.lr.ph ], [ %62, %._crit_edge15.us ]
  %zidx.018.us = phi i32 [ 0, %.preheader6.lr.ph ], [ %60, %._crit_edge15.us ]
  %59 = add i32 %57, %nidx.320.us
  br label %.lr.ph.us.us

._crit_edge15.us:                                 ; preds = %._crit_edge.us.us
  %60 = add i32 %58, %zidx.018.us
  %61 = add nsw i32 %59, %edgeNodes
  %62 = add nuw nsw i32 %plane1.019.us, 1
  %exitcond90 = icmp eq i32 %62, %edgeElems
  br i1 %exitcond90, label %._crit_edge21.loopexit, label %.lr.ph.us.us.preheader

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph.us.us.preheader
  %nidx.414.us.us = phi i32 [ %66, %._crit_edge.us.us ], [ %nidx.320.us, %.lr.ph.us.us.preheader ]
  %row2.013.us.us = phi i32 [ %67, %._crit_edge.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %zidx.112.us.us = phi i32 [ %64, %._crit_edge.us.us ], [ %zidx.018.us, %.lr.ph.us.us.preheader ]
  %63 = load i32*, i32** %51, align 8
  %64 = add i32 %zidx.112.us.us, %edgeElems
  br label %68

._crit_edge.us.us:                                ; preds = %68
  %65 = add i32 %53, %nidx.414.us.us
  %66 = add nsw i32 %65, 2
  %67 = add nuw nsw i32 %row2.013.us.us, 1
  %exitcond89 = icmp eq i32 %67, %edgeElems
  br i1 %exitcond89, label %._crit_edge15.us, label %.lr.ph.us.us

; <label>:68                                      ; preds = %68, %.lr.ph.us.us
  %nidx.510.us.us = phi i32 [ %nidx.414.us.us, %.lr.ph.us.us ], [ %72, %68 ]
  %col3.09.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %87, %68 ]
  %zidx.28.us.us = phi i32 [ %zidx.112.us.us, %.lr.ph.us.us ], [ %86, %68 ]
  %69 = shl nsw i32 %zidx.28.us.us, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %63, i64 %70
  store i32 %nidx.510.us.us, i32* %71, align 4, !tbaa !12
  %72 = add nsw i32 %nidx.510.us.us, 1
  %73 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %72, i32* %73, align 4, !tbaa !12
  %74 = add nsw i32 %nidx.510.us.us, %edgeNodes
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %75, i32* %76, align 4, !tbaa !12
  %77 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %74, i32* %77, align 4, !tbaa !12
  %78 = add nsw i32 %nidx.510.us.us, %52
  %79 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %78, i32* %79, align 4, !tbaa !12
  %80 = add nsw i32 %78, 1
  %81 = getelementptr inbounds i32, i32* %71, i64 5
  store i32 %80, i32* %81, align 4, !tbaa !12
  %82 = add nsw i32 %78, %edgeNodes
  %83 = add nsw i32 %82, 1
  %84 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %83, i32* %84, align 4, !tbaa !12
  %85 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 %82, i32* %85, align 4, !tbaa !12
  %86 = add nsw i32 %zidx.28.us.us, 1
  %87 = add nuw nsw i32 %col3.09.us.us, 1
  %exitcond88 = icmp eq i32 %87, %edgeElems
  br i1 %exitcond88, label %._crit_edge.us.us, label %68

._crit_edge21.loopexit:                           ; preds = %._crit_edge15.us
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %.preheader7
  ret void
}

; Function Attrs: uwtable
define void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance) #0 align 2 {
  tail call void @srand(i32 0) #2
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 16
  store i32 %nr, i32* %1, align 4, !tbaa !12
  %2 = sext i32 %nr to i64
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 4)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %7 = tail call noalias i8* @_Znam(i64 %6) #18
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 18
  %9 = bitcast i32** %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !43
  %10 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 8)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  %13 = select i1 %11, i64 -1, i64 %12
  %14 = tail call noalias i8* @_Znam(i64 %13) #18
  %15 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 20
  %16 = bitcast i32*** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !48
  %17 = icmp eq i32 %nr, 1
  %18 = bitcast i8* %7 to i32*
  %19 = ptrtoint i8* %7 to i64
  %20 = inttoptr i64 %19 to i32*
  br i1 %17, label %.preheader8, label %36

.preheader8:                                      ; preds = %0
  %21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  %22 = load i32, i32* %21, align 4, !tbaa !12
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %.preheader8
  %24 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %25 = load i32*, i32** %24, align 8
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph16
  %indvars.iv44 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next45, %26 ]
  %27 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv44
  store i32 1, i32* %27, align 4, !tbaa !12
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %28 = load i32, i32* %21, align 4, !tbaa !12
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %indvars.iv.next45, %29
  br i1 %30, label %26, label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %26
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %.preheader8
  %.pre55 = phi i32 [ %28, %._crit_edge17.loopexit ], [ %22, %.preheader8 ]
  store i32 0, i32* %18, align 4, !tbaa !12
  br label %.preheader7

.preheader7.loopexit:                             ; preds = %.critedge.loopexit
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit, %._crit_edge17
  %.pre-phi = phi i32* [ %21, %._crit_edge17 ], [ %42, %.preheader7.loopexit ]
  %31 = phi i32 [ %.pre55, %._crit_edge17 ], [ %58, %.preheader7.loopexit ]
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %.lr.ph14, label %.preheader6

.lr.ph14:                                         ; preds = %.preheader7
  %33 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %8, align 8
  br label %140

; <label>:36                                      ; preds = %0
  %37 = tail call noalias i8* @_Znam(i64 %6) #18
  %38 = bitcast i8* %37 to i32*
  %39 = icmp sgt i32 %nr, 0
  br i1 %39, label %.lr.ph36, label %.critedge.preheader

.lr.ph36:                                         ; preds = %36
  %40 = sitofp i32 %balance to double
  store i32 0, i32* %18, align 4, !tbaa !12
  store i32 1, i32* %38, align 4, !tbaa !12
  %41 = icmp sgt i32 %nr, 1
  br i1 %41, label %._crit_edge54.preheader, label %.critedge.preheader

._crit_edge54.preheader:                          ; preds = %.lr.ph36
  br label %._crit_edge54

.critedge.preheader.loopexit:                     ; preds = %._crit_edge54
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %.lr.ph36, %36
  %costDenominator.0.lcssa = phi i32 [ 0, %36 ], [ 1, %.lr.ph36 ], [ %53, %.critedge.preheader.loopexit ]
  %42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  %43 = load i32, i32* %42, align 4, !tbaa !12
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %.lr.ph32, label %.preheader6

.lr.ph32:                                         ; preds = %.critedge.preheader
  %45 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  br label %60

._crit_edge54:                                    ; preds = %._crit_edge54.._crit_edge54_crit_edge, %._crit_edge54.preheader
  %.pre = phi i32* [ %.pre.pre, %._crit_edge54.._crit_edge54_crit_edge ], [ %20, %._crit_edge54.preheader ]
  %46 = phi i32 [ %53, %._crit_edge54.._crit_edge54_crit_edge ], [ 1, %._crit_edge54.preheader ]
  %indvars.iv.next5363 = phi i64 [ %indvars.iv.next53, %._crit_edge54.._crit_edge54_crit_edge ], [ 1, %._crit_edge54.preheader ]
  %47 = getelementptr inbounds i32, i32* %.pre, i64 %indvars.iv.next5363
  store i32 0, i32* %47, align 4, !tbaa !12
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv.next5363, 1
  %48 = trunc i64 %indvars.iv.next53 to i32
  %49 = sitofp i32 %48 to double
  %50 = tail call double @pow(double %49, double %40) #2
  %51 = sitofp i32 %46 to double
  %52 = fadd double %51, %50
  %53 = fptosi double %52 to i32
  %54 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv.next5363
  store i32 %53, i32* %54, align 4, !tbaa !12
  %55 = load i32, i32* %1, align 4, !tbaa !12
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next53, %56
  br i1 %57, label %._crit_edge54.._crit_edge54_crit_edge, label %.critedge.preheader.loopexit

._crit_edge54.._crit_edge54_crit_edge:            ; preds = %._crit_edge54
  %.pre.pre = load i32*, i32** %8, align 8, !tbaa !43
  br label %._crit_edge54

.critedge.loopexit.loopexit:                      ; preds = %132, %.lr.ph26
  %nextIndex.2.lcssa.ph = phi i32 [ %135, %132 ], [ %131, %.lr.ph26 ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %124, %.critedge.loopexit.loopexit
  %nextIndex.2.lcssa = phi i32 [ %nextIndex.131, %124 ], [ %nextIndex.2.lcssa.ph, %.critedge.loopexit.loopexit ]
  %58 = load i32, i32* %42, align 4, !tbaa !12
  %59 = icmp slt i32 %nextIndex.2.lcssa, %58
  br i1 %59, label %60, label %.preheader7.loopexit

; <label>:60                                      ; preds = %.critedge.loopexit, %.lr.ph32
  %nextIndex.131 = phi i32 [ 0, %.lr.ph32 ], [ %nextIndex.2.lcssa, %.critedge.loopexit ]
  %lastReg.030 = phi i32 [ -1, %.lr.ph32 ], [ %regionNum.0.lcssa, %.critedge.loopexit ]
  %61 = tail call i32 @rand() #2
  %62 = srem i32 %61, %costDenominator.0.lcssa
  br label %63

; <label>:63                                      ; preds = %63, %60
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %63 ], [ 0, %60 ]
  %64 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv46
  %65 = load i32, i32* %64, align 4, !tbaa !12
  %66 = icmp slt i32 %62, %65
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br i1 %66, label %67, label %63

; <label>:67                                      ; preds = %63
  %68 = trunc i64 %indvars.iv46 to i32
  %69 = load i32, i32* %1, align 4, !tbaa !12
  %70 = srem i32 %68, %69
  %regionNum.018 = add nsw i32 %70, 1
  %71 = icmp eq i32 %regionNum.018, %lastReg.030
  %72 = tail call i32 @rand() #2
  br i1 %71, label %.lr.ph20.preheader, label %._crit_edge21

.lr.ph20.preheader:                               ; preds = %67
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %79, %.lr.ph20.preheader
  %73 = phi i32 [ %84, %79 ], [ %72, %.lr.ph20.preheader ]
  %74 = srem i32 %73, %costDenominator.0.lcssa
  br label %75

; <label>:75                                      ; preds = %75, %.lr.ph20
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %75 ], [ 0, %.lr.ph20 ]
  %76 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv48
  %77 = load i32, i32* %76, align 4, !tbaa !12
  %78 = icmp slt i32 %74, %77
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br i1 %78, label %79, label %75

; <label>:79                                      ; preds = %75
  %80 = trunc i64 %indvars.iv48 to i32
  %81 = load i32, i32* %1, align 4, !tbaa !12
  %82 = srem i32 %80, %81
  %regionNum.0 = add nsw i32 %82, 1
  %83 = icmp eq i32 %regionNum.0, %lastReg.030
  %84 = tail call i32 @rand() #2
  br i1 %83, label %.lr.ph20, label %._crit_edge21.loopexit

._crit_edge21.loopexit:                           ; preds = %79
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %67
  %.lcssa9 = phi i32 [ %72, %67 ], [ %84, %._crit_edge21.loopexit ]
  %regionNum.0.lcssa = phi i32 [ %regionNum.018, %67 ], [ %regionNum.0, %._crit_edge21.loopexit ]
  %85 = srem i32 %.lcssa9, 1000
  %86 = icmp slt i32 %85, 773
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %._crit_edge21
  %88 = tail call i32 @rand() #2
  %89 = srem i32 %88, 15
  %90 = add nsw i32 %89, 1
  br label %124

; <label>:91                                      ; preds = %._crit_edge21
  %92 = icmp slt i32 %85, 937
  br i1 %92, label %93, label %97

; <label>:93                                      ; preds = %91
  %94 = tail call i32 @rand() #2
  %95 = srem i32 %94, 16
  %96 = add nsw i32 %95, 16
  br label %124

; <label>:97                                      ; preds = %91
  %98 = icmp slt i32 %85, 970
  br i1 %98, label %99, label %103

; <label>:99                                      ; preds = %97
  %100 = tail call i32 @rand() #2
  %101 = srem i32 %100, 32
  %102 = add nsw i32 %101, 32
  br label %124

; <label>:103                                     ; preds = %97
  %104 = icmp slt i32 %85, 974
  br i1 %104, label %105, label %109

; <label>:105                                     ; preds = %103
  %106 = tail call i32 @rand() #2
  %107 = srem i32 %106, 64
  %108 = add nsw i32 %107, 64
  br label %124

; <label>:109                                     ; preds = %103
  %110 = icmp slt i32 %85, 978
  br i1 %110, label %111, label %115

; <label>:111                                     ; preds = %109
  %112 = tail call i32 @rand() #2
  %113 = srem i32 %112, 128
  %114 = add nsw i32 %113, 128
  br label %124

; <label>:115                                     ; preds = %109
  %116 = icmp slt i32 %85, 981
  %117 = tail call i32 @rand() #2
  br i1 %116, label %118, label %121

; <label>:118                                     ; preds = %115
  %119 = srem i32 %117, 256
  %120 = add nsw i32 %119, 256
  br label %124

; <label>:121                                     ; preds = %115
  %122 = srem i32 %117, 1537
  %123 = add nsw i32 %122, 512
  br label %124

; <label>:124                                     ; preds = %121, %118, %111, %105, %99, %93, %87
  %elements.0 = phi i32 [ %90, %87 ], [ %96, %93 ], [ %102, %99 ], [ %108, %105 ], [ %114, %111 ], [ %120, %118 ], [ %123, %121 ]
  %125 = add nsw i32 %elements.0, %nextIndex.131
  %126 = icmp sgt i32 %elements.0, 0
  br i1 %126, label %.lr.ph26.preheader, label %.critedge.loopexit

.lr.ph26.preheader:                               ; preds = %124
  %127 = sext i32 %nextIndex.131 to i64
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %132, %.lr.ph26.preheader
  %indvars.iv50 = phi i64 [ %127, %.lr.ph26.preheader ], [ %indvars.iv.next51, %132 ]
  %nextIndex.224 = phi i32 [ %nextIndex.131, %.lr.ph26.preheader ], [ %135, %132 ]
  %128 = load i32, i32* %42, align 4, !tbaa !12
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %indvars.iv50, %129
  %131 = trunc i64 %indvars.iv50 to i32
  br i1 %130, label %132, label %.critedge.loopexit.loopexit

; <label>:132                                     ; preds = %.lr.ph26
  %133 = load i32*, i32** %45, align 8, !tbaa !92
  %134 = getelementptr inbounds i32, i32* %133, i64 %indvars.iv50
  store i32 %regionNum.0.lcssa, i32* %134, align 4, !tbaa !12
  %135 = add nsw i32 %nextIndex.224, 1
  %136 = icmp slt i32 %135, %125
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1
  br i1 %136, label %.lr.ph26, label %.critedge.loopexit.loopexit

.preheader6.loopexit:                             ; preds = %140
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %.critedge.preheader, %.preheader7
  %137 = phi i32 [ %31, %.preheader7 ], [ %43, %.critedge.preheader ], [ %148, %.preheader6.loopexit ]
  %.pre-phi56 = phi i32* [ %.pre-phi, %.preheader7 ], [ %42, %.critedge.preheader ], [ %.pre-phi, %.preheader6.loopexit ]
  %138 = load i32, i32* %1, align 4, !tbaa !12
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %.lr.ph12.preheader, label %.preheader

.lr.ph12.preheader:                               ; preds = %.preheader6
  br label %.lr.ph12

; <label>:140                                     ; preds = %140, %.lr.ph14
  %indvars.iv42 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next43, %140 ]
  %141 = getelementptr inbounds i32, i32* %34, i64 %indvars.iv42
  %142 = load i32, i32* %141, align 4, !tbaa !12
  %143 = add nsw i32 %142, -1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %35, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !12
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4, !tbaa !12
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %148 = load i32, i32* %.pre-phi, align 4, !tbaa !12
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %indvars.iv.next43, %149
  br i1 %150, label %140, label %.preheader6.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph12
  %.pre3 = load i32, i32* %.pre-phi56, align 4, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader6
  %151 = phi i32 [ %.pre3, %.preheader.loopexit ], [ %137, %.preheader6 ]
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %153 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32**, i32*** %15, align 8
  br label %174

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph12 ], [ 0, %.lr.ph12.preheader ]
  %157 = load i32*, i32** %8, align 8, !tbaa !43
  %158 = getelementptr inbounds i32, i32* %157, i64 %indvars.iv40
  %159 = load i32, i32* %158, align 4, !tbaa !12
  %160 = sext i32 %159 to i64
  %161 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %160, i64 4)
  %162 = extractvalue { i64, i1 } %161, 1
  %163 = extractvalue { i64, i1 } %161, 0
  %164 = select i1 %162, i64 -1, i64 %163
  %165 = tail call noalias i8* @_Znam(i64 %164) #18
  %166 = load i32**, i32*** %15, align 8, !tbaa !48
  %167 = getelementptr inbounds i32*, i32** %166, i64 %indvars.iv40
  %168 = bitcast i32** %167 to i8**
  store i8* %165, i8** %168, align 8, !tbaa !49
  %169 = load i32*, i32** %8, align 8, !tbaa !43
  %170 = getelementptr inbounds i32, i32* %169, i64 %indvars.iv40
  store i32 0, i32* %170, align 4, !tbaa !12
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %171 = load i32, i32* %1, align 4, !tbaa !12
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %indvars.iv.next41, %172
  br i1 %173, label %.lr.ph12, label %.preheader.loopexit

._crit_edge.loopexit:                             ; preds = %174
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  ret void

; <label>:174                                     ; preds = %174, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %174 ]
  %175 = getelementptr inbounds i32, i32* %154, i64 %indvars.iv
  %176 = load i32, i32* %175, align 4, !tbaa !12
  %177 = add nsw i32 %176, -1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %155, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !12
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4, !tbaa !12
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32*, i32** %156, i64 %178
  %184 = load i32*, i32** %183, align 8, !tbaa !49
  %185 = getelementptr inbounds i32, i32* %184, i64 %182
  %186 = trunc i64 %indvars.iv to i32
  store i32 %186, i32* %185, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %187 = load i32, i32* %.pre-phi56, align 4, !tbaa !12
  %188 = sext i32 %187 to i64
  %189 = icmp slt i64 %indvars.iv.next, %188
  br i1 %189, label %174, label %._crit_edge.loopexit
}

; Function Attrs: nounwind
declare void @srand(i32) #6

; Function Attrs: nounwind
declare double @pow(double, double) #6

; Function Attrs: nounwind
declare i32 @rand() #6

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* readonly %this, i32 %edgeElems) #17 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !5
  store i32 0, i32* %2, align 4, !tbaa !12
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  %4 = load i32, i32* %3, align 4, !tbaa !12
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %.lr.ph19, label %.._crit_edge20_crit_edge

.._crit_edge20_crit_edge:                         ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23, i32 0, i32 0, i32 0
  %.pre = load i32*, i32** %.phi.trans.insert, align 8, !tbaa !5
  br label %._crit_edge20

.lr.ph19:                                         ; preds = %0
  %6 = load i32*, i32** %1, align 8
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23, i32 0, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  br label %24

._crit_edge20.loopexit:                           ; preds = %24
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %.._crit_edge20_crit_edge
  %9 = phi i32* [ %.pre, %.._crit_edge20_crit_edge ], [ %8, %._crit_edge20.loopexit ]
  %.lcssa8 = phi i32 [ %4, %.._crit_edge20_crit_edge ], [ %30, %._crit_edge20.loopexit ]
  %10 = add nsw i32 %.lcssa8, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 %10, i32* %12, align 4, !tbaa !12
  %13 = icmp sgt i32 %edgeElems, 0
  br i1 %13, label %.lr.ph16, label %.preheader6

.lr.ph16:                                         ; preds = %._crit_edge20
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24, i32 0, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25, i32 0, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %xtraiter = and i32 %edgeElems, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph16.split, label %18

; <label>:18                                      ; preds = %.lr.ph16
  store i32 0, i32* %15, align 4, !tbaa !12
  %19 = load i32, i32* %3, align 4, !tbaa !12
  %20 = sub nsw i32 %19, %edgeElems
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32 %20, i32* %22, align 4, !tbaa !12
  br label %.lr.ph16.split

.lr.ph16.split:                                   ; preds = %18, %.lr.ph16
  %indvars.iv27.unr = phi i64 [ 0, %.lr.ph16 ], [ 1, %18 ]
  %23 = icmp eq i32 %edgeElems, 1
  br i1 %23, label %.preheader6.loopexit, label %.lr.ph16.split.split

.lr.ph16.split.split:                             ; preds = %.lr.ph16.split
  br label %40

; <label>:24                                      ; preds = %24, %.lr.ph19
  %indvars.iv29 = phi i64 [ 1, %.lr.ph19 ], [ %indvars.iv.next30, %24 ]
  %25 = add nsw i64 %indvars.iv29, -1
  %26 = getelementptr inbounds i32, i32* %6, i64 %indvars.iv29
  %27 = trunc i64 %25 to i32
  store i32 %27, i32* %26, align 4, !tbaa !12
  %28 = getelementptr inbounds i32, i32* %8, i64 %25
  %29 = trunc i64 %indvars.iv29 to i32
  store i32 %29, i32* %28, align 4, !tbaa !12
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %30 = load i32, i32* %3, align 4, !tbaa !12
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %indvars.iv.next30, %31
  br i1 %32, label %24, label %._crit_edge20.loopexit

.preheader6.loopexit.unr-lcssa:                   ; preds = %40
  br label %.preheader6.loopexit

.preheader6.loopexit:                             ; preds = %.preheader6.loopexit.unr-lcssa, %.lr.ph16.split
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %._crit_edge20
  %33 = load i32, i32* %3, align 4, !tbaa !12
  %34 = icmp sgt i32 %33, %edgeElems
  br i1 %34, label %.lr.ph13, label %.preheader5

.lr.ph13:                                         ; preds = %.preheader6
  %35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24, i32 0, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25, i32 0, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = sext i32 %edgeElems to i64
  br label %63

; <label>:40                                      ; preds = %40, %.lr.ph16.split.split
  %indvars.iv27 = phi i64 [ %indvars.iv27.unr, %.lr.ph16.split.split ], [ %indvars.iv.next28.1, %40 ]
  %41 = getelementptr inbounds i32, i32* %15, i64 %indvars.iv27
  %42 = trunc i64 %indvars.iv27 to i32
  store i32 %42, i32* %41, align 4, !tbaa !12
  %43 = load i32, i32* %3, align 4, !tbaa !12
  %44 = sub nsw i32 %43, %edgeElems
  %45 = add nsw i32 %44, %42
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %17, i64 %46
  store i32 %45, i32* %47, align 4, !tbaa !12
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %48 = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next28
  %49 = trunc i64 %indvars.iv.next28 to i32
  store i32 %49, i32* %48, align 4, !tbaa !12
  %50 = load i32, i32* %3, align 4, !tbaa !12
  %51 = sub nsw i32 %50, %edgeElems
  %52 = add nsw i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %17, i64 %53
  store i32 %52, i32* %54, align 4, !tbaa !12
  %indvars.iv.next28.1 = add nsw i64 %indvars.iv27, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next28.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %edgeElems
  br i1 %exitcond.1, label %.preheader6.loopexit.unr-lcssa, label %40

.preheader5.loopexit:                             ; preds = %63
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit, %.preheader6
  %55 = phi i32 [ %33, %.preheader6 ], [ %69, %.preheader5.loopexit ]
  %56 = mul i32 %edgeElems, %edgeElems
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %.preheader, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader5
  %58 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26, i32 0, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27, i32 0, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = sext i32 %56 to i64
  br label %79

; <label>:63                                      ; preds = %63, %.lr.ph13
  %indvars.iv25 = phi i64 [ %39, %.lr.ph13 ], [ %indvars.iv.next26, %63 ]
  %64 = sub nsw i64 %indvars.iv25, %39
  %65 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv25
  %66 = trunc i64 %64 to i32
  store i32 %66, i32* %65, align 4, !tbaa !12
  %67 = getelementptr inbounds i32, i32* %38, i64 %64
  %68 = trunc i64 %indvars.iv25 to i32
  store i32 %68, i32* %67, align 4, !tbaa !12
  %indvars.iv.next26 = add i64 %indvars.iv25, 1
  %69 = load i32, i32* %3, align 4, !tbaa !12
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %indvars.iv.next26, %70
  br i1 %71, label %63, label %.preheader5.loopexit

.preheader.loopexit:                              ; preds = %79
  %.pre31 = load i32, i32* %3, align 4, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader5
  %72 = phi i32 [ %.pre31, %.preheader.loopexit ], [ %55, %.preheader5 ]
  %73 = icmp slt i32 %56, %72
  br i1 %73, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %74 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26, i32 0, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27, i32 0, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = sext i32 %56 to i64
  br label %88

; <label>:79                                      ; preds = %79, %.lr.ph11
  %indvars.iv23 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next24, %79 ]
  %80 = getelementptr inbounds i32, i32* %59, i64 %indvars.iv23
  %81 = trunc i64 %indvars.iv23 to i32
  store i32 %81, i32* %80, align 4, !tbaa !12
  %82 = load i32, i32* %3, align 4, !tbaa !12
  %83 = sub nsw i32 %82, %56
  %84 = add nsw i32 %83, %81
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %61, i64 %85
  store i32 %84, i32* %86, align 4, !tbaa !12
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %87 = icmp slt i64 %indvars.iv.next24, %62
  br i1 %87, label %79, label %.preheader.loopexit

._crit_edge.loopexit:                             ; preds = %88
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  ret void

; <label>:88                                      ; preds = %88, %.lr.ph
  %indvars.iv = phi i64 [ %78, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %89 = sub nsw i64 %indvars.iv, %78
  %90 = getelementptr inbounds i32, i32* %75, i64 %indvars.iv
  %91 = trunc i64 %89 to i32
  store i32 %91, i32* %90, align 4, !tbaa !12
  %92 = getelementptr inbounds i32, i32* %77, i64 %89
  %93 = trunc i64 %indvars.iv to i32
  store i32 %93, i32* %92, align 4, !tbaa !12
  %indvars.iv.next = add i64 %indvars.iv, 1
  %94 = load i32, i32* %3, align 4, !tbaa !12
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %indvars.iv.next, %95
  br i1 %96, label %88, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* readonly %this, i32 %edgeElems) #17 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  %2 = load i32, i32* %1, align 4, !tbaa !12
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph11, label %.preheader3

.lr.ph11:                                         ; preds = %0
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28, i32 0, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  br label %12

.preheader3.loopexit:                             ; preds = %12
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit, %0
  %6 = phi i32 [ %2, %0 ], [ %14, %.preheader3.loopexit ]
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 98
  %8 = bitcast i32* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %17

; <label>:12                                      ; preds = %12, %.lr.ph11
  %indvars.iv19 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next20, %12 ]
  %13 = getelementptr inbounds i32, i32* %5, i64 %indvars.iv19
  store i32 0, i32* %13, align 4, !tbaa !12
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %14 = load i32, i32* %1, align 4, !tbaa !12
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %indvars.iv.next20, %15
  br i1 %16, label %12, label %.preheader3.loopexit

; <label>:17                                      ; preds = %.preheader3
  %18 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  %21 = load i32, i32* %20, align 4, !tbaa !12
  %22 = mul nsw i32 %21, %19
  %23 = add nsw i32 %22, %6
  br label %24

; <label>:24                                      ; preds = %17, %.preheader3
  %25 = phi i32 [ %6, %17 ], [ -2147483648, %.preheader3 ]
  %pidx.0 = phi i32 [ %23, %17 ], [ %6, %.preheader3 ]
  %26 = icmp ult i64 %9, 4294967296
  br i1 %26, label %34, label %27

; <label>:27                                      ; preds = %24
  %28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  %29 = load i32, i32* %28, align 4, !tbaa !12
  %30 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  %31 = load i32, i32* %30, align 4, !tbaa !12
  %32 = mul nsw i32 %31, %29
  %33 = add nsw i32 %32, %pidx.0
  br label %34

; <label>:34                                      ; preds = %27, %24
  %35 = phi i32 [ %pidx.0, %27 ], [ -2147483648, %24 ]
  %pidx.1 = phi i32 [ %33, %27 ], [ %pidx.0, %24 ]
  %36 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 94
  %37 = bitcast i32* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

; <label>:41                                      ; preds = %34
  %42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  %43 = load i32, i32* %42, align 4, !tbaa !12
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  %45 = load i32, i32* %44, align 4, !tbaa !12
  %46 = mul nsw i32 %45, %43
  %47 = add nsw i32 %46, %pidx.1
  br label %48

; <label>:48                                      ; preds = %41, %34
  %49 = phi i32 [ %pidx.1, %41 ], [ -2147483648, %34 ]
  %pidx.2 = phi i32 [ %47, %41 ], [ %pidx.1, %34 ]
  %50 = icmp ult i64 %38, 4294967296
  br i1 %50, label %58, label %51

; <label>:51                                      ; preds = %48
  %52 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  %53 = load i32, i32* %52, align 4, !tbaa !12
  %54 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  %55 = load i32, i32* %54, align 4, !tbaa !12
  %56 = mul nsw i32 %55, %53
  %57 = add nsw i32 %56, %pidx.2
  br label %58

; <label>:58                                      ; preds = %51, %48
  %59 = phi i32 [ %pidx.2, %51 ], [ -2147483648, %48 ]
  %pidx.3 = phi i32 [ %57, %51 ], [ %pidx.2, %48 ]
  %60 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 96
  %61 = bitcast i32* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %.preheader, label %65

; <label>:65                                      ; preds = %58
  %66 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  %67 = load i32, i32* %66, align 4, !tbaa !12
  %68 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %70 = mul nsw i32 %69, %67
  %71 = add nsw i32 %70, %pidx.3
  br label %.preheader

.preheader:                                       ; preds = %65, %58
  %72 = phi i32 [ %pidx.3, %65 ], [ -2147483648, %58 ]
  %pidx.4 = phi i32 [ %71, %65 ], [ %pidx.3, %58 ]
  %73 = icmp ult i64 %62, 4294967296
  %.pidx.4 = select i1 %73, i32 -2147483648, i32 %pidx.4
  %74 = icmp sgt i32 %edgeElems, 0
  br i1 %74, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %.preheader
  %75 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %76 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28, i32 0, i32 0, i32 0
  %77 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %78 = mul nsw i32 %edgeElems, %edgeElems
  %79 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %80 = sub i32 %78, %edgeElems
  %81 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %82 = add i32 %edgeElems, -1
  %83 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23, i32 0, i32 0, i32 0
  %84 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22, i32 0, i32 0, i32 0
  %85 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25, i32 0, i32 0, i32 0
  %86 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24, i32 0, i32 0, i32 0
  %87 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27, i32 0, i32 0, i32 0
  %88 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26, i32 0, i32 0, i32 0
  %89 = sext i32 %edgeElems to i64
  br label %.lr.ph

._crit_edge7.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %.preheader
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph6
  %indvars.iv12 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next13, %._crit_edge ]
  %90 = mul nsw i64 %indvars.iv12, %89
  %91 = mul nsw i64 %90, %89
  %92 = load i32*, i32** %76, align 8
  %93 = trunc i64 %90 to i32
  br label %94

._crit_edge:                                      ; preds = %202
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %edgeElems
  br i1 %exitcond15, label %._crit_edge7.loopexit, label %.lr.ph

; <label>:94                                      ; preds = %202, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %202 ]
  %95 = load i32, i32* %75, align 4, !tbaa !86
  %96 = icmp eq i32 %95, 0
  %97 = add nsw i64 %indvars.iv, %90
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !12
  br i1 %96, label %100, label %102

; <label>:100                                     ; preds = %94
  %101 = or i32 %99, 4096
  store i32 %101, i32* %98, align 4, !tbaa !12
  br label %109

; <label>:102                                     ; preds = %94
  %103 = or i32 %99, 16384
  store i32 %103, i32* %98, align 4, !tbaa !12
  %104 = trunc i64 %indvars.iv to i32
  %105 = add i32 %104, %93
  %106 = add i32 %105, %25
  %107 = load i32*, i32** %88, align 8, !tbaa !5
  %108 = getelementptr inbounds i32, i32* %107, i64 %97
  store i32 %106, i32* %108, align 4, !tbaa !12
  br label %109

; <label>:109                                     ; preds = %102, %100
  %110 = load i32, i32* %75, align 4, !tbaa !86
  %111 = load i32, i32* %77, align 8, !tbaa !82
  %112 = add nsw i32 %111, -1
  %113 = icmp eq i32 %110, %112
  %114 = load i32, i32* %1, align 4, !tbaa !12
  %115 = trunc i64 %97 to i32
  %116 = sub i32 %115, %78
  %117 = add i32 %116, %114
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %92, i64 %118
  %120 = load i32, i32* %119, align 4, !tbaa !12
  br i1 %113, label %121, label %123

; <label>:121                                     ; preds = %109
  %122 = or i32 %120, 65536
  store i32 %122, i32* %119, align 4, !tbaa !12
  br label %133

; <label>:123                                     ; preds = %109
  %124 = or i32 %120, 131072
  store i32 %124, i32* %119, align 4, !tbaa !12
  %125 = trunc i64 %indvars.iv to i32
  %126 = add i32 %125, %93
  %127 = add i32 %126, %35
  %128 = load i32, i32* %1, align 4, !tbaa !12
  %129 = add i32 %116, %128
  %130 = sext i32 %129 to i64
  %131 = load i32*, i32** %87, align 8, !tbaa !5
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32 %127, i32* %132, align 4, !tbaa !12
  br label %133

; <label>:133                                     ; preds = %123, %121
  %134 = load i32, i32* %79, align 8, !tbaa !85
  %135 = icmp eq i32 %134, 0
  %136 = add nsw i64 %indvars.iv, %91
  %137 = getelementptr inbounds i32, i32* %92, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !12
  br i1 %135, label %139, label %141

; <label>:139                                     ; preds = %133
  %140 = or i32 %138, 64
  store i32 %140, i32* %137, align 4, !tbaa !12
  br label %148

; <label>:141                                     ; preds = %133
  %142 = or i32 %138, 256
  store i32 %142, i32* %137, align 4, !tbaa !12
  %143 = trunc i64 %indvars.iv to i32
  %144 = add i32 %143, %93
  %145 = add i32 %144, %49
  %146 = load i32*, i32** %86, align 8, !tbaa !5
  %147 = getelementptr inbounds i32, i32* %146, i64 %136
  store i32 %145, i32* %147, align 4, !tbaa !12
  br label %148

; <label>:148                                     ; preds = %141, %139
  %149 = load i32, i32* %79, align 8, !tbaa !85
  %150 = load i32, i32* %77, align 8, !tbaa !82
  %151 = add nsw i32 %150, -1
  %152 = icmp eq i32 %149, %151
  %153 = trunc i64 %136 to i32
  %154 = add i32 %80, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %92, i64 %155
  %157 = load i32, i32* %156, align 4, !tbaa !12
  br i1 %152, label %158, label %160

; <label>:158                                     ; preds = %148
  %159 = or i32 %157, 1024
  store i32 %159, i32* %156, align 4, !tbaa !12
  br label %167

; <label>:160                                     ; preds = %148
  %161 = or i32 %157, 2048
  store i32 %161, i32* %156, align 4, !tbaa !12
  %162 = trunc i64 %indvars.iv to i32
  %163 = add i32 %162, %93
  %164 = add i32 %163, %59
  %165 = load i32*, i32** %85, align 8, !tbaa !5
  %166 = getelementptr inbounds i32, i32* %165, i64 %155
  store i32 %164, i32* %166, align 4, !tbaa !12
  br label %167

; <label>:167                                     ; preds = %160, %158
  %168 = load i32, i32* %81, align 4, !tbaa !84
  %169 = icmp eq i32 %168, 0
  %170 = mul nsw i64 %indvars.iv, %89
  %171 = add nsw i64 %170, %91
  %172 = getelementptr inbounds i32, i32* %92, i64 %171
  %173 = load i32, i32* %172, align 4, !tbaa !12
  br i1 %169, label %174, label %176

; <label>:174                                     ; preds = %167
  %175 = or i32 %173, 1
  store i32 %175, i32* %172, align 4, !tbaa !12
  br label %183

; <label>:176                                     ; preds = %167
  %177 = or i32 %173, 4
  store i32 %177, i32* %172, align 4, !tbaa !12
  %178 = trunc i64 %indvars.iv to i32
  %179 = add i32 %178, %93
  %180 = add i32 %179, %72
  %181 = load i32*, i32** %84, align 8, !tbaa !5
  %182 = getelementptr inbounds i32, i32* %181, i64 %171
  store i32 %180, i32* %182, align 4, !tbaa !12
  br label %183

; <label>:183                                     ; preds = %176, %174
  %184 = load i32, i32* %81, align 4, !tbaa !84
  %185 = load i32, i32* %77, align 8, !tbaa !82
  %186 = add nsw i32 %185, -1
  %187 = icmp eq i32 %184, %186
  %188 = trunc i64 %171 to i32
  %189 = add i32 %82, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %92, i64 %190
  %192 = load i32, i32* %191, align 4, !tbaa !12
  br i1 %187, label %193, label %195

; <label>:193                                     ; preds = %183
  %194 = or i32 %192, 16
  store i32 %194, i32* %191, align 4, !tbaa !12
  br label %202

; <label>:195                                     ; preds = %183
  %196 = or i32 %192, 32
  store i32 %196, i32* %191, align 4, !tbaa !12
  %197 = trunc i64 %indvars.iv to i32
  %198 = add i32 %197, %93
  %199 = add i32 %198, %.pidx.4
  %200 = load i32*, i32** %83, align 8, !tbaa !5
  %201 = getelementptr inbounds i32, i32* %200, i64 %190
  store i32 %199, i32* %201, align 4, !tbaa !12
  br label %202

; <label>:202                                     ; preds = %195, %193
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %edgeElems
  br i1 %exitcond, label %._crit_edge, label %94
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* nocapture readonly %this, i32 %edgeNodes) #17 align 2 {
  %1 = icmp sgt i32 %edgeNodes, 0
  br i1 %1, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %0
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15, i32 0, i32 0, i32 0
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14, i32 0, i32 0, i32 0
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13, i32 0, i32 0, i32 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph6
  %nidx.04.us = phi i32 [ 0, %.lr.ph6 ], [ %35, %._crit_edge.us ]
  %i.03.us = phi i32 [ 0, %.lr.ph6 ], [ %36, %._crit_edge.us ]
  %8 = mul nsw i32 %i.03.us, %edgeNodes
  %9 = mul nsw i32 %8, %edgeNodes
  %10 = sext i32 %nidx.04.us to i64
  br label %11

; <label>:11                                      ; preds = %33, %.lr.ph.us
  %indvars.iv = phi i64 [ %10, %.lr.ph.us ], [ %indvars.iv.next, %33 ]
  %j.02.us = phi i32 [ 0, %.lr.ph.us ], [ %34, %33 ]
  %12 = load i32, i32* %2, align 4, !tbaa !86
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %11
  %15 = add nsw i32 %j.02.us, %8
  %16 = load i32*, i32** %3, align 8, !tbaa !5
  %17 = getelementptr inbounds i32, i32* %16, i64 %indvars.iv
  store i32 %15, i32* %17, align 4, !tbaa !12
  br label %18

; <label>:18                                      ; preds = %14, %11
  %19 = load i32, i32* %4, align 8, !tbaa !85
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %18
  %22 = add nsw i32 %j.02.us, %9
  %23 = load i32*, i32** %5, align 8, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %23, i64 %indvars.iv
  store i32 %22, i32* %24, align 4, !tbaa !12
  br label %25

; <label>:25                                      ; preds = %21, %18
  %26 = load i32, i32* %6, align 4, !tbaa !84
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %25
  %29 = mul nsw i32 %j.02.us, %edgeNodes
  %30 = add nsw i32 %29, %9
  %31 = load i32*, i32** %7, align 8, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %31, i64 %indvars.iv
  store i32 %30, i32* %32, align 4, !tbaa !12
  br label %33

; <label>:33                                      ; preds = %28, %25
  %34 = add nuw nsw i32 %j.02.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %34, %edgeNodes
  br i1 %exitcond, label %._crit_edge.us, label %11

._crit_edge.us:                                   ; preds = %33
  %35 = add i32 %nidx.04.us, %edgeNodes
  %36 = add nuw nsw i32 %i.03.us, 1
  %exitcond8 = icmp eq i32 %36, %edgeNodes
  br i1 %exitcond8, label %._crit_edge7.loopexit, label %.lr.ph.us

._crit_edge7.loopexit:                            ; preds = %._crit_edge.us
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %0
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain28SetupThreadSupportStructuresEv(%class.Domain* nocapture %this) #17 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 92
  %2 = bitcast i32** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z14InitMeshDecompiiPiS_S_S_(i32 %numRanks, i32 %myRank, i32* nocapture %col, i32* nocapture %row, i32* nocapture %plane, i32* nocapture %side) #4 {
  %1 = sitofp i32 %numRanks to double
  %2 = tail call double @cbrt(double %1) #2
  %3 = fadd double %2, 5.000000e-01
  %4 = fptosi double %3 to i32
  %5 = mul nsw i32 %4, %4
  %6 = mul nsw i32 %5, %4
  %7 = icmp eq i32 %6, %numRanks
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @str.26, i64 0, i64 0))
  tail call void @exit(i32 -1) #20
  unreachable

; <label>:9                                       ; preds = %0
  %myRank.lobit = lshr i32 %myRank, 31
  %.myRank = shl nsw i32 %myRank, %myRank.lobit
  %10 = srem i32 %.myRank, %4
  store i32 %10, i32* %col, align 4, !tbaa !12
  %11 = sdiv i32 %.myRank, %4
  %12 = srem i32 %11, %4
  store i32 %12, i32* %row, align 4, !tbaa !12
  %13 = sdiv i32 %.myRank, %5
  store i32 %13, i32* %plane, align 4, !tbaa !12
  store i32 %4, i32* %side, align 4, !tbaa !12
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { builtin }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 0}
!6 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !7, i64 0}
!7 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !8, i64 0, !8, i64 8, !8, i64 16}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !3, i64 0}
!14 = !{!15, !13, i64 32}
!15 = !{!"_ZTS11cmdLineOpts", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!16 = !{!15, !13, i64 20}
!17 = !{!15, !13, i64 4}
!18 = !{!15, !13, i64 28}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTS7timeval", !21, i64 0, !21, i64 8}
!21 = !{!"long", !3, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!15, !13, i64 24}
!24 = !{!25, !2, i64 1168}
!25 = !{!"_ZTS6Domain", !26, i64 0, !26, i64 24, !26, i64 48, !26, i64 72, !26, i64 96, !26, i64 120, !26, i64 144, !26, i64 168, !26, i64 192, !26, i64 216, !26, i64 240, !26, i64 264, !26, i64 288, !27, i64 312, !27, i64 336, !27, i64 360, !13, i64 384, !13, i64 388, !8, i64 392, !8, i64 400, !8, i64 408, !27, i64 416, !27, i64 440, !27, i64 464, !27, i64 488, !27, i64 512, !27, i64 536, !27, i64 560, !27, i64 584, !26, i64 608, !26, i64 632, !26, i64 656, !26, i64 680, !26, i64 704, !26, i64 728, !26, i64 752, !26, i64 776, !26, i64 800, !26, i64 824, !26, i64 848, !26, i64 872, !26, i64 896, !26, i64 920, !26, i64 944, !26, i64 968, !26, i64 992, !26, i64 1016, !26, i64 1040, !26, i64 1064, !26, i64 1088, !26, i64 1112, !2, i64 1136, !2, i64 1144, !2, i64 1152, !2, i64 1160, !2, i64 1168, !2, i64 1176, !2, i64 1184, !2, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !2, i64 1240, !2, i64 1248, !2, i64 1256, !2, i64 1264, !2, i64 1272, !2, i64 1280, !2, i64 1288, !2, i64 1296, !13, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !2, i64 1336, !2, i64 1344, !2, i64 1352, !2, i64 1360, !13, i64 1368, !13, i64 1372, !13, i64 1376, !13, i64 1380, !13, i64 1384, !13, i64 1388, !13, i64 1392, !13, i64 1396, !13, i64 1400, !13, i64 1404, !13, i64 1408, !13, i64 1412, !8, i64 1416, !8, i64 1424, !13, i64 1432, !13, i64 1436, !13, i64 1440, !13, i64 1444, !13, i64 1448, !13, i64 1452}
!26 = !{!"_ZTSSt6vectorIdSaIdEE"}
!27 = !{!"_ZTSSt6vectorIiSaIiEE"}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.vectorize.width", i32 1}
!32 = !{!"llvm.loop.interleave.count", i32 1}
!33 = !{!25, !2, i64 1176}
!34 = distinct !{!34, !31, !32}
!35 = distinct !{!35, !36, !31, !32}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !31, !32}
!38 = !{!6, !8, i64 8}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = !{!10, !8, i64 8}
!43 = !{!25, !8, i64 392}
!44 = !{!25, !2, i64 1208}
!45 = !{!25, !2, i64 1200}
!46 = !{!25, !2, i64 1216}
!47 = !{!25, !2, i64 1224}
!48 = !{!25, !8, i64 408}
!49 = !{!8, !8, i64 0}
!50 = !{!25, !2, i64 1248}
!51 = !{!25, !2, i64 1240}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = !{!25, !2, i64 1136}
!55 = !{!25, !2, i64 1144}
!56 = !{!25, !2, i64 1152}
!57 = !{!25, !2, i64 1256}
!58 = !{!25, !2, i64 1264}
!59 = !{!25, !2, i64 1280}
!60 = distinct !{!60, !31, !32}
!61 = distinct !{!61, !36, !31, !32}
!62 = distinct !{!62, !36, !31, !32}
!63 = distinct !{!63, !31, !32}
!64 = distinct !{!64, !31, !32}
!65 = distinct !{!65, !36, !31, !32}
!66 = distinct !{!66, !36, !31, !32}
!67 = distinct !{!67, !31, !32}
!68 = distinct !{!68, !36, !31, !32}
!69 = distinct !{!69, !31, !32}
!70 = !{!25, !2, i64 1160}
!71 = distinct !{!71, !31, !32}
!72 = distinct !{!72, !36, !31, !32}
!73 = !{!25, !2, i64 1232}
!74 = !{!25, !2, i64 1272}
!75 = !{!10, !8, i64 16}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
!80 = !{!3, !3, i64 0}
!81 = !{!15, !13, i64 16}
!82 = !{!25, !13, i64 1384}
!83 = !{!25, !13, i64 1368}
!84 = !{!25, !13, i64 1372}
!85 = !{!25, !13, i64 1376}
!86 = !{!25, !13, i64 1380}
!87 = !{!25, !13, i64 1388}
!88 = !{!25, !13, i64 1392}
!89 = !{!25, !13, i64 1396}
!90 = !{!25, !13, i64 1400}
!91 = !{!25, !13, i64 1404}
!92 = !{!25, !8, i64 400}
!93 = distinct !{!93, !31, !32}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !31, !32}
!96 = distinct !{!96, !31, !32}
!97 = distinct !{!97, !31, !32}
!98 = distinct !{!98, !36, !31, !32}
!99 = distinct !{!99, !31, !32}
!100 = distinct !{!100, !31, !32}
!101 = distinct !{!101, !31, !32}
!102 = !{!6, !8, i64 16}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !31, !32}
!105 = distinct !{!105, !36, !31, !32}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !31, !32}
!108 = distinct !{!108, !36, !31, !32}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !31, !32}
!111 = distinct !{!111, !36, !31, !32}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !31, !32}
!114 = distinct !{!114, !36, !31, !32}
!115 = !{!25, !13, i64 1408}
!116 = !{!25, !13, i64 1412}
!117 = !{!25, !13, i64 1448}
!118 = !{!25, !13, i64 1452}
