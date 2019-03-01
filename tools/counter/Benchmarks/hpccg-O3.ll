; ModuleID = 'hpccg-O3.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.YAML_Element = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *> >::_Vector_impl" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *> >::_Vector_impl" = type { %class.YAML_Element**, %class.YAML_Element**, %class.YAML_Element** }
%class.YAML_Doc = type { %class.YAML_Element, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct.HPC_Sparse_Matrix_STRUCT = type { i8*, i32, i32, i32, i64, i32, i32, i32, i32*, double**, i32**, double**, double*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4, %union.anon.4 }
%struct.timeval = type { i64, i64 }
%union.anon.4 = type { i64 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN12YAML_ElementC2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

@llvm.global_ctors = appending global [7 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_generate_matrix.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_read_HPC_row.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HPC_sparsemv.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HPCCG.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_YAML_Element.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_YAML_Doc.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Mode 1: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" nx ny nz\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"     where nx, ny and nz are the local sub-block dimensions, or\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Mode 2: \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" HPC_data_file \00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"     where HPC_data_file is a globally accessible file containing matrix data.\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Error in call to CG: \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hpccg\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Parallelism\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"MPI not enabled\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"OpenMP not enabled\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Number of iterations\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Final residual\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"#********** Performance Summary (times in sec) ***********\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Time Summary\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"FLOPS Summary\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"MFLOPS Summary\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZStL8__ioinit.2 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"local_nrow > 0\00", align 1
@.str.1.12 = private unnamed_addr constant [20 x i8] c"generate_matrix.cpp\00", align 1
@__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_ = private unnamed_addr constant [91 x i8] c"void generate_matrix(int, int, int, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@_ZStL8__ioinit.14 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Reading matrix info from %s...\0A\00", align 1
@.str.1.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.19 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1
@.str.3.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4.21 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5.22 = private unnamed_addr constant [26 x i8] c"cur_local_row==local_nrow\00", align 1
@.str.6.23 = private unnamed_addr constant [17 x i8] c"read_HPC_row.cpp\00", align 1
@__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_ = private unnamed_addr constant [81 x i8] c"void read_HPC_row(char *, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@.str.10.24 = private unnamed_addr constant [7 x i8] c"%lf %d\00", align 1
@.str.12.25 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"mat0.dat\00", align 1
@.str.1.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2.31 = private unnamed_addr constant [9 x i8] c"mat1.dat\00", align 1
@.str.3.32 = private unnamed_addr constant [9 x i8] c"mat2.dat\00", align 1
@.str.4.33 = private unnamed_addr constant [9 x i8] c"mat3.dat\00", align 1
@.str.5.34 = private unnamed_addr constant [16 x i8] c" %d %d %22.16e\0A\00", align 1
@_ZStL8__ioinit.36 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZStL8__ioinit.38 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Initial Residual = \00", align 1
@.str.1.42 = private unnamed_addr constant [13 x i8] c"Iteration = \00", align 1
@.str.2.43 = private unnamed_addr constant [15 x i8] c"   Residual = \00", align 1
@_ZStL8__ioinit.49 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*]
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [16 x i8*]
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant [16 x i8*]
@.str.4.59 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.1.60 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6.61 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.2.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3.63 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZStL8__ioinit.65 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.3.66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"Mini-Application Name: \00", align 1
@.str.1.70 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [27 x i8] c"Mini-Application Version: \00", align 1
@.str.4.72 = private unnamed_addr constant [31 x i8] c"%04d_%02d_%02d__%02d_%02d_%02d\00", align 1
@.str.5.73 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6.74 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.7.75 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.8.76 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9.77 = private unnamed_addr constant [7 x i8] c"mkdir \00", align 1
@.str.13.78 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11.80 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x i8*]

@_ZN12YAML_ElementC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ = alias void (%class.YAML_Element*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*), void (%class.YAML_Element*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*)* @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
@_ZN12YAML_ElementD1Ev = alias void (%class.YAML_Element*), void (%class.YAML_Element*)* @_ZN12YAML_ElementD2Ev
@_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_ = alias void (%class.YAML_Doc*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*), void (%class.YAML_Doc*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*)* @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
@_ZN8YAML_DocD1Ev = alias void (%class.YAML_Doc*), void (%class.YAML_Doc*)* @_ZN8YAML_DocD2Ev

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i260 = alloca i64, align 8
  %__dnew.i.i.i.i243 = alloca i64, align 8
  %__dnew.i.i.i.i157 = alloca i64, align 8
  %A = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %x = alloca double*, align 8
  %b = alloca double*, align 8
  %xexact = alloca double*, align 8
  %times = alloca [7 x double], align 16
  %niters = alloca i32, align 4
  %normr = alloca double, align 8
  %doc = alloca %class.YAML_Doc, align 8
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca %"class.std::__cxx11::basic_string", align 8
  %35 = alloca %"class.std::__cxx11::basic_string", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca %"class.std::__cxx11::basic_string", align 8
  %38 = alloca %"class.std::__cxx11::basic_string", align 8
  %39 = alloca %"class.std::__cxx11::basic_string", align 8
  %40 = alloca %"class.std::__cxx11::basic_string", align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::__cxx11::basic_string", align 8
  %43 = alloca %"class.std::__cxx11::basic_string", align 8
  %44 = alloca %"class.std::__cxx11::basic_string", align 8
  %45 = alloca %"class.std::__cxx11::basic_string", align 8
  %46 = alloca %"class.std::__cxx11::basic_string", align 8
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca %"class.std::__cxx11::basic_string", align 8
  %49 = alloca %"class.std::__cxx11::basic_string", align 8
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca %"class.std::__cxx11::basic_string", align 8
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  %53 = alloca %"class.std::__cxx11::basic_string", align 8
  %54 = alloca %"class.std::__cxx11::basic_string", align 8
  %yaml = alloca %"class.std::__cxx11::basic_string", align 8
  %55 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = bitcast double** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = bitcast double** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %58 = bitcast double** %xexact to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = bitcast [7 x double]* %times to i8*
  call void @llvm.lifetime.start(i64 56, i8* %59) #2
  switch i32 %argc, label %60 [
    i32 4, label %228
    i32 2, label %228
  ]

; <label>:60                                      ; preds = %0
  %61 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %62 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !1
  %63 = getelementptr i8, i8* %62, i64 -24
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 240
  %68 = bitcast i8* %67 to %"class.std::ctype"**
  %69 = load %"class.std::ctype"*, %"class.std::ctype"** %68, align 8, !tbaa !4
  %70 = icmp eq %"class.std::ctype"* %69, null
  br i1 %70, label %71, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit377

; <label>:71                                      ; preds = %60
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit377: ; preds = %60
  %72 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %69, i64 0, i32 8
  %73 = load i8, i8* %72, align 8, !tbaa !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

; <label>:75                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit377
  %76 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %69, i64 0, i32 9, i64 10
  %77 = load i8, i8* %76, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit360

; <label>:78                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit377
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %69)
  %79 = bitcast %"class.std::ctype"* %69 to i8 (%"class.std::ctype"*, i8)***
  %80 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %79, align 8, !tbaa !1
  %81 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %80, i64 6
  %82 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %81, align 8
  %83 = tail call signext i8 %82(%"class.std::ctype"* nonnull %69, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit360

_ZNKSt5ctypeIcE5widenEc.exit360:                  ; preds = %78, %75
  %.0.i359 = phi i8 [ %77, %75 ], [ %83, %78 ]
  %84 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cerr, i8 signext %.0.i359)
  %85 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %84)
  %86 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %85, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 8)
  %87 = load i8*, i8** %argv, align 8, !tbaa !12
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %102

; <label>:89                                      ; preds = %_ZNKSt5ctypeIcE5widenEc.exit360
  %90 = bitcast %"class.std::basic_ostream"* %85 to i8**
  %91 = load i8*, i8** %90, align 8, !tbaa !1
  %92 = getelementptr i8, i8* %91, i64 -24
  %93 = bitcast i8* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = bitcast %"class.std::basic_ostream"* %85 to i8*
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  %97 = bitcast i8* %96 to %"class.std::basic_ios"*
  %98 = getelementptr inbounds i8, i8* %96, i64 32
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %99, align 8, !tbaa !13
  %101 = or i32 %100, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %97, i32 %101)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

; <label>:102                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit360
  %103 = tail call i64 @strlen(i8* nonnull %87) #2
  %104 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %85, i8* nonnull %87, i64 %103)
  %.pre = bitcast %"class.std::basic_ostream"* %85 to i8**
  %.pre614 = bitcast %"class.std::basic_ostream"* %85 to i8*
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %102, %89
  %.pre-phi615 = phi i8* [ %95, %89 ], [ %.pre614, %102 ]
  %.pre-phi = phi i8** [ %90, %89 ], [ %.pre, %102 ]
  %105 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %85, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 9)
  %106 = load i8*, i8** %.pre-phi, align 8, !tbaa !1
  %107 = getelementptr i8, i8* %106, i64 -24
  %108 = bitcast i8* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %.pre-phi615, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 240
  %112 = bitcast i8* %111 to %"class.std::ctype"**
  %113 = load %"class.std::ctype"*, %"class.std::ctype"** %112, align 8, !tbaa !4
  %114 = icmp eq %"class.std::ctype"* %113, null
  br i1 %114, label %115, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit310

; <label>:115                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit310: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %116 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %113, i64 0, i32 8
  %117 = load i8, i8* %116, align 8, !tbaa !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

; <label>:119                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit310
  %120 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %113, i64 0, i32 9, i64 10
  %121 = load i8, i8* %120, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit293

; <label>:122                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit310
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %113)
  %123 = bitcast %"class.std::ctype"* %113 to i8 (%"class.std::ctype"*, i8)***
  %124 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %123, align 8, !tbaa !1
  %125 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %124, i64 6
  %126 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %125, align 8
  %127 = tail call signext i8 %126(%"class.std::ctype"* nonnull %113, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit293

_ZNKSt5ctypeIcE5widenEc.exit293:                  ; preds = %122, %119
  %.0.i292 = phi i8 [ %121, %119 ], [ %127, %122 ]
  %128 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %85, i8 signext %.0.i292)
  %129 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %128)
  %130 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %129, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 63)
  %131 = bitcast %"class.std::basic_ostream"* %129 to i8**
  %132 = load i8*, i8** %131, align 8, !tbaa !1
  %133 = getelementptr i8, i8* %132, i64 -24
  %134 = bitcast i8* %133 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = bitcast %"class.std::basic_ostream"* %129 to i8*
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  %138 = getelementptr inbounds i8, i8* %137, i64 240
  %139 = bitcast i8* %138 to %"class.std::ctype"**
  %140 = load %"class.std::ctype"*, %"class.std::ctype"** %139, align 8, !tbaa !4
  %141 = icmp eq %"class.std::ctype"* %140, null
  br i1 %141, label %142, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit259

; <label>:142                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit293
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit259: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit293
  %143 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %140, i64 0, i32 8
  %144 = load i8, i8* %143, align 8, !tbaa !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

; <label>:146                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit259
  %147 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %140, i64 0, i32 9, i64 10
  %148 = load i8, i8* %147, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit242

; <label>:149                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit259
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %140)
  %150 = bitcast %"class.std::ctype"* %140 to i8 (%"class.std::ctype"*, i8)***
  %151 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %150, align 8, !tbaa !1
  %152 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %151, i64 6
  %153 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %152, align 8
  %154 = tail call signext i8 %153(%"class.std::ctype"* nonnull %140, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit242

_ZNKSt5ctypeIcE5widenEc.exit242:                  ; preds = %149, %146
  %.0.i241 = phi i8 [ %148, %146 ], [ %154, %149 ]
  %155 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %129, i8 signext %.0.i241)
  %156 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %155)
  %157 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %156, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 8)
  %158 = load i8*, i8** %argv, align 8, !tbaa !12
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %173

; <label>:160                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit242
  %161 = bitcast %"class.std::basic_ostream"* %156 to i8**
  %162 = load i8*, i8** %161, align 8, !tbaa !1
  %163 = getelementptr i8, i8* %162, i64 -24
  %164 = bitcast i8* %163 to i64*
  %165 = load i64, i64* %164, align 8
  %166 = bitcast %"class.std::basic_ostream"* %156 to i8*
  %167 = getelementptr inbounds i8, i8* %166, i64 %165
  %168 = bitcast i8* %167 to %"class.std::basic_ios"*
  %169 = getelementptr inbounds i8, i8* %167, i64 32
  %170 = bitcast i8* %169 to i32*
  %171 = load i32, i32* %170, align 8, !tbaa !13
  %172 = or i32 %171, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %168, i32 %172)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82

; <label>:173                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit242
  %174 = tail call i64 @strlen(i8* nonnull %158) #2
  %175 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %156, i8* nonnull %158, i64 %174)
  %.pre616 = bitcast %"class.std::basic_ostream"* %156 to i8**
  %.pre618 = bitcast %"class.std::basic_ostream"* %156 to i8*
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %173, %160
  %.pre-phi619 = phi i8* [ %166, %160 ], [ %.pre618, %173 ]
  %.pre-phi617 = phi i8** [ %161, %160 ], [ %.pre616, %173 ]
  %176 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %156, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 15)
  %177 = load i8*, i8** %.pre-phi617, align 8, !tbaa !1
  %178 = getelementptr i8, i8* %177, i64 -24
  %179 = bitcast i8* %178 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %.pre-phi619, i64 %180
  %182 = getelementptr inbounds i8, i8* %181, i64 240
  %183 = bitcast i8* %182 to %"class.std::ctype"**
  %184 = load %"class.std::ctype"*, %"class.std::ctype"** %183, align 8, !tbaa !4
  %185 = icmp eq %"class.std::ctype"* %184, null
  br i1 %185, label %186, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit192

; <label>:186                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit192: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %187 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %184, i64 0, i32 8
  %188 = load i8, i8* %187, align 8, !tbaa !9
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %193, label %190

; <label>:190                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit192
  %191 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %184, i64 0, i32 9, i64 10
  %192 = load i8, i8* %191, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit175

; <label>:193                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit192
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %184)
  %194 = bitcast %"class.std::ctype"* %184 to i8 (%"class.std::ctype"*, i8)***
  %195 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %194, align 8, !tbaa !1
  %196 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %195, i64 6
  %197 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %196, align 8
  %198 = tail call signext i8 %197(%"class.std::ctype"* nonnull %184, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit175

_ZNKSt5ctypeIcE5widenEc.exit175:                  ; preds = %193, %190
  %.0.i174 = phi i8 [ %192, %190 ], [ %198, %193 ]
  %199 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %156, i8 signext %.0.i174)
  %200 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %199)
  %201 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %200, i8* nonnull getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i64 78)
  %202 = bitcast %"class.std::basic_ostream"* %200 to i8**
  %203 = load i8*, i8** %202, align 8, !tbaa !1
  %204 = getelementptr i8, i8* %203, i64 -24
  %205 = bitcast i8* %204 to i64*
  %206 = load i64, i64* %205, align 8
  %207 = bitcast %"class.std::basic_ostream"* %200 to i8*
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  %209 = getelementptr inbounds i8, i8* %208, i64 240
  %210 = bitcast i8* %209 to %"class.std::ctype"**
  %211 = load %"class.std::ctype"*, %"class.std::ctype"** %210, align 8, !tbaa !4
  %212 = icmp eq %"class.std::ctype"* %211, null
  br i1 %212, label %213, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit149

; <label>:213                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit175
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit149: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit175
  %214 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %211, i64 0, i32 8
  %215 = load i8, i8* %214, align 8, !tbaa !9
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217

; <label>:217                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit149
  %218 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %211, i64 0, i32 9, i64 10
  %219 = load i8, i8* %218, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit147

; <label>:220                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit149
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %211)
  %221 = bitcast %"class.std::ctype"* %211 to i8 (%"class.std::ctype"*, i8)***
  %222 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %221, align 8, !tbaa !1
  %223 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %222, i64 6
  %224 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %223, align 8
  %225 = tail call signext i8 %224(%"class.std::ctype"* nonnull %211, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit147

_ZNKSt5ctypeIcE5widenEc.exit147:                  ; preds = %220, %217
  %.0.i146 = phi i8 [ %219, %217 ], [ %225, %220 ]
  %226 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %200, i8 signext %.0.i146)
  %227 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %226)
  tail call void @exit(i32 1) #18
  unreachable

; <label>:228                                     ; preds = %0, %0
  %229 = icmp eq i32 %argc, 4
  %230 = getelementptr inbounds i8*, i8** %argv, i64 1
  %231 = load i8*, i8** %230, align 8, !tbaa !12
  br i1 %229, label %232, label %243

; <label>:232                                     ; preds = %228
  %233 = tail call i64 @strtol(i8* nocapture nonnull %231, i8** null, i32 10) #2
  %234 = trunc i64 %233 to i32
  %235 = getelementptr inbounds i8*, i8** %argv, i64 2
  %236 = load i8*, i8** %235, align 8, !tbaa !12
  %237 = tail call i64 @strtol(i8* nocapture nonnull %236, i8** null, i32 10) #2
  %238 = trunc i64 %237 to i32
  %239 = getelementptr inbounds i8*, i8** %argv, i64 3
  %240 = load i8*, i8** %239, align 8, !tbaa !12
  %241 = tail call i64 @strtol(i8* nocapture nonnull %240, i8** null, i32 10) #2
  %242 = trunc i64 %241 to i32
  call void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %234, i32 %238, i32 %242, %struct.HPC_Sparse_Matrix_STRUCT** nonnull %A, double** nonnull %x, double** nonnull %b, double** nonnull %xexact)
  br label %244

; <label>:243                                     ; preds = %228
  call void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(i8* %231, %struct.HPC_Sparse_Matrix_STRUCT** nonnull %A, double** nonnull %x, double** nonnull %b, double** nonnull %xexact)
  br label %244

; <label>:244                                     ; preds = %243, %232
  %nz.0 = phi i32 [ %242, %232 ], [ undef, %243 ]
  %ny.0 = phi i32 [ %238, %232 ], [ undef, %243 ]
  %nx.0 = phi i32 [ %234, %232 ], [ undef, %243 ]
  %245 = call double @_Z7mytimerv()
  %246 = bitcast i32* %niters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #2
  store i32 0, i32* %niters, align 4, !tbaa !21
  %247 = bitcast double* %normr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #2
  store double 0.000000e+00, double* %normr, align 8, !tbaa !22
  %248 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %249 = load double*, double** %b, align 8, !tbaa !12
  %250 = load double*, double** %x, align 8, !tbaa !12
  %251 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 0
  %252 = call i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(%struct.HPC_Sparse_Matrix_STRUCT* %248, double* %249, double* %250, i32 150, double 0.000000e+00, i32* nonnull dereferenceable(4) %niters, double* nonnull dereferenceable(8) %normr, double* %251)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %._crit_edge.i.i.i.i, label %254

; <label>:254                                     ; preds = %244
  %255 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 21)
  %256 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cerr, i32 %252)
  %257 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %256, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2)
  %258 = bitcast %"class.std::basic_ostream"* %256 to i8**
  %259 = load i8*, i8** %258, align 8, !tbaa !1
  %260 = getelementptr i8, i8* %259, i64 -24
  %261 = bitcast i8* %260 to i64*
  %262 = load i64, i64* %261, align 8
  %263 = bitcast %"class.std::basic_ostream"* %256 to i8*
  %264 = getelementptr inbounds i8, i8* %263, i64 %262
  %265 = getelementptr inbounds i8, i8* %264, i64 240
  %266 = bitcast i8* %265 to %"class.std::ctype"**
  %267 = load %"class.std::ctype"*, %"class.std::ctype"** %266, align 8, !tbaa !4
  %268 = icmp eq %"class.std::ctype"* %267, null
  br i1 %268, label %269, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:269                                     ; preds = %254
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %254
  %270 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %267, i64 0, i32 8
  %271 = load i8, i8* %270, align 8, !tbaa !9
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %276, label %273

; <label>:273                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %274 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %267, i64 0, i32 9, i64 10
  %275 = load i8, i8* %274, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:276                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %267)
  %277 = bitcast %"class.std::ctype"* %267 to i8 (%"class.std::ctype"*, i8)***
  %278 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %277, align 8, !tbaa !1
  %279 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %278, i64 6
  %280 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %279, align 8
  %281 = call signext i8 %280(%"class.std::ctype"* nonnull %267, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %276, %273
  %.0.i = phi i8 [ %275, %273 ], [ %281, %276 ]
  %282 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %256, i8 signext %.0.i)
  %283 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %282)
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNKSt5ctypeIcE5widenEc.exit, %244
  %284 = load i32, i32* %niters, align 4, !tbaa !21
  %285 = sitofp i32 %284 to double
  %286 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %248, i64 0, i32 3
  %287 = load i32, i32* %286, align 8, !tbaa !24
  %288 = sitofp i32 %287 to double
  %289 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %248, i64 0, i32 4
  %290 = load i64, i64* %289, align 8, !tbaa !27
  %291 = sitofp i64 %290 to double
  %292 = fmul double %285, 4.000000e+00
  %293 = fmul double %292, %288
  %294 = fmul double %285, 6.000000e+00
  %295 = fmul double %294, %288
  %296 = fmul double %285, 2.000000e+00
  %297 = fmul double %296, %291
  %298 = fadd double %293, %295
  %299 = fadd double %298, %297
  %300 = bitcast %class.YAML_Doc* %doc to i8*
  call void @llvm.lifetime.start(i64 216, i8* %300) #2
  %301 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %302 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %301, %union.anon** %302, align 8, !tbaa !28
  %303 = bitcast %union.anon* %301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %303, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5, i32 1, i1 false) #2
  %304 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  store i64 5, i64* %304, align 8, !tbaa !30
  %305 = getelementptr inbounds i8, i8* %303, i64 5
  store i8 0, i8* %305, align 1, !tbaa !11
  %306 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %307 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon**
  store %union.anon* %306, %union.anon** %307, align 8, !tbaa !28
  %308 = bitcast %union.anon* %306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %308, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i32 1, i1 false) #2
  %309 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  store i64 3, i64* %309, align 8, !tbaa !30
  %310 = getelementptr inbounds i8, i8* %308, i64 3
  store i8 0, i8* %310, align 1, !tbaa !11
  %311 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %312 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %311, %union.anon** %312, align 8, !tbaa !28
  %313 = bitcast %union.anon* %311 to i8*
  %314 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 0, i64* %314, align 8, !tbaa !30
  store i8 0, i8* %313, align 8, !tbaa !11
  %315 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %316 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %315, %union.anon** %316, align 8, !tbaa !28
  %317 = bitcast %union.anon* %315 to i8*
  %318 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %318, align 8, !tbaa !30
  store i8 0, i8* %317, align 8, !tbaa !11
  invoke void @_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(%class.YAML_Doc* nonnull %doc, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %319 unwind label %888

; <label>:319                                     ; preds = %._crit_edge.i.i.i.i
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8, !tbaa !32
  %322 = icmp eq i8* %321, %317
  br i1 %322, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %323

; <label>:323                                     ; preds = %319
  call void @_ZdlPv(i8* %321) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %323, %319
  %324 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8, !tbaa !32
  %326 = icmp eq i8* %325, %313
  br i1 %326, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %327

; <label>:327                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(i8* %325) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8, !tbaa !32
  %330 = icmp eq i8* %329, %308
  br i1 %330, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %331

; <label>:331                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @_ZdlPv(i8* %329) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %332 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8, !tbaa !32
  %334 = icmp eq i8* %333, %303
  br i1 %334, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %335

; <label>:335                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  call void @_ZdlPv(i8* %333) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %336 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %doc, i64 0, i32 0
  %337 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %338 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %337, %union.anon** %338, align 8, !tbaa !28
  %339 = bitcast %union.anon* %337 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %339, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11, i32 1, i1 false) #2
  %340 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 11, i64* %340, align 8, !tbaa !30
  %341 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %341, align 1, !tbaa !11
  %342 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %343 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %342, %union.anon** %343, align 8, !tbaa !28
  %344 = bitcast %union.anon* %342 to i8*
  %345 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %345, align 8, !tbaa !30
  store i8 0, i8* %344, align 8, !tbaa !11
  %346 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %6)
          to label %347 unwind label %908

; <label>:347                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %348 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8, !tbaa !32
  %350 = icmp eq i8* %349, %344
  br i1 %350, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %351

; <label>:351                                     ; preds = %347
  call void @_ZdlPv(i8* %349) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %351, %347
  %352 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8, !tbaa !32
  %354 = icmp eq i8* %353, %339
  br i1 %354, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %355

; <label>:355                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @_ZdlPv(i8* %353) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %356 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %357 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %356, %union.anon** %357, align 8, !tbaa !28
  %358 = bitcast %union.anon* %356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %358, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11, i32 1, i1 false) #2
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 11, i64* %359, align 8, !tbaa !30
  %360 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %360, align 1, !tbaa !11
  %361 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7)
          to label %._crit_edge.i.i.i.i132 unwind label %920

._crit_edge.i.i.i.i132:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %362 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %363 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %362, %union.anon** %363, align 8, !tbaa !28
  %364 = bitcast %union.anon* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %364, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 15, i32 1, i1 false) #2
  %365 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  store i64 15, i64* %365, align 8, !tbaa !30
  %366 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 1, i64 7
  store i8 0, i8* %366, align 1, !tbaa !11
  %367 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %368 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  store %union.anon* %367, %union.anon** %368, align 8, !tbaa !28
  %369 = bitcast %union.anon* %367 to i8*
  %370 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  store i64 0, i64* %370, align 8, !tbaa !30
  store i8 0, i8* %369, align 8, !tbaa !11
  %371 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %361, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9)
          to label %372 unwind label %924

; <label>:372                                     ; preds = %._crit_edge.i.i.i.i132
  %373 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8, !tbaa !32
  %375 = icmp eq i8* %374, %369
  br i1 %375, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %376

; <label>:376                                     ; preds = %372
  call void @_ZdlPv(i8* %374) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %376, %372
  %377 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8, !tbaa !32
  %379 = icmp eq i8* %378, %364
  br i1 %379, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %380

; <label>:380                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  call void @_ZdlPv(i8* %378) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %381 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8, !tbaa !32
  %383 = icmp eq i8* %382, %358
  br i1 %383, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %384

; <label>:384                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @_ZdlPv(i8* %382) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2
  %386 = bitcast %"class.std::__cxx11::basic_string"* %10 to %union.anon**
  store %union.anon* %385, %union.anon** %386, align 8, !tbaa !28
  %387 = bitcast %union.anon* %385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %387, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11, i32 1, i1 false) #2
  %388 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 1
  store i64 11, i64* %388, align 8, !tbaa !30
  %389 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %389, align 1, !tbaa !11
  %390 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10)
          to label %.noexc1.i160 unwind label %940

.noexc1.i160:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %391 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %392 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %391, %union.anon** %392, align 8, !tbaa !28
  %393 = bitcast %union.anon* %391 to i8*
  %394 = bitcast i64* %__dnew.i.i.i.i157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %394) #2
  store i64 18, i64* %__dnew.i.i.i.i157, align 8, !tbaa !33
  %395 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %11, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i157, i64 0)
          to label %.noexc162 unwind label %944

.noexc162:                                        ; preds = %.noexc1.i160
  %396 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  store i8* %395, i8** %396, align 8, !tbaa !32
  %397 = load i64, i64* %__dnew.i.i.i.i157, align 8, !tbaa !33
  %398 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %397, i64* %398, align 8, !tbaa !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %395, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 18, i32 1, i1 false) #2
  %399 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  store i64 %397, i64* %399, align 8, !tbaa !30
  %400 = load i8*, i8** %396, align 8, !tbaa !32
  %401 = getelementptr inbounds i8, i8* %400, i64 %397
  store i8 0, i8* %401, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %394) #2
  %402 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2
  %403 = bitcast %"class.std::__cxx11::basic_string"* %12 to %union.anon**
  store %union.anon* %402, %union.anon** %403, align 8, !tbaa !28
  %404 = bitcast %union.anon* %402 to i8*
  %405 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 1
  store i64 0, i64* %405, align 8, !tbaa !30
  store i8 0, i8* %404, align 8, !tbaa !11
  %406 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %390, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %11, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %12)
          to label %407 unwind label %948

; <label>:407                                     ; preds = %.noexc162
  %408 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8, !tbaa !32
  %410 = icmp eq i8* %409, %404
  br i1 %410, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %411

; <label>:411                                     ; preds = %407
  call void @_ZdlPv(i8* %409) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %411, %407
  %412 = load i8*, i8** %396, align 8, !tbaa !32
  %413 = icmp eq i8* %412, %393
  br i1 %413, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %414

; <label>:414                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  call void @_ZdlPv(i8* %412) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %415 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8, !tbaa !32
  %417 = icmp eq i8* %416, %387
  br i1 %417, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %418

; <label>:418                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  call void @_ZdlPv(i8* %416) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %419 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2
  %420 = bitcast %"class.std::__cxx11::basic_string"* %13 to %union.anon**
  store %union.anon* %419, %union.anon** %420, align 8, !tbaa !28
  %421 = bitcast %union.anon* %419 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %421, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %422 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 1
  store i64 10, i64* %422, align 8, !tbaa !30
  %423 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %423, align 2, !tbaa !11
  %424 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2
  %425 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %424, %union.anon** %425, align 8, !tbaa !28
  %426 = bitcast %union.anon* %424 to i8*
  %427 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 1
  store i64 0, i64* %427, align 8, !tbaa !30
  store i8 0, i8* %426, align 8, !tbaa !11
  %428 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %13, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %14)
          to label %429 unwind label %963

; <label>:429                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %430 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8, !tbaa !32
  %432 = icmp eq i8* %431, %426
  br i1 %432, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %433

; <label>:433                                     ; preds = %429
  call void @_ZdlPv(i8* %431) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %433, %429
  %434 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %435 = load i8*, i8** %434, align 8, !tbaa !32
  %436 = icmp eq i8* %435, %421
  br i1 %436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %437

; <label>:437                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @_ZdlPv(i8* %435) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %438 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2
  %439 = bitcast %"class.std::__cxx11::basic_string"* %15 to %union.anon**
  store %union.anon* %438, %union.anon** %439, align 8, !tbaa !28
  %440 = bitcast %union.anon* %438 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %440, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %441 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 1
  store i64 10, i64* %441, align 8, !tbaa !30
  %442 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %442, align 2, !tbaa !11
  %443 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %15)
          to label %._crit_edge.i.i.i.i202 unwind label %975

._crit_edge.i.i.i.i202:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %444 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2
  %445 = bitcast %"class.std::__cxx11::basic_string"* %16 to %union.anon**
  store %union.anon* %444, %union.anon** %445, align 8, !tbaa !28
  %446 = bitcast %union.anon* %444 to i8*
  %.phi.trans.insert.i.i.i.i201 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 0, i32 0
  %447 = bitcast %union.anon* %444 to i16*
  store i16 30830, i16* %447, align 8
  %448 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 1
  store i64 2, i64* %448, align 8, !tbaa !30
  %449 = getelementptr inbounds i8, i8* %446, i64 2
  store i8 0, i8* %449, align 2, !tbaa !11
  %450 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %443, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %16, i32 %nx.0)
          to label %451 unwind label %979

; <label>:451                                     ; preds = %._crit_edge.i.i.i.i202
  %452 = load i8*, i8** %.phi.trans.insert.i.i.i.i201, align 8, !tbaa !32
  %453 = icmp eq i8* %452, %446
  br i1 %453, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %454

; <label>:454                                     ; preds = %451
  call void @_ZdlPv(i8* %452) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %454, %451
  %455 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %456 = load i8*, i8** %455, align 8, !tbaa !32
  %457 = icmp eq i8* %456, %440
  br i1 %457, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %458

; <label>:458                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  call void @_ZdlPv(i8* %456) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %459 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 2
  %460 = bitcast %"class.std::__cxx11::basic_string"* %17 to %union.anon**
  store %union.anon* %459, %union.anon** %460, align 8, !tbaa !28
  %461 = bitcast %union.anon* %459 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %461, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %462 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 1
  store i64 10, i64* %462, align 8, !tbaa !30
  %463 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %463, align 2, !tbaa !11
  %464 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %17)
          to label %._crit_edge.i.i.i.i218 unwind label %990

._crit_edge.i.i.i.i218:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %465 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 2
  %466 = bitcast %"class.std::__cxx11::basic_string"* %18 to %union.anon**
  store %union.anon* %465, %union.anon** %466, align 8, !tbaa !28
  %467 = bitcast %union.anon* %465 to i8*
  %.phi.trans.insert.i.i.i.i217 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 0, i32 0
  %468 = bitcast %union.anon* %465 to i16*
  store i16 31086, i16* %468, align 8
  %469 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 1
  store i64 2, i64* %469, align 8, !tbaa !30
  %470 = getelementptr inbounds i8, i8* %467, i64 2
  store i8 0, i8* %470, align 2, !tbaa !11
  %471 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %464, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %18, i32 %ny.0)
          to label %472 unwind label %994

; <label>:472                                     ; preds = %._crit_edge.i.i.i.i218
  %473 = load i8*, i8** %.phi.trans.insert.i.i.i.i217, align 8, !tbaa !32
  %474 = icmp eq i8* %473, %467
  br i1 %474, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %475

; <label>:475                                     ; preds = %472
  call void @_ZdlPv(i8* %473) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %475, %472
  %476 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8, !tbaa !32
  %478 = icmp eq i8* %477, %461
  br i1 %478, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %479

; <label>:479                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  call void @_ZdlPv(i8* %477) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %480 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 2
  %481 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %480, %union.anon** %481, align 8, !tbaa !28
  %482 = bitcast %union.anon* %480 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %482, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %483 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 1
  store i64 10, i64* %483, align 8, !tbaa !30
  %484 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %484, align 2, !tbaa !11
  %485 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %19)
          to label %._crit_edge.i.i.i.i234 unwind label %1005

._crit_edge.i.i.i.i234:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %486 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 2
  %487 = bitcast %"class.std::__cxx11::basic_string"* %20 to %union.anon**
  store %union.anon* %486, %union.anon** %487, align 8, !tbaa !28
  %488 = bitcast %union.anon* %486 to i8*
  %.phi.trans.insert.i.i.i.i233 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 0, i32 0
  %489 = bitcast %union.anon* %486 to i16*
  store i16 31342, i16* %489, align 8
  %490 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 1
  store i64 2, i64* %490, align 8, !tbaa !30
  %491 = getelementptr inbounds i8, i8* %488, i64 2
  store i8 0, i8* %491, align 2, !tbaa !11
  %492 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %485, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20, i32 %nz.0)
          to label %493 unwind label %1009

; <label>:493                                     ; preds = %._crit_edge.i.i.i.i234
  %494 = load i8*, i8** %.phi.trans.insert.i.i.i.i233, align 8, !tbaa !32
  %495 = icmp eq i8* %494, %488
  br i1 %495, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %496

; <label>:496                                     ; preds = %493
  call void @_ZdlPv(i8* %494) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %496, %493
  %497 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 0, i32 0
  %498 = load i8*, i8** %497, align 8, !tbaa !32
  %499 = icmp eq i8* %498, %482
  br i1 %499, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %500

; <label>:500                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  call void @_ZdlPv(i8* %498) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %500, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %501 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 2
  %502 = bitcast %"class.std::__cxx11::basic_string"* %21 to %union.anon**
  store %union.anon* %501, %union.anon** %502, align 8, !tbaa !28
  %503 = bitcast %union.anon* %501 to i8*
  %504 = bitcast i64* %__dnew.i.i.i.i243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %504) #2
  store i64 20, i64* %__dnew.i.i.i.i243, align 8, !tbaa !33
  %505 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %21, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i243, i64 0)
          to label %.noexc248 unwind label %1020

.noexc248:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %506 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 0, i32 0
  store i8* %505, i8** %506, align 8, !tbaa !32
  %507 = load i64, i64* %__dnew.i.i.i.i243, align 8, !tbaa !33
  %508 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 2, i32 0
  store i64 %507, i64* %508, align 8, !tbaa !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %505, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i64 20, i32 1, i1 false) #2
  %509 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 1
  store i64 %507, i64* %509, align 8, !tbaa !30
  %510 = load i8*, i8** %506, align 8, !tbaa !32
  %511 = getelementptr inbounds i8, i8* %510, i64 %507
  store i8 0, i8* %511, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %504) #2
  %512 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %21, i32 %284)
          to label %513 unwind label %1024

; <label>:513                                     ; preds = %.noexc248
  %514 = load i8*, i8** %506, align 8, !tbaa !32
  %515 = icmp eq i8* %514, %503
  br i1 %515, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %516

; <label>:516                                     ; preds = %513
  call void @_ZdlPv(i8* %514) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %516, %513
  %517 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 2
  %518 = bitcast %"class.std::__cxx11::basic_string"* %22 to %union.anon**
  store %union.anon* %517, %union.anon** %518, align 8, !tbaa !28
  %519 = bitcast %union.anon* %517 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %519, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %520 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 1
  store i64 14, i64* %520, align 8, !tbaa !30
  %521 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %521, align 2, !tbaa !11
  %522 = load double, double* %normr, align 8, !tbaa !22
  %523 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %22, double %522)
          to label %524 unwind label %1031

; <label>:524                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %525 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 0, i32 0
  %526 = load i8*, i8** %525, align 8, !tbaa !32
  %527 = icmp eq i8* %526, %519
  br i1 %527, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %528

; <label>:528                                     ; preds = %524
  call void @_ZdlPv(i8* %526) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %528, %524
  %529 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 2
  %530 = bitcast %"class.std::__cxx11::basic_string"* %23 to %union.anon**
  store %union.anon* %529, %union.anon** %530, align 8, !tbaa !28
  %531 = bitcast %union.anon* %529 to i8*
  %532 = bitcast i64* %__dnew.i.i.i.i260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %532) #2
  store i64 58, i64* %__dnew.i.i.i.i260, align 8, !tbaa !33
  %533 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %23, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i260, i64 0)
          to label %.noexc265 unwind label %1039

.noexc265:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %534 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 0, i32 0
  store i8* %533, i8** %534, align 8, !tbaa !32
  %535 = load i64, i64* %__dnew.i.i.i.i260, align 8, !tbaa !33
  %536 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 2, i32 0
  store i64 %535, i64* %536, align 8, !tbaa !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %533, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 58, i32 1, i1 false) #2
  %537 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 1
  store i64 %535, i64* %537, align 8, !tbaa !30
  %538 = getelementptr inbounds i8, i8* %533, i64 %535
  store i8 0, i8* %538, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %532) #2
  %539 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 2
  %540 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %539, %union.anon** %540, align 8, !tbaa !28
  %541 = bitcast %union.anon* %539 to i8*
  %542 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 1
  store i64 0, i64* %542, align 8, !tbaa !30
  store i8 0, i8* %541, align 8, !tbaa !11
  %543 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %23, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %24)
          to label %544 unwind label %1043

; <label>:544                                     ; preds = %.noexc265
  %545 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 0, i32 0
  %546 = load i8*, i8** %545, align 8, !tbaa !32
  %547 = icmp eq i8* %546, %541
  br i1 %547, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %548

; <label>:548                                     ; preds = %544
  call void @_ZdlPv(i8* %546) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %548, %544
  %549 = load i8*, i8** %534, align 8, !tbaa !32
  %550 = icmp eq i8* %549, %531
  br i1 %550, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %551

; <label>:551                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  call void @_ZdlPv(i8* %549) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %551, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %552 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2
  %553 = bitcast %"class.std::__cxx11::basic_string"* %25 to %union.anon**
  store %union.anon* %552, %union.anon** %553, align 8, !tbaa !28
  %554 = bitcast %union.anon* %552 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %554, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 12, i32 1, i1 false) #2
  %555 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 1
  store i64 12, i64* %555, align 8, !tbaa !30
  %556 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %556, align 4, !tbaa !11
  %557 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2
  %558 = bitcast %"class.std::__cxx11::basic_string"* %26 to %union.anon**
  store %union.anon* %557, %union.anon** %558, align 8, !tbaa !28
  %559 = bitcast %union.anon* %557 to i8*
  %560 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 0, i64* %560, align 8, !tbaa !30
  store i8 0, i8* %559, align 8, !tbaa !11
  %561 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %26)
          to label %562 unwind label %1054

; <label>:562                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %563 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 0, i32 0
  %564 = load i8*, i8** %563, align 8, !tbaa !32
  %565 = icmp eq i8* %564, %559
  br i1 %565, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %566

; <label>:566                                     ; preds = %562
  call void @_ZdlPv(i8* %564) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %566, %562
  %567 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 0, i32 0
  %568 = load i8*, i8** %567, align 8, !tbaa !32
  %569 = icmp eq i8* %568, %554
  br i1 %569, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %570

; <label>:570                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  call void @_ZdlPv(i8* %568) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %570, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %571 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 2
  %572 = bitcast %"class.std::__cxx11::basic_string"* %27 to %union.anon**
  store %union.anon* %571, %union.anon** %572, align 8, !tbaa !28
  %573 = bitcast %union.anon* %571 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %573, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 12, i32 1, i1 false) #2
  %574 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 1
  store i64 12, i64* %574, align 8, !tbaa !30
  %575 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %575, align 4, !tbaa !11
  %576 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %27)
          to label %._crit_edge.i.i.i.i303 unwind label %1066

._crit_edge.i.i.i.i303:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %577 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 2
  %578 = bitcast %"class.std::__cxx11::basic_string"* %28 to %union.anon**
  store %union.anon* %577, %union.anon** %578, align 8, !tbaa !28
  %579 = bitcast %union.anon* %577 to i8*
  %.phi.trans.insert.i.i.i.i302 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 0, i32 0
  %580 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 1
  %581 = bitcast i64* %580 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885858332012372>, <2 x i64>* %581, align 8
  %582 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %582, align 8, !tbaa !11
  %583 = load double, double* %251, align 16, !tbaa !22
  %584 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %576, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %28, double %583)
          to label %585 unwind label %1070

; <label>:585                                     ; preds = %._crit_edge.i.i.i.i303
  %586 = load i8*, i8** %.phi.trans.insert.i.i.i.i302, align 8, !tbaa !32
  %587 = icmp eq i8* %586, %579
  br i1 %587, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %588

; <label>:588                                     ; preds = %585
  call void @_ZdlPv(i8* %586) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %588, %585
  %589 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %590 = load i8*, i8** %589, align 8, !tbaa !32
  %591 = icmp eq i8* %590, %573
  br i1 %591, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %592

; <label>:592                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  call void @_ZdlPv(i8* %590) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %592, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %593 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 2
  %594 = bitcast %"class.std::__cxx11::basic_string"* %29 to %union.anon**
  store %union.anon* %593, %union.anon** %594, align 8, !tbaa !28
  %595 = bitcast %union.anon* %593 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %595, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 12, i32 1, i1 false) #2
  %596 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 1
  store i64 12, i64* %596, align 8, !tbaa !30
  %597 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %597, align 4, !tbaa !11
  %598 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %29)
          to label %._crit_edge.i.i.i.i320 unwind label %1081

._crit_edge.i.i.i.i320:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %599 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 0, i32 2
  %600 = bitcast %"class.std::__cxx11::basic_string"* %30 to %union.anon**
  store %union.anon* %599, %union.anon** %600, align 8, !tbaa !28
  %601 = bitcast %union.anon* %599 to i8*
  %.phi.trans.insert.i.i.i.i319 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 0, i32 0, i32 0
  %602 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 0, i32 1
  %603 = bitcast i64* %602 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885531693958212>, <2 x i64>* %603, align 8
  %604 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %604, align 8, !tbaa !11
  %605 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 1
  %606 = load double, double* %605, align 8, !tbaa !22
  %607 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %598, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %30, double %606)
          to label %608 unwind label %1085

; <label>:608                                     ; preds = %._crit_edge.i.i.i.i320
  %609 = load i8*, i8** %.phi.trans.insert.i.i.i.i319, align 8, !tbaa !32
  %610 = icmp eq i8* %609, %601
  br i1 %610, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %611

; <label>:611                                     ; preds = %608
  call void @_ZdlPv(i8* %609) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %611, %608
  %612 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  %613 = load i8*, i8** %612, align 8, !tbaa !32
  %614 = icmp eq i8* %613, %595
  br i1 %614, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %615

; <label>:615                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  call void @_ZdlPv(i8* %613) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %616 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 2
  %617 = bitcast %"class.std::__cxx11::basic_string"* %31 to %union.anon**
  store %union.anon* %616, %union.anon** %617, align 8, !tbaa !28
  %618 = bitcast %union.anon* %616 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %618, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 12, i32 1, i1 false) #2
  %619 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 1
  store i64 12, i64* %619, align 8, !tbaa !30
  %620 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %620, align 4, !tbaa !11
  %621 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %31)
          to label %._crit_edge.i.i.i.i336 unwind label %1096

._crit_edge.i.i.i.i336:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %622 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 2
  %623 = bitcast %"class.std::__cxx11::basic_string"* %32 to %union.anon**
  store %union.anon* %622, %union.anon** %623, align 8, !tbaa !28
  %624 = bitcast %union.anon* %622 to i8*
  %.phi.trans.insert.i.i.i.i335 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 0, i32 0
  %625 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 1
  %626 = bitcast i64* %625 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314948349819109719>, <2 x i64>* %626, align 8
  %627 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %627, align 8, !tbaa !11
  %628 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 2
  %629 = load double, double* %628, align 16, !tbaa !22
  %630 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %621, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %32, double %629)
          to label %631 unwind label %1100

; <label>:631                                     ; preds = %._crit_edge.i.i.i.i336
  %632 = load i8*, i8** %.phi.trans.insert.i.i.i.i335, align 8, !tbaa !32
  %633 = icmp eq i8* %632, %624
  br i1 %633, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %634

; <label>:634                                     ; preds = %631
  call void @_ZdlPv(i8* %632) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %634, %631
  %635 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 0, i32 0
  %636 = load i8*, i8** %635, align 8, !tbaa !32
  %637 = icmp eq i8* %636, %618
  br i1 %637, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %638

; <label>:638                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  call void @_ZdlPv(i8* %636) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %639 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 2
  %640 = bitcast %"class.std::__cxx11::basic_string"* %33 to %union.anon**
  store %union.anon* %639, %union.anon** %640, align 8, !tbaa !28
  %641 = bitcast %union.anon* %639 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %641, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 12, i32 1, i1 false) #2
  %642 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 1
  store i64 12, i64* %642, align 8, !tbaa !30
  %643 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %643, align 4, !tbaa !11
  %644 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %33)
          to label %._crit_edge.i.i.i.i352 unwind label %1111

._crit_edge.i.i.i.i352:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %645 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %34, i64 0, i32 2
  %646 = bitcast %"class.std::__cxx11::basic_string"* %34 to %union.anon**
  store %union.anon* %645, %union.anon** %646, align 8, !tbaa !28
  %647 = bitcast %union.anon* %645 to i8*
  %.phi.trans.insert.i.i.i.i351 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %34, i64 0, i32 0, i32 0
  %648 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %34, i64 0, i32 1
  %649 = bitcast i64* %648 to <2 x i64>*
  store <2 x i64> <i64 8, i64 6218702884633137235>, <2 x i64>* %649, align 8
  %650 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %34, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %650, align 8, !tbaa !11
  %651 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 3
  %652 = load double, double* %651, align 8, !tbaa !22
  %653 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %644, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %34, double %652)
          to label %654 unwind label %1115

; <label>:654                                     ; preds = %._crit_edge.i.i.i.i352
  %655 = load i8*, i8** %.phi.trans.insert.i.i.i.i351, align 8, !tbaa !32
  %656 = icmp eq i8* %655, %647
  br i1 %656, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %657

; <label>:657                                     ; preds = %654
  call void @_ZdlPv(i8* %655) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %657, %654
  %658 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 0, i32 0
  %659 = load i8*, i8** %658, align 8, !tbaa !32
  %660 = icmp eq i8* %659, %641
  br i1 %660, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %661

; <label>:661                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  call void @_ZdlPv(i8* %659) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %662 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 2
  %663 = bitcast %"class.std::__cxx11::basic_string"* %35 to %union.anon**
  store %union.anon* %662, %union.anon** %663, align 8, !tbaa !28
  %664 = bitcast %union.anon* %662 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %664, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13, i32 1, i1 false) #2
  %665 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 1
  store i64 13, i64* %665, align 8, !tbaa !30
  %666 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 2, i32 1, i64 5
  store i8 0, i8* %666, align 1, !tbaa !11
  %667 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 2
  %668 = bitcast %"class.std::__cxx11::basic_string"* %36 to %union.anon**
  store %union.anon* %667, %union.anon** %668, align 8, !tbaa !28
  %669 = bitcast %union.anon* %667 to i8*
  %670 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 1
  store i64 0, i64* %670, align 8, !tbaa !30
  store i8 0, i8* %669, align 8, !tbaa !11
  %671 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %35, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %36)
          to label %672 unwind label %1126

; <label>:672                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %673 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 0, i32 0
  %674 = load i8*, i8** %673, align 8, !tbaa !32
  %675 = icmp eq i8* %674, %669
  br i1 %675, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %676

; <label>:676                                     ; preds = %672
  call void @_ZdlPv(i8* %674) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %676, %672
  %677 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 0, i32 0
  %678 = load i8*, i8** %677, align 8, !tbaa !32
  %679 = icmp eq i8* %678, %664
  br i1 %679, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %680

; <label>:680                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  call void @_ZdlPv(i8* %678) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %681 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 2
  %682 = bitcast %"class.std::__cxx11::basic_string"* %37 to %union.anon**
  store %union.anon* %681, %union.anon** %682, align 8, !tbaa !28
  %683 = bitcast %union.anon* %681 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %683, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13, i32 1, i1 false) #2
  %684 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 1
  store i64 13, i64* %684, align 8, !tbaa !30
  %685 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 2, i32 1, i64 5
  store i8 0, i8* %685, align 1, !tbaa !11
  %686 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %37)
          to label %._crit_edge.i.i.i.i387 unwind label %1138

._crit_edge.i.i.i.i387:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %687 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 0, i32 2
  %688 = bitcast %"class.std::__cxx11::basic_string"* %38 to %union.anon**
  store %union.anon* %687, %union.anon** %688, align 8, !tbaa !28
  %689 = bitcast %union.anon* %687 to i8*
  %.phi.trans.insert.i.i.i.i386 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 0, i32 0, i32 0
  %690 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 0, i32 1
  %691 = bitcast i64* %690 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885858332012372>, <2 x i64>* %691, align 8
  %692 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %692, align 8, !tbaa !11
  %693 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %686, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %38, double %299)
          to label %694 unwind label %1142

; <label>:694                                     ; preds = %._crit_edge.i.i.i.i387
  %695 = load i8*, i8** %.phi.trans.insert.i.i.i.i386, align 8, !tbaa !32
  %696 = icmp eq i8* %695, %689
  br i1 %696, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %697

; <label>:697                                     ; preds = %694
  call void @_ZdlPv(i8* %695) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %697, %694
  %698 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 0, i32 0
  %699 = load i8*, i8** %698, align 8, !tbaa !32
  %700 = icmp eq i8* %699, %683
  br i1 %700, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %701

; <label>:701                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  call void @_ZdlPv(i8* %699) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %701, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  %702 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 2
  %703 = bitcast %"class.std::__cxx11::basic_string"* %39 to %union.anon**
  store %union.anon* %702, %union.anon** %703, align 8, !tbaa !28
  %704 = bitcast %union.anon* %702 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %704, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13, i32 1, i1 false) #2
  %705 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 1
  store i64 13, i64* %705, align 8, !tbaa !30
  %706 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 2, i32 1, i64 5
  store i8 0, i8* %706, align 1, !tbaa !11
  %707 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %39)
          to label %._crit_edge.i.i.i.i404 unwind label %1153

._crit_edge.i.i.i.i404:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %708 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 2
  %709 = bitcast %"class.std::__cxx11::basic_string"* %40 to %union.anon**
  store %union.anon* %708, %union.anon** %709, align 8, !tbaa !28
  %710 = bitcast %union.anon* %708 to i8*
  %.phi.trans.insert.i.i.i.i403 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 0, i32 0
  %711 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 1
  %712 = bitcast i64* %711 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885531693958212>, <2 x i64>* %712, align 8
  %713 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %713, align 8, !tbaa !11
  %714 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %707, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %40, double %293)
          to label %715 unwind label %1157

; <label>:715                                     ; preds = %._crit_edge.i.i.i.i404
  %716 = load i8*, i8** %.phi.trans.insert.i.i.i.i403, align 8, !tbaa !32
  %717 = icmp eq i8* %716, %710
  br i1 %717, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, label %718

; <label>:718                                     ; preds = %715
  call void @_ZdlPv(i8* %716) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409: ; preds = %718, %715
  %719 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 0, i32 0
  %720 = load i8*, i8** %719, align 8, !tbaa !32
  %721 = icmp eq i8* %720, %704
  br i1 %721, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %722

; <label>:722                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409
  call void @_ZdlPv(i8* %720) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409
  %723 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 2
  %724 = bitcast %"class.std::__cxx11::basic_string"* %41 to %union.anon**
  store %union.anon* %723, %union.anon** %724, align 8, !tbaa !28
  %725 = bitcast %union.anon* %723 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %725, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13, i32 1, i1 false) #2
  %726 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 1
  store i64 13, i64* %726, align 8, !tbaa !30
  %727 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 2, i32 1, i64 5
  store i8 0, i8* %727, align 1, !tbaa !11
  %728 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %41)
          to label %._crit_edge.i.i.i.i422 unwind label %1168

._crit_edge.i.i.i.i422:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %729 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 2
  %730 = bitcast %"class.std::__cxx11::basic_string"* %42 to %union.anon**
  store %union.anon* %729, %union.anon** %730, align 8, !tbaa !28
  %731 = bitcast %union.anon* %729 to i8*
  %.phi.trans.insert.i.i.i.i421 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 0, i32 0
  %732 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 1
  %733 = bitcast i64* %732 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314948349819109719>, <2 x i64>* %733, align 8
  %734 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %734, align 8, !tbaa !11
  %735 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %728, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %42, double %295)
          to label %736 unwind label %1172

; <label>:736                                     ; preds = %._crit_edge.i.i.i.i422
  %737 = load i8*, i8** %.phi.trans.insert.i.i.i.i421, align 8, !tbaa !32
  %738 = icmp eq i8* %737, %731
  br i1 %738, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %739

; <label>:739                                     ; preds = %736
  call void @_ZdlPv(i8* %737) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %739, %736
  %740 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 0, i32 0
  %741 = load i8*, i8** %740, align 8, !tbaa !32
  %742 = icmp eq i8* %741, %725
  br i1 %742, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %743

; <label>:743                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  call void @_ZdlPv(i8* %741) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %743, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  %744 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 2
  %745 = bitcast %"class.std::__cxx11::basic_string"* %43 to %union.anon**
  store %union.anon* %744, %union.anon** %745, align 8, !tbaa !28
  %746 = bitcast %union.anon* %744 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %746, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13, i32 1, i1 false) #2
  %747 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 1
  store i64 13, i64* %747, align 8, !tbaa !30
  %748 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 2, i32 1, i64 5
  store i8 0, i8* %748, align 1, !tbaa !11
  %749 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %43)
          to label %._crit_edge.i.i.i.i440 unwind label %1183

._crit_edge.i.i.i.i440:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %750 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 2
  %751 = bitcast %"class.std::__cxx11::basic_string"* %44 to %union.anon**
  store %union.anon* %750, %union.anon** %751, align 8, !tbaa !28
  %752 = bitcast %union.anon* %750 to i8*
  %.phi.trans.insert.i.i.i.i439 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 0, i32 0
  %753 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 1
  %754 = bitcast i64* %753 to <2 x i64>*
  store <2 x i64> <i64 8, i64 6218702884633137235>, <2 x i64>* %754, align 8
  %755 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %755, align 8, !tbaa !11
  %756 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %749, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %44, double %297)
          to label %757 unwind label %1187

; <label>:757                                     ; preds = %._crit_edge.i.i.i.i440
  %758 = load i8*, i8** %.phi.trans.insert.i.i.i.i439, align 8, !tbaa !32
  %759 = icmp eq i8* %758, %752
  br i1 %759, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %760

; <label>:760                                     ; preds = %757
  call void @_ZdlPv(i8* %758) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %760, %757
  %761 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  %762 = load i8*, i8** %761, align 8, !tbaa !32
  %763 = icmp eq i8* %762, %746
  br i1 %763, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %764

; <label>:764                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  call void @_ZdlPv(i8* %762) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %764, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %765 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 2
  %766 = bitcast %"class.std::__cxx11::basic_string"* %45 to %union.anon**
  store %union.anon* %765, %union.anon** %766, align 8, !tbaa !28
  %767 = bitcast %union.anon* %765 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %767, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %768 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 1
  store i64 14, i64* %768, align 8, !tbaa !30
  %769 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %769, align 2, !tbaa !11
  %770 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 2
  %771 = bitcast %"class.std::__cxx11::basic_string"* %46 to %union.anon**
  store %union.anon* %770, %union.anon** %771, align 8, !tbaa !28
  %772 = bitcast %union.anon* %770 to i8*
  %773 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 1
  store i64 0, i64* %773, align 8, !tbaa !30
  store i8 0, i8* %772, align 8, !tbaa !11
  %774 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %45, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %46)
          to label %775 unwind label %1198

; <label>:775                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %776 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 0, i32 0
  %777 = load i8*, i8** %776, align 8, !tbaa !32
  %778 = icmp eq i8* %777, %772
  br i1 %778, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %779

; <label>:779                                     ; preds = %775
  call void @_ZdlPv(i8* %777) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %779, %775
  %780 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 0, i32 0
  %781 = load i8*, i8** %780, align 8, !tbaa !32
  %782 = icmp eq i8* %781, %767
  br i1 %782, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, label %783

; <label>:783                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  call void @_ZdlPv(i8* %781) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464: ; preds = %783, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  %784 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 2
  %785 = bitcast %"class.std::__cxx11::basic_string"* %47 to %union.anon**
  store %union.anon* %784, %union.anon** %785, align 8, !tbaa !28
  %786 = bitcast %union.anon* %784 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %786, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %787 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 1
  store i64 14, i64* %787, align 8, !tbaa !30
  %788 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %788, align 2, !tbaa !11
  %789 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %47)
          to label %._crit_edge.i.i.i.i476 unwind label %1210

._crit_edge.i.i.i.i476:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464
  %790 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 2
  %791 = bitcast %"class.std::__cxx11::basic_string"* %48 to %union.anon**
  store %union.anon* %790, %union.anon** %791, align 8, !tbaa !28
  %792 = bitcast %union.anon* %790 to i8*
  %.phi.trans.insert.i.i.i.i475 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 0, i32 0
  %793 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 1
  %794 = bitcast i64* %793 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885858332012372>, <2 x i64>* %794, align 8
  %795 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %795, align 8, !tbaa !11
  %796 = fdiv double %299, %583
  %797 = fdiv double %796, 1.000000e+06
  %798 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %789, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %48, double %797)
          to label %799 unwind label %1214

; <label>:799                                     ; preds = %._crit_edge.i.i.i.i476
  %800 = load i8*, i8** %.phi.trans.insert.i.i.i.i475, align 8, !tbaa !32
  %801 = icmp eq i8* %800, %792
  br i1 %801, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, label %802

; <label>:802                                     ; preds = %799
  call void @_ZdlPv(i8* %800) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481: ; preds = %802, %799
  %803 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 0, i32 0
  %804 = load i8*, i8** %803, align 8, !tbaa !32
  %805 = icmp eq i8* %804, %786
  br i1 %805, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, label %806

; <label>:806                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
  call void @_ZdlPv(i8* %804) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482: ; preds = %806, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
  %807 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %49, i64 0, i32 2
  %808 = bitcast %"class.std::__cxx11::basic_string"* %49 to %union.anon**
  store %union.anon* %807, %union.anon** %808, align 8, !tbaa !28
  %809 = bitcast %union.anon* %807 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %809, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %810 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %49, i64 0, i32 1
  store i64 14, i64* %810, align 8, !tbaa !30
  %811 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %49, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %811, align 2, !tbaa !11
  %812 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %49)
          to label %._crit_edge.i.i.i.i494 unwind label %1225

._crit_edge.i.i.i.i494:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482
  %813 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 2
  %814 = bitcast %"class.std::__cxx11::basic_string"* %50 to %union.anon**
  store %union.anon* %813, %union.anon** %814, align 8, !tbaa !28
  %815 = bitcast %union.anon* %813 to i8*
  %.phi.trans.insert.i.i.i.i493 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 0, i32 0
  %816 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 1
  %817 = bitcast i64* %816 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314885531693958212>, <2 x i64>* %817, align 8
  %818 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %818, align 8, !tbaa !11
  %819 = fdiv double %293, %606
  %820 = fdiv double %819, 1.000000e+06
  %821 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %812, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %50, double %820)
          to label %822 unwind label %1229

; <label>:822                                     ; preds = %._crit_edge.i.i.i.i494
  %823 = load i8*, i8** %.phi.trans.insert.i.i.i.i493, align 8, !tbaa !32
  %824 = icmp eq i8* %823, %815
  br i1 %824, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %825

; <label>:825                                     ; preds = %822
  call void @_ZdlPv(i8* %823) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %825, %822
  %826 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %49, i64 0, i32 0, i32 0
  %827 = load i8*, i8** %826, align 8, !tbaa !32
  %828 = icmp eq i8* %827, %809
  br i1 %828, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500, label %829

; <label>:829                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  call void @_ZdlPv(i8* %827) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500: ; preds = %829, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  %830 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 2
  %831 = bitcast %"class.std::__cxx11::basic_string"* %51 to %union.anon**
  store %union.anon* %830, %union.anon** %831, align 8, !tbaa !28
  %832 = bitcast %union.anon* %830 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %832, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %833 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 1
  store i64 14, i64* %833, align 8, !tbaa !30
  %834 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %834, align 2, !tbaa !11
  %835 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %51)
          to label %._crit_edge.i.i.i.i512 unwind label %1240

._crit_edge.i.i.i.i512:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500
  %836 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 2
  %837 = bitcast %"class.std::__cxx11::basic_string"* %52 to %union.anon**
  store %union.anon* %836, %union.anon** %837, align 8, !tbaa !28
  %838 = bitcast %union.anon* %836 to i8*
  %.phi.trans.insert.i.i.i.i511 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 0, i32 0
  %839 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 1
  %840 = bitcast i64* %839 to <2 x i64>*
  store <2 x i64> <i64 8, i64 2314948349819109719>, <2 x i64>* %840, align 8
  %841 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %841, align 8, !tbaa !11
  %842 = fdiv double %295, %629
  %843 = fdiv double %842, 1.000000e+06
  %844 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %835, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %52, double %843)
          to label %845 unwind label %1244

; <label>:845                                     ; preds = %._crit_edge.i.i.i.i512
  %846 = load i8*, i8** %.phi.trans.insert.i.i.i.i511, align 8, !tbaa !32
  %847 = icmp eq i8* %846, %838
  br i1 %847, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %848

; <label>:848                                     ; preds = %845
  call void @_ZdlPv(i8* %846) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %848, %845
  %849 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 0, i32 0
  %850 = load i8*, i8** %849, align 8, !tbaa !32
  %851 = icmp eq i8* %850, %832
  br i1 %851, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, label %852

; <label>:852                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
  call void @_ZdlPv(i8* %850) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %852, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
  %853 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %53, i64 0, i32 2
  %854 = bitcast %"class.std::__cxx11::basic_string"* %53 to %union.anon**
  store %union.anon* %853, %union.anon** %854, align 8, !tbaa !28
  %855 = bitcast %union.anon* %853 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %855, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %856 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %53, i64 0, i32 1
  store i64 14, i64* %856, align 8, !tbaa !30
  %857 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %53, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %857, align 2, !tbaa !11
  %858 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %336, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %53)
          to label %._crit_edge.i.i.i.i530 unwind label %1255

._crit_edge.i.i.i.i530:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %859 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 2
  %860 = bitcast %"class.std::__cxx11::basic_string"* %54 to %union.anon**
  store %union.anon* %859, %union.anon** %860, align 8, !tbaa !28
  %861 = bitcast %union.anon* %859 to i8*
  %.phi.trans.insert.i.i.i.i529 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 0, i32 0
  %862 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 1
  %863 = bitcast i64* %862 to <2 x i64>*
  store <2 x i64> <i64 8, i64 6218702884633137235>, <2 x i64>* %863, align 8
  %864 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %864, align 8, !tbaa !11
  %865 = fdiv double %297, %652
  %866 = fdiv double %865, 1.000000e+06
  %867 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %858, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %54, double %866)
          to label %868 unwind label %1259

; <label>:868                                     ; preds = %._crit_edge.i.i.i.i530
  %869 = load i8*, i8** %.phi.trans.insert.i.i.i.i529, align 8, !tbaa !32
  %870 = icmp eq i8* %869, %861
  br i1 %870, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535, label %871

; <label>:871                                     ; preds = %868
  call void @_ZdlPv(i8* %869) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535: ; preds = %871, %868
  %872 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %53, i64 0, i32 0, i32 0
  %873 = load i8*, i8** %872, align 8, !tbaa !32
  %874 = icmp eq i8* %873, %855
  br i1 %874, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, label %875

; <label>:875                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  call void @_ZdlPv(i8* %873) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536: ; preds = %875, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  %876 = bitcast %"class.std::__cxx11::basic_string"* %yaml to i8*
  call void @llvm.lifetime.start(i64 32, i8* %876) #2
  invoke void @_ZN8YAML_Doc12generateYAMLEv(%"class.std::__cxx11::basic_string"* nonnull sret %yaml, %class.YAML_Doc* nonnull %doc)
          to label %877 unwind label %1270

; <label>:877                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536
  %878 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %yaml, i64 0, i32 0, i32 0
  %879 = load i8*, i8** %878, align 8, !tbaa !32
  %880 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %yaml, i64 0, i32 1
  %881 = load i64, i64* %880, align 8, !tbaa !30
  %882 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* %879, i64 %881)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %1274

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %877
  %883 = load i8*, i8** %878, align 8, !tbaa !32
  %884 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %yaml, i64 0, i32 2
  %885 = bitcast %union.anon* %884 to i8*
  %886 = icmp eq i8* %883, %885
  br i1 %886, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, label %887

; <label>:887                                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(i8* %883) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539: ; preds = %887, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.end(i64 32, i8* nonnull %876) #2
  call void @_ZN8YAML_DocD1Ev(%class.YAML_Doc* nonnull %doc)
  call void @llvm.lifetime.end(i64 216, i8* %300) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %246) #2
  call void @llvm.lifetime.end(i64 56, i8* nonnull %59) #2
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %57) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %56) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %55) #2
  ret i32 0

; <label>:888                                     ; preds = %._crit_edge.i.i.i.i
  %889 = landingpad { i8*, i32 }
          cleanup
  %890 = extractvalue { i8*, i32 } %889, 0
  %891 = extractvalue { i8*, i32 } %889, 1
  %892 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %893 = load i8*, i8** %892, align 8, !tbaa !32
  %894 = icmp eq i8* %893, %317
  br i1 %894, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, label %895

; <label>:895                                     ; preds = %888
  call void @_ZdlPv(i8* %893) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540: ; preds = %895, %888
  %896 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %897 = load i8*, i8** %896, align 8, !tbaa !32
  %898 = icmp eq i8* %897, %313
  br i1 %898, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %899

; <label>:899                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540
  call void @_ZdlPv(i8* %897) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %899, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540
  %900 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %901 = load i8*, i8** %900, align 8, !tbaa !32
  %902 = icmp eq i8* %901, %308
  br i1 %902, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, label %903

; <label>:903                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  call void @_ZdlPv(i8* %901) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %903, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  %904 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %905 = load i8*, i8** %904, align 8, !tbaa !32
  %906 = icmp eq i8* %905, %303
  br i1 %906, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, label %907

; <label>:907                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
  call void @_ZdlPv(i8* %905) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546

; <label>:908                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %909 = landingpad { i8*, i32 }
          cleanup
  %910 = extractvalue { i8*, i32 } %909, 0
  %911 = extractvalue { i8*, i32 } %909, 1
  %912 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %913 = load i8*, i8** %912, align 8, !tbaa !32
  %914 = icmp eq i8* %913, %344
  br i1 %914, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %915

; <label>:915                                     ; preds = %908
  call void @_ZdlPv(i8* %913) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %915, %908
  %916 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %917 = load i8*, i8** %916, align 8, !tbaa !32
  %918 = icmp eq i8* %917, %339
  br i1 %918, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %919

; <label>:919                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  call void @_ZdlPv(i8* %917) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:920                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %921 = landingpad { i8*, i32 }
          cleanup
  %922 = extractvalue { i8*, i32 } %921, 0
  %923 = extractvalue { i8*, i32 } %921, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554

; <label>:924                                     ; preds = %._crit_edge.i.i.i.i132
  %925 = landingpad { i8*, i32 }
          cleanup
  %926 = extractvalue { i8*, i32 } %925, 0
  %927 = extractvalue { i8*, i32 } %925, 1
  %928 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %929 = load i8*, i8** %928, align 8, !tbaa !32
  %930 = icmp eq i8* %929, %369
  br i1 %930, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, label %931

; <label>:931                                     ; preds = %924
  call void @_ZdlPv(i8* %929) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %931, %924
  %932 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %933 = load i8*, i8** %932, align 8, !tbaa !32
  %934 = icmp eq i8* %933, %364
  br i1 %934, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, label %935

; <label>:935                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  call void @_ZdlPv(i8* %933) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554: ; preds = %935, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %920
  %.817 = phi i8* [ %922, %920 ], [ %926, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %926, %935 ]
  %.8 = phi i32 [ %923, %920 ], [ %927, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %927, %935 ]
  %936 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %937 = load i8*, i8** %936, align 8, !tbaa !32
  %938 = icmp eq i8* %937, %358
  br i1 %938, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %939

; <label>:939                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554
  call void @_ZdlPv(i8* %937) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:940                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %941 = landingpad { i8*, i32 }
          cleanup
  %942 = extractvalue { i8*, i32 } %941, 0
  %943 = extractvalue { i8*, i32 } %941, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560

; <label>:944                                     ; preds = %.noexc1.i160
  %945 = landingpad { i8*, i32 }
          cleanup
  %946 = extractvalue { i8*, i32 } %945, 0
  %947 = extractvalue { i8*, i32 } %945, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560

; <label>:948                                     ; preds = %.noexc162
  %949 = landingpad { i8*, i32 }
          cleanup
  %950 = extractvalue { i8*, i32 } %949, 0
  %951 = extractvalue { i8*, i32 } %949, 1
  %952 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %953 = load i8*, i8** %952, align 8, !tbaa !32
  %954 = icmp eq i8* %953, %404
  br i1 %954, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %955

; <label>:955                                     ; preds = %948
  call void @_ZdlPv(i8* %953) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %955, %948
  %956 = load i8*, i8** %396, align 8, !tbaa !32
  %957 = icmp eq i8* %956, %393
  br i1 %957, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, label %958

; <label>:958                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  call void @_ZdlPv(i8* %956) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560: ; preds = %958, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %944, %940
  %.1221 = phi i8* [ %942, %940 ], [ %946, %944 ], [ %950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558 ], [ %950, %958 ]
  %.12 = phi i32 [ %943, %940 ], [ %947, %944 ], [ %951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558 ], [ %951, %958 ]
  %959 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %960 = load i8*, i8** %959, align 8, !tbaa !32
  %961 = icmp eq i8* %960, %387
  br i1 %961, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %962

; <label>:962                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560
  call void @_ZdlPv(i8* %960) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:963                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %964 = landingpad { i8*, i32 }
          cleanup
  %965 = extractvalue { i8*, i32 } %964, 0
  %966 = extractvalue { i8*, i32 } %964, 1
  %967 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %968 = load i8*, i8** %967, align 8, !tbaa !32
  %969 = icmp eq i8* %968, %426
  br i1 %969, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, label %970

; <label>:970                                     ; preds = %963
  call void @_ZdlPv(i8* %968) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564: ; preds = %970, %963
  %971 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %972 = load i8*, i8** %971, align 8, !tbaa !32
  %973 = icmp eq i8* %972, %421
  br i1 %973, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %974

; <label>:974                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564
  call void @_ZdlPv(i8* %972) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:975                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %976 = landingpad { i8*, i32 }
          cleanup
  %977 = extractvalue { i8*, i32 } %976, 0
  %978 = extractvalue { i8*, i32 } %976, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

; <label>:979                                     ; preds = %._crit_edge.i.i.i.i202
  %980 = landingpad { i8*, i32 }
          cleanup
  %981 = extractvalue { i8*, i32 } %980, 0
  %982 = extractvalue { i8*, i32 } %980, 1
  %983 = load i8*, i8** %.phi.trans.insert.i.i.i.i201, align 8, !tbaa !32
  %984 = icmp eq i8* %983, %446
  br i1 %984, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %985

; <label>:985                                     ; preds = %979
  call void @_ZdlPv(i8* %983) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %985, %979, %975
  %.1726 = phi i8* [ %977, %975 ], [ %981, %979 ], [ %981, %985 ]
  %.17 = phi i32 [ %978, %975 ], [ %982, %979 ], [ %982, %985 ]
  %986 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %987 = load i8*, i8** %986, align 8, !tbaa !32
  %988 = icmp eq i8* %987, %440
  br i1 %988, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %989

; <label>:989                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  call void @_ZdlPv(i8* %987) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:990                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %991 = landingpad { i8*, i32 }
          cleanup
  %992 = extractvalue { i8*, i32 } %991, 0
  %993 = extractvalue { i8*, i32 } %991, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

; <label>:994                                     ; preds = %._crit_edge.i.i.i.i218
  %995 = landingpad { i8*, i32 }
          cleanup
  %996 = extractvalue { i8*, i32 } %995, 0
  %997 = extractvalue { i8*, i32 } %995, 1
  %998 = load i8*, i8** %.phi.trans.insert.i.i.i.i217, align 8, !tbaa !32
  %999 = icmp eq i8* %998, %467
  br i1 %999, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %1000

; <label>:1000                                    ; preds = %994
  call void @_ZdlPv(i8* %998) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %1000, %994, %990
  %.2029 = phi i8* [ %992, %990 ], [ %996, %994 ], [ %996, %1000 ]
  %.20 = phi i32 [ %993, %990 ], [ %997, %994 ], [ %997, %1000 ]
  %1001 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %1002 = load i8*, i8** %1001, align 8, !tbaa !32
  %1003 = icmp eq i8* %1002, %461
  br i1 %1003, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1004

; <label>:1004                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
  call void @_ZdlPv(i8* %1002) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1005                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %1006 = landingpad { i8*, i32 }
          cleanup
  %1007 = extractvalue { i8*, i32 } %1006, 0
  %1008 = extractvalue { i8*, i32 } %1006, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

; <label>:1009                                    ; preds = %._crit_edge.i.i.i.i234
  %1010 = landingpad { i8*, i32 }
          cleanup
  %1011 = extractvalue { i8*, i32 } %1010, 0
  %1012 = extractvalue { i8*, i32 } %1010, 1
  %1013 = load i8*, i8** %.phi.trans.insert.i.i.i.i233, align 8, !tbaa !32
  %1014 = icmp eq i8* %1013, %488
  br i1 %1014, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %1015

; <label>:1015                                    ; preds = %1009
  call void @_ZdlPv(i8* %1013) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %1015, %1009, %1005
  %.2332 = phi i8* [ %1007, %1005 ], [ %1011, %1009 ], [ %1011, %1015 ]
  %.23 = phi i32 [ %1008, %1005 ], [ %1012, %1009 ], [ %1012, %1015 ]
  %1016 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 0, i32 0
  %1017 = load i8*, i8** %1016, align 8, !tbaa !32
  %1018 = icmp eq i8* %1017, %482
  br i1 %1018, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1019

; <label>:1019                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
  call void @_ZdlPv(i8* %1017) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1020                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %1021 = landingpad { i8*, i32 }
          cleanup
  %1022 = extractvalue { i8*, i32 } %1021, 0
  %1023 = extractvalue { i8*, i32 } %1021, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1024                                    ; preds = %.noexc248
  %1025 = landingpad { i8*, i32 }
          cleanup
  %1026 = extractvalue { i8*, i32 } %1025, 0
  %1027 = extractvalue { i8*, i32 } %1025, 1
  %1028 = load i8*, i8** %506, align 8, !tbaa !32
  %1029 = icmp eq i8* %1028, %503
  br i1 %1029, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1030

; <label>:1030                                    ; preds = %1024
  call void @_ZdlPv(i8* %1028) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1031                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %1032 = landingpad { i8*, i32 }
          cleanup
  %1033 = extractvalue { i8*, i32 } %1032, 0
  %1034 = extractvalue { i8*, i32 } %1032, 1
  %1035 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 0, i32 0
  %1036 = load i8*, i8** %1035, align 8, !tbaa !32
  %1037 = icmp eq i8* %1036, %519
  br i1 %1037, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1038

; <label>:1038                                    ; preds = %1031
  call void @_ZdlPv(i8* %1036) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1039                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %1040 = landingpad { i8*, i32 }
          cleanup
  %1041 = extractvalue { i8*, i32 } %1040, 0
  %1042 = extractvalue { i8*, i32 } %1040, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1043                                    ; preds = %.noexc265
  %1044 = landingpad { i8*, i32 }
          cleanup
  %1045 = extractvalue { i8*, i32 } %1044, 0
  %1046 = extractvalue { i8*, i32 } %1044, 1
  %1047 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 0, i32 0
  %1048 = load i8*, i8** %1047, align 8, !tbaa !32
  %1049 = icmp eq i8* %1048, %541
  br i1 %1049, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, label %1050

; <label>:1050                                    ; preds = %1043
  call void @_ZdlPv(i8* %1048) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573: ; preds = %1050, %1043
  %1051 = load i8*, i8** %534, align 8, !tbaa !32
  %1052 = icmp eq i8* %1051, %531
  br i1 %1052, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1053

; <label>:1053                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573
  call void @_ZdlPv(i8* %1051) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1054                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %1055 = landingpad { i8*, i32 }
          cleanup
  %1056 = extractvalue { i8*, i32 } %1055, 0
  %1057 = extractvalue { i8*, i32 } %1055, 1
  %1058 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 0, i32 0
  %1059 = load i8*, i8** %1058, align 8, !tbaa !32
  %1060 = icmp eq i8* %1059, %559
  br i1 %1060, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, label %1061

; <label>:1061                                    ; preds = %1054
  call void @_ZdlPv(i8* %1059) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569: ; preds = %1061, %1054
  %1062 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 0, i32 0
  %1063 = load i8*, i8** %1062, align 8, !tbaa !32
  %1064 = icmp eq i8* %1063, %554
  br i1 %1064, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1065

; <label>:1065                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569
  call void @_ZdlPv(i8* %1063) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1066                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %1067 = landingpad { i8*, i32 }
          cleanup
  %1068 = extractvalue { i8*, i32 } %1067, 0
  %1069 = extractvalue { i8*, i32 } %1067, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

; <label>:1070                                    ; preds = %._crit_edge.i.i.i.i303
  %1071 = landingpad { i8*, i32 }
          cleanup
  %1072 = extractvalue { i8*, i32 } %1071, 0
  %1073 = extractvalue { i8*, i32 } %1071, 1
  %1074 = load i8*, i8** %.phi.trans.insert.i.i.i.i302, align 8, !tbaa !32
  %1075 = icmp eq i8* %1074, %579
  br i1 %1075, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %1076

; <label>:1076                                    ; preds = %1070
  call void @_ZdlPv(i8* %1074) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565: ; preds = %1076, %1070, %1066
  %.3241 = phi i8* [ %1068, %1066 ], [ %1072, %1070 ], [ %1072, %1076 ]
  %.32 = phi i32 [ %1069, %1066 ], [ %1073, %1070 ], [ %1073, %1076 ]
  %1077 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %1078 = load i8*, i8** %1077, align 8, !tbaa !32
  %1079 = icmp eq i8* %1078, %573
  br i1 %1079, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1080

; <label>:1080                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  call void @_ZdlPv(i8* %1078) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1081                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %1082 = landingpad { i8*, i32 }
          cleanup
  %1083 = extractvalue { i8*, i32 } %1082, 0
  %1084 = extractvalue { i8*, i32 } %1082, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561

; <label>:1085                                    ; preds = %._crit_edge.i.i.i.i320
  %1086 = landingpad { i8*, i32 }
          cleanup
  %1087 = extractvalue { i8*, i32 } %1086, 0
  %1088 = extractvalue { i8*, i32 } %1086, 1
  %1089 = load i8*, i8** %.phi.trans.insert.i.i.i.i319, align 8, !tbaa !32
  %1090 = icmp eq i8* %1089, %601
  br i1 %1090, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, label %1091

; <label>:1091                                    ; preds = %1085
  call void @_ZdlPv(i8* %1089) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561: ; preds = %1091, %1085, %1081
  %.3544 = phi i8* [ %1083, %1081 ], [ %1087, %1085 ], [ %1087, %1091 ]
  %.35 = phi i32 [ %1084, %1081 ], [ %1088, %1085 ], [ %1088, %1091 ]
  %1092 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  %1093 = load i8*, i8** %1092, align 8, !tbaa !32
  %1094 = icmp eq i8* %1093, %595
  br i1 %1094, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1095

; <label>:1095                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561
  call void @_ZdlPv(i8* %1093) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1096                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %1097 = landingpad { i8*, i32 }
          cleanup
  %1098 = extractvalue { i8*, i32 } %1097, 0
  %1099 = extractvalue { i8*, i32 } %1097, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557

; <label>:1100                                    ; preds = %._crit_edge.i.i.i.i336
  %1101 = landingpad { i8*, i32 }
          cleanup
  %1102 = extractvalue { i8*, i32 } %1101, 0
  %1103 = extractvalue { i8*, i32 } %1101, 1
  %1104 = load i8*, i8** %.phi.trans.insert.i.i.i.i335, align 8, !tbaa !32
  %1105 = icmp eq i8* %1104, %624
  br i1 %1105, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, label %1106

; <label>:1106                                    ; preds = %1100
  call void @_ZdlPv(i8* %1104) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557: ; preds = %1106, %1100, %1096
  %.3847 = phi i8* [ %1098, %1096 ], [ %1102, %1100 ], [ %1102, %1106 ]
  %.38 = phi i32 [ %1099, %1096 ], [ %1103, %1100 ], [ %1103, %1106 ]
  %1107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 0, i32 0
  %1108 = load i8*, i8** %1107, align 8, !tbaa !32
  %1109 = icmp eq i8* %1108, %618
  br i1 %1109, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1110

; <label>:1110                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557
  call void @_ZdlPv(i8* %1108) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1111                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %1112 = landingpad { i8*, i32 }
          cleanup
  %1113 = extractvalue { i8*, i32 } %1112, 0
  %1114 = extractvalue { i8*, i32 } %1112, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

; <label>:1115                                    ; preds = %._crit_edge.i.i.i.i352
  %1116 = landingpad { i8*, i32 }
          cleanup
  %1117 = extractvalue { i8*, i32 } %1116, 0
  %1118 = extractvalue { i8*, i32 } %1116, 1
  %1119 = load i8*, i8** %.phi.trans.insert.i.i.i.i351, align 8, !tbaa !32
  %1120 = icmp eq i8* %1119, %647
  br i1 %1120, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %1121

; <label>:1121                                    ; preds = %1115
  call void @_ZdlPv(i8* %1119) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %1121, %1115, %1111
  %.4150 = phi i8* [ %1113, %1111 ], [ %1117, %1115 ], [ %1117, %1121 ]
  %.41 = phi i32 [ %1114, %1111 ], [ %1118, %1115 ], [ %1118, %1121 ]
  %1122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 0, i32 0
  %1123 = load i8*, i8** %1122, align 8, !tbaa !32
  %1124 = icmp eq i8* %1123, %641
  br i1 %1124, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1125

; <label>:1125                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  call void @_ZdlPv(i8* %1123) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1126                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %1127 = landingpad { i8*, i32 }
          cleanup
  %1128 = extractvalue { i8*, i32 } %1127, 0
  %1129 = extractvalue { i8*, i32 } %1127, 1
  %1130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 0, i32 0
  %1131 = load i8*, i8** %1130, align 8, !tbaa !32
  %1132 = icmp eq i8* %1131, %669
  br i1 %1132, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, label %1133

; <label>:1133                                    ; preds = %1126
  call void @_ZdlPv(i8* %1131) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %1133, %1126
  %1134 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 0, i32 0
  %1135 = load i8*, i8** %1134, align 8, !tbaa !32
  %1136 = icmp eq i8* %1135, %664
  br i1 %1136, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1137

; <label>:1137                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549
  call void @_ZdlPv(i8* %1135) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1138                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %1139 = landingpad { i8*, i32 }
          cleanup
  %1140 = extractvalue { i8*, i32 } %1139, 0
  %1141 = extractvalue { i8*, i32 } %1139, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

; <label>:1142                                    ; preds = %._crit_edge.i.i.i.i387
  %1143 = landingpad { i8*, i32 }
          cleanup
  %1144 = extractvalue { i8*, i32 } %1143, 0
  %1145 = extractvalue { i8*, i32 } %1143, 1
  %1146 = load i8*, i8** %.phi.trans.insert.i.i.i.i386, align 8, !tbaa !32
  %1147 = icmp eq i8* %1146, %689
  br i1 %1147, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %1148

; <label>:1148                                    ; preds = %1142
  call void @_ZdlPv(i8* %1146) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %1148, %1142, %1138
  %.4655 = phi i8* [ %1140, %1138 ], [ %1144, %1142 ], [ %1144, %1148 ]
  %.46 = phi i32 [ %1141, %1138 ], [ %1145, %1142 ], [ %1145, %1148 ]
  %1149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 0, i32 0
  %1150 = load i8*, i8** %1149, align 8, !tbaa !32
  %1151 = icmp eq i8* %1150, %683
  br i1 %1151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1152

; <label>:1152                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545
  call void @_ZdlPv(i8* %1150) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1153                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %1154 = landingpad { i8*, i32 }
          cleanup
  %1155 = extractvalue { i8*, i32 } %1154, 0
  %1156 = extractvalue { i8*, i32 } %1154, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

; <label>:1157                                    ; preds = %._crit_edge.i.i.i.i404
  %1158 = landingpad { i8*, i32 }
          cleanup
  %1159 = extractvalue { i8*, i32 } %1158, 0
  %1160 = extractvalue { i8*, i32 } %1158, 1
  %1161 = load i8*, i8** %.phi.trans.insert.i.i.i.i403, align 8, !tbaa !32
  %1162 = icmp eq i8* %1161, %710
  br i1 %1162, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, label %1163

; <label>:1163                                    ; preds = %1157
  call void @_ZdlPv(i8* %1161) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %1163, %1157, %1153
  %.4958 = phi i8* [ %1155, %1153 ], [ %1159, %1157 ], [ %1159, %1163 ]
  %.49 = phi i32 [ %1156, %1153 ], [ %1160, %1157 ], [ %1160, %1163 ]
  %1164 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 0, i32 0
  %1165 = load i8*, i8** %1164, align 8, !tbaa !32
  %1166 = icmp eq i8* %1165, %704
  br i1 %1166, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1167

; <label>:1167                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
  call void @_ZdlPv(i8* %1165) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1168                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %1169 = landingpad { i8*, i32 }
          cleanup
  %1170 = extractvalue { i8*, i32 } %1169, 0
  %1171 = extractvalue { i8*, i32 } %1169, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

; <label>:1172                                    ; preds = %._crit_edge.i.i.i.i422
  %1173 = landingpad { i8*, i32 }
          cleanup
  %1174 = extractvalue { i8*, i32 } %1173, 0
  %1175 = extractvalue { i8*, i32 } %1173, 1
  %1176 = load i8*, i8** %.phi.trans.insert.i.i.i.i421, align 8, !tbaa !32
  %1177 = icmp eq i8* %1176, %731
  br i1 %1177, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, label %1178

; <label>:1178                                    ; preds = %1172
  call void @_ZdlPv(i8* %1176) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520: ; preds = %1178, %1172, %1168
  %.5261 = phi i8* [ %1170, %1168 ], [ %1174, %1172 ], [ %1174, %1178 ]
  %.52 = phi i32 [ %1171, %1168 ], [ %1175, %1172 ], [ %1175, %1178 ]
  %1179 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 0, i32 0
  %1180 = load i8*, i8** %1179, align 8, !tbaa !32
  %1181 = icmp eq i8* %1180, %725
  br i1 %1181, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1182

; <label>:1182                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
  call void @_ZdlPv(i8* %1180) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1183                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %1184 = landingpad { i8*, i32 }
          cleanup
  %1185 = extractvalue { i8*, i32 } %1184, 0
  %1186 = extractvalue { i8*, i32 } %1184, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

; <label>:1187                                    ; preds = %._crit_edge.i.i.i.i440
  %1188 = landingpad { i8*, i32 }
          cleanup
  %1189 = extractvalue { i8*, i32 } %1188, 0
  %1190 = extractvalue { i8*, i32 } %1188, 1
  %1191 = load i8*, i8** %.phi.trans.insert.i.i.i.i439, align 8, !tbaa !32
  %1192 = icmp eq i8* %1191, %752
  br i1 %1192, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, label %1193

; <label>:1193                                    ; preds = %1187
  call void @_ZdlPv(i8* %1191) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %1193, %1187, %1183
  %.5564 = phi i8* [ %1185, %1183 ], [ %1189, %1187 ], [ %1189, %1193 ]
  %.55 = phi i32 [ %1186, %1183 ], [ %1190, %1187 ], [ %1190, %1193 ]
  %1194 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  %1195 = load i8*, i8** %1194, align 8, !tbaa !32
  %1196 = icmp eq i8* %1195, %746
  br i1 %1196, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1197

; <label>:1197                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
  call void @_ZdlPv(i8* %1195) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1198                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %1199 = landingpad { i8*, i32 }
          cleanup
  %1200 = extractvalue { i8*, i32 } %1199, 0
  %1201 = extractvalue { i8*, i32 } %1199, 1
  %1202 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 0, i32 0
  %1203 = load i8*, i8** %1202, align 8, !tbaa !32
  %1204 = icmp eq i8* %1203, %772
  br i1 %1204, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, label %1205

; <label>:1205                                    ; preds = %1198
  call void @_ZdlPv(i8* %1203) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484: ; preds = %1205, %1198
  %1206 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 0, i32 0
  %1207 = load i8*, i8** %1206, align 8, !tbaa !32
  %1208 = icmp eq i8* %1207, %767
  br i1 %1208, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1209

; <label>:1209                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484
  call void @_ZdlPv(i8* %1207) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1210                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464
  %1211 = landingpad { i8*, i32 }
          cleanup
  %1212 = extractvalue { i8*, i32 } %1211, 0
  %1213 = extractvalue { i8*, i32 } %1211, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

; <label>:1214                                    ; preds = %._crit_edge.i.i.i.i476
  %1215 = landingpad { i8*, i32 }
          cleanup
  %1216 = extractvalue { i8*, i32 } %1215, 0
  %1217 = extractvalue { i8*, i32 } %1215, 1
  %1218 = load i8*, i8** %.phi.trans.insert.i.i.i.i475, align 8, !tbaa !32
  %1219 = icmp eq i8* %1218, %792
  br i1 %1219, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %1220

; <label>:1220                                    ; preds = %1214
  call void @_ZdlPv(i8* %1218) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %1220, %1214, %1210
  %.6069 = phi i8* [ %1212, %1210 ], [ %1216, %1214 ], [ %1216, %1220 ]
  %.60 = phi i32 [ %1213, %1210 ], [ %1217, %1214 ], [ %1217, %1220 ]
  %1221 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 0, i32 0
  %1222 = load i8*, i8** %1221, align 8, !tbaa !32
  %1223 = icmp eq i8* %1222, %786
  br i1 %1223, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1224

; <label>:1224                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  call void @_ZdlPv(i8* %1222) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1225                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482
  %1226 = landingpad { i8*, i32 }
          cleanup
  %1227 = extractvalue { i8*, i32 } %1226, 0
  %1228 = extractvalue { i8*, i32 } %1226, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

; <label>:1229                                    ; preds = %._crit_edge.i.i.i.i494
  %1230 = landingpad { i8*, i32 }
          cleanup
  %1231 = extractvalue { i8*, i32 } %1230, 0
  %1232 = extractvalue { i8*, i32 } %1230, 1
  %1233 = load i8*, i8** %.phi.trans.insert.i.i.i.i493, align 8, !tbaa !32
  %1234 = icmp eq i8* %1233, %815
  br i1 %1234, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %1235

; <label>:1235                                    ; preds = %1229
  call void @_ZdlPv(i8* %1233) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %1235, %1229, %1225
  %.6372 = phi i8* [ %1227, %1225 ], [ %1231, %1229 ], [ %1231, %1235 ]
  %.63 = phi i32 [ %1228, %1225 ], [ %1232, %1229 ], [ %1232, %1235 ]
  %1236 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %49, i64 0, i32 0, i32 0
  %1237 = load i8*, i8** %1236, align 8, !tbaa !32
  %1238 = icmp eq i8* %1237, %809
  br i1 %1238, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1239

; <label>:1239                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
  call void @_ZdlPv(i8* %1237) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1240                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500
  %1241 = landingpad { i8*, i32 }
          cleanup
  %1242 = extractvalue { i8*, i32 } %1241, 0
  %1243 = extractvalue { i8*, i32 } %1241, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

; <label>:1244                                    ; preds = %._crit_edge.i.i.i.i512
  %1245 = landingpad { i8*, i32 }
          cleanup
  %1246 = extractvalue { i8*, i32 } %1245, 0
  %1247 = extractvalue { i8*, i32 } %1245, 1
  %1248 = load i8*, i8** %.phi.trans.insert.i.i.i.i511, align 8, !tbaa !32
  %1249 = icmp eq i8* %1248, %838
  br i1 %1249, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %1250

; <label>:1250                                    ; preds = %1244
  call void @_ZdlPv(i8* %1248) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %1250, %1244, %1240
  %.6675 = phi i8* [ %1242, %1240 ], [ %1246, %1244 ], [ %1246, %1250 ]
  %.66 = phi i32 [ %1243, %1240 ], [ %1247, %1244 ], [ %1247, %1250 ]
  %1251 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 0, i32 0
  %1252 = load i8*, i8** %1251, align 8, !tbaa !32
  %1253 = icmp eq i8* %1252, %832
  br i1 %1253, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1254

; <label>:1254                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  call void @_ZdlPv(i8* %1252) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1255                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %1256 = landingpad { i8*, i32 }
          cleanup
  %1257 = extractvalue { i8*, i32 } %1256, 0
  %1258 = extractvalue { i8*, i32 } %1256, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

; <label>:1259                                    ; preds = %._crit_edge.i.i.i.i530
  %1260 = landingpad { i8*, i32 }
          cleanup
  %1261 = extractvalue { i8*, i32 } %1260, 0
  %1262 = extractvalue { i8*, i32 } %1260, 1
  %1263 = load i8*, i8** %.phi.trans.insert.i.i.i.i529, align 8, !tbaa !32
  %1264 = icmp eq i8* %1263, %861
  br i1 %1264, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %1265

; <label>:1265                                    ; preds = %1259
  call void @_ZdlPv(i8* %1263) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %1265, %1259, %1255
  %.6978 = phi i8* [ %1257, %1255 ], [ %1261, %1259 ], [ %1261, %1265 ]
  %.69 = phi i32 [ %1258, %1255 ], [ %1262, %1259 ], [ %1262, %1265 ]
  %1266 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %53, i64 0, i32 0, i32 0
  %1267 = load i8*, i8** %1266, align 8, !tbaa !32
  %1268 = icmp eq i8* %1267, %855
  br i1 %1268, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1269

; <label>:1269                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  call void @_ZdlPv(i8* %1267) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1270                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536
  %1271 = landingpad { i8*, i32 }
          cleanup
  %1272 = extractvalue { i8*, i32 } %1271, 0
  %1273 = extractvalue { i8*, i32 } %1271, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

; <label>:1274                                    ; preds = %877
  %1275 = landingpad { i8*, i32 }
          cleanup
  %1276 = extractvalue { i8*, i32 } %1275, 0
  %1277 = extractvalue { i8*, i32 } %1275, 1
  %1278 = load i8*, i8** %878, align 8, !tbaa !32
  %1279 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %yaml, i64 0, i32 2
  %1280 = bitcast %union.anon* %1279 to i8*
  %1281 = icmp eq i8* %1278, %1280
  br i1 %1281, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %1282

; <label>:1282                                    ; preds = %1274
  call void @_ZdlPv(i8* %1278) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %1282, %1274, %1270, %1269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %1254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %1239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %1224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %1209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, %1197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, %1182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, %1167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, %1152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %1137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %1125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %1110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, %1095, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, %1080, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %1065, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %1053, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, %1039, %1038, %1031, %1030, %1024, %1020, %1019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %1004, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, %962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, %939, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %919, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %.7180 = phi i8* [ %1272, %1270 ], [ %910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ], [ %910, %919 ], [ %.817, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.817, %939 ], [ %.1221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560 ], [ %.1221, %962 ], [ %965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564 ], [ %965, %974 ], [ %.1726, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %.1726, %989 ], [ %.2029, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.2029, %1004 ], [ %.2332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576 ], [ %.2332, %1019 ], [ %1022, %1020 ], [ %1026, %1024 ], [ %1026, %1030 ], [ %1033, %1031 ], [ %1033, %1038 ], [ %1041, %1039 ], [ %1045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573 ], [ %1045, %1053 ], [ %1056, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %1056, %1065 ], [ %.3241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.3241, %1080 ], [ %.3544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ], [ %.3544, %1095 ], [ %.3847, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %.3847, %1110 ], [ %.4150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ], [ %.4150, %1125 ], [ %1128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %1128, %1137 ], [ %.4655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.4655, %1152 ], [ %.4958, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ], [ %.4958, %1167 ], [ %.5261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520 ], [ %.5261, %1182 ], [ %.5564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502 ], [ %.5564, %1197 ], [ %1200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484 ], [ %1200, %1209 ], [ %.6069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.6069, %1224 ], [ %.6372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ], [ %.6372, %1239 ], [ %.6675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ], [ %.6675, %1254 ], [ %.6978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %.6978, %1269 ], [ %1276, %1274 ], [ %1276, %1282 ]
  %.71 = phi i32 [ %1273, %1270 ], [ %911, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ], [ %911, %919 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.8, %939 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560 ], [ %.12, %962 ], [ %966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564 ], [ %966, %974 ], [ %.17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %.17, %989 ], [ %.20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.20, %1004 ], [ %.23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576 ], [ %.23, %1019 ], [ %1023, %1020 ], [ %1027, %1024 ], [ %1027, %1030 ], [ %1034, %1031 ], [ %1034, %1038 ], [ %1042, %1039 ], [ %1046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573 ], [ %1046, %1053 ], [ %1057, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %1057, %1065 ], [ %.32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.32, %1080 ], [ %.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ], [ %.35, %1095 ], [ %.38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %.38, %1110 ], [ %.41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ], [ %.41, %1125 ], [ %1129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %1129, %1137 ], [ %.46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.46, %1152 ], [ %.49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ], [ %.49, %1167 ], [ %.52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520 ], [ %.52, %1182 ], [ %.55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502 ], [ %.55, %1197 ], [ %1201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484 ], [ %1201, %1209 ], [ %.60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.60, %1224 ], [ %.63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ], [ %.63, %1239 ], [ %.66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ], [ %.66, %1254 ], [ %.69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %.69, %1269 ], [ %1277, %1274 ], [ %1277, %1282 ]
  invoke void @_ZN8YAML_DocD1Ev(%class.YAML_Doc* nonnull %doc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 unwind label %1285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
  %.7281 = phi i8* [ %.7180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ], [ %890, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ], [ %890, %907 ]
  %.72 = phi i32 [ %.71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ], [ %891, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ], [ %891, %907 ]
  %1283 = insertvalue { i8*, i32 } undef, i8* %.7281, 0
  %1284 = insertvalue { i8*, i32 } %1283, i32 %.72, 1
  resume { i8*, i32 } %1284

; <label>:1285                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %1286 = landingpad { i8*, i32 }
          catch i8* null
  %1287 = extractvalue { i8*, i32 } %1286, 0
  call void @__clang_call_terminate(i8* %1287) #18
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #8

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #9

declare i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #10 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_generate_matrix.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.2)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.2, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %nx, i32 %ny, i32 %nz, %struct.HPC_Sparse_Matrix_STRUCT** nocapture %A, double** nocapture %x, double** nocapture %b, double** nocapture %xexact) #0 {
  %1 = tail call noalias i8* @_Znwm(i64 96) #19
  %2 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8**
  store i8* %1, i8** %2, align 8, !tbaa !12
  %3 = bitcast i8* %1 to i8**
  store i8* null, i8** %3, align 8, !tbaa !34
  %4 = mul nsw i32 %ny, %nx
  %5 = mul nsw i32 %4, %nz
  %6 = icmp sgt i32 %5, 0
  %7 = ptrtoint i8* %1 to i64
  %8 = inttoptr i64 %7 to %struct.HPC_Sparse_Matrix_STRUCT*
  br i1 %6, label %10, label %9

; <label>:9                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.12, i64 0, i64 0), i32 85, i8* nonnull getelementptr inbounds ([91 x i8], [91 x i8]* @__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_, i64 0, i64 0)) #18
  unreachable

; <label>:10                                      ; preds = %0
  %11 = mul nsw i32 %5, 27
  %12 = sext i32 %5 to i64
  %13 = mul nsw i64 %12, 27
  %14 = add nsw i32 %5, -1
  %15 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 4)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias i8* @_Znam(i64 %18) #19
  %20 = getelementptr inbounds i8, i8* %1, i64 48
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !35
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 8)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias i8* @_Znam(i64 %25) #19
  %27 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %8, i64 0, i32 9
  %28 = bitcast double*** %27 to i8**
  store i8* %26, i8** %28, align 8, !tbaa !36
  %29 = tail call noalias i8* @_Znam(i64 %25) #19
  %30 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %30, i64 0, i32 10
  %32 = bitcast i32*** %31 to i8**
  store i8* %29, i8** %32, align 8, !tbaa !37
  %33 = tail call noalias i8* @_Znam(i64 %25) #19
  %34 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %34, i64 0, i32 11
  %36 = bitcast double*** %35 to i8**
  store i8* %33, i8** %36, align 8, !tbaa !38
  %37 = tail call noalias i8* @_Znam(i64 %25) #19
  %38 = bitcast double** %x to i8**
  store i8* %37, i8** %38, align 8, !tbaa !12
  %39 = tail call noalias i8* @_Znam(i64 %25) #19
  %40 = bitcast double** %b to i8**
  store i8* %39, i8** %40, align 8, !tbaa !12
  %41 = tail call noalias i8* @_Znam(i64 %25) #19
  %42 = bitcast double** %xexact to i8**
  store i8* %41, i8** %42, align 8, !tbaa !12
  %43 = sext i32 %11 to i64
  %44 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %43, i64 8)
  %45 = extractvalue { i64, i1 } %44, 1
  %46 = extractvalue { i64, i1 } %44, 0
  %47 = select i1 %45, i64 -1, i64 %46
  %48 = tail call noalias i8* @_Znam(i64 %47) #19
  %49 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %50 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %49, i64 0, i32 12
  %51 = bitcast double** %50 to i8**
  store i8* %48, i8** %51, align 8, !tbaa !39
  %52 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %43, i64 4)
  %53 = extractvalue { i64, i1 } %52, 1
  %54 = extractvalue { i64, i1 } %52, 0
  %55 = select i1 %53, i64 -1, i64 %54
  %56 = tail call noalias i8* @_Znam(i64 %55) #19
  %57 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %57, i64 0, i32 13
  %59 = bitcast i32** %58 to i8**
  store i8* %56, i8** %59, align 8, !tbaa !40
  %60 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %61 = icmp sgt i32 %nz, 0
  br i1 %61, label %.preheader9.lr.ph, label %._crit_edge42

.preheader9.lr.ph:                                ; preds = %10
  %62 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %60, i64 0, i32 13
  %63 = load i32*, i32** %62, align 8, !tbaa !40
  %64 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %60, i64 0, i32 12
  %65 = load double*, double** %64, align 8, !tbaa !39
  %66 = icmp sgt i32 %ny, 0
  %67 = icmp sgt i32 %nx, 0
  br label %.preheader9

.preheader9:                                      ; preds = %._crit_edge33, %.preheader9.lr.ph
  %68 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %60, %.preheader9.lr.ph ], [ %71, %._crit_edge33 ]
  %curvalptr.041 = phi double* [ %65, %.preheader9.lr.ph ], [ %curvalptr.1.lcssa, %._crit_edge33 ]
  %curindptr.040 = phi i32* [ %63, %.preheader9.lr.ph ], [ %curindptr.1.lcssa, %._crit_edge33 ]
  %iz.037 = phi i32 [ 0, %.preheader9.lr.ph ], [ %72, %._crit_edge33 ]
  br i1 %66, label %.preheader8.lr.ph, label %._crit_edge33

.preheader8.lr.ph:                                ; preds = %.preheader9
  %69 = mul i32 %iz.037, %ny
  br label %.preheader8

.preheader8:                                      ; preds = %._crit_edge, %.preheader8.lr.ph
  %70 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %68, %.preheader8.lr.ph ], [ %73, %._crit_edge ]
  %curvalptr.132 = phi double* [ %curvalptr.041, %.preheader8.lr.ph ], [ %curvalptr.2.lcssa, %._crit_edge ]
  %curindptr.131 = phi i32* [ %curindptr.040, %.preheader8.lr.ph ], [ %curindptr.2.lcssa, %._crit_edge ]
  %iy.028 = phi i32 [ 0, %.preheader8.lr.ph ], [ %74, %._crit_edge ]
  br i1 %67, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader8
  %tmp = add i32 %iy.028, %69
  %tmp4 = mul i32 %tmp, %nx
  br label %75

._crit_edge33.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %.preheader9
  %71 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %68, %.preheader9 ], [ %73, %._crit_edge33.loopexit ]
  %curvalptr.1.lcssa = phi double* [ %curvalptr.041, %.preheader9 ], [ %curvalptr.2.lcssa, %._crit_edge33.loopexit ]
  %curindptr.1.lcssa = phi i32* [ %curindptr.040, %.preheader9 ], [ %curindptr.2.lcssa, %._crit_edge33.loopexit ]
  %72 = add nuw nsw i32 %iz.037, 1
  %exitcond65 = icmp eq i32 %72, %nz
  br i1 %exitcond65, label %._crit_edge42.loopexit, label %.preheader9

._crit_edge.loopexit:                             ; preds = %95
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader8
  %73 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %70, %.preheader8 ], [ %96, %._crit_edge.loopexit ]
  %curvalptr.2.lcssa = phi double* [ %curvalptr.132, %.preheader8 ], [ %curvalptr.5.lcssa, %._crit_edge.loopexit ]
  %curindptr.2.lcssa = phi i32* [ %curindptr.131, %.preheader8 ], [ %curindptr.5.lcssa, %._crit_edge.loopexit ]
  %74 = add nuw nsw i32 %iy.028, 1
  %exitcond64 = icmp eq i32 %74, %ny
  br i1 %exitcond64, label %._crit_edge33.loopexit, label %.preheader8

; <label>:75                                      ; preds = %95, %.lr.ph
  %76 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %70, %.lr.ph ], [ %96, %95 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %95 ]
  %curvalptr.225 = phi double* [ %curvalptr.132, %.lr.ph ], [ %curvalptr.5.lcssa, %95 ]
  %curindptr.224 = phi i32* [ %curindptr.131, %.lr.ph ], [ %curindptr.5.lcssa, %95 ]
  %77 = trunc i64 %indvars.iv to i32
  %78 = add i32 %77, %tmp4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %76, i64 0, i32 9
  %81 = load double**, double*** %80, align 8, !tbaa !36
  %82 = getelementptr inbounds double*, double** %81, i64 %79
  store double* %curvalptr.225, double** %82, align 8, !tbaa !12
  %83 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %84 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %83, i64 0, i32 10
  %85 = load i32**, i32*** %84, align 8, !tbaa !37
  %86 = getelementptr inbounds i32*, i32** %85, i64 %79
  store i32* %curindptr.224, i32** %86, align 8, !tbaa !12
  %87 = icmp sgt i32 %77, 0
  %88 = icmp sle i32 %77, %nx
  %or.cond2.us.us = and i1 %87, %88
  %89 = icmp sgt i32 %77, -1
  %90 = icmp slt i32 %77, %nx
  %or.cond2.us.us.1 = and i1 %89, %90
  %91 = add nsw i32 %77, 1
  %92 = icmp sgt i32 %77, -2
  %93 = icmp slt i32 %91, %nx
  %or.cond2.us.us.2 = and i1 %92, %93
  br label %.preheader7

.preheader7:                                      ; preds = %125, %75
  %curvalptr.321 = phi double* [ %curvalptr.225, %75 ], [ %curvalptr.5.lcssa, %125 ]
  %sz.020 = phi i32 [ -1, %75 ], [ %126, %125 ]
  %nnzrow.019 = phi i32 [ 0, %75 ], [ %nnzrow.2.lcssa, %125 ]
  %curindptr.318 = phi i32* [ %curindptr.224, %75 ], [ %curindptr.5.lcssa, %125 ]
  %94 = mul i32 %sz.020, %ny
  br label %.preheader

; <label>:95                                      ; preds = %125
  %96 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %97 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %96, i64 0, i32 8
  %98 = load i32*, i32** %97, align 8, !tbaa !35
  %99 = getelementptr inbounds i32, i32* %98, i64 %79
  store i32 %nnzrow.2.lcssa, i32* %99, align 4, !tbaa !21
  %100 = load double*, double** %x, align 8, !tbaa !12
  %101 = getelementptr inbounds double, double* %100, i64 %79
  store double 0.000000e+00, double* %101, align 8, !tbaa !22
  %102 = add nsw i32 %nnzrow.2.lcssa, -1
  %103 = sitofp i32 %102 to double
  %104 = fsub double 2.700000e+01, %103
  %105 = load double*, double** %b, align 8, !tbaa !12
  %106 = getelementptr inbounds double, double* %105, i64 %79
  store double %104, double* %106, align 8, !tbaa !22
  %107 = load double*, double** %xexact, align 8, !tbaa !12
  %108 = getelementptr inbounds double, double* %107, i64 %79
  store double 1.000000e+00, double* %108, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond63, label %._crit_edge.loopexit, label %75

.preheader:                                       ; preds = %.us-lcssa.us, %.preheader7
  %curvalptr.417 = phi double* [ %curvalptr.321, %.preheader7 ], [ %curvalptr.5.lcssa, %.us-lcssa.us ]
  %sy.016 = phi i32 [ -1, %.preheader7 ], [ %127, %.us-lcssa.us ]
  %nnzrow.115 = phi i32 [ %nnzrow.019, %.preheader7 ], [ %nnzrow.2.lcssa, %.us-lcssa.us ]
  %curindptr.414 = phi i32* [ %curindptr.318, %.preheader7 ], [ %curindptr.5.lcssa, %.us-lcssa.us ]
  %tmp5 = add i32 %sy.016, %94
  %tmp6 = mul i32 %tmp5, %nx
  %109 = add i32 %tmp6, %78
  %110 = add nsw i32 %sy.016, %iy.028
  %.not = icmp slt i32 %110, 0
  %.not71 = icmp sge i32 %110, %ny
  %brmerge = or i1 %.not, %.not71
  br i1 %brmerge, label %.us-lcssa.us, label %.preheader.split.us.split.us.preheader

.preheader.split.us.split.us.preheader:           ; preds = %.preheader
  %111 = add i32 %109, -1
  br i1 %or.cond2.us.us, label %112, label %.preheader.split.us.split.us.166

; <label>:112                                     ; preds = %.preheader.split.us.split.us.preheader
  %113 = icmp sgt i32 %111, -1
  %114 = icmp slt i32 %111, %5
  %or.cond3.us.us = and i1 %114, %113
  br i1 %or.cond3.us.us, label %115, label %.preheader.split.us.split.us.166

; <label>:115                                     ; preds = %112
  %116 = icmp eq i32 %111, %78
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %115
  %118 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %119 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %118, i64 0, i32 11
  %120 = load double**, double*** %119, align 8, !tbaa !38
  %121 = getelementptr inbounds double*, double** %120, i64 %79
  store double* %curvalptr.417, double** %121, align 8, !tbaa !12
  br label %122

; <label>:122                                     ; preds = %117, %115
  %storemerge.us.us = phi double [ 2.700000e+01, %117 ], [ -1.000000e+00, %115 ]
  %curvalptr.6.us.us = getelementptr inbounds double, double* %curvalptr.417, i64 1
  store double %storemerge.us.us, double* %curvalptr.417, align 8, !tbaa !22
  %123 = getelementptr inbounds i32, i32* %curindptr.414, i64 1
  store i32 %111, i32* %curindptr.414, align 4, !tbaa !21
  %124 = add nsw i32 %nnzrow.115, 1
  br label %.preheader.split.us.split.us.166

.preheader.split.us.split.us.166:                 ; preds = %122, %112, %.preheader.split.us.split.us.preheader
  %curindptr.6.us.us = phi i32* [ %123, %122 ], [ %curindptr.414, %112 ], [ %curindptr.414, %.preheader.split.us.split.us.preheader ]
  %nnzrow.3.us.us = phi i32 [ %124, %122 ], [ %nnzrow.115, %112 ], [ %nnzrow.115, %.preheader.split.us.split.us.preheader ]
  %curvalptr.7.us.us = phi double* [ %curvalptr.6.us.us, %122 ], [ %curvalptr.417, %112 ], [ %curvalptr.417, %.preheader.split.us.split.us.preheader ]
  br i1 %or.cond2.us.us.1, label %136, label %.preheader.split.us.split.us.267

; <label>:125                                     ; preds = %.us-lcssa.us
  %126 = add nsw i32 %sz.020, 1
  %exitcond62 = icmp eq i32 %126, 2
  br i1 %exitcond62, label %95, label %.preheader7

.us-lcssa.us:                                     ; preds = %160, %150, %.preheader.split.us.split.us.267, %.preheader
  %curvalptr.5.lcssa = phi double* [ %curvalptr.6.us.us.2, %160 ], [ %curvalptr.7.us.us.1, %150 ], [ %curvalptr.7.us.us.1, %.preheader.split.us.split.us.267 ], [ %curvalptr.417, %.preheader ]
  %nnzrow.2.lcssa = phi i32 [ %162, %160 ], [ %nnzrow.3.us.us.1, %150 ], [ %nnzrow.3.us.us.1, %.preheader.split.us.split.us.267 ], [ %nnzrow.115, %.preheader ]
  %curindptr.5.lcssa = phi i32* [ %161, %160 ], [ %curindptr.6.us.us.1, %150 ], [ %curindptr.6.us.us.1, %.preheader.split.us.split.us.267 ], [ %curindptr.414, %.preheader ]
  %127 = add nsw i32 %sy.016, 1
  %exitcond61 = icmp eq i32 %127, 2
  br i1 %exitcond61, label %125, label %.preheader

._crit_edge42.loopexit:                           ; preds = %._crit_edge33
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge42.loopexit, %10
  %128 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %60, %10 ], [ %71, %._crit_edge42.loopexit ]
  %129 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 1
  store i32 0, i32* %129, align 8, !tbaa !41
  %130 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 2
  store i32 %14, i32* %130, align 4, !tbaa !42
  %131 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 3
  store i32 %5, i32* %131, align 8, !tbaa !24
  %132 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 4
  store i64 %13, i64* %132, align 8, !tbaa !27
  %133 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 5
  store i32 %5, i32* %133, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 6
  store i32 %5, i32* %134, align 4, !tbaa !44
  %135 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %128, i64 0, i32 7
  store i32 %11, i32* %135, align 8, !tbaa !45
  ret void

; <label>:136                                     ; preds = %.preheader.split.us.split.us.166
  %137 = icmp sgt i32 %109, -1
  %138 = icmp slt i32 %109, %5
  %or.cond3.us.us.1 = and i1 %138, %137
  br i1 %or.cond3.us.us.1, label %139, label %.preheader.split.us.split.us.267

; <label>:139                                     ; preds = %136
  %140 = icmp eq i32 %tmp6, 0
  br i1 %140, label %141, label %146

; <label>:141                                     ; preds = %139
  %142 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %143 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %142, i64 0, i32 11
  %144 = load double**, double*** %143, align 8, !tbaa !38
  %145 = getelementptr inbounds double*, double** %144, i64 %79
  store double* %curvalptr.7.us.us, double** %145, align 8, !tbaa !12
  br label %146

; <label>:146                                     ; preds = %141, %139
  %storemerge.us.us.1 = phi double [ 2.700000e+01, %141 ], [ -1.000000e+00, %139 ]
  %curvalptr.6.us.us.1 = getelementptr inbounds double, double* %curvalptr.7.us.us, i64 1
  store double %storemerge.us.us.1, double* %curvalptr.7.us.us, align 8, !tbaa !22
  %147 = getelementptr inbounds i32, i32* %curindptr.6.us.us, i64 1
  store i32 %109, i32* %curindptr.6.us.us, align 4, !tbaa !21
  %148 = add nsw i32 %nnzrow.3.us.us, 1
  br label %.preheader.split.us.split.us.267

.preheader.split.us.split.us.267:                 ; preds = %146, %136, %.preheader.split.us.split.us.166
  %curindptr.6.us.us.1 = phi i32* [ %147, %146 ], [ %curindptr.6.us.us, %136 ], [ %curindptr.6.us.us, %.preheader.split.us.split.us.166 ]
  %nnzrow.3.us.us.1 = phi i32 [ %148, %146 ], [ %nnzrow.3.us.us, %136 ], [ %nnzrow.3.us.us, %.preheader.split.us.split.us.166 ]
  %curvalptr.7.us.us.1 = phi double* [ %curvalptr.6.us.us.1, %146 ], [ %curvalptr.7.us.us, %136 ], [ %curvalptr.7.us.us, %.preheader.split.us.split.us.166 ]
  %149 = add i32 %109, 1
  br i1 %or.cond2.us.us.2, label %150, label %.us-lcssa.us

; <label>:150                                     ; preds = %.preheader.split.us.split.us.267
  %151 = icmp sgt i32 %149, -1
  %152 = icmp slt i32 %149, %5
  %or.cond3.us.us.2 = and i1 %152, %151
  br i1 %or.cond3.us.us.2, label %153, label %.us-lcssa.us

; <label>:153                                     ; preds = %150
  %154 = icmp eq i32 %149, %78
  br i1 %154, label %155, label %160

; <label>:155                                     ; preds = %153
  %156 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !12
  %157 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 11
  %158 = load double**, double*** %157, align 8, !tbaa !38
  %159 = getelementptr inbounds double*, double** %158, i64 %79
  store double* %curvalptr.7.us.us.1, double** %159, align 8, !tbaa !12
  br label %160

; <label>:160                                     ; preds = %155, %153
  %storemerge.us.us.2 = phi double [ 2.700000e+01, %155 ], [ -1.000000e+00, %153 ]
  %curvalptr.6.us.us.2 = getelementptr inbounds double, double* %curvalptr.7.us.us.1, i64 1
  store double %storemerge.us.us.2, double* %curvalptr.7.us.us.1, align 8, !tbaa !22
  %161 = getelementptr inbounds i32, i32* %curindptr.6.us.us.1, i64 1
  store i32 %149, i32* %curindptr.6.us.us.1, align 4, !tbaa !21
  %162 = add nsw i32 %nnzrow.3.us.us.1, 1
  br label %.us-lcssa.us
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) #11

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) #11

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_read_HPC_row.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.14)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.14, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(i8* %data_file, %struct.HPC_Sparse_Matrix_STRUCT** nocapture %A, double** nocapture %x, double** nocapture %b, double** nocapture %xexact) #0 {
  %total_nrow = alloca i32, align 4
  %total_nnz = alloca i64, align 8
  %l = alloca i32, align 4
  %v = alloca double, align 8
  %cur_nnz = alloca i32, align 4
  %xt = alloca double, align 8
  %bt = alloca double, align 8
  %xxt = alloca double, align 8
  %1 = bitcast i32* %total_nrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i64* %total_nnz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %data_file)
  %6 = tail call %struct._IO_FILE* @fopen(i8* %data_file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.18, i64 0, i64 0))
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.19, i64 0, i64 0), i8* %data_file)
  tail call void @exit(i32 1) #18
  unreachable

; <label>:10                                      ; preds = %0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.20, i64 0, i64 0), i32* nonnull %total_nrow)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.21, i64 0, i64 0), i64* nonnull %total_nnz)
  %13 = load i32, i32* %total_nrow, align 4, !tbaa !21
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %13 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 4)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = call noalias i8* @_Znam(i64 %19) #19
  %21 = bitcast i8* %20 to i32*
  %22 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 8)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = call noalias i8* @_Znam(i64 %25) #19
  %27 = bitcast i8* %26 to double**
  %28 = call noalias i8* @_Znam(i64 %25) #19
  %29 = bitcast i8* %28 to i32**
  %30 = call noalias i8* @_Znam(i64 %25) #19
  %31 = call noalias i8* @_Znam(i64 %25) #19
  %32 = bitcast double** %x to i8**
  store i8* %31, i8** %32, align 8, !tbaa !12
  %33 = call noalias i8* @_Znam(i64 %25) #19
  %34 = bitcast double** %b to i8**
  store i8* %33, i8** %34, align 8, !tbaa !12
  %35 = call noalias i8* @_Znam(i64 %25) #19
  %36 = bitcast double** %xexact to i8**
  store i8* %35, i8** %36, align 8, !tbaa !12
  %37 = icmp sgt i32 %13, 0
  br i1 %37, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %10
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %46, %.lr.ph23.preheader
  %i.021 = phi i32 [ %47, %46 ], [ 0, %.lr.ph23.preheader ]
  %cur_local_row.020 = phi i32 [ %cur_local_row.1, %46 ], [ 0, %.lr.ph23.preheader ]
  %local_nnz.019 = phi i32 [ %local_nnz.1, %46 ], [ 0, %.lr.ph23.preheader ]
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.20, i64 0, i64 0), i32* nonnull %l)
  %39 = icmp slt i32 %i.021, %13
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %.lr.ph23
  %41 = load i32, i32* %l, align 4, !tbaa !21
  %42 = add nsw i32 %41, %local_nnz.019
  %43 = sext i32 %cur_local_row.020 to i64
  %44 = getelementptr inbounds i32, i32* %21, i64 %43
  store i32 %41, i32* %44, align 4, !tbaa !21
  %45 = add nsw i32 %cur_local_row.020, 1
  br label %46

; <label>:46                                      ; preds = %40, %.lr.ph23
  %local_nnz.1 = phi i32 [ %42, %40 ], [ %local_nnz.019, %.lr.ph23 ]
  %cur_local_row.1 = phi i32 [ %45, %40 ], [ %cur_local_row.020, %.lr.ph23 ]
  %47 = add nuw nsw i32 %i.021, 1
  %48 = load i32, i32* %total_nrow, align 4, !tbaa !21
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %.lr.ph23, label %._crit_edge24.loopexit

._crit_edge24.loopexit:                           ; preds = %46
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %10
  %50 = phi i32 [ %13, %10 ], [ %48, %._crit_edge24.loopexit ]
  %cur_local_row.0.lcssa = phi i32 [ 0, %10 ], [ %cur_local_row.1, %._crit_edge24.loopexit ]
  %local_nnz.0.lcssa = phi i32 [ 0, %10 ], [ %local_nnz.1, %._crit_edge24.loopexit ]
  %51 = icmp eq i32 %cur_local_row.0.lcssa, %13
  br i1 %51, label %53, label %52

; <label>:52                                      ; preds = %._crit_edge24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.22, i64 0, i64 0), i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6.23, i64 0, i64 0), i32 135, i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_, i64 0, i64 0)) #18
  unreachable

; <label>:53                                      ; preds = %._crit_edge24
  %54 = sext i32 %local_nnz.0.lcssa to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 8)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %59 = call noalias i8* @_Znam(i64 %58) #19
  %60 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 4)
  %61 = extractvalue { i64, i1 } %60, 1
  %62 = extractvalue { i64, i1 } %60, 0
  %63 = select i1 %61, i64 -1, i64 %62
  %64 = call noalias i8* @_Znam(i64 %63) #19
  %65 = bitcast i8* %26 to i8**
  store i8* %59, i8** %65, align 8, !tbaa !12
  %66 = bitcast i8* %28 to i8**
  store i8* %64, i8** %66, align 8, !tbaa !12
  %67 = icmp sgt i32 %13, 1
  br i1 %67, label %.lr.ph18.preheader, label %.preheader4

.lr.ph18.preheader:                               ; preds = %53
  %68 = bitcast i8* %64 to i32*
  %69 = bitcast i8* %59 to double*
  %70 = add i32 %13, 3
  %71 = add i32 %13, -2
  %xtraiter = and i32 %70, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph18.preheader.split, label %.lr.ph18.prol.preheader

.lr.ph18.prol.preheader:                          ; preds = %.lr.ph18.preheader
  br label %.lr.ph18.prol

.lr.ph18.prol:                                    ; preds = %.lr.ph18.prol, %.lr.ph18.prol.preheader
  %72 = phi i32* [ %80, %.lr.ph18.prol ], [ %68, %.lr.ph18.prol.preheader ]
  %73 = phi double* [ %78, %.lr.ph18.prol ], [ %69, %.lr.ph18.prol.preheader ]
  %indvars.iv26.prol = phi i64 [ %indvars.iv.next27.prol, %.lr.ph18.prol ], [ 1, %.lr.ph18.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph18.prol ], [ %xtraiter, %.lr.ph18.prol.preheader ]
  %74 = add nsw i64 %indvars.iv26.prol, -1
  %75 = getelementptr inbounds i32, i32* %21, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !21
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %73, i64 %77
  %79 = getelementptr inbounds double*, double** %27, i64 %indvars.iv26.prol
  store double* %78, double** %79, align 8, !tbaa !12
  %80 = getelementptr inbounds i32, i32* %72, i64 %77
  %81 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv26.prol
  store i32* %80, i32** %81, align 8, !tbaa !12
  %indvars.iv.next27.prol = add nuw nsw i64 %indvars.iv26.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph18.preheader.split.loopexit, label %.lr.ph18.prol, !llvm.loop !46

.lr.ph18.preheader.split.loopexit:                ; preds = %.lr.ph18.prol
  br label %.lr.ph18.preheader.split

.lr.ph18.preheader.split:                         ; preds = %.lr.ph18.preheader.split.loopexit, %.lr.ph18.preheader
  %.unr = phi i32* [ %68, %.lr.ph18.preheader ], [ %80, %.lr.ph18.preheader.split.loopexit ]
  %.unr31 = phi double* [ %69, %.lr.ph18.preheader ], [ %78, %.lr.ph18.preheader.split.loopexit ]
  %indvars.iv26.unr = phi i64 [ 1, %.lr.ph18.preheader ], [ %indvars.iv.next27.prol, %.lr.ph18.preheader.split.loopexit ]
  %82 = icmp ult i32 %71, 3
  br i1 %82, label %.preheader4.loopexit, label %.lr.ph18.preheader.split.split

.lr.ph18.preheader.split.split:                   ; preds = %.lr.ph18.preheader.split
  br label %.lr.ph18

.preheader4.loopexit.unr-lcssa:                   ; preds = %.lr.ph18
  br label %.preheader4.loopexit

.preheader4.loopexit:                             ; preds = %.preheader4.loopexit.unr-lcssa, %.lr.ph18.preheader.split
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.loopexit, %53
  %83 = icmp sgt i32 %50, 0
  br i1 %83, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %.preheader4
  %84 = bitcast i32* %cur_nnz to i8*
  %85 = bitcast double* %v to i64*
  br label %117

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.split.split
  %86 = phi i32* [ %.unr, %.lr.ph18.preheader.split.split ], [ %115, %.lr.ph18 ]
  %87 = phi double* [ %.unr31, %.lr.ph18.preheader.split.split ], [ %113, %.lr.ph18 ]
  %indvars.iv26 = phi i64 [ %indvars.iv26.unr, %.lr.ph18.preheader.split.split ], [ %indvars.iv.next27.3, %.lr.ph18 ]
  %88 = add nsw i64 %indvars.iv26, -1
  %89 = getelementptr inbounds i32, i32* %21, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !21
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %87, i64 %91
  %93 = getelementptr inbounds double*, double** %27, i64 %indvars.iv26
  store double* %92, double** %93, align 8, !tbaa !12
  %94 = getelementptr inbounds i32, i32* %86, i64 %91
  %95 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv26
  store i32* %94, i32** %95, align 8, !tbaa !12
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %96 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv26
  %97 = load i32, i32* %96, align 4, !tbaa !21
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %92, i64 %98
  %100 = getelementptr inbounds double*, double** %27, i64 %indvars.iv.next27
  store double* %99, double** %100, align 8, !tbaa !12
  %101 = getelementptr inbounds i32, i32* %94, i64 %98
  %102 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv.next27
  store i32* %101, i32** %102, align 8, !tbaa !12
  %indvars.iv.next27.1 = add nsw i64 %indvars.iv26, 2
  %103 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv.next27
  %104 = load i32, i32* %103, align 4, !tbaa !21
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %99, i64 %105
  %107 = getelementptr inbounds double*, double** %27, i64 %indvars.iv.next27.1
  store double* %106, double** %107, align 8, !tbaa !12
  %108 = getelementptr inbounds i32, i32* %101, i64 %105
  %109 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv.next27.1
  store i32* %108, i32** %109, align 8, !tbaa !12
  %indvars.iv.next27.2 = add nsw i64 %indvars.iv26, 3
  %110 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv.next27.1
  %111 = load i32, i32* %110, align 4, !tbaa !21
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %106, i64 %112
  %114 = getelementptr inbounds double*, double** %27, i64 %indvars.iv.next27.2
  store double* %113, double** %114, align 8, !tbaa !12
  %115 = getelementptr inbounds i32, i32* %108, i64 %112
  %116 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv.next27.2
  store i32* %115, i32** %116, align 8, !tbaa !12
  %indvars.iv.next27.3 = add nsw i64 %indvars.iv26, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next27.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %13
  br i1 %exitcond.3, label %.preheader4.loopexit.unr-lcssa, label %.lr.ph18

; <label>:117                                     ; preds = %.loopexit, %.lr.ph14
  %i.213 = phi i32 [ 0, %.lr.ph14 ], [ %142, %.loopexit ]
  %cur_local_row.212 = phi i32 [ 0, %.lr.ph14 ], [ %cur_local_row.3, %.loopexit ]
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.20, i64 0, i64 0), i32* nonnull %cur_nnz)
  %119 = icmp slt i32 %i.213, %13
  %120 = load i32, i32* %cur_nnz, align 4, !tbaa !21
  %121 = icmp sgt i32 %120, 0
  br i1 %119, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %117
  br i1 %121, label %.lr.ph8.preheader, label %.loopexit

.lr.ph8.preheader:                                ; preds = %.preheader3
  br label %.lr.ph8

.preheader:                                       ; preds = %117
  br i1 %121, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %.preheader
  %122 = sext i32 %cur_local_row.212 to i64
  %123 = getelementptr inbounds double*, double** %27, i64 %122
  %124 = getelementptr inbounds i32*, i32** %29, i64 %122
  br label %125

; <label>:125                                     ; preds = %125, %.lr.ph10
  %indvars.iv = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next, %125 ]
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.24, i64 0, i64 0), double* nonnull %v, i32* nonnull %l)
  %127 = load i64, i64* %85, align 8, !tbaa !22
  %128 = load double*, double** %123, align 8, !tbaa !12
  %129 = getelementptr inbounds double, double* %128, i64 %indvars.iv
  %130 = bitcast double* %129 to i64*
  store i64 %127, i64* %130, align 8, !tbaa !22
  %131 = load i32, i32* %l, align 4, !tbaa !21
  %132 = load i32*, i32** %124, align 8, !tbaa !12
  %133 = getelementptr inbounds i32, i32* %132, i64 %indvars.iv
  store i32 %131, i32* %133, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %134 = load i32, i32* %cur_nnz, align 4, !tbaa !21
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %indvars.iv.next, %135
  br i1 %136, label %125, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %125
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.preheader
  %137 = add nsw i32 %cur_local_row.212, 1
  br label %.loopexit

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader
  %j.17 = phi i32 [ %139, %.lr.ph8 ], [ 0, %.lr.ph8.preheader ]
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.24, i64 0, i64 0), double* nonnull %v, i32* nonnull %l)
  %139 = add nuw nsw i32 %j.17, 1
  %140 = load i32, i32* %cur_nnz, align 4, !tbaa !21
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %.lr.ph8, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge11, %.preheader3
  %cur_local_row.3 = phi i32 [ %137, %._crit_edge11 ], [ %cur_local_row.212, %.preheader3 ], [ %cur_local_row.212, %.loopexit.loopexit ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %84) #2
  %142 = add nuw nsw i32 %i.213, 1
  %143 = load i32, i32* %total_nrow, align 4, !tbaa !21
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %117, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.preheader4
  %145 = phi i32 [ %50, %.preheader4 ], [ %143, %._crit_edge15.loopexit ]
  %146 = bitcast double* %xt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #2
  %147 = bitcast double* %bt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #2
  %148 = bitcast double* %xxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #2
  %149 = icmp sgt i32 %145, 0
  br i1 %149, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge15
  %150 = bitcast double* %xt to i64*
  %151 = bitcast double* %bt to i64*
  %152 = bitcast double* %xxt to i64*
  br label %153

; <label>:153                                     ; preds = %173, %.lr.ph
  %i.36 = phi i32 [ 0, %.lr.ph ], [ %174, %173 ]
  %cur_local_row.45 = phi i32 [ 0, %.lr.ph ], [ %cur_local_row.5, %173 ]
  %154 = icmp slt i32 %i.36, %13
  br i1 %154, label %155, label %171

; <label>:155                                     ; preds = %153
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12.25, i64 0, i64 0), double* nonnull %xt, double* nonnull %bt, double* nonnull %xxt)
  %157 = load i64, i64* %150, align 8, !tbaa !22
  %158 = sext i32 %cur_local_row.45 to i64
  %159 = load double*, double** %x, align 8, !tbaa !12
  %160 = getelementptr inbounds double, double* %159, i64 %158
  %161 = bitcast double* %160 to i64*
  store i64 %157, i64* %161, align 8, !tbaa !22
  %162 = load i64, i64* %151, align 8, !tbaa !22
  %163 = load double*, double** %b, align 8, !tbaa !12
  %164 = getelementptr inbounds double, double* %163, i64 %158
  %165 = bitcast double* %164 to i64*
  store i64 %162, i64* %165, align 8, !tbaa !22
  %166 = load i64, i64* %152, align 8, !tbaa !22
  %167 = load double*, double** %xexact, align 8, !tbaa !12
  %168 = getelementptr inbounds double, double* %167, i64 %158
  %169 = bitcast double* %168 to i64*
  store i64 %166, i64* %169, align 8, !tbaa !22
  %170 = add nsw i32 %cur_local_row.45, 1
  br label %173

; <label>:171                                     ; preds = %153
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12.25, i64 0, i64 0), double* nonnull %v, double* nonnull %v, double* nonnull %v)
  br label %173

; <label>:173                                     ; preds = %171, %155
  %cur_local_row.5 = phi i32 [ %170, %155 ], [ %cur_local_row.45, %171 ]
  %174 = add nuw nsw i32 %i.36, 1
  %175 = load i32, i32* %total_nrow, align 4, !tbaa !21
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %153, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %173
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge15
  %177 = call i32 @fclose(%struct._IO_FILE* nonnull %6)
  %178 = call noalias i8* @_Znwm(i64 96) #19
  %179 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8**
  store i8* %178, i8** %179, align 8, !tbaa !12
  %180 = bitcast i8* %178 to i8**
  store i8* null, i8** %180, align 8, !tbaa !34
  %181 = getelementptr inbounds i8, i8* %178, i64 8
  %182 = bitcast i8* %181 to i32*
  store i32 0, i32* %182, align 8, !tbaa !41
  %183 = getelementptr inbounds i8, i8* %178, i64 12
  %184 = bitcast i8* %183 to i32*
  store i32 %14, i32* %184, align 4, !tbaa !42
  %185 = load i32, i32* %total_nrow, align 4, !tbaa !21
  %186 = getelementptr inbounds i8, i8* %178, i64 16
  %187 = bitcast i8* %186 to i32*
  store i32 %185, i32* %187, align 8, !tbaa !24
  %188 = load i64, i64* %total_nnz, align 8, !tbaa !48
  %189 = getelementptr inbounds i8, i8* %178, i64 24
  %190 = bitcast i8* %189 to i64*
  store i64 %188, i64* %190, align 8, !tbaa !27
  %191 = getelementptr inbounds i8, i8* %178, i64 32
  %192 = bitcast i8* %191 to i32*
  store i32 %13, i32* %192, align 8, !tbaa !43
  %193 = getelementptr inbounds i8, i8* %178, i64 36
  %194 = bitcast i8* %193 to i32*
  store i32 %13, i32* %194, align 4, !tbaa !44
  %195 = getelementptr inbounds i8, i8* %178, i64 40
  %196 = bitcast i8* %195 to i32*
  store i32 %local_nnz.0.lcssa, i32* %196, align 8, !tbaa !45
  %197 = getelementptr inbounds i8, i8* %178, i64 48
  %198 = bitcast i8* %197 to i8**
  store i8* %20, i8** %198, align 8, !tbaa !35
  %199 = getelementptr inbounds i8, i8* %178, i64 56
  %200 = bitcast i8* %199 to i8**
  store i8* %26, i8** %200, align 8, !tbaa !36
  %201 = getelementptr inbounds i8, i8* %178, i64 64
  %202 = bitcast i8* %201 to i8**
  store i8* %28, i8** %202, align 8, !tbaa !37
  %203 = getelementptr inbounds i8, i8* %178, i64 72
  %204 = bitcast i8* %203 to i8**
  store i8* %30, i8** %204, align 8, !tbaa !38
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #8

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #8

; Function Attrs: nounwind uwtable
define i32 @_Z16compute_residualiPKdS0_Pd(i32 %n, double* nocapture readonly %v1, double* nocapture readonly %v2, double* nocapture %residual) #13 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %xtraiter = and i32 %n, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %2 = load double, double* %v1, align 8, !tbaa !22
  %3 = load double, double* %v2, align 8, !tbaa !22
  %4 = fsub double %2, %3
  %5 = tail call double @fabs(double %4) #12
  %6 = fcmp ogt double %5, 0.000000e+00
  %local_residual.1.prol = select i1 %6, double %5, double 0.000000e+00
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %local_residual.1.lcssa.unr = phi double [ undef, %.lr.ph.preheader ], [ %local_residual.1.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.prol ]
  %local_residual.02.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %local_residual.1.prol, %.lr.ph.prol ]
  %7 = icmp eq i32 %n, 1
  br i1 %7, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader.split
  %local_residual.1.lcssa = phi double [ %local_residual.1.lcssa.unr, %.lr.ph.preheader.split ], [ %local_residual.1.1, %._crit_edge.loopexit.unr-lcssa ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %local_residual.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %local_residual.1.lcssa, %._crit_edge.loopexit ]
  store double %local_residual.0.lcssa, double* %residual, align 8, !tbaa !22
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.split.split ], [ %indvars.iv.next.1, %.lr.ph ]
  %local_residual.02 = phi double [ %local_residual.02.unr, %.lr.ph.preheader.split.split ], [ %local_residual.1.1, %.lr.ph ]
  %8 = getelementptr inbounds double, double* %v1, i64 %indvars.iv
  %9 = load double, double* %8, align 8, !tbaa !22
  %10 = getelementptr inbounds double, double* %v2, i64 %indvars.iv
  %11 = load double, double* %10, align 8, !tbaa !22
  %12 = fsub double %9, %11
  %13 = tail call double @fabs(double %12) #12
  %14 = fcmp ogt double %13, %local_residual.02
  %local_residual.1 = select i1 %14, double %13, double %local_residual.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds double, double* %v1, i64 %indvars.iv.next
  %16 = load double, double* %15, align 8, !tbaa !22
  %17 = getelementptr inbounds double, double* %v2, i64 %indvars.iv.next
  %18 = load double, double* %17, align 8, !tbaa !22
  %19 = fsub double %16, %18
  %20 = tail call double @fabs(double %19) #12
  %21 = fcmp ogt double %20, %local_residual.1
  %local_residual.1.1 = select i1 %21, double %20, double %local_residual.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %n
  br i1 %exitcond.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #14

; Function Attrs: nounwind uwtable
define double @_Z7mytimerv() #13 {
  %ruse = alloca %struct.rusage, align 8
  %1 = bitcast %struct.rusage* %ruse to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #2
  %2 = call i32 @getrusage(i32 0, %struct.rusage* nonnull %ruse) #2
  %3 = getelementptr inbounds %struct.rusage, %struct.rusage* %ruse, i64 0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !49
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.rusage, %struct.rusage* %ruse, i64 0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !52
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, 1.000000e+06
  %10 = fadd double %5, %9
  call void @llvm.lifetime.end(i64 144, i8* %1) #2
  ret double %10
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #8

; Function Attrs: nounwind uwtable
define i32 @_Z18dump_matlab_matrixP24HPC_Sparse_Matrix_STRUCTi(%struct.HPC_Sparse_Matrix_STRUCT* nocapture readonly %A, i32 %rank) #13 {
  %1 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 5
  %2 = load i32, i32* %1, align 8, !tbaa !43
  %3 = mul nsw i32 %2, %rank
  switch i32 %rank, label %39 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
  ]

; <label>:4                                       ; preds = %0
  %5 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0))
  br label %12

; <label>:6                                       ; preds = %0
  %7 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.31, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0))
  br label %12

; <label>:8                                       ; preds = %0
  %9 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0))
  br label %12

; <label>:10                                      ; preds = %0
  %11 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.33, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0))
  br label %12

; <label>:12                                      ; preds = %10, %8, %6, %4
  %handle.0 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %11, %10 ]
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %12
  %14 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 9
  %15 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 10
  %16 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 8
  %17 = add i32 %3, 1
  br label %19

._crit_edge6.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %12
  %18 = tail call i32 @fclose(%struct._IO_FILE* %handle.0)
  br label %39

; <label>:19                                      ; preds = %._crit_edge, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %._crit_edge ]
  %20 = load double**, double*** %14, align 8, !tbaa !36
  %21 = getelementptr inbounds double*, double** %20, i64 %indvars.iv7
  %22 = load double*, double** %21, align 8, !tbaa !12
  %23 = load i32**, i32*** %15, align 8, !tbaa !37
  %24 = getelementptr inbounds i32*, i32** %23, i64 %indvars.iv7
  %25 = load i32*, i32** %24, align 8, !tbaa !12
  %26 = load i32*, i32** %16, align 8, !tbaa !35
  %27 = getelementptr inbounds i32, i32* %26, i64 %indvars.iv7
  %28 = load i32, i32* %27, align 4, !tbaa !21
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %19
  %30 = trunc i64 %indvars.iv7 to i32
  %31 = add i32 %17, %30
  br label %32

._crit_edge.loopexit:                             ; preds = %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %19
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %2
  br i1 %exitcond10, label %._crit_edge6.loopexit, label %19

; <label>:32                                      ; preds = %32, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %33 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv
  %34 = load i32, i32* %33, align 4, !tbaa !21
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds double, double* %22, i64 %indvars.iv
  %37 = load double, double* %36, align 8, !tbaa !22
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %handle.0, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5.34, i64 0, i64 0), i32 %31, i32 %35, double %37)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond, label %._crit_edge.loopexit, label %32

; <label>:39                                      ; preds = %._crit_edge6, %0
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HPC_sparsemv.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.36)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.36, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* nocapture readonly %A, double* nocapture readonly %x, double* nocapture %y) #15 {
  %1 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 5
  %2 = load i32, i32* %1, align 8, !tbaa !43
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 9
  %5 = load double**, double*** %4, align 8
  %6 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 10
  %7 = load i32**, i32*** %6, align 8
  %8 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 8
  %9 = load i32*, i32** %8, align 8
  br label %10

._crit_edge6.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %0
  ret i32 0

; <label>:10                                      ; preds = %._crit_edge, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %._crit_edge ]
  %11 = getelementptr inbounds double*, double** %5, i64 %indvars.iv7
  %12 = load double*, double** %11, align 8, !tbaa !12
  %13 = getelementptr inbounds i32*, i32** %7, i64 %indvars.iv7
  %14 = load i32*, i32** %13, align 8, !tbaa !12
  %15 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv7
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %10
  %xtraiter = and i32 %16, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %18 = load double, double* %12, align 8, !tbaa !22
  %19 = load i32, i32* %14, align 4, !tbaa !21
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %x, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !22
  %23 = fmul double %18, %22
  %24 = fadd double %23, 0.000000e+00
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi double [ undef, %.lr.ph.preheader ], [ %24, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.prol ]
  %sum.01.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %24, %.lr.ph.prol ]
  %25 = icmp eq i32 %16, 1
  br i1 %25, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader.split
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.preheader.split ], [ %44, %._crit_edge.loopexit.unr-lcssa ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %sum.0.lcssa = phi double [ 0.000000e+00, %10 ], [ %.lcssa, %._crit_edge.loopexit ]
  %26 = getelementptr inbounds double, double* %y, i64 %indvars.iv7
  store double %sum.0.lcssa, double* %26, align 8, !tbaa !22
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %2
  br i1 %exitcond10, label %._crit_edge6.loopexit, label %10

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.split.split ], [ %indvars.iv.next.1, %.lr.ph ]
  %sum.01 = phi double [ %sum.01.unr, %.lr.ph.preheader.split.split ], [ %44, %.lr.ph ]
  %27 = getelementptr inbounds double, double* %12, i64 %indvars.iv
  %28 = load double, double* %27, align 8, !tbaa !22
  %29 = getelementptr inbounds i32, i32* %14, i64 %indvars.iv
  %30 = load i32, i32* %29, align 4, !tbaa !21
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %x, i64 %31
  %33 = load double, double* %32, align 8, !tbaa !22
  %34 = fmul double %28, %33
  %35 = fadd double %sum.01, %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = getelementptr inbounds double, double* %12, i64 %indvars.iv.next
  %37 = load double, double* %36, align 8, !tbaa !22
  %38 = getelementptr inbounds i32, i32* %14, i64 %indvars.iv.next
  %39 = load i32, i32* %38, align 4, !tbaa !21
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %x, i64 %40
  %42 = load double, double* %41, align 8, !tbaa !22
  %43 = fmul double %37, %42
  %44 = fadd double %35, %43
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %16
  br i1 %exitcond.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HPCCG.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.38)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.38, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %b, double* %x, i32 %max_iter, double %tolerance, i32* nocapture dereferenceable(4) %niters, double* nocapture dereferenceable(8) %normr, double* nocapture %times) #0 {
  %t4 = alloca double, align 8
  %rtrans = alloca double, align 8
  %alpha = alloca double, align 8
  %1 = tail call double @_Z7mytimerv()
  %2 = bitcast double* %t4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store double 0.000000e+00, double* %t4, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 5
  %4 = bitcast i32* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %sext = shl i64 %5, 32
  %7 = ashr exact i64 %sext, 32
  %8 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %7, i64 8)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 -1, i64 %10
  %12 = tail call noalias i8* @_Znam(i64 %11) #19
  %13 = bitcast i8* %12 to double*
  %14 = ashr i64 %5, 32
  %15 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %14, i64 8)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias i8* @_Znam(i64 %18) #19
  %20 = bitcast i8* %19 to double*
  %21 = tail call noalias i8* @_Znam(i64 %11) #19
  %22 = bitcast i8* %21 to double*
  store double 0.000000e+00, double* %normr, align 8, !tbaa !22
  %23 = bitcast double* %rtrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  store double 0.000000e+00, double* %rtrans, align 8, !tbaa !22
  %24 = sdiv i32 %max_iter, 10
  %25 = icmp sgt i32 %24, 50
  %. = select i1 %25, i32 50, i32 %24
  %26 = icmp slt i32 %., 1
  %.. = select i1 %26, i32 1, i32 %.
  %27 = tail call double @_Z7mytimerv()
  %28 = tail call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %x, double 0.000000e+00, double* %x, double* %20)
  %29 = tail call double @_Z7mytimerv()
  %30 = fsub double %29, %27
  %31 = fadd double %30, 0.000000e+00
  %32 = tail call double @_Z7mytimerv()
  %33 = tail call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %20, double* %22)
  %34 = tail call double @_Z7mytimerv()
  %35 = fsub double %34, %32
  %36 = fadd double %35, 0.000000e+00
  %37 = tail call double @_Z7mytimerv()
  %38 = tail call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %b, double -1.000000e+00, double* %22, double* %13)
  %39 = tail call double @_Z7mytimerv()
  %40 = tail call double @_Z7mytimerv()
  %41 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %13, double* %13, double* nonnull %rtrans, double* nonnull dereferenceable(8) %t4)
  %42 = call double @_Z7mytimerv()
  %43 = insertelement <2 x double> undef, double %42, i32 0
  %44 = insertelement <2 x double> %43, double %39, i32 1
  %45 = insertelement <2 x double> undef, double %40, i32 0
  %46 = insertelement <2 x double> %45, double %37, i32 1
  %47 = fsub <2 x double> %44, %46
  %48 = insertelement <2 x double> <double 0.000000e+00, double undef>, double %31, i32 1
  %49 = fadd <2 x double> %48, %47
  %50 = load double, double* %rtrans, align 8, !tbaa !22
  %51 = call double @sqrt(double %50) #2
  store double %51, double* %normr, align 8, !tbaa !22
  %52 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i64 19)
  %53 = load double, double* %normr, align 8, !tbaa !22
  %54 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %53)
  %55 = bitcast %"class.std::basic_ostream"* %54 to i8**
  %56 = load i8*, i8** %55, align 8, !tbaa !1
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %"class.std::basic_ostream"* %54 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = getelementptr inbounds i8, i8* %61, i64 240
  %63 = bitcast i8* %62 to %"class.std::ctype"**
  %64 = load %"class.std::ctype"*, %"class.std::ctype"** %63, align 8, !tbaa !4
  %65 = icmp eq %"class.std::ctype"* %64, null
  br i1 %65, label %66, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:66                                      ; preds = %0
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %0
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 8
  %68 = load i8, i8* %67, align 8, !tbaa !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

; <label>:70                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %71 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 9, i64 10
  %72 = load i8, i8* %71, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:73                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %64)
  %74 = bitcast %"class.std::ctype"* %64 to i8 (%"class.std::ctype"*, i8)***
  %75 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %74, align 8, !tbaa !1
  %76 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, i64 6
  %77 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %76, align 8
  %78 = call signext i8 %77(%"class.std::ctype"* nonnull %64, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %73, %70
  %.0.i = phi i8 [ %72, %70 ], [ %78, %73 ]
  %79 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %54, i8 signext %.0.i)
  %80 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %79)
  %81 = icmp sgt i32 %max_iter, 1
  %82 = load double, double* %normr, align 8
  %83 = fcmp ogt double %82, %tolerance
  %or.cond10 = and i1 %81, %83
  br i1 %or.cond10, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  %84 = bitcast double* %alpha to i8*
  br label %94

.critedge.loopexit:                               ; preds = %157
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZNKSt5ctypeIcE5widenEc.exit
  %t3.0.lcssa = phi double [ %36, %_ZNKSt5ctypeIcE5widenEc.exit ], [ %162, %.critedge.loopexit ]
  %85 = phi <2 x double> [ %49, %_ZNKSt5ctypeIcE5widenEc.exit ], [ %180, %.critedge.loopexit ]
  %86 = getelementptr inbounds double, double* %times, i64 1
  %87 = bitcast double* %86 to <2 x double>*
  store <2 x double> %85, <2 x double>* %87, align 8, !tbaa !22
  %88 = getelementptr inbounds double, double* %times, i64 3
  store double %t3.0.lcssa, double* %88, align 8, !tbaa !22
  %89 = bitcast double* %t4 to i64*
  %90 = getelementptr inbounds double, double* %times, i64 4
  %91 = bitcast double* %90 to i64*
  store i64 0, i64* %91, align 8, !tbaa !22
  call void @_ZdaPv(i8* nonnull %19) #20
  call void @_ZdaPv(i8* nonnull %21) #20
  call void @_ZdaPv(i8* nonnull %12) #20
  %92 = call double @_Z7mytimerv()
  %93 = fsub double %92, %1
  store double %93, double* %times, align 8, !tbaa !22
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  ret i32 0

; <label>:94                                      ; preds = %157, %.lr.ph
  %95 = phi double [ %50, %.lr.ph ], [ %118, %157 ]
  %k.014 = phi i32 [ 1, %.lr.ph ], [ %123, %157 ]
  %t3.011 = phi double [ %36, %.lr.ph ], [ %162, %157 ]
  %96 = phi <2 x double> [ %49, %.lr.ph ], [ %180, %157 ]
  %97 = icmp eq i32 %k.014, 1
  br i1 %97, label %98, label %104

; <label>:98                                      ; preds = %94
  %99 = call double @_Z7mytimerv()
  %100 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %13, double 0.000000e+00, double* %13, double* %20)
  %101 = call double @_Z7mytimerv()
  %102 = fsub double %101, %99
  %103 = extractelement <2 x double> %96, i32 0
  br label %117

; <label>:104                                     ; preds = %94
  %105 = call double @_Z7mytimerv()
  %106 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %13, double* %13, double* nonnull %rtrans, double* nonnull dereferenceable(8) %t4)
  %107 = call double @_Z7mytimerv()
  %108 = fsub double %107, %105
  %109 = extractelement <2 x double> %96, i32 0
  %110 = fadd double %109, %108
  %111 = load double, double* %rtrans, align 8, !tbaa !22
  %112 = fdiv double %111, %95
  %113 = call double @_Z7mytimerv()
  %114 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %13, double %112, double* %20, double* %20)
  %115 = call double @_Z7mytimerv()
  %116 = fsub double %115, %113
  br label %117

; <label>:117                                     ; preds = %104, %98
  %118 = phi double [ %95, %98 ], [ %111, %104 ]
  %.pn = phi double [ %102, %98 ], [ %116, %104 ]
  %t1.1 = phi double [ %103, %98 ], [ %110, %104 ]
  %119 = extractelement <2 x double> %96, i32 1
  %t2.1 = fadd double %119, %.pn
  %120 = call double @sqrt(double %118) #2
  store double %120, double* %normr, align 8, !tbaa !22
  %121 = srem i32 %k.014, %..
  %122 = icmp eq i32 %121, 0
  %123 = add nuw nsw i32 %k.014, 1
  %124 = icmp eq i32 %123, %max_iter
  %or.cond3 = or i1 %124, %122
  br i1 %or.cond3, label %125, label %157

; <label>:125                                     ; preds = %117
  %126 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.42, i64 0, i64 0), i64 12)
  %127 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %k.014)
  %128 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %127, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.43, i64 0, i64 0), i64 14)
  %129 = load double, double* %normr, align 8, !tbaa !22
  %130 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull %127, double %129)
  %131 = bitcast %"class.std::basic_ostream"* %130 to i8**
  %132 = load i8*, i8** %131, align 8, !tbaa !1
  %133 = getelementptr i8, i8* %132, i64 -24
  %134 = bitcast i8* %133 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = bitcast %"class.std::basic_ostream"* %130 to i8*
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  %138 = getelementptr inbounds i8, i8* %137, i64 240
  %139 = bitcast i8* %138 to %"class.std::ctype"**
  %140 = load %"class.std::ctype"*, %"class.std::ctype"** %139, align 8, !tbaa !4
  %141 = icmp eq %"class.std::ctype"* %140, null
  br i1 %141, label %142, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit6

; <label>:142                                     ; preds = %125
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit6:   ; preds = %125
  %143 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %140, i64 0, i32 8
  %144 = load i8, i8* %143, align 8, !tbaa !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

; <label>:146                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit6
  %147 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %140, i64 0, i32 9, i64 10
  %148 = load i8, i8* %147, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit5

; <label>:149                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit6
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %140)
  %150 = bitcast %"class.std::ctype"* %140 to i8 (%"class.std::ctype"*, i8)***
  %151 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %150, align 8, !tbaa !1
  %152 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %151, i64 6
  %153 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %152, align 8
  %154 = call signext i8 %153(%"class.std::ctype"* nonnull %140, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit5

_ZNKSt5ctypeIcE5widenEc.exit5:                    ; preds = %149, %146
  %.0.i4 = phi i8 [ %148, %146 ], [ %154, %149 ]
  %155 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %130, i8 signext %.0.i4)
  %156 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %155)
  br label %157

; <label>:157                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit5, %117
  %158 = call double @_Z7mytimerv()
  %159 = call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %20, double* %22)
  %160 = call double @_Z7mytimerv()
  %161 = fsub double %160, %158
  %162 = fadd double %t3.011, %161
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  store double 0.000000e+00, double* %alpha, align 8, !tbaa !22
  %163 = call double @_Z7mytimerv()
  %164 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %20, double* %22, double* nonnull %alpha, double* nonnull dereferenceable(8) %t4)
  %165 = call double @_Z7mytimerv()
  %166 = load double, double* %alpha, align 8, !tbaa !22
  %167 = fdiv double %118, %166
  store double %167, double* %alpha, align 8, !tbaa !22
  %168 = call double @_Z7mytimerv()
  %169 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %x, double %167, double* %20, double* %x)
  %170 = fsub double -0.000000e+00, %167
  %171 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %13, double %170, double* %22, double* %13)
  %172 = call double @_Z7mytimerv()
  %173 = insertelement <2 x double> undef, double %165, i32 0
  %174 = insertelement <2 x double> %173, double %172, i32 1
  %175 = insertelement <2 x double> undef, double %163, i32 0
  %176 = insertelement <2 x double> %175, double %168, i32 1
  %177 = fsub <2 x double> %174, %176
  %178 = insertelement <2 x double> undef, double %t1.1, i32 0
  %179 = insertelement <2 x double> %178, double %t2.1, i32 1
  %180 = fadd <2 x double> %179, %177
  store i32 %k.014, i32* %niters, align 4, !tbaa !21
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %181 = icmp slt i32 %123, %max_iter
  %182 = load double, double* %normr, align 8
  %183 = fcmp ogt double %182, %tolerance
  %or.cond = and i1 %181, %183
  br i1 %or.cond, label %94, label %.critedge.loopexit
}

; Function Attrs: nounwind
declare double @sqrt(double) #8

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #9

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z6waxpbyidPKddS0_Pd(i32 %n, double %alpha, double* nocapture readonly %x, double %beta, double* nocapture readonly %y, double* nocapture %w) #15 {
  %1 = fcmp oeq double %alpha, 1.000000e+00
  br i1 %1, label %.preheader, label %97

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %3 = add i32 %n, -1
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1
  %min.iters.check91 = icmp ult i64 %5, 4
  br i1 %min.iters.check91, label %.lr.ph.preheader129, label %min.iters.checked92

min.iters.checked92:                              ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %5, 8589934588
  %cmp.zero95 = icmp eq i64 %n.vec94, 0
  br i1 %cmp.zero95, label %.lr.ph.preheader129, label %vector.memcheck111

vector.memcheck111:                               ; preds = %min.iters.checked92
  %scevgep97 = getelementptr double, double* %w, i64 %4
  %scevgep99 = getelementptr double, double* %x, i64 %4
  %scevgep101 = getelementptr double, double* %y, i64 %4
  %bound0103 = icmp uge double* %scevgep99, %w
  %bound1104 = icmp uge double* %scevgep97, %x
  %found.conflict105 = and i1 %bound0103, %bound1104
  %bound0106 = icmp uge double* %scevgep101, %w
  %bound1107 = icmp uge double* %scevgep97, %y
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %found.conflict105, %found.conflict108
  br i1 %conflict.rdx109, label %.lr.ph.preheader129, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck111
  %broadcast.splatinsert125 = insertelement <2 x double> undef, double %beta, i32 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> undef, <2 x i32> zeroinitializer
  %6 = add nsw i64 %n.vec94, -4
  %7 = lshr exact i64 %6, 2
  %8 = and i64 %7, 1
  %lcmp.mod135 = icmp eq i64 %8, 0
  br i1 %lcmp.mod135, label %vector.body88.prol, label %vector.ph112.split

vector.body88.prol:                               ; preds = %vector.ph112
  %9 = bitcast double* %x to <2 x double>*
  %wide.load121.prol = load <2 x double>, <2 x double>* %9, align 8, !tbaa !22
  %10 = getelementptr double, double* %x, i64 2
  %11 = bitcast double* %10 to <2 x double>*
  %wide.load122.prol = load <2 x double>, <2 x double>* %11, align 8, !tbaa !22
  %12 = bitcast double* %y to <2 x double>*
  %wide.load123.prol = load <2 x double>, <2 x double>* %12, align 8, !tbaa !22
  %13 = getelementptr double, double* %y, i64 2
  %14 = bitcast double* %13 to <2 x double>*
  %wide.load124.prol = load <2 x double>, <2 x double>* %14, align 8, !tbaa !22
  %15 = fmul <2 x double> %wide.load123.prol, %broadcast.splat126
  %16 = fmul <2 x double> %wide.load124.prol, %broadcast.splat126
  %17 = fadd <2 x double> %wide.load121.prol, %15
  %18 = fadd <2 x double> %wide.load122.prol, %16
  %19 = bitcast double* %w to <2 x double>*
  store <2 x double> %17, <2 x double>* %19, align 8, !tbaa !22
  %20 = getelementptr double, double* %w, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  store <2 x double> %18, <2 x double>* %21, align 8, !tbaa !22
  br label %vector.ph112.split

vector.ph112.split:                               ; preds = %vector.body88.prol, %vector.ph112
  %index113.unr = phi i64 [ 0, %vector.ph112 ], [ 4, %vector.body88.prol ]
  %22 = icmp eq i64 %7, 0
  br i1 %22, label %middle.block89, label %vector.ph112.split.split

vector.ph112.split.split:                         ; preds = %vector.ph112.split
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph112.split.split
  %index113 = phi i64 [ %index113.unr, %vector.ph112.split.split ], [ %index.next114.1, %vector.body88 ]
  %23 = getelementptr inbounds double, double* %x, i64 %index113
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load121 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !22
  %25 = getelementptr double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load122 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !22
  %27 = getelementptr inbounds double, double* %y, i64 %index113
  %28 = bitcast double* %27 to <2 x double>*
  %wide.load123 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !22
  %29 = getelementptr double, double* %27, i64 2
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load124 = load <2 x double>, <2 x double>* %30, align 8, !tbaa !22
  %31 = fmul <2 x double> %wide.load123, %broadcast.splat126
  %32 = fmul <2 x double> %wide.load124, %broadcast.splat126
  %33 = fadd <2 x double> %wide.load121, %31
  %34 = fadd <2 x double> %wide.load122, %32
  %35 = getelementptr inbounds double, double* %w, i64 %index113
  %36 = bitcast double* %35 to <2 x double>*
  store <2 x double> %33, <2 x double>* %36, align 8, !tbaa !22
  %37 = getelementptr double, double* %35, i64 2
  %38 = bitcast double* %37 to <2 x double>*
  store <2 x double> %34, <2 x double>* %38, align 8, !tbaa !22
  %index.next114 = add i64 %index113, 4
  %39 = getelementptr inbounds double, double* %x, i64 %index.next114
  %40 = bitcast double* %39 to <2 x double>*
  %wide.load121.1 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !22
  %41 = getelementptr double, double* %39, i64 2
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load122.1 = load <2 x double>, <2 x double>* %42, align 8, !tbaa !22
  %43 = getelementptr inbounds double, double* %y, i64 %index.next114
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load123.1 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !22
  %45 = getelementptr double, double* %43, i64 2
  %46 = bitcast double* %45 to <2 x double>*
  %wide.load124.1 = load <2 x double>, <2 x double>* %46, align 8, !tbaa !22
  %47 = fmul <2 x double> %wide.load123.1, %broadcast.splat126
  %48 = fmul <2 x double> %wide.load124.1, %broadcast.splat126
  %49 = fadd <2 x double> %wide.load121.1, %47
  %50 = fadd <2 x double> %wide.load122.1, %48
  %51 = getelementptr inbounds double, double* %w, i64 %index.next114
  %52 = bitcast double* %51 to <2 x double>*
  store <2 x double> %49, <2 x double>* %52, align 8, !tbaa !22
  %53 = getelementptr double, double* %51, i64 2
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> %50, <2 x double>* %54, align 8, !tbaa !22
  %index.next114.1 = add i64 %index113, 8
  %55 = icmp eq i64 %index.next114.1, %n.vec94
  br i1 %55, label %middle.block89.unr-lcssa, label %vector.body88, !llvm.loop !53

middle.block89.unr-lcssa:                         ; preds = %vector.body88
  br label %middle.block89

middle.block89:                                   ; preds = %middle.block89.unr-lcssa, %vector.ph112.split
  %cmp.n116 = icmp eq i64 %5, %n.vec94
  br i1 %cmp.n116, label %.loopexit, label %.lr.ph.preheader129

.lr.ph.preheader129:                              ; preds = %middle.block89, %vector.memcheck111, %min.iters.checked92, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck111 ], [ 0, %min.iters.checked92 ], [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block89 ]
  %56 = add i32 %n, 1
  %57 = or i64 %indvars.iv.ph, 1
  %58 = trunc i64 %57 to i32
  %59 = sub i32 %56, %58
  %60 = sub i32 %n, %58
  %xtraiter = and i32 %59, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader129.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader129
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %61 = getelementptr inbounds double, double* %x, i64 %indvars.iv.prol
  %62 = load double, double* %61, align 8, !tbaa !22
  %63 = getelementptr inbounds double, double* %y, i64 %indvars.iv.prol
  %64 = load double, double* %63, align 8, !tbaa !22
  %65 = fmul double %64, %beta
  %66 = fadd double %62, %65
  %67 = getelementptr inbounds double, double* %w, i64 %indvars.iv.prol
  store double %66, double* %67, align 8, !tbaa !22
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.preheader129.split.loopexit, label %.lr.ph.prol, !llvm.loop !56

.lr.ph.preheader129.split.loopexit:               ; preds = %.lr.ph.prol
  br label %.lr.ph.preheader129.split

.lr.ph.preheader129.split:                        ; preds = %.lr.ph.preheader129.split.loopexit, %.lr.ph.preheader129
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader129 ], [ %indvars.iv.next.prol, %.lr.ph.preheader129.split.loopexit ]
  %68 = icmp ult i32 %60, 3
  br i1 %68, label %.loopexit.loopexit, label %.lr.ph.preheader129.split.split

.lr.ph.preheader129.split.split:                  ; preds = %.lr.ph.preheader129.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader129.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader129.split.split ], [ %indvars.iv.next.3, %.lr.ph ]
  %69 = getelementptr inbounds double, double* %x, i64 %indvars.iv
  %70 = load double, double* %69, align 8, !tbaa !22
  %71 = getelementptr inbounds double, double* %y, i64 %indvars.iv
  %72 = load double, double* %71, align 8, !tbaa !22
  %73 = fmul double %72, %beta
  %74 = fadd double %70, %73
  %75 = getelementptr inbounds double, double* %w, i64 %indvars.iv
  store double %74, double* %75, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %76 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next
  %77 = load double, double* %76, align 8, !tbaa !22
  %78 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next
  %79 = load double, double* %78, align 8, !tbaa !22
  %80 = fmul double %79, %beta
  %81 = fadd double %77, %80
  %82 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next
  store double %81, double* %82, align 8, !tbaa !22
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %83 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next.1
  %84 = load double, double* %83, align 8, !tbaa !22
  %85 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next.1
  %86 = load double, double* %85, align 8, !tbaa !22
  %87 = fmul double %86, %beta
  %88 = fadd double %84, %87
  %89 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next.1
  store double %88, double* %89, align 8, !tbaa !22
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %90 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next.2
  %91 = load double, double* %90, align 8, !tbaa !22
  %92 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next.2
  %93 = load double, double* %92, align 8, !tbaa !22
  %94 = fmul double %93, %beta
  %95 = fadd double %91, %94
  %96 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next.2
  store double %95, double* %96, align 8, !tbaa !22
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %n
  br i1 %exitcond.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

; <label>:97                                      ; preds = %0
  %98 = fcmp oeq double %beta, 1.000000e+00
  %99 = icmp sgt i32 %n, 0
  br i1 %98, label %.preheader3, label %.preheader5

.preheader5:                                      ; preds = %97
  br i1 %99, label %.lr.ph11.preheader, label %.loopexit

.lr.ph11.preheader:                               ; preds = %.preheader5
  %100 = add i32 %n, -1
  %101 = zext i32 %100 to i64
  %102 = add nuw nsw i64 %101, 1
  %min.iters.check = icmp ult i64 %102, 4
  br i1 %min.iters.check, label %.lr.ph11.preheader132, label %min.iters.checked

.lr.ph11.preheader132:                            ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph11.preheader
  %indvars.iv18.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %.lr.ph11.preheader ], [ %n.vec, %middle.block ]
  %103 = add i32 %n, 1
  %104 = or i64 %indvars.iv18.ph, 1
  %105 = trunc i64 %104 to i32
  %106 = sub i32 %103, %105
  %xtraiter141 = and i32 %106, 1
  %lcmp.mod142 = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod142, label %.lr.ph11.preheader132.split, label %.lr.ph11.prol

.lr.ph11.prol:                                    ; preds = %.lr.ph11.preheader132
  %107 = getelementptr inbounds double, double* %x, i64 %indvars.iv18.ph
  %108 = load double, double* %107, align 8, !tbaa !22
  %109 = fmul double %108, %alpha
  %110 = getelementptr inbounds double, double* %y, i64 %indvars.iv18.ph
  %111 = load double, double* %110, align 8, !tbaa !22
  %112 = fmul double %111, %beta
  %113 = fadd double %109, %112
  %114 = getelementptr inbounds double, double* %w, i64 %indvars.iv18.ph
  store double %113, double* %114, align 8, !tbaa !22
  br label %.lr.ph11.preheader132.split

.lr.ph11.preheader132.split:                      ; preds = %.lr.ph11.prol, %.lr.ph11.preheader132
  %indvars.iv18.unr = phi i64 [ %indvars.iv18.ph, %.lr.ph11.preheader132 ], [ %104, %.lr.ph11.prol ]
  %115 = icmp eq i32 %105, %n
  br i1 %115, label %.loopexit.loopexit133, label %.lr.ph11.preheader132.split.split

.lr.ph11.preheader132.split.split:                ; preds = %.lr.ph11.preheader132.split
  br label %.lr.ph11

min.iters.checked:                                ; preds = %.lr.ph11.preheader
  %n.vec = and i64 %102, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph11.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %scevgep = getelementptr double, double* %w, i64 %101
  %scevgep29 = getelementptr double, double* %x, i64 %101
  %scevgep32 = getelementptr double, double* %y, i64 %101
  %bound0 = icmp uge double* %scevgep29, %w
  %bound1 = icmp uge double* %scevgep, %x
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp uge double* %scevgep32, %w
  %bound135 = icmp uge double* %scevgep, %y
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph11.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert39 = insertelement <2 x double> undef, double %alpha, i32 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> undef, double %beta, i32 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> undef, <2 x i32> zeroinitializer
  %116 = add nsw i64 %n.vec, -4
  %117 = lshr exact i64 %116, 2
  %118 = and i64 %117, 1
  %lcmp.mod144 = icmp eq i64 %118, 0
  br i1 %lcmp.mod144, label %vector.body.prol, label %vector.ph.split

vector.body.prol:                                 ; preds = %vector.ph
  %119 = bitcast double* %x to <2 x double>*
  %wide.load.prol = load <2 x double>, <2 x double>* %119, align 8, !tbaa !22
  %120 = getelementptr double, double* %x, i64 2
  %121 = bitcast double* %120 to <2 x double>*
  %wide.load38.prol = load <2 x double>, <2 x double>* %121, align 8, !tbaa !22
  %122 = fmul <2 x double> %wide.load.prol, %broadcast.splat40
  %123 = fmul <2 x double> %wide.load38.prol, %broadcast.splat40
  %124 = bitcast double* %y to <2 x double>*
  %wide.load41.prol = load <2 x double>, <2 x double>* %124, align 8, !tbaa !22
  %125 = getelementptr double, double* %y, i64 2
  %126 = bitcast double* %125 to <2 x double>*
  %wide.load42.prol = load <2 x double>, <2 x double>* %126, align 8, !tbaa !22
  %127 = fmul <2 x double> %wide.load41.prol, %broadcast.splat44
  %128 = fmul <2 x double> %wide.load42.prol, %broadcast.splat44
  %129 = fadd <2 x double> %122, %127
  %130 = fadd <2 x double> %123, %128
  %131 = bitcast double* %w to <2 x double>*
  store <2 x double> %129, <2 x double>* %131, align 8, !tbaa !22
  %132 = getelementptr double, double* %w, i64 2
  %133 = bitcast double* %132 to <2 x double>*
  store <2 x double> %130, <2 x double>* %133, align 8, !tbaa !22
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.body.prol, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ 4, %vector.body.prol ]
  %134 = icmp eq i64 %117, 0
  br i1 %134, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.1, %vector.body ]
  %135 = getelementptr inbounds double, double* %x, i64 %index
  %136 = bitcast double* %135 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %136, align 8, !tbaa !22
  %137 = getelementptr double, double* %135, i64 2
  %138 = bitcast double* %137 to <2 x double>*
  %wide.load38 = load <2 x double>, <2 x double>* %138, align 8, !tbaa !22
  %139 = fmul <2 x double> %wide.load, %broadcast.splat40
  %140 = fmul <2 x double> %wide.load38, %broadcast.splat40
  %141 = getelementptr inbounds double, double* %y, i64 %index
  %142 = bitcast double* %141 to <2 x double>*
  %wide.load41 = load <2 x double>, <2 x double>* %142, align 8, !tbaa !22
  %143 = getelementptr double, double* %141, i64 2
  %144 = bitcast double* %143 to <2 x double>*
  %wide.load42 = load <2 x double>, <2 x double>* %144, align 8, !tbaa !22
  %145 = fmul <2 x double> %wide.load41, %broadcast.splat44
  %146 = fmul <2 x double> %wide.load42, %broadcast.splat44
  %147 = fadd <2 x double> %139, %145
  %148 = fadd <2 x double> %140, %146
  %149 = getelementptr inbounds double, double* %w, i64 %index
  %150 = bitcast double* %149 to <2 x double>*
  store <2 x double> %147, <2 x double>* %150, align 8, !tbaa !22
  %151 = getelementptr double, double* %149, i64 2
  %152 = bitcast double* %151 to <2 x double>*
  store <2 x double> %148, <2 x double>* %152, align 8, !tbaa !22
  %index.next = add i64 %index, 4
  %153 = getelementptr inbounds double, double* %x, i64 %index.next
  %154 = bitcast double* %153 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %154, align 8, !tbaa !22
  %155 = getelementptr double, double* %153, i64 2
  %156 = bitcast double* %155 to <2 x double>*
  %wide.load38.1 = load <2 x double>, <2 x double>* %156, align 8, !tbaa !22
  %157 = fmul <2 x double> %wide.load.1, %broadcast.splat40
  %158 = fmul <2 x double> %wide.load38.1, %broadcast.splat40
  %159 = getelementptr inbounds double, double* %y, i64 %index.next
  %160 = bitcast double* %159 to <2 x double>*
  %wide.load41.1 = load <2 x double>, <2 x double>* %160, align 8, !tbaa !22
  %161 = getelementptr double, double* %159, i64 2
  %162 = bitcast double* %161 to <2 x double>*
  %wide.load42.1 = load <2 x double>, <2 x double>* %162, align 8, !tbaa !22
  %163 = fmul <2 x double> %wide.load41.1, %broadcast.splat44
  %164 = fmul <2 x double> %wide.load42.1, %broadcast.splat44
  %165 = fadd <2 x double> %157, %163
  %166 = fadd <2 x double> %158, %164
  %167 = getelementptr inbounds double, double* %w, i64 %index.next
  %168 = bitcast double* %167 to <2 x double>*
  store <2 x double> %165, <2 x double>* %168, align 8, !tbaa !22
  %169 = getelementptr double, double* %167, i64 2
  %170 = bitcast double* %169 to <2 x double>*
  store <2 x double> %166, <2 x double>* %170, align 8, !tbaa !22
  %index.next.1 = add i64 %index, 8
  %171 = icmp eq i64 %index.next.1, %n.vec
  br i1 %171, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !58

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.ph.split
  %cmp.n = icmp eq i64 %102, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph11.preheader132

.preheader3:                                      ; preds = %97
  br i1 %99, label %.lr.ph9.preheader, label %.loopexit

.lr.ph9.preheader:                                ; preds = %.preheader3
  %172 = add i32 %n, -1
  %173 = zext i32 %172 to i64
  %174 = add nuw nsw i64 %173, 1
  %min.iters.check50 = icmp ult i64 %174, 4
  br i1 %min.iters.check50, label %.lr.ph9.preheader130, label %min.iters.checked51

min.iters.checked51:                              ; preds = %.lr.ph9.preheader
  %n.vec53 = and i64 %174, 8589934588
  %cmp.zero54 = icmp eq i64 %n.vec53, 0
  br i1 %cmp.zero54, label %.lr.ph9.preheader130, label %vector.memcheck70

vector.memcheck70:                                ; preds = %min.iters.checked51
  %scevgep56 = getelementptr double, double* %w, i64 %173
  %scevgep58 = getelementptr double, double* %x, i64 %173
  %scevgep60 = getelementptr double, double* %y, i64 %173
  %bound062 = icmp uge double* %scevgep58, %w
  %bound163 = icmp uge double* %scevgep56, %x
  %found.conflict64 = and i1 %bound062, %bound163
  %bound065 = icmp uge double* %scevgep60, %w
  %bound166 = icmp uge double* %scevgep56, %y
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %found.conflict64, %found.conflict67
  br i1 %conflict.rdx68, label %.lr.ph9.preheader130, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck70
  %broadcast.splatinsert82 = insertelement <2 x double> undef, double %alpha, i32 0
  %broadcast.splat83 = shufflevector <2 x double> %broadcast.splatinsert82, <2 x double> undef, <2 x i32> zeroinitializer
  %175 = add nsw i64 %n.vec53, -4
  %176 = lshr exact i64 %175, 2
  %177 = and i64 %176, 1
  %lcmp.mod140 = icmp eq i64 %177, 0
  br i1 %lcmp.mod140, label %vector.body47.prol, label %vector.ph71.split

vector.body47.prol:                               ; preds = %vector.ph71
  %178 = bitcast double* %x to <2 x double>*
  %wide.load80.prol = load <2 x double>, <2 x double>* %178, align 8, !tbaa !22
  %179 = getelementptr double, double* %x, i64 2
  %180 = bitcast double* %179 to <2 x double>*
  %wide.load81.prol = load <2 x double>, <2 x double>* %180, align 8, !tbaa !22
  %181 = fmul <2 x double> %wide.load80.prol, %broadcast.splat83
  %182 = fmul <2 x double> %wide.load81.prol, %broadcast.splat83
  %183 = bitcast double* %y to <2 x double>*
  %wide.load84.prol = load <2 x double>, <2 x double>* %183, align 8, !tbaa !22
  %184 = getelementptr double, double* %y, i64 2
  %185 = bitcast double* %184 to <2 x double>*
  %wide.load85.prol = load <2 x double>, <2 x double>* %185, align 8, !tbaa !22
  %186 = fadd <2 x double> %181, %wide.load84.prol
  %187 = fadd <2 x double> %182, %wide.load85.prol
  %188 = bitcast double* %w to <2 x double>*
  store <2 x double> %186, <2 x double>* %188, align 8, !tbaa !22
  %189 = getelementptr double, double* %w, i64 2
  %190 = bitcast double* %189 to <2 x double>*
  store <2 x double> %187, <2 x double>* %190, align 8, !tbaa !22
  br label %vector.ph71.split

vector.ph71.split:                                ; preds = %vector.body47.prol, %vector.ph71
  %index72.unr = phi i64 [ 0, %vector.ph71 ], [ 4, %vector.body47.prol ]
  %191 = icmp eq i64 %176, 0
  br i1 %191, label %middle.block48, label %vector.ph71.split.split

vector.ph71.split.split:                          ; preds = %vector.ph71.split
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph71.split.split
  %index72 = phi i64 [ %index72.unr, %vector.ph71.split.split ], [ %index.next73.1, %vector.body47 ]
  %192 = getelementptr inbounds double, double* %x, i64 %index72
  %193 = bitcast double* %192 to <2 x double>*
  %wide.load80 = load <2 x double>, <2 x double>* %193, align 8, !tbaa !22
  %194 = getelementptr double, double* %192, i64 2
  %195 = bitcast double* %194 to <2 x double>*
  %wide.load81 = load <2 x double>, <2 x double>* %195, align 8, !tbaa !22
  %196 = fmul <2 x double> %wide.load80, %broadcast.splat83
  %197 = fmul <2 x double> %wide.load81, %broadcast.splat83
  %198 = getelementptr inbounds double, double* %y, i64 %index72
  %199 = bitcast double* %198 to <2 x double>*
  %wide.load84 = load <2 x double>, <2 x double>* %199, align 8, !tbaa !22
  %200 = getelementptr double, double* %198, i64 2
  %201 = bitcast double* %200 to <2 x double>*
  %wide.load85 = load <2 x double>, <2 x double>* %201, align 8, !tbaa !22
  %202 = fadd <2 x double> %196, %wide.load84
  %203 = fadd <2 x double> %197, %wide.load85
  %204 = getelementptr inbounds double, double* %w, i64 %index72
  %205 = bitcast double* %204 to <2 x double>*
  store <2 x double> %202, <2 x double>* %205, align 8, !tbaa !22
  %206 = getelementptr double, double* %204, i64 2
  %207 = bitcast double* %206 to <2 x double>*
  store <2 x double> %203, <2 x double>* %207, align 8, !tbaa !22
  %index.next73 = add i64 %index72, 4
  %208 = getelementptr inbounds double, double* %x, i64 %index.next73
  %209 = bitcast double* %208 to <2 x double>*
  %wide.load80.1 = load <2 x double>, <2 x double>* %209, align 8, !tbaa !22
  %210 = getelementptr double, double* %208, i64 2
  %211 = bitcast double* %210 to <2 x double>*
  %wide.load81.1 = load <2 x double>, <2 x double>* %211, align 8, !tbaa !22
  %212 = fmul <2 x double> %wide.load80.1, %broadcast.splat83
  %213 = fmul <2 x double> %wide.load81.1, %broadcast.splat83
  %214 = getelementptr inbounds double, double* %y, i64 %index.next73
  %215 = bitcast double* %214 to <2 x double>*
  %wide.load84.1 = load <2 x double>, <2 x double>* %215, align 8, !tbaa !22
  %216 = getelementptr double, double* %214, i64 2
  %217 = bitcast double* %216 to <2 x double>*
  %wide.load85.1 = load <2 x double>, <2 x double>* %217, align 8, !tbaa !22
  %218 = fadd <2 x double> %212, %wide.load84.1
  %219 = fadd <2 x double> %213, %wide.load85.1
  %220 = getelementptr inbounds double, double* %w, i64 %index.next73
  %221 = bitcast double* %220 to <2 x double>*
  store <2 x double> %218, <2 x double>* %221, align 8, !tbaa !22
  %222 = getelementptr double, double* %220, i64 2
  %223 = bitcast double* %222 to <2 x double>*
  store <2 x double> %219, <2 x double>* %223, align 8, !tbaa !22
  %index.next73.1 = add i64 %index72, 8
  %224 = icmp eq i64 %index.next73.1, %n.vec53
  br i1 %224, label %middle.block48.unr-lcssa, label %vector.body47, !llvm.loop !59

middle.block48.unr-lcssa:                         ; preds = %vector.body47
  br label %middle.block48

middle.block48:                                   ; preds = %middle.block48.unr-lcssa, %vector.ph71.split
  %cmp.n75 = icmp eq i64 %174, %n.vec53
  br i1 %cmp.n75, label %.loopexit, label %.lr.ph9.preheader130

.lr.ph9.preheader130:                             ; preds = %middle.block48, %vector.memcheck70, %min.iters.checked51, %.lr.ph9.preheader
  %indvars.iv14.ph = phi i64 [ 0, %vector.memcheck70 ], [ 0, %min.iters.checked51 ], [ 0, %.lr.ph9.preheader ], [ %n.vec53, %middle.block48 ]
  %225 = add i32 %n, 1
  %226 = or i64 %indvars.iv14.ph, 1
  %227 = trunc i64 %226 to i32
  %228 = sub i32 %225, %227
  %229 = sub i32 %n, %227
  %xtraiter136 = and i32 %228, 3
  %lcmp.mod137 = icmp eq i32 %xtraiter136, 0
  br i1 %lcmp.mod137, label %.lr.ph9.preheader130.split, label %.lr.ph9.prol.preheader

.lr.ph9.prol.preheader:                           ; preds = %.lr.ph9.preheader130
  br label %.lr.ph9.prol

.lr.ph9.prol:                                     ; preds = %.lr.ph9.prol, %.lr.ph9.prol.preheader
  %indvars.iv14.prol = phi i64 [ %indvars.iv.next15.prol, %.lr.ph9.prol ], [ %indvars.iv14.ph, %.lr.ph9.prol.preheader ]
  %prol.iter138 = phi i32 [ %prol.iter138.sub, %.lr.ph9.prol ], [ %xtraiter136, %.lr.ph9.prol.preheader ]
  %230 = getelementptr inbounds double, double* %x, i64 %indvars.iv14.prol
  %231 = load double, double* %230, align 8, !tbaa !22
  %232 = fmul double %231, %alpha
  %233 = getelementptr inbounds double, double* %y, i64 %indvars.iv14.prol
  %234 = load double, double* %233, align 8, !tbaa !22
  %235 = fadd double %232, %234
  %236 = getelementptr inbounds double, double* %w, i64 %indvars.iv14.prol
  store double %235, double* %236, align 8, !tbaa !22
  %indvars.iv.next15.prol = add nuw nsw i64 %indvars.iv14.prol, 1
  %prol.iter138.sub = add i32 %prol.iter138, -1
  %prol.iter138.cmp = icmp eq i32 %prol.iter138.sub, 0
  br i1 %prol.iter138.cmp, label %.lr.ph9.preheader130.split.loopexit, label %.lr.ph9.prol, !llvm.loop !60

.lr.ph9.preheader130.split.loopexit:              ; preds = %.lr.ph9.prol
  br label %.lr.ph9.preheader130.split

.lr.ph9.preheader130.split:                       ; preds = %.lr.ph9.preheader130.split.loopexit, %.lr.ph9.preheader130
  %indvars.iv14.unr = phi i64 [ %indvars.iv14.ph, %.lr.ph9.preheader130 ], [ %indvars.iv.next15.prol, %.lr.ph9.preheader130.split.loopexit ]
  %237 = icmp ult i32 %229, 3
  br i1 %237, label %.loopexit.loopexit131, label %.lr.ph9.preheader130.split.split

.lr.ph9.preheader130.split.split:                 ; preds = %.lr.ph9.preheader130.split
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9, %.lr.ph9.preheader130.split.split
  %indvars.iv14 = phi i64 [ %indvars.iv14.unr, %.lr.ph9.preheader130.split.split ], [ %indvars.iv.next15.3, %.lr.ph9 ]
  %238 = getelementptr inbounds double, double* %x, i64 %indvars.iv14
  %239 = load double, double* %238, align 8, !tbaa !22
  %240 = fmul double %239, %alpha
  %241 = getelementptr inbounds double, double* %y, i64 %indvars.iv14
  %242 = load double, double* %241, align 8, !tbaa !22
  %243 = fadd double %240, %242
  %244 = getelementptr inbounds double, double* %w, i64 %indvars.iv14
  store double %243, double* %244, align 8, !tbaa !22
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %245 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next15
  %246 = load double, double* %245, align 8, !tbaa !22
  %247 = fmul double %246, %alpha
  %248 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next15
  %249 = load double, double* %248, align 8, !tbaa !22
  %250 = fadd double %247, %249
  %251 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next15
  store double %250, double* %251, align 8, !tbaa !22
  %indvars.iv.next15.1 = add nsw i64 %indvars.iv14, 2
  %252 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next15.1
  %253 = load double, double* %252, align 8, !tbaa !22
  %254 = fmul double %253, %alpha
  %255 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next15.1
  %256 = load double, double* %255, align 8, !tbaa !22
  %257 = fadd double %254, %256
  %258 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next15.1
  store double %257, double* %258, align 8, !tbaa !22
  %indvars.iv.next15.2 = add nsw i64 %indvars.iv14, 3
  %259 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next15.2
  %260 = load double, double* %259, align 8, !tbaa !22
  %261 = fmul double %260, %alpha
  %262 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next15.2
  %263 = load double, double* %262, align 8, !tbaa !22
  %264 = fadd double %261, %263
  %265 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next15.2
  store double %264, double* %265, align 8, !tbaa !22
  %indvars.iv.next15.3 = add nsw i64 %indvars.iv14, 4
  %lftr.wideiv16.3 = trunc i64 %indvars.iv.next15.3 to i32
  %exitcond17.3 = icmp eq i32 %lftr.wideiv16.3, %n
  br i1 %exitcond17.3, label %.loopexit.loopexit131.unr-lcssa, label %.lr.ph9, !llvm.loop !61

.lr.ph11:                                         ; preds = %.lr.ph11, %.lr.ph11.preheader132.split.split
  %indvars.iv18 = phi i64 [ %indvars.iv18.unr, %.lr.ph11.preheader132.split.split ], [ %indvars.iv.next19.1, %.lr.ph11 ]
  %266 = getelementptr inbounds double, double* %x, i64 %indvars.iv18
  %267 = load double, double* %266, align 8, !tbaa !22
  %268 = fmul double %267, %alpha
  %269 = getelementptr inbounds double, double* %y, i64 %indvars.iv18
  %270 = load double, double* %269, align 8, !tbaa !22
  %271 = fmul double %270, %beta
  %272 = fadd double %268, %271
  %273 = getelementptr inbounds double, double* %w, i64 %indvars.iv18
  store double %272, double* %273, align 8, !tbaa !22
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %274 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next19
  %275 = load double, double* %274, align 8, !tbaa !22
  %276 = fmul double %275, %alpha
  %277 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next19
  %278 = load double, double* %277, align 8, !tbaa !22
  %279 = fmul double %278, %beta
  %280 = fadd double %276, %279
  %281 = getelementptr inbounds double, double* %w, i64 %indvars.iv.next19
  store double %280, double* %281, align 8, !tbaa !22
  %indvars.iv.next19.1 = add nsw i64 %indvars.iv18, 2
  %lftr.wideiv20.1 = trunc i64 %indvars.iv.next19.1 to i32
  %exitcond21.1 = icmp eq i32 %lftr.wideiv20.1, %n
  br i1 %exitcond21.1, label %.loopexit.loopexit133.unr-lcssa, label %.lr.ph11, !llvm.loop !62

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader129.split
  br label %.loopexit

.loopexit.loopexit131.unr-lcssa:                  ; preds = %.lr.ph9
  br label %.loopexit.loopexit131

.loopexit.loopexit131:                            ; preds = %.loopexit.loopexit131.unr-lcssa, %.lr.ph9.preheader130.split
  br label %.loopexit

.loopexit.loopexit133.unr-lcssa:                  ; preds = %.lr.ph11
  br label %.loopexit.loopexit133

.loopexit.loopexit133:                            ; preds = %.loopexit.loopexit133.unr-lcssa, %.lr.ph11.preheader132.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit133, %.loopexit.loopexit131, %.loopexit.loopexit, %middle.block48, %.preheader3, %middle.block, %.preheader5, %middle.block89, %.preheader
  ret i32 0
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z4ddotiPKdS0_PdRd(i32 %n, double* readonly %x, double* readonly %y, double* nocapture %result, double* nocapture readnone dereferenceable(8) %time_allreduce) #15 {
  %1 = icmp eq double* %y, %x
  %2 = icmp sgt i32 %n, 0
  br i1 %1, label %.preheader, label %.preheader2

.preheader2:                                      ; preds = %0
  br i1 %2, label %.lr.ph8.preheader, label %.loopexit

.lr.ph8.preheader:                                ; preds = %.preheader2
  %3 = add i32 %n, -1
  %xtraiter22 = and i32 %n, 3
  %lcmp.mod23 = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod23, label %.lr.ph8.preheader.split, label %.lr.ph8.prol.preheader

.lr.ph8.prol.preheader:                           ; preds = %.lr.ph8.preheader
  br label %.lr.ph8.prol

.lr.ph8.prol:                                     ; preds = %.lr.ph8.prol, %.lr.ph8.prol.preheader
  %indvars.iv12.prol = phi i64 [ %indvars.iv.next13.prol, %.lr.ph8.prol ], [ 0, %.lr.ph8.prol.preheader ]
  %local_result.16.prol = phi double [ %9, %.lr.ph8.prol ], [ 0.000000e+00, %.lr.ph8.prol.preheader ]
  %prol.iter24 = phi i32 [ %prol.iter24.sub, %.lr.ph8.prol ], [ %xtraiter22, %.lr.ph8.prol.preheader ]
  %4 = getelementptr inbounds double, double* %x, i64 %indvars.iv12.prol
  %5 = load double, double* %4, align 8, !tbaa !22
  %6 = getelementptr inbounds double, double* %y, i64 %indvars.iv12.prol
  %7 = load double, double* %6, align 8, !tbaa !22
  %8 = fmul double %5, %7
  %9 = fadd double %local_result.16.prol, %8
  %indvars.iv.next13.prol = add nuw nsw i64 %indvars.iv12.prol, 1
  %prol.iter24.sub = add i32 %prol.iter24, -1
  %prol.iter24.cmp = icmp eq i32 %prol.iter24.sub, 0
  br i1 %prol.iter24.cmp, label %.lr.ph8.preheader.split.loopexit, label %.lr.ph8.prol, !llvm.loop !63

.lr.ph8.preheader.split.loopexit:                 ; preds = %.lr.ph8.prol
  br label %.lr.ph8.preheader.split

.lr.ph8.preheader.split:                          ; preds = %.lr.ph8.preheader.split.loopexit, %.lr.ph8.preheader
  %.lcssa21.unr = phi double [ undef, %.lr.ph8.preheader ], [ %9, %.lr.ph8.preheader.split.loopexit ]
  %indvars.iv12.unr = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next13.prol, %.lr.ph8.preheader.split.loopexit ]
  %local_result.16.unr = phi double [ 0.000000e+00, %.lr.ph8.preheader ], [ %9, %.lr.ph8.preheader.split.loopexit ]
  %10 = icmp ult i32 %3, 3
  br i1 %10, label %.loopexit.loopexit20, label %.lr.ph8.preheader.split.split

.lr.ph8.preheader.split.split:                    ; preds = %.lr.ph8.preheader.split
  br label %.lr.ph8

.preheader:                                       ; preds = %0
  br i1 %2, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %11 = add i32 %n, -1
  %xtraiter = and i32 %n, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ 0, %.lr.ph.prol.preheader ]
  %local_result.04.prol = phi double [ %15, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %12 = getelementptr inbounds double, double* %y, i64 %indvars.iv.prol
  %13 = load double, double* %12, align 8, !tbaa !22
  %14 = fmul double %13, %13
  %15 = fadd double %local_result.04.prol, %14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !64

.lr.ph.preheader.split.loopexit:                  ; preds = %.lr.ph.prol
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader.split.loopexit, %.lr.ph.preheader
  %.lcssa.unr = phi double [ undef, %.lr.ph.preheader ], [ %15, %.lr.ph.preheader.split.loopexit ]
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.preheader.split.loopexit ]
  %local_result.04.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %15, %.lr.ph.preheader.split.loopexit ]
  %16 = icmp ult i32 %11, 3
  br i1 %16, label %.loopexit.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.split.split ], [ %indvars.iv.next.3, %.lr.ph ]
  %local_result.04 = phi double [ %local_result.04.unr, %.lr.ph.preheader.split.split ], [ %32, %.lr.ph ]
  %17 = getelementptr inbounds double, double* %y, i64 %indvars.iv
  %18 = load double, double* %17, align 8, !tbaa !22
  %19 = fmul double %18, %18
  %20 = fadd double %local_result.04, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next
  %22 = load double, double* %21, align 8, !tbaa !22
  %23 = fmul double %22, %22
  %24 = fadd double %20, %23
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %25 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next.1
  %26 = load double, double* %25, align 8, !tbaa !22
  %27 = fmul double %26, %26
  %28 = fadd double %24, %27
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %29 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next.2
  %30 = load double, double* %29, align 8, !tbaa !22
  %31 = fmul double %30, %30
  %32 = fadd double %28, %31
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %n
  br i1 %exitcond.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader.split.split
  %indvars.iv12 = phi i64 [ %indvars.iv12.unr, %.lr.ph8.preheader.split.split ], [ %indvars.iv.next13.3, %.lr.ph8 ]
  %local_result.16 = phi double [ %local_result.16.unr, %.lr.ph8.preheader.split.split ], [ %56, %.lr.ph8 ]
  %33 = getelementptr inbounds double, double* %x, i64 %indvars.iv12
  %34 = load double, double* %33, align 8, !tbaa !22
  %35 = getelementptr inbounds double, double* %y, i64 %indvars.iv12
  %36 = load double, double* %35, align 8, !tbaa !22
  %37 = fmul double %34, %36
  %38 = fadd double %local_result.16, %37
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %39 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next13
  %40 = load double, double* %39, align 8, !tbaa !22
  %41 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next13
  %42 = load double, double* %41, align 8, !tbaa !22
  %43 = fmul double %40, %42
  %44 = fadd double %38, %43
  %indvars.iv.next13.1 = add nsw i64 %indvars.iv12, 2
  %45 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next13.1
  %46 = load double, double* %45, align 8, !tbaa !22
  %47 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next13.1
  %48 = load double, double* %47, align 8, !tbaa !22
  %49 = fmul double %46, %48
  %50 = fadd double %44, %49
  %indvars.iv.next13.2 = add nsw i64 %indvars.iv12, 3
  %51 = getelementptr inbounds double, double* %x, i64 %indvars.iv.next13.2
  %52 = load double, double* %51, align 8, !tbaa !22
  %53 = getelementptr inbounds double, double* %y, i64 %indvars.iv.next13.2
  %54 = load double, double* %53, align 8, !tbaa !22
  %55 = fmul double %52, %54
  %56 = fadd double %50, %55
  %indvars.iv.next13.3 = add nsw i64 %indvars.iv12, 4
  %lftr.wideiv14.3 = trunc i64 %indvars.iv.next13.3 to i32
  %exitcond15.3 = icmp eq i32 %lftr.wideiv14.3, %n
  br i1 %exitcond15.3, label %.loopexit.loopexit20.unr-lcssa, label %.lr.ph8

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.split
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.preheader.split ], [ %32, %.loopexit.loopexit.unr-lcssa ]
  br label %.loopexit

.loopexit.loopexit20.unr-lcssa:                   ; preds = %.lr.ph8
  br label %.loopexit.loopexit20

.loopexit.loopexit20:                             ; preds = %.loopexit.loopexit20.unr-lcssa, %.lr.ph8.preheader.split
  %.lcssa21 = phi double [ %.lcssa21.unr, %.lr.ph8.preheader.split ], [ %56, %.loopexit.loopexit20.unr-lcssa ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit20, %.loopexit.loopexit, %.preheader, %.preheader2
  %local_result.2 = phi double [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader2 ], [ %.lcssa, %.loopexit.loopexit ], [ %.lcssa21, %.loopexit.loopexit20 ]
  store double %local_result.2, double* %result, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Element.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.49)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.49, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* dereferenceable(32) %value_arg) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 2
  %3 = bitcast %class.YAML_Element* %this to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %4, align 8, !tbaa !30
  %.cast.i = bitcast %union.anon* %2 to i8*
  store i8 0, i8* %.cast.i, align 1, !tbaa !11
  %5 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %6 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !28
  %8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  store i64 0, i64* %8, align 8, !tbaa !30
  %.cast.i3 = bitcast %union.anon* %6 to i8*
  store i8 0, i8* %.cast.i3, align 1, !tbaa !11
  %9 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %10 = bitcast %"class.std::vector"* %9 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %value_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  ret void

; <label>:11                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %0
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %9, i64 0, i32 0, i32 0, i32 0
  %14 = load %class.YAML_Element**, %class.YAML_Element*** %13, align 8, !tbaa !65
  %15 = icmp eq %class.YAML_Element** %14, null
  br i1 %15, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %16

; <label>:16                                      ; preds = %11
  %17 = bitcast %class.YAML_Element** %14 to i8*
  tail call void @_ZdlPv(i8* %17) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %16, %11
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !32
  %20 = icmp eq i8* %19, %.cast.i3
  br i1 %20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %21

; <label>:21                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  tail call void @_ZdlPv(i8* %19) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %21, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  %22 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !32
  %24 = icmp eq i8* %23, %.cast.i
  br i1 %24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %25

; <label>:25                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  tail call void @_ZdlPv(i8* %23) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  resume { i8*, i32 } %12
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: uwtable
define void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %3 = bitcast %class.YAML_Element*** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !68
  %5 = bitcast %"class.std::vector"* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !65
  %7 = icmp eq i64 %4, %6
  %8 = inttoptr i64 %6 to %class.YAML_Element**
  br i1 %7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %9 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %1, i64 0, i32 0, i32 0, i32 0
  br label %10

; <label>:10                                      ; preds = %22, %.lr.ph
  %11 = phi %class.YAML_Element** [ %8, %.lr.ph ], [ %23, %22 ]
  %12 = phi i64 [ %6, %.lr.ph ], [ %24, %22 ]
  %13 = phi i64 [ %4, %.lr.ph ], [ %25, %22 ]
  %14 = phi %class.YAML_Element** [ %8, %.lr.ph ], [ %30, %22 ]
  %i.015 = phi i64 [ 0, %.lr.ph ], [ %26, %22 ]
  %15 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %14, i64 %i.015
  %16 = load %class.YAML_Element*, %class.YAML_Element** %15, align 8, !tbaa !12
  %17 = icmp eq %class.YAML_Element* %16, null
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %10
  invoke void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* nonnull %16)
          to label %19 unwind label %47

; <label>:19                                      ; preds = %18
  %20 = bitcast %class.YAML_Element* %16 to i8*
  tail call void @_ZdlPv(i8* %20) #20
  %.pre = load i64, i64* %3, align 8, !tbaa !68
  %.pre20 = load i64, i64* %5, align 8, !tbaa !65
  %21 = inttoptr i64 %.pre20 to %class.YAML_Element**
  br label %22

; <label>:22                                      ; preds = %19, %10
  %23 = phi %class.YAML_Element** [ %11, %10 ], [ %21, %19 ]
  %24 = phi i64 [ %12, %10 ], [ %.pre20, %19 ]
  %25 = phi i64 [ %13, %10 ], [ %.pre, %19 ]
  %26 = add i64 %i.015, 1
  %27 = sub i64 %25, %24
  %28 = ashr exact i64 %27, 3
  %29 = icmp ult i64 %26, %28
  %30 = inttoptr i64 %24 to %class.YAML_Element**
  br i1 %29, label %10, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %31 = phi %class.YAML_Element** [ %8, %0 ], [ %23, %._crit_edge.loopexit ]
  %.lcssa11 = phi i64 [ %4, %0 ], [ %24, %._crit_edge.loopexit ]
  store i64 %.lcssa11, i64* %3, align 8, !tbaa !68
  %32 = icmp eq %class.YAML_Element** %31, null
  br i1 %32, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %33

; <label>:33                                      ; preds = %._crit_edge
  %34 = bitcast %class.YAML_Element** %31 to i8*
  tail call void @_ZdlPv(i8* %34) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %33, %._crit_edge
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !32
  %37 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 2
  %38 = bitcast %union.anon* %37 to i8*
  %39 = icmp eq i8* %36, %38
  br i1 %39, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %40

; <label>:40                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  tail call void @_ZdlPv(i8* %36) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %40, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  %41 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !32
  %43 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 2
  %44 = bitcast %union.anon* %43 to i8*
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %46

; <label>:46                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  tail call void @_ZdlPv(i8* %42) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  ret void

; <label>:47                                      ; preds = %18
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = bitcast %class.YAML_Element* %16 to i8*
  tail call void @_ZdlPv(i8* %49) #20
  %50 = load %class.YAML_Element**, %class.YAML_Element*** %9, align 8, !tbaa !65
  %51 = icmp eq %class.YAML_Element** %50, null
  br i1 %51, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit7, label %52

; <label>:52                                      ; preds = %47
  %53 = bitcast %class.YAML_Element** %50 to i8*
  tail call void @_ZdlPv(i8* %53) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit7

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit7:   ; preds = %52, %47
  %54 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !32
  %56 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 2
  %57 = bitcast %union.anon* %56 to i8*
  %58 = icmp eq i8* %55, %57
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %59

; <label>:59                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit7
  tail call void @_ZdlPv(i8* %55) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %59, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit7
  %60 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8, !tbaa !32
  %62 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 2
  %63 = bitcast %union.anon* %62 to i8*
  %64 = icmp eq i8* %61, %63
  br i1 %64, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %65

; <label>:65                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  tail call void @_ZdlPv(i8* %61) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  resume { i8*, i32 } %48
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, double %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !30
  %4 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), i64 0)
  %5 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  call void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, double %value_arg)
  %6 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = invoke noalias i8* @_Znwm(i64 88) #19
          to label %8 unwind label %54

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %7 to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %7, i64 16
  %11 = bitcast i8* %7 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !28
  %12 = getelementptr inbounds i8, i8* %7, i64 8
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %13, align 8, !tbaa !30
  store i8 0, i8* %10, align 1, !tbaa !11
  %14 = getelementptr inbounds i8, i8* %7, i64 32
  %15 = getelementptr inbounds i8, i8* %7, i64 48
  %16 = bitcast i8* %14 to i8**
  store i8* %15, i8** %16, align 8, !tbaa !28
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 0, i64* %18, align 8, !tbaa !30
  store i8 0, i8* %15, align 1, !tbaa !11
  %19 = getelementptr inbounds i8, i8* %7, i64 64
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %9, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %8
  %20 = bitcast i8* %14 to %"class.std::__cxx11::basic_string"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %20, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %21

; <label>:21                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %8
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = bitcast i8* %19 to %class.YAML_Element***
  %24 = load %class.YAML_Element**, %class.YAML_Element*** %23, align 8, !tbaa !65
  %25 = icmp eq %class.YAML_Element** %24, null
  br i1 %25, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %26

; <label>:26                                      ; preds = %21
  %27 = bitcast %class.YAML_Element** %24 to i8*
  call void @_ZdlPv(i8* %27) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %26, %21
  %28 = load i8*, i8** %16, align 8, !tbaa !32
  %29 = icmp eq i8* %28, %15
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %30

; <label>:30                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(i8* %28) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %30, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %31 = load i8*, i8** %11, align 8, !tbaa !32
  %32 = icmp eq i8* %31, %10
  br i1 %32, label %.body, label %33

; <label>:33                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  call void @_ZdlPv(i8* %31) #2
  br label %.body

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %34 = bitcast %class.YAML_Element** %element to i8**
  store i8* %7, i8** %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %36 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %38 = load %class.YAML_Element**, %class.YAML_Element*** %37, align 8, !tbaa !69
  %39 = icmp eq %class.YAML_Element** %36, %38
  %40 = bitcast i8* %7 to %class.YAML_Element*
  br i1 %39, label %46, label %41

; <label>:41                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %42 = ptrtoint i8* %7 to i64
  %43 = bitcast %class.YAML_Element** %36 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !12
  %44 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %45 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %44, i64 1
  store %class.YAML_Element** %45, %class.YAML_Element*** %35, align 8, !tbaa !68
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

; <label>:46                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %47 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %47, %class.YAML_Element** %36, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit unwind label %54

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %46, %41
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #2
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %51 = bitcast %union.anon* %50 to i8*
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %53

; <label>:53                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %53, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #2
  ret %class.YAML_Element* %40

; <label>:54                                      ; preds = %46, %0
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  br label %60

.body:                                            ; preds = %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %58 = extractvalue { i8*, i32 } %22, 0
  %59 = extractvalue { i8*, i32 } %22, 1
  call void @_ZdlPv(i8* nonnull %7) #20
  br label %60

; <label>:60                                      ; preds = %.body, %54
  %.01 = phi i8* [ %56, %54 ], [ %58, %.body ]
  %.0 = phi i32 [ %57, %54 ], [ %59, %.body ]
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %64 = bitcast %union.anon* %63 to i8*
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2, label %66

; <label>:66                                      ; preds = %60
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2: ; preds = %66, %60
  %67 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %.0, 1
  resume { i8*, i32 } %68
}

declare dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"*, i64, i64, i8*, i64) #1

; Function Attrs: uwtable
define void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, double %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 24)
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %3 = bitcast %"class.std::basic_ostream.base"* %2 to %"class.std::basic_ostream"*
  %4 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %3, double %value_arg)
          to label %_ZNSolsEd.exit unwind label %33

_ZNSolsEd.exit:                                   ; preds = %0
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %5)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %33

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSolsEd.exit
  %6 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %7 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %6, i64* %7, align 8, !tbaa !1
  %8 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i = inttoptr i64 %6 to i8*
  %9 = getelementptr i8, i8* %.cast.i.i, i64 -24
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = bitcast i8* %12 to i64*
  store i64 %8, i64* %13, align 8, !tbaa !1
  %14 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %15 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %22

; <label>:22                                      ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(i8* %18) #2
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %22, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %23) #2
  %24 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %24, i64* %7, align 8, !tbaa !1
  %25 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i = inttoptr i64 %24 to i8*
  %26 = getelementptr i8, i8* %.cast.i.i.i.i, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %1, i64 %28
  %30 = bitcast i8* %29 to i64*
  store i64 %25, i64* %30, align 8, !tbaa !1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %32)
  call void @llvm.lifetime.end(i64 392, i8* nonnull %1) #2
  ret void

; <label>:33                                      ; preds = %_ZNSolsEd.exit, %0
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %36 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %35, i64* %36, align 8, !tbaa !1
  %37 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i1 = inttoptr i64 %35 to i8*
  %38 = getelementptr i8, i8* %.cast.i.i1, i64 -24
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %1, i64 %40
  %42 = bitcast i8* %41 to i64*
  store i64 %37, i64* %42, align 8, !tbaa !1
  %43 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %44 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !1
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !32
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %49 = bitcast %union.anon* %48 to i8*
  %50 = icmp eq i8* %47, %49
  br i1 %50, label %52, label %51

; <label>:51                                      ; preds = %33
  call void @_ZdlPv(i8* %47) #2
  br label %52

; <label>:52                                      ; preds = %51, %33
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %53) #2
  %54 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %54, i64* %36, align 8, !tbaa !1
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i2 = inttoptr i64 %54 to i8*
  %56 = getelementptr i8, i8* %.cast.i.i.i.i2, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %1, i64 %58
  %60 = bitcast i8* %59 to i64*
  store i64 %55, i64* %60, align 8, !tbaa !1
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %61, align 8, !tbaa !70
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %62)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3 unwind label %63

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3: ; preds = %52
  resume { i8*, i32 } %34

; <label>:63                                      ; preds = %52
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #18
  unreachable
}

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"*, i32) unnamed_addr #0 align 2

; Function Attrs: uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret, %"class.std::__cxx11::basic_stringbuf"*) #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"*) #8

declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nocapture %this, %class.YAML_Element** %__position.coerce, %class.YAML_Element** nocapture readonly dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit:
  %0 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %class.YAML_Element*** %0 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !68
  %3 = bitcast %"class.std::vector"* %this to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !12
  %5 = sub i64 %2, %4
  %6 = ashr exact i64 %5, 3
  %7 = ptrtoint %class.YAML_Element** %__position.coerce to i64
  %8 = icmp eq i64 %6, 0
  %9 = select i1 %8, i64 1, i64 %6
  %10 = add nsw i64 %9, %6
  %11 = icmp ult i64 %10, %6
  %12 = icmp ugt i64 %10, 2305843009213693951
  %or.cond.i = or i1 %11, %12
  %13 = select i1 %or.cond.i, i64 2305843009213693951, i64 %10
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %15 = sub i64 %7, %4
  %16 = ashr exact i64 %15, 3
  %17 = icmp eq i64 %13, 0
  %18 = inttoptr i64 %4 to %class.YAML_Element**
  br i1 %17, label %25, label %19

; <label>:19                                      ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit
  %20 = icmp ugt i64 %13, 2305843009213693951
  br i1 %20, label %21, label %_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m.exit.i

; <label>:21                                      ; preds = %19
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m.exit.i: ; preds = %19
  %22 = shl i64 %13, 3
  %23 = tail call noalias i8* @_Znwm(i64 %22)
  %24 = bitcast i8* %23 to %class.YAML_Element**
  %.pre = load %class.YAML_Element**, %class.YAML_Element*** %14, align 8, !tbaa !65
  br label %25

; <label>:25                                      ; preds = %_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m.exit.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit
  %26 = phi %class.YAML_Element** [ %.pre, %_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m.exit.i ], [ %18, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit ]
  %27 = phi %class.YAML_Element** [ %24, %_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m.exit.i ], [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit ]
  %28 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %27, i64 %16
  %29 = bitcast %class.YAML_Element** %__x to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !12
  %31 = bitcast %class.YAML_Element** %28 to i64*
  store i64 %30, i64* %31, align 8, !tbaa !12
  %32 = ptrtoint %class.YAML_Element** %26 to i64
  %33 = sub i64 %7, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

; <label>:36                                      ; preds = %25
  %37 = bitcast %class.YAML_Element** %27 to i8*
  %38 = bitcast %class.YAML_Element** %26 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %33, i32 8, i1 false) #2
  br label %39

; <label>:39                                      ; preds = %36, %25
  %40 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %27, i64 %34
  %41 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %40, i64 1
  %42 = load i64, i64* %1, align 8, !tbaa !68
  %43 = sub i64 %42, %7
  %44 = ashr exact i64 %43, 3
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %39
  %47 = bitcast %class.YAML_Element** %41 to i8*
  %48 = bitcast %class.YAML_Element** %__position.coerce to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %47, i8* %48, i64 %43, i32 8, i1 false) #2
  br label %49

; <label>:49                                      ; preds = %46, %39
  %50 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %41, i64 %44
  %51 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %52 = icmp eq %class.YAML_Element** %26, null
  br i1 %52, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m.exit1, label %53

; <label>:53                                      ; preds = %49
  %54 = bitcast %class.YAML_Element** %26 to i8*
  tail call void @_ZdlPv(i8* %54) #2
  br label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m.exit1

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m.exit1: ; preds = %53, %49
  store %class.YAML_Element** %27, %class.YAML_Element*** %14, align 8, !tbaa !65
  store %class.YAML_Element** %50, %class.YAML_Element*** %0, align 8, !tbaa !68
  %55 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %27, i64 %13
  store %class.YAML_Element** %55, %class.YAML_Element*** %51, align 8, !tbaa !69
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i32 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !30
  %4 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), i64 0)
  %5 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  call void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i32 %value_arg)
  %6 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = invoke noalias i8* @_Znwm(i64 88) #19
          to label %8 unwind label %54

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %7 to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %7, i64 16
  %11 = bitcast i8* %7 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !28
  %12 = getelementptr inbounds i8, i8* %7, i64 8
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %13, align 8, !tbaa !30
  store i8 0, i8* %10, align 1, !tbaa !11
  %14 = getelementptr inbounds i8, i8* %7, i64 32
  %15 = getelementptr inbounds i8, i8* %7, i64 48
  %16 = bitcast i8* %14 to i8**
  store i8* %15, i8** %16, align 8, !tbaa !28
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 0, i64* %18, align 8, !tbaa !30
  store i8 0, i8* %15, align 1, !tbaa !11
  %19 = getelementptr inbounds i8, i8* %7, i64 64
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %9, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %8
  %20 = bitcast i8* %14 to %"class.std::__cxx11::basic_string"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %20, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %21

; <label>:21                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %8
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = bitcast i8* %19 to %class.YAML_Element***
  %24 = load %class.YAML_Element**, %class.YAML_Element*** %23, align 8, !tbaa !65
  %25 = icmp eq %class.YAML_Element** %24, null
  br i1 %25, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %26

; <label>:26                                      ; preds = %21
  %27 = bitcast %class.YAML_Element** %24 to i8*
  call void @_ZdlPv(i8* %27) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %26, %21
  %28 = load i8*, i8** %16, align 8, !tbaa !32
  %29 = icmp eq i8* %28, %15
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %30

; <label>:30                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(i8* %28) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %30, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %31 = load i8*, i8** %11, align 8, !tbaa !32
  %32 = icmp eq i8* %31, %10
  br i1 %32, label %.body, label %33

; <label>:33                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  call void @_ZdlPv(i8* %31) #2
  br label %.body

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %34 = bitcast %class.YAML_Element** %element to i8**
  store i8* %7, i8** %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %36 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %38 = load %class.YAML_Element**, %class.YAML_Element*** %37, align 8, !tbaa !69
  %39 = icmp eq %class.YAML_Element** %36, %38
  %40 = bitcast i8* %7 to %class.YAML_Element*
  br i1 %39, label %46, label %41

; <label>:41                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %42 = ptrtoint i8* %7 to i64
  %43 = bitcast %class.YAML_Element** %36 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !12
  %44 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %45 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %44, i64 1
  store %class.YAML_Element** %45, %class.YAML_Element*** %35, align 8, !tbaa !68
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

; <label>:46                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %47 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %47, %class.YAML_Element** %36, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit unwind label %54

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %46, %41
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #2
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %51 = bitcast %union.anon* %50 to i8*
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %53

; <label>:53                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %53, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #2
  ret %class.YAML_Element* %40

; <label>:54                                      ; preds = %46, %0
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  br label %60

.body:                                            ; preds = %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %58 = extractvalue { i8*, i32 } %22, 0
  %59 = extractvalue { i8*, i32 } %22, 1
  call void @_ZdlPv(i8* nonnull %7) #20
  br label %60

; <label>:60                                      ; preds = %.body, %54
  %.01 = phi i8* [ %56, %54 ], [ %58, %.body ]
  %.0 = phi i32 [ %57, %54 ], [ %59, %.body ]
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %64 = bitcast %union.anon* %63 to i8*
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2, label %66

; <label>:66                                      ; preds = %60
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2: ; preds = %66, %60
  %67 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %.0, 1
  resume { i8*, i32 } %68
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i32 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 24)
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %3 = bitcast %"class.std::basic_ostream.base"* %2 to %"class.std::basic_ostream"*
  %4 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %3, i32 %value_arg)
          to label %5 unwind label %34

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %6)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %34

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %5
  %7 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %8 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %7, i64* %8, align 8, !tbaa !1
  %9 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i = inttoptr i64 %7 to i8*
  %10 = getelementptr i8, i8* %.cast.i.i, i64 -24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %1, i64 %12
  %14 = bitcast i8* %13 to i64*
  store i64 %9, i64* %14, align 8, !tbaa !1
  %15 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %16 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %17, align 8, !tbaa !1
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %21 = bitcast %union.anon* %20 to i8*
  %22 = icmp eq i8* %19, %21
  br i1 %22, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %23

; <label>:23                                      ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(i8* %19) #2
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %23, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %17, align 8, !tbaa !1
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %24) #2
  %25 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %25, i64* %8, align 8, !tbaa !1
  %26 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i = inttoptr i64 %25 to i8*
  %27 = getelementptr i8, i8* %.cast.i.i.i.i, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %1, i64 %29
  %31 = bitcast i8* %30 to i64*
  store i64 %26, i64* %31, align 8, !tbaa !1
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %32, align 8, !tbaa !70
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %33)
  call void @llvm.lifetime.end(i64 392, i8* nonnull %1) #2
  ret void

; <label>:34                                      ; preds = %5, %0
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %37 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %36, i64* %37, align 8, !tbaa !1
  %38 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i1 = inttoptr i64 %36 to i8*
  %39 = getelementptr i8, i8* %.cast.i.i1, i64 -24
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %1, i64 %41
  %43 = bitcast i8* %42 to i64*
  store i64 %38, i64* %43, align 8, !tbaa !1
  %44 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %45 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %44, i64* %45, align 8, !tbaa !1
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %46, align 8, !tbaa !1
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !32
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %50 = bitcast %union.anon* %49 to i8*
  %51 = icmp eq i8* %48, %50
  br i1 %51, label %53, label %52

; <label>:52                                      ; preds = %34
  call void @_ZdlPv(i8* %48) #2
  br label %53

; <label>:53                                      ; preds = %52, %34
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %46, align 8, !tbaa !1
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %54) #2
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %55, i64* %37, align 8, !tbaa !1
  %56 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i2 = inttoptr i64 %55 to i8*
  %57 = getelementptr i8, i8* %.cast.i.i.i.i2, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %1, i64 %59
  %61 = bitcast i8* %60 to i64*
  store i64 %56, i64* %61, align 8, !tbaa !1
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %62, align 8, !tbaa !70
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %63)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3 unwind label %64

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3: ; preds = %53
  resume { i8*, i32 } %35

; <label>:64                                      ; preds = %53
  %65 = landingpad { i8*, i32 }
          catch i8* null
  %66 = extractvalue { i8*, i32 } %65, 0
  call void @__clang_call_terminate(i8* %66) #18
  unreachable
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !30
  %4 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), i64 0)
  %5 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  call void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i64 %value_arg)
  %6 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = invoke noalias i8* @_Znwm(i64 88) #19
          to label %8 unwind label %54

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %7 to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %7, i64 16
  %11 = bitcast i8* %7 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !28
  %12 = getelementptr inbounds i8, i8* %7, i64 8
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %13, align 8, !tbaa !30
  store i8 0, i8* %10, align 1, !tbaa !11
  %14 = getelementptr inbounds i8, i8* %7, i64 32
  %15 = getelementptr inbounds i8, i8* %7, i64 48
  %16 = bitcast i8* %14 to i8**
  store i8* %15, i8** %16, align 8, !tbaa !28
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 0, i64* %18, align 8, !tbaa !30
  store i8 0, i8* %15, align 1, !tbaa !11
  %19 = getelementptr inbounds i8, i8* %7, i64 64
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %9, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %8
  %20 = bitcast i8* %14 to %"class.std::__cxx11::basic_string"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %20, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %21

; <label>:21                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %8
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = bitcast i8* %19 to %class.YAML_Element***
  %24 = load %class.YAML_Element**, %class.YAML_Element*** %23, align 8, !tbaa !65
  %25 = icmp eq %class.YAML_Element** %24, null
  br i1 %25, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %26

; <label>:26                                      ; preds = %21
  %27 = bitcast %class.YAML_Element** %24 to i8*
  call void @_ZdlPv(i8* %27) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %26, %21
  %28 = load i8*, i8** %16, align 8, !tbaa !32
  %29 = icmp eq i8* %28, %15
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %30

; <label>:30                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(i8* %28) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %30, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %31 = load i8*, i8** %11, align 8, !tbaa !32
  %32 = icmp eq i8* %31, %10
  br i1 %32, label %.body, label %33

; <label>:33                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  call void @_ZdlPv(i8* %31) #2
  br label %.body

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %34 = bitcast %class.YAML_Element** %element to i8**
  store i8* %7, i8** %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %36 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %38 = load %class.YAML_Element**, %class.YAML_Element*** %37, align 8, !tbaa !69
  %39 = icmp eq %class.YAML_Element** %36, %38
  %40 = bitcast i8* %7 to %class.YAML_Element*
  br i1 %39, label %46, label %41

; <label>:41                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %42 = ptrtoint i8* %7 to i64
  %43 = bitcast %class.YAML_Element** %36 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !12
  %44 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %45 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %44, i64 1
  store %class.YAML_Element** %45, %class.YAML_Element*** %35, align 8, !tbaa !68
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

; <label>:46                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %47 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %47, %class.YAML_Element** %36, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit unwind label %54

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %46, %41
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #2
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %51 = bitcast %union.anon* %50 to i8*
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %53

; <label>:53                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %53, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #2
  ret %class.YAML_Element* %40

; <label>:54                                      ; preds = %46, %0
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  br label %60

.body:                                            ; preds = %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %58 = extractvalue { i8*, i32 } %22, 0
  %59 = extractvalue { i8*, i32 } %22, 1
  call void @_ZdlPv(i8* nonnull %7) #20
  br label %60

; <label>:60                                      ; preds = %.body, %54
  %.01 = phi i8* [ %56, %54 ], [ %58, %.body ]
  %.0 = phi i32 [ %57, %54 ], [ %59, %.body ]
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %64 = bitcast %union.anon* %63 to i8*
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2, label %66

; <label>:66                                      ; preds = %60
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2: ; preds = %66, %60
  %67 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %.0, 1
  resume { i8*, i32 } %68
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 24)
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %3 = bitcast %"class.std::basic_ostream.base"* %2 to %"class.std::basic_ostream"*
  %4 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"* %3, i64 %value_arg)
          to label %_ZNSolsEx.exit unwind label %33

_ZNSolsEx.exit:                                   ; preds = %0
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %5)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %33

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSolsEx.exit
  %6 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %7 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %6, i64* %7, align 8, !tbaa !1
  %8 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i = inttoptr i64 %6 to i8*
  %9 = getelementptr i8, i8* %.cast.i.i, i64 -24
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = bitcast i8* %12 to i64*
  store i64 %8, i64* %13, align 8, !tbaa !1
  %14 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %15 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %22

; <label>:22                                      ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(i8* %18) #2
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %22, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %23) #2
  %24 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %24, i64* %7, align 8, !tbaa !1
  %25 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i = inttoptr i64 %24 to i8*
  %26 = getelementptr i8, i8* %.cast.i.i.i.i, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %1, i64 %28
  %30 = bitcast i8* %29 to i64*
  store i64 %25, i64* %30, align 8, !tbaa !1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %32)
  call void @llvm.lifetime.end(i64 392, i8* nonnull %1) #2
  ret void

; <label>:33                                      ; preds = %_ZNSolsEx.exit, %0
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %36 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %35, i64* %36, align 8, !tbaa !1
  %37 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i1 = inttoptr i64 %35 to i8*
  %38 = getelementptr i8, i8* %.cast.i.i1, i64 -24
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %1, i64 %40
  %42 = bitcast i8* %41 to i64*
  store i64 %37, i64* %42, align 8, !tbaa !1
  %43 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %44 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !1
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !32
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %49 = bitcast %union.anon* %48 to i8*
  %50 = icmp eq i8* %47, %49
  br i1 %50, label %52, label %51

; <label>:51                                      ; preds = %33
  call void @_ZdlPv(i8* %47) #2
  br label %52

; <label>:52                                      ; preds = %51, %33
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %53) #2
  %54 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %54, i64* %36, align 8, !tbaa !1
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i2 = inttoptr i64 %54 to i8*
  %56 = getelementptr i8, i8* %.cast.i.i.i.i2, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %1, i64 %58
  %60 = bitcast i8* %59 to i64*
  store i64 %55, i64* %60, align 8, !tbaa !1
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %61, align 8, !tbaa !70
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %62)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3 unwind label %63

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3: ; preds = %52
  resume { i8*, i32 } %34

; <label>:63                                      ; preds = %52
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #18
  unreachable
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !30
  %4 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), i64 0)
  %5 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  call void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i64 %value_arg)
  %6 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = invoke noalias i8* @_Znwm(i64 88) #19
          to label %8 unwind label %54

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %7 to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %7, i64 16
  %11 = bitcast i8* %7 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !28
  %12 = getelementptr inbounds i8, i8* %7, i64 8
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %13, align 8, !tbaa !30
  store i8 0, i8* %10, align 1, !tbaa !11
  %14 = getelementptr inbounds i8, i8* %7, i64 32
  %15 = getelementptr inbounds i8, i8* %7, i64 48
  %16 = bitcast i8* %14 to i8**
  store i8* %15, i8** %16, align 8, !tbaa !28
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 0, i64* %18, align 8, !tbaa !30
  store i8 0, i8* %15, align 1, !tbaa !11
  %19 = getelementptr inbounds i8, i8* %7, i64 64
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %9, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %8
  %20 = bitcast i8* %14 to %"class.std::__cxx11::basic_string"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %20, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %21

; <label>:21                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %8
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = bitcast i8* %19 to %class.YAML_Element***
  %24 = load %class.YAML_Element**, %class.YAML_Element*** %23, align 8, !tbaa !65
  %25 = icmp eq %class.YAML_Element** %24, null
  br i1 %25, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %26

; <label>:26                                      ; preds = %21
  %27 = bitcast %class.YAML_Element** %24 to i8*
  call void @_ZdlPv(i8* %27) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %26, %21
  %28 = load i8*, i8** %16, align 8, !tbaa !32
  %29 = icmp eq i8* %28, %15
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %30

; <label>:30                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(i8* %28) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %30, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %31 = load i8*, i8** %11, align 8, !tbaa !32
  %32 = icmp eq i8* %31, %10
  br i1 %32, label %.body, label %33

; <label>:33                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  call void @_ZdlPv(i8* %31) #2
  br label %.body

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %34 = bitcast %class.YAML_Element** %element to i8**
  store i8* %7, i8** %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %36 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %38 = load %class.YAML_Element**, %class.YAML_Element*** %37, align 8, !tbaa !69
  %39 = icmp eq %class.YAML_Element** %36, %38
  %40 = bitcast i8* %7 to %class.YAML_Element*
  br i1 %39, label %46, label %41

; <label>:41                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %42 = ptrtoint i8* %7 to i64
  %43 = bitcast %class.YAML_Element** %36 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !12
  %44 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !68
  %45 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %44, i64 1
  store %class.YAML_Element** %45, %class.YAML_Element*** %35, align 8, !tbaa !68
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

; <label>:46                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %47 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %47, %class.YAML_Element** %36, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit unwind label %54

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %46, %41
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #2
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %51 = bitcast %union.anon* %50 to i8*
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %53

; <label>:53                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %53, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #2
  ret %class.YAML_Element* %40

; <label>:54                                      ; preds = %46, %0
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  br label %60

.body:                                            ; preds = %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %58 = extractvalue { i8*, i32 } %22, 0
  %59 = extractvalue { i8*, i32 } %22, 1
  call void @_ZdlPv(i8* nonnull %7) #20
  br label %60

; <label>:60                                      ; preds = %.body, %54
  %.01 = phi i8* [ %56, %54 ], [ %58, %.body ]
  %.0 = phi i32 [ %57, %54 ], [ %59, %.body ]
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %converted_value, i64 0, i32 2
  %64 = bitcast %union.anon* %63 to i8*
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2, label %66

; <label>:66                                      ; preds = %60
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2: ; preds = %66, %60
  %67 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %.0, 1
  resume { i8*, i32 } %68
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 24)
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %3 = bitcast %"class.std::basic_ostream.base"* %2 to %"class.std::basic_ostream"*
  %4 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* %3, i64 %value_arg)
          to label %_ZNSolsEm.exit unwind label %33

_ZNSolsEm.exit:                                   ; preds = %0
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %5)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %33

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSolsEm.exit
  %6 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %7 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %6, i64* %7, align 8, !tbaa !1
  %8 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i = inttoptr i64 %6 to i8*
  %9 = getelementptr i8, i8* %.cast.i.i, i64 -24
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = bitcast i8* %12 to i64*
  store i64 %8, i64* %13, align 8, !tbaa !1
  %14 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %15 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %22

; <label>:22                                      ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(i8* %18) #2
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %22, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %16, align 8, !tbaa !1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %23) #2
  %24 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %24, i64* %7, align 8, !tbaa !1
  %25 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i = inttoptr i64 %24 to i8*
  %26 = getelementptr i8, i8* %.cast.i.i.i.i, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %1, i64 %28
  %30 = bitcast i8* %29 to i64*
  store i64 %25, i64* %30, align 8, !tbaa !1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %32)
  call void @llvm.lifetime.end(i64 392, i8* nonnull %1) #2
  ret void

; <label>:33                                      ; preds = %_ZNSolsEm.exit, %0
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = load i64, i64* bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %36 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i64*
  store i64 %35, i64* %36, align 8, !tbaa !1
  %37 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i64*), align 8
  %.cast.i.i1 = inttoptr i64 %35 to i8*
  %38 = getelementptr i8, i8* %.cast.i.i1, i64 -24
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %1, i64 %40
  %42 = bitcast i8* %41 to i64*
  store i64 %37, i64* %42, align 8, !tbaa !1
  %43 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i64*), align 8
  %44 = bitcast %"class.std::basic_ostream.base"* %2 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !1
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !32
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 2
  %49 = bitcast %union.anon* %48 to i8*
  %50 = icmp eq i8* %47, %49
  br i1 %50, label %52, label %51

; <label>:51                                      ; preds = %33
  call void @_ZdlPv(i8* %47) #2
  br label %52

; <label>:52                                      ; preds = %51, %33
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %45, align 8, !tbaa !1
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %53) #2
  %54 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  store i64 %54, i64* %36, align 8, !tbaa !1
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %.cast.i.i.i.i2 = inttoptr i64 %54 to i8*
  %56 = getelementptr i8, i8* %.cast.i.i.i.i2, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %1, i64 %58
  %60 = bitcast i8* %59 to i64*
  store i64 %55, i64* %60, align 8, !tbaa !1
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %61, align 8, !tbaa !70
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %62)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3 unwind label %63

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3: ; preds = %52
  resume { i8*, i32 } %34

; <label>:63                                      ; preds = %52
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #18
  unreachable
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* dereferenceable(32) %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !30
  %4 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), i64 0)
  %5 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = tail call noalias i8* @_Znwm(i64 88) #19
  %7 = bitcast i8* %6 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %6, i64 16
  %9 = bitcast i8* %6 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !28
  %10 = getelementptr inbounds i8, i8* %6, i64 8
  %11 = bitcast i8* %10 to i64*
  store i64 0, i64* %11, align 8, !tbaa !30
  store i8 0, i8* %8, align 1, !tbaa !11
  %12 = getelementptr inbounds i8, i8* %6, i64 32
  %13 = getelementptr inbounds i8, i8* %6, i64 48
  %14 = bitcast i8* %12 to i8**
  store i8* %13, i8** %14, align 8, !tbaa !28
  %15 = getelementptr inbounds i8, i8* %6, i64 40
  %16 = bitcast i8* %15 to i64*
  store i64 0, i64* %16, align 8, !tbaa !30
  store i8 0, i8* %13, align 1, !tbaa !11
  %17 = getelementptr inbounds i8, i8* %6, i64 64
  tail call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %7, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %0
  %18 = bitcast i8* %12 to %"class.std::__cxx11::basic_string"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %18, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %value_arg)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %19

; <label>:19                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %0
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = bitcast i8* %17 to %class.YAML_Element***
  %22 = load %class.YAML_Element**, %class.YAML_Element*** %21, align 8, !tbaa !65
  %23 = icmp eq %class.YAML_Element** %22, null
  br i1 %23, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %24

; <label>:24                                      ; preds = %19
  %25 = bitcast %class.YAML_Element** %22 to i8*
  tail call void @_ZdlPv(i8* %25) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %24, %19
  %26 = load i8*, i8** %14, align 8, !tbaa !32
  %27 = icmp eq i8* %26, %13
  br i1 %27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %28

; <label>:28                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(i8* %26) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %28, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %29 = load i8*, i8** %9, align 8, !tbaa !32
  %30 = icmp eq i8* %29, %8
  br i1 %30, label %.body, label %31

; <label>:31                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  tail call void @_ZdlPv(i8* %29) #2
  br label %.body

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %32 = bitcast %class.YAML_Element** %element to i8**
  store i8* %6, i8** %32, align 8, !tbaa !12
  %33 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %34 = load %class.YAML_Element**, %class.YAML_Element*** %33, align 8, !tbaa !68
  %35 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %36 = load %class.YAML_Element**, %class.YAML_Element*** %35, align 8, !tbaa !69
  %37 = icmp eq %class.YAML_Element** %34, %36
  %38 = bitcast i8* %6 to %class.YAML_Element*
  br i1 %37, label %44, label %39

; <label>:39                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %40 = ptrtoint i8* %6 to i64
  %41 = bitcast %class.YAML_Element** %34 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !12
  %42 = load %class.YAML_Element**, %class.YAML_Element*** %33, align 8, !tbaa !68
  %43 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %42, i64 1
  store %class.YAML_Element** %43, %class.YAML_Element*** %33, align 8, !tbaa !68
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

; <label>:44                                      ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %45 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %45, %class.YAML_Element** %34, %class.YAML_Element** nonnull dereferenceable(8) %element)
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %44, %39
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #2
  ret %class.YAML_Element* %38

.body:                                            ; preds = %31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  tail call void @_ZdlPv(i8* nonnull %6) #20
  resume { i8*, i32 } %20
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* nocapture readonly %this, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %key_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i.i = alloca i64, align 8
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %3 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %4 = bitcast %class.YAML_Element*** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !68
  %6 = bitcast %"class.std::vector"* %2 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !65
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %9 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  %12 = bitcast %union.anon* %10 to i8*
  %13 = bitcast i64* %__dnew.i.i.i.i.i to i8*
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %key_arg, i64 0, i32 1
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %key_arg, i64 0, i32 0, i32 0
  br label %19

; <label>:19                                      ; preds = %52, %.lr.ph
  %.in = phi i64 [ %7, %.lr.ph ], [ %55, %52 ]
  %i.05 = phi i64 [ 0, %.lr.ph ], [ %53, %52 ]
  %20 = inttoptr i64 %.in to %class.YAML_Element**
  %21 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %20, i64 %i.05
  %22 = load %class.YAML_Element*, %class.YAML_Element** %21, align 8, !tbaa !12
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !28, !alias.scope !72
  %23 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %22, i64 0, i32 0, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !32, !noalias !72
  %25 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %22, i64 0, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !30, !noalias !72
  %.not.i.i.i.i.i = icmp ne i8* %24, null
  %27 = icmp eq i64 %26, 0
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %27
  br i1 %or.cond.i.i.i.i.i, label %28, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %19
  call void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.59, i64 0, i64 0)) #17
  unreachable

; <label>:28                                      ; preds = %19
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !noalias !72
  store i64 %26, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !33, !noalias !72
  %29 = icmp ugt i64 %26, 15
  br i1 %29, label %.noexc1.i.i, label %._crit_edge.i.i.i.i.i

.noexc1.i.i:                                      ; preds = %28
  %30 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %1, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i.i, i64 0)
  store i8* %30, i8** %14, align 8, !tbaa !32, !alias.scope !72
  %31 = load i64, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !33, !noalias !72
  store i64 %31, i64* %15, align 8, !tbaa !33, !alias.scope !72
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc1.i.i, %28
  %32 = phi i8* [ %30, %.noexc1.i.i ], [ %12, %28 ]
  switch i64 %26, label %35 [
    i64 1, label %33
    i64 0, label %_ZN12YAML_Element6getKeyEv.exit
  ]

; <label>:33                                      ; preds = %._crit_edge.i.i.i.i.i
  %34 = load i8, i8* %24, align 1, !tbaa !11
  store i8 %34, i8* %32, align 1, !tbaa !11
  br label %_ZN12YAML_Element6getKeyEv.exit

; <label>:35                                      ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %24, i64 %26, i32 1, i1 false) #2
  br label %_ZN12YAML_Element6getKeyEv.exit

_ZN12YAML_Element6getKeyEv.exit:                  ; preds = %35, %33, %._crit_edge.i.i.i.i.i
  %36 = load i64, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !33, !noalias !72
  store i64 %36, i64* %16, align 8, !tbaa !30, !alias.scope !72
  %37 = load i8*, i8** %14, align 8, !tbaa !32, !alias.scope !72
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8 0, i8* %38, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !noalias !72
  %39 = load i64, i64* %16, align 8, !tbaa !30
  %40 = load i64, i64* %17, align 8, !tbaa !30
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit

; <label>:42                                      ; preds = %_ZN12YAML_Element6getKeyEv.exit
  %43 = icmp eq i64 %39, 0
  br i1 %43, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit, label %44

; <label>:44                                      ; preds = %42
  %45 = load i8*, i8** %18, align 8, !tbaa !32
  %46 = load i8*, i8** %14, align 8, !tbaa !32
  %47 = call i32 @memcmp(i8* %46, i8* %45, i64 %39) #2
  %phitmp.i = icmp eq i32 %47, 0
  br label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit

_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit: ; preds = %44, %42, %_ZN12YAML_Element6getKeyEv.exit
  %48 = phi i1 [ false, %_ZN12YAML_Element6getKeyEv.exit ], [ %phitmp.i, %44 ], [ true, %42 ]
  %49 = load i8*, i8** %14, align 8, !tbaa !32
  %50 = icmp eq i8* %49, %12
  br i1 %50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %51

; <label>:51                                      ; preds = %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %51, %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit
  br i1 %48, label %59, label %52

; <label>:52                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %53 = add i64 %i.05, 1
  %54 = load i64, i64* %4, align 8, !tbaa !68
  %55 = load i64, i64* %6, align 8, !tbaa !65
  %56 = sub i64 %54, %55
  %57 = ashr exact i64 %56, 3
  %58 = icmp ult i64 %53, %57
  br i1 %58, label %19, label %.loopexit.loopexit

; <label>:59                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %60 = load %class.YAML_Element**, %class.YAML_Element*** %9, align 8, !tbaa !65
  %61 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %60, i64 %i.05
  %62 = load %class.YAML_Element*, %class.YAML_Element** %61, align 8, !tbaa !12
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %52
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %59, %0
  %63 = phi %class.YAML_Element* [ %62, %59 ], [ null, %0 ], [ null, %.loopexit.loopexit ]
  ret %class.YAML_Element* %63
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: uwtable
define void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readonly %this, %"class.std::__cxx11::basic_string"* %space) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i = alloca i64, align 8
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space, %"class.std::__cxx11::basic_string"* dereferenceable(32) %8)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.60, i64 0, i64 0))
          to label %9 unwind label %49

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %10)
          to label %11 unwind label %53

; <label>:11                                      ; preds = %9
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.62, i64 0, i64 0))
          to label %12 unwind label %57

; <label>:12                                      ; preds = %11
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %16 = bitcast %union.anon* %15 to i8*
  %17 = icmp eq i8* %14, %16
  br i1 %17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %18

; <label>:18                                      ; preds = %12
  call void @_ZdlPv(i8* %14) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %18, %12
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %22 = bitcast %union.anon* %21 to i8*
  %23 = icmp eq i8* %20, %22
  br i1 %23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %24

; <label>:24                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(i8* %20) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !32
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %28 = bitcast %union.anon* %27 to i8*
  %29 = icmp eq i8* %26, %28
  br i1 %29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.preheader, label %30

; <label>:30                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  call void @_ZdlPv(i8* %26) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.preheader: ; preds = %30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %33 = bitcast %union.anon* %32 to i8*
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %4, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.63, i64 0, i64 0))
          to label %79 unwind label %.loopexit.split-lp.loopexit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.1
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %space, i64 0, i32 0, i32 0
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %space, i64 0, i32 1
  %38 = bitcast %union.anon* %34 to i8*
  %39 = bitcast i64* %__dnew.i.i.i.i to i8*
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %45 = bitcast %union.anon* %44 to i8*
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %48 = bitcast %union.anon* %47 to i8*
  br label %92

; <label>:49                                      ; preds = %0
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

; <label>:53                                      ; preds = %9
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

; <label>:57                                      ; preds = %11
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %64 = bitcast %union.anon* %63 to i8*
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %66

; <label>:66                                      ; preds = %57
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %66, %57, %53
  %.02 = phi i8* [ %55, %53 ], [ %59, %57 ], [ %59, %66 ]
  %.0 = phi i32 [ %56, %53 ], [ %60, %57 ], [ %60, %66 ]
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8, !tbaa !32
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %70 = bitcast %union.anon* %69 to i8*
  %71 = icmp eq i8* %68, %70
  br i1 %71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %72

; <label>:72                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  call void @_ZdlPv(i8* %68) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %49
  %.13 = phi i8* [ %51, %49 ], [ %.02, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %.02, %72 ]
  %.1 = phi i32 [ %52, %49 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %.0, %72 ]
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8, !tbaa !32
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %76 = bitcast %union.anon* %75 to i8*
  %77 = icmp eq i8* %74, %76
  br i1 %77, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %78

; <label>:78                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  call void @_ZdlPv(i8* %74) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

; <label>:79                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.preheader
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %space, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %79
  %80 = load i8*, i8** %31, align 8, !tbaa !32
  %81 = icmp eq i8* %80, %33
  br i1 %81, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %82

; <label>:82                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZdlPv(i8* %80) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %4, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.63, i64 0, i64 0))
          to label %157 unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.noexc1.i
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.preheader
  %lpad.loopexit25 = landingpad { i8*, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc.i
  %lpad.loopexit.split-lp26 = landingpad { i8*, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit25, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp ]
  %83 = extractvalue { i8*, i32 } %lpad.phi, 0
  %84 = extractvalue { i8*, i32 } %lpad.phi, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

; <label>:85                                      ; preds = %157, %79
  %86 = landingpad { i8*, i32 }
          cleanup
  %87 = extractvalue { i8*, i32 } %86, 0
  %88 = extractvalue { i8*, i32 } %86, 1
  %89 = load i8*, i8** %31, align 8, !tbaa !32
  %90 = icmp eq i8* %89, %33
  br i1 %90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %91

; <label>:91                                      ; preds = %85
  call void @_ZdlPv(i8* %89) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

; <label>:92                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %.lr.ph
  %.in = phi i64 [ %166, %.lr.ph ], [ %124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  %i1.032 = phi i64 [ 0, %.lr.ph ], [ %122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  %93 = inttoptr i64 %.in to %class.YAML_Element**
  %94 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %93, i64 %i1.032
  %95 = load %class.YAML_Element*, %class.YAML_Element** %94, align 8, !tbaa !12
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !28
  %96 = load i8*, i8** %36, align 8, !tbaa !32
  %97 = load i64, i64* %37, align 8, !tbaa !30
  %.not.i.i.i.i = icmp ne i8* %96, null
  %98 = icmp eq i64 %97, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %98
  br i1 %or.cond.i.i.i.i, label %99, label %.noexc.i

.noexc.i:                                         ; preds = %92
  invoke void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.59, i64 0, i64 0)) #17
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

; <label>:99                                      ; preds = %92
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  store i64 %97, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %100 = icmp ugt i64 %97, 15
  br i1 %100, label %.noexc1.i, label %._crit_edge.i.i.i.i

.noexc1.i:                                        ; preds = %99
  %101 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %7, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %.noexc1.i
  store i8* %101, i8** %40, align 8, !tbaa !32
  %102 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  store i64 %102, i64* %41, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc16, %99
  %103 = phi i8* [ %101, %.noexc16 ], [ %38, %99 ]
  switch i64 %97, label %106 [
    i64 1, label %104
    i64 0, label %107
  ]

; <label>:104                                     ; preds = %._crit_edge.i.i.i.i
  %105 = load i8, i8* %96, align 1, !tbaa !11
  store i8 %105, i8* %103, align 1, !tbaa !11
  br label %107

; <label>:106                                     ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %96, i64 %97, i32 1, i1 false) #2
  br label %107

; <label>:107                                     ; preds = %106, %104, %._crit_edge.i.i.i.i
  %108 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  store i64 %108, i64* %42, align 8, !tbaa !30
  %109 = load i8*, i8** %40, align 8, !tbaa !32
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8 0, i8* %110, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %39) #2
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nonnull sret %6, %class.YAML_Element* %95, %"class.std::__cxx11::basic_string"* nonnull %7)
          to label %111 unwind label %128

; <label>:111                                     ; preds = %107
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %5, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %6)
          to label %112 unwind label %132

; <label>:112                                     ; preds = %111
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19 unwind label %136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19: ; preds = %112
  %113 = load i8*, i8** %43, align 8, !tbaa !32
  %114 = icmp eq i8* %113, %45
  br i1 %114, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %115

; <label>:115                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19
  call void @_ZdlPv(i8* %113) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19
  %116 = load i8*, i8** %46, align 8, !tbaa !32
  %117 = icmp eq i8* %116, %48
  br i1 %117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %118

; <label>:118                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @_ZdlPv(i8* %116) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %119 = load i8*, i8** %40, align 8, !tbaa !32
  %120 = icmp eq i8* %119, %38
  br i1 %120, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %121

; <label>:121                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @_ZdlPv(i8* %119) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %122 = add i64 %i1.032, 1
  %123 = load i64, i64* %163, align 8, !tbaa !68
  %124 = load i64, i64* %165, align 8, !tbaa !65
  %125 = sub i64 %123, %124
  %126 = ashr exact i64 %125, 3
  %127 = icmp ult i64 %122, %126
  br i1 %127, label %92, label %._crit_edge.loopexit

; <label>:128                                     ; preds = %107
  %129 = landingpad { i8*, i32 }
          cleanup
  %130 = extractvalue { i8*, i32 } %129, 0
  %131 = extractvalue { i8*, i32 } %129, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

; <label>:132                                     ; preds = %111
  %133 = landingpad { i8*, i32 }
          cleanup
  %134 = extractvalue { i8*, i32 } %133, 0
  %135 = extractvalue { i8*, i32 } %133, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

; <label>:136                                     ; preds = %112
  %137 = landingpad { i8*, i32 }
          cleanup
  %138 = extractvalue { i8*, i32 } %137, 0
  %139 = extractvalue { i8*, i32 } %137, 1
  %140 = load i8*, i8** %43, align 8, !tbaa !32
  %141 = icmp eq i8* %140, %45
  br i1 %141, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %142

; <label>:142                                     ; preds = %136
  call void @_ZdlPv(i8* %140) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %142, %136, %132
  %.24 = phi i8* [ %134, %132 ], [ %138, %136 ], [ %138, %142 ]
  %.2 = phi i32 [ %135, %132 ], [ %139, %136 ], [ %139, %142 ]
  %143 = load i8*, i8** %46, align 8, !tbaa !32
  %144 = icmp eq i8* %143, %48
  br i1 %144, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %145

; <label>:145                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(i8* %143) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %128
  %.35 = phi i8* [ %130, %128 ], [ %.24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.24, %145 ]
  %.3 = phi i32 [ %131, %128 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.2, %145 ]
  %146 = load i8*, i8** %40, align 8, !tbaa !32
  %147 = icmp eq i8* %146, %38
  br i1 %147, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %148

; <label>:148                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @_ZdlPv(i8* %146) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.1, %._crit_edge.loopexit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %91, %85, %.loopexit.split-lp
  %.46 = phi i8* [ %83, %.loopexit.split-lp ], [ %87, %85 ], [ %87, %91 ], [ %.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.35, %148 ]
  %.4 = phi i32 [ %84, %.loopexit.split-lp ], [ %88, %85 ], [ %88, %91 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.3, %148 ]
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8, !tbaa !32
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %152 = bitcast %union.anon* %151 to i8*
  %153 = icmp eq i8* %150, %152
  br i1 %153, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %154

; <label>:154                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(i8* %150) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.57 = phi i8* [ %.13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %.13, %78 ], [ %.46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.46, %154 ]
  %.5 = phi i32 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %.1, %78 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.4, %154 ]
  %155 = insertvalue { i8*, i32 } undef, i8* %.57, 0
  %156 = insertvalue { i8*, i32 } %155, i32 %.5, 1
  resume { i8*, i32 } %156

; <label>:157                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %space, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.1 unwind label %85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.1: ; preds = %157
  %158 = load i8*, i8** %31, align 8, !tbaa !32
  %159 = icmp eq i8* %158, %33
  br i1 %159, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.1, label %160

; <label>:160                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.1
  call void @_ZdlPv(i8* %158) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.1: ; preds = %160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.1
  %161 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %162 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %163 = bitcast %class.YAML_Element*** %162 to i64*
  %164 = load i64, i64* %163, align 8, !tbaa !68
  %165 = bitcast %"class.std::vector"* %161 to i64*
  %166 = load i64, i64* %165, align 8, !tbaa !65
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %._crit_edge, label %.lr.ph
}

; Function Attrs: uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__lhs, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__rhs) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i = alloca i64, align 8
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !28
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__lhs, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__lhs, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !30
  %.not.i.i.i.i = icmp ne i8* %4, null
  %7 = icmp eq i64 %6, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %7
  %8 = bitcast %union.anon* %1 to i8*
  br i1 %or.cond.i.i.i.i, label %9, label %.noexc.i

.noexc.i:                                         ; preds = %0
  tail call void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.59, i64 0, i64 0)) #17
  unreachable

; <label>:9                                       ; preds = %0
  %10 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store i64 %6, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %11 = icmp ugt i64 %6, 15
  br i1 %11, label %.noexc1.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %9
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  br label %16

.noexc1.i:                                        ; preds = %9
  %12 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  store i8* %12, i8** %13, align 8, !tbaa !32
  %14 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, i32 0
  store i64 %14, i64* %15, align 8, !tbaa !33
  br label %16

; <label>:16                                      ; preds = %.noexc1.i, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i8** [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i.i ], [ %13, %.noexc1.i ]
  %17 = phi i8* [ %8, %._crit_edge.i.i.i.i ], [ %12, %.noexc1.i ]
  switch i64 %6, label %20 [
    i64 1, label %18
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

; <label>:18                                      ; preds = %16
  %19 = load i8, i8* %4, align 1, !tbaa !11
  store i8 %19, i8* %17, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

; <label>:20                                      ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %4, i64 %6, i32 1, i1 false) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %20, %18, %16
  %21 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 %21, i64* %22, align 8, !tbaa !30
  %23 = load i8*, i8** %.pre-phi.i.i.i.i, align 8, !tbaa !32
  %24 = getelementptr inbounds i8, i8* %23, i64 %21
  store i8 0, i8* %24, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__rhs, i64 0, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !32
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__rhs, i64 0, i32 1
  %28 = load i64, i64* %27, align 8, !tbaa !30
  %29 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i8* %26, i64 %28)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %30

; <label>:30                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !32
  %34 = icmp eq i8* %33, %8
  br i1 %34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %35

; <label>:35                                      ; preds = %30
  call void @_ZdlPv(i8* %33) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %35, %30
  resume { i8*, i32 } %31
}

declare dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"*, i8*, i64) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__lhs, i8* %__rhs) #16 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i = alloca i64, align 8
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !28
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__lhs, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__lhs, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !30
  %.not.i.i.i.i = icmp ne i8* %4, null
  %7 = icmp eq i64 %6, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %7
  %8 = bitcast %union.anon* %1 to i8*
  br i1 %or.cond.i.i.i.i, label %9, label %.noexc.i

.noexc.i:                                         ; preds = %0
  tail call void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.59, i64 0, i64 0)) #17
  unreachable

; <label>:9                                       ; preds = %0
  %10 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store i64 %6, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %11 = icmp ugt i64 %6, 15
  br i1 %11, label %.noexc1.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %9
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  br label %16

.noexc1.i:                                        ; preds = %9
  %12 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  store i8* %12, i8** %13, align 8, !tbaa !32
  %14 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, i32 0
  store i64 %14, i64* %15, align 8, !tbaa !33
  br label %16

; <label>:16                                      ; preds = %.noexc1.i, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i8** [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i.i ], [ %13, %.noexc1.i ]
  %17 = phi i8* [ %8, %._crit_edge.i.i.i.i ], [ %12, %.noexc1.i ]
  switch i64 %6, label %20 [
    i64 1, label %18
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

; <label>:18                                      ; preds = %16
  %19 = load i8, i8* %4, align 1, !tbaa !11
  store i8 %19, i8* %17, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

; <label>:20                                      ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %4, i64 %6, i32 1, i1 false) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %20, %18, %16
  %21 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !33
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 %21, i64* %22, align 8, !tbaa !30
  %23 = load i8*, i8** %.pre-phi.i.i.i.i, align 8, !tbaa !32
  %24 = getelementptr inbounds i8, i8* %23, i64 %21
  store i8 0, i8* %24, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %25 = call i64 @strlen(i8* %__rhs) #2
  %26 = load i64, i64* %22, align 8, !tbaa !30
  %27 = sub i64 9223372036854775807, %26
  %28 = icmp ult i64 %27, %25
  br i1 %28, label %29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

; <label>:29                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.61, i64 0, i64 0)) #17
          to label %.noexc unwind label %31

.noexc:                                           ; preds = %29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %30 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i8* %__rhs, i64 %25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %31

; <label>:31                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %29
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !32
  %35 = icmp eq i8* %34, %8
  br i1 %35, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %36

; <label>:36                                      ; preds = %31
  call void @_ZdlPv(i8* %34) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %36, %31
  resume { i8*, i32 } %32
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Doc.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.65)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.65, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(%class.YAML_Doc* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %miniApp_Name, %"class.std::__cxx11::basic_string"* dereferenceable(32) %miniApp_Version, %"class.std::__cxx11::basic_string"* dereferenceable(32) %destination_Directory, %"class.std::__cxx11::basic_string"* dereferenceable(32) %destination_FileName) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  tail call void @_ZN12YAML_ElementC2Ev(%class.YAML_Element* %1)
  %2 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  %3 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1, i32 1
  store i64 0, i64* %5, align 8, !tbaa !30
  %.cast.i = bitcast %union.anon* %3 to i8*
  store i8 0, i8* %.cast.i, align 1, !tbaa !11
  %6 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  %7 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2, i32 2
  %8 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %7, %union.anon** %8, align 8, !tbaa !28
  %9 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2, i32 1
  store i64 0, i64* %9, align 8, !tbaa !30
  %.cast.i5 = bitcast %union.anon* %7 to i8*
  store i8 0, i8* %.cast.i5, align 1, !tbaa !11
  %10 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  %11 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3, i32 2
  %12 = bitcast %"class.std::__cxx11::basic_string"* %10 to %union.anon**
  store %union.anon* %11, %union.anon** %12, align 8, !tbaa !28
  %13 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3, i32 1
  store i64 0, i64* %13, align 8, !tbaa !30
  %.cast.i6 = bitcast %union.anon* %11 to i8*
  store i8 0, i8* %.cast.i6, align 1, !tbaa !11
  %14 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  %15 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !28
  %17 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4, i32 1
  store i64 0, i64* %17, align 8, !tbaa !30
  %.cast.i8 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %.cast.i8, align 1, !tbaa !11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %miniApp_Name)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %6, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %miniApp_Version)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10 unwind label %18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %10, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %destination_Directory)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11 unwind label %18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %14, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %destination_FileName)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12 unwind label %18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11
  ret void

; <label>:18                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !32
  %22 = icmp eq i8* %21, %.cast.i8
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %23

; <label>:23                                      ; preds = %18
  tail call void @_ZdlPv(i8* %21) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %23, %18
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8, !tbaa !32
  %26 = icmp eq i8* %25, %.cast.i6
  br i1 %26, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %27

; <label>:27                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  tail call void @_ZdlPv(i8* %25) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !32
  %30 = icmp eq i8* %29, %.cast.i5
  br i1 %30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %31

; <label>:31                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  tail call void @_ZdlPv(i8* %29) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !32
  %34 = icmp eq i8* %33, %.cast.i
  br i1 %34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %35

; <label>:35                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  tail call void @_ZdlPv(i8* %33) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  invoke void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* nonnull %1)
          to label %36 unwind label %37

; <label>:36                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  resume { i8*, i32 } %19

; <label>:37                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %38 = landingpad { i8*, i32 }
          catch i8* null
  %39 = extractvalue { i8*, i32 } %38, 0
  tail call void @__clang_call_terminate(i8* %39) #18
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN12YAML_ElementC2Ev(%class.YAML_Element* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 2
  %3 = bitcast %class.YAML_Element* %this to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %4, align 8, !tbaa !30
  %.cast.i = bitcast %union.anon* %2 to i8*
  store i8 0, i8* %.cast.i, align 1, !tbaa !11
  %5 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %6 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !28
  %8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 1
  store i64 0, i64* %8, align 8, !tbaa !30
  %.cast.i3 = bitcast %union.anon* %6 to i8*
  store i8 0, i8* %.cast.i3, align 1, !tbaa !11
  %9 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %10 = bitcast %"class.std::vector"* %9 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false) #2
  %11 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %1, i64 0, i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.66, i64 0, i64 0), i64 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %0
  %12 = load i64, i64* %8, align 8, !tbaa !30
  %13 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %5, i64 0, i64 %12, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.66, i64 0, i64 0), i64 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5 unwind label %14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  ret void

; <label>:14                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %9, i64 0, i32 0, i32 0, i32 0
  %17 = load %class.YAML_Element**, %class.YAML_Element*** %16, align 8, !tbaa !65
  %18 = icmp eq %class.YAML_Element** %17, null
  br i1 %18, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %19

; <label>:19                                      ; preds = %14
  %20 = bitcast %class.YAML_Element** %17 to i8*
  tail call void @_ZdlPv(i8* %20) #2
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %19, %14
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !32
  %23 = icmp eq i8* %22, %.cast.i3
  br i1 %23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %24

; <label>:24                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  tail call void @_ZdlPv(i8* %22) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %24, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  %25 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !32
  %27 = icmp eq i8* %26, %.cast.i
  br i1 %27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %28

; <label>:28                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  tail call void @_ZdlPv(i8* %26) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  resume { i8*, i32 } %15
}

; Function Attrs: uwtable
define void @_ZN8YAML_DocD2Ev(%class.YAML_Doc* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8, !tbaa !32
  %3 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4, i32 2
  %4 = bitcast %union.anon* %3 to i8*
  %5 = icmp eq i8* %2, %4
  br i1 %5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %6

; <label>:6                                       ; preds = %0
  tail call void @_ZdlPv(i8* %2) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %6, %0
  %7 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3, i32 2
  %10 = bitcast %union.anon* %9 to i8*
  %11 = icmp eq i8* %8, %10
  br i1 %11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %12

; <label>:12                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(i8* %8) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %13 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2, i32 2
  %16 = bitcast %union.anon* %15 to i8*
  %17 = icmp eq i8* %14, %16
  br i1 %17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %18

; <label>:18                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  tail call void @_ZdlPv(i8* %14) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %19 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1, i32 2
  %22 = bitcast %union.anon* %21 to i8*
  %23 = icmp eq i8* %20, %22
  br i1 %23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %24

; <label>:24                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  tail call void @_ZdlPv(i8* %20) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %25 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  tail call void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* %25)
  ret void
}

; Function Attrs: uwtable
define void @_ZN8YAML_Doc12generateYAMLEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Doc* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew.i.i.i.i56 = alloca i64, align 8
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %rawtime = alloca i64, align 8
  %sdate = alloca [25 x i8], align 16
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %mkdir_cmd = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %myfile = alloca %"class.std::basic_ofstream", align 8
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %20 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %19, %union.anon** %20, align 8, !tbaa !28
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 0, i64* %21, align 8, !tbaa !30
  %.cast.i = bitcast %union.anon* %19 to i8*
  store i8 0, i8* %.cast.i, align 8, !tbaa !11
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i64 0, i64 0))
          to label %22 unwind label %84

; <label>:22                                      ; preds = %0
  %23 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %23)
          to label %24 unwind label %88

; <label>:24                                      ; preds = %22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %2, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.70, i64 0, i64 0))
          to label %25 unwind label %92

; <label>:25                                      ; preds = %24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %25
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !32
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %29 = bitcast %union.anon* %28 to i8*
  %30 = icmp eq i8* %27, %29
  br i1 %30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %31

; <label>:31                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZdlPv(i8* %27) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %35 = bitcast %union.anon* %34 to i8*
  %36 = icmp eq i8* %33, %35
  br i1 %36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %37

; <label>:37                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(i8* %33) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !32
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %41 = bitcast %union.anon* %40 to i8*
  %42 = icmp eq i8* %39, %41
  br i1 %42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %43

; <label>:43                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @_ZdlPv(i8* %39) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %6, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.71, i64 0, i64 0))
          to label %44 unwind label %84

; <label>:44                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %45 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %45)
          to label %46 unwind label %118

; <label>:46                                      ; preds = %44
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %4, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.70, i64 0, i64 0))
          to label %47 unwind label %122

; <label>:47                                      ; preds = %46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23 unwind label %126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23: ; preds = %47
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %51 = bitcast %union.anon* %50 to i8*
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %53

; <label>:53                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23
  call void @_ZdlPv(i8* %49) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !32
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %57 = bitcast %union.anon* %56 to i8*
  %58 = icmp eq i8* %55, %57
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %59

; <label>:59                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @_ZdlPv(i8* %55) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8, !tbaa !32
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %63 = bitcast %union.anon* %62 to i8*
  %64 = icmp eq i8* %61, %63
  br i1 %64, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.preheader, label %65

; <label>:65                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  call void @_ZdlPv(i8* %61) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.preheader: ; preds = %65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %66 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2
  %67 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2, i32 0, i32 0, i32 1
  %68 = bitcast %class.YAML_Element*** %67 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !68
  %70 = bitcast %"class.std::vector"* %66 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !65
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge, label %._crit_edge.i.i.i.i.lr.ph

._crit_edge.i.i.i.i.lr.ph:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.preheader
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %74 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  %75 = bitcast %union.anon* %73 to i8*
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %79 = bitcast %union.anon* %78 to i8*
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %82 = bitcast %union.anon* %81 to i8*
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  br label %._crit_edge.i.i.i.i

; <label>:84                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %0
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  %87 = extractvalue { i8*, i32 } %85, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

; <label>:88                                      ; preds = %22
  %89 = landingpad { i8*, i32 }
          cleanup
  %90 = extractvalue { i8*, i32 } %89, 0
  %91 = extractvalue { i8*, i32 } %89, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

; <label>:92                                      ; preds = %24
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = extractvalue { i8*, i32 } %93, 0
  %95 = extractvalue { i8*, i32 } %93, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

; <label>:96                                      ; preds = %25
  %97 = landingpad { i8*, i32 }
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  %99 = extractvalue { i8*, i32 } %97, 1
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !32
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %103 = bitcast %union.anon* %102 to i8*
  %104 = icmp eq i8* %101, %103
  br i1 %104, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %105

; <label>:105                                     ; preds = %96
  call void @_ZdlPv(i8* %101) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %105, %96, %92
  %.01 = phi i8* [ %94, %92 ], [ %98, %96 ], [ %98, %105 ]
  %.0 = phi i32 [ %95, %92 ], [ %99, %96 ], [ %99, %105 ]
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8, !tbaa !32
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %109 = bitcast %union.anon* %108 to i8*
  %110 = icmp eq i8* %107, %109
  br i1 %110, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %111

; <label>:111                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @_ZdlPv(i8* %107) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %88
  %.16 = phi i8* [ %90, %88 ], [ %.01, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.01, %111 ]
  %.1 = phi i32 [ %91, %88 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.0, %111 ]
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !32
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %115 = bitcast %union.anon* %114 to i8*
  %116 = icmp eq i8* %113, %115
  br i1 %116, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %117

; <label>:117                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @_ZdlPv(i8* %113) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

; <label>:118                                     ; preds = %44
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  %121 = extractvalue { i8*, i32 } %119, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

; <label>:122                                     ; preds = %46
  %123 = landingpad { i8*, i32 }
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  %125 = extractvalue { i8*, i32 } %123, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

; <label>:126                                     ; preds = %47
  %127 = landingpad { i8*, i32 }
          cleanup
  %128 = extractvalue { i8*, i32 } %127, 0
  %129 = extractvalue { i8*, i32 } %127, 1
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8, !tbaa !32
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %133 = bitcast %union.anon* %132 to i8*
  %134 = icmp eq i8* %131, %133
  br i1 %134, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %135

; <label>:135                                     ; preds = %126
  call void @_ZdlPv(i8* %131) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %135, %126, %122
  %.27 = phi i8* [ %124, %122 ], [ %128, %126 ], [ %128, %135 ]
  %.2 = phi i32 [ %125, %122 ], [ %129, %126 ], [ %129, %135 ]
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8, !tbaa !32
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %139 = bitcast %union.anon* %138 to i8*
  %140 = icmp eq i8* %137, %139
  br i1 %140, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %141

; <label>:141                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @_ZdlPv(i8* %137) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %118
  %.38 = phi i8* [ %120, %118 ], [ %.27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.27, %141 ]
  %.3 = phi i32 [ %121, %118 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.2, %141 ]
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8, !tbaa !32
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %145 = bitcast %union.anon* %144 to i8*
  %146 = icmp eq i8* %143, %145
  br i1 %146, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %147

; <label>:147                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  call void @_ZdlPv(i8* %143) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %._crit_edge.i.i.i.i.lr.ph
  %.in = phi i64 [ %71, %._crit_edge.i.i.i.i.lr.ph ], [ %164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.099 = phi i64 [ 0, %._crit_edge.i.i.i.i.lr.ph ], [ %162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %148 = inttoptr i64 %.in to %class.YAML_Element**
  %149 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %148, i64 %i.099
  %150 = load %class.YAML_Element*, %class.YAML_Element** %149, align 8, !tbaa !12
  store %union.anon* %73, %union.anon** %74, align 8, !tbaa !28
  store i64 0, i64* %76, align 8, !tbaa !30
  store i8 0, i8* %75, align 8, !tbaa !11
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nonnull sret %8, %class.YAML_Element* %150, %"class.std::__cxx11::basic_string"* nonnull %9)
          to label %151 unwind label %168

; <label>:151                                     ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %8)
          to label %152 unwind label %172

; <label>:152                                     ; preds = %151
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38 unwind label %176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38: ; preds = %152
  %153 = load i8*, i8** %77, align 8, !tbaa !32
  %154 = icmp eq i8* %153, %79
  br i1 %154, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %155

; <label>:155                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38
  call void @_ZdlPv(i8* %153) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38
  %156 = load i8*, i8** %80, align 8, !tbaa !32
  %157 = icmp eq i8* %156, %82
  br i1 %157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %158

; <label>:158                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  call void @_ZdlPv(i8* %156) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %159 = load i8*, i8** %83, align 8, !tbaa !32
  %160 = icmp eq i8* %159, %75
  br i1 %160, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %161

; <label>:161                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @_ZdlPv(i8* %159) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %162 = add i64 %i.099, 1
  %163 = load i64, i64* %68, align 8, !tbaa !68
  %164 = load i64, i64* %70, align 8, !tbaa !65
  %165 = sub i64 %163, %164
  %166 = ashr exact i64 %165, 3
  %167 = icmp ult i64 %162, %166
  br i1 %167, label %._crit_edge.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge.loopexit

; <label>:168                                     ; preds = %._crit_edge.i.i.i.i
  %169 = landingpad { i8*, i32 }
          cleanup
  %170 = extractvalue { i8*, i32 } %169, 0
  %171 = extractvalue { i8*, i32 } %169, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

; <label>:172                                     ; preds = %151
  %173 = landingpad { i8*, i32 }
          cleanup
  %174 = extractvalue { i8*, i32 } %173, 0
  %175 = extractvalue { i8*, i32 } %173, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

; <label>:176                                     ; preds = %152
  %177 = landingpad { i8*, i32 }
          cleanup
  %178 = extractvalue { i8*, i32 } %177, 0
  %179 = extractvalue { i8*, i32 } %177, 1
  %180 = load i8*, i8** %77, align 8, !tbaa !32
  %181 = icmp eq i8* %180, %79
  br i1 %181, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %182

; <label>:182                                     ; preds = %176
  call void @_ZdlPv(i8* %180) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %182, %176, %172
  %.49 = phi i8* [ %174, %172 ], [ %178, %176 ], [ %178, %182 ]
  %.4 = phi i32 [ %175, %172 ], [ %179, %176 ], [ %179, %182 ]
  %183 = load i8*, i8** %80, align 8, !tbaa !32
  %184 = icmp eq i8* %183, %82
  br i1 %184, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %185

; <label>:185                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  call void @_ZdlPv(i8* %183) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %168
  %.510 = phi i8* [ %170, %168 ], [ %.49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.49, %185 ]
  %.5 = phi i32 [ %171, %168 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.4, %185 ]
  %186 = load i8*, i8** %83, align 8, !tbaa !32
  %187 = icmp eq i8* %186, %75
  br i1 %187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %188

; <label>:188                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @_ZdlPv(i8* %186) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.preheader
  %189 = bitcast i64* %rawtime to i8*
  call void @llvm.lifetime.start(i64 8, i8* %189) #2
  %190 = call i64 @time(i64* nonnull %rawtime) #2
  %191 = call %struct.tm* @localtime(i64* nonnull %rawtime) #2
  %192 = getelementptr inbounds [25 x i8], [25 x i8]* %sdate, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* %192) #2
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 5
  %194 = load i32, i32* %193, align 4, !tbaa !75
  %195 = add nsw i32 %194, 1900
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 4
  %197 = load i32, i32* %196, align 8, !tbaa !77
  %198 = add nsw i32 %197, 1
  %199 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 3
  %200 = load i32, i32* %199, align 4, !tbaa !78
  %201 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 2
  %202 = load i32, i32* %201, align 8, !tbaa !79
  %203 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 1
  %204 = load i32, i32* %203, align 4, !tbaa !80
  %205 = getelementptr inbounds %struct.tm, %struct.tm* %191, i64 0, i32 0
  %206 = load i32, i32* %205, align 8, !tbaa !81
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4.72, i64 0, i64 0), i32 %195, i32 %198, i32 %200, i32 %202, i32 %204, i32 %206) #2
  %208 = bitcast %"class.std::__cxx11::basic_string"* %filename to i8*
  call void @llvm.lifetime.start(i64 32, i8* %208) #2
  %209 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %filename, i64 0, i32 2
  %210 = bitcast %"class.std::__cxx11::basic_string"* %filename to %union.anon**
  store %union.anon* %209, %union.anon** %210, align 8, !tbaa !28
  %211 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %filename, i64 0, i32 1
  store i64 0, i64* %211, align 8, !tbaa !30
  %.cast.i28 = bitcast %union.anon* %209 to i8*
  store i8 0, i8* %.cast.i28, align 8, !tbaa !11
  %212 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  %213 = invoke i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull %212, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.66, i64 0, i64 0))
          to label %214 unwind label %238

; <label>:214                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %216, label %272

; <label>:216                                     ; preds = %214
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %12, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %23, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.73, i64 0, i64 0))
          to label %217 unwind label %238

; <label>:217                                     ; preds = %216
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %11, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %12, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %45)
          to label %218 unwind label %242

; <label>:218                                     ; preds = %217
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %10, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.74, i64 0, i64 0))
          to label %219 unwind label %246

; <label>:219                                     ; preds = %218
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit47 unwind label %250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit47: ; preds = %219
  %220 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8, !tbaa !32
  %222 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2
  %223 = bitcast %union.anon* %222 to i8*
  %224 = icmp eq i8* %221, %223
  br i1 %224, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %225

; <label>:225                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit47
  call void @_ZdlPv(i8* %221) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit47
  %226 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8, !tbaa !32
  %228 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %229 = bitcast %union.anon* %228 to i8*
  %230 = icmp eq i8* %227, %229
  br i1 %230, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %231

; <label>:231                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @_ZdlPv(i8* %227) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %232 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8, !tbaa !32
  %234 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2
  %235 = bitcast %union.anon* %234 to i8*
  %236 = icmp eq i8* %233, %235
  br i1 %236, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %237

; <label>:237                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @_ZdlPv(i8* %233) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

; <label>:238                                     ; preds = %462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %406, %319, %315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %272, %216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26._crit_edge
  %239 = landingpad { i8*, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %464, %238
  %eh.lpad-body82 = phi { i8*, i32 } [ %239, %238 ], [ %465, %464 ]
  %240 = extractvalue { i8*, i32 } %eh.lpad-body82, 0
  %241 = extractvalue { i8*, i32 } %eh.lpad-body82, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

; <label>:242                                     ; preds = %217
  %243 = landingpad { i8*, i32 }
          cleanup
  %244 = extractvalue { i8*, i32 } %243, 0
  %245 = extractvalue { i8*, i32 } %243, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

; <label>:246                                     ; preds = %218
  %247 = landingpad { i8*, i32 }
          cleanup
  %248 = extractvalue { i8*, i32 } %247, 0
  %249 = extractvalue { i8*, i32 } %247, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

; <label>:250                                     ; preds = %219
  %251 = landingpad { i8*, i32 }
          cleanup
  %252 = extractvalue { i8*, i32 } %251, 0
  %253 = extractvalue { i8*, i32 } %251, 1
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8, !tbaa !32
  %256 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2
  %257 = bitcast %union.anon* %256 to i8*
  %258 = icmp eq i8* %255, %257
  br i1 %258, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %259

; <label>:259                                     ; preds = %250
  call void @_ZdlPv(i8* %255) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %259, %250, %246
  %.712 = phi i8* [ %248, %246 ], [ %252, %250 ], [ %252, %259 ]
  %.7 = phi i32 [ %249, %246 ], [ %253, %250 ], [ %253, %259 ]
  %260 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8, !tbaa !32
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %263 = bitcast %union.anon* %262 to i8*
  %264 = icmp eq i8* %261, %263
  br i1 %264, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %265

; <label>:265                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(i8* %261) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %242
  %.813 = phi i8* [ %244, %242 ], [ %.712, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.712, %265 ]
  %.8 = phi i32 [ %245, %242 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.7, %265 ]
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8, !tbaa !32
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2
  %269 = bitcast %union.anon* %268 to i8*
  %270 = icmp eq i8* %267, %269
  br i1 %270, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %271

; <label>:271                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @_ZdlPv(i8* %267) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

; <label>:272                                     ; preds = %214
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %212)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 unwind label %238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %272, %237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2
  %274 = bitcast %"class.std::__cxx11::basic_string"* %15 to %union.anon**
  store %union.anon* %273, %union.anon** %274, align 8, !tbaa !28
  %275 = bitcast %union.anon* %273 to i8*
  %276 = call i64 @strlen(i8* nonnull %192) #2
  %277 = bitcast i64* %__dnew.i.i.i.i56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277) #2
  store i64 %276, i64* %__dnew.i.i.i.i56, align 8, !tbaa !33
  %278 = icmp ugt i64 %276, 15
  br i1 %278, label %.noexc1.i59, label %._crit_edge.i.i.i.i58

._crit_edge.i.i.i.i58:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.phi.trans.insert.i.i.i.i57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  br label %283

.noexc1.i59:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %279 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %15, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i56, i64 0)
          to label %.noexc61 unwind label %345

.noexc61:                                         ; preds = %.noexc1.i59
  %280 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  store i8* %279, i8** %280, align 8, !tbaa !32
  %281 = load i64, i64* %__dnew.i.i.i.i56, align 8, !tbaa !33
  %282 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2, i32 0
  store i64 %281, i64* %282, align 8, !tbaa !33
  br label %283

; <label>:283                                     ; preds = %.noexc61, %._crit_edge.i.i.i.i58
  %.pre-phi.i.i.i.i60 = phi i8** [ %.phi.trans.insert.i.i.i.i57, %._crit_edge.i.i.i.i58 ], [ %280, %.noexc61 ]
  %284 = phi i8* [ %275, %._crit_edge.i.i.i.i58 ], [ %279, %.noexc61 ]
  switch i64 %276, label %287 [
    i64 1, label %285
    i64 0, label %288
  ]

; <label>:285                                     ; preds = %283
  %286 = load i8, i8* %192, align 16, !tbaa !11
  store i8 %286, i8* %284, align 1, !tbaa !11
  br label %288

; <label>:287                                     ; preds = %283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %284, i8* nonnull %192, i64 %276, i32 1, i1 false) #2
  br label %288

; <label>:288                                     ; preds = %287, %285, %283
  %289 = load i64, i64* %__dnew.i.i.i.i56, align 8, !tbaa !33
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 1
  store i64 %289, i64* %290, align 8, !tbaa !30
  %291 = load i8*, i8** %.pre-phi.i.i.i.i60, align 8, !tbaa !32
  %292 = getelementptr inbounds i8, i8* %291, i64 %289
  store i8 0, i8* %292, align 1, !tbaa !11
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %14, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %15)
          to label %293 unwind label %349

; <label>:293                                     ; preds = %288
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %13, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %14, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.75, i64 0, i64 0))
          to label %294 unwind label %353

; <label>:294                                     ; preds = %293
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit64 unwind label %357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit64: ; preds = %294
  %295 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8, !tbaa !32
  %297 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2
  %298 = bitcast %union.anon* %297 to i8*
  %299 = icmp eq i8* %296, %298
  br i1 %299, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %300

; <label>:300                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit64
  call void @_ZdlPv(i8* %296) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit64
  %301 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8, !tbaa !32
  %303 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2
  %304 = bitcast %union.anon* %303 to i8*
  %305 = icmp eq i8* %302, %304
  br i1 %305, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %306

; <label>:306                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @_ZdlPv(i8* %302) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8, !tbaa !32
  %309 = icmp eq i8* %308, %275
  br i1 %309, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %310

; <label>:310                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZdlPv(i8* %308) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %311 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  %312 = invoke i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull %311, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.66, i64 0, i64 0))
          to label %313 unwind label %238

; <label>:313                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %314 = icmp eq i32 %312, 0
  br i1 %314, label %406, label %315

; <label>:315                                     ; preds = %313
  %316 = invoke i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull %311, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.76, i64 0, i64 0))
          to label %317 unwind label %238

; <label>:317                                     ; preds = %315
  %318 = icmp eq i32 %316, 0
  br i1 %318, label %406, label %319

; <label>:319                                     ; preds = %317
  %320 = bitcast %"class.std::__cxx11::basic_string"* %mkdir_cmd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %320) #2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret %mkdir_cmd, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.77, i64 0, i64 0), %"class.std::__cxx11::basic_string"* dereferenceable(32) %311)
          to label %321 unwind label %238

; <label>:321                                     ; preds = %319
  %322 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %mkdir_cmd, i64 0, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8, !tbaa !32
  %324 = invoke i32 @system(i8* %323)
          to label %325 unwind label %377

; <label>:325                                     ; preds = %321
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %311, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0))
          to label %326 unwind label %377

; <label>:326                                     ; preds = %325
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %16, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %212)
          to label %327 unwind label %381

; <label>:327                                     ; preds = %326
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %16)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit72 unwind label %385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit72: ; preds = %327
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8, !tbaa !32
  %330 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2
  %331 = bitcast %union.anon* %330 to i8*
  %332 = icmp eq i8* %329, %331
  br i1 %332, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %333

; <label>:333                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit72
  call void @_ZdlPv(i8* %329) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit72
  %334 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8, !tbaa !32
  %336 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 2
  %337 = bitcast %union.anon* %336 to i8*
  %338 = icmp eq i8* %335, %337
  br i1 %338, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %339

; <label>:339                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  call void @_ZdlPv(i8* %335) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %340 = load i8*, i8** %322, align 8, !tbaa !32
  %341 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %mkdir_cmd, i64 0, i32 2
  %342 = bitcast %union.anon* %341 to i8*
  %343 = icmp eq i8* %340, %342
  br i1 %343, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %344

; <label>:344                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @_ZdlPv(i8* %340) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.lifetime.end(i64 32, i8* nonnull %320) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

; <label>:345                                     ; preds = %.noexc1.i59
  %346 = landingpad { i8*, i32 }
          cleanup
  %347 = extractvalue { i8*, i32 } %346, 0
  %348 = extractvalue { i8*, i32 } %346, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

; <label>:349                                     ; preds = %288
  %350 = landingpad { i8*, i32 }
          cleanup
  %351 = extractvalue { i8*, i32 } %350, 0
  %352 = extractvalue { i8*, i32 } %350, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

; <label>:353                                     ; preds = %293
  %354 = landingpad { i8*, i32 }
          cleanup
  %355 = extractvalue { i8*, i32 } %354, 0
  %356 = extractvalue { i8*, i32 } %354, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

; <label>:357                                     ; preds = %294
  %358 = landingpad { i8*, i32 }
          cleanup
  %359 = extractvalue { i8*, i32 } %358, 0
  %360 = extractvalue { i8*, i32 } %358, 1
  %361 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8, !tbaa !32
  %363 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2
  %364 = bitcast %union.anon* %363 to i8*
  %365 = icmp eq i8* %362, %364
  br i1 %365, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %366

; <label>:366                                     ; preds = %357
  call void @_ZdlPv(i8* %362) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %366, %357, %353
  %.914 = phi i8* [ %355, %353 ], [ %359, %357 ], [ %359, %366 ]
  %.9 = phi i32 [ %356, %353 ], [ %360, %357 ], [ %360, %366 ]
  %367 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8, !tbaa !32
  %369 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2
  %370 = bitcast %union.anon* %369 to i8*
  %371 = icmp eq i8* %368, %370
  br i1 %371, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %372

; <label>:372                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @_ZdlPv(i8* %368) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %349
  %.1015 = phi i8* [ %351, %349 ], [ %.914, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.914, %372 ]
  %.10 = phi i32 [ %352, %349 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.9, %372 ]
  %373 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8, !tbaa !32
  %375 = icmp eq i8* %374, %275
  br i1 %375, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %376

; <label>:376                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  call void @_ZdlPv(i8* %374) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

; <label>:377                                     ; preds = %325, %321
  %378 = landingpad { i8*, i32 }
          cleanup
  %379 = extractvalue { i8*, i32 } %378, 0
  %380 = extractvalue { i8*, i32 } %378, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

; <label>:381                                     ; preds = %326
  %382 = landingpad { i8*, i32 }
          cleanup
  %383 = extractvalue { i8*, i32 } %382, 0
  %384 = extractvalue { i8*, i32 } %382, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

; <label>:385                                     ; preds = %327
  %386 = landingpad { i8*, i32 }
          cleanup
  %387 = extractvalue { i8*, i32 } %386, 0
  %388 = extractvalue { i8*, i32 } %386, 1
  %389 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8, !tbaa !32
  %391 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2
  %392 = bitcast %union.anon* %391 to i8*
  %393 = icmp eq i8* %390, %392
  br i1 %393, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %394

; <label>:394                                     ; preds = %385
  call void @_ZdlPv(i8* %390) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %394, %385, %381
  %.1217 = phi i8* [ %383, %381 ], [ %387, %385 ], [ %387, %394 ]
  %.12 = phi i32 [ %384, %381 ], [ %388, %385 ], [ %388, %394 ]
  %395 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8, !tbaa !32
  %397 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 2
  %398 = bitcast %union.anon* %397 to i8*
  %399 = icmp eq i8* %396, %398
  br i1 %399, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %400

; <label>:400                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(i8* %396) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %377
  %.1318 = phi i8* [ %379, %377 ], [ %.1217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.1217, %400 ]
  %.13 = phi i32 [ %380, %377 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.12, %400 ]
  %401 = load i8*, i8** %322, align 8, !tbaa !32
  %402 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %mkdir_cmd, i64 0, i32 2
  %403 = bitcast %union.anon* %402 to i8*
  %404 = icmp eq i8* %401, %403
  br i1 %404, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %405

; <label>:405                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @_ZdlPv(i8* %401) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

; <label>:406                                     ; preds = %317, %313
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret %18, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11.80, i64 0, i64 0), %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %filename)
          to label %407 unwind label %238

; <label>:407                                     ; preds = %406
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit88 unwind label %414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit88: ; preds = %407
  %408 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8, !tbaa !32
  %410 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 2
  %411 = bitcast %union.anon* %410 to i8*
  %412 = icmp eq i8* %409, %411
  br i1 %412, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %413

; <label>:413                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit88
  call void @_ZdlPv(i8* %409) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

; <label>:414                                     ; preds = %407
  %415 = landingpad { i8*, i32 }
          cleanup
  %416 = extractvalue { i8*, i32 } %415, 0
  %417 = extractvalue { i8*, i32 } %415, 1
  %418 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8, !tbaa !32
  %420 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 2
  %421 = bitcast %union.anon* %420 to i8*
  %422 = icmp eq i8* %419, %421
  br i1 %422, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %423

; <label>:423                                     ; preds = %414
  call void @_ZdlPv(i8* %419) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %424 = bitcast %"class.std::basic_ofstream"* %myfile to i8*
  call void @llvm.lifetime.start(i64 512, i8* %424) #2
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull %myfile)
          to label %425 unwind label %238

; <label>:425                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %426 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %filename, i64 0, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8, !tbaa !32
  %428 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 1
  %429 = invoke %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"* %428, i8* %427, i32 48)
          to label %.noexc91 unwind label %470

.noexc91:                                         ; preds = %425
  %430 = icmp eq %"class.std::basic_filebuf"* %429, null
  %431 = bitcast %"class.std::basic_ofstream"* %myfile to i8**
  %432 = load i8*, i8** %431, align 8, !tbaa !1
  %433 = getelementptr i8, i8* %432, i64 -24
  %434 = bitcast i8* %433 to i64*
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds i8, i8* %424, i64 %435
  %437 = bitcast i8* %436 to %"class.std::basic_ios"*
  br i1 %430, label %438, label %443

; <label>:438                                     ; preds = %.noexc91
  %439 = getelementptr inbounds i8, i8* %436, i64 32
  %440 = bitcast i8* %439 to i32*
  %441 = load i32, i32* %440, align 8, !tbaa !13
  %442 = or i32 %441, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %437, i32 %442)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %470

; <label>:443                                     ; preds = %.noexc91
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %437, i32 0)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %470

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %443, %438
  %444 = bitcast %"class.std::basic_ofstream"* %myfile to %"class.std::basic_ostream"*
  %445 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8, !tbaa !32
  %447 = load i64, i64* %21, align 8, !tbaa !30
  %448 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %444, i8* %446, i64 %447)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %470

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  %449 = invoke %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* nonnull %428)
          to label %.noexc95 unwind label %470

.noexc95:                                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %450 = icmp eq %"class.std::basic_filebuf"* %449, null
  br i1 %450, label %451, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

; <label>:451                                     ; preds = %.noexc95
  %452 = load i8*, i8** %431, align 8, !tbaa !1
  %453 = getelementptr i8, i8* %452, i64 -24
  %454 = bitcast i8* %453 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds i8, i8* %424, i64 %455
  %457 = bitcast i8* %456 to %"class.std::basic_ios"*
  %458 = getelementptr inbounds i8, i8* %456, i64 32
  %459 = bitcast i8* %458 to i32*
  %460 = load i32, i32* %459, align 8, !tbaa !13
  %461 = or i32 %460, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %457, i32 %461)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %470

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %451, %.noexc95
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_ofstream"* nonnull %myfile, i8** nonnull getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 0))
          to label %462 unwind label %464

; <label>:462                                     ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %463 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %463)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev.exit83 unwind label %238

; <label>:464                                     ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %465 = landingpad { i8*, i32 }
          cleanup
  %466 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %466)
          to label %.body81 unwind label %467

; <label>:467                                     ; preds = %464
  %468 = landingpad { i8*, i32 }
          catch i8* null
  %469 = extractvalue { i8*, i32 } %468, 0
  call void @__clang_call_terminate(i8* %469) #18
  unreachable

; <label>:470                                     ; preds = %451, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit, %443, %438, %425
  %471 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_ofstream"* nonnull %myfile, i8** nonnull getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 0))
          to label %472 unwind label %476

; <label>:472                                     ; preds = %470
  %473 = extractvalue { i8*, i32 } %471, 1
  %474 = extractvalue { i8*, i32 } %471, 0
  %475 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %475)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 unwind label %495

; <label>:476                                     ; preds = %470
  %477 = landingpad { i8*, i32 }
          catch i8* null
  %478 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 2, i32 0
  invoke void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %478)
          to label %.body unwind label %479

; <label>:479                                     ; preds = %476
  %480 = landingpad { i8*, i32 }
          catch i8* null
  %481 = extractvalue { i8*, i32 } %480, 0
  call void @__clang_call_terminate(i8* %481) #18
  unreachable

_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev.exit83: ; preds = %462
  call void @llvm.lifetime.end(i64 512, i8* nonnull %424) #2
  %482 = load i8*, i8** %426, align 8, !tbaa !32
  %483 = icmp eq i8* %482, %.cast.i28
  br i1 %483, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %484

; <label>:484                                     ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev.exit83
  call void @_ZdlPv(i8* %482) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %484, %_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev.exit83
  call void @llvm.lifetime.end(i64 32, i8* nonnull %208) #2
  call void @llvm.lifetime.end(i64 25, i8* %192) #2
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %472, %423, %414, %405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %345, %271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %.body81
  %.1419 = phi i8* [ %240, %.body81 ], [ %.813, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.813, %271 ], [ %347, %345 ], [ %.1015, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.1015, %376 ], [ %.1318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.1318, %405 ], [ %416, %414 ], [ %416, %423 ], [ %474, %472 ]
  %.14 = phi i32 [ %241, %.body81 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.8, %271 ], [ %348, %345 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.10, %376 ], [ %.13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.13, %405 ], [ %417, %414 ], [ %417, %423 ], [ %473, %472 ]
  %485 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %filename, i64 0, i32 0, i32 0
  %486 = load i8*, i8** %485, align 8, !tbaa !32
  %487 = icmp eq i8* %486, %.cast.i28
  br i1 %487, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %488

; <label>:488                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @_ZdlPv(i8* %486) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %488, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %84
  %.1520 = phi i8* [ %86, %84 ], [ %.16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.16, %117 ], [ %.38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.38, %147 ], [ %.510, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.510, %188 ], [ %.1419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.1419, %488 ]
  %.15 = phi i32 [ %87, %84 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.1, %117 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.3, %147 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.5, %188 ], [ %.14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.14, %488 ]
  %489 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %490 = load i8*, i8** %489, align 8, !tbaa !32
  %491 = icmp eq i8* %490, %.cast.i
  br i1 %491, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %492

; <label>:492                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @_ZdlPv(i8* %490) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %492, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %493 = insertvalue { i8*, i32 } undef, i8* %.1520, 0
  %494 = insertvalue { i8*, i32 } %493, i32 %.15, 1
  resume { i8*, i32 } %494

; <label>:495                                     ; preds = %472
  %496 = landingpad { i8*, i32 }
          catch i8* null
  br label %.body

.body:                                            ; preds = %495, %476
  %eh.lpad-body = phi { i8*, i32 } [ %496, %495 ], [ %477, %476 ]
  %497 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(i8* %497) #18
  unreachable
}

; Function Attrs: nounwind
declare i64 @time(i64*) #8

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #8

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #8

declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, i8* %__lhs, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__rhs) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i64 @strlen(i8* %__lhs) #2
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 0, i64* %4, align 8, !tbaa !30
  %.cast.i = bitcast %union.anon* %2 to i8*
  store i8 0, i8* %.cast.i, align 8, !tbaa !11
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__rhs, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !30
  %7 = add i64 %6, %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* %agg.result, i64 %7)
          to label %8 unwind label %18

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %4, align 8, !tbaa !30
  %10 = sub i64 9223372036854775807, %9
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

; <label>:12                                      ; preds = %8
  invoke void @_ZSt20__throw_length_errorPKc(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13.78, i64 0, i64 0)) #17
          to label %.noexc unwind label %18

.noexc:                                           ; preds = %12
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %8
  %13 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i8* %__lhs, i64 %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__rhs, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !32
  %16 = load i64, i64* %5, align 8, !tbaa !30
  %17 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull %agg.result, i8* %15, i64 %16)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %18

; <label>:18                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %12, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !32
  %22 = icmp eq i8* %21, %.cast.i
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %23

; <label>:23                                      ; preds = %18
  tail call void @_ZdlPv(i8* %21) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %23, %18
  resume { i8*, i32 } %19
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"*, i64) #1

declare i32 @system(i8* nocapture readonly) #1

; Function Attrs: uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"*) unnamed_addr #0 align 2

declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"*, i8*, i32) #1

declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"*) #1

; Function Attrs: uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_ofstream"*, i8** nocapture readonly) unnamed_addr #0 align 2

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin }
attributes #20 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"vtable pointer", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !6, i64 240}
!5 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !6, i64 216, !7, i64 224, !8, i64 225, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !3, i64 0}
!8 = !{!"bool", !7, i64 0}
!9 = !{!10, !7, i64 56}
!10 = !{!"_ZTSSt5ctypeIcE", !6, i64 16, !8, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !17, i64 32}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !6, i64 40, !18, i64 48, !7, i64 64, !19, i64 192, !6, i64 200, !20, i64 208}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !6, i64 0, !15, i64 8}
!19 = !{!"int", !7, i64 0}
!20 = !{!"_ZTSSt6locale", !6, i64 0}
!21 = !{!19, !19, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !7, i64 0}
!24 = !{!25, !19, i64 16}
!25 = !{!"_ZTS24HPC_Sparse_Matrix_STRUCT", !6, i64 0, !19, i64 8, !19, i64 12, !19, i64 16, !26, i64 24, !19, i64 32, !19, i64 36, !19, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!26 = !{!"long long", !7, i64 0}
!27 = !{!25, !26, i64 24}
!28 = !{!29, !6, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !6, i64 0}
!30 = !{!31, !15, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !15, i64 8, !7, i64 16}
!32 = !{!31, !6, i64 0}
!33 = !{!15, !15, i64 0}
!34 = !{!25, !6, i64 0}
!35 = !{!25, !6, i64 48}
!36 = !{!25, !6, i64 56}
!37 = !{!25, !6, i64 64}
!38 = !{!25, !6, i64 72}
!39 = !{!25, !6, i64 80}
!40 = !{!25, !6, i64 88}
!41 = !{!25, !19, i64 8}
!42 = !{!25, !19, i64 12}
!43 = !{!25, !19, i64 32}
!44 = !{!25, !19, i64 36}
!45 = !{!25, !19, i64 40}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!26, !26, i64 0}
!49 = !{!50, !15, i64 0}
!50 = !{!"_ZTS6rusage", !51, i64 0, !51, i64 16, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!51 = !{!"_ZTS7timeval", !15, i64 0, !15, i64 8}
!52 = !{!50, !15, i64 8}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.vectorize.width", i32 1}
!55 = !{!"llvm.loop.interleave.count", i32 1}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !54, !55}
!58 = distinct !{!58, !54, !55}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !47}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !47}
!65 = !{!66, !6, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIP12YAML_ElementSaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implE", !6, i64 0, !6, i64 8, !6, i64 16}
!68 = !{!66, !6, i64 8}
!69 = !{!66, !6, i64 16}
!70 = !{!71, !15, i64 8}
!71 = !{!"_ZTSSi", !15, i64 8}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN12YAML_Element6getKeyEv: %agg.result"}
!74 = distinct !{!74, !"_ZN12YAML_Element6getKeyEv"}
!75 = !{!76, !19, i64 20}
!76 = !{!"_ZTS2tm", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !15, i64 40, !6, i64 48}
!77 = !{!76, !19, i64 16}
!78 = !{!76, !19, i64 12}
!79 = !{!76, !19, i64 8}
!80 = !{!76, !19, i64 4}
!81 = !{!76, !19, i64 0}
