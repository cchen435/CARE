; ModuleID = 'hpccg.ll'
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
%"class.std::basic_iostream" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base", %"class.std::basic_ios" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.__gnu_cxx::__normal_iterator" = type { %class.YAML_Element** }
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

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZNSt11char_traitsIcE6assignERcRKc = comdat any

$_ZNSt11char_traitsIcE4copyEPcPKcm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEE10deallocateERS1_Pcm = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE10deallocateEPS2_m = comdat any

$_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcEET_S7_RKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_ = comdat any

$_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_ = comdat any

$_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE9constructIS2_EEvRS3_PS2_RKT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE9constructEPS2_RKS2_ = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE3endEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_ = comdat any

$_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE5beginEv = comdat any

$_ZN9__gnu_cxxmiIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE8allocateEmPKv = comdat any

$_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPP12YAML_ElementS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIPP12YAML_ElementS2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPP12YAML_ElementS2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12YAML_ElementS4_EET0_T_S6_S5_ = comdat any

$_ZSt4copyIPP12YAML_ElementS2_ET0_T_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP12YAML_ElementET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPP12YAML_ElementET_S3_ = comdat any

$_ZSt13__copy_move_aILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12YAML_ElementEEPT_PKS5_S8_S6_ = comdat any

$_ZN12YAML_Element6getKeyEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEE17_S_select_on_copyERKS1_ = comdat any

$_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_ = comdat any

$_ZNSt11char_traitsIcE7compareEPKcS2_m = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN12YAML_ElementC2Ev = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

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
@.str.29 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Parallelism\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"MPI not enabled\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"OpenMP not enabled\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Number of iterations\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Final residual\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"#********** Performance Summary (times in sec) ***********\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Time Summary\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Total   \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"DDOT    \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"WAXPBY  \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"SPARSEMV\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"FLOPS Summary\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"MFLOPS Summary\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZStL8__ioinit.3 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"local_nrow > 0\00", align 1
@.str.1.31 = private unnamed_addr constant [20 x i8] c"generate_matrix.cpp\00", align 1
@__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_ = private unnamed_addr constant [91 x i8] c"void generate_matrix(int, int, int, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@_ZStL8__ioinit.34 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Reading matrix info from %s...\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.39 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4.41 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5.42 = private unnamed_addr constant [26 x i8] c"cur_local_row==local_nrow\00", align 1
@.str.6.43 = private unnamed_addr constant [17 x i8] c"read_HPC_row.cpp\00", align 1
@__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_ = private unnamed_addr constant [81 x i8] c"void read_HPC_row(char *, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@.str.10.44 = private unnamed_addr constant [7 x i8] c"%lf %d\00", align 1
@.str.12.45 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mat0.dat\00", align 1
@.str.1.49 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2.50 = private unnamed_addr constant [9 x i8] c"mat1.dat\00", align 1
@.str.3.51 = private unnamed_addr constant [9 x i8] c"mat2.dat\00", align 1
@.str.4.52 = private unnamed_addr constant [9 x i8] c"mat3.dat\00", align 1
@.str.5.53 = private unnamed_addr constant [16 x i8] c" %d %d %22.16e\0A\00", align 1
@_ZStL8__ioinit.56 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZStL8__ioinit.59 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Initial Residual = \00", align 1
@.str.1.63 = private unnamed_addr constant [13 x i8] c"Iteration = \00", align 1
@.str.2.64 = private unnamed_addr constant [15 x i8] c"   Residual = \00", align 1
@_ZStL8__ioinit.71 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant [4 x i8*]
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*]
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [15 x i8*]
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant [16 x i8*]
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [16 x i8*]
@.str.4.75 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.5.76 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1.83 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6.84 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.2.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3.86 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZStL8__ioinit.89 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.3.90 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"Mini-Application Name: \00", align 1
@.str.1.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [27 x i8] c"Mini-Application Version: \00", align 1
@.str.4.96 = private unnamed_addr constant [31 x i8] c"%04d_%02d_%02d__%02d_%02d_%02d\00", align 1
@.str.5.97 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6.98 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.7.99 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.8.100 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9.101 = private unnamed_addr constant [7 x i8] c"mkdir \00", align 1
@.str.13.102 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10.103 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11.104 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x i8*]
@_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE = external unnamed_addr constant [10 x i8*]
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant [16 x i8*]

@_ZN12YAML_ElementC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ = alias void (%class.YAML_Element*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*), void (%class.YAML_Element*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*)* @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
@_ZN12YAML_ElementD1Ev = alias void (%class.YAML_Element*), void (%class.YAML_Element*)* @_ZN12YAML_ElementD2Ev
@_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_ = alias void (%class.YAML_Doc*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*), void (%class.YAML_Doc*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*)* @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
@_ZN8YAML_DocD1Ev = alias void (%class.YAML_Doc*), void (%class.YAML_Doc*)* @_ZN8YAML_DocD2Ev

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
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
  %A = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %x = alloca double*, align 8
  %b = alloca double*, align 8
  %xexact = alloca double*, align 8
  %times = alloca [7 x double], align 16
  %niters = alloca i32, align 4
  %normr = alloca double, align 8
  %doc = alloca %class.YAML_Doc, align 8
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::ios_base::Init", align 1
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::ios_base::Init", align 1
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::ios_base::Init", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::ios_base::Init", align 1
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::ios_base::Init", align 1
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::ios_base::Init", align 1
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::ios_base::Init", align 1
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::ios_base::Init", align 1
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::ios_base::Init", align 1
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::ios_base::Init", align 1
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::ios_base::Init", align 1
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::ios_base::Init", align 1
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::ios_base::Init", align 1
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::ios_base::Init", align 1
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::ios_base::Init", align 1
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca %"class.std::ios_base::Init", align 1
  %35 = alloca %"class.std::__cxx11::basic_string", align 8
  %36 = alloca %"class.std::ios_base::Init", align 1
  %37 = alloca %"class.std::__cxx11::basic_string", align 8
  %38 = alloca %"class.std::ios_base::Init", align 1
  %39 = alloca %"class.std::__cxx11::basic_string", align 8
  %40 = alloca %"class.std::ios_base::Init", align 1
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::ios_base::Init", align 1
  %43 = alloca %"class.std::__cxx11::basic_string", align 8
  %44 = alloca %"class.std::ios_base::Init", align 1
  %45 = alloca %"class.std::__cxx11::basic_string", align 8
  %46 = alloca %"class.std::ios_base::Init", align 1
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca %"class.std::ios_base::Init", align 1
  %49 = alloca %"class.std::__cxx11::basic_string", align 8
  %50 = alloca %"class.std::ios_base::Init", align 1
  %51 = alloca %"class.std::__cxx11::basic_string", align 8
  %52 = alloca %"class.std::ios_base::Init", align 1
  %53 = alloca %"class.std::__cxx11::basic_string", align 8
  %54 = alloca %"class.std::ios_base::Init", align 1
  %55 = alloca %"class.std::__cxx11::basic_string", align 8
  %56 = alloca %"class.std::ios_base::Init", align 1
  %57 = alloca %"class.std::__cxx11::basic_string", align 8
  %58 = alloca %"class.std::ios_base::Init", align 1
  %59 = alloca %"class.std::__cxx11::basic_string", align 8
  %60 = alloca %"class.std::ios_base::Init", align 1
  %61 = alloca %"class.std::__cxx11::basic_string", align 8
  %62 = alloca %"class.std::ios_base::Init", align 1
  %63 = alloca %"class.std::__cxx11::basic_string", align 8
  %64 = alloca %"class.std::ios_base::Init", align 1
  %65 = alloca %"class.std::__cxx11::basic_string", align 8
  %66 = alloca %"class.std::ios_base::Init", align 1
  %67 = alloca %"class.std::__cxx11::basic_string", align 8
  %68 = alloca %"class.std::ios_base::Init", align 1
  %69 = alloca %"class.std::__cxx11::basic_string", align 8
  %70 = alloca %"class.std::ios_base::Init", align 1
  %71 = alloca %"class.std::__cxx11::basic_string", align 8
  %72 = alloca %"class.std::ios_base::Init", align 1
  %73 = alloca %"class.std::__cxx11::basic_string", align 8
  %74 = alloca %"class.std::ios_base::Init", align 1
  %75 = alloca %"class.std::__cxx11::basic_string", align 8
  %76 = alloca %"class.std::ios_base::Init", align 1
  %77 = alloca %"class.std::__cxx11::basic_string", align 8
  %78 = alloca %"class.std::ios_base::Init", align 1
  %79 = alloca %"class.std::__cxx11::basic_string", align 8
  %80 = alloca %"class.std::ios_base::Init", align 1
  %81 = alloca %"class.std::__cxx11::basic_string", align 8
  %82 = alloca %"class.std::ios_base::Init", align 1
  %83 = alloca %"class.std::__cxx11::basic_string", align 8
  %84 = alloca %"class.std::ios_base::Init", align 1
  %85 = alloca %"class.std::__cxx11::basic_string", align 8
  %86 = alloca %"class.std::ios_base::Init", align 1
  %87 = alloca %"class.std::__cxx11::basic_string", align 8
  %88 = alloca %"class.std::ios_base::Init", align 1
  %89 = alloca %"class.std::__cxx11::basic_string", align 8
  %90 = alloca %"class.std::ios_base::Init", align 1
  %91 = alloca %"class.std::__cxx11::basic_string", align 8
  %92 = alloca %"class.std::ios_base::Init", align 1
  %93 = alloca %"class.std::__cxx11::basic_string", align 8
  %94 = alloca %"class.std::ios_base::Init", align 1
  %95 = alloca %"class.std::__cxx11::basic_string", align 8
  %96 = alloca %"class.std::ios_base::Init", align 1
  %97 = alloca %"class.std::__cxx11::basic_string", align 8
  %98 = alloca %"class.std::ios_base::Init", align 1
  %99 = alloca %"class.std::__cxx11::basic_string", align 8
  %100 = alloca %"class.std::ios_base::Init", align 1
  %101 = alloca %"class.std::__cxx11::basic_string", align 8
  %102 = alloca %"class.std::ios_base::Init", align 1
  %103 = alloca %"class.std::__cxx11::basic_string", align 8
  %104 = alloca %"class.std::ios_base::Init", align 1
  %105 = alloca %"class.std::__cxx11::basic_string", align 8
  %106 = alloca %"class.std::ios_base::Init", align 1
  %107 = alloca %"class.std::__cxx11::basic_string", align 8
  %108 = alloca %"class.std::ios_base::Init", align 1
  %yaml = alloca %"class.std::__cxx11::basic_string", align 8
  %109 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #2
  %110 = bitcast double** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #2
  %111 = bitcast double** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #2
  %112 = bitcast double** %xexact to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #2
  %113 = bitcast [7 x double]* %times to i8*
  call void @llvm.lifetime.start(i64 56, i8* %113) #2
  switch i32 %argc, label %114 [
    i32 4, label %131
    i32 2, label %131
  ]

; <label>:114                                     ; preds = %0
  %115 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %116 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %115, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %117 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %116, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i8*, i8** %argv, align 8, !tbaa !1
  %119 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %117, i8* %118)
  %120 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %119, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %121 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %120, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %122 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %121, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %123 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %122, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %124 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %123, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i8*, i8** %argv, align 8, !tbaa !1
  %126 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %124, i8* %125)
  %127 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %126, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %128 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %127, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %129 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %128, i8* nonnull getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0))
  %130 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %129, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  tail call void @exit(i32 1) #25
  unreachable

; <label>:131                                     ; preds = %0, %0
  %132 = icmp eq i32 %argc, 4
  %133 = getelementptr inbounds i8*, i8** %argv, i64 1
  %134 = load i8*, i8** %133, align 8, !tbaa !1
  br i1 %132, label %135, label %143

; <label>:135                                     ; preds = %131
  %136 = tail call i32 @atoi(i8* %134) #26
  %137 = getelementptr inbounds i8*, i8** %argv, i64 2
  %138 = load i8*, i8** %137, align 8, !tbaa !1
  %139 = tail call i32 @atoi(i8* %138) #26
  %140 = getelementptr inbounds i8*, i8** %argv, i64 3
  %141 = load i8*, i8** %140, align 8, !tbaa !1
  %142 = tail call i32 @atoi(i8* %141) #26
  call void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %136, i32 %139, i32 %142, %struct.HPC_Sparse_Matrix_STRUCT** nonnull %A, double** nonnull %x, double** nonnull %b, double** nonnull %xexact)
  br label %144

; <label>:143                                     ; preds = %131
  call void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(i8* %134, %struct.HPC_Sparse_Matrix_STRUCT** nonnull %A, double** nonnull %x, double** nonnull %b, double** nonnull %xexact)
  br label %144

; <label>:144                                     ; preds = %143, %135
  %nz.0 = phi i32 [ %142, %135 ], [ undef, %143 ]
  %ny.0 = phi i32 [ %139, %135 ], [ undef, %143 ]
  %nx.0 = phi i32 [ %136, %135 ], [ undef, %143 ]
  %145 = call double @_Z7mytimerv()
  %146 = bitcast i32* %niters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #2
  store i32 0, i32* %niters, align 4, !tbaa !5
  %147 = bitcast double* %normr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #2
  store double 0.000000e+00, double* %normr, align 8, !tbaa !7
  %148 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %149 = load double*, double** %b, align 8, !tbaa !1
  %150 = load double*, double** %x, align 8, !tbaa !1
  %151 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 0
  %152 = call i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(%struct.HPC_Sparse_Matrix_STRUCT* %148, double* %149, double* %150, i32 150, double 0.000000e+00, i32* nonnull dereferenceable(4) %niters, double* nonnull dereferenceable(8) %normr, double* %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

; <label>:154                                     ; preds = %144
  %155 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %156 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %155, i32 %152)
  %157 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %156, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %158 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %157, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %159

; <label>:159                                     ; preds = %154, %144
  %160 = load i32, i32* %niters, align 4, !tbaa !5
  %161 = sitofp i32 %160 to double
  %162 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %148, i64 0, i32 3
  %163 = load i32, i32* %162, align 8, !tbaa !9
  %164 = sitofp i32 %163 to double
  %165 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %148, i64 0, i32 4
  %166 = load i64, i64* %165, align 8, !tbaa !12
  %167 = sitofp i64 %166 to double
  %168 = fmul double %161, 4.000000e+00
  %169 = fmul double %168, %164
  %170 = fmul double %161, 6.000000e+00
  %171 = fmul double %170, %164
  %172 = fmul double %161, 2.000000e+00
  %173 = fmul double %172, %167
  %174 = fadd double %169, %171
  %175 = fadd double %174, %173
  %176 = bitcast %class.YAML_Doc* %doc to i8*
  call void @llvm.lifetime.start(i64 216, i8* %176) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %2)
          to label %177 unwind label %337

; <label>:177                                     ; preds = %159
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %3, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %4)
          to label %178 unwind label %341

; <label>:178                                     ; preds = %177
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %5, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %6)
          to label %179 unwind label %345

; <label>:179                                     ; preds = %178
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %7, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %8)
          to label %180 unwind label %349

; <label>:180                                     ; preds = %179
  invoke void @_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(%class.YAML_Doc* nonnull %doc, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7)
          to label %181 unwind label %353

; <label>:181                                     ; preds = %180
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  %182 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %doc, i64 0, i32 0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %9, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %10)
          to label %183 unwind label %360

; <label>:183                                     ; preds = %181
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %11, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %12)
          to label %184 unwind label %364

; <label>:184                                     ; preds = %183
  %185 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %11)
          to label %186 unwind label %368

; <label>:186                                     ; preds = %184
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %11)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %9)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %13, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %14)
          to label %187 unwind label %373

; <label>:187                                     ; preds = %186
  %188 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %13)
          to label %189 unwind label %377

; <label>:189                                     ; preds = %187
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %15, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %16)
          to label %190 unwind label %381

; <label>:190                                     ; preds = %189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %17, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %18)
          to label %191 unwind label %385

; <label>:191                                     ; preds = %190
  %192 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %188, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %15, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %17)
          to label %193 unwind label %389

; <label>:193                                     ; preds = %191
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %17)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %15)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %13)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %19, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %20)
          to label %194 unwind label %395

; <label>:194                                     ; preds = %193
  %195 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %19)
          to label %196 unwind label %399

; <label>:196                                     ; preds = %194
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %21, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %22)
          to label %197 unwind label %403

; <label>:197                                     ; preds = %196
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %23, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %24)
          to label %198 unwind label %407

; <label>:198                                     ; preds = %197
  %199 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %195, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %21, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %23)
          to label %200 unwind label %411

; <label>:200                                     ; preds = %198
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %23)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %21)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %19)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %25, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %26)
          to label %201 unwind label %417

; <label>:201                                     ; preds = %200
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %27, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %28)
          to label %202 unwind label %421

; <label>:202                                     ; preds = %201
  %203 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %27)
          to label %204 unwind label %425

; <label>:204                                     ; preds = %202
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %27)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %25)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %29, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %30)
          to label %205 unwind label %430

; <label>:205                                     ; preds = %204
  %206 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %29)
          to label %207 unwind label %434

; <label>:207                                     ; preds = %205
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %31, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %32)
          to label %208 unwind label %438

; <label>:208                                     ; preds = %207
  %209 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %206, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %31, i32 %nx.0)
          to label %210 unwind label %442

; <label>:210                                     ; preds = %208
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %31)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %29)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %33, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %34)
          to label %211 unwind label %447

; <label>:211                                     ; preds = %210
  %212 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %33)
          to label %213 unwind label %451

; <label>:213                                     ; preds = %211
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %35, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %36)
          to label %214 unwind label %455

; <label>:214                                     ; preds = %213
  %215 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %212, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %35, i32 %ny.0)
          to label %216 unwind label %459

; <label>:216                                     ; preds = %214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %35)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %33)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %37, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %38)
          to label %217 unwind label %464

; <label>:217                                     ; preds = %216
  %218 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %37)
          to label %219 unwind label %468

; <label>:219                                     ; preds = %217
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %39, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %40)
          to label %220 unwind label %472

; <label>:220                                     ; preds = %219
  %221 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %218, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %39, i32 %nz.0)
          to label %222 unwind label %476

; <label>:222                                     ; preds = %220
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %39)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %37)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %41, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %42)
          to label %223 unwind label %481

; <label>:223                                     ; preds = %222
  %224 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %41, i32 %160)
          to label %225 unwind label %485

; <label>:225                                     ; preds = %223
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %41)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %43, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %44)
          to label %226 unwind label %489

; <label>:226                                     ; preds = %225
  %227 = load double, double* %normr, align 8, !tbaa !7
  %228 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %43, double %227)
          to label %229 unwind label %493

; <label>:229                                     ; preds = %226
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %43)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %45, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %46)
          to label %230 unwind label %497

; <label>:230                                     ; preds = %229
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %47, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %48)
          to label %231 unwind label %501

; <label>:231                                     ; preds = %230
  %232 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %45, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %47)
          to label %233 unwind label %505

; <label>:233                                     ; preds = %231
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %47)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %45)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %49, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %50)
          to label %234 unwind label %510

; <label>:234                                     ; preds = %233
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %51, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %52)
          to label %235 unwind label %514

; <label>:235                                     ; preds = %234
  %236 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %49, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %51)
          to label %237 unwind label %518

; <label>:237                                     ; preds = %235
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %51)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %49)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %53, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %54)
          to label %238 unwind label %523

; <label>:238                                     ; preds = %237
  %239 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %53)
          to label %240 unwind label %527

; <label>:240                                     ; preds = %238
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %55, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %56)
          to label %241 unwind label %531

; <label>:241                                     ; preds = %240
  %242 = load double, double* %151, align 16, !tbaa !7
  %243 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %239, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %55, double %242)
          to label %244 unwind label %535

; <label>:244                                     ; preds = %241
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %55)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %53)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %57, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %58)
          to label %245 unwind label %540

; <label>:245                                     ; preds = %244
  %246 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %57)
          to label %247 unwind label %544

; <label>:247                                     ; preds = %245
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %59, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %60)
          to label %248 unwind label %548

; <label>:248                                     ; preds = %247
  %249 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 1
  %250 = load double, double* %249, align 8, !tbaa !7
  %251 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %246, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %59, double %250)
          to label %252 unwind label %552

; <label>:252                                     ; preds = %248
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %59)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %57)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %61, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %62)
          to label %253 unwind label %557

; <label>:253                                     ; preds = %252
  %254 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %61)
          to label %255 unwind label %561

; <label>:255                                     ; preds = %253
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %63, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %64)
          to label %256 unwind label %565

; <label>:256                                     ; preds = %255
  %257 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 2
  %258 = load double, double* %257, align 16, !tbaa !7
  %259 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %254, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %63, double %258)
          to label %260 unwind label %569

; <label>:260                                     ; preds = %256
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %63)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %61)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %65, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %66)
          to label %261 unwind label %574

; <label>:261                                     ; preds = %260
  %262 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %65)
          to label %263 unwind label %578

; <label>:263                                     ; preds = %261
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %67, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %68)
          to label %264 unwind label %582

; <label>:264                                     ; preds = %263
  %265 = getelementptr inbounds [7 x double], [7 x double]* %times, i64 0, i64 3
  %266 = load double, double* %265, align 8, !tbaa !7
  %267 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %262, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %67, double %266)
          to label %268 unwind label %586

; <label>:268                                     ; preds = %264
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %67)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %65)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %69, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %70)
          to label %269 unwind label %591

; <label>:269                                     ; preds = %268
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %71, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %72)
          to label %270 unwind label %595

; <label>:270                                     ; preds = %269
  %271 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %69, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %71)
          to label %272 unwind label %599

; <label>:272                                     ; preds = %270
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %71)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %69)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %73, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %74)
          to label %273 unwind label %604

; <label>:273                                     ; preds = %272
  %274 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %73)
          to label %275 unwind label %608

; <label>:275                                     ; preds = %273
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %75, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %76)
          to label %276 unwind label %612

; <label>:276                                     ; preds = %275
  %277 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %274, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %75, double %175)
          to label %278 unwind label %616

; <label>:278                                     ; preds = %276
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %75)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %73)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %77, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %78)
          to label %279 unwind label %621

; <label>:279                                     ; preds = %278
  %280 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %77)
          to label %281 unwind label %625

; <label>:281                                     ; preds = %279
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %79, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %80)
          to label %282 unwind label %629

; <label>:282                                     ; preds = %281
  %283 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %280, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %79, double %169)
          to label %284 unwind label %633

; <label>:284                                     ; preds = %282
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %79)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %77)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %81, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %82)
          to label %285 unwind label %638

; <label>:285                                     ; preds = %284
  %286 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %81)
          to label %287 unwind label %642

; <label>:287                                     ; preds = %285
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %83, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %84)
          to label %288 unwind label %646

; <label>:288                                     ; preds = %287
  %289 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %286, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %83, double %171)
          to label %290 unwind label %650

; <label>:290                                     ; preds = %288
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %83)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %81)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %85, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %86)
          to label %291 unwind label %655

; <label>:291                                     ; preds = %290
  %292 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %85)
          to label %293 unwind label %659

; <label>:293                                     ; preds = %291
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %87, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %88)
          to label %294 unwind label %663

; <label>:294                                     ; preds = %293
  %295 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %292, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %87, double %173)
          to label %296 unwind label %667

; <label>:296                                     ; preds = %294
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %87)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %85)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %89, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %90)
          to label %297 unwind label %672

; <label>:297                                     ; preds = %296
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %91, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %92)
          to label %298 unwind label %676

; <label>:298                                     ; preds = %297
  %299 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %89, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %91)
          to label %300 unwind label %680

; <label>:300                                     ; preds = %298
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %91)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %89)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %93, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %94)
          to label %301 unwind label %685

; <label>:301                                     ; preds = %300
  %302 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %93)
          to label %303 unwind label %689

; <label>:303                                     ; preds = %301
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %95, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %96)
          to label %304 unwind label %693

; <label>:304                                     ; preds = %303
  %305 = fdiv double %175, %242
  %306 = fdiv double %305, 1.000000e+06
  %307 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %302, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %95, double %306)
          to label %308 unwind label %697

; <label>:308                                     ; preds = %304
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %95)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %93)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %97, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %98)
          to label %309 unwind label %702

; <label>:309                                     ; preds = %308
  %310 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %97)
          to label %311 unwind label %706

; <label>:311                                     ; preds = %309
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %99, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %100)
          to label %312 unwind label %710

; <label>:312                                     ; preds = %311
  %313 = fdiv double %169, %250
  %314 = fdiv double %313, 1.000000e+06
  %315 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %310, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %99, double %314)
          to label %316 unwind label %714

; <label>:316                                     ; preds = %312
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %99)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %97)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %101, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %102)
          to label %317 unwind label %719

; <label>:317                                     ; preds = %316
  %318 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %101)
          to label %319 unwind label %723

; <label>:319                                     ; preds = %317
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %103, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %104)
          to label %320 unwind label %727

; <label>:320                                     ; preds = %319
  %321 = fdiv double %171, %258
  %322 = fdiv double %321, 1.000000e+06
  %323 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %318, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %103, double %322)
          to label %324 unwind label %731

; <label>:324                                     ; preds = %320
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %103)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %101)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %105, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %106)
          to label %325 unwind label %736

; <label>:325                                     ; preds = %324
  %326 = invoke %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* %182, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %105)
          to label %327 unwind label %740

; <label>:327                                     ; preds = %325
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %107, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %108)
          to label %328 unwind label %744

; <label>:328                                     ; preds = %327
  %329 = fdiv double %173, %266
  %330 = fdiv double %329, 1.000000e+06
  %331 = invoke %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %326, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %107, double %330)
          to label %332 unwind label %748

; <label>:332                                     ; preds = %328
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %107)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %105)
  %333 = bitcast %"class.std::__cxx11::basic_string"* %yaml to i8*
  call void @llvm.lifetime.start(i64 32, i8* %333) #2
  invoke void @_ZN8YAML_Doc12generateYAMLEv(%"class.std::__cxx11::basic_string"* nonnull sret %yaml, %class.YAML_Doc* nonnull %doc)
          to label %334 unwind label %753

; <label>:334                                     ; preds = %332
  %335 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %yaml)
          to label %336 unwind label %757

; <label>:336                                     ; preds = %334
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %yaml)
  call void @llvm.lifetime.end(i64 32, i8* %333) #2
  call void @_ZN8YAML_DocD1Ev(%class.YAML_Doc* nonnull %doc)
  call void @llvm.lifetime.end(i64 216, i8* %176) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %147) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %146) #2
  call void @llvm.lifetime.end(i64 56, i8* nonnull %113) #2
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %111) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %110) #2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %109) #2
  ret i32 0

; <label>:337                                     ; preds = %159
  %338 = landingpad { i8*, i32 }
          cleanup
  %339 = extractvalue { i8*, i32 } %338, 0
  %340 = extractvalue { i8*, i32 } %338, 1
  br label %762

; <label>:341                                     ; preds = %177
  %342 = landingpad { i8*, i32 }
          cleanup
  %343 = extractvalue { i8*, i32 } %342, 0
  %344 = extractvalue { i8*, i32 } %342, 1
  br label %359

; <label>:345                                     ; preds = %178
  %346 = landingpad { i8*, i32 }
          cleanup
  %347 = extractvalue { i8*, i32 } %346, 0
  %348 = extractvalue { i8*, i32 } %346, 1
  br label %358

; <label>:349                                     ; preds = %179
  %350 = landingpad { i8*, i32 }
          cleanup
  %351 = extractvalue { i8*, i32 } %350, 0
  %352 = extractvalue { i8*, i32 } %350, 1
  br label %357

; <label>:353                                     ; preds = %180
  %354 = landingpad { i8*, i32 }
          cleanup
  %355 = extractvalue { i8*, i32 } %354, 0
  %356 = extractvalue { i8*, i32 } %354, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  br label %357

; <label>:357                                     ; preds = %353, %349
  %.04 = phi i8* [ %351, %349 ], [ %355, %353 ]
  %.0 = phi i32 [ %352, %349 ], [ %356, %353 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  br label %358

; <label>:358                                     ; preds = %357, %345
  %.110 = phi i8* [ %347, %345 ], [ %.04, %357 ]
  %.1 = phi i32 [ %348, %345 ], [ %.0, %357 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %359

; <label>:359                                     ; preds = %358, %341
  %.211 = phi i8* [ %343, %341 ], [ %.110, %358 ]
  %.2 = phi i32 [ %344, %341 ], [ %.1, %358 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br label %762

; <label>:360                                     ; preds = %181
  %361 = landingpad { i8*, i32 }
          cleanup
  %362 = extractvalue { i8*, i32 } %361, 0
  %363 = extractvalue { i8*, i32 } %361, 1
  br label %761

; <label>:364                                     ; preds = %183
  %365 = landingpad { i8*, i32 }
          cleanup
  %366 = extractvalue { i8*, i32 } %365, 0
  %367 = extractvalue { i8*, i32 } %365, 1
  br label %372

; <label>:368                                     ; preds = %184
  %369 = landingpad { i8*, i32 }
          cleanup
  %370 = extractvalue { i8*, i32 } %369, 0
  %371 = extractvalue { i8*, i32 } %369, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %11)
  br label %372

; <label>:372                                     ; preds = %368, %364
  %.413 = phi i8* [ %366, %364 ], [ %370, %368 ]
  %.4 = phi i32 [ %367, %364 ], [ %371, %368 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %9)
  br label %761

; <label>:373                                     ; preds = %186
  %374 = landingpad { i8*, i32 }
          cleanup
  %375 = extractvalue { i8*, i32 } %374, 0
  %376 = extractvalue { i8*, i32 } %374, 1
  br label %761

; <label>:377                                     ; preds = %187
  %378 = landingpad { i8*, i32 }
          cleanup
  %379 = extractvalue { i8*, i32 } %378, 0
  %380 = extractvalue { i8*, i32 } %378, 1
  br label %394

; <label>:381                                     ; preds = %189
  %382 = landingpad { i8*, i32 }
          cleanup
  %383 = extractvalue { i8*, i32 } %382, 0
  %384 = extractvalue { i8*, i32 } %382, 1
  br label %394

; <label>:385                                     ; preds = %190
  %386 = landingpad { i8*, i32 }
          cleanup
  %387 = extractvalue { i8*, i32 } %386, 0
  %388 = extractvalue { i8*, i32 } %386, 1
  br label %393

; <label>:389                                     ; preds = %191
  %390 = landingpad { i8*, i32 }
          cleanup
  %391 = extractvalue { i8*, i32 } %390, 0
  %392 = extractvalue { i8*, i32 } %390, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %17)
  br label %393

; <label>:393                                     ; preds = %389, %385
  %.615 = phi i8* [ %387, %385 ], [ %391, %389 ]
  %.6 = phi i32 [ %388, %385 ], [ %392, %389 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %15)
  br label %394

; <label>:394                                     ; preds = %393, %381, %377
  %.817 = phi i8* [ %379, %377 ], [ %383, %381 ], [ %.615, %393 ]
  %.8 = phi i32 [ %380, %377 ], [ %384, %381 ], [ %.6, %393 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %13)
  br label %761

; <label>:395                                     ; preds = %193
  %396 = landingpad { i8*, i32 }
          cleanup
  %397 = extractvalue { i8*, i32 } %396, 0
  %398 = extractvalue { i8*, i32 } %396, 1
  br label %761

; <label>:399                                     ; preds = %194
  %400 = landingpad { i8*, i32 }
          cleanup
  %401 = extractvalue { i8*, i32 } %400, 0
  %402 = extractvalue { i8*, i32 } %400, 1
  br label %416

; <label>:403                                     ; preds = %196
  %404 = landingpad { i8*, i32 }
          cleanup
  %405 = extractvalue { i8*, i32 } %404, 0
  %406 = extractvalue { i8*, i32 } %404, 1
  br label %416

; <label>:407                                     ; preds = %197
  %408 = landingpad { i8*, i32 }
          cleanup
  %409 = extractvalue { i8*, i32 } %408, 0
  %410 = extractvalue { i8*, i32 } %408, 1
  br label %415

; <label>:411                                     ; preds = %198
  %412 = landingpad { i8*, i32 }
          cleanup
  %413 = extractvalue { i8*, i32 } %412, 0
  %414 = extractvalue { i8*, i32 } %412, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %23)
  br label %415

; <label>:415                                     ; preds = %411, %407
  %.1019 = phi i8* [ %409, %407 ], [ %413, %411 ]
  %.10 = phi i32 [ %410, %407 ], [ %414, %411 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %21)
  br label %416

; <label>:416                                     ; preds = %415, %403, %399
  %.1221 = phi i8* [ %401, %399 ], [ %405, %403 ], [ %.1019, %415 ]
  %.12 = phi i32 [ %402, %399 ], [ %406, %403 ], [ %.10, %415 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %19)
  br label %761

; <label>:417                                     ; preds = %200
  %418 = landingpad { i8*, i32 }
          cleanup
  %419 = extractvalue { i8*, i32 } %418, 0
  %420 = extractvalue { i8*, i32 } %418, 1
  br label %761

; <label>:421                                     ; preds = %201
  %422 = landingpad { i8*, i32 }
          cleanup
  %423 = extractvalue { i8*, i32 } %422, 0
  %424 = extractvalue { i8*, i32 } %422, 1
  br label %429

; <label>:425                                     ; preds = %202
  %426 = landingpad { i8*, i32 }
          cleanup
  %427 = extractvalue { i8*, i32 } %426, 0
  %428 = extractvalue { i8*, i32 } %426, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %27)
  br label %429

; <label>:429                                     ; preds = %425, %421
  %.1423 = phi i8* [ %423, %421 ], [ %427, %425 ]
  %.14 = phi i32 [ %424, %421 ], [ %428, %425 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %25)
  br label %761

; <label>:430                                     ; preds = %204
  %431 = landingpad { i8*, i32 }
          cleanup
  %432 = extractvalue { i8*, i32 } %431, 0
  %433 = extractvalue { i8*, i32 } %431, 1
  br label %761

; <label>:434                                     ; preds = %205
  %435 = landingpad { i8*, i32 }
          cleanup
  %436 = extractvalue { i8*, i32 } %435, 0
  %437 = extractvalue { i8*, i32 } %435, 1
  br label %446

; <label>:438                                     ; preds = %207
  %439 = landingpad { i8*, i32 }
          cleanup
  %440 = extractvalue { i8*, i32 } %439, 0
  %441 = extractvalue { i8*, i32 } %439, 1
  br label %446

; <label>:442                                     ; preds = %208
  %443 = landingpad { i8*, i32 }
          cleanup
  %444 = extractvalue { i8*, i32 } %443, 0
  %445 = extractvalue { i8*, i32 } %443, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %31)
  br label %446

; <label>:446                                     ; preds = %442, %438, %434
  %.1726 = phi i8* [ %436, %434 ], [ %440, %438 ], [ %444, %442 ]
  %.17 = phi i32 [ %437, %434 ], [ %441, %438 ], [ %445, %442 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %29)
  br label %761

; <label>:447                                     ; preds = %210
  %448 = landingpad { i8*, i32 }
          cleanup
  %449 = extractvalue { i8*, i32 } %448, 0
  %450 = extractvalue { i8*, i32 } %448, 1
  br label %761

; <label>:451                                     ; preds = %211
  %452 = landingpad { i8*, i32 }
          cleanup
  %453 = extractvalue { i8*, i32 } %452, 0
  %454 = extractvalue { i8*, i32 } %452, 1
  br label %463

; <label>:455                                     ; preds = %213
  %456 = landingpad { i8*, i32 }
          cleanup
  %457 = extractvalue { i8*, i32 } %456, 0
  %458 = extractvalue { i8*, i32 } %456, 1
  br label %463

; <label>:459                                     ; preds = %214
  %460 = landingpad { i8*, i32 }
          cleanup
  %461 = extractvalue { i8*, i32 } %460, 0
  %462 = extractvalue { i8*, i32 } %460, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %35)
  br label %463

; <label>:463                                     ; preds = %459, %455, %451
  %.2029 = phi i8* [ %453, %451 ], [ %457, %455 ], [ %461, %459 ]
  %.20 = phi i32 [ %454, %451 ], [ %458, %455 ], [ %462, %459 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %33)
  br label %761

; <label>:464                                     ; preds = %216
  %465 = landingpad { i8*, i32 }
          cleanup
  %466 = extractvalue { i8*, i32 } %465, 0
  %467 = extractvalue { i8*, i32 } %465, 1
  br label %761

; <label>:468                                     ; preds = %217
  %469 = landingpad { i8*, i32 }
          cleanup
  %470 = extractvalue { i8*, i32 } %469, 0
  %471 = extractvalue { i8*, i32 } %469, 1
  br label %480

; <label>:472                                     ; preds = %219
  %473 = landingpad { i8*, i32 }
          cleanup
  %474 = extractvalue { i8*, i32 } %473, 0
  %475 = extractvalue { i8*, i32 } %473, 1
  br label %480

; <label>:476                                     ; preds = %220
  %477 = landingpad { i8*, i32 }
          cleanup
  %478 = extractvalue { i8*, i32 } %477, 0
  %479 = extractvalue { i8*, i32 } %477, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %39)
  br label %480

; <label>:480                                     ; preds = %476, %472, %468
  %.2332 = phi i8* [ %470, %468 ], [ %474, %472 ], [ %478, %476 ]
  %.23 = phi i32 [ %471, %468 ], [ %475, %472 ], [ %479, %476 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %37)
  br label %761

; <label>:481                                     ; preds = %222
  %482 = landingpad { i8*, i32 }
          cleanup
  %483 = extractvalue { i8*, i32 } %482, 0
  %484 = extractvalue { i8*, i32 } %482, 1
  br label %761

; <label>:485                                     ; preds = %223
  %486 = landingpad { i8*, i32 }
          cleanup
  %487 = extractvalue { i8*, i32 } %486, 0
  %488 = extractvalue { i8*, i32 } %486, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %41)
  br label %761

; <label>:489                                     ; preds = %225
  %490 = landingpad { i8*, i32 }
          cleanup
  %491 = extractvalue { i8*, i32 } %490, 0
  %492 = extractvalue { i8*, i32 } %490, 1
  br label %761

; <label>:493                                     ; preds = %226
  %494 = landingpad { i8*, i32 }
          cleanup
  %495 = extractvalue { i8*, i32 } %494, 0
  %496 = extractvalue { i8*, i32 } %494, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %43)
  br label %761

; <label>:497                                     ; preds = %229
  %498 = landingpad { i8*, i32 }
          cleanup
  %499 = extractvalue { i8*, i32 } %498, 0
  %500 = extractvalue { i8*, i32 } %498, 1
  br label %761

; <label>:501                                     ; preds = %230
  %502 = landingpad { i8*, i32 }
          cleanup
  %503 = extractvalue { i8*, i32 } %502, 0
  %504 = extractvalue { i8*, i32 } %502, 1
  br label %509

; <label>:505                                     ; preds = %231
  %506 = landingpad { i8*, i32 }
          cleanup
  %507 = extractvalue { i8*, i32 } %506, 0
  %508 = extractvalue { i8*, i32 } %506, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %47)
  br label %509

; <label>:509                                     ; preds = %505, %501
  %.2736 = phi i8* [ %503, %501 ], [ %507, %505 ]
  %.27 = phi i32 [ %504, %501 ], [ %508, %505 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %45)
  br label %761

; <label>:510                                     ; preds = %233
  %511 = landingpad { i8*, i32 }
          cleanup
  %512 = extractvalue { i8*, i32 } %511, 0
  %513 = extractvalue { i8*, i32 } %511, 1
  br label %761

; <label>:514                                     ; preds = %234
  %515 = landingpad { i8*, i32 }
          cleanup
  %516 = extractvalue { i8*, i32 } %515, 0
  %517 = extractvalue { i8*, i32 } %515, 1
  br label %522

; <label>:518                                     ; preds = %235
  %519 = landingpad { i8*, i32 }
          cleanup
  %520 = extractvalue { i8*, i32 } %519, 0
  %521 = extractvalue { i8*, i32 } %519, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %51)
  br label %522

; <label>:522                                     ; preds = %518, %514
  %.2938 = phi i8* [ %516, %514 ], [ %520, %518 ]
  %.29 = phi i32 [ %517, %514 ], [ %521, %518 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %49)
  br label %761

; <label>:523                                     ; preds = %237
  %524 = landingpad { i8*, i32 }
          cleanup
  %525 = extractvalue { i8*, i32 } %524, 0
  %526 = extractvalue { i8*, i32 } %524, 1
  br label %761

; <label>:527                                     ; preds = %238
  %528 = landingpad { i8*, i32 }
          cleanup
  %529 = extractvalue { i8*, i32 } %528, 0
  %530 = extractvalue { i8*, i32 } %528, 1
  br label %539

; <label>:531                                     ; preds = %240
  %532 = landingpad { i8*, i32 }
          cleanup
  %533 = extractvalue { i8*, i32 } %532, 0
  %534 = extractvalue { i8*, i32 } %532, 1
  br label %539

; <label>:535                                     ; preds = %241
  %536 = landingpad { i8*, i32 }
          cleanup
  %537 = extractvalue { i8*, i32 } %536, 0
  %538 = extractvalue { i8*, i32 } %536, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %55)
  br label %539

; <label>:539                                     ; preds = %535, %531, %527
  %.3241 = phi i8* [ %529, %527 ], [ %533, %531 ], [ %537, %535 ]
  %.32 = phi i32 [ %530, %527 ], [ %534, %531 ], [ %538, %535 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %53)
  br label %761

; <label>:540                                     ; preds = %244
  %541 = landingpad { i8*, i32 }
          cleanup
  %542 = extractvalue { i8*, i32 } %541, 0
  %543 = extractvalue { i8*, i32 } %541, 1
  br label %761

; <label>:544                                     ; preds = %245
  %545 = landingpad { i8*, i32 }
          cleanup
  %546 = extractvalue { i8*, i32 } %545, 0
  %547 = extractvalue { i8*, i32 } %545, 1
  br label %556

; <label>:548                                     ; preds = %247
  %549 = landingpad { i8*, i32 }
          cleanup
  %550 = extractvalue { i8*, i32 } %549, 0
  %551 = extractvalue { i8*, i32 } %549, 1
  br label %556

; <label>:552                                     ; preds = %248
  %553 = landingpad { i8*, i32 }
          cleanup
  %554 = extractvalue { i8*, i32 } %553, 0
  %555 = extractvalue { i8*, i32 } %553, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %59)
  br label %556

; <label>:556                                     ; preds = %552, %548, %544
  %.3544 = phi i8* [ %546, %544 ], [ %550, %548 ], [ %554, %552 ]
  %.35 = phi i32 [ %547, %544 ], [ %551, %548 ], [ %555, %552 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %57)
  br label %761

; <label>:557                                     ; preds = %252
  %558 = landingpad { i8*, i32 }
          cleanup
  %559 = extractvalue { i8*, i32 } %558, 0
  %560 = extractvalue { i8*, i32 } %558, 1
  br label %761

; <label>:561                                     ; preds = %253
  %562 = landingpad { i8*, i32 }
          cleanup
  %563 = extractvalue { i8*, i32 } %562, 0
  %564 = extractvalue { i8*, i32 } %562, 1
  br label %573

; <label>:565                                     ; preds = %255
  %566 = landingpad { i8*, i32 }
          cleanup
  %567 = extractvalue { i8*, i32 } %566, 0
  %568 = extractvalue { i8*, i32 } %566, 1
  br label %573

; <label>:569                                     ; preds = %256
  %570 = landingpad { i8*, i32 }
          cleanup
  %571 = extractvalue { i8*, i32 } %570, 0
  %572 = extractvalue { i8*, i32 } %570, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %63)
  br label %573

; <label>:573                                     ; preds = %569, %565, %561
  %.3847 = phi i8* [ %563, %561 ], [ %567, %565 ], [ %571, %569 ]
  %.38 = phi i32 [ %564, %561 ], [ %568, %565 ], [ %572, %569 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %61)
  br label %761

; <label>:574                                     ; preds = %260
  %575 = landingpad { i8*, i32 }
          cleanup
  %576 = extractvalue { i8*, i32 } %575, 0
  %577 = extractvalue { i8*, i32 } %575, 1
  br label %761

; <label>:578                                     ; preds = %261
  %579 = landingpad { i8*, i32 }
          cleanup
  %580 = extractvalue { i8*, i32 } %579, 0
  %581 = extractvalue { i8*, i32 } %579, 1
  br label %590

; <label>:582                                     ; preds = %263
  %583 = landingpad { i8*, i32 }
          cleanup
  %584 = extractvalue { i8*, i32 } %583, 0
  %585 = extractvalue { i8*, i32 } %583, 1
  br label %590

; <label>:586                                     ; preds = %264
  %587 = landingpad { i8*, i32 }
          cleanup
  %588 = extractvalue { i8*, i32 } %587, 0
  %589 = extractvalue { i8*, i32 } %587, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %67)
  br label %590

; <label>:590                                     ; preds = %586, %582, %578
  %.4150 = phi i8* [ %580, %578 ], [ %584, %582 ], [ %588, %586 ]
  %.41 = phi i32 [ %581, %578 ], [ %585, %582 ], [ %589, %586 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %65)
  br label %761

; <label>:591                                     ; preds = %268
  %592 = landingpad { i8*, i32 }
          cleanup
  %593 = extractvalue { i8*, i32 } %592, 0
  %594 = extractvalue { i8*, i32 } %592, 1
  br label %761

; <label>:595                                     ; preds = %269
  %596 = landingpad { i8*, i32 }
          cleanup
  %597 = extractvalue { i8*, i32 } %596, 0
  %598 = extractvalue { i8*, i32 } %596, 1
  br label %603

; <label>:599                                     ; preds = %270
  %600 = landingpad { i8*, i32 }
          cleanup
  %601 = extractvalue { i8*, i32 } %600, 0
  %602 = extractvalue { i8*, i32 } %600, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %71)
  br label %603

; <label>:603                                     ; preds = %599, %595
  %.4352 = phi i8* [ %597, %595 ], [ %601, %599 ]
  %.43 = phi i32 [ %598, %595 ], [ %602, %599 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %69)
  br label %761

; <label>:604                                     ; preds = %272
  %605 = landingpad { i8*, i32 }
          cleanup
  %606 = extractvalue { i8*, i32 } %605, 0
  %607 = extractvalue { i8*, i32 } %605, 1
  br label %761

; <label>:608                                     ; preds = %273
  %609 = landingpad { i8*, i32 }
          cleanup
  %610 = extractvalue { i8*, i32 } %609, 0
  %611 = extractvalue { i8*, i32 } %609, 1
  br label %620

; <label>:612                                     ; preds = %275
  %613 = landingpad { i8*, i32 }
          cleanup
  %614 = extractvalue { i8*, i32 } %613, 0
  %615 = extractvalue { i8*, i32 } %613, 1
  br label %620

; <label>:616                                     ; preds = %276
  %617 = landingpad { i8*, i32 }
          cleanup
  %618 = extractvalue { i8*, i32 } %617, 0
  %619 = extractvalue { i8*, i32 } %617, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %75)
  br label %620

; <label>:620                                     ; preds = %616, %612, %608
  %.4655 = phi i8* [ %610, %608 ], [ %614, %612 ], [ %618, %616 ]
  %.46 = phi i32 [ %611, %608 ], [ %615, %612 ], [ %619, %616 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %73)
  br label %761

; <label>:621                                     ; preds = %278
  %622 = landingpad { i8*, i32 }
          cleanup
  %623 = extractvalue { i8*, i32 } %622, 0
  %624 = extractvalue { i8*, i32 } %622, 1
  br label %761

; <label>:625                                     ; preds = %279
  %626 = landingpad { i8*, i32 }
          cleanup
  %627 = extractvalue { i8*, i32 } %626, 0
  %628 = extractvalue { i8*, i32 } %626, 1
  br label %637

; <label>:629                                     ; preds = %281
  %630 = landingpad { i8*, i32 }
          cleanup
  %631 = extractvalue { i8*, i32 } %630, 0
  %632 = extractvalue { i8*, i32 } %630, 1
  br label %637

; <label>:633                                     ; preds = %282
  %634 = landingpad { i8*, i32 }
          cleanup
  %635 = extractvalue { i8*, i32 } %634, 0
  %636 = extractvalue { i8*, i32 } %634, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %79)
  br label %637

; <label>:637                                     ; preds = %633, %629, %625
  %.4958 = phi i8* [ %627, %625 ], [ %631, %629 ], [ %635, %633 ]
  %.49 = phi i32 [ %628, %625 ], [ %632, %629 ], [ %636, %633 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %77)
  br label %761

; <label>:638                                     ; preds = %284
  %639 = landingpad { i8*, i32 }
          cleanup
  %640 = extractvalue { i8*, i32 } %639, 0
  %641 = extractvalue { i8*, i32 } %639, 1
  br label %761

; <label>:642                                     ; preds = %285
  %643 = landingpad { i8*, i32 }
          cleanup
  %644 = extractvalue { i8*, i32 } %643, 0
  %645 = extractvalue { i8*, i32 } %643, 1
  br label %654

; <label>:646                                     ; preds = %287
  %647 = landingpad { i8*, i32 }
          cleanup
  %648 = extractvalue { i8*, i32 } %647, 0
  %649 = extractvalue { i8*, i32 } %647, 1
  br label %654

; <label>:650                                     ; preds = %288
  %651 = landingpad { i8*, i32 }
          cleanup
  %652 = extractvalue { i8*, i32 } %651, 0
  %653 = extractvalue { i8*, i32 } %651, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %83)
  br label %654

; <label>:654                                     ; preds = %650, %646, %642
  %.5261 = phi i8* [ %644, %642 ], [ %648, %646 ], [ %652, %650 ]
  %.52 = phi i32 [ %645, %642 ], [ %649, %646 ], [ %653, %650 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %81)
  br label %761

; <label>:655                                     ; preds = %290
  %656 = landingpad { i8*, i32 }
          cleanup
  %657 = extractvalue { i8*, i32 } %656, 0
  %658 = extractvalue { i8*, i32 } %656, 1
  br label %761

; <label>:659                                     ; preds = %291
  %660 = landingpad { i8*, i32 }
          cleanup
  %661 = extractvalue { i8*, i32 } %660, 0
  %662 = extractvalue { i8*, i32 } %660, 1
  br label %671

; <label>:663                                     ; preds = %293
  %664 = landingpad { i8*, i32 }
          cleanup
  %665 = extractvalue { i8*, i32 } %664, 0
  %666 = extractvalue { i8*, i32 } %664, 1
  br label %671

; <label>:667                                     ; preds = %294
  %668 = landingpad { i8*, i32 }
          cleanup
  %669 = extractvalue { i8*, i32 } %668, 0
  %670 = extractvalue { i8*, i32 } %668, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %87)
  br label %671

; <label>:671                                     ; preds = %667, %663, %659
  %.5564 = phi i8* [ %661, %659 ], [ %665, %663 ], [ %669, %667 ]
  %.55 = phi i32 [ %662, %659 ], [ %666, %663 ], [ %670, %667 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %85)
  br label %761

; <label>:672                                     ; preds = %296
  %673 = landingpad { i8*, i32 }
          cleanup
  %674 = extractvalue { i8*, i32 } %673, 0
  %675 = extractvalue { i8*, i32 } %673, 1
  br label %761

; <label>:676                                     ; preds = %297
  %677 = landingpad { i8*, i32 }
          cleanup
  %678 = extractvalue { i8*, i32 } %677, 0
  %679 = extractvalue { i8*, i32 } %677, 1
  br label %684

; <label>:680                                     ; preds = %298
  %681 = landingpad { i8*, i32 }
          cleanup
  %682 = extractvalue { i8*, i32 } %681, 0
  %683 = extractvalue { i8*, i32 } %681, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %91)
  br label %684

; <label>:684                                     ; preds = %680, %676
  %.5766 = phi i8* [ %678, %676 ], [ %682, %680 ]
  %.57 = phi i32 [ %679, %676 ], [ %683, %680 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %89)
  br label %761

; <label>:685                                     ; preds = %300
  %686 = landingpad { i8*, i32 }
          cleanup
  %687 = extractvalue { i8*, i32 } %686, 0
  %688 = extractvalue { i8*, i32 } %686, 1
  br label %761

; <label>:689                                     ; preds = %301
  %690 = landingpad { i8*, i32 }
          cleanup
  %691 = extractvalue { i8*, i32 } %690, 0
  %692 = extractvalue { i8*, i32 } %690, 1
  br label %701

; <label>:693                                     ; preds = %303
  %694 = landingpad { i8*, i32 }
          cleanup
  %695 = extractvalue { i8*, i32 } %694, 0
  %696 = extractvalue { i8*, i32 } %694, 1
  br label %701

; <label>:697                                     ; preds = %304
  %698 = landingpad { i8*, i32 }
          cleanup
  %699 = extractvalue { i8*, i32 } %698, 0
  %700 = extractvalue { i8*, i32 } %698, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %95)
  br label %701

; <label>:701                                     ; preds = %697, %693, %689
  %.6069 = phi i8* [ %691, %689 ], [ %695, %693 ], [ %699, %697 ]
  %.60 = phi i32 [ %692, %689 ], [ %696, %693 ], [ %700, %697 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %93)
  br label %761

; <label>:702                                     ; preds = %308
  %703 = landingpad { i8*, i32 }
          cleanup
  %704 = extractvalue { i8*, i32 } %703, 0
  %705 = extractvalue { i8*, i32 } %703, 1
  br label %761

; <label>:706                                     ; preds = %309
  %707 = landingpad { i8*, i32 }
          cleanup
  %708 = extractvalue { i8*, i32 } %707, 0
  %709 = extractvalue { i8*, i32 } %707, 1
  br label %718

; <label>:710                                     ; preds = %311
  %711 = landingpad { i8*, i32 }
          cleanup
  %712 = extractvalue { i8*, i32 } %711, 0
  %713 = extractvalue { i8*, i32 } %711, 1
  br label %718

; <label>:714                                     ; preds = %312
  %715 = landingpad { i8*, i32 }
          cleanup
  %716 = extractvalue { i8*, i32 } %715, 0
  %717 = extractvalue { i8*, i32 } %715, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %99)
  br label %718

; <label>:718                                     ; preds = %714, %710, %706
  %.6372 = phi i8* [ %708, %706 ], [ %712, %710 ], [ %716, %714 ]
  %.63 = phi i32 [ %709, %706 ], [ %713, %710 ], [ %717, %714 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %97)
  br label %761

; <label>:719                                     ; preds = %316
  %720 = landingpad { i8*, i32 }
          cleanup
  %721 = extractvalue { i8*, i32 } %720, 0
  %722 = extractvalue { i8*, i32 } %720, 1
  br label %761

; <label>:723                                     ; preds = %317
  %724 = landingpad { i8*, i32 }
          cleanup
  %725 = extractvalue { i8*, i32 } %724, 0
  %726 = extractvalue { i8*, i32 } %724, 1
  br label %735

; <label>:727                                     ; preds = %319
  %728 = landingpad { i8*, i32 }
          cleanup
  %729 = extractvalue { i8*, i32 } %728, 0
  %730 = extractvalue { i8*, i32 } %728, 1
  br label %735

; <label>:731                                     ; preds = %320
  %732 = landingpad { i8*, i32 }
          cleanup
  %733 = extractvalue { i8*, i32 } %732, 0
  %734 = extractvalue { i8*, i32 } %732, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %103)
  br label %735

; <label>:735                                     ; preds = %731, %727, %723
  %.6675 = phi i8* [ %725, %723 ], [ %729, %727 ], [ %733, %731 ]
  %.66 = phi i32 [ %726, %723 ], [ %730, %727 ], [ %734, %731 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %101)
  br label %761

; <label>:736                                     ; preds = %324
  %737 = landingpad { i8*, i32 }
          cleanup
  %738 = extractvalue { i8*, i32 } %737, 0
  %739 = extractvalue { i8*, i32 } %737, 1
  br label %761

; <label>:740                                     ; preds = %325
  %741 = landingpad { i8*, i32 }
          cleanup
  %742 = extractvalue { i8*, i32 } %741, 0
  %743 = extractvalue { i8*, i32 } %741, 1
  br label %752

; <label>:744                                     ; preds = %327
  %745 = landingpad { i8*, i32 }
          cleanup
  %746 = extractvalue { i8*, i32 } %745, 0
  %747 = extractvalue { i8*, i32 } %745, 1
  br label %752

; <label>:748                                     ; preds = %328
  %749 = landingpad { i8*, i32 }
          cleanup
  %750 = extractvalue { i8*, i32 } %749, 0
  %751 = extractvalue { i8*, i32 } %749, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %107)
  br label %752

; <label>:752                                     ; preds = %748, %744, %740
  %.6978 = phi i8* [ %742, %740 ], [ %746, %744 ], [ %750, %748 ]
  %.69 = phi i32 [ %743, %740 ], [ %747, %744 ], [ %751, %748 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %105)
  br label %761

; <label>:753                                     ; preds = %332
  %754 = landingpad { i8*, i32 }
          cleanup
  %755 = extractvalue { i8*, i32 } %754, 0
  %756 = extractvalue { i8*, i32 } %754, 1
  br label %761

; <label>:757                                     ; preds = %334
  %758 = landingpad { i8*, i32 }
          cleanup
  %759 = extractvalue { i8*, i32 } %758, 0
  %760 = extractvalue { i8*, i32 } %758, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %yaml)
  br label %761

; <label>:761                                     ; preds = %757, %753, %752, %736, %735, %719, %718, %702, %701, %685, %684, %672, %671, %655, %654, %638, %637, %621, %620, %604, %603, %591, %590, %574, %573, %557, %556, %540, %539, %523, %522, %510, %509, %497, %493, %489, %485, %481, %480, %464, %463, %447, %446, %430, %429, %417, %416, %395, %394, %373, %372, %360
  %.7180 = phi i8* [ %755, %753 ], [ %759, %757 ], [ %362, %360 ], [ %.413, %372 ], [ %375, %373 ], [ %.817, %394 ], [ %397, %395 ], [ %.1221, %416 ], [ %419, %417 ], [ %.1423, %429 ], [ %432, %430 ], [ %.1726, %446 ], [ %449, %447 ], [ %.2029, %463 ], [ %466, %464 ], [ %.2332, %480 ], [ %483, %481 ], [ %487, %485 ], [ %491, %489 ], [ %495, %493 ], [ %499, %497 ], [ %.2736, %509 ], [ %512, %510 ], [ %.2938, %522 ], [ %525, %523 ], [ %.3241, %539 ], [ %542, %540 ], [ %.3544, %556 ], [ %559, %557 ], [ %.3847, %573 ], [ %576, %574 ], [ %.4150, %590 ], [ %593, %591 ], [ %.4352, %603 ], [ %606, %604 ], [ %.4655, %620 ], [ %623, %621 ], [ %.4958, %637 ], [ %640, %638 ], [ %.5261, %654 ], [ %657, %655 ], [ %.5564, %671 ], [ %674, %672 ], [ %.5766, %684 ], [ %687, %685 ], [ %.6069, %701 ], [ %704, %702 ], [ %.6372, %718 ], [ %721, %719 ], [ %.6675, %735 ], [ %738, %736 ], [ %.6978, %752 ]
  %.71 = phi i32 [ %756, %753 ], [ %760, %757 ], [ %363, %360 ], [ %.4, %372 ], [ %376, %373 ], [ %.8, %394 ], [ %398, %395 ], [ %.12, %416 ], [ %420, %417 ], [ %.14, %429 ], [ %433, %430 ], [ %.17, %446 ], [ %450, %447 ], [ %.20, %463 ], [ %467, %464 ], [ %.23, %480 ], [ %484, %481 ], [ %488, %485 ], [ %492, %489 ], [ %496, %493 ], [ %500, %497 ], [ %.27, %509 ], [ %513, %510 ], [ %.29, %522 ], [ %526, %523 ], [ %.32, %539 ], [ %543, %540 ], [ %.35, %556 ], [ %560, %557 ], [ %.38, %573 ], [ %577, %574 ], [ %.41, %590 ], [ %594, %591 ], [ %.43, %603 ], [ %607, %604 ], [ %.46, %620 ], [ %624, %621 ], [ %.49, %637 ], [ %641, %638 ], [ %.52, %654 ], [ %658, %655 ], [ %.55, %671 ], [ %675, %672 ], [ %.57, %684 ], [ %688, %685 ], [ %.60, %701 ], [ %705, %702 ], [ %.63, %718 ], [ %722, %719 ], [ %.66, %735 ], [ %739, %736 ], [ %.69, %752 ]
  invoke void @_ZN8YAML_DocD1Ev(%class.YAML_Doc* nonnull %doc)
          to label %762 unwind label %765

; <label>:762                                     ; preds = %761, %359, %337
  %.7281 = phi i8* [ %.7180, %761 ], [ %339, %337 ], [ %.211, %359 ]
  %.72 = phi i32 [ %.71, %761 ], [ %340, %337 ], [ %.2, %359 ]
  %763 = insertvalue { i8*, i32 } undef, i8* %.7281, 0
  %764 = insertvalue { i8*, i32 } %763, i32 %.72, 1
  resume { i8*, i32 } %764

; <label>:765                                     ; preds = %761
  %766 = landingpad { i8*, i32 }
          catch i8* null
  %767 = extractvalue { i8*, i32 } %766, 0
  call void @__clang_call_terminate(i8* %767) #25
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: inlinehint uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #5 {
  %1 = icmp eq i8* %__s, null
  br i1 %1, label %2, label %11

; <label>:2                                       ; preds = %0
  %3 = bitcast %"class.std::basic_ostream"* %__out to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %5 = getelementptr i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = bitcast %"class.std::basic_ostream"* %__out to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 %7
  %10 = bitcast i8* %9 to %"class.std::basic_ios"*
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %10, i32 1)
  br label %14

; <label>:11                                      ; preds = %0
  %12 = tail call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* nonnull %__s)
  %13 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %__out, i8* nonnull %__s, i64 %12)
  br label %14

; <label>:14                                      ; preds = %11, %2
  ret %"class.std::basic_ostream"* %__out
}

; Function Attrs: uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #0 align 2 {
  %1 = tail call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this)
  %2 = tail call i32 @_ZStorSt12_Ios_IostateS_(i32 %1, i32 %__state)
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %2)
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 0, i32 5
  %2 = load i32, i32* %1, align 8, !tbaa !15
  ret i32 %2
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #7 comdat {
  %1 = or i32 %__b, %__a
  ret i32 %1
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #1

; Function Attrs: nounwind readonly uwtable
define linkonce_odr i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* nocapture readonly %__s) #8 comdat align 2 {
  %1 = tail call i64 @strlen(i8* %__s) #2
  ret i64 %1
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #9

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #1

; Function Attrs: inlinehint uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #5 {
  %1 = bitcast %"class.std::basic_ostream"* %__os to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !13
  %3 = getelementptr i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = bitcast %"class.std::basic_ostream"* %__os to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 %5
  %8 = bitcast i8* %7 to %"class.std::basic_ios"*
  %9 = tail call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %8, i8 signext 10)
  %10 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %__os, i8 signext %9)
  %11 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %10)
  ret %"class.std::basic_ostream"* %11
}

; Function Attrs: uwtable
define available_externally signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* nocapture readonly %this, i8 signext %__c) #0 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 5
  %2 = load %"class.std::ctype"*, %"class.std::ctype"** %1, align 8, !tbaa !22
  %3 = tail call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %2)
  %4 = tail call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* nonnull %3, i8 signext %__c)
  ret i8 %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* readnone %__f) #5 comdat {
  %1 = icmp eq %"class.std::ctype"* %__f, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

; <label>:3                                       ; preds = %0
  ret %"class.std::ctype"* %__f
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #10

; Function Attrs: uwtable
define linkonce_odr signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #0 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this, i64 0, i32 8
  %2 = load i8, i8* %1, align 8, !tbaa !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = zext i8 %__c to i64
  %6 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this, i64 0, i32 9, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !27
  br label %14

; <label>:8                                       ; preds = %0
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %this)
  %9 = bitcast %"class.std::ctype"* %this to i8 (%"class.std::ctype"*, i8)***
  %10 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %9, align 8, !tbaa !13
  %11 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %10, i64 6
  %12 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %11, align 8
  %13 = tail call signext i8 %12(%"class.std::ctype"* nonnull %this, i8 signext %__c)
  br label %14

; <label>:14                                      ; preds = %8, %4
  %.0 = phi i8 [ %7, %4 ], [ %13, %8 ]
  ret i8 %.0
}

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #1

; Function Attrs: inlinehint uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #5 {
  %1 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %__os)
  ret %"class.std::basic_ostream"* %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #1

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nocapture %__pf) #0 align 2 {
  %1 = tail call dereferenceable(272) %"class.std::basic_ostream"* %__pf(%"class.std::basic_ostream"* dereferenceable(272) %this)
  ret %"class.std::basic_ostream"* %1
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #11

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture nonnull readonly %__nptr) #12 {
  %1 = tail call i64 @strtol(i8* nocapture nonnull %__nptr, i8** null, i32 10) #2
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #13

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0
  %2 = tail call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %1, i8* %2, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__a)
  %3 = icmp eq i8* %__s, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* nonnull %__s)
  %6 = getelementptr inbounds i8, i8* %__s, i64 %5
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = phi i8* [ %6, %4 ], [ getelementptr (i8, i8* null, i64 -1), %7 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, i8* %9)
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define available_externally i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* readnone %this) #14 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 2
  %2 = bitcast %union.anon* %1 to i8*
  ret i8* %2
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* nocapture %this, i8* %__dat, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a) unnamed_addr #15 align 2 {
  %1 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, i64 0, i32 0
  store i8* %__dat, i8** %1, align 8, !tbaa !28
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew = alloca i64, align 8
  %1 = tail call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__beg)
  %.not = xor i1 %1, true
  %2 = icmp eq i8* %__beg, %__end
  %or.cond = or i1 %2, %.not
  br i1 %or.cond, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0)) #27
  unreachable

; <label>:4                                       ; preds = %0
  %5 = bitcast i64* %__dnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = tail call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__beg, i8* %__end)
  store i64 %6, i64* %__dnew, align 8, !tbaa !30
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this, i64* nonnull dereferenceable(8) %__dnew, i64 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this, i8* %9)
  %10 = load i64, i64* %__dnew, align 8, !tbaa !30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this, i64 %10)
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %12, i8* %__beg, i8* %__end)
  %13 = load i64, i64* %__dnew, align 8, !tbaa !30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %13)
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret void
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* readnone %__ptr) #7 comdat {
  %1 = icmp eq i8* %__ptr, null
  ret i1 %1
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8*) #10

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* readnone %__last) #7 comdat {
  %1 = tail call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last)
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #7 comdat {
  %1 = ptrtoint i8* %__last to i64
  %2 = ptrtoint i8* %__first to i64
  %3 = sub i64 %1, %2
  ret i64 %3
}

declare i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) #1

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* nocapture %this, i8* %__p) #15 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0, i32 0
  store i8* %__p, i8** %1, align 8, !tbaa !31
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* nocapture %this, i64 %__capacity) #15 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 2, i32 0
  store i64 %__capacity, i64* %1, align 8, !tbaa !30
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8, !tbaa !31
  ret i8* %2
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %__p, i8* %__k1, i8* %__k2) #15 align 2 {
  %1 = ptrtoint i8* %__k2 to i64
  %2 = ptrtoint i8* %__k1 to i64
  %3 = sub i64 %1, %2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %__p, i8* %__k1, i64 %3)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %__d, i8* nocapture readonly %__s, i64 %__n) #15 align 2 {
  %1 = icmp eq i64 %__n, 1
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__d, i8* dereferenceable(1) %__s)
  br label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %__d, i8* %__s, i64 %__n)
  br label %5

; <label>:5                                       ; preds = %3, %2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt11char_traitsIcE6assignERcRKc(i8* nocapture dereferenceable(1) %__c1, i8* nocapture readonly dereferenceable(1) %__c2) #15 comdat align 2 {
  %1 = load i8, i8* %__c2, align 1, !tbaa !27
  store i8 %1, i8* %__c1, align 1, !tbaa !27
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %__s1, i8* nocapture readonly %__s2, i64 %__n) #15 comdat align 2 {
  %1 = icmp eq i64 %__n, 0
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__s1, i8* %__s2, i64 %__n, i32 1, i1 false)
  br label %3

; <label>:3                                       ; preds = %2, %0
  ret i8* %__s1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* nocapture %this, i64 %__n) #15 align 2 {
  %1 = alloca i8, align 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %__n)
  %2 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  %3 = getelementptr inbounds i8, i8* %2, i64 %__n
  store i8 0, i8* %1, align 1, !tbaa !27
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %3, i8* nonnull dereferenceable(1) %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* nocapture %this, i64 %__length) #15 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 1
  store i64 %__length, i64* %1, align 8, !tbaa !33
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %this) unnamed_addr #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this)
  ret void
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this) #16 align 2 {
  %1 = tail call zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* %this)
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 2, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* %this, i64 %4) #2
  br label %5

; <label>:5                                       ; preds = %2, %0
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* readonly %this) #6 align 2 {
  %1 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  %2 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this)
  %3 = icmp eq i8* %1, %2
  ret i1 %3
}

; Function Attrs: norecurse nounwind readnone uwtable
define available_externally i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* readnone %this) #14 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 2
  %2 = bitcast %union.anon* %1 to i8*
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* readonly %this, i64 %__size) #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this)
  %2 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  %3 = add i64 %__size, 1
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaIcEE10deallocateERS1_Pcm(%"class.std::ios_base::Init"* nonnull dereferenceable(1) %1, i8* %2, i64 %3)
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define available_externally dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* readnone %this) #14 align 2 {
  %1 = bitcast %"class.std::__cxx11::basic_string"* %this to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIcEE10deallocateERS1_Pcm(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, i8* %__p, i64 %__n) #16 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.std::ios_base::Init"* %1, i8* %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.std::ios_base::Init"* nocapture readnone %this, i8* %__p, i64) #16 comdat align 2 {
  tail call void @_ZdlPv(i8* %__p) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #17

; Function Attrs: inlinehint uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) %__os, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__str) #5 {
  %1 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %2 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %3 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %__os, i8* %1, i64 %2)
  ret %"class.std::basic_ostream"* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* nocapture readonly %this) #6 align 2 {
  %1 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  ret i8* %1
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 1
  %2 = load i64, i64* %1, align 8, !tbaa !33
  ret i64 %2
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #18 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_generate_matrix.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.2()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.3)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.3, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %nx, i32 %ny, i32 %nz, %struct.HPC_Sparse_Matrix_STRUCT** nocapture %A, double** nocapture %x, double** nocapture %b, double** nocapture %xexact) #0 {
  %1 = tail call noalias i8* @_Znwm(i64 96) #28
  %2 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8**
  store i8* %1, i8** %2, align 8, !tbaa !1
  %3 = bitcast i8* %1 to i8**
  store i8* null, i8** %3, align 8, !tbaa !34
  %4 = mul nsw i32 %ny, %nx
  %5 = mul nsw i32 %4, %nz
  %6 = icmp sgt i32 %5, 0
  %7 = ptrtoint i8* %1 to i64
  %8 = inttoptr i64 %7 to %struct.HPC_Sparse_Matrix_STRUCT*
  br i1 %6, label %10, label %9

; <label>:9                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.31, i64 0, i64 0), i32 85, i8* nonnull getelementptr inbounds ([91 x i8], [91 x i8]* @__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_, i64 0, i64 0)) #25
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
  %19 = tail call noalias i8* @_Znam(i64 %18) #28
  %20 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %8, i64 0, i32 8
  %21 = bitcast i32** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !35
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 8)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias i8* @_Znam(i64 %25) #28
  %27 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %28 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %27, i64 0, i32 9
  %29 = bitcast double*** %28 to i8**
  store i8* %26, i8** %29, align 8, !tbaa !36
  %30 = tail call noalias i8* @_Znam(i64 %25) #28
  %31 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %32 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %31, i64 0, i32 10
  %33 = bitcast i32*** %32 to i8**
  store i8* %30, i8** %33, align 8, !tbaa !37
  %34 = tail call noalias i8* @_Znam(i64 %25) #28
  %35 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %36 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %35, i64 0, i32 11
  %37 = bitcast double*** %36 to i8**
  store i8* %34, i8** %37, align 8, !tbaa !38
  %38 = tail call noalias i8* @_Znam(i64 %25) #28
  %39 = bitcast double** %x to i8**
  store i8* %38, i8** %39, align 8, !tbaa !1
  %40 = tail call noalias i8* @_Znam(i64 %25) #28
  %41 = bitcast double** %b to i8**
  store i8* %40, i8** %41, align 8, !tbaa !1
  %42 = tail call noalias i8* @_Znam(i64 %25) #28
  %43 = bitcast double** %xexact to i8**
  store i8* %42, i8** %43, align 8, !tbaa !1
  %44 = sext i32 %11 to i64
  %45 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %44, i64 8)
  %46 = extractvalue { i64, i1 } %45, 1
  %47 = extractvalue { i64, i1 } %45, 0
  %48 = select i1 %46, i64 -1, i64 %47
  %49 = tail call noalias i8* @_Znam(i64 %48) #28
  %50 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %51 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %50, i64 0, i32 12
  %52 = bitcast double** %51 to i8**
  store i8* %49, i8** %52, align 8, !tbaa !39
  %53 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %44, i64 4)
  %54 = extractvalue { i64, i1 } %53, 1
  %55 = extractvalue { i64, i1 } %53, 0
  %56 = select i1 %54, i64 -1, i64 %55
  %57 = tail call noalias i8* @_Znam(i64 %56) #28
  %58 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %59 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %58, i64 0, i32 13
  %60 = bitcast i32** %59 to i8**
  store i8* %57, i8** %60, align 8, !tbaa !40
  %61 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %62 = icmp sgt i32 %nz, 0
  br i1 %62, label %.preheader9.lr.ph, label %._crit_edge42

.preheader9.lr.ph:                                ; preds = %10
  %63 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %61, i64 0, i32 13
  %64 = load i32*, i32** %63, align 8, !tbaa !40
  %65 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %61, i64 0, i32 12
  %66 = load double*, double** %65, align 8, !tbaa !39
  %67 = icmp sgt i32 %ny, 0
  %68 = icmp sgt i32 %nx, 0
  br label %.preheader9

.preheader9:                                      ; preds = %._crit_edge33, %.preheader9.lr.ph
  %curvalptr.041 = phi double* [ %66, %.preheader9.lr.ph ], [ %curvalptr.1.lcssa, %._crit_edge33 ]
  %curindptr.040 = phi i32* [ %64, %.preheader9.lr.ph ], [ %curindptr.1.lcssa, %._crit_edge33 ]
  %iz.037 = phi i32 [ 0, %.preheader9.lr.ph ], [ %70, %._crit_edge33 ]
  br i1 %67, label %.preheader8.lr.ph, label %._crit_edge33

.preheader8.lr.ph:                                ; preds = %.preheader9
  %69 = mul i32 %iz.037, %ny
  br label %.preheader8

.preheader8:                                      ; preds = %._crit_edge, %.preheader8.lr.ph
  %curvalptr.132 = phi double* [ %curvalptr.041, %.preheader8.lr.ph ], [ %curvalptr.2.lcssa, %._crit_edge ]
  %curindptr.131 = phi i32* [ %curindptr.040, %.preheader8.lr.ph ], [ %curindptr.2.lcssa, %._crit_edge ]
  %iy.028 = phi i32 [ 0, %.preheader8.lr.ph ], [ %71, %._crit_edge ]
  br i1 %68, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader8
  %tmp = add i32 %iy.028, %69
  %tmp4 = mul i32 %tmp, %nx
  br label %72

._crit_edge33.loopexit:                           ; preds = %._crit_edge
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %.preheader9
  %curvalptr.1.lcssa = phi double* [ %curvalptr.041, %.preheader9 ], [ %curvalptr.2.lcssa, %._crit_edge33.loopexit ]
  %curindptr.1.lcssa = phi i32* [ %curindptr.040, %.preheader9 ], [ %curindptr.2.lcssa, %._crit_edge33.loopexit ]
  %70 = add nuw nsw i32 %iz.037, 1
  %exitcond47 = icmp eq i32 %70, %nz
  br i1 %exitcond47, label %._crit_edge33.._crit_edge42_crit_edge, label %.preheader9

._crit_edge33.._crit_edge42_crit_edge:            ; preds = %._crit_edge33
  %.pre = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  br label %._crit_edge42

._crit_edge.loopexit:                             ; preds = %85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader8
  %curvalptr.2.lcssa = phi double* [ %curvalptr.132, %.preheader8 ], [ %curvalptr.7, %._crit_edge.loopexit ]
  %curindptr.2.lcssa = phi i32* [ %curindptr.131, %.preheader8 ], [ %curindptr.6, %._crit_edge.loopexit ]
  %71 = add nuw nsw i32 %iy.028, 1
  %exitcond46 = icmp eq i32 %71, %ny
  br i1 %exitcond46, label %._crit_edge33.loopexit, label %.preheader8

; <label>:72                                      ; preds = %85, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %85 ]
  %curvalptr.225 = phi double* [ %curvalptr.132, %.lr.ph ], [ %curvalptr.7, %85 ]
  %curindptr.224 = phi i32* [ %curindptr.131, %.lr.ph ], [ %curindptr.6, %85 ]
  %73 = trunc i64 %indvars.iv to i32
  %74 = add i32 %73, %tmp4
  %75 = sext i32 %74 to i64
  %76 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %77 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %76, i64 0, i32 9
  %78 = load double**, double*** %77, align 8, !tbaa !36
  %79 = getelementptr inbounds double*, double** %78, i64 %75
  store double* %curvalptr.225, double** %79, align 8, !tbaa !1
  %80 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %81 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %80, i64 0, i32 10
  %82 = load i32**, i32*** %81, align 8, !tbaa !37
  %83 = getelementptr inbounds i32*, i32** %82, i64 %75
  store i32* %curindptr.224, i32** %83, align 8, !tbaa !1
  br label %.preheader7

.preheader7:                                      ; preds = %102, %72
  %curvalptr.321 = phi double* [ %curvalptr.225, %72 ], [ %curvalptr.7, %102 ]
  %sz.020 = phi i32 [ -1, %72 ], [ %103, %102 ]
  %nnzrow.019 = phi i32 [ 0, %72 ], [ %nnzrow.3, %102 ]
  %curindptr.318 = phi i32* [ %curindptr.224, %72 ], [ %curindptr.6, %102 ]
  %84 = mul i32 %sz.020, %ny
  br label %.preheader

; <label>:85                                      ; preds = %102
  %86 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %87 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %86, i64 0, i32 8
  %88 = load i32*, i32** %87, align 8, !tbaa !35
  %89 = getelementptr inbounds i32, i32* %88, i64 %75
  store i32 %nnzrow.3, i32* %89, align 4, !tbaa !5
  %90 = load double*, double** %x, align 8, !tbaa !1
  %91 = getelementptr inbounds double, double* %90, i64 %75
  store double 0.000000e+00, double* %91, align 8, !tbaa !7
  %92 = add nsw i32 %nnzrow.3, -1
  %93 = sitofp i32 %92 to double
  %94 = fsub double 2.700000e+01, %93
  %95 = load double*, double** %b, align 8, !tbaa !1
  %96 = getelementptr inbounds double, double* %95, i64 %75
  store double %94, double* %96, align 8, !tbaa !7
  %97 = load double*, double** %xexact, align 8, !tbaa !1
  %98 = getelementptr inbounds double, double* %97, i64 %75
  store double 1.000000e+00, double* %98, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond45, label %._crit_edge.loopexit, label %72

.preheader:                                       ; preds = %104, %.preheader7
  %curvalptr.417 = phi double* [ %curvalptr.321, %.preheader7 ], [ %curvalptr.7, %104 ]
  %sy.016 = phi i32 [ -1, %.preheader7 ], [ %105, %104 ]
  %nnzrow.115 = phi i32 [ %nnzrow.019, %.preheader7 ], [ %nnzrow.3, %104 ]
  %curindptr.414 = phi i32* [ %curindptr.318, %.preheader7 ], [ %curindptr.6, %104 ]
  %tmp5 = add i32 %sy.016, %84
  %tmp6 = mul i32 %tmp5, %nx
  %99 = add i32 %tmp6, %74
  %100 = add nsw i32 %sy.016, %iy.028
  %101 = icmp slt i32 %100, %ny
  br label %106

; <label>:102                                     ; preds = %104
  %103 = add nsw i32 %sz.020, 1
  %exitcond44 = icmp eq i32 %103, 2
  br i1 %exitcond44, label %85, label %.preheader7

; <label>:104                                     ; preds = %125
  %105 = add nsw i32 %sy.016, 1
  %exitcond43 = icmp eq i32 %105, 2
  br i1 %exitcond43, label %102, label %.preheader

; <label>:106                                     ; preds = %125, %.preheader
  %curvalptr.513 = phi double* [ %curvalptr.417, %.preheader ], [ %curvalptr.7, %125 ]
  %sx.012 = phi i32 [ -1, %.preheader ], [ %126, %125 ]
  %nnzrow.211 = phi i32 [ %nnzrow.115, %.preheader ], [ %nnzrow.3, %125 ]
  %curindptr.510 = phi i32* [ %curindptr.414, %.preheader ], [ %curindptr.6, %125 ]
  %107 = add i32 %99, %sx.012
  %108 = add nsw i32 %sx.012, %73
  %notrhs = icmp sge i32 %108, %nx
  %109 = or i32 %108, %100
  %110 = icmp slt i32 %109, 0
  %111 = or i1 %110, %notrhs
  br i1 %111, label %125, label %112

; <label>:112                                     ; preds = %106
  %113 = icmp sgt i32 %107, -1
  %or.cond = and i1 %101, %113
  %114 = icmp slt i32 %107, %5
  %or.cond3 = and i1 %114, %or.cond
  br i1 %or.cond3, label %115, label %125

; <label>:115                                     ; preds = %112
  %116 = icmp eq i32 %107, %74
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %115
  %118 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %119 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %118, i64 0, i32 11
  %120 = load double**, double*** %119, align 8, !tbaa !38
  %121 = getelementptr inbounds double*, double** %120, i64 %75
  store double* %curvalptr.513, double** %121, align 8, !tbaa !1
  br label %122

; <label>:122                                     ; preds = %117, %115
  %storemerge = phi double [ 2.700000e+01, %117 ], [ -1.000000e+00, %115 ]
  %curvalptr.6 = getelementptr inbounds double, double* %curvalptr.513, i64 1
  store double %storemerge, double* %curvalptr.513, align 8, !tbaa !7
  %123 = getelementptr inbounds i32, i32* %curindptr.510, i64 1
  store i32 %107, i32* %curindptr.510, align 4, !tbaa !5
  %124 = add nsw i32 %nnzrow.211, 1
  br label %125

; <label>:125                                     ; preds = %122, %112, %106
  %curindptr.6 = phi i32* [ %123, %122 ], [ %curindptr.510, %112 ], [ %curindptr.510, %106 ]
  %nnzrow.3 = phi i32 [ %124, %122 ], [ %nnzrow.211, %112 ], [ %nnzrow.211, %106 ]
  %curvalptr.7 = phi double* [ %curvalptr.6, %122 ], [ %curvalptr.513, %112 ], [ %curvalptr.513, %106 ]
  %126 = add nsw i32 %sx.012, 1
  %exitcond = icmp eq i32 %126, 2
  br i1 %exitcond, label %104, label %106

._crit_edge42:                                    ; preds = %._crit_edge33.._crit_edge42_crit_edge, %10
  %127 = phi %struct.HPC_Sparse_Matrix_STRUCT* [ %.pre, %._crit_edge33.._crit_edge42_crit_edge ], [ %61, %10 ]
  %128 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %127, i64 0, i32 1
  store i32 0, i32* %128, align 8, !tbaa !41
  %129 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %130 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %129, i64 0, i32 2
  store i32 %14, i32* %130, align 4, !tbaa !42
  %131 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %132 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %131, i64 0, i32 3
  store i32 %5, i32* %132, align 8, !tbaa !9
  %133 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %134 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %133, i64 0, i32 4
  store i64 %13, i64* %134, align 8, !tbaa !12
  %135 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %136 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %135, i64 0, i32 5
  store i32 %5, i32* %136, align 8, !tbaa !43
  %137 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %138 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %137, i64 0, i32 6
  store i32 %5, i32* %138, align 4, !tbaa !44
  %139 = load %struct.HPC_Sparse_Matrix_STRUCT*, %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8, !tbaa !1
  %140 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %139, i64 0, i32 7
  store i32 %11, i32* %140, align 8, !tbaa !45
  ret void
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) #19

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #11

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) #19

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_read_HPC_row.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.33()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.33() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.34)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.34, i64 0, i32 0), i8* nonnull @__dso_handle) #2
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
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i8* %data_file)
  %6 = tail call %struct._IO_FILE* @fopen(i8* %data_file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.38, i64 0, i64 0))
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.39, i64 0, i64 0), i8* %data_file)
  tail call void @exit(i32 1) #25
  unreachable

; <label>:10                                      ; preds = %0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.40, i64 0, i64 0), i32* nonnull %total_nrow)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.41, i64 0, i64 0), i64* nonnull %total_nnz)
  %13 = load i32, i32* %total_nrow, align 4, !tbaa !5
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %13 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 4)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = call noalias i8* @_Znam(i64 %19) #28
  %21 = bitcast i8* %20 to i32*
  %22 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 8)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = call noalias i8* @_Znam(i64 %25) #28
  %27 = bitcast i8* %26 to double**
  %28 = call noalias i8* @_Znam(i64 %25) #28
  %29 = bitcast i8* %28 to i32**
  %30 = call noalias i8* @_Znam(i64 %25) #28
  %31 = call noalias i8* @_Znam(i64 %25) #28
  %32 = bitcast double** %x to i8**
  store i8* %31, i8** %32, align 8, !tbaa !1
  %33 = call noalias i8* @_Znam(i64 %25) #28
  %34 = bitcast double** %b to i8**
  store i8* %33, i8** %34, align 8, !tbaa !1
  %35 = call noalias i8* @_Znam(i64 %25) #28
  %36 = bitcast double** %xexact to i8**
  store i8* %35, i8** %36, align 8, !tbaa !1
  %37 = icmp sgt i32 %13, 0
  br i1 %37, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %10
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %46
  %i.021 = phi i32 [ %47, %46 ], [ 0, %.lr.ph23.preheader ]
  %cur_local_row.020 = phi i32 [ %cur_local_row.1, %46 ], [ 0, %.lr.ph23.preheader ]
  %local_nnz.019 = phi i32 [ %local_nnz.1, %46 ], [ 0, %.lr.ph23.preheader ]
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.40, i64 0, i64 0), i32* nonnull %l)
  %39 = icmp slt i32 %i.021, %13
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %.lr.ph23
  %41 = load i32, i32* %l, align 4, !tbaa !5
  %42 = add nsw i32 %41, %local_nnz.019
  %43 = sext i32 %cur_local_row.020 to i64
  %44 = getelementptr inbounds i32, i32* %21, i64 %43
  store i32 %41, i32* %44, align 4, !tbaa !5
  %45 = add nsw i32 %cur_local_row.020, 1
  br label %46

; <label>:46                                      ; preds = %40, %.lr.ph23
  %local_nnz.1 = phi i32 [ %42, %40 ], [ %local_nnz.019, %.lr.ph23 ]
  %cur_local_row.1 = phi i32 [ %45, %40 ], [ %cur_local_row.020, %.lr.ph23 ]
  %47 = add nuw nsw i32 %i.021, 1
  %48 = load i32, i32* %total_nrow, align 4, !tbaa !5
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
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6.43, i64 0, i64 0), i32 135, i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_, i64 0, i64 0)) #25
  unreachable

; <label>:53                                      ; preds = %._crit_edge24
  %54 = sext i32 %local_nnz.0.lcssa to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 8)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %59 = call noalias i8* @_Znam(i64 %58) #28
  %60 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 4)
  %61 = extractvalue { i64, i1 } %60, 1
  %62 = extractvalue { i64, i1 } %60, 0
  %63 = select i1 %61, i64 -1, i64 %62
  %64 = call noalias i8* @_Znam(i64 %63) #28
  %65 = bitcast i8* %26 to i8**
  store i8* %59, i8** %65, align 8, !tbaa !1
  %66 = bitcast i8* %28 to i8**
  store i8* %64, i8** %66, align 8, !tbaa !1
  %67 = icmp sgt i32 %13, 1
  %68 = ptrtoint i8* %59 to i64
  %69 = inttoptr i64 %68 to double*
  %70 = ptrtoint i8* %64 to i64
  %71 = inttoptr i64 %70 to i32*
  br i1 %67, label %.lr.ph18.preheader, label %.preheader4

.lr.ph18.preheader:                               ; preds = %53
  br label %.lr.ph18

.preheader4.loopexit:                             ; preds = %.lr.ph18
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.loopexit, %53
  %72 = icmp sgt i32 %50, 0
  br i1 %72, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %.preheader4
  %73 = bitcast i32* %cur_nnz to i8*
  %74 = bitcast double* %v to i64*
  br label %87

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %75 = phi i32* [ %85, %.lr.ph18 ], [ %71, %.lr.ph18.preheader ]
  %76 = phi double* [ %82, %.lr.ph18 ], [ %69, %.lr.ph18.preheader ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph18 ], [ 1, %.lr.ph18.preheader ]
  %77 = add nsw i64 %indvars.iv26, -1
  %78 = getelementptr inbounds double*, double** %27, i64 %77
  %79 = getelementptr inbounds i32, i32* %21, i64 %77
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %76, i64 %81
  %83 = getelementptr inbounds double*, double** %27, i64 %indvars.iv26
  store double* %82, double** %83, align 8, !tbaa !1
  %84 = getelementptr inbounds i32*, i32** %29, i64 %77
  %85 = getelementptr inbounds i32, i32* %75, i64 %81
  %86 = getelementptr inbounds i32*, i32** %29, i64 %indvars.iv26
  store i32* %85, i32** %86, align 8, !tbaa !1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next27 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %.preheader4.loopexit, label %.lr.ph18

; <label>:87                                      ; preds = %.loopexit, %.lr.ph14
  %i.213 = phi i32 [ 0, %.lr.ph14 ], [ %112, %.loopexit ]
  %cur_local_row.212 = phi i32 [ 0, %.lr.ph14 ], [ %cur_local_row.3, %.loopexit ]
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.40, i64 0, i64 0), i32* nonnull %cur_nnz)
  %89 = icmp slt i32 %i.213, %13
  %90 = load i32, i32* %cur_nnz, align 4, !tbaa !5
  %91 = icmp sgt i32 %90, 0
  br i1 %89, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %87
  br i1 %91, label %.lr.ph8.preheader, label %.loopexit

.lr.ph8.preheader:                                ; preds = %.preheader3
  br label %.lr.ph8

.preheader:                                       ; preds = %87
  br i1 %91, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %.preheader
  %92 = sext i32 %cur_local_row.212 to i64
  %93 = getelementptr inbounds double*, double** %27, i64 %92
  %94 = getelementptr inbounds i32*, i32** %29, i64 %92
  br label %95

; <label>:95                                      ; preds = %95, %.lr.ph10
  %indvars.iv = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next, %95 ]
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.44, i64 0, i64 0), double* nonnull %v, i32* nonnull %l)
  %97 = load i64, i64* %74, align 8, !tbaa !7
  %98 = load double*, double** %93, align 8, !tbaa !1
  %99 = getelementptr inbounds double, double* %98, i64 %indvars.iv
  %100 = bitcast double* %99 to i64*
  store i64 %97, i64* %100, align 8, !tbaa !7
  %101 = load i32, i32* %l, align 4, !tbaa !5
  %102 = load i32*, i32** %94, align 8, !tbaa !1
  %103 = getelementptr inbounds i32, i32* %102, i64 %indvars.iv
  store i32 %101, i32* %103, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %104 = load i32, i32* %cur_nnz, align 4, !tbaa !5
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %indvars.iv.next, %105
  br i1 %106, label %95, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %95
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.preheader
  %107 = add nsw i32 %cur_local_row.212, 1
  br label %.loopexit

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %.lr.ph8
  %j.17 = phi i32 [ %109, %.lr.ph8 ], [ 0, %.lr.ph8.preheader ]
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.44, i64 0, i64 0), double* nonnull %v, i32* nonnull %l)
  %109 = add nuw nsw i32 %j.17, 1
  %110 = load i32, i32* %cur_nnz, align 4, !tbaa !5
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %.lr.ph8, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge11, %.preheader3
  %cur_local_row.3 = phi i32 [ %107, %._crit_edge11 ], [ %cur_local_row.212, %.preheader3 ], [ %cur_local_row.212, %.loopexit.loopexit ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %73) #2
  %112 = add nuw nsw i32 %i.213, 1
  %113 = load i32, i32* %total_nrow, align 4, !tbaa !5
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %87, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.preheader4
  %115 = phi i32 [ %50, %.preheader4 ], [ %113, %._crit_edge15.loopexit ]
  %116 = bitcast double* %xt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #2
  %117 = bitcast double* %bt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = bitcast double* %xxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #2
  %119 = icmp sgt i32 %115, 0
  br i1 %119, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge15
  %120 = bitcast double* %xt to i64*
  %121 = bitcast double* %bt to i64*
  %122 = bitcast double* %xxt to i64*
  br label %123

; <label>:123                                     ; preds = %143, %.lr.ph
  %i.36 = phi i32 [ 0, %.lr.ph ], [ %144, %143 ]
  %cur_local_row.45 = phi i32 [ 0, %.lr.ph ], [ %cur_local_row.5, %143 ]
  %124 = icmp slt i32 %i.36, %13
  br i1 %124, label %125, label %141

; <label>:125                                     ; preds = %123
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12.45, i64 0, i64 0), double* nonnull %xt, double* nonnull %bt, double* nonnull %xxt)
  %127 = load i64, i64* %120, align 8, !tbaa !7
  %128 = sext i32 %cur_local_row.45 to i64
  %129 = load double*, double** %x, align 8, !tbaa !1
  %130 = getelementptr inbounds double, double* %129, i64 %128
  %131 = bitcast double* %130 to i64*
  store i64 %127, i64* %131, align 8, !tbaa !7
  %132 = load i64, i64* %121, align 8, !tbaa !7
  %133 = load double*, double** %b, align 8, !tbaa !1
  %134 = getelementptr inbounds double, double* %133, i64 %128
  %135 = bitcast double* %134 to i64*
  store i64 %132, i64* %135, align 8, !tbaa !7
  %136 = load i64, i64* %122, align 8, !tbaa !7
  %137 = load double*, double** %xexact, align 8, !tbaa !1
  %138 = getelementptr inbounds double, double* %137, i64 %128
  %139 = bitcast double* %138 to i64*
  store i64 %136, i64* %139, align 8, !tbaa !7
  %140 = add nsw i32 %cur_local_row.45, 1
  br label %143

; <label>:141                                     ; preds = %123
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %6, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12.45, i64 0, i64 0), double* nonnull %v, double* nonnull %v, double* nonnull %v)
  br label %143

; <label>:143                                     ; preds = %141, %125
  %cur_local_row.5 = phi i32 [ %140, %125 ], [ %cur_local_row.45, %141 ]
  %144 = add nuw nsw i32 %i.36, 1
  %145 = load i32, i32* %total_nrow, align 4, !tbaa !5
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %123, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %143
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge15
  %147 = call i32 @fclose(%struct._IO_FILE* nonnull %6)
  %148 = call noalias i8* @_Znwm(i64 96) #28
  %149 = bitcast %struct.HPC_Sparse_Matrix_STRUCT** %A to i8**
  store i8* %148, i8** %149, align 8, !tbaa !1
  %150 = bitcast i8* %148 to i8**
  store i8* null, i8** %150, align 8, !tbaa !34
  %151 = getelementptr inbounds i8, i8* %148, i64 8
  %152 = bitcast i8* %151 to i32*
  store i32 0, i32* %152, align 8, !tbaa !41
  %153 = getelementptr inbounds i8, i8* %148, i64 12
  %154 = bitcast i8* %153 to i32*
  store i32 %14, i32* %154, align 4, !tbaa !42
  %155 = load i32, i32* %total_nrow, align 4, !tbaa !5
  %156 = bitcast i8* %148 to %struct.HPC_Sparse_Matrix_STRUCT*
  %157 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 3
  store i32 %155, i32* %157, align 8, !tbaa !9
  %158 = load i64, i64* %total_nnz, align 8, !tbaa !46
  %159 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 4
  store i64 %158, i64* %159, align 8, !tbaa !12
  %160 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 5
  store i32 %13, i32* %160, align 8, !tbaa !43
  %161 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 6
  store i32 %13, i32* %161, align 4, !tbaa !44
  %162 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 7
  store i32 %local_nnz.0.lcssa, i32* %162, align 8, !tbaa !45
  %163 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 8
  %164 = bitcast i32** %163 to i8**
  store i8* %20, i8** %164, align 8, !tbaa !35
  %165 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 9
  %166 = bitcast double*** %165 to i8**
  store i8* %26, i8** %166, align 8, !tbaa !36
  %167 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 10
  %168 = bitcast i32*** %167 to i8**
  store i8* %28, i8** %168, align 8, !tbaa !37
  %169 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %156, i64 0, i32 11
  %170 = bitcast double*** %169 to i8**
  store i8* %30, i8** %170, align 8, !tbaa !38
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #13

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #13

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #13

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #13

; Function Attrs: nounwind uwtable
define i32 @_Z16compute_residualiPKdS0_Pd(i32 %n, double* nocapture readonly %v1, double* nocapture readonly %v2, double* nocapture %residual) #16 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %local_residual.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %local_residual.1, %._crit_edge.loopexit ]
  store double %local_residual.0.lcssa, double* %residual, align 8, !tbaa !7
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %local_residual.02 = phi double [ %local_residual.1, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %2 = getelementptr inbounds double, double* %v1, i64 %indvars.iv
  %3 = load double, double* %2, align 8, !tbaa !7
  %4 = getelementptr inbounds double, double* %v2, i64 %indvars.iv
  %5 = load double, double* %4, align 8, !tbaa !7
  %6 = fsub double %3, %5
  %7 = tail call double @fabs(double %6) #20
  %8 = fcmp ogt double %7, %local_residual.02
  %local_residual.1 = select i1 %8, double %7, double %local_residual.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #21

; Function Attrs: nounwind uwtable
define double @_Z7mytimerv() #16 {
  %ruse = alloca %struct.rusage, align 8
  %1 = bitcast %struct.rusage* %ruse to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #2
  %2 = call i32 @getrusage(i32 0, %struct.rusage* nonnull %ruse) #2
  %3 = getelementptr inbounds %struct.rusage, %struct.rusage* %ruse, i64 0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !47
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.rusage, %struct.rusage* %ruse, i64 0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !50
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, 1.000000e+06
  %10 = fadd double %5, %9
  call void @llvm.lifetime.end(i64 144, i8* %1) #2
  ret double %10
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #13

; Function Attrs: nounwind uwtable
define i32 @_Z18dump_matlab_matrixP24HPC_Sparse_Matrix_STRUCTi(%struct.HPC_Sparse_Matrix_STRUCT* nocapture readonly %A, i32 %rank) #16 {
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
  %5 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  br label %12

; <label>:6                                       ; preds = %0
  %7 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.50, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  br label %12

; <label>:8                                       ; preds = %0
  %9 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.51, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  br label %12

; <label>:10                                      ; preds = %0
  %11 = tail call %struct._IO_FILE* @fopen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.52, i64 0, i64 0), i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
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
  %22 = load double*, double** %21, align 8, !tbaa !1
  %23 = load i32**, i32*** %15, align 8, !tbaa !37
  %24 = getelementptr inbounds i32*, i32** %23, i64 %indvars.iv7
  %25 = load i32*, i32** %24, align 8, !tbaa !1
  %26 = load i32*, i32** %16, align 8, !tbaa !35
  %27 = getelementptr inbounds i32, i32* %26, i64 %indvars.iv7
  %28 = load i32, i32* %27, align 4, !tbaa !5
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
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds double, double* %22, i64 %indvars.iv
  %37 = load double, double* %36, align 8, !tbaa !7
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %handle.0, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5.53, i64 0, i64 0), i32 %31, i32 %35, double %37)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond, label %._crit_edge.loopexit, label %32

; <label>:39                                      ; preds = %._crit_edge6, %0
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #13

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HPC_sparsemv.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.55()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.55() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.56)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.56, i64 0, i32 0), i8* nonnull @__dso_handle) #2
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
  %12 = load double*, double** %11, align 8, !tbaa !1
  %13 = getelementptr inbounds i32*, i32** %7, i64 %indvars.iv7
  %14 = load i32*, i32** %13, align 8, !tbaa !1
  %15 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv7
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %10
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %sum.0.lcssa = phi double [ 0.000000e+00, %10 ], [ %27, %._crit_edge.loopexit ]
  %18 = getelementptr inbounds double, double* %y, i64 %indvars.iv7
  store double %sum.0.lcssa, double* %18, align 8, !tbaa !7
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %2
  br i1 %exitcond10, label %._crit_edge6.loopexit, label %10

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %sum.01 = phi double [ %27, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %19 = getelementptr inbounds double, double* %12, i64 %indvars.iv
  %20 = load double, double* %19, align 8, !tbaa !7
  %21 = getelementptr inbounds i32, i32* %14, i64 %indvars.iv
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %x, i64 %23
  %25 = load double, double* %24, align 8, !tbaa !7
  %26 = fmul double %20, %25
  %27 = fadd double %sum.01, %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HPCCG.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.58()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.58() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.59)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.59, i64 0, i32 0), i8* nonnull @__dso_handle) #2
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
  store double 0.000000e+00, double* %t4, align 8, !tbaa !7
  %3 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 5
  %4 = bitcast i32* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, %struct.HPC_Sparse_Matrix_STRUCT* %A, i64 0, i32 6
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %6 to i64
  %11 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 8)
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  %14 = select i1 %12, i64 -1, i64 %13
  %15 = tail call noalias i8* @_Znam(i64 %14) #28
  %16 = bitcast i8* %15 to double*
  %17 = sext i32 %9 to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %17, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %22 = tail call noalias i8* @_Znam(i64 %21) #28
  %23 = bitcast i8* %22 to double*
  %24 = tail call noalias i8* @_Znam(i64 %14) #28
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %normr, align 8, !tbaa !7
  %26 = bitcast double* %rtrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  store double 0.000000e+00, double* %rtrans, align 8, !tbaa !7
  %27 = sdiv i32 %max_iter, 10
  %28 = icmp sgt i32 %27, 50
  %. = select i1 %28, i32 50, i32 %27
  %29 = icmp slt i32 %., 1
  %.. = select i1 %29, i32 1, i32 %.
  %30 = tail call double @_Z7mytimerv()
  %31 = tail call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %x, double 0.000000e+00, double* %x, double* %23)
  %32 = tail call double @_Z7mytimerv()
  %33 = fsub double %32, %30
  %34 = fadd double %33, 0.000000e+00
  %35 = tail call double @_Z7mytimerv()
  %36 = tail call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %23, double* %25)
  %37 = tail call double @_Z7mytimerv()
  %38 = fsub double %37, %35
  %39 = fadd double %38, 0.000000e+00
  %40 = tail call double @_Z7mytimerv()
  %41 = tail call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %b, double -1.000000e+00, double* %25, double* %16)
  %42 = tail call double @_Z7mytimerv()
  %43 = fsub double %42, %40
  %44 = fadd double %34, %43
  %45 = tail call double @_Z7mytimerv()
  %46 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %16, double* %16, double* nonnull %rtrans, double* nonnull dereferenceable(8) %t4)
  %47 = call double @_Z7mytimerv()
  %48 = fsub double %47, %45
  %49 = fadd double %48, 0.000000e+00
  %50 = load double, double* %rtrans, align 8, !tbaa !7
  %51 = call double @sqrt(double %50) #2
  store double %51, double* %normr, align 8, !tbaa !7
  %52 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0))
  %53 = load double, double* %normr, align 8, !tbaa !7
  %54 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull %52, double %53)
  %55 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %54, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %56 = icmp sgt i32 %max_iter, 1
  %57 = load double, double* %normr, align 8
  %58 = fcmp ogt double %57, %tolerance
  %or.cond4 = and i1 %56, %58
  br i1 %or.cond4, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %0
  %59 = bitcast double* %alpha to i8*
  br label %68

.critedge.loopexit:                               ; preds = %102
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %0
  %t1.0.lcssa = phi double [ %49, %0 ], [ %112, %.critedge.loopexit ]
  %t2.0.lcssa = phi double [ %44, %0 ], [ %121, %.critedge.loopexit ]
  %t3.0.lcssa = phi double [ %39, %0 ], [ %107, %.critedge.loopexit ]
  %60 = getelementptr inbounds double, double* %times, i64 1
  store double %t1.0.lcssa, double* %60, align 8, !tbaa !7
  %61 = getelementptr inbounds double, double* %times, i64 2
  store double %t2.0.lcssa, double* %61, align 8, !tbaa !7
  %62 = getelementptr inbounds double, double* %times, i64 3
  store double %t3.0.lcssa, double* %62, align 8, !tbaa !7
  %63 = bitcast double* %t4 to i64*
  %64 = getelementptr inbounds double, double* %times, i64 4
  %65 = bitcast double* %64 to i64*
  store i64 0, i64* %65, align 8, !tbaa !7
  call void @_ZdaPv(i8* nonnull %22) #29
  call void @_ZdaPv(i8* nonnull %24) #29
  call void @_ZdaPv(i8* nonnull %15) #29
  %66 = call double @_Z7mytimerv()
  %67 = fsub double %66, %1
  store double %67, double* %times, align 8, !tbaa !7
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  ret i32 0

; <label>:68                                      ; preds = %102, %.lr.ph
  %69 = phi double [ %50, %.lr.ph ], [ %89, %102 ]
  %k.08 = phi i32 [ 1, %.lr.ph ], [ %93, %102 ]
  %t1.07 = phi double [ %49, %.lr.ph ], [ %112, %102 ]
  %t2.06 = phi double [ %44, %.lr.ph ], [ %121, %102 ]
  %t3.05 = phi double [ %39, %.lr.ph ], [ %107, %102 ]
  %70 = icmp eq i32 %k.08, 1
  br i1 %70, label %71, label %76

; <label>:71                                      ; preds = %68
  %72 = call double @_Z7mytimerv()
  %73 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %16, double 0.000000e+00, double* %16, double* %23)
  %74 = call double @_Z7mytimerv()
  %75 = fsub double %74, %72
  br label %88

; <label>:76                                      ; preds = %68
  %77 = call double @_Z7mytimerv()
  %78 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %16, double* %16, double* nonnull %rtrans, double* nonnull dereferenceable(8) %t4)
  %79 = call double @_Z7mytimerv()
  %80 = fsub double %79, %77
  %81 = fadd double %t1.07, %80
  %82 = load double, double* %rtrans, align 8, !tbaa !7
  %83 = fdiv double %82, %69
  %84 = call double @_Z7mytimerv()
  %85 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %16, double %83, double* %23, double* %23)
  %86 = call double @_Z7mytimerv()
  %87 = fsub double %86, %84
  br label %88

; <label>:88                                      ; preds = %76, %71
  %89 = phi double [ %69, %71 ], [ %82, %76 ]
  %.pn = phi double [ %75, %71 ], [ %87, %76 ]
  %t1.1 = phi double [ %t1.07, %71 ], [ %81, %76 ]
  %t2.1 = fadd double %t2.06, %.pn
  %90 = call double @sqrt(double %89) #2
  store double %90, double* %normr, align 8, !tbaa !7
  %91 = srem i32 %k.08, %..
  %92 = icmp eq i32 %91, 0
  %93 = add nuw nsw i32 %k.08, 1
  %94 = icmp eq i32 %93, %max_iter
  %or.cond3 = or i1 %94, %92
  br i1 %or.cond3, label %95, label %102

; <label>:95                                      ; preds = %88
  %96 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.63, i64 0, i64 0))
  %97 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %96, i32 %k.08)
  %98 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) %97, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.64, i64 0, i64 0))
  %99 = load double, double* %normr, align 8, !tbaa !7
  %100 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull %98, double %99)
  %101 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull %100, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %102

; <label>:102                                     ; preds = %95, %88
  %103 = call double @_Z7mytimerv()
  %104 = call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %23, double* %25)
  %105 = call double @_Z7mytimerv()
  %106 = fsub double %105, %103
  %107 = fadd double %t3.05, %106
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  store double 0.000000e+00, double* %alpha, align 8, !tbaa !7
  %108 = call double @_Z7mytimerv()
  %109 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %6, double* %23, double* %25, double* nonnull %alpha, double* nonnull dereferenceable(8) %t4)
  %110 = call double @_Z7mytimerv()
  %111 = fsub double %110, %108
  %112 = fadd double %t1.1, %111
  %113 = load double, double* %alpha, align 8, !tbaa !7
  %114 = fdiv double %89, %113
  store double %114, double* %alpha, align 8, !tbaa !7
  %115 = call double @_Z7mytimerv()
  %116 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %x, double %114, double* %23, double* %x)
  %117 = fsub double -0.000000e+00, %114
  %118 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %6, double 1.000000e+00, double* %16, double %117, double* %25, double* %16)
  %119 = call double @_Z7mytimerv()
  %120 = fsub double %119, %115
  %121 = fadd double %t2.1, %120
  store i32 %k.08, i32* %niters, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %122 = icmp slt i32 %93, %max_iter
  %123 = load double, double* %normr, align 8
  %124 = fcmp ogt double %123, %tolerance
  %or.cond = and i1 %122, %124
  br i1 %or.cond, label %68, label %.critedge.loopexit
}

; Function Attrs: nounwind
declare double @sqrt(double) #13

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %this, double %__f) #0 align 2 {
  %1 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %this, double %__f)
  ret %"class.std::basic_ostream"* %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #17

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z6waxpbyidPKddS0_Pd(i32 %n, double %alpha, double* nocapture readonly %x, double %beta, double* nocapture readonly %y, double* nocapture %w) #15 {
  %1 = fcmp oeq double %alpha, 1.000000e+00
  br i1 %1, label %.preheader, label %10

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %3 = getelementptr inbounds double, double* %x, i64 %indvars.iv
  %4 = load double, double* %3, align 8, !tbaa !7
  %5 = getelementptr inbounds double, double* %y, i64 %indvars.iv
  %6 = load double, double* %5, align 8, !tbaa !7
  %7 = fmul double %6, %beta
  %8 = fadd double %4, %7
  %9 = getelementptr inbounds double, double* %w, i64 %indvars.iv
  store double %8, double* %9, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph

; <label>:10                                      ; preds = %0
  %11 = fcmp oeq double %beta, 1.000000e+00
  %12 = icmp sgt i32 %n, 0
  br i1 %11, label %.preheader3, label %.preheader5

.preheader5:                                      ; preds = %10
  br i1 %12, label %.lr.ph11.preheader, label %.loopexit

.lr.ph11.preheader:                               ; preds = %.preheader5
  br label %.lr.ph11

.preheader3:                                      ; preds = %10
  br i1 %12, label %.lr.ph9.preheader, label %.loopexit

.lr.ph9.preheader:                                ; preds = %.preheader3
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.lr.ph9
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %.lr.ph9 ], [ 0, %.lr.ph9.preheader ]
  %13 = getelementptr inbounds double, double* %x, i64 %indvars.iv14
  %14 = load double, double* %13, align 8, !tbaa !7
  %15 = fmul double %14, %alpha
  %16 = getelementptr inbounds double, double* %y, i64 %indvars.iv14
  %17 = load double, double* %16, align 8, !tbaa !7
  %18 = fadd double %15, %17
  %19 = getelementptr inbounds double, double* %w, i64 %indvars.iv14
  store double %18, double* %19, align 8, !tbaa !7
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next15 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %n
  br i1 %exitcond17, label %.loopexit.loopexit1, label %.lr.ph9

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.lr.ph11
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %.lr.ph11 ], [ 0, %.lr.ph11.preheader ]
  %20 = getelementptr inbounds double, double* %x, i64 %indvars.iv18
  %21 = load double, double* %20, align 8, !tbaa !7
  %22 = fmul double %21, %alpha
  %23 = getelementptr inbounds double, double* %y, i64 %indvars.iv18
  %24 = load double, double* %23, align 8, !tbaa !7
  %25 = fmul double %24, %beta
  %26 = fadd double %22, %25
  %27 = getelementptr inbounds double, double* %w, i64 %indvars.iv18
  store double %26, double* %27, align 8, !tbaa !7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv.next19 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %n
  br i1 %exitcond21, label %.loopexit.loopexit2, label %.lr.ph11

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit.loopexit1:                              ; preds = %.lr.ph9
  br label %.loopexit

.loopexit.loopexit2:                              ; preds = %.lr.ph11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit2, %.loopexit.loopexit1, %.loopexit.loopexit, %.preheader3, %.preheader5, %.preheader
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
  br label %.lr.ph8

.preheader:                                       ; preds = %0
  br i1 %2, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %local_result.04 = phi double [ %6, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %3 = getelementptr inbounds double, double* %y, i64 %indvars.iv
  %4 = load double, double* %3, align 8, !tbaa !7
  %5 = fmul double %4, %4
  %6 = fadd double %local_result.04, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %.lr.ph8
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %.lr.ph8 ], [ 0, %.lr.ph8.preheader ]
  %local_result.16 = phi double [ %12, %.lr.ph8 ], [ 0.000000e+00, %.lr.ph8.preheader ]
  %7 = getelementptr inbounds double, double* %x, i64 %indvars.iv12
  %8 = load double, double* %7, align 8, !tbaa !7
  %9 = getelementptr inbounds double, double* %y, i64 %indvars.iv12
  %10 = load double, double* %9, align 8, !tbaa !7
  %11 = fmul double %8, %10
  %12 = fadd double %local_result.16, %11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %n
  br i1 %exitcond15, label %.loopexit.loopexit1, label %.lr.ph8

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit.loopexit1:                              ; preds = %.lr.ph8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit1, %.loopexit.loopexit, %.preheader, %.preheader2
  %local_result.2 = phi double [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader2 ], [ %6, %.loopexit.loopexit ], [ %12, %.loopexit.loopexit1 ]
  store double %local_result.2, double* %result, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Element.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.70()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.70() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.71)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.71, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* dereferenceable(32) %value_arg) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %1)
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %2)
  %3 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  tail call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EEC2Ev(%"class.std::vector"* %3)
  %4 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
          to label %5 unwind label %8

; <label>:5                                       ; preds = %0
  %6 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %value_arg)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %5
  ret void

; <label>:8                                       ; preds = %5, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev(%"class.std::vector"* %3)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %2)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %1)
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  tail call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %this) unnamed_addr #15 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::ios_base::Init", align 1
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0
  %3 = tail call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %2, i8* %3, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %1)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 0)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EEC2Ev(%"class.std::vector"* nocapture %this) unnamed_addr #15 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EEC2Ev(%"struct.std::_Vector_base"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EEC2Ev(%"struct.std::_Vector_base"* nocapture %this) unnamed_addr #15 comdat align 2 {
  %1 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *> >::_Vector_impl"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *> >::_Vector_impl"* nocapture %this) unnamed_addr #15 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *> >::_Vector_impl"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #0 align 2 {
  %1 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__str)
  ret %"class.std::__cxx11::basic_string"* %1
}

; Function Attrs: uwtable
define available_externally dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #0 align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__str)
  ret %"class.std::__cxx11::basic_string"* %this
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev(%"class.std::vector"* nocapture readonly %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EED2Ev(%"struct.std::_Vector_base"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EED2Ev(%"struct.std::_Vector_base"* nocapture readonly %this) unnamed_addr #16 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 0
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %1, align 8, !tbaa !51
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 2
  %4 = bitcast %class.YAML_Element*** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !54
  %6 = ptrtoint %class.YAML_Element** %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  tail call void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %this, %class.YAML_Element** %2, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* nocapture readnone %this, %class.YAML_Element** %__p, i64 %__n) #16 comdat align 2 {
  %1 = icmp eq %class.YAML_Element** %__p, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE10deallocateERS3_PS2_m(%"class.std::ios_base::Init"* dereferenceable(1) %3, %class.YAML_Element** nonnull %__p, i64 %__n)
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE10deallocateERS3_PS2_m(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, %class.YAML_Element** %__p, i64 %__n) #16 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE10deallocateEPS2_m(%"class.std::ios_base::Init"* %1, %class.YAML_Element** %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE10deallocateEPS2_m(%"class.std::ios_base::Init"* nocapture readnone %this, %class.YAML_Element** %__p, i64) #16 comdat align 2 {
  %2 = bitcast %class.YAML_Element** %__p to i8*
  tail call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: uwtable
define void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %2 = tail call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %1)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %10
  %i.06 = phi i64 [ %11, %10 ], [ 0, %.lr.ph.preheader ]
  %4 = tail call dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* %1, i64 %i.06)
  %5 = load %class.YAML_Element*, %class.YAML_Element** %4, align 8, !tbaa !1
  %6 = icmp eq %class.YAML_Element* %5, null
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %.lr.ph
  invoke void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* nonnull %5)
          to label %8 unwind label %21

; <label>:8                                       ; preds = %7
  %9 = bitcast %class.YAML_Element* %5 to i8*
  tail call void @_ZdlPv(i8* %9) #29
  br label %10

; <label>:10                                      ; preds = %8, %.lr.ph
  %11 = add i64 %i.06, 1
  %12 = tail call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %1)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  tail call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv(%"class.std::vector"* %1)
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev(%"class.std::vector"* %1)
          to label %14 unwind label %17

; <label>:14                                      ; preds = %._crit_edge
  %15 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %15)
  %16 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %16)
  ret void

; <label>:17                                      ; preds = %._crit_edge
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  br label %26

; <label>:21                                      ; preds = %7
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = bitcast %class.YAML_Element* %5 to i8*
  tail call void @_ZdlPv(i8* %25) #29
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev(%"class.std::vector"* %1)
          to label %26 unwind label %31

; <label>:26                                      ; preds = %21, %17
  %.12 = phi i8* [ %23, %21 ], [ %19, %17 ]
  %.1 = phi i32 [ %24, %21 ], [ %20, %17 ]
  %27 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %27)
  %28 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %28)
  %29 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %.1, 1
  resume { i8*, i32 } %30

; <label>:31                                      ; preds = %21
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  tail call void @__clang_call_terminate(i8* %33) #25
  unreachable
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* nocapture readonly %this) #6 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %class.YAML_Element*** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !55
  %4 = bitcast %"class.std::vector"* %this to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !51
  %6 = sub i64 %3, %5
  %7 = ashr exact i64 %6, 3
  ret i64 %7
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* nocapture readonly %this, i64 %__n) #6 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %1, align 8, !tbaa !51
  %3 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %2, i64 %__n
  ret %class.YAML_Element** %3
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv(%"class.std::vector"* nocapture %this) #15 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %1, align 8, !tbaa !51
  tail call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector"* %this, %class.YAML_Element** %2)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector"* nocapture %this, %class.YAML_Element** %__pos) #15 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  store %class.YAML_Element** %__pos, %class.YAML_Element*** %1, align 8, !tbaa !55
  ret void
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, double %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0))
  %3 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  call void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, double %value_arg)
  %4 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = invoke noalias i8* @_Znwm(i64 88) #28
          to label %6 unwind label %14

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %5 to %class.YAML_Element*
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %7, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %8 unwind label %18

; <label>:8                                       ; preds = %6
  %9 = bitcast %class.YAML_Element** %element to i8**
  store i8* %5, i8** %9, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %11 = ptrtoint i8* %5 to i64
  %12 = inttoptr i64 %11 to %class.YAML_Element*
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %10, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  call void @llvm.lifetime.end(i64 32, i8* %3) #2
  ret %class.YAML_Element* %12

; <label>:14                                      ; preds = %8, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %22

; <label>:18                                      ; preds = %6
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  call void @_ZdlPv(i8* nonnull %5) #29
  br label %22

; <label>:22                                      ; preds = %18, %14
  %.01 = phi i8* [ %16, %14 ], [ %20, %18 ]
  %.0 = phi i32 [ %17, %14 ], [ %21, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  %23 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %.0, 1
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %this, i8* %__s) #0 align 2 {
  %1 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc(%"class.std::__cxx11::basic_string"* %this, i8* %__s)
  ret %"class.std::__cxx11::basic_string"* %1
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc(%"class.std::__cxx11::basic_string"* %this, i8* %__s) #0 align 2 {
  %1 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %this)
  %2 = tail call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s)
  %3 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %this, i64 0, i64 %1, i8* %__s, i64 %2)
  ret %"class.std::__cxx11::basic_string"* %3
}

declare dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"*, i64, i64, i8*, i64) #1

; Function Attrs: uwtable
define void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, double %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  %2 = tail call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 8)
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 %2)
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %4 = bitcast %"class.std::basic_ostream.base"* %3 to %"class.std::basic_ostream"*
  %5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %4, double %value_arg)
          to label %6 unwind label %8

; <label>:6                                       ; preds = %0
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
  call void @llvm.lifetime.end(i64 392, i8* %1) #2
  ret void

; <label>:8                                       ; preds = %6, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i32 @_ZStorSt13_Ios_OpenmodeS_(i32 %__a, i32 %__b) #7 comdat {
  %1 = or i32 %__b, %__a
  ret i32 %1
}

; Function Attrs: uwtable
define available_externally void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* %this, i32 %__m) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev(%"class.std::basic_ios"* %1)
  %2 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to %"class.std::basic_iostream"*
  invoke void @_ZNSdC2Ev(%"class.std::basic_iostream"* %2, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1))
          to label %3 unwind label %18

; <label>:3                                       ; preds = %0
  %4 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to i8*
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %1, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 13) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringbuf"* %8, i32 %__m)
  %9 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !13
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %4, i64 %13
  %15 = bitcast i8* %14 to %"class.std::basic_ios"*
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %8, i64 0, i32 0
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %15, %"class.std::basic_streambuf"* %16)
          to label %17 unwind label %22

; <label>:17                                      ; preds = %3
  ret void

; <label>:18                                      ; preds = %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  br label %26

; <label>:22                                      ; preds = %3
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  tail call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_stringbuf"* %8)
  tail call void @_ZNSdD2Ev(%"class.std::basic_iostream"* nonnull %2, i8** nonnull getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1))
  br label %26

; <label>:26                                      ; preds = %22, %18
  %.12 = phi i8* [ %24, %22 ], [ %20, %18 ]
  %.1 = phi i32 [ %25, %22 ], [ %21, %18 ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %1)
          to label %27 unwind label %30

; <label>:27                                      ; preds = %26
  %28 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %.1, 1
  resume { i8*, i32 } %29

; <label>:30                                      ; preds = %26
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  tail call void @__clang_call_terminate(i8* %32) #25
  unreachable
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev(%"class.std::basic_ios"* %this) unnamed_addr #16 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 0
  tail call void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* %1) #2
  %2 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 1
  store %"class.std::basic_ostream"* null, %"class.std::basic_ostream"** %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 2
  store i8 0, i8* %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 3
  store i8 0, i8* %5, align 1, !tbaa !58
  %6 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 4
  %7 = bitcast %"class.std::basic_streambuf"** %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"*) #13

; Function Attrs: uwtable
define available_externally void @_ZNSdC2Ev(%"class.std::basic_iostream"* %this, i8** nocapture readonly %vtt) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %"class.std::basic_iostream"* %this to %"class.std::basic_istream"*
  %2 = getelementptr inbounds i8*, i8** %vtt, i64 1
  tail call void @_ZNSiC2Ev(%"class.std::basic_istream"* %1, i8** %2)
  %3 = getelementptr inbounds %"class.std::basic_iostream", %"class.std::basic_iostream"* %this, i64 0, i32 1
  %4 = bitcast %"class.std::basic_ostream.base"* %3 to %"class.std::basic_ostream"*
  %5 = getelementptr inbounds i8*, i8** %vtt, i64 3
  invoke void @_ZNSoC2Ev(%"class.std::basic_ostream"* %4, i8** %5)
          to label %6 unwind label %23

; <label>:6                                       ; preds = %0
  %7 = bitcast %"class.std::basic_iostream"* %this to i8*
  %8 = bitcast i8** %vtt to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::basic_iostream"* %this to i64*
  store i64 %9, i64* %10, align 8, !tbaa !13
  %11 = getelementptr inbounds i8*, i8** %vtt, i64 5
  %12 = bitcast i8** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %.cast = inttoptr i64 %9 to i8*
  %14 = getelementptr i8, i8* %.cast, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %7, i64 %16
  %18 = bitcast i8* %17 to i64*
  store i64 %13, i64* %18, align 8, !tbaa !13
  %19 = getelementptr inbounds i8*, i8** %vtt, i64 6
  %20 = bitcast i8** %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %"class.std::basic_ostream.base"* %3 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !13
  ret void

; <label>:23                                      ; preds = %0
  %24 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSiD2Ev(%"class.std::basic_istream"* %1, i8** %2)
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define available_externally void @_ZNSiC2Ev(%"class.std::basic_istream"* %this, i8** nocapture readonly %vtt) unnamed_addr #0 align 2 {
  %1 = bitcast i8** %vtt to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast %"class.std::basic_istream"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !13
  %4 = getelementptr inbounds i8*, i8** %vtt, i64 1
  %5 = bitcast i8** %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = bitcast %"class.std::basic_istream"* %this to i8**
  %.cast = inttoptr i64 %2 to i8*
  %8 = getelementptr i8, i8* %.cast, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = bitcast %"class.std::basic_istream"* %this to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 %10
  %13 = bitcast i8* %12 to i64*
  store i64 %6, i64* %13, align 8, !tbaa !13
  %14 = getelementptr inbounds %"class.std::basic_istream", %"class.std::basic_istream"* %this, i64 0, i32 1
  store i64 0, i64* %14, align 8, !tbaa !59
  %15 = load i8*, i8** %7, align 8, !tbaa !13
  %16 = getelementptr i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %11, i64 %18
  %20 = bitcast i8* %19 to %"class.std::basic_ios"*
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %20, %"class.std::basic_streambuf"* null)
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"*, %"class.std::basic_streambuf"*) #1

; Function Attrs: uwtable
define available_externally void @_ZNSoC2Ev(%"class.std::basic_ostream"* %this, i8** nocapture readonly %vtt) unnamed_addr #0 align 2 {
  %1 = bitcast i8** %vtt to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast %"class.std::basic_ostream"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !13
  %4 = getelementptr inbounds i8*, i8** %vtt, i64 1
  %5 = bitcast i8** %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = bitcast %"class.std::basic_ostream"* %this to i8**
  %.cast = inttoptr i64 %2 to i8*
  %8 = getelementptr i8, i8* %.cast, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = bitcast %"class.std::basic_ostream"* %this to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 %10
  %13 = bitcast i8* %12 to i64*
  store i64 %6, i64* %13, align 8, !tbaa !13
  %14 = load i8*, i8** %7, align 8, !tbaa !13
  %15 = getelementptr i8, i8* %14, i64 -24
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %11, i64 %17
  %19 = bitcast i8* %18 to %"class.std::basic_ios"*
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %19, %"class.std::basic_streambuf"* null)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSiD2Ev(%"class.std::basic_istream"* nocapture %this, i8** nocapture readonly %vtt) unnamed_addr #15 align 2 {
  %1 = bitcast i8** %vtt to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast %"class.std::basic_istream"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !13
  %4 = getelementptr inbounds i8*, i8** %vtt, i64 1
  %5 = bitcast i8** %4 to i64*
  %6 = load i64, i64* %5, align 8
  %.cast = inttoptr i64 %2 to i8*
  %7 = getelementptr i8, i8* %.cast, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::basic_istream"* %this to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = bitcast i8* %11 to i64*
  store i64 %6, i64* %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %"class.std::basic_istream", %"class.std::basic_istream"* %this, i64 0, i32 1
  store i64 0, i64* %13, align 8, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringbuf"* %this, i32 %__mode) unnamed_addr #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt15basic_streambufIcSt11char_traitsIcEEC2Ev(%"class.std::basic_streambuf"* %1)
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 1
  store i32 %__mode, i32* %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt15basic_streambufIcSt11char_traitsIcEEC2Ev(%"class.std::basic_streambuf"* %this) unnamed_addr #16 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !13
  %2 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 1
  %3 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 7
  %4 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false)
  tail call void @_ZNSt6localeC1Ev(%"class.std::locale"* %3) #2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(%"class.std::locale"*) #13

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_stringbuf"* %this) unnamed_addr #22 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !13
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %2)
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(%"class.std::basic_streambuf"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define available_externally void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(%"class.std::basic_streambuf"* %this) unnamed_addr #16 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !13
  %2 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 7
  tail call void @_ZNSt6localeD1Ev(%"class.std::locale"* %2) #2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"*) #13

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSdD2Ev(%"class.std::basic_iostream"* nocapture %this, i8** nocapture readonly %vtt) unnamed_addr #15 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %"class.std::basic_iostream"* %this to %"class.std::basic_istream"*
  %2 = getelementptr inbounds i8*, i8** %vtt, i64 1
  tail call void @_ZNSiD2Ev(%"class.std::basic_istream"* %1, i8** %2)
  ret void
}

; Function Attrs: uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %this) unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 0
  tail call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %1)
  ret void
}

declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"*) #1

; Function Attrs: uwtable
define available_externally void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_stringstream"* %this) #0 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 1
  tail call void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %1)
  ret void
}

; Function Attrs: uwtable
define available_externally void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_stringbuf"* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::ios_base::Init", align 1
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::ios_base::Init", align 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 0
  %6 = tail call i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4pptrEv(%"class.std::basic_streambuf"* %5)
  %7 = icmp eq i8* %6, null
  br i1 %7, label %40, label %8

; <label>:8                                       ; preds = %0
  %9 = tail call i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(%"class.std::basic_streambuf"* %5)
  %10 = icmp ugt i8* %6, %9
  %11 = tail call i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5pbaseEv(%"class.std::basic_streambuf"* %5)
  br i1 %10, label %12, label %28

; <label>:12                                      ; preds = %8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcEET_S7_RKS3_(%"class.std::__cxx11::basic_string"* nonnull %1, i8* %11, i8* nonnull %6, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %2)
          to label %13 unwind label %20

; <label>:13                                      ; preds = %12
  %14 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1)
          to label %15 unwind label %24

; <label>:15                                      ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br label %43

; <label>:16                                      ; preds = %40
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  br label %44

; <label>:20                                      ; preds = %12
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  br label %44

; <label>:24                                      ; preds = %13
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br label %44

; <label>:28                                      ; preds = %8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcEET_S7_RKS3_(%"class.std::__cxx11::basic_string"* nonnull %3, i8* %11, i8* %9, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %4)
          to label %29 unwind label %32

; <label>:29                                      ; preds = %28
  %30 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3)
          to label %31 unwind label %36

; <label>:31                                      ; preds = %29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %43

; <label>:32                                      ; preds = %28
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  br label %44

; <label>:36                                      ; preds = %29
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  %39 = extractvalue { i8*, i32 } %37, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %44

; <label>:40                                      ; preds = %0
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %this, i64 0, i32 2
  %42 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %41)
          to label %43 unwind label %16

; <label>:43                                      ; preds = %40, %31, %15
  ret void

; <label>:44                                      ; preds = %36, %32, %24, %20, %16
  %.23 = phi i8* [ %18, %16 ], [ %22, %20 ], [ %26, %24 ], [ %34, %32 ], [ %38, %36 ]
  %.2 = phi i32 [ %19, %16 ], [ %23, %20 ], [ %27, %24 ], [ %35, %32 ], [ %39, %36 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  %45 = insertvalue { i8*, i32 } undef, i8* %.23, 0
  %46 = insertvalue { i8*, i32 } %45, i32 %.2, 1
  resume { i8*, i32 } %46
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4pptrEv(%"class.std::basic_streambuf"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 5
  %2 = load i8*, i8** %1, align 8, !tbaa !64
  ret i8* %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(%"class.std::basic_streambuf"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 3
  %2 = load i8*, i8** %1, align 8, !tbaa !66
  ret i8* %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5pbaseEv(%"class.std::basic_streambuf"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this, i64 0, i32 4
  %2 = load i8*, i8** %1, align 8, !tbaa !67
  ret i8* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcEET_S7_RKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0
  %2 = tail call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %1, i8* %2, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__a)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__dnew = alloca i64, align 8
  %1 = tail call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* %__beg)
  %.not = xor i1 %1, true
  %2 = icmp eq i8* %__beg, %__end
  %or.cond = or i1 %2, %.not
  br i1 %or.cond, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @_ZSt19__throw_logic_errorPKc(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.75, i64 0, i64 0)) #27
  unreachable

; <label>:4                                       ; preds = %0
  %5 = bitcast i64* %__dnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = tail call i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %__beg, i8* %__end)
  store i64 %6, i64* %__dnew, align 8, !tbaa !30
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this, i64* nonnull dereferenceable(8) %__dnew, i64 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this, i8* %9)
  %10 = load i64, i64* %__dnew, align 8, !tbaa !30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this, i64 %10)
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %12, i8* %__beg, i8* %__end)
  %13 = load i64, i64* %__dnew, align 8, !tbaa !30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %13)
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret void
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* readnone %__ptr) #7 comdat {
  %1 = icmp eq i8* %__ptr, null
  ret i1 %1
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %__first, i8* readnone %__last) #7 comdat {
  %1 = tail call i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %__first, i8* %__last)
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %__first, i8* %__last) #7 comdat {
  %1 = ptrtoint i8* %__last to i64
  %2 = ptrtoint i8* %__first to i64
  %3 = sub i64 %1, %2
  ret i64 %3
}

; Function Attrs: norecurse nounwind uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %__p, i8* %__k1, i8* %__k2) #15 align 2 {
  %1 = ptrtoint i8* %__k2 to i64
  %2 = ptrtoint i8* %__k1 to i64
  %3 = sub i64 %1, %2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %__p, i8* %__k1, i64 %3)
  ret void
}

; Function Attrs: uwtable
define available_externally void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_stringstream"* %this, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 0))
          to label %1 unwind label %3

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %2)
  ret void

; <label>:3                                       ; preds = %0
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 2
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %5)
          to label %6 unwind label %7

; <label>:6                                       ; preds = %3
  resume { i8*, i32 } %4

; <label>:7                                       ; preds = %3
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  tail call void @__clang_call_terminate(i8* %9) #25
  unreachable
}

; Function Attrs: uwtable
define available_externally void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_stringstream"* %this, i8** nocapture readonly %vtt) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast i8** %vtt to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !13
  %4 = getelementptr inbounds i8*, i8** %vtt, i64 8
  %5 = bitcast i8** %4 to i64*
  %6 = load i64, i64* %5, align 8
  %.cast = inttoptr i64 %2 to i8*
  %7 = getelementptr i8, i8* %.cast, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = bitcast i8* %11 to i64*
  store i64 %6, i64* %12, align 8, !tbaa !13
  %13 = getelementptr inbounds i8*, i8** %vtt, i64 9
  %14 = bitcast i8** %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 0, i32 1
  %17 = bitcast %"class.std::basic_ostream.base"* %16 to i64*
  store i64 %15, i64* %17, align 8, !tbaa !13
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_stringbuf"* %18)
  %19 = bitcast %"class.std::__cxx11::basic_stringstream"* %this to %"class.std::basic_iostream"*
  %20 = getelementptr inbounds i8*, i8** %vtt, i64 1
  tail call void @_ZNSdD2Ev(%"class.std::basic_iostream"* %19, i8** %20)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %this, %class.YAML_Element** nocapture readonly dereferenceable(8) %__x) #0 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %1, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %3, align 8, !tbaa !54
  %5 = icmp eq %class.YAML_Element** %2, %4
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast %"class.std::vector"* %this to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::ios_base::Init"* dereferenceable(1) %7, %class.YAML_Element** %2, %class.YAML_Element** nonnull dereferenceable(8) %__x)
  %8 = load %class.YAML_Element**, %class.YAML_Element*** %1, align 8, !tbaa !55
  %9 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %8, i64 1
  store %class.YAML_Element** %9, %class.YAML_Element*** %1, align 8, !tbaa !55
  br label %12

; <label>:10                                      ; preds = %0
  %11 = tail call %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EE3endEv(%"class.std::vector"* nonnull %this)
  tail call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* nonnull %this, %class.YAML_Element** %11, %class.YAML_Element** nonnull dereferenceable(8) %__x)
  br label %12

; <label>:12                                      ; preds = %10, %6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, %class.YAML_Element** nocapture %__p, %class.YAML_Element** nocapture readonly dereferenceable(8) %__arg) #15 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE9constructEPS2_RKS2_(%"class.std::ios_base::Init"* %1, %class.YAML_Element** %__p, %class.YAML_Element** nonnull dereferenceable(8) %__arg)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE9constructEPS2_RKS2_(%"class.std::ios_base::Init"* nocapture readnone %this, %class.YAML_Element** nocapture %__p, %class.YAML_Element** nocapture readonly dereferenceable(8) %__val) #15 comdat align 2 {
  %1 = bitcast %class.YAML_Element** %__val to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !1
  %3 = bitcast %class.YAML_Element** %__p to i64*
  store i64 %2, i64* %3, align 8, !tbaa !1
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EE3endEv(%"class.std::vector"* nocapture readonly %this) #15 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, %class.YAML_Element*** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %3, align 8
  ret %class.YAML_Element** %4
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nocapture %this, %class.YAML_Element*** nocapture readonly dereferenceable(8) %__i) unnamed_addr #15 comdat align 2 {
  %1 = bitcast %class.YAML_Element*** %__i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !1
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* %this, %class.YAML_Element** %__position.coerce, %class.YAML_Element** nocapture readonly dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i64 0, i32 0
  store %class.YAML_Element** %__position.coerce, %class.YAML_Element*** %2, align 8
  %3 = tail call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.76, i64 0, i64 0))
  %4 = tail call %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EE5beginEv(%"class.std::vector"* %this)
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  store %class.YAML_Element** %4, %class.YAML_Element*** %5, align 8
  %6 = call i64 @_ZN9__gnu_cxxmiIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  %8 = tail call %class.YAML_Element** @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %7, i64 %3)
  %9 = bitcast %"class.std::vector"* %this to %"class.std::ios_base::Init"*
  %10 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %8, i64 %6
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::ios_base::Init"* dereferenceable(1) %9, %class.YAML_Element** %10, %class.YAML_Element** nonnull dereferenceable(8) %__x)
  %11 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %12 = load %class.YAML_Element**, %class.YAML_Element*** %11, align 8, !tbaa !51
  %13 = call dereferenceable(8) %class.YAML_Element*** @_ZNK9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__position)
  %14 = load %class.YAML_Element**, %class.YAML_Element*** %13, align 8, !tbaa !1
  %15 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %7)
  %16 = tail call %class.YAML_Element** @_ZSt34__uninitialized_move_if_noexcept_aIPP12YAML_ElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.YAML_Element** %12, %class.YAML_Element** %14, %class.YAML_Element** %8, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %15)
  %17 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %16, i64 1
  %18 = load %class.YAML_Element**, %class.YAML_Element*** %13, align 8, !tbaa !1
  %19 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %20 = load %class.YAML_Element**, %class.YAML_Element*** %19, align 8, !tbaa !55
  %21 = tail call %class.YAML_Element** @_ZSt34__uninitialized_move_if_noexcept_aIPP12YAML_ElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.YAML_Element** %18, %class.YAML_Element** %20, %class.YAML_Element** %17, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %15)
  %22 = load %class.YAML_Element**, %class.YAML_Element*** %11, align 8, !tbaa !51
  %23 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %24 = bitcast %class.YAML_Element*** %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !54
  %26 = ptrtoint %class.YAML_Element** %22 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  tail call void @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %7, %class.YAML_Element** %22, i64 %28)
  store %class.YAML_Element** %8, %class.YAML_Element*** %11, align 8, !tbaa !51
  store %class.YAML_Element** %21, %class.YAML_Element*** %19, align 8, !tbaa !55
  %29 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %8, i64 %3
  store %class.YAML_Element** %29, %class.YAML_Element*** %23, align 8, !tbaa !54
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* nocapture readonly %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %__n, i64* %1, align 8, !tbaa !30
  %3 = tail call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %this)
  %4 = sub i64 2305843009213693951, %3
  %5 = icmp ult i64 %4, %__n
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #27
  unreachable

; <label>:7                                       ; preds = %0
  store i64 %3, i64* %2, align 8, !tbaa !30
  %8 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull dereferenceable(8) %2, i64* nonnull dereferenceable(8) %1)
  %9 = load i64, i64* %8, align 8, !tbaa !30
  %10 = add i64 %9, %3
  %11 = tail call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %this)
  %12 = icmp ult i64 %10, %11
  %13 = icmp ugt i64 %10, 2305843009213693951
  %or.cond = or i1 %12, %13
  %14 = select i1 %or.cond, i64 2305843009213693951, i64 %10
  ret i64 %14
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* readonly dereferenceable(8) %__a, i64* readonly dereferenceable(8) %__b) #23 comdat {
  %1 = load i64, i64* %__a, align 8, !tbaa !30
  %2 = load i64, i64* %__b, align 8, !tbaa !30
  %3 = icmp ult i64 %1, %2
  %__b.__a = select i1 %3, i64* %__b, i64* %__a
  ret i64* %__b.__a
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EE5beginEv(%"class.std::vector"* nocapture readonly %this) #15 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, %class.YAML_Element*** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %3, align 8
  ret %class.YAML_Element** %4
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #23 comdat {
  %1 = tail call dereferenceable(8) %class.YAML_Element*** @_ZNK9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__lhs)
  %2 = bitcast %class.YAML_Element*** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !1
  %4 = tail call dereferenceable(8) %class.YAML_Element*** @_ZNK9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__rhs)
  %5 = bitcast %class.YAML_Element*** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !1
  %7 = sub i64 %3, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) %class.YAML_Element*** @_ZNK9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* readnone %this) #14 comdat align 2 {
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  ret %class.YAML_Element*** %1
}

; Function Attrs: uwtable
define linkonce_odr noalias %class.YAML_Element** @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* nocapture readnone %this, i64 %__n) #0 comdat align 2 {
  %1 = icmp eq i64 %__n, 0
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  %4 = tail call %class.YAML_Element** @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m(%"class.std::ios_base::Init"* dereferenceable(1) %3, i64 %__n)
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi %class.YAML_Element** [ %4, %2 ], [ null, %0 ]
  ret %class.YAML_Element** %6
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull %class.YAML_Element** @_ZN9__gnu_cxx14__alloc_traitsISaIP12YAML_ElementEE8allocateERS3_m(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  %2 = tail call %class.YAML_Element** @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %__n, i8* null)
  ret %class.YAML_Element** %2
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull %class.YAML_Element** @_ZN9__gnu_cxx13new_allocatorIP12YAML_ElementE8allocateEmPKv(%"class.std::ios_base::Init"* nocapture readnone %this, i64 %__n, i8* nocapture readnone) #0 comdat align 2 {
  %2 = icmp ugt i64 %__n, 2305843009213693951
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %1
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

; <label>:4                                       ; preds = %1
  %5 = shl i64 %__n, 3
  %6 = tail call noalias i8* @_Znwm(i64 %5)
  %7 = bitcast i8* %6 to %class.YAML_Element**
  ret %class.YAML_Element** %7
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* readnone %this) #14 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt34__uninitialized_move_if_noexcept_aIPP12YAML_ElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__alloc) #24 comdat {
  %1 = tail call %class.YAML_Element** @_ZSt22__uninitialized_copy_aIPP12YAML_ElementS2_S1_ET0_T_S4_S3_RSaIT1_E(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__alloc)
  ret %class.YAML_Element** %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt22__uninitialized_copy_aIPP12YAML_ElementS2_S1_ET0_T_S4_S3_RSaIT1_E(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1)) #24 comdat {
  %2 = tail call %class.YAML_Element** @_ZSt18uninitialized_copyIPP12YAML_ElementS2_ET0_T_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result)
  ret %class.YAML_Element** %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt18uninitialized_copyIPP12YAML_ElementS2_ET0_T_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #24 comdat {
  %1 = tail call %class.YAML_Element** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12YAML_ElementS4_EET0_T_S6_S5_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result)
  ret %class.YAML_Element** %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12YAML_ElementS4_EET0_T_S6_S5_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #15 comdat align 2 {
  %1 = tail call %class.YAML_Element** @_ZSt4copyIPP12YAML_ElementS2_ET0_T_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result)
  ret %class.YAML_Element** %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt4copyIPP12YAML_ElementS2_ET0_T_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #24 comdat {
  %1 = tail call %class.YAML_Element** @_ZSt12__miter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** %__first)
  %2 = tail call %class.YAML_Element** @_ZSt12__miter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** %__last)
  %3 = tail call %class.YAML_Element** @_ZSt14__copy_move_a2ILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_(%class.YAML_Element** %1, %class.YAML_Element** %2, %class.YAML_Element** %__result)
  ret %class.YAML_Element** %3
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr %class.YAML_Element** @_ZSt12__miter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** readnone %__it) #7 comdat {
  ret %class.YAML_Element** %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt14__copy_move_a2ILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #24 comdat {
  %1 = tail call %class.YAML_Element** @_ZSt12__niter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** %__first)
  %2 = tail call %class.YAML_Element** @_ZSt12__niter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** %__last)
  %3 = tail call %class.YAML_Element** @_ZSt12__niter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** %__result)
  %4 = tail call %class.YAML_Element** @_ZSt13__copy_move_aILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_(%class.YAML_Element** %1, %class.YAML_Element** %2, %class.YAML_Element** %3)
  ret %class.YAML_Element** %4
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr %class.YAML_Element** @_ZSt12__niter_baseIPP12YAML_ElementET_S3_(%class.YAML_Element** readnone %__it) #7 comdat {
  ret %class.YAML_Element** %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZSt13__copy_move_aILb0EPP12YAML_ElementS2_ET1_T0_S4_S3_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #24 comdat {
  %1 = tail call %class.YAML_Element** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12YAML_ElementEEPT_PKS5_S8_S6_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result)
  ret %class.YAML_Element** %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr %class.YAML_Element** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12YAML_ElementEEPT_PKS5_S8_S6_(%class.YAML_Element** %__first, %class.YAML_Element** %__last, %class.YAML_Element** %__result) #15 comdat align 2 {
  %1 = ptrtoint %class.YAML_Element** %__last to i64
  %2 = ptrtoint %class.YAML_Element** %__first to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast %class.YAML_Element** %__result to i8*
  %8 = bitcast %class.YAML_Element** %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %3, i32 8, i1 false)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %__result, i64 %4
  ret %class.YAML_Element** %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i32 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0))
  %3 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  call void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i32 %value_arg)
  %4 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = invoke noalias i8* @_Znwm(i64 88) #28
          to label %6 unwind label %14

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %5 to %class.YAML_Element*
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %7, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %8 unwind label %18

; <label>:8                                       ; preds = %6
  %9 = bitcast %class.YAML_Element** %element to i8**
  store i8* %5, i8** %9, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %11 = ptrtoint i8* %5 to i64
  %12 = inttoptr i64 %11 to %class.YAML_Element*
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %10, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  call void @llvm.lifetime.end(i64 32, i8* %3) #2
  ret %class.YAML_Element* %12

; <label>:14                                      ; preds = %8, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %22

; <label>:18                                      ; preds = %6
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  call void @_ZdlPv(i8* nonnull %5) #29
  br label %22

; <label>:22                                      ; preds = %18, %14
  %.01 = phi i8* [ %16, %14 ], [ %20, %18 ]
  %.0 = phi i32 [ %17, %14 ], [ %21, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  %23 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %.0, 1
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i32 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  %2 = tail call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 8)
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 %2)
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %4 = bitcast %"class.std::basic_ostream.base"* %3 to %"class.std::basic_ostream"*
  %5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %4, i32 %value_arg)
          to label %6 unwind label %8

; <label>:6                                       ; preds = %0
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
  call void @llvm.lifetime.end(i64 392, i8* %1) #2
  ret void

; <label>:8                                       ; preds = %6, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0))
  %3 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  call void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i64 %value_arg)
  %4 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = invoke noalias i8* @_Znwm(i64 88) #28
          to label %6 unwind label %14

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %5 to %class.YAML_Element*
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %7, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %8 unwind label %18

; <label>:8                                       ; preds = %6
  %9 = bitcast %class.YAML_Element** %element to i8**
  store i8* %5, i8** %9, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %11 = ptrtoint i8* %5 to i64
  %12 = inttoptr i64 %11 to %class.YAML_Element*
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %10, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  call void @llvm.lifetime.end(i64 32, i8* %3) #2
  ret %class.YAML_Element* %12

; <label>:14                                      ; preds = %8, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %22

; <label>:18                                      ; preds = %6
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  call void @_ZdlPv(i8* nonnull %5) #29
  br label %22

; <label>:22                                      ; preds = %18, %14
  %.01 = phi i8* [ %16, %14 ], [ %20, %18 ]
  %.0 = phi i32 [ %17, %14 ], [ %21, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  %23 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %.0, 1
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  %2 = tail call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 8)
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 %2)
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %4 = bitcast %"class.std::basic_ostream.base"* %3 to %"class.std::basic_ostream"*
  %5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEx(%"class.std::basic_ostream"* %4, i64 %value_arg)
          to label %6 unwind label %8

; <label>:6                                       ; preds = %0
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
  call void @llvm.lifetime.end(i64 392, i8* %1) #2
  ret void

; <label>:8                                       ; preds = %6, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEx(%"class.std::basic_ostream"* %this, i64 %__n) #0 align 2 {
  %1 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"* %this, i64 %__n)
  ret %"class.std::basic_ostream"* %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %converted_value = alloca %"class.std::__cxx11::basic_string", align 8
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0))
  %3 = bitcast %"class.std::__cxx11::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  call void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::__cxx11::basic_string"* nonnull sret %converted_value, %class.YAML_Element* undef, i64 %value_arg)
  %4 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = invoke noalias i8* @_Znwm(i64 88) #28
          to label %6 unwind label %14

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %5 to %class.YAML_Element*
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %7, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %converted_value)
          to label %8 unwind label %18

; <label>:8                                       ; preds = %6
  %9 = bitcast %class.YAML_Element** %element to i8**
  store i8* %5, i8** %9, align 8, !tbaa !1
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %11 = ptrtoint i8* %5 to i64
  %12 = inttoptr i64 %11 to %class.YAML_Element*
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %10, %class.YAML_Element** nonnull dereferenceable(8) %element)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  call void @llvm.lifetime.end(i64 32, i8* %3) #2
  ret %class.YAML_Element* %12

; <label>:14                                      ; preds = %8, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %22

; <label>:18                                      ; preds = %6
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  call void @_ZdlPv(i8* nonnull %5) #29
  br label %22

; <label>:22                                      ; preds = %18, %14
  %.01 = phi i8* [ %16, %14 ], [ %20, %18 ]
  %.0 = phi i32 [ %17, %14 ], [ %21, %18 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %converted_value)
  %23 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %.0, 1
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readnone %this, i64 %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %strm = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %1 = bitcast %"class.std::__cxx11::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start(i64 392, i8* %1) #2
  %2 = tail call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 8)
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringstream"* nonnull %strm, i32 %2)
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %4 = bitcast %"class.std::basic_ostream.base"* %3 to %"class.std::basic_ostream"*
  %5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %4, i64 %value_arg)
          to label %6 unwind label %8

; <label>:6                                       ; preds = %0
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
  call void @llvm.lifetime.end(i64 392, i8* %1) #2
  ret void

; <label>:8                                       ; preds = %6, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull %strm)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %this, i64 %__n) #0 align 2 {
  %1 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* %this, i64 %__n)
  ret %"class.std::basic_ostream"* %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* dereferenceable(32) %value_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %element = alloca %class.YAML_Element*, align 8
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0))
  %3 = bitcast %class.YAML_Element** %element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = tail call noalias i8* @_Znwm(i64 88) #28
  %5 = bitcast i8* %4 to %class.YAML_Element*
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(%class.YAML_Element* %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %value_arg)
          to label %6 unwind label %9

; <label>:6                                       ; preds = %0
  %7 = bitcast %class.YAML_Element** %element to i8**
  store i8* %4, i8** %7, align 8, !tbaa !1
  %8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_(%"class.std::vector"* %8, %class.YAML_Element** nonnull dereferenceable(8) %element)
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  ret %class.YAML_Element* %5

; <label>:9                                       ; preds = %0
  %10 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %4) #29
  resume { i8*, i32 } %10
}

; Function Attrs: uwtable
define %class.YAML_Element* @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.YAML_Element* nocapture readonly %this, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %key_arg) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %3 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %2)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %8
  %i.04 = phi i64 [ %9, %8 ], [ 0, %.lr.ph.preheader ]
  %5 = call dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* %2, i64 %i.04)
  %6 = load %class.YAML_Element*, %class.YAML_Element** %5, align 8, !tbaa !1
  call void @_ZN12YAML_Element6getKeyEv(%"class.std::__cxx11::basic_string"* nonnull sret %1, %class.YAML_Element* %6)
  %7 = call zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %key_arg)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %.lr.ph
  %9 = add i64 %i.04, 1
  %10 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %2)
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %.lr.ph, label %.loopexit.loopexit

; <label>:12                                      ; preds = %.lr.ph
  %13 = call dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* %2, i64 %i.04)
  %14 = load %class.YAML_Element*, %class.YAML_Element** %13, align 8, !tbaa !1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %12, %0
  %15 = phi %class.YAML_Element* [ %14, %12 ], [ null, %0 ], [ null, %.loopexit.loopexit ]
  ret %class.YAML_Element* %15
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN12YAML_Element6getKeyEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* readonly %this) #0 comdat align 2 {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
  ret void
}

; Function Attrs: uwtable
define available_externally void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* readonly dereferenceable(32) %__str) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 0
  %2 = tail call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this)
  %3 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %4 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaIcEE17_S_select_on_copyERKS1_(%"class.std::ios_base::Init"* nonnull dereferenceable(1) %3)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %1, i8* %2, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %4)
  %5 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %6 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this, i8* %5, i8* %7)
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define available_externally dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* readnone %this) #14 align 2 {
  %1 = bitcast %"class.std::__cxx11::basic_string"* %this to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr nonnull dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaIcEE17_S_select_on_copyERKS1_(%"class.std::ios_base::Init"* readnone dereferenceable(1) %__a) #14 comdat align 2 {
  ret %"class.std::ios_base::Init"* %__a
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* nocapture readonly %this) #6 align 2 {
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this, i64 0, i32 1
  %2 = load i64, i64* %1, align 8, !tbaa !33
  ret i64 %2
}

; Function Attrs: inlinehint nounwind readonly uwtable
define linkonce_odr zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(%"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__lhs, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__rhs) #12 comdat {
  %1 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nonnull %__lhs)
  %2 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nonnull %__rhs)
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* nonnull %__lhs)
  %6 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* nonnull %__rhs)
  %7 = tail call i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(i8* %5, i8* %6, i64 %1)
  %8 = icmp eq i32 %7, 0
  br label %9

; <label>:9                                       ; preds = %4, %0
  %10 = phi i1 [ false, %0 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: nounwind readonly uwtable
define linkonce_odr i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(i8* nocapture readonly %__s1, i8* nocapture readonly %__s2, i64 %__n) #8 comdat align 2 {
  %1 = icmp eq i64 %__n, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @memcmp(i8* %__s1, i8* %__s2, i64 %__n) #2
  br label %4

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #9

; Function Attrs: uwtable
define void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Element* nocapture readonly %this, %"class.std::__cxx11::basic_string"* %space) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space, %"class.std::__cxx11::basic_string"* dereferenceable(32) %8)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.83, i64 0, i64 0))
          to label %9 unwind label %16

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %10)
          to label %11 unwind label %20

; <label>:11                                      ; preds = %9
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* sret %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.85, i64 0, i64 0))
          to label %12 unwind label %24

; <label>:12                                      ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %2)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %30

.preheader:                                       ; preds = %33
  %13 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %14 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:16                                      ; preds = %0
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  br label %29

; <label>:20                                      ; preds = %9
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  br label %28

; <label>:24                                      ; preds = %11
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br label %28

; <label>:28                                      ; preds = %24, %20
  %.02 = phi i8* [ %22, %20 ], [ %26, %24 ]
  %.0 = phi i32 [ %23, %20 ], [ %27, %24 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %2)
  br label %29

; <label>:29                                      ; preds = %28, %16
  %.13 = phi i8* [ %18, %16 ], [ %.02, %28 ]
  %.1 = phi i32 [ %19, %16 ], [ %.0, %28 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %68

; <label>:30                                      ; preds = %33, %12
  %i.09 = phi i32 [ 0, %12 ], [ %34, %33 ]
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %4, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0))
          to label %31 unwind label %.loopexit.split-lp

; <label>:31                                      ; preds = %30
  %32 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %space, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %33 unwind label %39

; <label>:33                                      ; preds = %31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %4)
  %34 = add nuw nsw i32 %i.09, 1
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %30, label %.preheader

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %36

.loopexit.split-lp:                               ; preds = %30
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %36

; <label>:36                                      ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %37 = extractvalue { i8*, i32 } %lpad.phi, 0
  %38 = extractvalue { i8*, i32 } %lpad.phi, 1
  br label %67

; <label>:39                                      ; preds = %31
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = extractvalue { i8*, i32 } %40, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %4)
  br label %67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %49
  %i1.08 = phi i64 [ %50, %49 ], [ 0, %.lr.ph.preheader ]
  %43 = call dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* %13, i64 %i1.08)
  %44 = load %class.YAML_Element*, %class.YAML_Element** %43, align 8, !tbaa !1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* nonnull %7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %space)
          to label %45 unwind label %.loopexit

; <label>:45                                      ; preds = %.lr.ph
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nonnull sret %6, %class.YAML_Element* %44, %"class.std::__cxx11::basic_string"* nonnull %7)
          to label %46 unwind label %53

; <label>:46                                      ; preds = %45
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %5, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %6)
          to label %47 unwind label %57

; <label>:47                                      ; preds = %46
  %48 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5)
          to label %49 unwind label %61

; <label>:49                                      ; preds = %47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %6)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  %50 = add i64 %i1.08, 1
  %51 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %13)
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %.lr.ph, label %._crit_edge.loopexit

; <label>:53                                      ; preds = %45
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  br label %66

; <label>:57                                      ; preds = %46
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  br label %65

; <label>:61                                      ; preds = %47
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  %64 = extractvalue { i8*, i32 } %62, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  br label %65

; <label>:65                                      ; preds = %61, %57
  %.24 = phi i8* [ %59, %57 ], [ %63, %61 ]
  %.2 = phi i32 [ %60, %57 ], [ %64, %61 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %6)
  br label %66

; <label>:66                                      ; preds = %65, %53
  %.35 = phi i8* [ %55, %53 ], [ %.24, %65 ]
  %.3 = phi i32 [ %56, %53 ], [ %.2, %65 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  br label %67

._crit_edge.loopexit:                             ; preds = %49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  ret void

; <label>:67                                      ; preds = %66, %39, %36
  %.46 = phi i8* [ %37, %36 ], [ %41, %39 ], [ %.35, %66 ]
  %.4 = phi i32 [ %38, %36 ], [ %42, %39 ], [ %.3, %66 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  br label %68

; <label>:68                                      ; preds = %67, %29
  %.57 = phi i8* [ %.46, %67 ], [ %.13, %29 ]
  %.5 = phi i32 [ %.4, %67 ], [ %.1, %29 ]
  %69 = insertvalue { i8*, i32 } undef, i8* %.57, 0
  %70 = insertvalue { i8*, i32 } %69, i32 %.5, 1
  resume { i8*, i32 } %70
}

; Function Attrs: uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* readonly dereferenceable(32) %__lhs, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__rhs) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__lhs)
  %1 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__rhs)
          to label %2 unwind label %3

; <label>:2                                       ; preds = %0
  ret void

; <label>:3                                       ; preds = %0
  %4 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  resume { i8*, i32 } %4
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__str) #0 align 2 {
  %1 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %2 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nonnull %__str)
  %3 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* %this, i8* %1, i64 %2)
  ret %"class.std::__cxx11::basic_string"* %3
}

declare dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"*, i8*, i64) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* readonly dereferenceable(32) %__lhs, i8* %__rhs) #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__lhs)
  %1 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(%"class.std::__cxx11::basic_string"* %agg.result, i8* %__rhs)
          to label %2 unwind label %3

; <label>:2                                       ; preds = %0
  ret void

; <label>:3                                       ; preds = %0
  %4 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  resume { i8*, i32 } %4
}

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(%"class.std::__cxx11::basic_string"* %this, i8* %__s) #0 align 2 {
  %1 = tail call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s)
  tail call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc(%"class.std::__cxx11::basic_string"* %this, i64 0, i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.84, i64 0, i64 0))
  %2 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* %this, i8* %__s, i64 %1)
  ret %"class.std::__cxx11::basic_string"* %2
}

; Function Attrs: uwtable
define available_externally void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc(%"class.std::__cxx11::basic_string"* nocapture readonly %this, i64 %__n1, i64 %__n2, i8* %__s) #0 align 2 {
  %1 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %this)
  %2 = add i64 %__n1, 9223372036854775807
  %3 = sub i64 %2, %1
  %4 = icmp ult i64 %3, %__n2
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #27
  unreachable

; <label>:6                                       ; preds = %0
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Doc.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init.88()
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init.88() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit.89)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.89, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define void @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(%class.YAML_Doc* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %miniApp_Name, %"class.std::__cxx11::basic_string"* dereferenceable(32) %miniApp_Version, %"class.std::__cxx11::basic_string"* dereferenceable(32) %destination_Directory, %"class.std::__cxx11::basic_string"* dereferenceable(32) %destination_FileName) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  tail call void @_ZN12YAML_ElementC2Ev(%class.YAML_Element* %1)
  %2 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %2)
  %3 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %3)
  %4 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %4)
  %5 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %5)
  %6 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %miniApp_Name)
          to label %7 unwind label %14

; <label>:7                                       ; preds = %0
  %8 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %miniApp_Version)
          to label %9 unwind label %14

; <label>:9                                       ; preds = %7
  %10 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %4, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %destination_Directory)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %9
  %12 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %destination_FileName)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %11
  ret void

; <label>:14                                      ; preds = %11, %9, %7, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %5)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %4)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %3)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %2)
  invoke void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* %1)
          to label %16 unwind label %17

; <label>:16                                      ; preds = %14
  resume { i8*, i32 } %15

; <label>:17                                      ; preds = %14
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  tail call void @__clang_call_terminate(i8* %19) #25
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN12YAML_ElementC2Ev(%class.YAML_Element* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %1)
  %2 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %2)
  %3 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  tail call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EEC2Ev(%"class.std::vector"* %3)
  %4 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.90, i64 0, i64 0))
          to label %5 unwind label %8

; <label>:5                                       ; preds = %0
  %6 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %2, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.90, i64 0, i64 0))
          to label %7 unwind label %8

; <label>:7                                       ; preds = %5
  ret void

; <label>:8                                       ; preds = %5, %0
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev(%"class.std::vector"* %3)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %2)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %1)
  resume { i8*, i32 } %9

; <label>:11                                      ; preds = %8
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  tail call void @__clang_call_terminate(i8* %13) #25
  unreachable
}

; Function Attrs: uwtable
define void @_ZN8YAML_DocD2Ev(%class.YAML_Doc* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %1)
  %2 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %2)
  %3 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %3)
  %4 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %4)
  %5 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  tail call void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* %5)
  ret void
}

; Function Attrs: uwtable
define void @_ZN8YAML_Doc12generateYAMLEv(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.YAML_Doc* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::ios_base::Init", align 1
  %rawtime = alloca i64, align 8
  %sdate = alloca [25 x i8], align 16
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::ios_base::Init", align 1
  %mkdir_cmd = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %myfile = alloca %"class.std::basic_ofstream", align 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0))
          to label %21 unwind label %36

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %2, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %22)
          to label %23 unwind label %40

; <label>:23                                      ; preds = %21
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %1, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %2, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.94, i64 0, i64 0))
          to label %24 unwind label %44

; <label>:24                                      ; preds = %23
  %25 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %1)
          to label %26 unwind label %48

; <label>:26                                      ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %2)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.95, i64 0, i64 0))
          to label %27 unwind label %36

; <label>:27                                      ; preds = %26
  %28 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %5, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %28)
          to label %29 unwind label %54

; <label>:29                                      ; preds = %27
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %4, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.94, i64 0, i64 0))
          to label %30 unwind label %58

; <label>:30                                      ; preds = %29
  %31 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %4)
          to label %32 unwind label %62

; <label>:32                                      ; preds = %30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %4)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %6)
  %33 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2
  %34 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %32
  br label %.lr.ph

; <label>:36                                      ; preds = %26, %0
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  %39 = extractvalue { i8*, i32 } %37, 1
  br label %223

; <label>:40                                      ; preds = %21
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  %43 = extractvalue { i8*, i32 } %41, 1
  br label %53

; <label>:44                                      ; preds = %23
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  br label %52

; <label>:48                                      ; preds = %24
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = extractvalue { i8*, i32 } %49, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %1)
  br label %52

; <label>:52                                      ; preds = %48, %44
  %.01 = phi i8* [ %46, %44 ], [ %50, %48 ]
  %.0 = phi i32 [ %47, %44 ], [ %51, %48 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %2)
  br label %53

; <label>:53                                      ; preds = %52, %40
  %.16 = phi i8* [ %42, %40 ], [ %.01, %52 ]
  %.1 = phi i32 [ %43, %40 ], [ %.0, %52 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %3)
  br label %223

; <label>:54                                      ; preds = %27
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  br label %67

; <label>:58                                      ; preds = %29
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  %61 = extractvalue { i8*, i32 } %59, 1
  br label %66

; <label>:62                                      ; preds = %30
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  %65 = extractvalue { i8*, i32 } %63, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %4)
  br label %66

; <label>:66                                      ; preds = %62, %58
  %.27 = phi i8* [ %60, %58 ], [ %64, %62 ]
  %.2 = phi i32 [ %61, %58 ], [ %65, %62 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %5)
  br label %67

; <label>:67                                      ; preds = %66, %54
  %.38 = phi i8* [ %56, %54 ], [ %.27, %66 ]
  %.3 = phi i32 [ %57, %54 ], [ %.2, %66 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %6)
  br label %223

.lr.ph:                                           ; preds = %.lr.ph.preheader, %74
  %i.021 = phi i64 [ %75, %74 ], [ 0, %.lr.ph.preheader ]
  %68 = call dereferenceable(8) %class.YAML_Element** @_ZNSt6vectorIP12YAML_ElementSaIS1_EEixEm(%"class.std::vector"* %33, i64 %i.021)
  %69 = load %class.YAML_Element*, %class.YAML_Element** %68, align 8, !tbaa !1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %9, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.90, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull dereferenceable(1) %10)
          to label %70 unwind label %78

; <label>:70                                      ; preds = %.lr.ph
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nonnull sret %8, %class.YAML_Element* %69, %"class.std::__cxx11::basic_string"* nonnull %9)
          to label %71 unwind label %82

; <label>:71                                      ; preds = %70
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %8)
          to label %72 unwind label %86

; <label>:72                                      ; preds = %71
  %73 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7)
          to label %74 unwind label %90

; <label>:74                                      ; preds = %72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %8)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %9)
  %75 = add i64 %i.021, 1
  %76 = call i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE4sizeEv(%"class.std::vector"* %33)
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %.lr.ph, label %._crit_edge.loopexit

; <label>:78                                      ; preds = %.lr.ph
  %79 = landingpad { i8*, i32 }
          cleanup
  %80 = extractvalue { i8*, i32 } %79, 0
  %81 = extractvalue { i8*, i32 } %79, 1
  br label %223

; <label>:82                                      ; preds = %70
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  %85 = extractvalue { i8*, i32 } %83, 1
  br label %95

; <label>:86                                      ; preds = %71
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  %89 = extractvalue { i8*, i32 } %87, 1
  br label %94

; <label>:90                                      ; preds = %72
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  %93 = extractvalue { i8*, i32 } %91, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %7)
  br label %94

; <label>:94                                      ; preds = %90, %86
  %.49 = phi i8* [ %88, %86 ], [ %92, %90 ]
  %.4 = phi i32 [ %89, %86 ], [ %93, %90 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %8)
  br label %95

; <label>:95                                      ; preds = %94, %82
  %.510 = phi i8* [ %84, %82 ], [ %.49, %94 ]
  %.5 = phi i32 [ %85, %82 ], [ %.4, %94 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %9)
  br label %223

._crit_edge.loopexit:                             ; preds = %74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %32
  %96 = bitcast i64* %rawtime to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #2
  %97 = call i64 @time(i64* nonnull %rawtime) #2
  %98 = call %struct.tm* @localtime(i64* nonnull %rawtime) #2
  %99 = getelementptr inbounds [25 x i8], [25 x i8]* %sdate, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* %99) #2
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 5
  %101 = load i32, i32* %100, align 4, !tbaa !70
  %102 = add nsw i32 %101, 1900
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 4
  %104 = load i32, i32* %103, align 8, !tbaa !72
  %105 = add nsw i32 %104, 1
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 3
  %107 = load i32, i32* %106, align 4, !tbaa !73
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 2
  %109 = load i32, i32* %108, align 8, !tbaa !74
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 1
  %111 = load i32, i32* %110, align 4, !tbaa !75
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %98, i64 0, i32 0
  %113 = load i32, i32* %112, align 8, !tbaa !76
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4.96, i64 0, i64 0), i32 %102, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113) #2
  %115 = bitcast %"class.std::__cxx11::basic_string"* %filename to i8*
  call void @llvm.lifetime.start(i64 32, i8* %115) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* nonnull %filename)
  %116 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  %117 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %116, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.90, i64 0, i64 0))
          to label %118 unwind label %125

; <label>:118                                     ; preds = %._crit_edge
  br i1 %117, label %119, label %143

; <label>:119                                     ; preds = %118
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %13, %"class.std::__cxx11::basic_string"* dereferenceable(32) %22, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.97, i64 0, i64 0))
          to label %120 unwind label %125

; <label>:120                                     ; preds = %119
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %12, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %13, %"class.std::__cxx11::basic_string"* dereferenceable(32) %28)
          to label %121 unwind label %129

; <label>:121                                     ; preds = %120
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %11, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.98, i64 0, i64 0))
          to label %122 unwind label %133

; <label>:122                                     ; preds = %121
  %123 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %11)
          to label %124 unwind label %137

; <label>:124                                     ; preds = %122
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %11)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %12)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %13)
  br label %145

; <label>:125                                     ; preds = %216, %207, %199, %157, %154, %150, %143, %119, %._crit_edge
  %126 = landingpad { i8*, i32 }
          cleanup
  %127 = extractvalue { i8*, i32 } %126, 0
  %128 = extractvalue { i8*, i32 } %126, 1
  br label %222

; <label>:129                                     ; preds = %120
  %130 = landingpad { i8*, i32 }
          cleanup
  %131 = extractvalue { i8*, i32 } %130, 0
  %132 = extractvalue { i8*, i32 } %130, 1
  br label %142

; <label>:133                                     ; preds = %121
  %134 = landingpad { i8*, i32 }
          cleanup
  %135 = extractvalue { i8*, i32 } %134, 0
  %136 = extractvalue { i8*, i32 } %134, 1
  br label %141

; <label>:137                                     ; preds = %122
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = extractvalue { i8*, i32 } %138, 0
  %140 = extractvalue { i8*, i32 } %138, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %11)
  br label %141

; <label>:141                                     ; preds = %137, %133
  %.712 = phi i8* [ %135, %133 ], [ %139, %137 ]
  %.7 = phi i32 [ %136, %133 ], [ %140, %137 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %12)
  br label %142

; <label>:142                                     ; preds = %141, %129
  %.813 = phi i8* [ %131, %129 ], [ %.712, %141 ]
  %.8 = phi i32 [ %132, %129 ], [ %.7, %141 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %13)
  br label %222

; <label>:143                                     ; preds = %118
  %144 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* dereferenceable(32) %116)
          to label %145 unwind label %125

; <label>:145                                     ; preds = %143, %124
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull %16, i8* %99, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %17)
          to label %146 unwind label %167

; <label>:146                                     ; preds = %145
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %15, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %16)
          to label %147 unwind label %171

; <label>:147                                     ; preds = %146
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %14, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %15, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.99, i64 0, i64 0))
          to label %148 unwind label %175

; <label>:148                                     ; preds = %147
  %149 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %14)
          to label %150 unwind label %179

; <label>:150                                     ; preds = %148
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %14)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %15)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %16)
  %151 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  %152 = invoke zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %151, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.90, i64 0, i64 0))
          to label %153 unwind label %125

; <label>:153                                     ; preds = %150
  br i1 %152, label %154, label %199

; <label>:154                                     ; preds = %153
  %155 = invoke zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %151, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.100, i64 0, i64 0))
          to label %156 unwind label %125

; <label>:156                                     ; preds = %154
  br i1 %155, label %157, label %199

; <label>:157                                     ; preds = %156
  %158 = bitcast %"class.std::__cxx11::basic_string"* %mkdir_cmd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %158) #2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret %mkdir_cmd, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.101, i64 0, i64 0), %"class.std::__cxx11::basic_string"* dereferenceable(32) %151)
          to label %159 unwind label %125

; <label>:159                                     ; preds = %157
  %160 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* nonnull %mkdir_cmd)
  %161 = invoke i32 @system(i8* %160)
          to label %162 unwind label %185

; <label>:162                                     ; preds = %159
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret %19, %"class.std::__cxx11::basic_string"* dereferenceable(32) %151, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0))
          to label %163 unwind label %185

; <label>:163                                     ; preds = %162
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret %18, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %19, %"class.std::__cxx11::basic_string"* dereferenceable(32) %116)
          to label %164 unwind label %189

; <label>:164                                     ; preds = %163
  %165 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %18)
          to label %166 unwind label %193

; <label>:166                                     ; preds = %164
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %18)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %19)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %mkdir_cmd)
  call void @llvm.lifetime.end(i64 32, i8* %158) #2
  br label %207

; <label>:167                                     ; preds = %145
  %168 = landingpad { i8*, i32 }
          cleanup
  %169 = extractvalue { i8*, i32 } %168, 0
  %170 = extractvalue { i8*, i32 } %168, 1
  br label %222

; <label>:171                                     ; preds = %146
  %172 = landingpad { i8*, i32 }
          cleanup
  %173 = extractvalue { i8*, i32 } %172, 0
  %174 = extractvalue { i8*, i32 } %172, 1
  br label %184

; <label>:175                                     ; preds = %147
  %176 = landingpad { i8*, i32 }
          cleanup
  %177 = extractvalue { i8*, i32 } %176, 0
  %178 = extractvalue { i8*, i32 } %176, 1
  br label %183

; <label>:179                                     ; preds = %148
  %180 = landingpad { i8*, i32 }
          cleanup
  %181 = extractvalue { i8*, i32 } %180, 0
  %182 = extractvalue { i8*, i32 } %180, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %14)
  br label %183

; <label>:183                                     ; preds = %179, %175
  %.914 = phi i8* [ %177, %175 ], [ %181, %179 ]
  %.9 = phi i32 [ %178, %175 ], [ %182, %179 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %15)
  br label %184

; <label>:184                                     ; preds = %183, %171
  %.1015 = phi i8* [ %173, %171 ], [ %.914, %183 ]
  %.10 = phi i32 [ %174, %171 ], [ %.9, %183 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %16)
  br label %222

; <label>:185                                     ; preds = %162, %159
  %186 = landingpad { i8*, i32 }
          cleanup
  %187 = extractvalue { i8*, i32 } %186, 0
  %188 = extractvalue { i8*, i32 } %186, 1
  br label %198

; <label>:189                                     ; preds = %163
  %190 = landingpad { i8*, i32 }
          cleanup
  %191 = extractvalue { i8*, i32 } %190, 0
  %192 = extractvalue { i8*, i32 } %190, 1
  br label %197

; <label>:193                                     ; preds = %164
  %194 = landingpad { i8*, i32 }
          cleanup
  %195 = extractvalue { i8*, i32 } %194, 0
  %196 = extractvalue { i8*, i32 } %194, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %18)
  br label %197

; <label>:197                                     ; preds = %193, %189
  %.1217 = phi i8* [ %191, %189 ], [ %195, %193 ]
  %.12 = phi i32 [ %192, %189 ], [ %196, %193 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %19)
  br label %198

; <label>:198                                     ; preds = %197, %185
  %.1318 = phi i8* [ %187, %185 ], [ %.1217, %197 ]
  %.13 = phi i32 [ %188, %185 ], [ %.12, %197 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %mkdir_cmd)
  br label %222

; <label>:199                                     ; preds = %156, %153
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret %20, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11.104, i64 0, i64 0), %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %filename)
          to label %200 unwind label %125

; <label>:200                                     ; preds = %199
  %201 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* nonnull %filename, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20)
          to label %202 unwind label %203

; <label>:202                                     ; preds = %200
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %20)
  br label %207

; <label>:203                                     ; preds = %200
  %204 = landingpad { i8*, i32 }
          cleanup
  %205 = extractvalue { i8*, i32 } %204, 0
  %206 = extractvalue { i8*, i32 } %204, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %20)
  br label %222

; <label>:207                                     ; preds = %202, %166
  %208 = bitcast %"class.std::basic_ofstream"* %myfile to i8*
  call void @llvm.lifetime.start(i64 512, i8* %208) #2
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull %myfile)
          to label %209 unwind label %125

; <label>:209                                     ; preds = %207
  %210 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* nonnull %filename)
  %211 = call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 32)
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull %myfile, i8* %210, i32 %211)
          to label %212 unwind label %217

; <label>:212                                     ; preds = %209
  %213 = bitcast %"class.std::basic_ofstream"* %myfile to %"class.std::basic_ostream"*
  %214 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) %213, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result)
          to label %215 unwind label %217

; <label>:215                                     ; preds = %212
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* nonnull %myfile)
          to label %216 unwind label %217

; <label>:216                                     ; preds = %215
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* nonnull %myfile)
          to label %221 unwind label %125

; <label>:217                                     ; preds = %215, %212, %209
  %218 = landingpad { i8*, i32 }
          cleanup
  %219 = extractvalue { i8*, i32 } %218, 0
  %220 = extractvalue { i8*, i32 } %218, 1
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* nonnull %myfile)
          to label %222 unwind label %226

; <label>:221                                     ; preds = %216
  call void @llvm.lifetime.end(i64 512, i8* %208) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %filename)
  call void @llvm.lifetime.end(i64 32, i8* %115) #2
  call void @llvm.lifetime.end(i64 25, i8* %99) #2
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  ret void

; <label>:222                                     ; preds = %217, %203, %198, %184, %167, %142, %125
  %.1419 = phi i8* [ %127, %125 ], [ %219, %217 ], [ %.1318, %198 ], [ %205, %203 ], [ %.813, %142 ], [ %169, %167 ], [ %.1015, %184 ]
  %.14 = phi i32 [ %128, %125 ], [ %220, %217 ], [ %.13, %198 ], [ %206, %203 ], [ %.8, %142 ], [ %170, %167 ], [ %.10, %184 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull %filename)
  br label %223

; <label>:223                                     ; preds = %222, %95, %78, %67, %53, %36
  %.1520 = phi i8* [ %38, %36 ], [ %.1419, %222 ], [ %.38, %67 ], [ %.16, %53 ], [ %80, %78 ], [ %.510, %95 ]
  %.15 = phi i32 [ %39, %36 ], [ %.14, %222 ], [ %.3, %67 ], [ %.1, %53 ], [ %81, %78 ], [ %.5, %95 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  %224 = insertvalue { i8*, i32 } undef, i8* %.1520, 0
  %225 = insertvalue { i8*, i32 } %224, i32 %.15, 1
  resume { i8*, i32 } %225

; <label>:226                                     ; preds = %217
  %227 = landingpad { i8*, i32 }
          catch i8* null
  %228 = extractvalue { i8*, i32 } %227, 0
  call void @__clang_call_terminate(i8* %228) #25
  unreachable
}

; Function Attrs: nounwind
declare i64 @time(i64*) #13

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #13

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #13

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %__lhs, i8* %__rhs) #5 comdat {
  %1 = tail call i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* nonnull %__lhs, i8* %__rhs)
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %__lhs, i8* %__rhs) #5 comdat {
  %1 = tail call zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__lhs, i8* %__rhs)
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, i8* %__lhs, %"class.std::__cxx11::basic_string"* nocapture readonly dereferenceable(32) %__rhs) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__lhs)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  %2 = tail call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* nonnull %__rhs)
  %3 = add i64 %2, %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* %agg.result, i64 %3)
          to label %4 unwind label %9

; <label>:4                                       ; preds = %0
  %5 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* %agg.result, i8* %__lhs, i64 %1)
          to label %6 unwind label %9

; <label>:6                                       ; preds = %4
  %7 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %__rhs)
          to label %8 unwind label %9

; <label>:8                                       ; preds = %6
  ret void

; <label>:9                                       ; preds = %6, %4, %0
  %10 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  resume { i8*, i32 } %10
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"*, i64) #1

; Function Attrs: uwtable
define available_externally nonnull dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* %this, i8* %__s, i64 %__n) #0 align 2 {
  tail call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc(%"class.std::__cxx11::basic_string"* %this, i64 0, i64 %__n, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13.102, i64 0, i64 0))
  %1 = tail call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* %this, i8* %__s, i64 %__n)
  ret %"class.std::__cxx11::basic_string"* %1
}

; Function Attrs: norecurse nounwind readonly uwtable
define available_externally i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* nocapture readonly %this) #6 align 2 {
  %1 = tail call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this)
  ret i8* %1
}

declare i32 @system(i8* nocapture readonly) #1

; Function Attrs: uwtable
define available_externally void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast %"class.std::basic_ofstream"* %this to i8*
  %2 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev(%"class.std::basic_ios"* %2)
  %3 = bitcast %"class.std::basic_ofstream"* %this to %"class.std::basic_ostream"*
  invoke void @_ZNSoC2Ev(%"class.std::basic_ostream"* %3, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 1))
          to label %4 unwind label %18

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 3) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %2, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 8) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 1
  invoke void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(%"class.std::basic_filebuf"* %7)
          to label %8 unwind label %22

; <label>:8                                       ; preds = %4
  %9 = bitcast %"class.std::basic_ofstream"* %this to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !13
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 %13
  %15 = bitcast i8* %14 to %"class.std::basic_ios"*
  %16 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %7, i64 0, i32 0
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %15, %"class.std::basic_streambuf"* %16)
          to label %17 unwind label %26

; <label>:17                                      ; preds = %8
  ret void

; <label>:18                                      ; preds = %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  br label %30

; <label>:22                                      ; preds = %4
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  br label %30

; <label>:26                                      ; preds = %8
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  %29 = extractvalue { i8*, i32 } %27, 1
  invoke void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* nonnull %7)
          to label %30 unwind label %34

; <label>:30                                      ; preds = %26, %22, %18
  %.12 = phi i8* [ %20, %18 ], [ %28, %26 ], [ %24, %22 ]
  %.1 = phi i32 [ %21, %18 ], [ %29, %26 ], [ %25, %22 ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %2)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %30
  %32 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %.1, 1
  resume { i8*, i32 } %33

; <label>:34                                      ; preds = %30, %26
  %35 = landingpad { i8*, i32 }
          catch i8* null
  %36 = extractvalue { i8*, i32 } %35, 0
  tail call void @__clang_call_terminate(i8* %36) #25
  unreachable
}

declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(%"class.std::basic_filebuf"*) #1

; Function Attrs: uwtable
define available_externally void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !13
  %2 = invoke %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* %this)
          to label %3 unwind label %7

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %this, i64 0, i32 2
  invoke void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"* %4)
          to label %5 unwind label %12

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %this, i64 0, i32 0
  tail call void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(%"class.std::basic_streambuf"* %6)
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %this, i64 0, i32 2
  invoke void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"* %11)
          to label %16 unwind label %20

; <label>:12                                      ; preds = %3
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  br label %16

; <label>:16                                      ; preds = %12, %7
  %.01 = phi i8* [ %14, %12 ], [ %9, %7 ]
  %.0 = phi i32 [ %15, %12 ], [ %10, %7 ]
  %17 = getelementptr inbounds %"class.std::basic_filebuf", %"class.std::basic_filebuf"* %this, i64 0, i32 0
  tail call void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(%"class.std::basic_streambuf"* %17)
  %18 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %.0, 1
  resume { i8*, i32 } %19

; <label>:20                                      ; preds = %7
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  tail call void @__clang_call_terminate(i8* %22) #25
  unreachable
}

declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"*) #1

declare void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"*) #1

; Function Attrs: uwtable
define available_externally void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* %this, i8* %__s, i32 %__mode) #0 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 1
  %2 = tail call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 %__mode, i32 16)
  %3 = tail call %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"* %1, i8* %__s, i32 %2)
  %4 = icmp eq %"class.std::basic_filebuf"* %3, null
  %5 = bitcast %"class.std::basic_ofstream"* %this to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !13
  %7 = getelementptr i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::basic_ofstream"* %this to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = bitcast i8* %11 to %"class.std::basic_ios"*
  br i1 %4, label %13, label %14

; <label>:13                                      ; preds = %0
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %12, i32 4)
  br label %15

; <label>:14                                      ; preds = %0
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %12, i32 0)
  br label %15

; <label>:15                                      ; preds = %14, %13
  ret void
}

declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"*, i8*, i32) #1

; Function Attrs: uwtable
define available_externally void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* %this) #0 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 1
  %2 = tail call %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* %1)
  %3 = icmp eq %"class.std::basic_filebuf"* %2, null
  br i1 %3, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = bitcast %"class.std::basic_ofstream"* %this to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !13
  %7 = getelementptr i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::basic_ofstream"* %this to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = bitcast i8* %11 to %"class.std::basic_ios"*
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %12, i32 4)
  br label %13

; <label>:13                                      ; preds = %4, %0
  ret void
}

; Function Attrs: uwtable
define available_externally void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_ofstream"* %this, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 0, i64 0))
          to label %1 unwind label %3

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %2)
  ret void

; <label>:3                                       ; preds = %0
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 2
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(%"class.std::basic_ios"* %5)
          to label %6 unwind label %7

; <label>:6                                       ; preds = %3
  resume { i8*, i32 } %4

; <label>:7                                       ; preds = %3
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  tail call void @__clang_call_terminate(i8* %9) #25
  unreachable
}

; Function Attrs: uwtable
define available_externally void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_ofstream"* %this, i8** nocapture readonly %vtt) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = bitcast i8** %vtt to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast %"class.std::basic_ofstream"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !13
  %4 = getelementptr inbounds i8*, i8** %vtt, i64 3
  %5 = bitcast i8** %4 to i64*
  %6 = load i64, i64* %5, align 8
  %.cast = inttoptr i64 %2 to i8*
  %7 = getelementptr i8, i8* %.cast, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::basic_ofstream"* %this to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = bitcast i8* %11 to i64*
  store i64 %6, i64* %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %this, i64 0, i32 1
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* %13)
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { noinline noreturn nounwind }
attributes #19 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inlinehint norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inlinehint norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind readonly }
attributes #27 = { noreturn }
attributes #28 = { builtin }
attributes #29 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!10, !6, i64 16}
!10 = !{!"_ZTS24HPC_Sparse_Matrix_STRUCT", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88}
!11 = !{!"long long", !3, i64 0}
!12 = !{!10, !11, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !4, i64 0}
!15 = !{!16, !19, i64 32}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !2, i64 40, !20, i64 48, !3, i64 64, !6, i64 192, !2, i64 200, !21, i64 208}
!17 = !{!"long", !3, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !3, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !3, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !2, i64 0, !17, i64 8}
!21 = !{!"_ZTSSt6locale", !2, i64 0}
!22 = !{!23, !2, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !2, i64 216, !3, i64 224, !24, i64 225, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256}
!24 = !{!"bool", !3, i64 0}
!25 = !{!26, !3, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !2, i64 16, !24, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !3, i64 57, !3, i64 313, !3, i64 569}
!27 = !{!3, !3, i64 0}
!28 = !{!29, !2, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !2, i64 0}
!30 = !{!17, !17, i64 0}
!31 = !{!32, !2, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !17, i64 8, !3, i64 16}
!33 = !{!32, !17, i64 8}
!34 = !{!10, !2, i64 0}
!35 = !{!10, !2, i64 48}
!36 = !{!10, !2, i64 56}
!37 = !{!10, !2, i64 64}
!38 = !{!10, !2, i64 72}
!39 = !{!10, !2, i64 80}
!40 = !{!10, !2, i64 88}
!41 = !{!10, !6, i64 8}
!42 = !{!10, !6, i64 12}
!43 = !{!10, !6, i64 32}
!44 = !{!10, !6, i64 36}
!45 = !{!10, !6, i64 40}
!46 = !{!11, !11, i64 0}
!47 = !{!48, !17, i64 0}
!48 = !{!"_ZTS6rusage", !49, i64 0, !49, i64 16, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136}
!49 = !{!"_ZTS7timeval", !17, i64 0, !17, i64 8}
!50 = !{!48, !17, i64 8}
!51 = !{!52, !2, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIP12YAML_ElementSaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implE", !2, i64 0, !2, i64 8, !2, i64 16}
!54 = !{!52, !2, i64 16}
!55 = !{!52, !2, i64 8}
!56 = !{!23, !2, i64 216}
!57 = !{!23, !3, i64 224}
!58 = !{!23, !24, i64 225}
!59 = !{!60, !17, i64 8}
!60 = !{!"_ZTSSi", !17, i64 8}
!61 = !{!62, !63, i64 64}
!62 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !63, i64 64, !32, i64 72}
!63 = !{!"_ZTSSt13_Ios_Openmode", !3, i64 0}
!64 = !{!65, !2, i64 40}
!65 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !21, i64 56}
!66 = !{!65, !2, i64 24}
!67 = !{!65, !2, i64 32}
!68 = !{!69, !2, i64 0}
!69 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPP12YAML_ElementSt6vectorIS2_SaIS2_EEEE", !2, i64 0}
!70 = !{!71, !6, i64 20}
!71 = !{!"_ZTS2tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !17, i64 40, !2, i64 48}
!72 = !{!71, !6, i64 16}
!73 = !{!71, !6, i64 12}
!74 = !{!71, !6, i64 8}
!75 = !{!71, !6, i64 4}
!76 = !{!71, !6, i64 0}
