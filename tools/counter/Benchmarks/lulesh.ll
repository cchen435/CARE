; ModuleID = 'lulesh.ll'
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
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.__gnu_cxx::__normal_iterator.5" = type { double* }

$_ZN6Domain8nodelistEi = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZN6Domain1xEi = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZN6Domain1yEi = comdat any

$_ZN6Domain1zEi = comdat any

$_ZN6Domain4voloEi = comdat any

$_ZN6Domain1vEi = comdat any

$_ZN6Domain4delvEi = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_Z4SQRTd = comdat any

$_ZN6Domain6arealgEi = comdat any

$_ZN6Domain2xdEi = comdat any

$_ZN6Domain2ydEi = comdat any

$_ZN6Domain2zdEi = comdat any

$_ZN6Domain3dxxEi = comdat any

$_ZN6Domain3dyyEi = comdat any

$_ZN6Domain3dzzEi = comdat any

$_ZN6Domain4timeEv = comdat any

$_ZN6Domain8stoptimeEv = comdat any

$_ZN6Domain5cycleEv = comdat any

$_ZN6Domain7dtfixedEv = comdat any

$_ZN6Domain9deltatimeEv = comdat any

$_ZN6Domain9dtcourantEv = comdat any

$_ZN6Domain7dthydroEv = comdat any

$_ZN6Domain15deltatimemultlbEv = comdat any

$_ZN6Domain15deltatimemultubEv = comdat any

$_ZN6Domain5dtmaxEv = comdat any

$_ZNK6Domain5u_cutEv = comdat any

$_ZN6Domain7numNodeEv = comdat any

$_ZN6Domain7numElemEv = comdat any

$_ZNK6Domain6hgcoefEv = comdat any

$_Z8AllocateIdEPT_m = comdat any

$_ZN6Domain1pEi = comdat any

$_ZN6Domain1qEi = comdat any

$_ZN6Domain2fxEi = comdat any

$_ZN6Domain2fyEi = comdat any

$_ZN6Domain2fzEi = comdat any

$_ZN6Domain2ssEi = comdat any

$_ZN6Domain8elemMassEi = comdat any

$_Z4CBRTd = comdat any

$_Z7ReleaseIdEvPPT_ = comdat any

$_ZN6Domain9nodalMassEi = comdat any

$_ZN6Domain3xddEi = comdat any

$_ZN6Domain3yddEi = comdat any

$_ZN6Domain3zddEi = comdat any

$_ZN6Domain5sizeXEv = comdat any

$_ZN6Domain10symmXemptyEv = comdat any

$_ZNKSt6vectorIiSaIiEE5emptyEv = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN6Domain5symmXEi = comdat any

$_ZN6Domain10symmYemptyEv = comdat any

$_ZN6Domain5symmYEi = comdat any

$_ZN6Domain10symmZemptyEv = comdat any

$_ZN6Domain5symmZEi = comdat any

$_Z4FABSd = comdat any

$_ZN6Domain15AllocateStrainsEi = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEmd = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZN6Domain17DeallocateStrainsEv = comdat any

$_ZNSt6vectorIdSaIdEE5clearEv = comdat any

$_ZN6Domain4vdovEi = comdat any

$_ZN6Domain5sizeYEv = comdat any

$_ZN6Domain5sizeZEv = comdat any

$_ZN6Domain17AllocateGradientsEii = comdat any

$_ZN6Domain9delx_zetaEi = comdat any

$_ZN6Domain9delv_zetaEi = comdat any

$_ZN6Domain7delx_xiEi = comdat any

$_ZN6Domain7delv_xiEi = comdat any

$_ZN6Domain8delx_etaEi = comdat any

$_ZN6Domain8delv_etaEi = comdat any

$_ZN6Domain6numRegEv = comdat any

$_ZN6Domain11regElemSizeEi = comdat any

$_ZNK6Domain18monoq_limiter_multEv = comdat any

$_ZNK6Domain15monoq_max_slopeEv = comdat any

$_ZNK6Domain9qlc_monoqEv = comdat any

$_ZNK6Domain9qqc_monoqEv = comdat any

$_ZN6Domain11regElemlistEii = comdat any

$_ZN6Domain6elemBCEi = comdat any

$_ZN6Domain4lximEi = comdat any

$_ZN6Domain4lxipEi = comdat any

$_ZN6Domain5letamEi = comdat any

$_ZN6Domain5letapEi = comdat any

$_ZN6Domain6lzetamEi = comdat any

$_ZN6Domain6lzetapEi = comdat any

$_ZN6Domain2qqEi = comdat any

$_ZN6Domain2qlEi = comdat any

$_ZN6Domain19DeallocateGradientsEv = comdat any

$_ZNK6Domain5qstopEv = comdat any

$_ZNK6Domain7eosvminEv = comdat any

$_ZNK6Domain7eosvmaxEv = comdat any

$_ZN6Domain11regElemlistEi = comdat any

$_ZN6Domain4costEv = comdat any

$_ZNK6Domain5e_cutEv = comdat any

$_ZNK6Domain5p_cutEv = comdat any

$_ZNK6Domain5q_cutEv = comdat any

$_ZNK6Domain4pminEv = comdat any

$_ZNK6Domain4eminEv = comdat any

$_ZNK6Domain7refdensEv = comdat any

$_ZN6Domain1eEi = comdat any

$_ZNK6Domain5v_cutEv = comdat any

$_ZNK6Domain3qqcEv = comdat any

$_ZNK6Domain7dvovmaxEv = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZN6Domain22AllocateElemPersistentEi = comdat any

$_ZNSt6vectorIiSaIiEE6resizeEmi = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt4fillIPiiEvT_S1_RKT0_ = comdat any

$_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZN6Domain22AllocateNodePersistentEi = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZN6Domain10regNumListEi = comdat any

$_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

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
  %46 = tail call fastcc double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %1, double %3, double %5, double %7, double %9, double %11, double %13, double %15, double %16, double %18, double %20, double %22, double %24, double %26, double %28, double %30, double %31, double %33, double %35, double %37, double %39, double %41, double %43, double %45)
  ret double %46
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define internal fastcc double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %x6, double %x7, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %y6, double %y7, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double %z6, double %z7) unnamed_addr #4 {
  %1 = fsub double %x6, %x1
  %2 = fsub double %y6, %y1
  %3 = fsub double %z6, %z1
  %4 = fsub double %x7, %x0
  %5 = fsub double %y7, %y0
  %6 = fsub double %z7, %z0
  %7 = fsub double %x6, %x3
  %8 = fsub double %y6, %y3
  %9 = fsub double %z6, %z3
  %10 = fsub double %x2, %x0
  %11 = fsub double %y2, %y0
  %12 = fsub double %z2, %z0
  %13 = fsub double %x5, %x0
  %14 = fsub double %y5, %y0
  %15 = fsub double %z5, %z0
  %16 = fsub double %x6, %x4
  %17 = fsub double %y6, %y4
  %18 = fsub double %z6, %z4
  %19 = fsub double %x3, %x1
  %20 = fsub double %y3, %y1
  %21 = fsub double %z3, %z1
  %22 = fsub double %x7, %x2
  %23 = fsub double %y7, %y2
  %24 = fsub double %z7, %z2
  %25 = fsub double %x4, %x3
  %26 = fsub double %y4, %y3
  %27 = fsub double %z4, %z3
  %28 = fsub double %x5, %x7
  %29 = fsub double %y5, %y7
  %30 = fsub double %z5, %z7
  %31 = fsub double %x1, %x4
  %32 = fsub double %y1, %y4
  %33 = fsub double %z1, %z4
  %34 = fsub double %x2, %x5
  %35 = fsub double %y2, %y5
  %36 = fsub double %z2, %z5
  %37 = fadd double %19, %22
  %38 = fmul double %8, %12
  %39 = fmul double %11, %9
  %40 = fsub double %38, %39
  %41 = fmul double %37, %40
  %42 = fadd double %20, %23
  %43 = fmul double %10, %9
  %44 = fmul double %7, %12
  %45 = fsub double %43, %44
  %46 = fmul double %42, %45
  %47 = fadd double %41, %46
  %48 = fadd double %21, %24
  %49 = fmul double %7, %11
  %50 = fmul double %10, %8
  %51 = fsub double %49, %50
  %52 = fmul double %51, %48
  %53 = fadd double %52, %47
  %54 = fadd double %25, %28
  %55 = fmul double %17, %6
  %56 = fmul double %5, %18
  %57 = fsub double %55, %56
  %58 = fmul double %54, %57
  %59 = fadd double %26, %29
  %60 = fmul double %4, %18
  %61 = fmul double %16, %6
  %62 = fsub double %60, %61
  %63 = fmul double %59, %62
  %64 = fadd double %58, %63
  %65 = fadd double %27, %30
  %66 = fmul double %16, %5
  %67 = fmul double %4, %17
  %68 = fsub double %66, %67
  %69 = fmul double %68, %65
  %70 = fadd double %69, %64
  %71 = fadd double %53, %70
  %72 = fadd double %31, %34
  %73 = fmul double %2, %15
  %74 = fmul double %14, %3
  %75 = fsub double %73, %74
  %76 = fmul double %72, %75
  %77 = fadd double %32, %35
  %78 = fmul double %13, %3
  %79 = fmul double %1, %15
  %80 = fsub double %78, %79
  %81 = fmul double %77, %80
  %82 = fadd double %76, %81
  %83 = fadd double %33, %36
  %84 = fmul double %1, %14
  %85 = fmul double %13, %2
  %86 = fsub double %84, %85
  %87 = fmul double %86, %83
  %88 = fadd double %87, %82
  %89 = fadd double %88, %71
  %90 = fmul double %89, 0x3FB5555555555555
  ret double %90
}

; Function Attrs: nounwind uwtable
define void @_Z22CalcKinematicsForElemsR6DomainPddi(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture %vnew, double %deltaTime, i32 %numElem) #5 {
  %B = alloca [3 x [8 x double]], align 16
  %D = alloca [6 x double], align 16
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
  %3 = bitcast [6 x double]* %D to i8*
  %4 = bitcast [8 x double]* %x_local to i8*
  %5 = bitcast [8 x double]* %y_local to i8*
  %6 = bitcast [8 x double]* %z_local to i8*
  %7 = bitcast [8 x double]* %xd_local to i8*
  %8 = bitcast [8 x double]* %yd_local to i8*
  %9 = bitcast [8 x double]* %zd_local to i8*
  %10 = bitcast double* %detJ to i8*
  %11 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %12 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %13 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %14 = fmul double %deltaTime, 5.000000e-01
  %15 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %16 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 0
  %17 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 0
  %18 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 0
  %19 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 0
  %20 = bitcast [6 x double]* %D to i64*
  %21 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 1
  %22 = bitcast double* %21 to i64*
  %23 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 2
  %24 = bitcast double* %23 to i64*
  br label %25

._crit_edge.loopexit:                             ; preds = %57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

; <label>:25                                      ; preds = %57, %.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %57 ]
  call void @llvm.lifetime.start(i64 192, i8* %2) #2
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  call void @llvm.lifetime.start(i64 64, i8* %4) #2
  call void @llvm.lifetime.start(i64 64, i8* %5) #2
  call void @llvm.lifetime.start(i64 64, i8* %6) #2
  call void @llvm.lifetime.start(i64 64, i8* %7) #2
  call void @llvm.lifetime.start(i64 64, i8* %8) #2
  call void @llvm.lifetime.start(i64 64, i8* %9) #2
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store double 0.000000e+00, double* %detJ, align 8, !tbaa !1
  %26 = trunc i64 %indvars.iv7 to i32
  %27 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* nonnull %domain, i32 %26)
  call fastcc void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull dereferenceable(1456) %domain, i32* nonnull %27, double* %11, double* %12, double* %13)
  %28 = call double @_Z14CalcElemVolumePKdS0_S0_(double* %11, double* %12, double* %13)
  %29 = call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nonnull %domain, i32 %26)
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = fdiv double %28, %30
  %32 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv7
  store double %31, double* %32, align 8, !tbaa !1
  %33 = call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nonnull %domain, i32 %26)
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = fsub double %31, %34
  %36 = call dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* nonnull %domain, i32 %26)
  store double %35, double* %36, align 8, !tbaa !1
  %37 = call fastcc double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* %11, double* %12, double* %13, double %28)
  %38 = call dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* nonnull %domain, i32 %26)
  store double %37, double* %38, align 8, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %39, %25
  %indvars.iv = phi i64 [ 0, %25 ], [ %indvars.iv.next, %39 ]
  %40 = getelementptr inbounds i32, i32* %27, i64 %indvars.iv
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %41)
  %43 = bitcast double* %42 to i64*
  %44 = load i64, i64* %43, align 8, !tbaa !1
  %45 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %indvars.iv
  %46 = bitcast double* %45 to i64*
  store i64 %44, i64* %46, align 8, !tbaa !1
  %47 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %41)
  %48 = bitcast double* %47 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !1
  %50 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %indvars.iv
  %51 = bitcast double* %50 to i64*
  store i64 %49, i64* %51, align 8, !tbaa !1
  %52 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %41)
  %53 = bitcast double* %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !1
  %55 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %indvars.iv
  %56 = bitcast double* %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %.preheader.preheader, label %39

.preheader.preheader:                             ; preds = %39
  br label %.preheader

; <label>:57                                      ; preds = %.preheader
  call fastcc void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* nonnull %11, double* nonnull %12, double* nonnull %13, [8 x double]* %15, double* nonnull %detJ)
  %58 = load double, double* %detJ, align 8, !tbaa !1
  call fastcc void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* nonnull %16, double* nonnull %17, double* nonnull %18, [8 x double]* %15, double %58, double* %19)
  %59 = load i64, i64* %20, align 16, !tbaa !1
  %60 = call dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* nonnull %domain, i32 %26)
  %61 = bitcast double* %60 to i64*
  store i64 %59, i64* %61, align 8, !tbaa !1
  %62 = load i64, i64* %22, align 8, !tbaa !1
  %63 = call dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* nonnull %domain, i32 %26)
  %64 = bitcast double* %63 to i64*
  store i64 %62, i64* %64, align 8, !tbaa !1
  %65 = load i64, i64* %24, align 16, !tbaa !1
  %66 = call dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* nonnull %domain, i32 %26)
  %67 = bitcast double* %66 to i64*
  store i64 %65, i64* %67, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %9) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %8) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %7) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %6) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %5) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %4) #2
  call void @llvm.lifetime.end(i64 48, i8* %3) #2
  call void @llvm.lifetime.end(i64 192, i8* %2) #2
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next8 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv, %numElem
  br i1 %exitcond9, label %._crit_edge.loopexit, label %25

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %.preheader ], [ 0, %.preheader.preheader ]
  %68 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %indvars.iv4
  %69 = load double, double* %68, align 8, !tbaa !1
  %70 = fmul double %14, %69
  %71 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %indvars.iv4
  %72 = load double, double* %71, align 8, !tbaa !1
  %73 = fsub double %72, %70
  store double %73, double* %71, align 8, !tbaa !1
  %74 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %indvars.iv4
  %75 = load double, double* %74, align 8, !tbaa !1
  %76 = fmul double %14, %75
  %77 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %indvars.iv4
  %78 = load double, double* %77, align 8, !tbaa !1
  %79 = fsub double %78, %76
  store double %79, double* %77, align 8, !tbaa !1
  %80 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %indvars.iv4
  %81 = load double, double* %80, align 8, !tbaa !1
  %82 = fmul double %14, %81
  %83 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %indvars.iv4
  %84 = load double, double* %83, align 8, !tbaa !1
  %85 = fsub double %84, %82
  store double %85, double* %83, align 8, !tbaa !1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 8
  br i1 %exitcond6, label %57, label %.preheader
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull i32* @_ZN6Domain8nodelistEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21
  %2 = shl nsw i32 %idx, 3
  %3 = sext i32 %2 to i64
  %4 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %3)
  ret i32* %4
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* nocapture readonly %this, i64 %__n) #3 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !7
  %3 = getelementptr inbounds i32, i32* %2, i64 %__n
  ret i32* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* readonly dereferenceable(1456) %domain, i32* nocapture readonly %elemToNode, double* nocapture %elemX, double* nocapture %elemY, double* nocapture %elemZ) unnamed_addr #7 {
  %1 = load i32, i32* %elemToNode, align 4, !tbaa !5
  %2 = getelementptr inbounds i32, i32* %elemToNode, i64 1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, i32* %elemToNode, i64 2
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %elemToNode, i64 3
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, i32* %elemToNode, i64 4
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, i32* %elemToNode, i64 5
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, i32* %elemToNode, i64 6
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, i32* %elemToNode, i64 7
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %1)
  %17 = bitcast double* %16 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !1
  %19 = bitcast double* %elemX to i64*
  store i64 %18, i64* %19, align 8, !tbaa !1
  %20 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %3)
  %21 = bitcast double* %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !1
  %23 = getelementptr inbounds double, double* %elemX, i64 1
  %24 = bitcast double* %23 to i64*
  store i64 %22, i64* %24, align 8, !tbaa !1
  %25 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %5)
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !1
  %28 = getelementptr inbounds double, double* %elemX, i64 2
  %29 = bitcast double* %28 to i64*
  store i64 %27, i64* %29, align 8, !tbaa !1
  %30 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %7)
  %31 = bitcast double* %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !1
  %33 = getelementptr inbounds double, double* %elemX, i64 3
  %34 = bitcast double* %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !1
  %35 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %9)
  %36 = bitcast double* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !1
  %38 = getelementptr inbounds double, double* %elemX, i64 4
  %39 = bitcast double* %38 to i64*
  store i64 %37, i64* %39, align 8, !tbaa !1
  %40 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %11)
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !1
  %43 = getelementptr inbounds double, double* %elemX, i64 5
  %44 = bitcast double* %43 to i64*
  store i64 %42, i64* %44, align 8, !tbaa !1
  %45 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %13)
  %46 = bitcast double* %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !1
  %48 = getelementptr inbounds double, double* %elemX, i64 6
  %49 = bitcast double* %48 to i64*
  store i64 %47, i64* %49, align 8, !tbaa !1
  %50 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %15)
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !1
  %53 = getelementptr inbounds double, double* %elemX, i64 7
  %54 = bitcast double* %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !1
  %55 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %1)
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !1
  %58 = bitcast double* %elemY to i64*
  store i64 %57, i64* %58, align 8, !tbaa !1
  %59 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %3)
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !1
  %62 = getelementptr inbounds double, double* %elemY, i64 1
  %63 = bitcast double* %62 to i64*
  store i64 %61, i64* %63, align 8, !tbaa !1
  %64 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %5)
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !1
  %67 = getelementptr inbounds double, double* %elemY, i64 2
  %68 = bitcast double* %67 to i64*
  store i64 %66, i64* %68, align 8, !tbaa !1
  %69 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %7)
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !1
  %72 = getelementptr inbounds double, double* %elemY, i64 3
  %73 = bitcast double* %72 to i64*
  store i64 %71, i64* %73, align 8, !tbaa !1
  %74 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %9)
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !1
  %77 = getelementptr inbounds double, double* %elemY, i64 4
  %78 = bitcast double* %77 to i64*
  store i64 %76, i64* %78, align 8, !tbaa !1
  %79 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %11)
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8, !tbaa !1
  %82 = getelementptr inbounds double, double* %elemY, i64 5
  %83 = bitcast double* %82 to i64*
  store i64 %81, i64* %83, align 8, !tbaa !1
  %84 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %13)
  %85 = bitcast double* %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !1
  %87 = getelementptr inbounds double, double* %elemY, i64 6
  %88 = bitcast double* %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !1
  %89 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %15)
  %90 = bitcast double* %89 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !1
  %92 = getelementptr inbounds double, double* %elemY, i64 7
  %93 = bitcast double* %92 to i64*
  store i64 %91, i64* %93, align 8, !tbaa !1
  %94 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %1)
  %95 = bitcast double* %94 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !1
  %97 = bitcast double* %elemZ to i64*
  store i64 %96, i64* %97, align 8, !tbaa !1
  %98 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %3)
  %99 = bitcast double* %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !1
  %101 = getelementptr inbounds double, double* %elemZ, i64 1
  %102 = bitcast double* %101 to i64*
  store i64 %100, i64* %102, align 8, !tbaa !1
  %103 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %5)
  %104 = bitcast double* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !1
  %106 = getelementptr inbounds double, double* %elemZ, i64 2
  %107 = bitcast double* %106 to i64*
  store i64 %105, i64* %107, align 8, !tbaa !1
  %108 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %7)
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !1
  %111 = getelementptr inbounds double, double* %elemZ, i64 3
  %112 = bitcast double* %111 to i64*
  store i64 %110, i64* %112, align 8, !tbaa !1
  %113 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %9)
  %114 = bitcast double* %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !1
  %116 = getelementptr inbounds double, double* %elemZ, i64 4
  %117 = bitcast double* %116 to i64*
  store i64 %115, i64* %117, align 8, !tbaa !1
  %118 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %11)
  %119 = bitcast double* %118 to i64*
  %120 = load i64, i64* %119, align 8, !tbaa !1
  %121 = getelementptr inbounds double, double* %elemZ, i64 5
  %122 = bitcast double* %121 to i64*
  store i64 %120, i64* %122, align 8, !tbaa !1
  %123 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %13)
  %124 = bitcast double* %123 to i64*
  %125 = load i64, i64* %124, align 8, !tbaa !1
  %126 = getelementptr inbounds double, double* %elemZ, i64 6
  %127 = bitcast double* %126 to i64*
  store i64 %125, i64* %127, align 8, !tbaa !1
  %128 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %15)
  %129 = bitcast double* %128 to i64*
  %130 = load i64, i64* %129, align 8, !tbaa !1
  %131 = getelementptr inbounds double, double* %elemZ, i64 7
  %132 = bitcast double* %131 to i64*
  store i64 %130, i64* %132, align 8, !tbaa !1
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* nocapture readonly %this, i64 %__n) #3 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load double*, double** %1, align 8, !tbaa !11
  %3 = getelementptr inbounds double, double* %2, i64 %__n
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* nocapture readonly %x, double* nocapture readonly %y, double* nocapture readonly %z, double %volume) unnamed_addr #8 {
  %a = alloca double, align 8
  %charLength = alloca double, align 8
  %1 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %charLength to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store double 0.000000e+00, double* %charLength, align 8, !tbaa !1
  %3 = load double, double* %x, align 8, !tbaa !1
  %4 = getelementptr inbounds double, double* %x, i64 1
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = getelementptr inbounds double, double* %x, i64 2
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = getelementptr inbounds double, double* %x, i64 3
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = load double, double* %y, align 8, !tbaa !1
  %11 = getelementptr inbounds double, double* %y, i64 1
  %12 = load double, double* %11, align 8, !tbaa !1
  %13 = getelementptr inbounds double, double* %y, i64 2
  %14 = load double, double* %13, align 8, !tbaa !1
  %15 = getelementptr inbounds double, double* %y, i64 3
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = load double, double* %z, align 8, !tbaa !1
  %18 = getelementptr inbounds double, double* %z, i64 1
  %19 = load double, double* %18, align 8, !tbaa !1
  %20 = getelementptr inbounds double, double* %z, i64 2
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = getelementptr inbounds double, double* %z, i64 3
  %23 = load double, double* %22, align 8, !tbaa !1
  %24 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %3, double %5, double %7, double %9, double %10, double %12, double %14, double %16, double %17, double %19, double %21, double %23)
  store double %24, double* %a, align 8, !tbaa !1
  %25 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !1
  %28 = bitcast double* %charLength to i64*
  store i64 %27, i64* %28, align 8, !tbaa !1
  %29 = getelementptr inbounds double, double* %x, i64 4
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = getelementptr inbounds double, double* %x, i64 5
  %32 = load double, double* %31, align 8, !tbaa !1
  %33 = getelementptr inbounds double, double* %x, i64 6
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = getelementptr inbounds double, double* %x, i64 7
  %36 = load double, double* %35, align 8, !tbaa !1
  %37 = getelementptr inbounds double, double* %y, i64 4
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = getelementptr inbounds double, double* %y, i64 5
  %40 = load double, double* %39, align 8, !tbaa !1
  %41 = getelementptr inbounds double, double* %y, i64 6
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = getelementptr inbounds double, double* %y, i64 7
  %44 = load double, double* %43, align 8, !tbaa !1
  %45 = getelementptr inbounds double, double* %z, i64 4
  %46 = load double, double* %45, align 8, !tbaa !1
  %47 = getelementptr inbounds double, double* %z, i64 5
  %48 = load double, double* %47, align 8, !tbaa !1
  %49 = getelementptr inbounds double, double* %z, i64 6
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = getelementptr inbounds double, double* %z, i64 7
  %52 = load double, double* %51, align 8, !tbaa !1
  %53 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %30, double %32, double %34, double %36, double %38, double %40, double %42, double %44, double %46, double %48, double %50, double %52)
  store double %53, double* %a, align 8, !tbaa !1
  %54 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %55 = bitcast double* %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !1
  store i64 %56, i64* %28, align 8, !tbaa !1
  %57 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %3, double %5, double %32, double %30, double %10, double %12, double %40, double %38, double %17, double %19, double %48, double %46)
  store double %57, double* %a, align 8, !tbaa !1
  %58 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %59 = bitcast double* %58 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !1
  store i64 %60, i64* %28, align 8, !tbaa !1
  %61 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %5, double %7, double %34, double %32, double %12, double %14, double %42, double %40, double %19, double %21, double %50, double %48)
  store double %61, double* %a, align 8, !tbaa !1
  %62 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !1
  store i64 %64, i64* %28, align 8, !tbaa !1
  %65 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %7, double %9, double %36, double %34, double %14, double %16, double %44, double %42, double %21, double %23, double %52, double %50)
  store double %65, double* %a, align 8, !tbaa !1
  %66 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %67 = bitcast double* %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !1
  store i64 %68, i64* %28, align 8, !tbaa !1
  %69 = tail call fastcc double @_ZL8AreaFacedddddddddddd(double %9, double %3, double %30, double %36, double %16, double %10, double %38, double %44, double %23, double %17, double %46, double %52)
  store double %69, double* %a, align 8, !tbaa !1
  %70 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull dereferenceable(8) %a, double* nonnull dereferenceable(8) %charLength)
  %71 = load double, double* %70, align 8, !tbaa !1
  %72 = fmul double %volume, 4.000000e+00
  %73 = tail call double @_Z4SQRTd(double %71)
  %74 = fdiv double %72, %73
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  call void @llvm.lifetime.end(i64 8, i8* %1) #2
  ret double %74
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define internal fastcc double @_ZL8AreaFacedddddddddddd(double %x0, double %x1, double %x2, double %x3, double %y0, double %y1, double %y2, double %y3, double %z0, double %z1, double %z2, double %z3) unnamed_addr #4 {
  %1 = fsub double %x2, %x0
  %2 = fsub double %x3, %x1
  %3 = fsub double %1, %2
  %4 = fsub double %y2, %y0
  %5 = fsub double %y3, %y1
  %6 = fsub double %4, %5
  %7 = fsub double %z2, %z0
  %8 = fsub double %z3, %z1
  %9 = fsub double %7, %8
  %10 = fadd double %1, %2
  %11 = fadd double %4, %5
  %12 = fadd double %7, %8
  %13 = fmul double %3, %3
  %14 = fmul double %6, %6
  %15 = fadd double %13, %14
  %16 = fmul double %9, %9
  %17 = fadd double %15, %16
  %18 = fmul double %10, %10
  %19 = fmul double %11, %11
  %20 = fadd double %18, %19
  %21 = fmul double %12, %12
  %22 = fadd double %20, %21
  %23 = fmul double %17, %22
  %24 = fmul double %3, %10
  %25 = fmul double %6, %11
  %26 = fadd double %24, %25
  %27 = fmul double %9, %12
  %28 = fadd double %26, %27
  %29 = fmul double %28, %28
  %30 = fsub double %23, %29
  ret double %30
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* readonly dereferenceable(8) %__a, double* readonly dereferenceable(8) %__b) #9 comdat {
  %1 = load double, double* %__a, align 8, !tbaa !1
  %2 = load double, double* %__b, align 8, !tbaa !1
  %3 = fcmp olt double %1, %2
  %__b.__a = select i1 %3, double* %__b, double* %__a
  ret double* %__b.__a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr double @_Z4SQRTd(double %arg) #8 comdat {
  %1 = tail call double @sqrt(double %arg) #2
  ret double %1
}

; Function Attrs: nounwind
declare double @sqrt(double) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

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
  %119 = fsub double %118, %96
  %120 = fsub double %119, %99
  %121 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 0
  store double %120, double* %121, align 8, !tbaa !1
  %122 = fsub double %93, %96
  %123 = fsub double %122, %99
  %124 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 1
  store double %123, double* %124, align 8, !tbaa !1
  %125 = fadd double %93, %96
  %126 = fsub double %125, %99
  %127 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 2
  store double %126, double* %127, align 8, !tbaa !1
  %128 = fsub double %96, %93
  %129 = fsub double %128, %99
  %130 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 3
  store double %129, double* %130, align 8, !tbaa !1
  %131 = fsub double -0.000000e+00, %126
  %132 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 4
  store double %131, double* %132, align 8, !tbaa !1
  %133 = fsub double -0.000000e+00, %129
  %134 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 5
  store double %133, double* %134, align 8, !tbaa !1
  %135 = fsub double -0.000000e+00, %120
  %136 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 6
  store double %135, double* %136, align 8, !tbaa !1
  %137 = fsub double -0.000000e+00, %123
  %138 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 7
  store double %137, double* %138, align 8, !tbaa !1
  %139 = fsub double -0.000000e+00, %102
  %140 = fsub double %139, %105
  %141 = fsub double %140, %108
  %142 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 0
  store double %141, double* %142, align 8, !tbaa !1
  %143 = fsub double %102, %105
  %144 = fsub double %143, %108
  %145 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 1
  store double %144, double* %145, align 8, !tbaa !1
  %146 = fadd double %102, %105
  %147 = fsub double %146, %108
  %148 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 2
  store double %147, double* %148, align 8, !tbaa !1
  %149 = fsub double %105, %102
  %150 = fsub double %149, %108
  %151 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 3
  store double %150, double* %151, align 8, !tbaa !1
  %152 = fsub double -0.000000e+00, %147
  %153 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 4
  store double %152, double* %153, align 8, !tbaa !1
  %154 = fsub double -0.000000e+00, %150
  %155 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 5
  store double %154, double* %155, align 8, !tbaa !1
  %156 = fsub double -0.000000e+00, %141
  %157 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 6
  store double %156, double* %157, align 8, !tbaa !1
  %158 = fsub double -0.000000e+00, %144
  %159 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 7
  store double %158, double* %159, align 8, !tbaa !1
  %160 = fsub double -0.000000e+00, %111
  %161 = fsub double %160, %114
  %162 = fsub double %161, %117
  %163 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 0
  store double %162, double* %163, align 8, !tbaa !1
  %164 = fsub double %111, %114
  %165 = fsub double %164, %117
  %166 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 1
  store double %165, double* %166, align 8, !tbaa !1
  %167 = fadd double %111, %114
  %168 = fsub double %167, %117
  %169 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 2
  store double %168, double* %169, align 8, !tbaa !1
  %170 = fsub double %114, %111
  %171 = fsub double %170, %117
  %172 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 3
  store double %171, double* %172, align 8, !tbaa !1
  %173 = fsub double -0.000000e+00, %168
  %174 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 4
  store double %173, double* %174, align 8, !tbaa !1
  %175 = fsub double -0.000000e+00, %171
  %176 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 5
  store double %175, double* %176, align 8, !tbaa !1
  %177 = fsub double -0.000000e+00, %162
  %178 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 6
  store double %177, double* %178, align 8, !tbaa !1
  %179 = fsub double -0.000000e+00, %165
  %180 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 7
  store double %179, double* %180, align 8, !tbaa !1
  %181 = fmul double %57, %96
  %182 = fmul double %72, %105
  %183 = fadd double %181, %182
  %184 = fmul double %114, %87
  %185 = fadd double %184, %183
  %186 = fmul double %185, 8.000000e+00
  store double %186, double* %volume, align 8, !tbaa !1
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* nocapture readonly %xvel, double* nocapture readonly %yvel, double* nocapture readonly %zvel, [8 x double]* nocapture readonly %b, double %detJ, double* nocapture %d) unnamed_addr #7 {
  %1 = fdiv double 1.000000e+00, %detJ
  %2 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 0
  %3 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 0
  %4 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 0
  %5 = load double, double* %2, align 8, !tbaa !1
  %6 = load double, double* %xvel, align 8, !tbaa !1
  %7 = getelementptr inbounds double, double* %xvel, i64 6
  %8 = load double, double* %7, align 8, !tbaa !1
  %9 = fsub double %6, %8
  %10 = fmul double %5, %9
  %11 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 1
  %12 = load double, double* %11, align 8, !tbaa !1
  %13 = getelementptr inbounds double, double* %xvel, i64 1
  %14 = load double, double* %13, align 8, !tbaa !1
  %15 = getelementptr inbounds double, double* %xvel, i64 7
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = fsub double %14, %16
  %18 = fmul double %12, %17
  %19 = fadd double %10, %18
  %20 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 2
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = getelementptr inbounds double, double* %xvel, i64 2
  %23 = load double, double* %22, align 8, !tbaa !1
  %24 = getelementptr inbounds double, double* %xvel, i64 4
  %25 = load double, double* %24, align 8, !tbaa !1
  %26 = fsub double %23, %25
  %27 = fmul double %21, %26
  %28 = fadd double %19, %27
  %29 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0, i64 3
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = getelementptr inbounds double, double* %xvel, i64 3
  %32 = load double, double* %31, align 8, !tbaa !1
  %33 = getelementptr inbounds double, double* %xvel, i64 5
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = fsub double %32, %34
  %36 = fmul double %30, %35
  %37 = fadd double %28, %36
  %38 = fmul double %1, %37
  store double %38, double* %d, align 8, !tbaa !1
  %39 = load double, double* %3, align 8, !tbaa !1
  %40 = load double, double* %yvel, align 8, !tbaa !1
  %41 = getelementptr inbounds double, double* %yvel, i64 6
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = fsub double %40, %42
  %44 = fmul double %39, %43
  %45 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 1
  %46 = load double, double* %45, align 8, !tbaa !1
  %47 = getelementptr inbounds double, double* %yvel, i64 1
  %48 = load double, double* %47, align 8, !tbaa !1
  %49 = getelementptr inbounds double, double* %yvel, i64 7
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = fsub double %48, %50
  %52 = fmul double %46, %51
  %53 = fadd double %44, %52
  %54 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 2
  %55 = load double, double* %54, align 8, !tbaa !1
  %56 = getelementptr inbounds double, double* %yvel, i64 2
  %57 = load double, double* %56, align 8, !tbaa !1
  %58 = getelementptr inbounds double, double* %yvel, i64 4
  %59 = load double, double* %58, align 8, !tbaa !1
  %60 = fsub double %57, %59
  %61 = fmul double %55, %60
  %62 = fadd double %53, %61
  %63 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1, i64 3
  %64 = load double, double* %63, align 8, !tbaa !1
  %65 = getelementptr inbounds double, double* %yvel, i64 3
  %66 = load double, double* %65, align 8, !tbaa !1
  %67 = getelementptr inbounds double, double* %yvel, i64 5
  %68 = load double, double* %67, align 8, !tbaa !1
  %69 = fsub double %66, %68
  %70 = fmul double %64, %69
  %71 = fadd double %62, %70
  %72 = fmul double %1, %71
  %73 = getelementptr inbounds double, double* %d, i64 1
  store double %72, double* %73, align 8, !tbaa !1
  %74 = load double, double* %4, align 8, !tbaa !1
  %75 = load double, double* %zvel, align 8, !tbaa !1
  %76 = getelementptr inbounds double, double* %zvel, i64 6
  %77 = load double, double* %76, align 8, !tbaa !1
  %78 = fsub double %75, %77
  %79 = fmul double %74, %78
  %80 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 1
  %81 = load double, double* %80, align 8, !tbaa !1
  %82 = getelementptr inbounds double, double* %zvel, i64 1
  %83 = load double, double* %82, align 8, !tbaa !1
  %84 = getelementptr inbounds double, double* %zvel, i64 7
  %85 = load double, double* %84, align 8, !tbaa !1
  %86 = fsub double %83, %85
  %87 = fmul double %81, %86
  %88 = fadd double %79, %87
  %89 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 2
  %90 = load double, double* %89, align 8, !tbaa !1
  %91 = getelementptr inbounds double, double* %zvel, i64 2
  %92 = load double, double* %91, align 8, !tbaa !1
  %93 = getelementptr inbounds double, double* %zvel, i64 4
  %94 = load double, double* %93, align 8, !tbaa !1
  %95 = fsub double %92, %94
  %96 = fmul double %90, %95
  %97 = fadd double %88, %96
  %98 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2, i64 3
  %99 = load double, double* %98, align 8, !tbaa !1
  %100 = getelementptr inbounds double, double* %zvel, i64 3
  %101 = load double, double* %100, align 8, !tbaa !1
  %102 = getelementptr inbounds double, double* %zvel, i64 5
  %103 = load double, double* %102, align 8, !tbaa !1
  %104 = fsub double %101, %103
  %105 = fmul double %99, %104
  %106 = fadd double %97, %105
  %107 = fmul double %1, %106
  %108 = getelementptr inbounds double, double* %d, i64 2
  store double %107, double* %108, align 8, !tbaa !1
  %109 = load double, double* %2, align 8, !tbaa !1
  %110 = load double, double* %yvel, align 8, !tbaa !1
  %111 = load double, double* %41, align 8, !tbaa !1
  %112 = fsub double %110, %111
  %113 = fmul double %109, %112
  %114 = load double, double* %11, align 8, !tbaa !1
  %115 = load double, double* %47, align 8, !tbaa !1
  %116 = load double, double* %49, align 8, !tbaa !1
  %117 = fsub double %115, %116
  %118 = fmul double %114, %117
  %119 = fadd double %113, %118
  %120 = load double, double* %20, align 8, !tbaa !1
  %121 = load double, double* %56, align 8, !tbaa !1
  %122 = load double, double* %58, align 8, !tbaa !1
  %123 = fsub double %121, %122
  %124 = fmul double %120, %123
  %125 = fadd double %119, %124
  %126 = load double, double* %29, align 8, !tbaa !1
  %127 = load double, double* %65, align 8, !tbaa !1
  %128 = load double, double* %67, align 8, !tbaa !1
  %129 = fsub double %127, %128
  %130 = fmul double %126, %129
  %131 = fadd double %125, %130
  %132 = fmul double %1, %131
  %133 = load double, double* %3, align 8, !tbaa !1
  %134 = load double, double* %xvel, align 8, !tbaa !1
  %135 = load double, double* %7, align 8, !tbaa !1
  %136 = fsub double %134, %135
  %137 = fmul double %133, %136
  %138 = load double, double* %45, align 8, !tbaa !1
  %139 = load double, double* %13, align 8, !tbaa !1
  %140 = load double, double* %15, align 8, !tbaa !1
  %141 = fsub double %139, %140
  %142 = fmul double %138, %141
  %143 = fadd double %137, %142
  %144 = load double, double* %54, align 8, !tbaa !1
  %145 = load double, double* %22, align 8, !tbaa !1
  %146 = load double, double* %24, align 8, !tbaa !1
  %147 = fsub double %145, %146
  %148 = fmul double %144, %147
  %149 = fadd double %143, %148
  %150 = load double, double* %63, align 8, !tbaa !1
  %151 = load double, double* %31, align 8, !tbaa !1
  %152 = load double, double* %33, align 8, !tbaa !1
  %153 = fsub double %151, %152
  %154 = fmul double %150, %153
  %155 = fadd double %149, %154
  %156 = fmul double %1, %155
  %157 = load double, double* %zvel, align 8, !tbaa !1
  %158 = load double, double* %76, align 8, !tbaa !1
  %159 = fsub double %157, %158
  %160 = fmul double %109, %159
  %161 = load double, double* %82, align 8, !tbaa !1
  %162 = load double, double* %84, align 8, !tbaa !1
  %163 = fsub double %161, %162
  %164 = fmul double %114, %163
  %165 = fadd double %160, %164
  %166 = load double, double* %91, align 8, !tbaa !1
  %167 = load double, double* %93, align 8, !tbaa !1
  %168 = fsub double %166, %167
  %169 = fmul double %120, %168
  %170 = fadd double %165, %169
  %171 = load double, double* %100, align 8, !tbaa !1
  %172 = load double, double* %102, align 8, !tbaa !1
  %173 = fsub double %171, %172
  %174 = fmul double %126, %173
  %175 = fadd double %170, %174
  %176 = fmul double %1, %175
  %177 = load double, double* %4, align 8, !tbaa !1
  %178 = fmul double %136, %177
  %179 = load double, double* %80, align 8, !tbaa !1
  %180 = fmul double %141, %179
  %181 = fadd double %178, %180
  %182 = load double, double* %89, align 8, !tbaa !1
  %183 = fmul double %147, %182
  %184 = fadd double %181, %183
  %185 = load double, double* %98, align 8, !tbaa !1
  %186 = fmul double %153, %185
  %187 = fadd double %184, %186
  %188 = fmul double %1, %187
  %189 = fmul double %133, %159
  %190 = fmul double %138, %163
  %191 = fadd double %189, %190
  %192 = fmul double %144, %168
  %193 = fadd double %191, %192
  %194 = fmul double %150, %173
  %195 = fadd double %193, %194
  %196 = fmul double %1, %195
  %197 = fmul double %112, %177
  %198 = fmul double %117, %179
  %199 = fadd double %197, %198
  %200 = fmul double %123, %182
  %201 = fadd double %199, %200
  %202 = fmul double %129, %185
  %203 = fadd double %201, %202
  %204 = fmul double %1, %203
  %205 = fadd double %132, %156
  %206 = fmul double %205, 5.000000e-01
  %207 = getelementptr inbounds double, double* %d, i64 5
  store double %206, double* %207, align 8, !tbaa !1
  %208 = fadd double %176, %188
  %209 = fmul double %208, 5.000000e-01
  %210 = getelementptr inbounds double, double* %d, i64 4
  store double %209, double* %210, align 8, !tbaa !1
  %211 = fadd double %196, %204
  %212 = fmul double %211, 5.000000e-01
  %213 = getelementptr inbounds double, double* %d, i64 3
  store double %212, double* %213, align 8, !tbaa !1
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %opts = alloca %struct.cmdLineOpts, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %plane = alloca i32, align 4
  %side = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %end = alloca %struct.timeval, align 8
  %1 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #2
  %2 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 0
  store i32 9999999, i32* %2, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 1
  store i32 30, i32* %3, align 4, !tbaa !16
  %4 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 2
  store i32 11, i32* %4, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 3
  store i32 1, i32* %5, align 4, !tbaa !18
  %6 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 4
  store i32 0, i32* %6, align 4, !tbaa !19
  %7 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 5
  store i32 0, i32* %7, align 4, !tbaa !20
  %8 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 6
  store i32 0, i32* %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 8
  store i32 1, i32* %9, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 7
  store i32 1, i32* %10, align 4, !tbaa !23
  call void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** %argv, i32 0, %struct.cmdLineOpts* nonnull %opts)
  %11 = load i32, i32* %7, align 4, !tbaa !20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %.pre = load i32, i32* %3, align 4, !tbaa !16
  br label %21

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* %3, align 4, !tbaa !16
  %15 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = mul nsw i32 %14, %14
  %18 = mul nsw i32 %17, %14
  %19 = sext i32 %18 to i64
  %20 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %19)
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @str.14, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @str.15, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @str.16, i64 0, i64 0))
  %puts5 = call i32 @puts(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @str.17, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @str.18, i64 0, i64 0))
  %puts7 = call i32 @puts(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @str.19, i64 0, i64 0))
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %13
  %22 = phi i32 [ %.pre, %._crit_edge ], [ %14, %13 ]
  %23 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  call void @_Z14InitMeshDecompiiPiS_S_S_(i32 1, i32 0, i32* nonnull %col, i32* nonnull %row, i32* nonnull %plane, i32* nonnull %side)
  %27 = call noalias i8* @_Znwm(i64 1456) #24
  %28 = bitcast i8* %27 to %class.Domain*
  %29 = load i32, i32* %col, align 4, !tbaa !5
  %30 = load i32, i32* %row, align 4, !tbaa !5
  %31 = load i32, i32* %plane, align 4, !tbaa !5
  %32 = load i32, i32* %side, align 4, !tbaa !5
  %33 = load i32, i32* %4, align 4, !tbaa !17
  %34 = load i32, i32* %9, align 4, !tbaa !22
  %35 = load i32, i32* %10, align 4, !tbaa !23
  invoke void @_ZN6DomainC1Eiiiiiiiii(%class.Domain* %28, i32 1, i32 %29, i32 %30, i32 %31, i32 %22, i32 %32, i32 %33, i32 %34, i32 %35)
          to label %36 unwind label %60

; <label>:36                                      ; preds = %21
  %37 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start(i64 16, i8* %37) #2
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #2
  %39 = call dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %28)
  %40 = load double, double* %39, align 8, !tbaa !1
  %41 = call dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %28)
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = fcmp olt double %40, %42
  br i1 %43, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %36
  %44 = call dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %28)
  %.pre1 = load i32, i32* %2, align 4, !tbaa !14
  br label %45

; <label>:45                                      ; preds = %.backedge, %.lr.ph
  %46 = load i32, i32* %44, align 4, !tbaa !5
  %47 = icmp slt i32 %46, %.pre1
  br i1 %47, label %48, label %.critedge.loopexit

; <label>:48                                      ; preds = %45
  call fastcc void @_ZL13TimeIncrementR6Domain(%class.Domain* dereferenceable(1456) %28)
  call fastcc void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* dereferenceable(1456) %28)
  %49 = load i32, i32* %6, align 4, !tbaa !19
  %50 = icmp ne i32 %49, 0
  %or.cond = and i1 %50, %12
  br i1 %or.cond, label %51, label %.backedge

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %44, align 4, !tbaa !5
  %53 = load double, double* %39, align 8, !tbaa !1
  %54 = call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %28)
  %55 = load double, double* %54, align 8, !tbaa !1
  %56 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %52, double %53, double %55)
  br label %.backedge

.backedge:                                        ; preds = %51, %48
  %57 = load double, double* %39, align 8, !tbaa !1
  %58 = load double, double* %41, align 8, !tbaa !1
  %59 = fcmp olt double %57, %58
  br i1 %59, label %45, label %.critedge.loopexit

; <label>:60                                      ; preds = %21
  %61 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %27) #25
  resume { i8*, i32 } %61

.critedge.loopexit:                               ; preds = %45, %.backedge
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %36
  %62 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.start(i64 16, i8* %62) #2
  %63 = call i32 @gettimeofday(%struct.timeval* nonnull %end, %struct.timezone* null) #2
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !24
  %68 = sub nsw i64 %65, %67
  %69 = sitofp i64 %68 to double
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 1
  %71 = load i64, i64* %70, align 8, !tbaa !27
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %73 = load i64, i64* %72, align 8, !tbaa !27
  %74 = sub nsw i64 %71, %73
  %75 = sitofp i64 %74 to double
  %76 = fdiv double %75, 1.000000e+06
  %77 = fadd double %69, %76
  %78 = load i32, i32* %8, align 4, !tbaa !21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

; <label>:80                                      ; preds = %.critedge
  %81 = load i32, i32* %5, align 4, !tbaa !18
  call void @_Z11DumpToVisitR6Domainiii(%class.Domain* dereferenceable(1456) %28, i32 %81, i32 0, i32 1)
  br label %82

; <label>:82                                      ; preds = %80, %.critedge
  br i1 %12, label %83, label %84

; <label>:83                                      ; preds = %82
  call void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %77, %class.Domain* dereferenceable(1456) %28, i32 %22, i32 1)
  br label %84

; <label>:84                                      ; preds = %83, %82
  call void @llvm.lifetime.end(i64 16, i8* %62) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %37) #2
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1) #2
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #10

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) #12

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #10

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 74
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 79
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 72
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL13TimeIncrementR6Domain(%class.Domain* dereferenceable(1456) %domain) unnamed_addr #7 {
  %1 = tail call dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* nonnull %domain)
  %2 = load double, double* %1, align 8, !tbaa !1
  %3 = tail call dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* nonnull %domain)
  %4 = load double, double* %3, align 8, !tbaa !1
  %5 = fsub double %2, %4
  %6 = tail call dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* nonnull %domain)
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = fcmp ugt double %7, 0.000000e+00
  br i1 %8, label %43, label %9

; <label>:9                                       ; preds = %0
  %10 = tail call dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* nonnull %domain)
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

; <label>:13                                      ; preds = %9
  %14 = tail call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* nonnull %domain)
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = tail call dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* nonnull %domain)
  %17 = load double, double* %16, align 8, !tbaa !1
  %18 = fcmp olt double %17, 1.000000e+20
  %19 = fmul double %17, 5.000000e-01
  %gnewdt.0 = select i1 %18, double %19, double 1.000000e+20
  %20 = tail call dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* nonnull %domain)
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = fcmp olt double %21, %gnewdt.0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %13
  %24 = fmul double %21, 2.000000e+00
  %25 = fdiv double %24, 3.000000e+00
  br label %26

; <label>:26                                      ; preds = %23, %13
  %gnewdt.1 = phi double [ %25, %23 ], [ %gnewdt.0, %13 ]
  %27 = fdiv double %gnewdt.1, %15
  %28 = fcmp ult double %27, 1.000000e+00
  br i1 %28, label %39, label %29

; <label>:29                                      ; preds = %26
  %30 = tail call dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* nonnull %domain)
  %31 = load double, double* %30, align 8, !tbaa !1
  %32 = fcmp olt double %27, %31
  br i1 %32, label %39, label %33

; <label>:33                                      ; preds = %29
  %34 = tail call dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* nonnull %domain)
  %35 = load double, double* %34, align 8, !tbaa !1
  %36 = fcmp ogt double %27, %35
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %33
  %38 = fmul double %15, %35
  br label %39

; <label>:39                                      ; preds = %37, %33, %29, %26
  %newdt.0 = phi double [ %38, %37 ], [ %gnewdt.1, %33 ], [ %gnewdt.1, %26 ], [ %15, %29 ]
  %40 = tail call dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* nonnull %domain)
  %41 = load double, double* %40, align 8, !tbaa !1
  %42 = fcmp ogt double %newdt.0, %41
  %newdt.1 = select i1 %42, double %41, double %newdt.0
  store double %newdt.1, double* %14, align 8, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %39, %9, %0
  %44 = tail call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* nonnull %domain)
  %45 = load double, double* %44, align 8, !tbaa !1
  %46 = fcmp ogt double %5, %45
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %43
  %48 = fmul double %45, 4.000000e+00
  %49 = fdiv double %48, 3.000000e+00
  %50 = fcmp olt double %5, %49
  br i1 %50, label %51, label %54

; <label>:51                                      ; preds = %47
  %52 = fmul double %45, 2.000000e+00
  %53 = fdiv double %52, 3.000000e+00
  br label %54

; <label>:54                                      ; preds = %51, %47, %43
  %targetdt.0 = phi double [ %53, %51 ], [ %5, %47 ], [ %5, %43 ]
  %55 = fcmp olt double %targetdt.0, %45
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %54
  store double %targetdt.0, double* %44, align 8, !tbaa !1
  br label %57

; <label>:57                                      ; preds = %56, %54
  %58 = phi double [ %targetdt.0, %56 ], [ %45, %54 ]
  %59 = load double, double* %3, align 8, !tbaa !1
  %60 = fadd double %58, %59
  store double %60, double* %3, align 8, !tbaa !1
  %61 = tail call dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* nonnull %domain)
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 73
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 75
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 70
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 71
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 76
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 77
  ret double* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 78
  ret double* %1
}

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* dereferenceable(1456) %domain) unnamed_addr #14 {
  tail call fastcc void @_ZL13LagrangeNodalR6Domain(%class.Domain* nonnull dereferenceable(1456) %domain)
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  tail call fastcc void @_ZL16LagrangeElementsR6Domaini(%class.Domain* nonnull dereferenceable(1456) %domain, i32 %2)
  tail call fastcc void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* nonnull dereferenceable(1456) %domain)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL13LagrangeNodalR6Domain(%class.Domain* readonly dereferenceable(1456) %domain) unnamed_addr #7 {
  %1 = tail call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* nonnull %domain)
  %2 = load double, double* %1, align 8, !tbaa !1
  %3 = tail call double @_ZNK6Domain5u_cutEv(%class.Domain* nonnull %domain)
  tail call fastcc void @_ZL17CalcForceForNodesR6Domain(%class.Domain* nonnull dereferenceable(1456) %domain)
  %4 = tail call dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* nonnull %domain)
  %5 = load i32, i32* %4, align 4, !tbaa !5
  tail call fastcc void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nonnull dereferenceable(1456) %domain, i32 %5)
  tail call fastcc void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* nonnull dereferenceable(1456) %domain)
  %6 = load i32, i32* %4, align 4, !tbaa !5
  tail call fastcc void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nonnull dereferenceable(1456) %domain, double %2, double %3, i32 %6)
  %7 = load i32, i32* %4, align 4, !tbaa !5
  tail call fastcc void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nonnull dereferenceable(1456) %domain, double %2, i32 %7)
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5u_cutEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 55
  %2 = load double, double* %1, align 8, !tbaa !28
  ret double %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL17CalcForceForNodesR6Domain(%class.Domain* readonly dereferenceable(1456) %domain) unnamed_addr #7 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  tail call fastcc void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* nonnull dereferenceable(1456) %domain)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i32 [ %7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %4 = tail call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double 0.000000e+00, double* %4, align 8, !tbaa !1
  %5 = tail call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double 0.000000e+00, double* %5, align 8, !tbaa !1
  %6 = tail call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double 0.000000e+00, double* %6, align 8, !tbaa !1
  %7 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %7, %2
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 89
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* readonly dereferenceable(1456) %domain) unnamed_addr #7 {
  %sigxx = alloca double*, align 8
  %sigyy = alloca double*, align 8
  %sigzz = alloca double*, align 8
  %determ = alloca double*, align 8
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call double @_ZNK6Domain6hgcoefEv(%class.Domain* nonnull %domain)
  %6 = bitcast double** %sigxx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = sext i32 %2 to i64
  %8 = tail call double* @_Z8AllocateIdEPT_m(i64 %7)
  store double* %8, double** %sigxx, align 8, !tbaa !32
  %9 = bitcast double** %sigyy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = tail call double* @_Z8AllocateIdEPT_m(i64 %7)
  store double* %10, double** %sigyy, align 8, !tbaa !32
  %11 = bitcast double** %sigzz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = tail call double* @_Z8AllocateIdEPT_m(i64 %7)
  store double* %12, double** %sigzz, align 8, !tbaa !32
  %13 = bitcast double** %determ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = tail call double* @_Z8AllocateIdEPT_m(i64 %7)
  store double* %14, double** %determ, align 8, !tbaa !32
  tail call fastcc void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nonnull dereferenceable(1456) %domain, double* %8, double* %10, double* %12, i32 %2)
  tail call fastcc void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* nonnull dereferenceable(1456) %domain, double* %8, double* %10, double* %12, double* %14, i32 %2)
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  br label %18

; <label>:16                                      ; preds = %18
  %17 = icmp slt i64 %indvars.iv.next, %7
  br i1 %17, label %18, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  tail call fastcc void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %14, double %5)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %determ)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %sigzz)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %sigyy)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %sigxx)
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  br label %23

; <label>:18                                      ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %19 = getelementptr inbounds double, double* %14, i64 %indvars.iv
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = fcmp ugt double %20, 0.000000e+00
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %21, label %16, label %22

; <label>:22                                      ; preds = %18
  tail call void @exit(i32 -1) #26
  unreachable

; <label>:23                                      ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  ret i32* %1
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain6hgcoefEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 56
  %2 = load double, double* %1, align 8, !tbaa !33
  ret double %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr noalias double* @_Z8AllocateIdEPT_m(i64 %size) #5 comdat {
  %1 = shl i64 %size, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #2
  %3 = bitcast i8* %2 to double*
  ret double* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #10

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double* nocapture %sigxx, double* nocapture %sigyy, double* nocapture %sigzz, i32 %numElem) unnamed_addr #7 {
  %1 = icmp sgt i32 %numElem, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %2 = trunc i64 %indvars.iv to i32
  %3 = tail call dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* nonnull %domain, i32 %2)
  %4 = load double, double* %3, align 8, !tbaa !1
  %5 = fsub double -0.000000e+00, %4
  %6 = tail call dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* nonnull %domain, i32 %2)
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds double, double* %sigzz, i64 %indvars.iv
  store double %8, double* %9, align 8, !tbaa !1
  %10 = getelementptr inbounds double, double* %sigyy, i64 %indvars.iv
  store double %8, double* %10, align 8, !tbaa !1
  %11 = getelementptr inbounds double, double* %sigxx, i64 %indvars.iv
  store double %8, double* %11, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %numElem
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture readonly %sigxx, double* nocapture readonly %sigyy, double* nocapture readonly %sigzz, double* nocapture %determ, i32 %numElem) unnamed_addr #7 {
  %fx_local = alloca [8 x double], align 16
  %fy_local = alloca [8 x double], align 16
  %fz_local = alloca [8 x double], align 16
  %B = alloca [3 x [8 x double]], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %1 = bitcast [8 x double]* %fx_local to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #2
  %2 = bitcast [8 x double]* %fy_local to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #2
  %3 = bitcast [8 x double]* %fz_local to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = icmp sgt i32 %numElem, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = bitcast [3 x [8 x double]]* %B to i8*
  %6 = bitcast [8 x double]* %x_local to i8*
  %7 = bitcast [8 x double]* %y_local to i8*
  %8 = bitcast [8 x double]* %z_local to i8*
  %9 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %10 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %11 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %12 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %13 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0, i64 0
  %14 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1, i64 0
  %15 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2, i64 0
  %16 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 0
  %17 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 0
  %18 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 0
  br label %19

; <label>:19                                      ; preds = %47, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %47 ]
  %20 = trunc i64 %indvars.iv3 to i32
  %21 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* nonnull %domain, i32 %20)
  call void @llvm.lifetime.start(i64 192, i8* %5) #2
  call void @llvm.lifetime.start(i64 64, i8* %6) #2
  call void @llvm.lifetime.start(i64 64, i8* %7) #2
  call void @llvm.lifetime.start(i64 64, i8* %8) #2
  call fastcc void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull dereferenceable(1456) %domain, i32* nonnull %21, double* %9, double* %10, double* %11)
  %22 = getelementptr inbounds double, double* %determ, i64 %indvars.iv3
  call fastcc void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %9, double* %10, double* %11, [8 x double]* %12, double* %22)
  call fastcc void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* %13, double* %14, double* %15, double* %9, double* %10, double* %11)
  %23 = getelementptr inbounds double, double* %sigzz, i64 %indvars.iv3
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = getelementptr inbounds double, double* %sigyy, i64 %indvars.iv3
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = getelementptr inbounds double, double* %sigxx, i64 %indvars.iv3
  %28 = load double, double* %27, align 8, !tbaa !1
  call fastcc void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %12, double %28, double %26, double %24, double* %16, double* %17, double* %18)
  br label %29

; <label>:29                                      ; preds = %29, %19
  %indvars.iv = phi i64 [ 0, %19 ], [ %indvars.iv.next, %29 ]
  %30 = getelementptr inbounds i32, i32* %21, i64 %indvars.iv
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 %indvars.iv
  %33 = load double, double* %32, align 8, !tbaa !1
  %34 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %31)
  %35 = load double, double* %34, align 8, !tbaa !1
  %36 = fadd double %33, %35
  store double %36, double* %34, align 8, !tbaa !1
  %37 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 %indvars.iv
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %31)
  %40 = load double, double* %39, align 8, !tbaa !1
  %41 = fadd double %38, %40
  store double %41, double* %39, align 8, !tbaa !1
  %42 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 %indvars.iv
  %43 = load double, double* %42, align 8, !tbaa !1
  %44 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %31)
  %45 = load double, double* %44, align 8, !tbaa !1
  %46 = fadd double %43, %45
  store double %46, double* %44, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %47, label %29

; <label>:47                                      ; preds = %29
  call void @llvm.lifetime.end(i64 64, i8* %8) #2
  call void @llvm.lifetime.end(i64 64, i8* %7) #2
  call void @llvm.lifetime.end(i64 64, i8* %6) #2
  call void @llvm.lifetime.end(i64 192, i8* %5) #2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %numElem
  br i1 %exitcond5, label %._crit_edge.loopexit, label %19

._crit_edge.loopexit:                             ; preds = %47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 64, i8* %3) #2
  call void @llvm.lifetime.end(i64 64, i8* %2) #2
  call void @llvm.lifetime.end(i64 64, i8* %1) #2
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* nocapture %pfx, double* nocapture %pfy, double* nocapture %pfz, double* nocapture readonly %x, double* nocapture readonly %y, double* nocapture readonly %z) unnamed_addr #7 {
  br label %116

; <label>:1                                       ; preds = %116
  %2 = getelementptr inbounds double, double* %pfx, i64 1
  %3 = getelementptr inbounds double, double* %pfy, i64 1
  %4 = getelementptr inbounds double, double* %pfz, i64 1
  %5 = getelementptr inbounds double, double* %pfx, i64 2
  %6 = getelementptr inbounds double, double* %pfy, i64 2
  %7 = getelementptr inbounds double, double* %pfz, i64 2
  %8 = getelementptr inbounds double, double* %pfx, i64 3
  %9 = getelementptr inbounds double, double* %pfy, i64 3
  %10 = getelementptr inbounds double, double* %pfz, i64 3
  %11 = load double, double* %x, align 8, !tbaa !1
  %12 = load double, double* %y, align 8, !tbaa !1
  %13 = load double, double* %z, align 8, !tbaa !1
  %14 = getelementptr inbounds double, double* %x, i64 1
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = getelementptr inbounds double, double* %y, i64 1
  %17 = load double, double* %16, align 8, !tbaa !1
  %18 = getelementptr inbounds double, double* %z, i64 1
  %19 = load double, double* %18, align 8, !tbaa !1
  %20 = getelementptr inbounds double, double* %x, i64 2
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = getelementptr inbounds double, double* %y, i64 2
  %23 = load double, double* %22, align 8, !tbaa !1
  %24 = getelementptr inbounds double, double* %z, i64 2
  %25 = load double, double* %24, align 8, !tbaa !1
  %26 = getelementptr inbounds double, double* %x, i64 3
  %27 = load double, double* %26, align 8, !tbaa !1
  %28 = getelementptr inbounds double, double* %y, i64 3
  %29 = load double, double* %28, align 8, !tbaa !1
  %30 = getelementptr inbounds double, double* %z, i64 3
  %31 = load double, double* %30, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %pfx, double* nonnull %pfy, double* nonnull %pfz, double* %2, double* %3, double* %4, double* %5, double* %6, double* %7, double* %8, double* %9, double* %10, double %11, double %12, double %13, double %15, double %17, double %19, double %21, double %23, double %25, double %27, double %29, double %31)
  %32 = getelementptr inbounds double, double* %pfx, i64 4
  %33 = getelementptr inbounds double, double* %pfy, i64 4
  %34 = getelementptr inbounds double, double* %pfz, i64 4
  %35 = getelementptr inbounds double, double* %pfx, i64 5
  %36 = getelementptr inbounds double, double* %pfy, i64 5
  %37 = getelementptr inbounds double, double* %pfz, i64 5
  %38 = load double, double* %x, align 8, !tbaa !1
  %39 = load double, double* %y, align 8, !tbaa !1
  %40 = load double, double* %z, align 8, !tbaa !1
  %41 = getelementptr inbounds double, double* %x, i64 4
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = getelementptr inbounds double, double* %y, i64 4
  %44 = load double, double* %43, align 8, !tbaa !1
  %45 = getelementptr inbounds double, double* %z, i64 4
  %46 = load double, double* %45, align 8, !tbaa !1
  %47 = getelementptr inbounds double, double* %x, i64 5
  %48 = load double, double* %47, align 8, !tbaa !1
  %49 = getelementptr inbounds double, double* %y, i64 5
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = getelementptr inbounds double, double* %z, i64 5
  %52 = load double, double* %51, align 8, !tbaa !1
  %53 = load double, double* %14, align 8, !tbaa !1
  %54 = load double, double* %16, align 8, !tbaa !1
  %55 = load double, double* %18, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nonnull %pfx, double* nonnull %pfy, double* nonnull %pfz, double* %32, double* %33, double* %34, double* %35, double* %36, double* %37, double* %2, double* %3, double* %4, double %38, double %39, double %40, double %42, double %44, double %46, double %48, double %50, double %52, double %53, double %54, double %55)
  %56 = getelementptr inbounds double, double* %pfx, i64 6
  %57 = getelementptr inbounds double, double* %pfy, i64 6
  %58 = getelementptr inbounds double, double* %pfz, i64 6
  %59 = load double, double* %14, align 8, !tbaa !1
  %60 = load double, double* %16, align 8, !tbaa !1
  %61 = load double, double* %18, align 8, !tbaa !1
  %62 = load double, double* %47, align 8, !tbaa !1
  %63 = load double, double* %49, align 8, !tbaa !1
  %64 = load double, double* %51, align 8, !tbaa !1
  %65 = getelementptr inbounds double, double* %x, i64 6
  %66 = load double, double* %65, align 8, !tbaa !1
  %67 = getelementptr inbounds double, double* %y, i64 6
  %68 = load double, double* %67, align 8, !tbaa !1
  %69 = getelementptr inbounds double, double* %z, i64 6
  %70 = load double, double* %69, align 8, !tbaa !1
  %71 = load double, double* %20, align 8, !tbaa !1
  %72 = load double, double* %22, align 8, !tbaa !1
  %73 = load double, double* %24, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %2, double* %3, double* %4, double* %35, double* %36, double* %37, double* %56, double* %57, double* %58, double* %5, double* %6, double* %7, double %59, double %60, double %61, double %62, double %63, double %64, double %66, double %68, double %70, double %71, double %72, double %73)
  %74 = getelementptr inbounds double, double* %pfx, i64 7
  %75 = getelementptr inbounds double, double* %pfy, i64 7
  %76 = getelementptr inbounds double, double* %pfz, i64 7
  %77 = load double, double* %20, align 8, !tbaa !1
  %78 = load double, double* %22, align 8, !tbaa !1
  %79 = load double, double* %24, align 8, !tbaa !1
  %80 = load double, double* %65, align 8, !tbaa !1
  %81 = load double, double* %67, align 8, !tbaa !1
  %82 = load double, double* %69, align 8, !tbaa !1
  %83 = getelementptr inbounds double, double* %x, i64 7
  %84 = load double, double* %83, align 8, !tbaa !1
  %85 = getelementptr inbounds double, double* %y, i64 7
  %86 = load double, double* %85, align 8, !tbaa !1
  %87 = getelementptr inbounds double, double* %z, i64 7
  %88 = load double, double* %87, align 8, !tbaa !1
  %89 = load double, double* %26, align 8, !tbaa !1
  %90 = load double, double* %28, align 8, !tbaa !1
  %91 = load double, double* %30, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %5, double* %6, double* %7, double* %56, double* %57, double* %58, double* %74, double* %75, double* %76, double* %8, double* %9, double* %10, double %77, double %78, double %79, double %80, double %81, double %82, double %84, double %86, double %88, double %89, double %90, double %91)
  %92 = load double, double* %26, align 8, !tbaa !1
  %93 = load double, double* %28, align 8, !tbaa !1
  %94 = load double, double* %30, align 8, !tbaa !1
  %95 = load double, double* %83, align 8, !tbaa !1
  %96 = load double, double* %85, align 8, !tbaa !1
  %97 = load double, double* %87, align 8, !tbaa !1
  %98 = load double, double* %41, align 8, !tbaa !1
  %99 = load double, double* %43, align 8, !tbaa !1
  %100 = load double, double* %45, align 8, !tbaa !1
  %101 = load double, double* %x, align 8, !tbaa !1
  %102 = load double, double* %y, align 8, !tbaa !1
  %103 = load double, double* %z, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %8, double* %9, double* %10, double* %74, double* %75, double* %76, double* %32, double* %33, double* %34, double* nonnull %pfx, double* nonnull %pfy, double* nonnull %pfz, double %92, double %93, double %94, double %95, double %96, double %97, double %98, double %99, double %100, double %101, double %102, double %103)
  %104 = load double, double* %41, align 8, !tbaa !1
  %105 = load double, double* %43, align 8, !tbaa !1
  %106 = load double, double* %45, align 8, !tbaa !1
  %107 = load double, double* %83, align 8, !tbaa !1
  %108 = load double, double* %85, align 8, !tbaa !1
  %109 = load double, double* %87, align 8, !tbaa !1
  %110 = load double, double* %65, align 8, !tbaa !1
  %111 = load double, double* %67, align 8, !tbaa !1
  %112 = load double, double* %69, align 8, !tbaa !1
  %113 = load double, double* %47, align 8, !tbaa !1
  %114 = load double, double* %49, align 8, !tbaa !1
  %115 = load double, double* %51, align 8, !tbaa !1
  tail call fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %32, double* %33, double* %34, double* %74, double* %75, double* %76, double* %56, double* %57, double* %58, double* %35, double* %36, double* %37, double %104, double %105, double %106, double %107, double %108, double %109, double %110, double %111, double %112, double %113, double %114, double %115)
  ret void

; <label>:116                                     ; preds = %116, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %116 ]
  %117 = getelementptr inbounds double, double* %pfx, i64 %indvars.iv
  store double 0.000000e+00, double* %117, align 8, !tbaa !1
  %118 = getelementptr inbounds double, double* %pfy, i64 %indvars.iv
  store double 0.000000e+00, double* %118, align 8, !tbaa !1
  %119 = getelementptr inbounds double, double* %pfz, i64 %indvars.iv
  store double 0.000000e+00, double* %119, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %1, label %116
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* nocapture %normalX0, double* nocapture %normalY0, double* nocapture %normalZ0, double* nocapture %normalX1, double* nocapture %normalY1, double* nocapture %normalZ1, double* nocapture %normalX2, double* nocapture %normalY2, double* nocapture %normalZ2, double* nocapture %normalX3, double* nocapture %normalY3, double* nocapture %normalZ3, double %x0, double %y0, double %z0, double %x1, double %y1, double %z1, double %x2, double %y2, double %z2, double %x3, double %y3, double %z3) unnamed_addr #7 {
  %1 = fadd double %x2, %x3
  %2 = fsub double %1, %x1
  %3 = fsub double %2, %x0
  %4 = fmul double %3, 5.000000e-01
  %5 = fadd double %y2, %y3
  %6 = fsub double %5, %y1
  %7 = fsub double %6, %y0
  %8 = fmul double %7, 5.000000e-01
  %9 = fadd double %z2, %z3
  %10 = fsub double %9, %z1
  %11 = fsub double %10, %z0
  %12 = fmul double %11, 5.000000e-01
  %13 = fadd double %x1, %x2
  %14 = fsub double %13, %x3
  %15 = fsub double %14, %x0
  %16 = fmul double %15, 5.000000e-01
  %17 = fadd double %y1, %y2
  %18 = fsub double %17, %y3
  %19 = fsub double %18, %y0
  %20 = fmul double %19, 5.000000e-01
  %21 = fadd double %z1, %z2
  %22 = fsub double %21, %z3
  %23 = fsub double %22, %z0
  %24 = fmul double %23, 5.000000e-01
  %25 = fmul double %8, %24
  %26 = fmul double %20, %12
  %27 = fsub double %25, %26
  %28 = fmul double %27, 2.500000e-01
  %29 = fmul double %16, %12
  %30 = fmul double %4, %24
  %31 = fsub double %29, %30
  %32 = fmul double %31, 2.500000e-01
  %33 = fmul double %4, %20
  %34 = fmul double %16, %8
  %35 = fsub double %33, %34
  %36 = fmul double %35, 2.500000e-01
  %37 = load double, double* %normalX0, align 8, !tbaa !1
  %38 = fadd double %28, %37
  store double %38, double* %normalX0, align 8, !tbaa !1
  %39 = load double, double* %normalX1, align 8, !tbaa !1
  %40 = fadd double %28, %39
  store double %40, double* %normalX1, align 8, !tbaa !1
  %41 = load double, double* %normalX2, align 8, !tbaa !1
  %42 = fadd double %28, %41
  store double %42, double* %normalX2, align 8, !tbaa !1
  %43 = load double, double* %normalX3, align 8, !tbaa !1
  %44 = fadd double %28, %43
  store double %44, double* %normalX3, align 8, !tbaa !1
  %45 = load double, double* %normalY0, align 8, !tbaa !1
  %46 = fadd double %32, %45
  store double %46, double* %normalY0, align 8, !tbaa !1
  %47 = load double, double* %normalY1, align 8, !tbaa !1
  %48 = fadd double %32, %47
  store double %48, double* %normalY1, align 8, !tbaa !1
  %49 = load double, double* %normalY2, align 8, !tbaa !1
  %50 = fadd double %32, %49
  store double %50, double* %normalY2, align 8, !tbaa !1
  %51 = load double, double* %normalY3, align 8, !tbaa !1
  %52 = fadd double %32, %51
  store double %52, double* %normalY3, align 8, !tbaa !1
  %53 = load double, double* %normalZ0, align 8, !tbaa !1
  %54 = fadd double %36, %53
  store double %54, double* %normalZ0, align 8, !tbaa !1
  %55 = load double, double* %normalZ1, align 8, !tbaa !1
  %56 = fadd double %36, %55
  store double %56, double* %normalZ1, align 8, !tbaa !1
  %57 = load double, double* %normalZ2, align 8, !tbaa !1
  %58 = fadd double %36, %57
  store double %58, double* %normalZ2, align 8, !tbaa !1
  %59 = load double, double* %normalZ3, align 8, !tbaa !1
  %60 = fadd double %36, %59
  store double %60, double* %normalZ3, align 8, !tbaa !1
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* nocapture readonly %B, double %stress_xx, double %stress_yy, double %stress_zz, double* nocapture %fx, double* nocapture %fy, double* nocapture %fz) unnamed_addr #7 {
  br label %2

; <label>:1                                       ; preds = %2
  ret void

; <label>:2                                       ; preds = %2, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %2 ]
  %3 = getelementptr inbounds [8 x double], [8 x double]* %B, i64 0, i64 %indvars.iv
  %4 = load double, double* %3, align 8, !tbaa !1
  %5 = fmul double %4, %stress_xx
  %6 = fsub double -0.000000e+00, %5
  %7 = getelementptr inbounds double, double* %fx, i64 %indvars.iv
  store double %6, double* %7, align 8, !tbaa !1
  %8 = getelementptr inbounds [8 x double], [8 x double]* %B, i64 1, i64 %indvars.iv
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = fmul double %9, %stress_yy
  %11 = fsub double -0.000000e+00, %10
  %12 = getelementptr inbounds double, double* %fy, i64 %indvars.iv
  store double %11, double* %12, align 8, !tbaa !1
  %13 = getelementptr inbounds [8 x double], [8 x double]* %B, i64 2, i64 %indvars.iv
  %14 = load double, double* %13, align 8, !tbaa !1
  %15 = fmul double %14, %stress_zz
  %16 = fsub double -0.000000e+00, %15
  %17 = getelementptr inbounds double, double* %fz, i64 %indvars.iv
  store double %16, double* %17, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %1, label %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture %determ, double %hgcoef) unnamed_addr #7 {
  %dvdx = alloca double*, align 8
  %dvdy = alloca double*, align 8
  %dvdz = alloca double*, align 8
  %x8n = alloca double*, align 8
  %y8n = alloca double*, align 8
  %z8n = alloca double*, align 8
  %x1 = alloca [8 x double], align 16
  %y1 = alloca [8 x double], align 16
  %z1 = alloca [8 x double], align 16
  %pfx = alloca [8 x double], align 16
  %pfy = alloca [8 x double], align 16
  %pfz = alloca [8 x double], align 16
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = shl nsw i32 %2, 3
  %4 = bitcast double** %dvdx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = sext i32 %3 to i64
  %6 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %6, double** %dvdx, align 8, !tbaa !32
  %7 = bitcast double** %dvdy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %8, double** %dvdy, align 8, !tbaa !32
  %9 = bitcast double** %dvdz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %10, double** %dvdz, align 8, !tbaa !32
  %11 = bitcast double** %x8n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %12, double** %x8n, align 8, !tbaa !32
  %13 = bitcast double** %y8n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %14, double** %y8n, align 8, !tbaa !32
  %15 = bitcast double** %z8n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = tail call double* @_Z8AllocateIdEPT_m(i64 %5)
  store double* %16, double** %z8n, align 8, !tbaa !32
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %18 = bitcast [8 x double]* %x1 to i8*
  %19 = bitcast [8 x double]* %y1 to i8*
  %20 = bitcast [8 x double]* %z1 to i8*
  %21 = bitcast [8 x double]* %pfx to i8*
  %22 = bitcast [8 x double]* %pfy to i8*
  %23 = bitcast [8 x double]* %pfz to i8*
  %24 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 0
  %25 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 0
  %26 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 0
  %27 = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 0
  %28 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 0
  %29 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 0
  %30 = sext i32 %2 to i64
  br label %32

._crit_edge.loopexit:                             ; preds = %80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %31 = fcmp ogt double %hgcoef, 0.000000e+00
  br i1 %31, label %82, label %83

; <label>:32                                      ; preds = %80, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %80 ]
  call void @llvm.lifetime.start(i64 64, i8* %18) #2
  call void @llvm.lifetime.start(i64 64, i8* %19) #2
  call void @llvm.lifetime.start(i64 64, i8* %20) #2
  call void @llvm.lifetime.start(i64 64, i8* %21) #2
  call void @llvm.lifetime.start(i64 64, i8* %22) #2
  call void @llvm.lifetime.start(i64 64, i8* %23) #2
  %33 = trunc i64 %indvars.iv3 to i32
  %34 = tail call i32* @_ZN6Domain8nodelistEi(%class.Domain* nonnull %domain, i32 %33)
  call fastcc void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull dereferenceable(1456) %domain, i32* nonnull %34, double* %24, double* %25, double* %26)
  call fastcc void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* %27, double* %28, double* %29, double* %24, double* %25, double* %26)
  %35 = shl i32 %33, 3
  %36 = sext i32 %35 to i64
  br label %47

; <label>:37                                      ; preds = %47
  %38 = tail call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nonnull %domain, i32 %33)
  %39 = load double, double* %38, align 8, !tbaa !1
  %40 = tail call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nonnull %domain, i32 %33)
  %41 = load double, double* %40, align 8, !tbaa !1
  %42 = fmul double %39, %41
  %43 = getelementptr inbounds double, double* %determ, i64 %indvars.iv3
  store double %42, double* %43, align 8, !tbaa !1
  %44 = tail call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nonnull %domain, i32 %33)
  %45 = load double, double* %44, align 8, !tbaa !1
  %46 = fcmp ugt double %45, 0.000000e+00
  br i1 %46, label %80, label %79

; <label>:47                                      ; preds = %47, %32
  %indvars.iv = phi i64 [ 0, %32 ], [ %indvars.iv.next, %47 ]
  %48 = add nsw i64 %indvars.iv, %36
  %49 = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 %indvars.iv
  %50 = bitcast double* %49 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !1
  %52 = getelementptr inbounds double, double* %6, i64 %48
  %53 = bitcast double* %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !1
  %54 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 %indvars.iv
  %55 = bitcast double* %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !1
  %57 = getelementptr inbounds double, double* %8, i64 %48
  %58 = bitcast double* %57 to i64*
  store i64 %56, i64* %58, align 8, !tbaa !1
  %59 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 %indvars.iv
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !1
  %62 = getelementptr inbounds double, double* %10, i64 %48
  %63 = bitcast double* %62 to i64*
  store i64 %61, i64* %63, align 8, !tbaa !1
  %64 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 %indvars.iv
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !1
  %67 = getelementptr inbounds double, double* %12, i64 %48
  %68 = bitcast double* %67 to i64*
  store i64 %66, i64* %68, align 8, !tbaa !1
  %69 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 %indvars.iv
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !1
  %72 = getelementptr inbounds double, double* %14, i64 %48
  %73 = bitcast double* %72 to i64*
  store i64 %71, i64* %73, align 8, !tbaa !1
  %74 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 %indvars.iv
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !1
  %77 = getelementptr inbounds double, double* %16, i64 %48
  %78 = bitcast double* %77 to i64*
  store i64 %76, i64* %78, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %37, label %47

; <label>:79                                      ; preds = %37
  tail call void @exit(i32 -1) #26
  unreachable

; <label>:80                                      ; preds = %37
  call void @llvm.lifetime.end(i64 64, i8* nonnull %23) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %22) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %21) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %20) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %19) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %18) #2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %81 = icmp slt i64 %indvars.iv.next4, %30
  br i1 %81, label %32, label %._crit_edge.loopexit

; <label>:82                                      ; preds = %._crit_edge
  tail call fastcc void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* nonnull dereferenceable(1456) %domain, double* %determ, double* %12, double* %14, double* %16, double* %6, double* %8, double* %10, double %hgcoef, i32 %2)
  br label %83

; <label>:83                                      ; preds = %82, %._crit_edge
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %z8n)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %y8n)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %x8n)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %dvdz)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %dvdy)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %dvdx)
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* nocapture %dvdx, double* nocapture %dvdy, double* nocapture %dvdz, double* nocapture readonly %x, double* nocapture readonly %y, double* nocapture readonly %z) unnamed_addr #7 {
  %1 = getelementptr inbounds double, double* %x, i64 1
  %2 = load double, double* %1, align 8, !tbaa !1
  %3 = getelementptr inbounds double, double* %x, i64 2
  %4 = load double, double* %3, align 8, !tbaa !1
  %5 = getelementptr inbounds double, double* %x, i64 3
  %6 = load double, double* %5, align 8, !tbaa !1
  %7 = getelementptr inbounds double, double* %x, i64 4
  %8 = load double, double* %7, align 8, !tbaa !1
  %9 = getelementptr inbounds double, double* %x, i64 5
  %10 = load double, double* %9, align 8, !tbaa !1
  %11 = getelementptr inbounds double, double* %x, i64 7
  %12 = load double, double* %11, align 8, !tbaa !1
  %13 = getelementptr inbounds double, double* %y, i64 1
  %14 = load double, double* %13, align 8, !tbaa !1
  %15 = getelementptr inbounds double, double* %y, i64 2
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = getelementptr inbounds double, double* %y, i64 3
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = getelementptr inbounds double, double* %y, i64 4
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = getelementptr inbounds double, double* %y, i64 5
  %22 = load double, double* %21, align 8, !tbaa !1
  %23 = getelementptr inbounds double, double* %y, i64 7
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = getelementptr inbounds double, double* %z, i64 1
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = getelementptr inbounds double, double* %z, i64 2
  %28 = load double, double* %27, align 8, !tbaa !1
  %29 = getelementptr inbounds double, double* %z, i64 3
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = getelementptr inbounds double, double* %z, i64 4
  %32 = load double, double* %31, align 8, !tbaa !1
  %33 = getelementptr inbounds double, double* %z, i64 5
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = getelementptr inbounds double, double* %z, i64 7
  %36 = load double, double* %35, align 8, !tbaa !1
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %2, double %4, double %6, double %8, double %10, double %12, double %14, double %16, double %18, double %20, double %22, double %24, double %26, double %28, double %30, double %32, double %34, double %36, double* %dvdx, double* %dvdy, double* %dvdz)
  %37 = load double, double* %x, align 8, !tbaa !1
  %38 = load double, double* %1, align 8, !tbaa !1
  %39 = load double, double* %3, align 8, !tbaa !1
  %40 = load double, double* %11, align 8, !tbaa !1
  %41 = load double, double* %7, align 8, !tbaa !1
  %42 = getelementptr inbounds double, double* %x, i64 6
  %43 = load double, double* %42, align 8, !tbaa !1
  %44 = load double, double* %y, align 8, !tbaa !1
  %45 = load double, double* %13, align 8, !tbaa !1
  %46 = load double, double* %15, align 8, !tbaa !1
  %47 = load double, double* %23, align 8, !tbaa !1
  %48 = load double, double* %19, align 8, !tbaa !1
  %49 = getelementptr inbounds double, double* %y, i64 6
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = load double, double* %z, align 8, !tbaa !1
  %52 = load double, double* %25, align 8, !tbaa !1
  %53 = load double, double* %27, align 8, !tbaa !1
  %54 = load double, double* %35, align 8, !tbaa !1
  %55 = load double, double* %31, align 8, !tbaa !1
  %56 = getelementptr inbounds double, double* %z, i64 6
  %57 = load double, double* %56, align 8, !tbaa !1
  %58 = getelementptr inbounds double, double* %dvdx, i64 3
  %59 = getelementptr inbounds double, double* %dvdy, i64 3
  %60 = getelementptr inbounds double, double* %dvdz, i64 3
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %37, double %38, double %39, double %40, double %41, double %43, double %44, double %45, double %46, double %47, double %48, double %50, double %51, double %52, double %53, double %54, double %55, double %57, double* %58, double* %59, double* %60)
  %61 = load double, double* %5, align 8, !tbaa !1
  %62 = load double, double* %x, align 8, !tbaa !1
  %63 = load double, double* %1, align 8, !tbaa !1
  %64 = load double, double* %42, align 8, !tbaa !1
  %65 = load double, double* %11, align 8, !tbaa !1
  %66 = load double, double* %9, align 8, !tbaa !1
  %67 = load double, double* %17, align 8, !tbaa !1
  %68 = load double, double* %y, align 8, !tbaa !1
  %69 = load double, double* %13, align 8, !tbaa !1
  %70 = load double, double* %49, align 8, !tbaa !1
  %71 = load double, double* %23, align 8, !tbaa !1
  %72 = load double, double* %21, align 8, !tbaa !1
  %73 = load double, double* %29, align 8, !tbaa !1
  %74 = load double, double* %z, align 8, !tbaa !1
  %75 = load double, double* %25, align 8, !tbaa !1
  %76 = load double, double* %56, align 8, !tbaa !1
  %77 = load double, double* %35, align 8, !tbaa !1
  %78 = load double, double* %33, align 8, !tbaa !1
  %79 = getelementptr inbounds double, double* %dvdx, i64 2
  %80 = getelementptr inbounds double, double* %dvdy, i64 2
  %81 = getelementptr inbounds double, double* %dvdz, i64 2
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %61, double %62, double %63, double %64, double %65, double %66, double %67, double %68, double %69, double %70, double %71, double %72, double %73, double %74, double %75, double %76, double %77, double %78, double* %79, double* %80, double* %81)
  %82 = load double, double* %3, align 8, !tbaa !1
  %83 = load double, double* %5, align 8, !tbaa !1
  %84 = load double, double* %x, align 8, !tbaa !1
  %85 = load double, double* %9, align 8, !tbaa !1
  %86 = load double, double* %42, align 8, !tbaa !1
  %87 = load double, double* %7, align 8, !tbaa !1
  %88 = load double, double* %15, align 8, !tbaa !1
  %89 = load double, double* %17, align 8, !tbaa !1
  %90 = load double, double* %y, align 8, !tbaa !1
  %91 = load double, double* %21, align 8, !tbaa !1
  %92 = load double, double* %49, align 8, !tbaa !1
  %93 = load double, double* %19, align 8, !tbaa !1
  %94 = load double, double* %27, align 8, !tbaa !1
  %95 = load double, double* %29, align 8, !tbaa !1
  %96 = load double, double* %z, align 8, !tbaa !1
  %97 = load double, double* %33, align 8, !tbaa !1
  %98 = load double, double* %56, align 8, !tbaa !1
  %99 = load double, double* %31, align 8, !tbaa !1
  %100 = getelementptr inbounds double, double* %dvdx, i64 1
  %101 = getelementptr inbounds double, double* %dvdy, i64 1
  %102 = getelementptr inbounds double, double* %dvdz, i64 1
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %82, double %83, double %84, double %85, double %86, double %87, double %88, double %89, double %90, double %91, double %92, double %93, double %94, double %95, double %96, double %97, double %98, double %99, double* %100, double* %101, double* %102)
  %103 = load double, double* %11, align 8, !tbaa !1
  %104 = load double, double* %42, align 8, !tbaa !1
  %105 = load double, double* %9, align 8, !tbaa !1
  %106 = load double, double* %x, align 8, !tbaa !1
  %107 = load double, double* %5, align 8, !tbaa !1
  %108 = load double, double* %1, align 8, !tbaa !1
  %109 = load double, double* %23, align 8, !tbaa !1
  %110 = load double, double* %49, align 8, !tbaa !1
  %111 = load double, double* %21, align 8, !tbaa !1
  %112 = load double, double* %y, align 8, !tbaa !1
  %113 = load double, double* %17, align 8, !tbaa !1
  %114 = load double, double* %13, align 8, !tbaa !1
  %115 = load double, double* %35, align 8, !tbaa !1
  %116 = load double, double* %56, align 8, !tbaa !1
  %117 = load double, double* %33, align 8, !tbaa !1
  %118 = load double, double* %z, align 8, !tbaa !1
  %119 = load double, double* %29, align 8, !tbaa !1
  %120 = load double, double* %25, align 8, !tbaa !1
  %121 = getelementptr inbounds double, double* %dvdx, i64 4
  %122 = getelementptr inbounds double, double* %dvdy, i64 4
  %123 = getelementptr inbounds double, double* %dvdz, i64 4
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %103, double %104, double %105, double %106, double %107, double %108, double %109, double %110, double %111, double %112, double %113, double %114, double %115, double %116, double %117, double %118, double %119, double %120, double* %121, double* %122, double* %123)
  %124 = load double, double* %7, align 8, !tbaa !1
  %125 = load double, double* %11, align 8, !tbaa !1
  %126 = load double, double* %42, align 8, !tbaa !1
  %127 = load double, double* %1, align 8, !tbaa !1
  %128 = load double, double* %x, align 8, !tbaa !1
  %129 = load double, double* %3, align 8, !tbaa !1
  %130 = load double, double* %19, align 8, !tbaa !1
  %131 = load double, double* %23, align 8, !tbaa !1
  %132 = load double, double* %49, align 8, !tbaa !1
  %133 = load double, double* %13, align 8, !tbaa !1
  %134 = load double, double* %y, align 8, !tbaa !1
  %135 = load double, double* %15, align 8, !tbaa !1
  %136 = load double, double* %31, align 8, !tbaa !1
  %137 = load double, double* %35, align 8, !tbaa !1
  %138 = load double, double* %56, align 8, !tbaa !1
  %139 = load double, double* %25, align 8, !tbaa !1
  %140 = load double, double* %z, align 8, !tbaa !1
  %141 = load double, double* %27, align 8, !tbaa !1
  %142 = getelementptr inbounds double, double* %dvdx, i64 5
  %143 = getelementptr inbounds double, double* %dvdy, i64 5
  %144 = getelementptr inbounds double, double* %dvdz, i64 5
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %124, double %125, double %126, double %127, double %128, double %129, double %130, double %131, double %132, double %133, double %134, double %135, double %136, double %137, double %138, double %139, double %140, double %141, double* %142, double* %143, double* %144)
  %145 = load double, double* %9, align 8, !tbaa !1
  %146 = load double, double* %7, align 8, !tbaa !1
  %147 = load double, double* %11, align 8, !tbaa !1
  %148 = load double, double* %3, align 8, !tbaa !1
  %149 = load double, double* %1, align 8, !tbaa !1
  %150 = load double, double* %5, align 8, !tbaa !1
  %151 = load double, double* %21, align 8, !tbaa !1
  %152 = load double, double* %19, align 8, !tbaa !1
  %153 = load double, double* %23, align 8, !tbaa !1
  %154 = load double, double* %15, align 8, !tbaa !1
  %155 = load double, double* %13, align 8, !tbaa !1
  %156 = load double, double* %17, align 8, !tbaa !1
  %157 = load double, double* %33, align 8, !tbaa !1
  %158 = load double, double* %31, align 8, !tbaa !1
  %159 = load double, double* %35, align 8, !tbaa !1
  %160 = load double, double* %27, align 8, !tbaa !1
  %161 = load double, double* %25, align 8, !tbaa !1
  %162 = load double, double* %29, align 8, !tbaa !1
  %163 = getelementptr inbounds double, double* %dvdx, i64 6
  %164 = getelementptr inbounds double, double* %dvdy, i64 6
  %165 = getelementptr inbounds double, double* %dvdz, i64 6
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %145, double %146, double %147, double %148, double %149, double %150, double %151, double %152, double %153, double %154, double %155, double %156, double %157, double %158, double %159, double %160, double %161, double %162, double* %163, double* %164, double* %165)
  %166 = load double, double* %42, align 8, !tbaa !1
  %167 = load double, double* %9, align 8, !tbaa !1
  %168 = load double, double* %7, align 8, !tbaa !1
  %169 = load double, double* %5, align 8, !tbaa !1
  %170 = load double, double* %3, align 8, !tbaa !1
  %171 = load double, double* %x, align 8, !tbaa !1
  %172 = load double, double* %49, align 8, !tbaa !1
  %173 = load double, double* %21, align 8, !tbaa !1
  %174 = load double, double* %19, align 8, !tbaa !1
  %175 = load double, double* %17, align 8, !tbaa !1
  %176 = load double, double* %15, align 8, !tbaa !1
  %177 = load double, double* %y, align 8, !tbaa !1
  %178 = load double, double* %56, align 8, !tbaa !1
  %179 = load double, double* %33, align 8, !tbaa !1
  %180 = load double, double* %31, align 8, !tbaa !1
  %181 = load double, double* %29, align 8, !tbaa !1
  %182 = load double, double* %27, align 8, !tbaa !1
  %183 = load double, double* %z, align 8, !tbaa !1
  %184 = getelementptr inbounds double, double* %dvdx, i64 7
  %185 = getelementptr inbounds double, double* %dvdy, i64 7
  %186 = getelementptr inbounds double, double* %dvdz, i64 7
  tail call fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %166, double %167, double %168, double %169, double %170, double %171, double %172, double %173, double %174, double %175, double %176, double %177, double %178, double %179, double %180, double %181, double %182, double %183, double* %184, double* %185, double* %186)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double* nocapture %dvdx, double* nocapture %dvdy, double* nocapture %dvdz) unnamed_addr #7 {
  %1 = fadd double %y1, %y2
  %2 = fadd double %z0, %z1
  %3 = fmul double %1, %2
  %4 = fadd double %y0, %y1
  %5 = fadd double %z1, %z2
  %6 = fmul double %4, %5
  %7 = fsub double %3, %6
  %8 = fadd double %y0, %y4
  %9 = fadd double %z3, %z4
  %10 = fmul double %8, %9
  %11 = fadd double %7, %10
  %12 = fadd double %y3, %y4
  %13 = fadd double %z0, %z4
  %14 = fmul double %12, %13
  %15 = fsub double %11, %14
  %16 = fadd double %y2, %y5
  %17 = fadd double %z3, %z5
  %18 = fmul double %16, %17
  %19 = fsub double %15, %18
  %20 = fadd double %y3, %y5
  %21 = fadd double %z2, %z5
  %22 = fmul double %20, %21
  %23 = fadd double %22, %19
  store double %23, double* %dvdx, align 8, !tbaa !1
  %24 = fadd double %x1, %x2
  %25 = fmul double %24, %2
  %26 = fadd double %x0, %x1
  %27 = fmul double %26, %5
  %28 = fsub double %27, %25
  %29 = fadd double %x0, %x4
  %30 = fmul double %29, %9
  %31 = fsub double %28, %30
  %32 = fadd double %x3, %x4
  %33 = fmul double %32, %13
  %34 = fadd double %33, %31
  %35 = fadd double %x2, %x5
  %36 = fmul double %35, %17
  %37 = fadd double %36, %34
  %38 = fadd double %x3, %x5
  %39 = fmul double %38, %21
  %40 = fsub double %37, %39
  store double %40, double* %dvdy, align 8, !tbaa !1
  %41 = fmul double %26, %1
  %42 = fmul double %24, %4
  %43 = fsub double %42, %41
  %44 = fmul double %32, %8
  %45 = fsub double %43, %44
  %46 = fmul double %29, %12
  %47 = fadd double %46, %45
  %48 = fmul double %38, %16
  %49 = fadd double %48, %47
  %50 = fmul double %35, %20
  %51 = fsub double %49, %50
  store double %51, double* %dvdz, align 8, !tbaa !1
  %52 = load double, double* %dvdx, align 8, !tbaa !1
  %53 = fmul double %52, 0x3FB5555555555555
  store double %53, double* %dvdx, align 8, !tbaa !1
  %54 = load double, double* %dvdy, align 8, !tbaa !1
  %55 = fmul double %54, 0x3FB5555555555555
  store double %55, double* %dvdy, align 8, !tbaa !1
  %56 = load double, double* %dvdz, align 8, !tbaa !1
  %57 = fmul double %56, 0x3FB5555555555555
  store double %57, double* %dvdz, align 8, !tbaa !1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #15

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture readonly %determ, double* nocapture readonly %x8n, double* nocapture readonly %y8n, double* nocapture readonly %z8n, double* nocapture readonly %dvdx, double* nocapture readonly %dvdy, double* nocapture readonly %dvdz, double %hourg, i32 %numElem) unnamed_addr #7 {
  %gamma = alloca [4 x [8 x double]], align 16
  %hgfx = alloca [8 x double], align 16
  %hgfy = alloca [8 x double], align 16
  %hgfz = alloca [8 x double], align 16
  %hourgam = alloca [8 x [4 x double]], align 16
  %xd1 = alloca [8 x double], align 16
  %yd1 = alloca [8 x double], align 16
  %zd1 = alloca [8 x double], align 16
  %1 = bitcast [4 x [8 x double]]* %gamma to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #2
  %2 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 0
  store double 1.000000e+00, double* %2, align 16, !tbaa !1
  %3 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 1
  store double 1.000000e+00, double* %3, align 8, !tbaa !1
  %4 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 2
  store double -1.000000e+00, double* %4, align 16, !tbaa !1
  %5 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 3
  store double -1.000000e+00, double* %5, align 8, !tbaa !1
  %6 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 4
  store double -1.000000e+00, double* %6, align 16, !tbaa !1
  %7 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 5
  store double -1.000000e+00, double* %7, align 8, !tbaa !1
  %8 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 6
  store double 1.000000e+00, double* %8, align 16, !tbaa !1
  %9 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0, i64 7
  store double 1.000000e+00, double* %9, align 8, !tbaa !1
  %10 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 0
  store double 1.000000e+00, double* %10, align 16, !tbaa !1
  %11 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 1
  store double -1.000000e+00, double* %11, align 8, !tbaa !1
  %12 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 2
  store double -1.000000e+00, double* %12, align 16, !tbaa !1
  %13 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 3
  store double 1.000000e+00, double* %13, align 8, !tbaa !1
  %14 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 4
  store double -1.000000e+00, double* %14, align 16, !tbaa !1
  %15 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 5
  store double 1.000000e+00, double* %15, align 8, !tbaa !1
  %16 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 6
  store double 1.000000e+00, double* %16, align 16, !tbaa !1
  %17 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1, i64 7
  store double -1.000000e+00, double* %17, align 8, !tbaa !1
  %18 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 0
  store double 1.000000e+00, double* %18, align 16, !tbaa !1
  %19 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 1
  store double -1.000000e+00, double* %19, align 8, !tbaa !1
  %20 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 2
  store double 1.000000e+00, double* %20, align 16, !tbaa !1
  %21 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 3
  store double -1.000000e+00, double* %21, align 8, !tbaa !1
  %22 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 4
  store double 1.000000e+00, double* %22, align 16, !tbaa !1
  %23 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 5
  store double -1.000000e+00, double* %23, align 8, !tbaa !1
  %24 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 6
  store double 1.000000e+00, double* %24, align 16, !tbaa !1
  %25 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2, i64 7
  store double -1.000000e+00, double* %25, align 8, !tbaa !1
  %26 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 0
  store double -1.000000e+00, double* %26, align 16, !tbaa !1
  %27 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 1
  store double 1.000000e+00, double* %27, align 8, !tbaa !1
  %28 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 2
  store double -1.000000e+00, double* %28, align 16, !tbaa !1
  %29 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 3
  store double 1.000000e+00, double* %29, align 8, !tbaa !1
  %30 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 4
  store double 1.000000e+00, double* %30, align 16, !tbaa !1
  %31 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 5
  store double -1.000000e+00, double* %31, align 8, !tbaa !1
  %32 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 6
  store double 1.000000e+00, double* %32, align 16, !tbaa !1
  %33 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3, i64 7
  store double -1.000000e+00, double* %33, align 8, !tbaa !1
  %34 = icmp sgt i32 %numElem, 0
  br i1 %34, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %35 = bitcast [8 x double]* %hgfx to i8*
  %36 = bitcast [8 x double]* %hgfy to i8*
  %37 = bitcast [8 x double]* %hgfz to i8*
  %38 = bitcast [8 x [4 x double]]* %hourgam to i8*
  %39 = bitcast [8 x double]* %xd1 to i8*
  %40 = bitcast [8 x double]* %yd1 to i8*
  %41 = bitcast [8 x double]* %zd1 to i8*
  %42 = bitcast [8 x double]* %xd1 to i64*
  %43 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 1
  %44 = bitcast double* %43 to i64*
  %45 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 2
  %46 = bitcast double* %45 to i64*
  %47 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 3
  %48 = bitcast double* %47 to i64*
  %49 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 4
  %50 = bitcast double* %49 to i64*
  %51 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 5
  %52 = bitcast double* %51 to i64*
  %53 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 6
  %54 = bitcast double* %53 to i64*
  %55 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 7
  %56 = bitcast double* %55 to i64*
  %57 = bitcast [8 x double]* %yd1 to i64*
  %58 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 1
  %59 = bitcast double* %58 to i64*
  %60 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 2
  %61 = bitcast double* %60 to i64*
  %62 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 3
  %63 = bitcast double* %62 to i64*
  %64 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 4
  %65 = bitcast double* %64 to i64*
  %66 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 5
  %67 = bitcast double* %66 to i64*
  %68 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 6
  %69 = bitcast double* %68 to i64*
  %70 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 7
  %71 = bitcast double* %70 to i64*
  %72 = bitcast [8 x double]* %zd1 to i64*
  %73 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 1
  %74 = bitcast double* %73 to i64*
  %75 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 2
  %76 = bitcast double* %75 to i64*
  %77 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 3
  %78 = bitcast double* %77 to i64*
  %79 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 4
  %80 = bitcast double* %79 to i64*
  %81 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 5
  %82 = bitcast double* %81 to i64*
  %83 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 6
  %84 = bitcast double* %83 to i64*
  %85 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 7
  %86 = bitcast double* %85 to i64*
  %87 = fmul double %hourg, -1.000000e-02
  %88 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 0
  %89 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 0
  %90 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 0
  %91 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0
  %92 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %93 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %94 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  %95 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 1
  %96 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 1
  %97 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 1
  %98 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 2
  %99 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 2
  %100 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 2
  %101 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 3
  %102 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 3
  %103 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 3
  %104 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 4
  %105 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 4
  %106 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 4
  %107 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 5
  %108 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 5
  %109 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 5
  %110 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 6
  %111 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 6
  %112 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 6
  %113 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 7
  %114 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 7
  %115 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 7
  br label %116

; <label>:116                                     ; preds = %234, %.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %234 ]
  call void @llvm.lifetime.start(i64 64, i8* %35) #2
  call void @llvm.lifetime.start(i64 64, i8* %36) #2
  call void @llvm.lifetime.start(i64 64, i8* %37) #2
  call void @llvm.lifetime.start(i64 256, i8* %38) #2
  call void @llvm.lifetime.start(i64 64, i8* %39) #2
  call void @llvm.lifetime.start(i64 64, i8* %40) #2
  call void @llvm.lifetime.start(i64 64, i8* %41) #2
  %117 = trunc i64 %indvars.iv3 to i32
  %118 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* nonnull %domain, i32 %117)
  %119 = shl nsw i32 %117, 3
  %120 = getelementptr inbounds double, double* %determ, i64 %indvars.iv3
  %121 = load double, double* %120, align 8, !tbaa !1
  %122 = fdiv double 1.000000e+00, %121
  %123 = sext i32 %119 to i64
  %124 = getelementptr inbounds double, double* %x8n, i64 %123
  %125 = load double, double* %124, align 8
  %126 = or i32 %119, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %x8n, i64 %127
  %129 = load double, double* %128, align 8
  %130 = or i32 %119, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %x8n, i64 %131
  %133 = load double, double* %132, align 8
  %134 = or i32 %119, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %x8n, i64 %135
  %137 = load double, double* %136, align 8
  %138 = or i32 %119, 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %x8n, i64 %139
  %141 = load double, double* %140, align 8
  %142 = or i32 %119, 5
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %x8n, i64 %143
  %145 = load double, double* %144, align 8
  %146 = or i32 %119, 6
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, double* %x8n, i64 %147
  %149 = load double, double* %148, align 8
  %150 = or i32 %119, 7
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %x8n, i64 %151
  %153 = load double, double* %152, align 8
  %154 = getelementptr inbounds double, double* %y8n, i64 %123
  %155 = load double, double* %154, align 8
  %156 = getelementptr inbounds double, double* %y8n, i64 %127
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds double, double* %y8n, i64 %131
  %159 = load double, double* %158, align 8
  %160 = getelementptr inbounds double, double* %y8n, i64 %135
  %161 = load double, double* %160, align 8
  %162 = getelementptr inbounds double, double* %y8n, i64 %139
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds double, double* %y8n, i64 %143
  %165 = load double, double* %164, align 8
  %166 = getelementptr inbounds double, double* %y8n, i64 %147
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds double, double* %y8n, i64 %151
  %169 = load double, double* %168, align 8
  %170 = getelementptr inbounds double, double* %z8n, i64 %123
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds double, double* %z8n, i64 %127
  %173 = load double, double* %172, align 8
  %174 = getelementptr inbounds double, double* %z8n, i64 %131
  %175 = load double, double* %174, align 8
  %176 = getelementptr inbounds double, double* %z8n, i64 %135
  %177 = load double, double* %176, align 8
  %178 = getelementptr inbounds double, double* %z8n, i64 %139
  %179 = load double, double* %178, align 8
  %180 = getelementptr inbounds double, double* %z8n, i64 %143
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds double, double* %z8n, i64 %147
  %183 = load double, double* %182, align 8
  %184 = getelementptr inbounds double, double* %z8n, i64 %151
  %185 = load double, double* %184, align 8
  %186 = getelementptr inbounds double, double* %dvdx, i64 %123
  %187 = load double, double* %186, align 8
  %188 = getelementptr inbounds double, double* %dvdy, i64 %123
  %189 = load double, double* %188, align 8
  %190 = getelementptr inbounds double, double* %dvdz, i64 %123
  %191 = load double, double* %190, align 8
  %192 = getelementptr inbounds double, double* %dvdx, i64 %127
  %193 = load double, double* %192, align 8
  %194 = getelementptr inbounds double, double* %dvdy, i64 %127
  %195 = load double, double* %194, align 8
  %196 = getelementptr inbounds double, double* %dvdz, i64 %127
  %197 = load double, double* %196, align 8
  %198 = getelementptr inbounds double, double* %dvdx, i64 %131
  %199 = load double, double* %198, align 8
  %200 = getelementptr inbounds double, double* %dvdy, i64 %131
  %201 = load double, double* %200, align 8
  %202 = getelementptr inbounds double, double* %dvdz, i64 %131
  %203 = load double, double* %202, align 8
  %204 = getelementptr inbounds double, double* %dvdx, i64 %135
  %205 = load double, double* %204, align 8
  %206 = getelementptr inbounds double, double* %dvdy, i64 %135
  %207 = load double, double* %206, align 8
  %208 = getelementptr inbounds double, double* %dvdz, i64 %135
  %209 = load double, double* %208, align 8
  %210 = getelementptr inbounds double, double* %dvdx, i64 %139
  %211 = load double, double* %210, align 8
  %212 = getelementptr inbounds double, double* %dvdy, i64 %139
  %213 = load double, double* %212, align 8
  %214 = getelementptr inbounds double, double* %dvdz, i64 %139
  %215 = load double, double* %214, align 8
  %216 = getelementptr inbounds double, double* %dvdx, i64 %143
  %217 = load double, double* %216, align 8
  %218 = getelementptr inbounds double, double* %dvdy, i64 %143
  %219 = load double, double* %218, align 8
  %220 = getelementptr inbounds double, double* %dvdz, i64 %143
  %221 = load double, double* %220, align 8
  %222 = getelementptr inbounds double, double* %dvdx, i64 %147
  %223 = load double, double* %222, align 8
  %224 = getelementptr inbounds double, double* %dvdy, i64 %147
  %225 = load double, double* %224, align 8
  %226 = getelementptr inbounds double, double* %dvdz, i64 %147
  %227 = load double, double* %226, align 8
  %228 = getelementptr inbounds double, double* %dvdx, i64 %151
  %229 = load double, double* %228, align 8
  %230 = getelementptr inbounds double, double* %dvdy, i64 %151
  %231 = load double, double* %230, align 8
  %232 = getelementptr inbounds double, double* %dvdz, i64 %151
  %233 = load double, double* %232, align 8
  br label %427

; <label>:234                                     ; preds = %427
  %235 = call dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* nonnull %domain, i32 %117)
  %236 = load double, double* %235, align 8, !tbaa !1
  %237 = call dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* nonnull %domain, i32 %117)
  %238 = load double, double* %237, align 8, !tbaa !1
  %239 = load double, double* %120, align 8, !tbaa !1
  %240 = call double @_Z4CBRTd(double %239)
  %241 = load i32, i32* %118, align 4, !tbaa !5
  %242 = getelementptr inbounds i32, i32* %118, i64 1
  %243 = load i32, i32* %242, align 4, !tbaa !5
  %244 = getelementptr inbounds i32, i32* %118, i64 2
  %245 = load i32, i32* %244, align 4, !tbaa !5
  %246 = getelementptr inbounds i32, i32* %118, i64 3
  %247 = load i32, i32* %246, align 4, !tbaa !5
  %248 = getelementptr inbounds i32, i32* %118, i64 4
  %249 = load i32, i32* %248, align 4, !tbaa !5
  %250 = getelementptr inbounds i32, i32* %118, i64 5
  %251 = load i32, i32* %250, align 4, !tbaa !5
  %252 = getelementptr inbounds i32, i32* %118, i64 6
  %253 = load i32, i32* %252, align 4, !tbaa !5
  %254 = getelementptr inbounds i32, i32* %118, i64 7
  %255 = load i32, i32* %254, align 4, !tbaa !5
  %256 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %241)
  %257 = bitcast double* %256 to i64*
  %258 = load i64, i64* %257, align 8, !tbaa !1
  store i64 %258, i64* %42, align 16, !tbaa !1
  %259 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %243)
  %260 = bitcast double* %259 to i64*
  %261 = load i64, i64* %260, align 8, !tbaa !1
  store i64 %261, i64* %44, align 8, !tbaa !1
  %262 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %245)
  %263 = bitcast double* %262 to i64*
  %264 = load i64, i64* %263, align 8, !tbaa !1
  store i64 %264, i64* %46, align 16, !tbaa !1
  %265 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %247)
  %266 = bitcast double* %265 to i64*
  %267 = load i64, i64* %266, align 8, !tbaa !1
  store i64 %267, i64* %48, align 8, !tbaa !1
  %268 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %249)
  %269 = bitcast double* %268 to i64*
  %270 = load i64, i64* %269, align 8, !tbaa !1
  store i64 %270, i64* %50, align 16, !tbaa !1
  %271 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %251)
  %272 = bitcast double* %271 to i64*
  %273 = load i64, i64* %272, align 8, !tbaa !1
  store i64 %273, i64* %52, align 8, !tbaa !1
  %274 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %253)
  %275 = bitcast double* %274 to i64*
  %276 = load i64, i64* %275, align 8, !tbaa !1
  store i64 %276, i64* %54, align 16, !tbaa !1
  %277 = call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %255)
  %278 = bitcast double* %277 to i64*
  %279 = load i64, i64* %278, align 8, !tbaa !1
  store i64 %279, i64* %56, align 8, !tbaa !1
  %280 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %241)
  %281 = bitcast double* %280 to i64*
  %282 = load i64, i64* %281, align 8, !tbaa !1
  store i64 %282, i64* %57, align 16, !tbaa !1
  %283 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %243)
  %284 = bitcast double* %283 to i64*
  %285 = load i64, i64* %284, align 8, !tbaa !1
  store i64 %285, i64* %59, align 8, !tbaa !1
  %286 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %245)
  %287 = bitcast double* %286 to i64*
  %288 = load i64, i64* %287, align 8, !tbaa !1
  store i64 %288, i64* %61, align 16, !tbaa !1
  %289 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %247)
  %290 = bitcast double* %289 to i64*
  %291 = load i64, i64* %290, align 8, !tbaa !1
  store i64 %291, i64* %63, align 8, !tbaa !1
  %292 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %249)
  %293 = bitcast double* %292 to i64*
  %294 = load i64, i64* %293, align 8, !tbaa !1
  store i64 %294, i64* %65, align 16, !tbaa !1
  %295 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %251)
  %296 = bitcast double* %295 to i64*
  %297 = load i64, i64* %296, align 8, !tbaa !1
  store i64 %297, i64* %67, align 8, !tbaa !1
  %298 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %253)
  %299 = bitcast double* %298 to i64*
  %300 = load i64, i64* %299, align 8, !tbaa !1
  store i64 %300, i64* %69, align 16, !tbaa !1
  %301 = call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %255)
  %302 = bitcast double* %301 to i64*
  %303 = load i64, i64* %302, align 8, !tbaa !1
  store i64 %303, i64* %71, align 8, !tbaa !1
  %304 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %241)
  %305 = bitcast double* %304 to i64*
  %306 = load i64, i64* %305, align 8, !tbaa !1
  store i64 %306, i64* %72, align 16, !tbaa !1
  %307 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %243)
  %308 = bitcast double* %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !1
  store i64 %309, i64* %74, align 8, !tbaa !1
  %310 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %245)
  %311 = bitcast double* %310 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !1
  store i64 %312, i64* %76, align 16, !tbaa !1
  %313 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %247)
  %314 = bitcast double* %313 to i64*
  %315 = load i64, i64* %314, align 8, !tbaa !1
  store i64 %315, i64* %78, align 8, !tbaa !1
  %316 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %249)
  %317 = bitcast double* %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !1
  store i64 %318, i64* %80, align 16, !tbaa !1
  %319 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %251)
  %320 = bitcast double* %319 to i64*
  %321 = load i64, i64* %320, align 8, !tbaa !1
  store i64 %321, i64* %82, align 8, !tbaa !1
  %322 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %253)
  %323 = bitcast double* %322 to i64*
  %324 = load i64, i64* %323, align 8, !tbaa !1
  store i64 %324, i64* %84, align 16, !tbaa !1
  %325 = call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %255)
  %326 = bitcast double* %325 to i64*
  %327 = load i64, i64* %326, align 8, !tbaa !1
  store i64 %327, i64* %86, align 8, !tbaa !1
  %328 = fmul double %87, %236
  %329 = fmul double %328, %238
  %330 = fdiv double %329, %240
  call fastcc void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* %88, double* %89, double* %90, [4 x double]* nonnull %91, double %330, double* %92, double* %93, double* %94)
  %331 = load double, double* %92, align 16, !tbaa !1
  %332 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %241)
  %333 = load double, double* %332, align 8, !tbaa !1
  %334 = fadd double %331, %333
  store double %334, double* %332, align 8, !tbaa !1
  %335 = load double, double* %93, align 16, !tbaa !1
  %336 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %241)
  %337 = load double, double* %336, align 8, !tbaa !1
  %338 = fadd double %335, %337
  store double %338, double* %336, align 8, !tbaa !1
  %339 = load double, double* %94, align 16, !tbaa !1
  %340 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %241)
  %341 = load double, double* %340, align 8, !tbaa !1
  %342 = fadd double %339, %341
  store double %342, double* %340, align 8, !tbaa !1
  %343 = load double, double* %95, align 8, !tbaa !1
  %344 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %243)
  %345 = load double, double* %344, align 8, !tbaa !1
  %346 = fadd double %343, %345
  store double %346, double* %344, align 8, !tbaa !1
  %347 = load double, double* %96, align 8, !tbaa !1
  %348 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %243)
  %349 = load double, double* %348, align 8, !tbaa !1
  %350 = fadd double %347, %349
  store double %350, double* %348, align 8, !tbaa !1
  %351 = load double, double* %97, align 8, !tbaa !1
  %352 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %243)
  %353 = load double, double* %352, align 8, !tbaa !1
  %354 = fadd double %351, %353
  store double %354, double* %352, align 8, !tbaa !1
  %355 = load double, double* %98, align 16, !tbaa !1
  %356 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %245)
  %357 = load double, double* %356, align 8, !tbaa !1
  %358 = fadd double %355, %357
  store double %358, double* %356, align 8, !tbaa !1
  %359 = load double, double* %99, align 16, !tbaa !1
  %360 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %245)
  %361 = load double, double* %360, align 8, !tbaa !1
  %362 = fadd double %359, %361
  store double %362, double* %360, align 8, !tbaa !1
  %363 = load double, double* %100, align 16, !tbaa !1
  %364 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %245)
  %365 = load double, double* %364, align 8, !tbaa !1
  %366 = fadd double %363, %365
  store double %366, double* %364, align 8, !tbaa !1
  %367 = load double, double* %101, align 8, !tbaa !1
  %368 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %247)
  %369 = load double, double* %368, align 8, !tbaa !1
  %370 = fadd double %367, %369
  store double %370, double* %368, align 8, !tbaa !1
  %371 = load double, double* %102, align 8, !tbaa !1
  %372 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %247)
  %373 = load double, double* %372, align 8, !tbaa !1
  %374 = fadd double %371, %373
  store double %374, double* %372, align 8, !tbaa !1
  %375 = load double, double* %103, align 8, !tbaa !1
  %376 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %247)
  %377 = load double, double* %376, align 8, !tbaa !1
  %378 = fadd double %375, %377
  store double %378, double* %376, align 8, !tbaa !1
  %379 = load double, double* %104, align 16, !tbaa !1
  %380 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %249)
  %381 = load double, double* %380, align 8, !tbaa !1
  %382 = fadd double %379, %381
  store double %382, double* %380, align 8, !tbaa !1
  %383 = load double, double* %105, align 16, !tbaa !1
  %384 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %249)
  %385 = load double, double* %384, align 8, !tbaa !1
  %386 = fadd double %383, %385
  store double %386, double* %384, align 8, !tbaa !1
  %387 = load double, double* %106, align 16, !tbaa !1
  %388 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %249)
  %389 = load double, double* %388, align 8, !tbaa !1
  %390 = fadd double %387, %389
  store double %390, double* %388, align 8, !tbaa !1
  %391 = load double, double* %107, align 8, !tbaa !1
  %392 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %251)
  %393 = load double, double* %392, align 8, !tbaa !1
  %394 = fadd double %391, %393
  store double %394, double* %392, align 8, !tbaa !1
  %395 = load double, double* %108, align 8, !tbaa !1
  %396 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %251)
  %397 = load double, double* %396, align 8, !tbaa !1
  %398 = fadd double %395, %397
  store double %398, double* %396, align 8, !tbaa !1
  %399 = load double, double* %109, align 8, !tbaa !1
  %400 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %251)
  %401 = load double, double* %400, align 8, !tbaa !1
  %402 = fadd double %399, %401
  store double %402, double* %400, align 8, !tbaa !1
  %403 = load double, double* %110, align 16, !tbaa !1
  %404 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %253)
  %405 = load double, double* %404, align 8, !tbaa !1
  %406 = fadd double %403, %405
  store double %406, double* %404, align 8, !tbaa !1
  %407 = load double, double* %111, align 16, !tbaa !1
  %408 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %253)
  %409 = load double, double* %408, align 8, !tbaa !1
  %410 = fadd double %407, %409
  store double %410, double* %408, align 8, !tbaa !1
  %411 = load double, double* %112, align 16, !tbaa !1
  %412 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %253)
  %413 = load double, double* %412, align 8, !tbaa !1
  %414 = fadd double %411, %413
  store double %414, double* %412, align 8, !tbaa !1
  %415 = load double, double* %113, align 8, !tbaa !1
  %416 = call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %255)
  %417 = load double, double* %416, align 8, !tbaa !1
  %418 = fadd double %415, %417
  store double %418, double* %416, align 8, !tbaa !1
  %419 = load double, double* %114, align 8, !tbaa !1
  %420 = call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %255)
  %421 = load double, double* %420, align 8, !tbaa !1
  %422 = fadd double %419, %421
  store double %422, double* %420, align 8, !tbaa !1
  %423 = load double, double* %115, align 8, !tbaa !1
  %424 = call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %255)
  %425 = load double, double* %424, align 8, !tbaa !1
  %426 = fadd double %423, %425
  store double %426, double* %424, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 64, i8* %41) #2
  call void @llvm.lifetime.end(i64 64, i8* %40) #2
  call void @llvm.lifetime.end(i64 64, i8* %39) #2
  call void @llvm.lifetime.end(i64 256, i8* nonnull %38) #2
  call void @llvm.lifetime.end(i64 64, i8* %37) #2
  call void @llvm.lifetime.end(i64 64, i8* %36) #2
  call void @llvm.lifetime.end(i64 64, i8* %35) #2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %numElem
  br i1 %exitcond5, label %._crit_edge.loopexit, label %116

; <label>:427                                     ; preds = %427, %116
  %indvars.iv = phi i64 [ 0, %116 ], [ %indvars.iv.next, %427 ]
  %428 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 0
  %429 = load double, double* %428, align 16, !tbaa !1
  %430 = fmul double %125, %429
  %431 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 1
  %432 = load double, double* %431, align 8, !tbaa !1
  %433 = fmul double %129, %432
  %434 = fadd double %430, %433
  %435 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 2
  %436 = load double, double* %435, align 16, !tbaa !1
  %437 = fmul double %133, %436
  %438 = fadd double %434, %437
  %439 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 3
  %440 = load double, double* %439, align 8, !tbaa !1
  %441 = fmul double %137, %440
  %442 = fadd double %438, %441
  %443 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 4
  %444 = load double, double* %443, align 16, !tbaa !1
  %445 = fmul double %141, %444
  %446 = fadd double %442, %445
  %447 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 5
  %448 = load double, double* %447, align 8, !tbaa !1
  %449 = fmul double %145, %448
  %450 = fadd double %446, %449
  %451 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 6
  %452 = load double, double* %451, align 16, !tbaa !1
  %453 = fmul double %149, %452
  %454 = fadd double %450, %453
  %455 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %indvars.iv, i64 7
  %456 = load double, double* %455, align 8, !tbaa !1
  %457 = fmul double %153, %456
  %458 = fadd double %454, %457
  %459 = fmul double %429, %155
  %460 = fmul double %432, %157
  %461 = fadd double %459, %460
  %462 = fmul double %436, %159
  %463 = fadd double %461, %462
  %464 = fmul double %440, %161
  %465 = fadd double %463, %464
  %466 = fmul double %444, %163
  %467 = fadd double %465, %466
  %468 = fmul double %448, %165
  %469 = fadd double %467, %468
  %470 = fmul double %452, %167
  %471 = fadd double %469, %470
  %472 = fmul double %456, %169
  %473 = fadd double %471, %472
  %474 = fmul double %429, %171
  %475 = fmul double %432, %173
  %476 = fadd double %474, %475
  %477 = fmul double %436, %175
  %478 = fadd double %476, %477
  %479 = fmul double %440, %177
  %480 = fadd double %478, %479
  %481 = fmul double %444, %179
  %482 = fadd double %480, %481
  %483 = fmul double %448, %181
  %484 = fadd double %482, %483
  %485 = fmul double %452, %183
  %486 = fadd double %484, %485
  %487 = fmul double %456, %185
  %488 = fadd double %486, %487
  %489 = fmul double %458, %187
  %490 = fmul double %473, %189
  %491 = fadd double %489, %490
  %492 = fmul double %488, %191
  %493 = fadd double %491, %492
  %494 = fmul double %122, %493
  %495 = fsub double %429, %494
  %496 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0, i64 %indvars.iv
  store double %495, double* %496, align 8, !tbaa !1
  %497 = fmul double %458, %193
  %498 = fmul double %473, %195
  %499 = fadd double %497, %498
  %500 = fmul double %488, %197
  %501 = fadd double %499, %500
  %502 = fmul double %122, %501
  %503 = fsub double %432, %502
  %504 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 1, i64 %indvars.iv
  store double %503, double* %504, align 8, !tbaa !1
  %505 = fmul double %458, %199
  %506 = fmul double %473, %201
  %507 = fadd double %505, %506
  %508 = fmul double %488, %203
  %509 = fadd double %507, %508
  %510 = fmul double %122, %509
  %511 = fsub double %436, %510
  %512 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 2, i64 %indvars.iv
  store double %511, double* %512, align 8, !tbaa !1
  %513 = fmul double %458, %205
  %514 = fmul double %473, %207
  %515 = fadd double %513, %514
  %516 = fmul double %488, %209
  %517 = fadd double %515, %516
  %518 = fmul double %122, %517
  %519 = fsub double %440, %518
  %520 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 3, i64 %indvars.iv
  store double %519, double* %520, align 8, !tbaa !1
  %521 = fmul double %458, %211
  %522 = fmul double %473, %213
  %523 = fadd double %521, %522
  %524 = fmul double %488, %215
  %525 = fadd double %523, %524
  %526 = fmul double %122, %525
  %527 = fsub double %444, %526
  %528 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 4, i64 %indvars.iv
  store double %527, double* %528, align 8, !tbaa !1
  %529 = fmul double %458, %217
  %530 = fmul double %473, %219
  %531 = fadd double %529, %530
  %532 = fmul double %488, %221
  %533 = fadd double %531, %532
  %534 = fmul double %122, %533
  %535 = fsub double %448, %534
  %536 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 5, i64 %indvars.iv
  store double %535, double* %536, align 8, !tbaa !1
  %537 = fmul double %458, %223
  %538 = fmul double %473, %225
  %539 = fadd double %537, %538
  %540 = fmul double %488, %227
  %541 = fadd double %539, %540
  %542 = fmul double %122, %541
  %543 = fsub double %452, %542
  %544 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 6, i64 %indvars.iv
  store double %543, double* %544, align 8, !tbaa !1
  %545 = fmul double %458, %229
  %546 = fmul double %473, %231
  %547 = fadd double %545, %546
  %548 = fmul double %488, %233
  %549 = fadd double %547, %548
  %550 = fmul double %122, %549
  %551 = fsub double %456, %550
  %552 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 7, i64 %indvars.iv
  store double %551, double* %552, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %234, label %427

._crit_edge.loopexit:                             ; preds = %234
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  call void @llvm.lifetime.end(i64 256, i8* %1) #2
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr double @_Z4CBRTd(double %arg) #8 comdat {
  %1 = tail call double @cbrt(double %arg) #2
  ret double %1
}

; Function Attrs: nounwind
declare double @cbrt(double) #10

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* nocapture readonly %xd, double* nocapture readonly %yd, double* nocapture readonly %zd, [4 x double]* readonly %hourgam, double %coefficient, double* nocapture %hgfx, double* nocapture %hgfy, double* nocapture %hgfz) unnamed_addr #7 {
  %hxx = alloca [4 x double], align 16
  %1 = bitcast [4 x double]* %hxx to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #2
  %2 = load double, double* %xd, align 8
  %3 = getelementptr inbounds double, double* %xd, i64 1
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds double, double* %xd, i64 2
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds double, double* %xd, i64 3
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds double, double* %xd, i64 4
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds double, double* %xd, i64 5
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds double, double* %xd, i64 6
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds double, double* %xd, i64 7
  %16 = load double, double* %15, align 8
  br label %25

.preheader9:                                      ; preds = %25
  %17 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %18 = load double, double* %17, align 16
  %19 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %20 = load double, double* %19, align 8
  %21 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %22 = load double, double* %21, align 16
  %23 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %24 = load double, double* %23, align 8
  br label %73

; <label>:25                                      ; preds = %25, %0
  %indvars.iv28 = phi i64 [ 0, %0 ], [ %indvars.iv.next29, %25 ]
  %26 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0, i64 %indvars.iv28
  %27 = load double, double* %26, align 8, !tbaa !1
  %28 = fmul double %27, %2
  %29 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1, i64 %indvars.iv28
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = fmul double %30, %4
  %32 = fadd double %28, %31
  %33 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2, i64 %indvars.iv28
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = fmul double %34, %6
  %36 = fadd double %32, %35
  %37 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3, i64 %indvars.iv28
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = fmul double %38, %8
  %40 = fadd double %36, %39
  %41 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4, i64 %indvars.iv28
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = fmul double %42, %10
  %44 = fadd double %40, %43
  %45 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5, i64 %indvars.iv28
  %46 = load double, double* %45, align 8, !tbaa !1
  %47 = fmul double %46, %12
  %48 = fadd double %44, %47
  %49 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6, i64 %indvars.iv28
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = fmul double %50, %14
  %52 = fadd double %48, %51
  %53 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7, i64 %indvars.iv28
  %54 = load double, double* %53, align 8, !tbaa !1
  %55 = fmul double %54, %16
  %56 = fadd double %52, %55
  %57 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %indvars.iv28
  store double %56, double* %57, align 8, !tbaa !1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 4
  br i1 %exitcond30, label %.preheader9, label %25

.preheader8:                                      ; preds = %73
  %58 = load double, double* %yd, align 8
  %59 = getelementptr inbounds double, double* %yd, i64 1
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds double, double* %yd, i64 2
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds double, double* %yd, i64 3
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds double, double* %yd, i64 4
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds double, double* %yd, i64 5
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds double, double* %yd, i64 6
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds double, double* %yd, i64 7
  %72 = load double, double* %71, align 8
  br label %95

; <label>:73                                      ; preds = %73, %.preheader9
  %indvars.iv25 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next26, %73 ]
  %74 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv25, i64 0
  %75 = load double, double* %74, align 8, !tbaa !1
  %76 = fmul double %75, %18
  %77 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv25, i64 1
  %78 = load double, double* %77, align 8, !tbaa !1
  %79 = fmul double %78, %20
  %80 = fadd double %76, %79
  %81 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv25, i64 2
  %82 = load double, double* %81, align 8, !tbaa !1
  %83 = fmul double %82, %22
  %84 = fadd double %80, %83
  %85 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv25, i64 3
  %86 = load double, double* %85, align 8, !tbaa !1
  %87 = fmul double %86, %24
  %88 = fadd double %84, %87
  %89 = fmul double %88, %coefficient
  %90 = getelementptr inbounds double, double* %hgfx, i64 %indvars.iv25
  store double %89, double* %90, align 8, !tbaa !1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 8
  br i1 %exitcond27, label %.preheader8, label %73

.preheader7:                                      ; preds = %95
  %91 = load double, double* %17, align 16
  %92 = load double, double* %19, align 8
  %93 = load double, double* %21, align 16
  %94 = load double, double* %23, align 8
  br label %143

; <label>:95                                      ; preds = %95, %.preheader8
  %indvars.iv22 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next23, %95 ]
  %96 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0, i64 %indvars.iv22
  %97 = load double, double* %96, align 8, !tbaa !1
  %98 = fmul double %97, %58
  %99 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1, i64 %indvars.iv22
  %100 = load double, double* %99, align 8, !tbaa !1
  %101 = fmul double %100, %60
  %102 = fadd double %98, %101
  %103 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2, i64 %indvars.iv22
  %104 = load double, double* %103, align 8, !tbaa !1
  %105 = fmul double %104, %62
  %106 = fadd double %102, %105
  %107 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3, i64 %indvars.iv22
  %108 = load double, double* %107, align 8, !tbaa !1
  %109 = fmul double %108, %64
  %110 = fadd double %106, %109
  %111 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4, i64 %indvars.iv22
  %112 = load double, double* %111, align 8, !tbaa !1
  %113 = fmul double %112, %66
  %114 = fadd double %110, %113
  %115 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5, i64 %indvars.iv22
  %116 = load double, double* %115, align 8, !tbaa !1
  %117 = fmul double %116, %68
  %118 = fadd double %114, %117
  %119 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6, i64 %indvars.iv22
  %120 = load double, double* %119, align 8, !tbaa !1
  %121 = fmul double %120, %70
  %122 = fadd double %118, %121
  %123 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7, i64 %indvars.iv22
  %124 = load double, double* %123, align 8, !tbaa !1
  %125 = fmul double %124, %72
  %126 = fadd double %122, %125
  %127 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %indvars.iv22
  store double %126, double* %127, align 8, !tbaa !1
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 4
  br i1 %exitcond24, label %.preheader7, label %95

.preheader6:                                      ; preds = %143
  %128 = load double, double* %zd, align 8
  %129 = getelementptr inbounds double, double* %zd, i64 1
  %130 = load double, double* %129, align 8
  %131 = getelementptr inbounds double, double* %zd, i64 2
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds double, double* %zd, i64 3
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds double, double* %zd, i64 4
  %136 = load double, double* %135, align 8
  %137 = getelementptr inbounds double, double* %zd, i64 5
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds double, double* %zd, i64 6
  %140 = load double, double* %139, align 8
  %141 = getelementptr inbounds double, double* %zd, i64 7
  %142 = load double, double* %141, align 8
  br label %165

; <label>:143                                     ; preds = %143, %.preheader7
  %indvars.iv19 = phi i64 [ 0, %.preheader7 ], [ %indvars.iv.next20, %143 ]
  %144 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv19, i64 0
  %145 = load double, double* %144, align 8, !tbaa !1
  %146 = fmul double %145, %91
  %147 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv19, i64 1
  %148 = load double, double* %147, align 8, !tbaa !1
  %149 = fmul double %148, %92
  %150 = fadd double %146, %149
  %151 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv19, i64 2
  %152 = load double, double* %151, align 8, !tbaa !1
  %153 = fmul double %152, %93
  %154 = fadd double %150, %153
  %155 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv19, i64 3
  %156 = load double, double* %155, align 8, !tbaa !1
  %157 = fmul double %156, %94
  %158 = fadd double %154, %157
  %159 = fmul double %158, %coefficient
  %160 = getelementptr inbounds double, double* %hgfy, i64 %indvars.iv19
  store double %159, double* %160, align 8, !tbaa !1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 8
  br i1 %exitcond21, label %.preheader6, label %143

.preheader:                                       ; preds = %165
  %161 = load double, double* %17, align 16
  %162 = load double, double* %19, align 8
  %163 = load double, double* %21, align 16
  %164 = load double, double* %23, align 8
  br label %199

; <label>:165                                     ; preds = %165, %.preheader6
  %indvars.iv16 = phi i64 [ 0, %.preheader6 ], [ %indvars.iv.next17, %165 ]
  %166 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0, i64 %indvars.iv16
  %167 = load double, double* %166, align 8, !tbaa !1
  %168 = fmul double %167, %128
  %169 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1, i64 %indvars.iv16
  %170 = load double, double* %169, align 8, !tbaa !1
  %171 = fmul double %170, %130
  %172 = fadd double %168, %171
  %173 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2, i64 %indvars.iv16
  %174 = load double, double* %173, align 8, !tbaa !1
  %175 = fmul double %174, %132
  %176 = fadd double %172, %175
  %177 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3, i64 %indvars.iv16
  %178 = load double, double* %177, align 8, !tbaa !1
  %179 = fmul double %178, %134
  %180 = fadd double %176, %179
  %181 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4, i64 %indvars.iv16
  %182 = load double, double* %181, align 8, !tbaa !1
  %183 = fmul double %182, %136
  %184 = fadd double %180, %183
  %185 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5, i64 %indvars.iv16
  %186 = load double, double* %185, align 8, !tbaa !1
  %187 = fmul double %186, %138
  %188 = fadd double %184, %187
  %189 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6, i64 %indvars.iv16
  %190 = load double, double* %189, align 8, !tbaa !1
  %191 = fmul double %190, %140
  %192 = fadd double %188, %191
  %193 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7, i64 %indvars.iv16
  %194 = load double, double* %193, align 8, !tbaa !1
  %195 = fmul double %194, %142
  %196 = fadd double %192, %195
  %197 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %indvars.iv16
  store double %196, double* %197, align 8, !tbaa !1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 4
  br i1 %exitcond18, label %.preheader, label %165

; <label>:198                                     ; preds = %199
  call void @llvm.lifetime.end(i64 32, i8* %1) #2
  ret void

; <label>:199                                     ; preds = %199, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %199 ]
  %200 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv, i64 0
  %201 = load double, double* %200, align 8, !tbaa !1
  %202 = fmul double %201, %161
  %203 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv, i64 1
  %204 = load double, double* %203, align 8, !tbaa !1
  %205 = fmul double %204, %162
  %206 = fadd double %202, %205
  %207 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv, i64 2
  %208 = load double, double* %207, align 8, !tbaa !1
  %209 = fmul double %208, %163
  %210 = fadd double %206, %209
  %211 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %indvars.iv, i64 3
  %212 = load double, double* %211, align 8, !tbaa !1
  %213 = fmul double %212, %164
  %214 = fadd double %210, %213
  %215 = fmul double %214, %coefficient
  %216 = getelementptr inbounds double, double* %hgfz, i64 %indvars.iv
  store double %215, double* %216, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %198, label %199
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_Z7ReleaseIdEvPPT_(double** nocapture %ptr) #5 comdat {
  %1 = load double*, double** %ptr, align 8, !tbaa !32
  %2 = icmp eq double* %1, null
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast double* %1 to i8*
  tail call void @free(i8* %4) #2
  store double* null, double** %ptr, align 8, !tbaa !32
  br label %5

; <label>:5                                       ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #10

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nocapture readonly dereferenceable(1456) %domain, i32 %numNode) unnamed_addr #7 {
  %1 = icmp sgt i32 %numNode, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i32 [ %20, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %2 = tail call dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* nonnull %domain, i32 %i.01)
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = tail call dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* nonnull %domain, i32 %i.01)
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = fdiv double %3, %5
  %7 = tail call dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double %6, double* %7, align 8, !tbaa !1
  %8 = tail call dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* nonnull %domain, i32 %i.01)
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = tail call dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* nonnull %domain, i32 %i.01)
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = fdiv double %9, %11
  %13 = tail call dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double %12, double* %13, align 8, !tbaa !1
  %14 = tail call dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* nonnull %domain, i32 %i.01)
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = tail call dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* nonnull %domain, i32 %i.01)
  %17 = load double, double* %16, align 8, !tbaa !1
  %18 = fdiv double %15, %17
  %19 = tail call dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* nonnull %domain, i32 %i.01)
  store double %18, double* %19, align 8, !tbaa !1
  %20 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %20, %numNode
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* readonly dereferenceable(1456) %domain) unnamed_addr #7 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = add nsw i32 %2, 1
  %4 = mul nsw i32 %3, %3
  %5 = tail call zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* nonnull %domain)
  %.not = xor i1 %5, true
  %6 = icmp ne i32 %4, 0
  %or.cond = and i1 %6, %.not
  br i1 %or.cond, label %.lr.ph11.preheader, label %.loopexit6

.lr.ph11.preheader:                               ; preds = %0
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.lr.ph11
  %i.010 = phi i32 [ %9, %.lr.ph11 ], [ 0, %.lr.ph11.preheader ]
  %7 = tail call i32 @_ZN6Domain5symmXEi(%class.Domain* nonnull %domain, i32 %i.010)
  %8 = tail call dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* nonnull %domain, i32 %7)
  store double 0.000000e+00, double* %8, align 8, !tbaa !1
  %9 = add nuw nsw i32 %i.010, 1
  %10 = icmp slt i32 %9, %4
  br i1 %10, label %.lr.ph11, label %.loopexit6.loopexit

.loopexit6.loopexit:                              ; preds = %.lr.ph11
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit6.loopexit, %0
  %11 = tail call zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* nonnull %domain)
  %.not12 = xor i1 %11, true
  %or.cond13 = and i1 %6, %.not12
  br i1 %or.cond13, label %.lr.ph9.preheader, label %.loopexit4

.lr.ph9.preheader:                                ; preds = %.loopexit6
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.lr.ph9
  %i1.08 = phi i32 [ %14, %.lr.ph9 ], [ 0, %.lr.ph9.preheader ]
  %12 = tail call i32 @_ZN6Domain5symmYEi(%class.Domain* nonnull %domain, i32 %i1.08)
  %13 = tail call dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* nonnull %domain, i32 %12)
  store double 0.000000e+00, double* %13, align 8, !tbaa !1
  %14 = add nuw nsw i32 %i1.08, 1
  %15 = icmp slt i32 %14, %4
  br i1 %15, label %.lr.ph9, label %.loopexit4.loopexit

.loopexit4.loopexit:                              ; preds = %.lr.ph9
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit, %.loopexit6
  %16 = tail call zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* nonnull %domain)
  %.not14 = xor i1 %16, true
  %or.cond15 = and i1 %6, %.not14
  br i1 %or.cond15, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i2.07 = phi i32 [ %19, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %17 = tail call i32 @_ZN6Domain5symmZEi(%class.Domain* nonnull %domain, i32 %i2.07)
  %18 = tail call dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* nonnull %domain, i32 %17)
  store double 0.000000e+00, double* %18, align 8, !tbaa !1
  %19 = add nuw nsw i32 %i2.07, 1
  %20 = icmp slt i32 %19, %4
  br i1 %20, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit4
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  ret i32* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* nocapture readonly %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  %2 = tail call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %1)
  ret i1 %2
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = tail call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this)
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  store i32* %3, i32** %4, align 8
  %5 = tail call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this)
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i64 0, i32 0
  store i32* %5, i32** %6, align 8
  %7 = call zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %1, %"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = bitcast %"class.std::vector.0"* %this to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  %5 = bitcast i32** %2 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, i32** nonnull dereferenceable(8) %2)
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %7 = load i32*, i32** %6, align 8
  ret i32* %7
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* nocapture %this, i32** nocapture readonly dereferenceable(8) %__i) unnamed_addr #16 comdat align 2 {
  %1 = bitcast i32** %__i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !32
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %4 = bitcast i32** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !36
  %6 = bitcast i32** %2 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, i32** nonnull dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %8 = load i32*, i32** %7, align 8
  ret i32* %8
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #9 comdat {
  %1 = tail call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__lhs)
  %2 = load i32*, i32** %1, align 8, !tbaa !32
  %3 = tail call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__rhs)
  %4 = load i32*, i32** %3, align 8, !tbaa !32
  %5 = icmp eq i32* %2, %4
  ret i1 %5
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  ret i32** %1
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i32 @_ZN6Domain5symmXEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  %4 = load i32, i32* %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* nocapture readonly %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  %2 = tail call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %1)
  ret i1 %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i32 @_ZN6Domain5symmYEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  %4 = load i32, i32* %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* nocapture readonly %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  %2 = tail call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %1)
  ret i1 %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i32 @_ZN6Domain5symmZEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  %4 = load i32, i32* %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double %dt, double %u_cut, i32 %numNode) unnamed_addr #7 {
  %1 = icmp sgt i32 %numNode, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i32 [ %26, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %2 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %i.01)
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = tail call dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* nonnull %domain, i32 %i.01)
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = fmul double %5, %dt
  %7 = fadd double %3, %6
  %8 = tail call double @_Z4FABSd(double %7)
  %9 = fcmp olt double %8, %u_cut
  %xdtmp.0 = select i1 %9, double 0.000000e+00, double %7
  store double %xdtmp.0, double* %2, align 8, !tbaa !1
  %10 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %i.01)
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = tail call dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* nonnull %domain, i32 %i.01)
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = fmul double %13, %dt
  %15 = fadd double %11, %14
  %16 = tail call double @_Z4FABSd(double %15)
  %17 = fcmp olt double %16, %u_cut
  %ydtmp.0 = select i1 %17, double 0.000000e+00, double %15
  store double %ydtmp.0, double* %10, align 8, !tbaa !1
  %18 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %i.01)
  %19 = load double, double* %18, align 8, !tbaa !1
  %20 = tail call dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* nonnull %domain, i32 %i.01)
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = fmul double %21, %dt
  %23 = fadd double %19, %22
  %24 = tail call double @_Z4FABSd(double %23)
  %25 = fcmp olt double %24, %u_cut
  %zdtmp.0 = select i1 %25, double 0.000000e+00, double %23
  store double %zdtmp.0, double* %18, align 8, !tbaa !1
  %26 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %26, %numNode
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint nounwind readnone uwtable
define linkonce_odr double @_Z4FABSd(double %arg) #17 comdat {
  %1 = tail call double @fabs(double %arg) #22
  ret double %1
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #18

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double %dt, i32 %numNode) unnamed_addr #7 {
  %1 = icmp sgt i32 %numNode, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i32 [ %20, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %2 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %i.01)
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = fmul double %3, %dt
  %5 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %i.01)
  %6 = load double, double* %5, align 8, !tbaa !1
  %7 = fadd double %4, %6
  store double %7, double* %5, align 8, !tbaa !1
  %8 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %i.01)
  %9 = load double, double* %8, align 8, !tbaa !1
  %10 = fmul double %9, %dt
  %11 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %i.01)
  %12 = load double, double* %11, align 8, !tbaa !1
  %13 = fadd double %10, %12
  store double %13, double* %11, align 8, !tbaa !1
  %14 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %i.01)
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = fmul double %15, %dt
  %17 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %i.01)
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = fadd double %16, %18
  store double %19, double* %17, align 8, !tbaa !1
  %20 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %20, %numNode
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc void @_ZL16LagrangeElementsR6Domaini(%class.Domain* dereferenceable(1456) %domain, i32 %numElem) unnamed_addr #14 {
  %vnew = alloca double*, align 8
  %1 = bitcast double** %vnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = sext i32 %numElem to i64
  %3 = tail call double* @_Z8AllocateIdEPT_m(i64 %2)
  store double* %3, double** %vnew, align 8, !tbaa !32
  tail call fastcc void @_ZL20CalcLagrangeElementsR6DomainPd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %3)
  tail call fastcc void @_ZL13CalcQForElemsR6DomainPd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %3)
  tail call fastcc void @_ZL31ApplyMaterialPropertiesForElemsR6DomainPd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %3)
  %4 = tail call double @_ZNK6Domain5v_cutEv(%class.Domain* nonnull %domain)
  tail call fastcc void @_ZL21UpdateVolumesForElemsR6DomainPddi(%class.Domain* nonnull dereferenceable(1456) %domain, double* %3, double %4, i32 %numElem)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %vnew)
  call void @llvm.lifetime.end(i64 8, i8* %1) #2
  ret void
}

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc void @_ZL20CalcLagrangeElementsR6DomainPd(%class.Domain* dereferenceable(1456) %domain, double* nocapture %vnew) unnamed_addr #14 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.preheader, label %33

.lr.ph.preheader:                                 ; preds = %0
  %4 = tail call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* nonnull %domain)
  %5 = load double, double* %4, align 8, !tbaa !1
  tail call void @_ZN6Domain15AllocateStrainsEi(%class.Domain* nonnull %domain, i32 %2)
  tail call void @_Z22CalcKinematicsForElemsR6DomainPddi(%class.Domain* nonnull dereferenceable(1456) %domain, double* %vnew, double %5, i32 %2)
  %6 = sext i32 %2 to i64
  br label %.lr.ph

; <label>:7                                       ; preds = %.lr.ph
  %8 = icmp slt i64 %indvars.iv.next, %6
  br i1 %8, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %7
  tail call void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* nonnull %domain)
  br label %33

.lr.ph:                                           ; preds = %7, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %7 ]
  %9 = trunc i64 %indvars.iv to i32
  %10 = tail call dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* nonnull %domain, i32 %9)
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = tail call dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* nonnull %domain, i32 %9)
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = fadd double %11, %13
  %15 = tail call dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* nonnull %domain, i32 %9)
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = fadd double %14, %16
  %18 = fdiv double %17, 3.000000e+00
  %19 = tail call dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nonnull %domain, i32 %9)
  store double %17, double* %19, align 8, !tbaa !1
  %20 = tail call dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* nonnull %domain, i32 %9)
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = fsub double %21, %18
  store double %22, double* %20, align 8, !tbaa !1
  %23 = tail call dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* nonnull %domain, i32 %9)
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = fsub double %24, %18
  store double %25, double* %23, align 8, !tbaa !1
  %26 = tail call dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* nonnull %domain, i32 %9)
  %27 = load double, double* %26, align 8, !tbaa !1
  %28 = fsub double %27, %18
  store double %28, double* %26, align 8, !tbaa !1
  %29 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = fcmp ugt double %30, 0.000000e+00
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %31, label %7, label %32

; <label>:32                                      ; preds = %.lr.ph
  tail call void @exit(i32 -1) #26
  unreachable

; <label>:33                                      ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain15AllocateStrainsEi(%class.Domain* %this, i32 %numElem) #0 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29
  %2 = sext i32 %numElem to i64
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %1, i64 %2, double 0.000000e+00)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %3, i64 %2, double 0.000000e+00)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %4, i64 %2, double 0.000000e+00)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %this, i64 %__new_size, double %__x) #0 comdat align 2 {
  %1 = alloca double, align 8
  store double %__x, double* %1, align 8, !tbaa !1
  %2 = tail call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this)
  %3 = icmp ult i64 %2, %__new_size
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = tail call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this)
  %6 = tail call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this)
  %7 = sub i64 %__new_size, %6
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* %this, double* %5, i64 %7, double* nonnull dereferenceable(8) %1)
  br label %14

; <label>:8                                       ; preds = %0
  %9 = icmp ugt i64 %2, %__new_size
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %12 = load double*, double** %11, align 8, !tbaa !11
  %13 = getelementptr inbounds double, double* %12, i64 %__new_size
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %13)
  br label %14

; <label>:14                                      ; preds = %10, %8, %4
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast double** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !37
  %4 = bitcast %"class.std::vector"* %this to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !11
  %6 = sub i64 %3, %5
  %7 = ashr exact i64 %6, 3
  ret i64 %7
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %1, double** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %1, i64 0, i32 0
  %4 = load double*, double** %3, align 8
  ret double* %4
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.5"* nocapture %this, double** nocapture readonly dereferenceable(8) %__i) unnamed_addr #16 comdat align 2 {
  %1 = bitcast double** %__i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !32
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.5"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* %this, double* %__position.coerce, i64 %__n, double* nocapture readonly dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %__x_copy = alloca double, align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %__position, i64 0, i32 0
  store double* %__position.coerce, double** %3, align 8
  %4 = icmp eq i64 %__n, 0
  br i1 %4, label %73, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  %7 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %8 = bitcast double** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %11 = bitcast double** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !37
  %13 = sub i64 %9, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %__n
  br i1 %15, label %49, label %16

; <label>:16                                      ; preds = %5
  %17 = bitcast double* %__x_copy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast double* %__x to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !1
  %20 = bitcast double* %__x_copy to i64*
  store i64 %19, i64* %20, align 8, !tbaa !1
  %21 = tail call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* nonnull %this)
  %22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %1, i64 0, i32 0
  store double* %21, double** %22, align 8
  %23 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.5"* nonnull dereferenceable(8) %1, %"class.__gnu_cxx::__normal_iterator.5"* nonnull dereferenceable(8) %__position)
  %24 = load double*, double** %10, align 8, !tbaa !37
  %25 = icmp ugt i64 %23, %__n
  br i1 %25, label %26, label %38

; <label>:26                                      ; preds = %16
  %27 = sub i64 0, %__n
  %28 = getelementptr inbounds double, double* %24, i64 %27
  %29 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull %6)
  %30 = call double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %28, double* %24, double* %24, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %29)
  %31 = load double*, double** %10, align 8, !tbaa !37
  %32 = getelementptr inbounds double, double* %31, i64 %__n
  store double* %32, double** %10, align 8, !tbaa !37
  %33 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %__position)
  %34 = load double*, double** %33, align 8, !tbaa !32
  %35 = call double* @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(double* %34, double* %28, double* %24)
  %36 = load double*, double** %33, align 8, !tbaa !32
  %37 = getelementptr inbounds double, double* %36, i64 %__n
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %36, double* %37, double* nonnull dereferenceable(8) %__x_copy)
  br label %48

; <label>:38                                      ; preds = %16
  %39 = sub i64 %__n, %23
  %40 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull %6)
  %41 = call double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %24, i64 %39, double* nonnull dereferenceable(8) %__x_copy, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %40)
  store double* %41, double** %10, align 8, !tbaa !37
  %42 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %__position)
  %43 = load double*, double** %42, align 8, !tbaa !32
  %44 = call double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %43, double* %24, double* %41, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %40)
  %45 = load double*, double** %10, align 8, !tbaa !37
  %46 = getelementptr inbounds double, double* %45, i64 %23
  store double* %46, double** %10, align 8, !tbaa !37
  %47 = load double*, double** %42, align 8, !tbaa !32
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %47, double* %24, double* nonnull dereferenceable(8) %__x_copy)
  br label %48

; <label>:48                                      ; preds = %38, %26
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  br label %73

; <label>:49                                      ; preds = %5
  %50 = tail call i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* nonnull %this, i64 %__n, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %51 = tail call double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* nonnull %this)
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %2, i64 0, i32 0
  store double* %51, double** %52, align 8
  %53 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.5"* nonnull dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.5"* nonnull dereferenceable(8) %2)
  %54 = tail call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %6, i64 %50)
  %55 = getelementptr inbounds double, double* %54, i64 %53
  %56 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6)
  %57 = call double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %55, i64 %__n, double* nonnull dereferenceable(8) %__x, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %56)
  %58 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %59 = load double*, double** %58, align 8, !tbaa !11
  %60 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %__position)
  %61 = load double*, double** %60, align 8, !tbaa !32
  %62 = call double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %59, double* %61, double* %54, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %56)
  %63 = getelementptr inbounds double, double* %62, i64 %__n
  %64 = load double*, double** %60, align 8, !tbaa !32
  %65 = load double*, double** %10, align 8, !tbaa !37
  %66 = call double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %64, double* %65, double* %63, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %56)
  %67 = load double*, double** %58, align 8, !tbaa !11
  %68 = load i64, i64* %8, align 8, !tbaa !40
  %69 = ptrtoint double* %67 to i64
  %70 = sub i64 %68, %69
  %71 = ashr exact i64 %70, 3
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %6, double* %67, i64 %71)
  store double* %54, double** %58, align 8, !tbaa !11
  store double* %66, double** %10, align 8, !tbaa !37
  %72 = getelementptr inbounds double, double* %54, i64 %50
  store double* %72, double** %7, align 8, !tbaa !40
  br label %73

; <label>:73                                      ; preds = %49, %48, %0
  ret void
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.5"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.5"* readonly dereferenceable(8) %__rhs) #9 comdat {
  %1 = tail call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %__lhs)
  %2 = bitcast double** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !32
  %4 = tail call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %__rhs)
  %5 = bitcast double** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !32
  %7 = sub i64 %3, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %this, i64 0, i32 0
  ret double** %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* readnone %this) #13 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__alloc) #7 comdat {
  %1 = tail call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__alloc)
  ret double* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1)) #7 comdat {
  %2 = tail call double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result)
  ret double* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(double* %__first, double* %__last, double* %__result)
  ret double* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(double* %__first, double* %__last, double* %__result) #16 comdat align 2 {
  %1 = tail call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result)
  ret double* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZSt12__miter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt12__miter_baseIPdET_S1_(double* %__last)
  %3 = tail call double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %1, double* %2, double* %__result)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double* readnone %__it) #4 comdat {
  ret double* %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__last)
  %3 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__result)
  %4 = tail call double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %1, double* %2, double* %3)
  ret double* %4
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double* readnone %__it) #4 comdat {
  ret double* %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result)
  ret double* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #16 comdat align 2 {
  %1 = ptrtoint double* %__last to i64
  %2 = ptrtoint double* %__first to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast double* %__result to i8*
  %8 = bitcast double* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %3, i32 8, i1 false)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = getelementptr inbounds double, double* %__result, i64 %4
  ret double* %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZSt12__miter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt12__miter_baseIPdET_S1_(double* %__last)
  %3 = tail call double* @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %1, double* %2, double* %__result)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__last)
  %3 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__result)
  %4 = tail call double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %1, double* %2, double* %3)
  ret double* %4
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
  %1 = tail call double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result)
  ret double* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #16 comdat align 2 {
  %1 = ptrtoint double* %__last to i64
  %2 = ptrtoint double* %__first to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %0
  br label %11

; <label>:6                                       ; preds = %0
  %7 = sub nsw i64 0, %4
  %8 = getelementptr inbounds double, double* %__result, i64 %7
  %9 = bitcast double* %8 to i8*
  %10 = bitcast double* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %3, i32 8, i1 false)
  br label %11

; <label>:11                                      ; preds = %._crit_edge, %6
  %.pre-phi2 = phi double* [ %__result, %._crit_edge ], [ %8, %6 ]
  %.pre-phi = phi i64 [ 0, %._crit_edge ], [ %7, %6 ]
  ret double* %.pre-phi2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr void @_ZSt4fillIPddEvT_S1_RKT0_(double* %__first, double* readnone %__last, double* nocapture readonly dereferenceable(8) %__value) #7 comdat {
  %1 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__last)
  tail call void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %1, double* %2, double* nonnull dereferenceable(8) %__value)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %__first, double* readnone %__last, double* nocapture readonly dereferenceable(8) %__value) #7 comdat {
  %1 = bitcast double* %__value to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !1
  %3 = icmp eq double* %__first, %__last
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01 = phi double* [ %5, %.lr.ph ], [ %__first, %.lr.ph.preheader ]
  %4 = bitcast double* %.01 to i64*
  store i64 %2, i64* %4, align 8, !tbaa !1
  %5 = getelementptr inbounds double, double* %.01, i64 1
  %6 = icmp eq double* %5, %__last
  br i1 %6, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %__first, i64 %__n, double* nocapture readonly dereferenceable(8) %__x, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1)) #7 comdat {
  %2 = tail call double* @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nonnull dereferenceable(8) %__x)
  ret double* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nocapture readonly dereferenceable(8) %__x) #7 comdat {
  %1 = tail call double* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(double* %__first, i64 %__n, double* nonnull dereferenceable(8) %__x)
  ret double* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(double* %__first, i64 %__n, double* nocapture readonly dereferenceable(8) %__x) #16 comdat align 2 {
  %1 = tail call double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nonnull dereferenceable(8) %__x)
  ret double* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nocapture readonly dereferenceable(8) %__value) #7 comdat {
  %1 = tail call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %2 = tail call double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %1, i64 %__n, double* nonnull dereferenceable(8) %__value)
  ret double* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %__first, i64 %__n, double* nocapture readonly dereferenceable(8) %__value) #7 comdat {
  %1 = bitcast double* %__value to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !1
  %3 = icmp eq i64 %__n, 0
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %scevgep = getelementptr double, double* %__first, i64 %__n
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %.0.lcssa = phi double* [ %__first, %0 ], [ %scevgep, %._crit_edge.loopexit ]
  ret double* %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %__niter.02 = phi i64 [ %5, %.lr.ph ], [ %__n, %.lr.ph.preheader ]
  %.01 = phi double* [ %6, %.lr.ph ], [ %__first, %.lr.ph.preheader ]
  %4 = bitcast double* %.01 to i64*
  store i64 %2, i64* %4, align 8, !tbaa !1
  %5 = add i64 %__niter.02, -1
  %6 = getelementptr inbounds double, double* %.01, i64 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* nocapture readonly %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %__n, i64* %1, align 8, !tbaa !41
  %3 = tail call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this)
  %4 = sub i64 2305843009213693951, %3
  %5 = icmp ult i64 %4, %__n
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #27
  unreachable

; <label>:7                                       ; preds = %0
  store i64 %3, i64* %2, align 8, !tbaa !41
  %8 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull dereferenceable(8) %2, i64* nonnull dereferenceable(8) %1)
  %9 = load i64, i64* %8, align 8, !tbaa !41
  %10 = add i64 %9, %3
  %11 = tail call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this)
  %12 = icmp ult i64 %10, %11
  %13 = icmp ugt i64 %10, 2305843009213693951
  %or.cond = or i1 %12, %13
  %14 = select i1 %or.cond, i64 2305843009213693951, i64 %10
  ret i64 %14
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #19

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* readonly dereferenceable(8) %__a, i64* readonly dereferenceable(8) %__b) #9 comdat {
  %1 = load i64, i64* %__a, align 8, !tbaa !41
  %2 = load i64, i64* %__b, align 8, !tbaa !41
  %3 = icmp ult i64 %1, %2
  %__b.__a = select i1 %3, i64* %__b, i64* %__a
  ret i64* %__b.__a
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.5"* nonnull %1, double** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %1, i64 0, i32 0
  %4 = load double*, double** %3, align 8
  ret double* %4
}

; Function Attrs: uwtable
define linkonce_odr noalias double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* nocapture readnone %this, i64 %__n) #0 comdat align 2 {
  %1 = icmp eq i64 %__n, 0
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  %4 = tail call double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %3, i64 %__n)
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi double* [ %4, %2 ], [ null, %0 ]
  ret double* %6
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  %2 = tail call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %__n, i8* null)
  ret double* %2
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::ios_base::Init"* nocapture readnone %this, i64 %__n, i8* nocapture readnone) #0 comdat align 2 {
  %2 = icmp ugt i64 %__n, 2305843009213693951
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %1
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

; <label>:4                                       ; preds = %1
  %5 = shl i64 %__n, 3
  %6 = tail call noalias i8* @_Znwm(i64 %5)
  %7 = bitcast i8* %6 to double*
  ret double* %7
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #19

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__alloc) #7 comdat {
  %1 = tail call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__alloc)
  ret double* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* nocapture readnone %this, double* %__p, i64 %__n) #5 comdat align 2 {
  %1 = icmp eq double* %__p, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"class.std::ios_base::Init"* dereferenceable(1) %3, double* nonnull %__p, i64 %__n)
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, double* %__p, i64 %__n) #5 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::ios_base::Init"* %1, double* %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::ios_base::Init"* nocapture readnone %this, double* %__p, i64) #5 comdat align 2 {
  %2 = bitcast double* %__p to i8*
  tail call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #20

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* nocapture %this, double* %__pos) #16 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  store double* %__pos, double** %1, align 8, !tbaa !37
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* nocapture %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %1)
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %2)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %3)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* nocapture %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load double*, double** %1, align 8, !tbaa !11
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %2)
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc void @_ZL13CalcQForElemsR6DomainPd(%class.Domain* dereferenceable(1456) %domain, double* nocapture readonly %vnew) unnamed_addr #14 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.thread, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %domain)
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = shl nsw i32 %6, 1
  %8 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* nonnull %domain)
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = mul nsw i32 %9, %7
  %11 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* nonnull %domain)
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = shl i32 %9, 1
  %tmp = add i32 %13, %7
  %tmp1 = mul i32 %tmp, %12
  %14 = add i32 %10, %2
  %15 = add i32 %14, %tmp1
  tail call void @_ZN6Domain17AllocateGradientsEii(%class.Domain* nonnull %domain, i32 %2, i32 %15)
  tail call fastcc void @_ZL31CalcMonotonicQGradientsForElemsR6DomainPd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %vnew)
  tail call fastcc void @_ZL22CalcMonotonicQForElemsR6DomainPd(%class.Domain* nonnull dereferenceable(1456) %domain, double* %vnew)
  tail call void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* nonnull %domain)
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %4
  %17 = tail call double @_ZNK6Domain5qstopEv(%class.Domain* nonnull %domain)
  br label %18

; <label>:18                                      ; preds = %22, %.lr.ph
  %i.03 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %19 = tail call dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* nonnull %domain, i32 %i.03)
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = fcmp ogt double %20, %17
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %18
  %23 = add nuw nsw i32 %i.03, 1
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %18, label %.thread.loopexit

; <label>:25                                      ; preds = %18
  %26 = icmp sgt i32 %i.03, -1
  br i1 %26, label %27, label %.thread

; <label>:27                                      ; preds = %25
  tail call void @exit(i32 -2) #26
  unreachable

.thread.loopexit:                                 ; preds = %22
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %25, %4, %0
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  ret i32* %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  ret i32* %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain17AllocateGradientsEii(%class.Domain* %this, i32 %numElem, i32 %allElem) #0 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35
  %2 = sext i32 %numElem to i64
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %1, i64 %2, double 0.000000e+00)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %3, i64 %2, double 0.000000e+00)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %4, i64 %2, double 0.000000e+00)
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32
  %6 = sext i32 %allElem to i64
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %5, i64 %6, double 0.000000e+00)
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %7, i64 %6, double 0.000000e+00)
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %8, i64 %6, double 0.000000e+00)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL31CalcMonotonicQGradientsForElemsR6DomainPd(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture readonly %vnew) unnamed_addr #7 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %4 = trunc i64 %indvars.iv to i32
  %5 = tail call i32* @_ZN6Domain8nodelistEi(%class.Domain* nonnull %domain, i32 %4)
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, i32* %5, i64 2
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = getelementptr inbounds i32, i32* %5, i64 3
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, i32* %5, i64 4
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %5, i64 5
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, i32* %5, i64 6
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %5, i64 7
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %6)
  %22 = load double, double* %21, align 8, !tbaa !1
  %23 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %8)
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %10)
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %12)
  %28 = load double, double* %27, align 8, !tbaa !1
  %29 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %14)
  %30 = load double, double* %29, align 8, !tbaa !1
  %31 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %16)
  %32 = load double, double* %31, align 8, !tbaa !1
  %33 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %18)
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %domain, i32 %20)
  %36 = load double, double* %35, align 8, !tbaa !1
  %37 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %6)
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %8)
  %40 = load double, double* %39, align 8, !tbaa !1
  %41 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %10)
  %42 = load double, double* %41, align 8, !tbaa !1
  %43 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %12)
  %44 = load double, double* %43, align 8, !tbaa !1
  %45 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %14)
  %46 = load double, double* %45, align 8, !tbaa !1
  %47 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %16)
  %48 = load double, double* %47, align 8, !tbaa !1
  %49 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %18)
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %domain, i32 %20)
  %52 = load double, double* %51, align 8, !tbaa !1
  %53 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %6)
  %54 = load double, double* %53, align 8, !tbaa !1
  %55 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %8)
  %56 = load double, double* %55, align 8, !tbaa !1
  %57 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %10)
  %58 = load double, double* %57, align 8, !tbaa !1
  %59 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %12)
  %60 = load double, double* %59, align 8, !tbaa !1
  %61 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %14)
  %62 = load double, double* %61, align 8, !tbaa !1
  %63 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %16)
  %64 = load double, double* %63, align 8, !tbaa !1
  %65 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %18)
  %66 = load double, double* %65, align 8, !tbaa !1
  %67 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %domain, i32 %20)
  %68 = load double, double* %67, align 8, !tbaa !1
  %69 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %6)
  %70 = load double, double* %69, align 8, !tbaa !1
  %71 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %8)
  %72 = load double, double* %71, align 8, !tbaa !1
  %73 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %10)
  %74 = load double, double* %73, align 8, !tbaa !1
  %75 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %12)
  %76 = load double, double* %75, align 8, !tbaa !1
  %77 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %14)
  %78 = load double, double* %77, align 8, !tbaa !1
  %79 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %16)
  %80 = load double, double* %79, align 8, !tbaa !1
  %81 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %18)
  %82 = load double, double* %81, align 8, !tbaa !1
  %83 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* nonnull %domain, i32 %20)
  %84 = load double, double* %83, align 8, !tbaa !1
  %85 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %6)
  %86 = load double, double* %85, align 8, !tbaa !1
  %87 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %8)
  %88 = load double, double* %87, align 8, !tbaa !1
  %89 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %10)
  %90 = load double, double* %89, align 8, !tbaa !1
  %91 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %12)
  %92 = load double, double* %91, align 8, !tbaa !1
  %93 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %14)
  %94 = load double, double* %93, align 8, !tbaa !1
  %95 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %16)
  %96 = load double, double* %95, align 8, !tbaa !1
  %97 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %18)
  %98 = load double, double* %97, align 8, !tbaa !1
  %99 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* nonnull %domain, i32 %20)
  %100 = load double, double* %99, align 8, !tbaa !1
  %101 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %6)
  %102 = load double, double* %101, align 8, !tbaa !1
  %103 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %8)
  %104 = load double, double* %103, align 8, !tbaa !1
  %105 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %10)
  %106 = load double, double* %105, align 8, !tbaa !1
  %107 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %12)
  %108 = load double, double* %107, align 8, !tbaa !1
  %109 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %14)
  %110 = load double, double* %109, align 8, !tbaa !1
  %111 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %16)
  %112 = load double, double* %111, align 8, !tbaa !1
  %113 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %18)
  %114 = load double, double* %113, align 8, !tbaa !1
  %115 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* nonnull %domain, i32 %20)
  %116 = load double, double* %115, align 8, !tbaa !1
  %117 = tail call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nonnull %domain, i32 %4)
  %118 = load double, double* %117, align 8, !tbaa !1
  %119 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv
  %120 = load double, double* %119, align 8, !tbaa !1
  %121 = fmul double %118, %120
  %122 = fadd double %121, 1.000000e-36
  %123 = fdiv double 1.000000e+00, %122
  %124 = fadd double %22, %24
  %125 = fadd double %124, %32
  %126 = fadd double %30, %125
  %127 = fadd double %26, %28
  %128 = fadd double %127, %34
  %129 = fadd double %128, %36
  %130 = fsub double %126, %129
  %131 = fmul double %130, -2.500000e-01
  %132 = fadd double %38, %40
  %133 = fadd double %132, %48
  %134 = fadd double %46, %133
  %135 = fadd double %42, %44
  %136 = fadd double %135, %50
  %137 = fadd double %136, %52
  %138 = fsub double %134, %137
  %139 = fmul double %138, -2.500000e-01
  %140 = fadd double %54, %56
  %141 = fadd double %140, %64
  %142 = fadd double %62, %141
  %143 = fadd double %58, %60
  %144 = fadd double %143, %66
  %145 = fadd double %144, %68
  %146 = fsub double %142, %145
  %147 = fmul double %146, -2.500000e-01
  %148 = fadd double %24, %26
  %149 = fadd double %148, %34
  %150 = fadd double %32, %149
  %151 = fadd double %22, %28
  %152 = fadd double %151, %36
  %153 = fadd double %30, %152
  %154 = fsub double %150, %153
  %155 = fmul double %154, 2.500000e-01
  %156 = fadd double %40, %42
  %157 = fadd double %156, %50
  %158 = fadd double %48, %157
  %159 = fadd double %38, %44
  %160 = fadd double %159, %52
  %161 = fadd double %46, %160
  %162 = fsub double %158, %161
  %163 = fmul double %162, 2.500000e-01
  %164 = fadd double %56, %58
  %165 = fadd double %164, %66
  %166 = fadd double %64, %165
  %167 = fadd double %54, %60
  %168 = fadd double %167, %68
  %169 = fadd double %62, %168
  %170 = fsub double %166, %169
  %171 = fmul double %170, 2.500000e-01
  %172 = fadd double %30, %32
  %173 = fadd double %172, %34
  %174 = fadd double %173, %36
  %175 = fadd double %124, %26
  %176 = fadd double %175, %28
  %177 = fsub double %174, %176
  %178 = fmul double %177, 2.500000e-01
  %179 = fadd double %46, %48
  %180 = fadd double %179, %50
  %181 = fadd double %180, %52
  %182 = fadd double %132, %42
  %183 = fadd double %182, %44
  %184 = fsub double %181, %183
  %185 = fmul double %184, 2.500000e-01
  %186 = fadd double %62, %64
  %187 = fadd double %186, %66
  %188 = fadd double %187, %68
  %189 = fadd double %140, %58
  %190 = fadd double %189, %60
  %191 = fsub double %188, %190
  %192 = fmul double %191, 2.500000e-01
  %193 = fmul double %163, %147
  %194 = fmul double %139, %171
  %195 = fsub double %193, %194
  %196 = fmul double %131, %171
  %197 = fmul double %155, %147
  %198 = fsub double %196, %197
  %199 = fmul double %155, %139
  %200 = fmul double %131, %163
  %201 = fsub double %199, %200
  %202 = fmul double %195, %195
  %203 = fmul double %198, %198
  %204 = fadd double %202, %203
  %205 = fmul double %201, %201
  %206 = fadd double %205, %204
  %207 = fadd double %206, 1.000000e-36
  %208 = tail call double @_Z4SQRTd(double %207)
  %209 = fdiv double %121, %208
  %210 = tail call dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* nonnull %domain, i32 %4)
  store double %209, double* %210, align 8, !tbaa !1
  %211 = fmul double %195, %123
  %212 = fmul double %198, %123
  %213 = fmul double %201, %123
  %214 = fadd double %78, %80
  %215 = fadd double %214, %82
  %216 = fadd double %215, %84
  %217 = fadd double %70, %72
  %218 = fadd double %217, %74
  %219 = fadd double %218, %76
  %220 = fsub double %216, %219
  %221 = fmul double %220, 2.500000e-01
  %222 = fadd double %94, %96
  %223 = fadd double %222, %98
  %224 = fadd double %223, %100
  %225 = fadd double %86, %88
  %226 = fadd double %225, %90
  %227 = fadd double %226, %92
  %228 = fsub double %224, %227
  %229 = fmul double %228, 2.500000e-01
  %230 = fadd double %110, %112
  %231 = fadd double %230, %114
  %232 = fadd double %231, %116
  %233 = fadd double %102, %104
  %234 = fadd double %233, %106
  %235 = fadd double %234, %108
  %236 = fsub double %232, %235
  %237 = fmul double %236, 2.500000e-01
  %238 = fmul double %221, %211
  %239 = fmul double %229, %212
  %240 = fadd double %238, %239
  %241 = fmul double %237, %213
  %242 = fadd double %241, %240
  %243 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %4)
  store double %242, double* %243, align 8, !tbaa !1
  %244 = fmul double %139, %192
  %245 = fmul double %185, %147
  %246 = fsub double %244, %245
  %247 = fmul double %178, %147
  %248 = fmul double %131, %192
  %249 = fsub double %247, %248
  %250 = fmul double %131, %185
  %251 = fmul double %178, %139
  %252 = fsub double %250, %251
  %253 = fmul double %246, %246
  %254 = fmul double %249, %249
  %255 = fadd double %253, %254
  %256 = fmul double %252, %252
  %257 = fadd double %256, %255
  %258 = fadd double %257, 1.000000e-36
  %259 = tail call double @_Z4SQRTd(double %258)
  %260 = fdiv double %121, %259
  %261 = tail call dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* nonnull %domain, i32 %4)
  store double %260, double* %261, align 8, !tbaa !1
  %262 = fmul double %246, %123
  %263 = fmul double %249, %123
  %264 = fmul double %252, %123
  %265 = fadd double %72, %74
  %266 = fadd double %265, %82
  %267 = fadd double %80, %266
  %268 = fadd double %70, %76
  %269 = fadd double %268, %84
  %270 = fadd double %78, %269
  %271 = fsub double %267, %270
  %272 = fmul double %271, 2.500000e-01
  %273 = fadd double %88, %90
  %274 = fadd double %273, %98
  %275 = fadd double %96, %274
  %276 = fadd double %86, %92
  %277 = fadd double %276, %100
  %278 = fadd double %94, %277
  %279 = fsub double %275, %278
  %280 = fmul double %279, 2.500000e-01
  %281 = fadd double %104, %106
  %282 = fadd double %281, %114
  %283 = fadd double %112, %282
  %284 = fadd double %102, %108
  %285 = fadd double %284, %116
  %286 = fadd double %110, %285
  %287 = fsub double %283, %286
  %288 = fmul double %287, 2.500000e-01
  %289 = fmul double %272, %262
  %290 = fmul double %280, %263
  %291 = fadd double %289, %290
  %292 = fmul double %288, %264
  %293 = fadd double %292, %291
  %294 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %4)
  store double %293, double* %294, align 8, !tbaa !1
  %295 = fmul double %185, %171
  %296 = fmul double %163, %192
  %297 = fsub double %295, %296
  %298 = fmul double %155, %192
  %299 = fmul double %178, %171
  %300 = fsub double %298, %299
  %301 = fmul double %178, %163
  %302 = fmul double %155, %185
  %303 = fsub double %301, %302
  %304 = fmul double %297, %297
  %305 = fmul double %300, %300
  %306 = fadd double %304, %305
  %307 = fmul double %303, %303
  %308 = fadd double %307, %306
  %309 = fadd double %308, 1.000000e-36
  %310 = tail call double @_Z4SQRTd(double %309)
  %311 = fdiv double %121, %310
  %312 = tail call dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* nonnull %domain, i32 %4)
  store double %311, double* %312, align 8, !tbaa !1
  %313 = fmul double %297, %123
  %314 = fmul double %300, %123
  %315 = fmul double %303, %123
  %316 = fadd double %217, %80
  %317 = fadd double %78, %316
  %318 = fadd double %74, %76
  %319 = fadd double %318, %82
  %320 = fadd double %319, %84
  %321 = fsub double %317, %320
  %322 = fmul double %321, -2.500000e-01
  %323 = fadd double %225, %96
  %324 = fadd double %94, %323
  %325 = fadd double %90, %92
  %326 = fadd double %325, %98
  %327 = fadd double %326, %100
  %328 = fsub double %324, %327
  %329 = fmul double %328, -2.500000e-01
  %330 = fadd double %233, %112
  %331 = fadd double %110, %330
  %332 = fadd double %106, %108
  %333 = fadd double %332, %114
  %334 = fadd double %333, %116
  %335 = fsub double %331, %334
  %336 = fmul double %335, -2.500000e-01
  %337 = fmul double %322, %313
  %338 = fmul double %329, %314
  %339 = fadd double %337, %338
  %340 = fmul double %336, %315
  %341 = fadd double %340, %339
  %342 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %4)
  store double %341, double* %342, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL22CalcMonotonicQForElemsR6DomainPd(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture readonly %vnew) unnamed_addr #7 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %9
  %4 = phi i32 [ %10, %9 ], [ %2, %.lr.ph.preheader ]
  %r.01 = phi i32 [ %11, %9 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r.01)
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %.lr.ph
  tail call fastcc void @_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd(%class.Domain* nonnull dereferenceable(1456) %domain, i32 %r.01, double* %vnew)
  %.pre = load i32, i32* %1, align 4, !tbaa !5
  br label %9

; <label>:9                                       ; preds = %8, %.lr.ph
  %10 = phi i32 [ %.pre, %8 ], [ %4, %.lr.ph ]
  %11 = add nuw nsw i32 %r.01, 1
  %12 = icmp slt i32 %11, %10
  br i1 %12, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 16
  ret i32* %1
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = sext i32 %idx to i64
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 18
  %3 = load i32*, i32** %2, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, i32* %3, i64 %1
  ret i32* %4
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL28CalcMonotonicQRegionForElemsR6DomainiPdd(%class.Domain* readonly dereferenceable(1456) %domain, i32 %r, double* nocapture readonly %vnew) unnamed_addr #7 {
  %1 = tail call double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* nonnull %domain)
  %2 = tail call double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* nonnull %domain)
  %3 = tail call double @_ZNK6Domain9qlc_monoqEv(%class.Domain* nonnull %domain)
  %4 = tail call double @_ZNK6Domain9qqc_monoqEv(%class.Domain* nonnull %domain)
  %5 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r)
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %184
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %184
  %ielem.01 = phi i32 [ %187, %184 ], [ 0, %.lr.ph.preheader ]
  %8 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* nonnull %domain, i32 %r, i32 %ielem.01)
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %domain, i32 %9)
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %9)
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = fadd double %13, 1.000000e-36
  %15 = fdiv double 1.000000e+00, %14
  %16 = and i32 %11, 7
  switch i32 %16, label %23 [
    i32 4, label %17
    i32 0, label %17
    i32 1, label %22
    i32 2, label %26
  ]

; <label>:17                                      ; preds = %.lr.ph, %.lr.ph
  %18 = tail call dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* nonnull %domain, i32 %9)
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %19)
  %21 = load double, double* %20, align 8, !tbaa !1
  br label %26

; <label>:22                                      ; preds = %.lr.ph
  br label %26

; <label>:23                                      ; preds = %.lr.ph
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1815) #28
  br label %26

; <label>:26                                      ; preds = %23, %22, %17, %.lr.ph
  %delvm.0 = phi double [ 0.000000e+00, %23 ], [ %13, %22 ], [ %21, %17 ], [ 0.000000e+00, %.lr.ph ]
  %27 = and i32 %11, 56
  switch i32 %27, label %36 [
    i32 32, label %28
    i32 0, label %28
    i32 8, label %33
    i32 16, label %39
  ]

; <label>:28                                      ; preds = %26, %26
  %29 = tail call dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* nonnull %domain, i32 %9)
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %30)
  %32 = load double, double* %31, align 8, !tbaa !1
  br label %39

; <label>:33                                      ; preds = %26
  %34 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %9)
  %35 = load double, double* %34, align 8, !tbaa !1
  br label %39

; <label>:36                                      ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1825) #28
  br label %39

; <label>:39                                      ; preds = %36, %33, %28, %26
  %delvp.0 = phi double [ 0.000000e+00, %36 ], [ %35, %33 ], [ %32, %28 ], [ 0.000000e+00, %26 ]
  %40 = fmul double %15, %delvm.0
  %41 = fmul double %15, %delvp.0
  %42 = fadd double %40, %41
  %43 = fmul double %42, 5.000000e-01
  %44 = fmul double %1, %40
  %45 = fmul double %1, %41
  %46 = fcmp olt double %44, %43
  %phixi.0 = select i1 %46, double %44, double %43
  %47 = fcmp olt double %45, %phixi.0
  %phixi.1 = select i1 %47, double %45, double %phixi.0
  %48 = fcmp olt double %phixi.1, 0.000000e+00
  %phixi.2 = select i1 %48, double 0.000000e+00, double %phixi.1
  %49 = fcmp ogt double %phixi.2, %2
  %phixi.3 = select i1 %49, double %2, double %phixi.2
  %50 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %9)
  %51 = load double, double* %50, align 8, !tbaa !1
  %52 = fadd double %51, 1.000000e-36
  %53 = fdiv double 1.000000e+00, %52
  %54 = and i32 %11, 448
  switch i32 %54, label %61 [
    i32 256, label %55
    i32 0, label %55
    i32 64, label %60
    i32 128, label %64
  ]

; <label>:55                                      ; preds = %39, %39
  %56 = tail call dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* nonnull %domain, i32 %9)
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %57)
  %59 = load double, double* %58, align 8, !tbaa !1
  br label %64

; <label>:60                                      ; preds = %39
  br label %64

; <label>:61                                      ; preds = %39
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %63 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1853) #28
  br label %64

; <label>:64                                      ; preds = %61, %60, %55, %39
  %delvm.1 = phi double [ 0.000000e+00, %61 ], [ %51, %60 ], [ %59, %55 ], [ 0.000000e+00, %39 ]
  %65 = and i32 %11, 3584
  switch i32 %65, label %74 [
    i32 2048, label %66
    i32 0, label %66
    i32 512, label %71
    i32 1024, label %77
  ]

; <label>:66                                      ; preds = %64, %64
  %67 = tail call dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* nonnull %domain, i32 %9)
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %68)
  %70 = load double, double* %69, align 8, !tbaa !1
  br label %77

; <label>:71                                      ; preds = %64
  %72 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %9)
  %73 = load double, double* %72, align 8, !tbaa !1
  br label %77

; <label>:74                                      ; preds = %64
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %76 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1863) #28
  br label %77

; <label>:77                                      ; preds = %74, %71, %66, %64
  %delvp.1 = phi double [ 0.000000e+00, %74 ], [ %73, %71 ], [ %70, %66 ], [ 0.000000e+00, %64 ]
  %78 = fmul double %53, %delvm.1
  %79 = fmul double %53, %delvp.1
  %80 = fadd double %78, %79
  %81 = fmul double %80, 5.000000e-01
  %82 = fmul double %1, %78
  %83 = fmul double %1, %79
  %84 = fcmp olt double %82, %81
  %phieta.0 = select i1 %84, double %82, double %81
  %85 = fcmp olt double %83, %phieta.0
  %phieta.1 = select i1 %85, double %83, double %phieta.0
  %86 = fcmp olt double %phieta.1, 0.000000e+00
  %phieta.2 = select i1 %86, double 0.000000e+00, double %phieta.1
  %87 = fcmp ogt double %phieta.2, %2
  %phieta.3 = select i1 %87, double %2, double %phieta.2
  %88 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %9)
  %89 = load double, double* %88, align 8, !tbaa !1
  %90 = fadd double %89, 1.000000e-36
  %91 = fdiv double 1.000000e+00, %90
  %92 = and i32 %11, 28672
  switch i32 %92, label %99 [
    i32 16384, label %93
    i32 0, label %93
    i32 4096, label %98
    i32 8192, label %102
  ]

; <label>:93                                      ; preds = %77, %77
  %94 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* nonnull %domain, i32 %9)
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %95)
  %97 = load double, double* %96, align 8, !tbaa !1
  br label %102

; <label>:98                                      ; preds = %77
  br label %102

; <label>:99                                      ; preds = %77
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %101 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1890) #28
  br label %102

; <label>:102                                     ; preds = %99, %98, %93, %77
  %delvm.2 = phi double [ 0.000000e+00, %99 ], [ %89, %98 ], [ %97, %93 ], [ 0.000000e+00, %77 ]
  %103 = and i32 %11, 229376
  switch i32 %103, label %112 [
    i32 131072, label %104
    i32 0, label %104
    i32 32768, label %109
    i32 65536, label %115
  ]

; <label>:104                                     ; preds = %102, %102
  %105 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* nonnull %domain, i32 %9)
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %106)
  %108 = load double, double* %107, align 8, !tbaa !1
  br label %115

; <label>:109                                     ; preds = %102
  %110 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %9)
  %111 = load double, double* %110, align 8, !tbaa !1
  br label %115

; <label>:112                                     ; preds = %102
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %114 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 1900) #28
  br label %115

; <label>:115                                     ; preds = %112, %109, %104, %102
  %delvp.2 = phi double [ 0.000000e+00, %112 ], [ %111, %109 ], [ %108, %104 ], [ 0.000000e+00, %102 ]
  %116 = fmul double %91, %delvm.2
  %117 = fmul double %91, %delvp.2
  %118 = fadd double %116, %117
  %119 = fmul double %118, 5.000000e-01
  %120 = fmul double %1, %116
  %121 = fmul double %1, %117
  %122 = fcmp olt double %120, %119
  %phizeta.0 = select i1 %122, double %120, double %119
  %123 = fcmp olt double %121, %phizeta.0
  %phizeta.1 = select i1 %123, double %121, double %phizeta.0
  %124 = fcmp olt double %phizeta.1, 0.000000e+00
  %phizeta.2 = select i1 %124, double 0.000000e+00, double %phizeta.1
  %125 = fcmp ogt double %phizeta.2, %2
  %phizeta.3 = select i1 %125, double %2, double %phizeta.2
  %126 = tail call dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nonnull %domain, i32 %9)
  %127 = load double, double* %126, align 8, !tbaa !1
  %128 = fcmp ogt double %127, 0.000000e+00
  br i1 %128, label %184, label %129

; <label>:129                                     ; preds = %115
  %130 = tail call dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* nonnull %domain, i32 %9)
  %131 = load double, double* %130, align 8, !tbaa !1
  %132 = tail call dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* nonnull %domain, i32 %9)
  %133 = load double, double* %132, align 8, !tbaa !1
  %134 = fmul double %131, %133
  %135 = tail call dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* nonnull %domain, i32 %9)
  %136 = load double, double* %135, align 8, !tbaa !1
  %137 = tail call dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* nonnull %domain, i32 %9)
  %138 = load double, double* %137, align 8, !tbaa !1
  %139 = fmul double %136, %138
  %140 = tail call dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* nonnull %domain, i32 %9)
  %141 = load double, double* %140, align 8, !tbaa !1
  %142 = tail call dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* nonnull %domain, i32 %9)
  %143 = load double, double* %142, align 8, !tbaa !1
  %144 = fmul double %141, %143
  %145 = fcmp ogt double %134, 0.000000e+00
  %delvxxi.0 = select i1 %145, double 0.000000e+00, double %134
  %146 = fcmp ogt double %139, 0.000000e+00
  %delvxeta.0 = select i1 %146, double 0.000000e+00, double %139
  %147 = fcmp ogt double %144, 0.000000e+00
  %delvxzeta.0 = select i1 %147, double 0.000000e+00, double %144
  %148 = tail call dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* nonnull %domain, i32 %9)
  %149 = load double, double* %148, align 8, !tbaa !1
  %150 = tail call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nonnull %domain, i32 %9)
  %151 = load double, double* %150, align 8, !tbaa !1
  %152 = sext i32 %9 to i64
  %153 = getelementptr inbounds double, double* %vnew, i64 %152
  %154 = load double, double* %153, align 8, !tbaa !1
  %155 = fmul double %151, %154
  %156 = fdiv double %149, %155
  %157 = fmul double %3, %156
  %158 = fsub double 1.000000e+00, %phixi.3
  %159 = fmul double %158, %delvxxi.0
  %160 = fsub double 1.000000e+00, %phieta.3
  %161 = fmul double %160, %delvxeta.0
  %162 = fadd double %159, %161
  %163 = fsub double 1.000000e+00, %phizeta.3
  %164 = fmul double %163, %delvxzeta.0
  %165 = fadd double %162, %164
  %166 = fmul double %165, %157
  %167 = fsub double -0.000000e+00, %166
  %168 = fmul double %4, %156
  %169 = fmul double %delvxxi.0, %delvxxi.0
  %170 = fmul double %phixi.3, %phixi.3
  %171 = fsub double 1.000000e+00, %170
  %172 = fmul double %171, %169
  %173 = fmul double %delvxeta.0, %delvxeta.0
  %174 = fmul double %phieta.3, %phieta.3
  %175 = fsub double 1.000000e+00, %174
  %176 = fmul double %175, %173
  %177 = fadd double %172, %176
  %178 = fmul double %delvxzeta.0, %delvxzeta.0
  %179 = fmul double %phizeta.3, %phizeta.3
  %180 = fsub double 1.000000e+00, %179
  %181 = fmul double %180, %178
  %182 = fadd double %177, %181
  %183 = fmul double %182, %168
  br label %184

; <label>:184                                     ; preds = %129, %115
  %qquad.0 = phi double [ %183, %129 ], [ 0.000000e+00, %115 ]
  %qlin.0 = phi double [ %167, %129 ], [ 0.000000e+00, %115 ]
  %185 = tail call dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* nonnull %domain, i32 %9)
  store double %qquad.0, double* %185, align 8, !tbaa !1
  %186 = tail call dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* nonnull %domain, i32 %9)
  store double %qlin.0, double* %186, align 8, !tbaa !1
  %187 = add nuw nsw i32 %ielem.01, 1
  %188 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r)
  %189 = load i32, i32* %188, align 4, !tbaa !5
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 60
  %2 = load double, double* %1, align 8, !tbaa !43
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 59
  %2 = load double, double* %1, align 8, !tbaa !44
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain9qlc_monoqEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 61
  %2 = load double, double* %1, align 8, !tbaa !45
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain9qqc_monoqEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 62
  %2 = load double, double* %1, align 8, !tbaa !46
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* nocapture readonly %this, i32 %r, i32 %idx) #3 comdat align 2 {
  %1 = sext i32 %idx to i64
  %2 = sext i32 %r to i64
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 20
  %4 = load i32**, i32*** %3, align 8, !tbaa !47
  %5 = getelementptr inbounds i32*, i32** %4, i64 %2
  %6 = load i32*, i32** %5, align 8, !tbaa !32
  %7 = getelementptr inbounds i32, i32* %6, i64 %1
  ret i32* %7
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #10

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %1, i64 %2)
  ret i32* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* nocapture %this) #16 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %1)
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %2)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %3)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %4)
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %5)
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32
  tail call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %6)
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5qstopEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 58
  %2 = load double, double* %1, align 8, !tbaa !48
  ret double %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL31ApplyMaterialPropertiesForElemsR6DomainPd(%class.Domain* readonly dereferenceable(1456) %domain, double* nocapture %vnew) unnamed_addr #7 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %domain)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call double @_ZNK6Domain7eosvminEv(%class.Domain* nonnull %domain)
  %6 = tail call double @_ZNK6Domain7eosvmaxEv(%class.Domain* nonnull %domain)
  %7 = fcmp une double %5, 0.000000e+00
  %8 = icmp sgt i32 %2, 0
  %or.cond15 = and i1 %7, %8
  br i1 %or.cond15, label %.lr.ph14.preheader, label %.loopexit7

.lr.ph14.preheader:                               ; preds = %4
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %13
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %13 ], [ 0, %.lr.ph14.preheader ]
  %9 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv17
  %10 = load double, double* %9, align 8, !tbaa !1
  %11 = fcmp olt double %10, %5
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %.lr.ph14
  store double %5, double* %9, align 8, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %12, %.lr.ph14
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %lftr.wideiv19 = trunc i64 %indvars.iv.next18 to i32
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %2
  br i1 %exitcond20, label %.loopexit7.loopexit, label %.lr.ph14

.loopexit7.loopexit:                              ; preds = %13
  br label %.loopexit7

.loopexit7:                                       ; preds = %.loopexit7.loopexit, %4
  %14 = fcmp une double %6, 0.000000e+00
  %or.cond16 = and i1 %14, %8
  br i1 %or.cond16, label %.lr.ph12.preheader, label %.preheader4

.lr.ph12.preheader:                               ; preds = %.loopexit7
  br label %.lr.ph12

.preheader4.loopexit:                             ; preds = %19
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.loopexit, %.loopexit7
  br i1 %8, label %.lr.ph10.preheader, label %.preheader

.lr.ph10.preheader:                               ; preds = %.preheader4
  br label %.lr.ph10

.lr.ph12:                                         ; preds = %.lr.ph12.preheader, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %.lr.ph12.preheader ]
  %15 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = fcmp ogt double %16, %6
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %.lr.ph12
  store double %6, double* %15, align 8, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %18, %.lr.ph12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %.preheader4.loopexit, label %.lr.ph12

; <label>:20                                      ; preds = %.lr.ph10
  %21 = icmp slt i32 %30, %2
  br i1 %21, label %.lr.ph10, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %20
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader4
  %22 = tail call dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* nonnull %domain)
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %20
  %i2.09 = phi i32 [ %30, %20 ], [ 0, %.lr.ph10.preheader ]
  %25 = tail call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nonnull %domain, i32 %i2.09)
  %26 = load double, double* %25, align 8, !tbaa !1
  %27 = fcmp olt double %26, %5
  %or.cond = and i1 %7, %27
  %vc.0 = select i1 %or.cond, double %5, double %26
  %28 = fcmp ogt double %vc.0, %6
  %or.cond3 = and i1 %14, %28
  %vc.1 = select i1 %or.cond3, double %6, double %vc.0
  %29 = fcmp ugt double %vc.1, 0.000000e+00
  %30 = add nuw nsw i32 %i2.09, 1
  br i1 %29, label %20, label %31

; <label>:31                                      ; preds = %.lr.ph10
  tail call void @exit(i32 -1) #26
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %47
  %32 = phi i32 [ %49, %47 ], [ %23, %.lr.ph.preheader ]
  %r.08 = phi i32 [ %48, %47 ], [ 0, %.lr.ph.preheader ]
  %33 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r.08)
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = tail call i32* @_ZN6Domain11regElemlistEi(%class.Domain* nonnull %domain, i32 %r.08)
  %36 = sdiv i32 %32, 2
  %37 = icmp slt i32 %r.08, %36
  br i1 %37, label %47, label %38

; <label>:38                                      ; preds = %.lr.ph
  %39 = add nsw i32 %32, 15
  %40 = sdiv i32 %39, 20
  %41 = sub nsw i32 %32, %40
  %42 = icmp slt i32 %r.08, %41
  %43 = tail call dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* nonnull %domain)
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 10
  %. = select i1 %42, i32 %45, i32 %46
  br label %47

; <label>:47                                      ; preds = %38, %.lr.ph
  %rep.0 = phi i32 [ 1, %.lr.ph ], [ %., %38 ]
  tail call fastcc void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nonnull dereferenceable(1456) %domain, double* %vnew, i32 %34, i32* %35, i32 %rep.0)
  %48 = add nuw nsw i32 %r.08, 1
  %49 = load i32, i32* %22, align 4, !tbaa !5
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %47
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %0
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain7eosvminEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 65
  %2 = load double, double* %1, align 8, !tbaa !49
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain7eosvmaxEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 64
  %2 = load double, double* %1, align 8, !tbaa !50
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i32* @_ZN6Domain11regElemlistEi(%class.Domain* nocapture readonly %this, i32 %r) #3 comdat align 2 {
  %1 = sext i32 %r to i64
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 20
  %3 = load i32**, i32*** %2, align 8, !tbaa !47
  %4 = getelementptr inbounds i32*, i32** %3, i64 %1
  %5 = load i32*, i32** %4, align 8, !tbaa !32
  ret i32* %5
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 17
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double* nocapture readonly %vnewc, i32 %numElemReg, i32* nocapture readonly %regElemList, i32 %rep) unnamed_addr #7 {
  %e_old = alloca double*, align 8
  %delvc = alloca double*, align 8
  %p_old = alloca double*, align 8
  %q_old = alloca double*, align 8
  %compression = alloca double*, align 8
  %compHalfStep = alloca double*, align 8
  %qq_old = alloca double*, align 8
  %ql_old = alloca double*, align 8
  %work = alloca double*, align 8
  %p_new = alloca double*, align 8
  %e_new = alloca double*, align 8
  %q_new = alloca double*, align 8
  %bvc = alloca double*, align 8
  %pbvc = alloca double*, align 8
  %1 = tail call double @_ZNK6Domain5e_cutEv(%class.Domain* nonnull %domain)
  %2 = tail call double @_ZNK6Domain5p_cutEv(%class.Domain* nonnull %domain)
  %3 = tail call double @_ZNK6Domain5q_cutEv(%class.Domain* nonnull %domain)
  %4 = tail call double @_ZNK6Domain7eosvmaxEv(%class.Domain* nonnull %domain)
  %5 = tail call double @_ZNK6Domain7eosvminEv(%class.Domain* nonnull %domain)
  %6 = tail call double @_ZNK6Domain4pminEv(%class.Domain* nonnull %domain)
  %7 = tail call double @_ZNK6Domain4eminEv(%class.Domain* nonnull %domain)
  %8 = tail call double @_ZNK6Domain7refdensEv(%class.Domain* nonnull %domain)
  %9 = bitcast double** %e_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = sext i32 %numElemReg to i64
  %11 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %11, double** %e_old, align 8, !tbaa !32
  %12 = bitcast double** %delvc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %13, double** %delvc, align 8, !tbaa !32
  %14 = bitcast double** %p_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %15, double** %p_old, align 8, !tbaa !32
  %16 = bitcast double** %q_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %17, double** %q_old, align 8, !tbaa !32
  %18 = bitcast double** %compression to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %19, double** %compression, align 8, !tbaa !32
  %20 = bitcast double** %compHalfStep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %21, double** %compHalfStep, align 8, !tbaa !32
  %22 = bitcast double** %qq_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %23, double** %qq_old, align 8, !tbaa !32
  %24 = bitcast double** %ql_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %25, double** %ql_old, align 8, !tbaa !32
  %26 = bitcast double** %work to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %27, double** %work, align 8, !tbaa !32
  %28 = bitcast double** %p_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %29, double** %p_new, align 8, !tbaa !32
  %30 = bitcast double** %e_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %31, double** %e_new, align 8, !tbaa !32
  %32 = bitcast double** %q_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %33, double** %q_new, align 8, !tbaa !32
  %34 = bitcast double** %bvc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %35, double** %bvc, align 8, !tbaa !32
  %36 = bitcast double** %pbvc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #2
  %37 = tail call double* @_Z8AllocateIdEPT_m(i64 %10)
  store double* %37, double** %pbvc, align 8, !tbaa !32
  %38 = icmp sgt i32 %rep, 0
  br i1 %38, label %.preheader14.lr.ph, label %.preheader

.preheader14.lr.ph:                               ; preds = %0
  %39 = icmp sgt i32 %numElemReg, 0
  %40 = bitcast double* %27 to i8*
  %41 = add i32 %numElemReg, -1
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = add nuw nsw i64 %43, 8
  %.not = fcmp oeq double %5, 0.000000e+00
  %.not29 = icmp slt i32 %numElemReg, 1
  %brmerge = or i1 %.not, %.not29
  %.not30 = fcmp oeq double %4, 0.000000e+00
  %brmerge32 = or i1 %.not30, %.not29
  br label %.preheader14

.preheader14:                                     ; preds = %._crit_edge27, %.preheader14.lr.ph
  %j.028 = phi i32 [ 0, %.preheader14.lr.ph ], [ %117, %._crit_edge27 ]
  br i1 %39, label %.lr.ph17.preheader, label %.preheader13

.lr.ph17.preheader:                               ; preds = %.preheader14
  br label %.lr.ph17

.preheader.loopexit:                              ; preds = %._crit_edge27
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %45 = icmp sgt i32 %numElemReg, 0
  br i1 %45, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  br label %118

.preheader13.loopexit:                            ; preds = %.lr.ph17
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.loopexit, %.preheader14
  br i1 %39, label %.lr.ph19.preheader, label %.preheader10

.lr.ph19.preheader:                               ; preds = %.preheader13
  br label %.lr.ph19

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph17 ], [ 0, %.lr.ph17.preheader ]
  %46 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv33
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %domain, i32 %47)
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !1
  %51 = getelementptr inbounds double, double* %11, i64 %indvars.iv33
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8, !tbaa !1
  %53 = tail call dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* nonnull %domain, i32 %47)
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !1
  %56 = getelementptr inbounds double, double* %13, i64 %indvars.iv33
  %57 = bitcast double* %56 to i64*
  store i64 %55, i64* %57, align 8, !tbaa !1
  %58 = tail call dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* nonnull %domain, i32 %47)
  %59 = bitcast double* %58 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !1
  %61 = getelementptr inbounds double, double* %15, i64 %indvars.iv33
  %62 = bitcast double* %61 to i64*
  store i64 %60, i64* %62, align 8, !tbaa !1
  %63 = tail call dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* nonnull %domain, i32 %47)
  %64 = bitcast double* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !1
  %66 = getelementptr inbounds double, double* %17, i64 %indvars.iv33
  %67 = bitcast double* %66 to i64*
  store i64 %65, i64* %67, align 8, !tbaa !1
  %68 = tail call dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* nonnull %domain, i32 %47)
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8, !tbaa !1
  %71 = getelementptr inbounds double, double* %23, i64 %indvars.iv33
  %72 = bitcast double* %71 to i64*
  store i64 %70, i64* %72, align 8, !tbaa !1
  %73 = tail call dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* nonnull %domain, i32 %47)
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !1
  %76 = getelementptr inbounds double, double* %25, i64 %indvars.iv33
  %77 = bitcast double* %76 to i64*
  store i64 %75, i64* %77, align 8, !tbaa !1
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %numElemReg
  br i1 %exitcond36, label %.preheader13.loopexit, label %.lr.ph17

._crit_edge20:                                    ; preds = %.lr.ph19
  br i1 %brmerge, label %.loopexit, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %._crit_edge20
  br label %.lr.ph22

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %.lr.ph19
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph19 ], [ 0, %.lr.ph19.preheader ]
  %78 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv37
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %vnewc, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !1
  %83 = fdiv double 1.000000e+00, %82
  %84 = fadd double %83, -1.000000e+00
  %85 = getelementptr inbounds double, double* %19, i64 %indvars.iv37
  store double %84, double* %85, align 8, !tbaa !1
  %86 = getelementptr inbounds double, double* %13, i64 %indvars.iv37
  %87 = load double, double* %86, align 8, !tbaa !1
  %88 = fmul double %87, 5.000000e-01
  %89 = fsub double %82, %88
  %90 = fdiv double 1.000000e+00, %89
  %91 = fadd double %90, -1.000000e+00
  %92 = getelementptr inbounds double, double* %21, i64 %indvars.iv37
  store double %91, double* %92, align 8, !tbaa !1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %lftr.wideiv39 = trunc i64 %indvars.iv.next38 to i32
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %numElemReg
  br i1 %exitcond40, label %._crit_edge20, label %.lr.ph19

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %105
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %105 ], [ 0, %.lr.ph22.preheader ]
  %93 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv41
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %vnewc, i64 %95
  %97 = load double, double* %96, align 8, !tbaa !1
  %98 = fcmp ugt double %97, %5
  br i1 %98, label %105, label %99

; <label>:99                                      ; preds = %.lr.ph22
  %100 = getelementptr inbounds double, double* %19, i64 %indvars.iv41
  %101 = bitcast double* %100 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !1
  %103 = getelementptr inbounds double, double* %21, i64 %indvars.iv41
  %104 = bitcast double* %103 to i64*
  store i64 %102, i64* %104, align 8, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %99, %.lr.ph22
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %numElemReg
  br i1 %exitcond44, label %.loopexit.loopexit, label %.lr.ph22

.loopexit.loopexit:                               ; preds = %105
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge20
  br i1 %brmerge32, label %.preheader10, label %.lr.ph24.preheader

.lr.ph24.preheader:                               ; preds = %.loopexit
  br label %.lr.ph24

.preheader10.loopexit:                            ; preds = %116
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.loopexit, %.loopexit, %.preheader13
  br i1 %39, label %._crit_edge27.loopexit, label %._crit_edge27

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %116
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %116 ], [ 0, %.lr.ph24.preheader ]
  %106 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv45
  %107 = load i32, i32* %106, align 4, !tbaa !5
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %vnewc, i64 %108
  %110 = load double, double* %109, align 8, !tbaa !1
  %111 = fcmp ult double %110, %4
  br i1 %111, label %116, label %112

; <label>:112                                     ; preds = %.lr.ph24
  %113 = getelementptr inbounds double, double* %15, i64 %indvars.iv45
  store double 0.000000e+00, double* %113, align 8, !tbaa !1
  %114 = getelementptr inbounds double, double* %19, i64 %indvars.iv45
  store double 0.000000e+00, double* %114, align 8, !tbaa !1
  %115 = getelementptr inbounds double, double* %21, i64 %indvars.iv45
  store double 0.000000e+00, double* %115, align 8, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %112, %.lr.ph24
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %lftr.wideiv47 = trunc i64 %indvars.iv.next46 to i32
  %exitcond48 = icmp eq i32 %lftr.wideiv47, %numElemReg
  br i1 %exitcond48, label %.preheader10.loopexit, label %.lr.ph24

._crit_edge27.loopexit:                           ; preds = %.preheader10
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 %44, i32 8, i1 false)
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %.preheader10
  tail call fastcc void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* %29, double* %31, double* %33, double* %35, double* %37, double* %15, double* %11, double* %17, double* %19, double* %21, double* %vnewc, double* %27, double* %13, double %6, double %2, double %1, double %3, double %7, double* %23, double* %25, double %8, double %4, i32 %numElemReg, i32* %regElemList)
  %117 = add nuw nsw i32 %j.028, 1
  %exitcond53 = icmp eq i32 %117, %rep
  br i1 %exitcond53, label %.preheader.loopexit, label %.preheader14

._crit_edge.loopexit:                             ; preds = %118
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call fastcc void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nonnull dereferenceable(1456) %domain, double* %vnewc, double %8, double* %31, double* %29, double* %37, double* %35, i32 %numElemReg, i32* %regElemList)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %pbvc)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %bvc)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %q_new)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %e_new)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %p_new)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %work)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %ql_old)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %qq_old)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %compHalfStep)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %compression)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %q_old)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %p_old)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %delvc)
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %e_old)
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void

; <label>:118                                     ; preds = %118, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %118 ]
  %119 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv
  %120 = load i32, i32* %119, align 4, !tbaa !5
  %121 = getelementptr inbounds double, double* %29, i64 %indvars.iv
  %122 = bitcast double* %121 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !1
  %124 = tail call dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* nonnull %domain, i32 %120)
  %125 = bitcast double* %124 to i64*
  store i64 %123, i64* %125, align 8, !tbaa !1
  %126 = getelementptr inbounds double, double* %31, i64 %indvars.iv
  %127 = bitcast double* %126 to i64*
  %128 = load i64, i64* %127, align 8, !tbaa !1
  %129 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %domain, i32 %120)
  %130 = bitcast double* %129 to i64*
  store i64 %128, i64* %130, align 8, !tbaa !1
  %131 = getelementptr inbounds double, double* %33, i64 %indvars.iv
  %132 = bitcast double* %131 to i64*
  %133 = load i64, i64* %132, align 8, !tbaa !1
  %134 = tail call dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* nonnull %domain, i32 %120)
  %135 = bitcast double* %134 to i64*
  store i64 %133, i64* %135, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %numElemReg
  br i1 %exitcond, label %._crit_edge.loopexit, label %118
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5e_cutEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 51
  %2 = load double, double* %1, align 8, !tbaa !51
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5p_cutEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 52
  %2 = load double, double* %1, align 8, !tbaa !52
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5q_cutEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 53
  %2 = load double, double* %1, align 8, !tbaa !53
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain4pminEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 66
  %2 = load double, double* %1, align 8, !tbaa !54
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain4eminEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 67
  %2 = load double, double* %1, align 8, !tbaa !55
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain7refdensEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 69
  %2 = load double, double* %1, align 8, !tbaa !56
  ret double %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr nonnull dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38
  %2 = sext i32 %idx to i64
  %3 = tail call dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %1, i64 %2)
  ret double* %3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* nocapture %p_new, double* nocapture %e_new, double* nocapture %q_new, double* nocapture %bvc, double* nocapture %pbvc, double* nocapture readonly %p_old, double* nocapture readonly %e_old, double* nocapture readonly %q_old, double* nocapture readonly %compression, double* nocapture readonly %compHalfStep, double* nocapture readonly %vnewc, double* nocapture readonly %work, double* nocapture readonly %delvc, double %pmin, double %p_cut, double %e_cut, double %q_cut, double %emin, double* nocapture readonly %qq_old, double* nocapture readonly %ql_old, double %rho0, double %eosvmax, i32 %length, i32* nocapture readonly %regElemList) unnamed_addr #7 {
  %pHalfStep = alloca double*, align 8
  %1 = bitcast double** %pHalfStep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = sext i32 %length to i64
  %3 = tail call double* @_Z8AllocateIdEPT_m(i64 %2)
  store double* %3, double** %pHalfStep, align 8, !tbaa !32
  %4 = icmp sgt i32 %length, 0
  br i1 %4, label %.lr.ph25.preheader, label %._crit_edge26.thread

.lr.ph25.preheader:                               ; preds = %0
  br label %.lr.ph25

._crit_edge26.thread:                             ; preds = %0
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %3, double* %bvc, double* %pbvc, double* %e_new, double* %compHalfStep, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %._crit_edge19.thread

._crit_edge26:                                    ; preds = %.lr.ph25
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %3, double* %bvc, double* %pbvc, double* nonnull %e_new, double* %compHalfStep, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br i1 true, label %.lr.ph22, label %._crit_edge26.._crit_edge19.thread_crit_edge

._crit_edge26.._crit_edge19.thread_crit_edge:     ; preds = %._crit_edge26
  br label %._crit_edge19.thread

.lr.ph22:                                         ; preds = %._crit_edge26
  br label %23

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.lr.ph25
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph25 ], [ 0, %.lr.ph25.preheader ]
  %5 = getelementptr inbounds double, double* %e_old, i64 %indvars.iv39
  %6 = load double, double* %5, align 8, !tbaa !1
  %7 = getelementptr inbounds double, double* %delvc, i64 %indvars.iv39
  %8 = load double, double* %7, align 8, !tbaa !1
  %9 = fmul double %8, 5.000000e-01
  %10 = getelementptr inbounds double, double* %p_old, i64 %indvars.iv39
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = getelementptr inbounds double, double* %q_old, i64 %indvars.iv39
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = fadd double %11, %13
  %15 = fmul double %9, %14
  %16 = fsub double %6, %15
  %17 = getelementptr inbounds double, double* %work, i64 %indvars.iv39
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = fmul double %18, 5.000000e-01
  %20 = fadd double %19, %16
  %21 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv39
  %22 = fcmp olt double %20, %emin
  %storemerge = select i1 %22, double %emin, double %20
  store double %storemerge, double* %21, align 8, !tbaa !1
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %length
  br i1 %exitcond42, label %._crit_edge26, label %.lr.ph25

.preheader:                                       ; preds = %59
  br i1 true, label %.lr.ph18.preheader, label %.preheader.._crit_edge19.thread_crit_edge

.lr.ph18.preheader:                               ; preds = %.preheader
  br label %.lr.ph18

.preheader.._crit_edge19.thread_crit_edge:        ; preds = %.preheader
  br label %._crit_edge19.thread

; <label>:23                                      ; preds = %59, %.lr.ph22
  %indvars.iv35 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next36, %59 ]
  %24 = getelementptr inbounds double, double* %compHalfStep, i64 %indvars.iv35
  %25 = load double, double* %24, align 8, !tbaa !1
  %26 = fadd double %25, 1.000000e+00
  %27 = fdiv double 1.000000e+00, %26
  %28 = getelementptr inbounds double, double* %delvc, i64 %indvars.iv35
  %29 = load double, double* %28, align 8, !tbaa !1
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %31, label %33

; <label>:31                                      ; preds = %23
  %32 = getelementptr inbounds double, double* %q_new, i64 %indvars.iv35
  store double 0.000000e+00, double* %32, align 8, !tbaa !1
  %.pre2 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv35
  %.pre3 = getelementptr inbounds double, double* %3, i64 %indvars.iv35
  br label %59

; <label>:33                                      ; preds = %23
  %34 = getelementptr inbounds double, double* %pbvc, i64 %indvars.iv35
  %35 = load double, double* %34, align 8, !tbaa !1
  %36 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv35
  %37 = load double, double* %36, align 8, !tbaa !1
  %38 = fmul double %35, %37
  %39 = fmul double %27, %27
  %40 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv35
  %41 = load double, double* %40, align 8, !tbaa !1
  %42 = fmul double %39, %41
  %43 = getelementptr inbounds double, double* %3, i64 %indvars.iv35
  %44 = load double, double* %43, align 8, !tbaa !1
  %45 = fmul double %42, %44
  %46 = fadd double %38, %45
  %47 = fdiv double %46, %rho0
  %48 = fcmp ugt double %47, 1.111111e-37
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %33
  %50 = tail call double @_Z4SQRTd(double %47)
  br label %51

; <label>:51                                      ; preds = %49, %33
  %ssc.0 = phi double [ %50, %49 ], [ 3.333333e-19, %33 ]
  %52 = getelementptr inbounds double, double* %ql_old, i64 %indvars.iv35
  %53 = load double, double* %52, align 8, !tbaa !1
  %54 = fmul double %ssc.0, %53
  %55 = getelementptr inbounds double, double* %qq_old, i64 %indvars.iv35
  %56 = load double, double* %55, align 8, !tbaa !1
  %57 = fadd double %54, %56
  %58 = getelementptr inbounds double, double* %q_new, i64 %indvars.iv35
  store double %57, double* %58, align 8, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %51, %31
  %.pre-phi5 = phi double* [ %58, %51 ], [ %32, %31 ]
  %.pre-phi4 = phi double* [ %43, %51 ], [ %.pre3, %31 ]
  %.pre-phi = phi double* [ %36, %51 ], [ %.pre2, %31 ]
  %60 = phi double [ %57, %51 ], [ 0.000000e+00, %31 ]
  %61 = load double, double* %.pre-phi, align 8, !tbaa !1
  %62 = load double, double* %28, align 8, !tbaa !1
  %63 = fmul double %62, 5.000000e-01
  %64 = getelementptr inbounds double, double* %p_old, i64 %indvars.iv35
  %65 = load double, double* %64, align 8, !tbaa !1
  %66 = getelementptr inbounds double, double* %q_old, i64 %indvars.iv35
  %67 = load double, double* %66, align 8, !tbaa !1
  %68 = fadd double %65, %67
  %69 = fmul double %68, 3.000000e+00
  %70 = load double, double* %.pre-phi4, align 8, !tbaa !1
  %71 = fadd double %70, %60
  %72 = fmul double %71, 4.000000e+00
  %73 = fsub double %69, %72
  %74 = fmul double %63, %73
  %75 = fadd double %61, %74
  store double %75, double* %.pre-phi, align 8, !tbaa !1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %length
  br i1 %exitcond38, label %.preheader, label %23

._crit_edge19.thread:                             ; preds = %._crit_edge26.._crit_edge19.thread_crit_edge, %.preheader.._crit_edge19.thread_crit_edge, %._crit_edge26.thread
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %._crit_edge16.thread

._crit_edge19:                                    ; preds = %.lr.ph18
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* nonnull %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br i1 true, label %.lr.ph15, label %._crit_edge19.._crit_edge16.thread_crit_edge

._crit_edge19.._crit_edge16.thread_crit_edge:     ; preds = %._crit_edge19
  br label %._crit_edge16.thread

.lr.ph15:                                         ; preds = %._crit_edge19
  br label %85

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph18 ], [ 0, %.lr.ph18.preheader ]
  %76 = getelementptr inbounds double, double* %work, i64 %indvars.iv31
  %77 = load double, double* %76, align 8, !tbaa !1
  %78 = fmul double %77, 5.000000e-01
  %79 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv31
  %80 = load double, double* %79, align 8, !tbaa !1
  %81 = fadd double %80, %78
  %82 = tail call double @_Z4FABSd(double %81)
  %83 = fcmp olt double %82, %e_cut
  %storemerge9 = select i1 %83, double 0.000000e+00, double %81
  %84 = fcmp olt double %storemerge9, %emin
  %storemerge11 = select i1 %84, double %emin, double %storemerge9
  store double %storemerge11, double* %79, align 8, !tbaa !1
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv.next32 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %length
  br i1 %exitcond34, label %._crit_edge19, label %.lr.ph18

._crit_edge16.thread:                             ; preds = %._crit_edge19.._crit_edge16.thread_crit_edge, %._crit_edge19.thread
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %._crit_edge

._crit_edge16:                                    ; preds = %119
  tail call fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* nonnull %p_new, double* %bvc, double* %pbvc, double* nonnull %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br i1 true, label %.lr.ph.preheader, label %._crit_edge16.._crit_edge_crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge16
  br label %.lr.ph

._crit_edge16.._crit_edge_crit_edge:              ; preds = %._crit_edge16
  br label %._crit_edge

; <label>:85                                      ; preds = %119, %.lr.ph15
  %indvars.iv27 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next28, %119 ]
  %86 = getelementptr inbounds double, double* %delvc, i64 %indvars.iv27
  %87 = load double, double* %86, align 8, !tbaa !1
  %88 = fcmp ogt double %87, 0.000000e+00
  br i1 %88, label %._crit_edge6, label %89

._crit_edge6:                                     ; preds = %85
  %.pre7 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv27
  %.pre9 = getelementptr inbounds double, double* %p_new, i64 %indvars.iv27
  br label %119

; <label>:89                                      ; preds = %85
  %90 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv27
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = getelementptr inbounds double, double* %pbvc, i64 %indvars.iv27
  %93 = load double, double* %92, align 8, !tbaa !1
  %94 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv27
  %95 = load double, double* %94, align 8, !tbaa !1
  %96 = fmul double %93, %95
  %97 = sext i32 %91 to i64
  %98 = getelementptr inbounds double, double* %vnewc, i64 %97
  %99 = load double, double* %98, align 8, !tbaa !1
  %100 = fmul double %99, %99
  %101 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv27
  %102 = load double, double* %101, align 8, !tbaa !1
  %103 = fmul double %100, %102
  %104 = getelementptr inbounds double, double* %p_new, i64 %indvars.iv27
  %105 = load double, double* %104, align 8, !tbaa !1
  %106 = fmul double %103, %105
  %107 = fadd double %96, %106
  %108 = fdiv double %107, %rho0
  %109 = fcmp ugt double %108, 1.111111e-37
  br i1 %109, label %110, label %112

; <label>:110                                     ; preds = %89
  %111 = tail call double @_Z4SQRTd(double %108)
  %.pre.pre = load double, double* %86, align 8, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %110, %89
  %.pre = phi double [ %.pre.pre, %110 ], [ %87, %89 ]
  %ssc4.0 = phi double [ %111, %110 ], [ 3.333333e-19, %89 ]
  %113 = getelementptr inbounds double, double* %ql_old, i64 %indvars.iv27
  %114 = load double, double* %113, align 8, !tbaa !1
  %115 = fmul double %ssc4.0, %114
  %116 = getelementptr inbounds double, double* %qq_old, i64 %indvars.iv27
  %117 = load double, double* %116, align 8, !tbaa !1
  %118 = fadd double %115, %117
  br label %119

; <label>:119                                     ; preds = %._crit_edge6, %112
  %.pre-phi10 = phi double* [ %.pre9, %._crit_edge6 ], [ %104, %112 ]
  %.pre-phi8 = phi double* [ %.pre7, %._crit_edge6 ], [ %94, %112 ]
  %120 = phi double [ %.pre, %112 ], [ %87, %._crit_edge6 ]
  %q_tilde.0 = phi double [ %118, %112 ], [ 0.000000e+00, %._crit_edge6 ]
  %121 = load double, double* %.pre-phi8, align 8, !tbaa !1
  %122 = getelementptr inbounds double, double* %p_old, i64 %indvars.iv27
  %123 = load double, double* %122, align 8, !tbaa !1
  %124 = getelementptr inbounds double, double* %q_old, i64 %indvars.iv27
  %125 = load double, double* %124, align 8, !tbaa !1
  %126 = fadd double %123, %125
  %127 = fmul double %126, 7.000000e+00
  %128 = getelementptr inbounds double, double* %3, i64 %indvars.iv27
  %129 = load double, double* %128, align 8, !tbaa !1
  %130 = getelementptr inbounds double, double* %q_new, i64 %indvars.iv27
  %131 = load double, double* %130, align 8, !tbaa !1
  %132 = fadd double %129, %131
  %133 = fmul double %132, 8.000000e+00
  %134 = fsub double %127, %133
  %135 = load double, double* %.pre-phi10, align 8, !tbaa !1
  %136 = fadd double %q_tilde.0, %135
  %137 = fadd double %136, %134
  %138 = fmul double %120, %137
  %139 = fmul double %138, 0x3FC5555555555555
  %140 = fsub double %121, %139
  %141 = tail call double @_Z4FABSd(double %140)
  %142 = fcmp olt double %141, %e_cut
  %storemerge8 = select i1 %142, double 0.000000e+00, double %140
  %143 = fcmp olt double %storemerge8, %emin
  %storemerge10 = select i1 %143, double %emin, double %storemerge8
  store double %storemerge10, double* %.pre-phi8, align 8, !tbaa !1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv.next28 to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %length
  br i1 %exitcond30, label %._crit_edge16, label %85

._crit_edge.loopexit:                             ; preds = %181
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge16.._crit_edge_crit_edge, %._crit_edge16.thread
  call void @_Z7ReleaseIdEvPPT_(double** nonnull %pHalfStep)
  call void @llvm.lifetime.end(i64 8, i8* %1) #2
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %181
  %indvars.iv = phi i64 [ %indvars.iv.next, %181 ], [ 0, %.lr.ph.preheader ]
  %144 = getelementptr inbounds double, double* %delvc, i64 %indvars.iv
  %145 = load double, double* %144, align 8, !tbaa !1
  %146 = fcmp ugt double %145, 0.000000e+00
  br i1 %146, label %181, label %147

; <label>:147                                     ; preds = %.lr.ph
  %148 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv
  %149 = load i32, i32* %148, align 4, !tbaa !5
  %150 = getelementptr inbounds double, double* %pbvc, i64 %indvars.iv
  %151 = load double, double* %150, align 8, !tbaa !1
  %152 = getelementptr inbounds double, double* %e_new, i64 %indvars.iv
  %153 = load double, double* %152, align 8, !tbaa !1
  %154 = fmul double %151, %153
  %155 = sext i32 %149 to i64
  %156 = getelementptr inbounds double, double* %vnewc, i64 %155
  %157 = load double, double* %156, align 8, !tbaa !1
  %158 = fmul double %157, %157
  %159 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv
  %160 = load double, double* %159, align 8, !tbaa !1
  %161 = fmul double %158, %160
  %162 = getelementptr inbounds double, double* %p_new, i64 %indvars.iv
  %163 = load double, double* %162, align 8, !tbaa !1
  %164 = fmul double %161, %163
  %165 = fadd double %154, %164
  %166 = fdiv double %165, %rho0
  %167 = fcmp ugt double %166, 1.111111e-37
  br i1 %167, label %168, label %170

; <label>:168                                     ; preds = %147
  %169 = tail call double @_Z4SQRTd(double %166)
  br label %170

; <label>:170                                     ; preds = %168, %147
  %ssc7.0 = phi double [ %169, %168 ], [ 3.333333e-19, %147 ]
  %171 = getelementptr inbounds double, double* %ql_old, i64 %indvars.iv
  %172 = load double, double* %171, align 8, !tbaa !1
  %173 = fmul double %ssc7.0, %172
  %174 = getelementptr inbounds double, double* %qq_old, i64 %indvars.iv
  %175 = load double, double* %174, align 8, !tbaa !1
  %176 = fadd double %173, %175
  %177 = getelementptr inbounds double, double* %q_new, i64 %indvars.iv
  store double %176, double* %177, align 8, !tbaa !1
  %178 = tail call double @_Z4FABSd(double %176)
  %179 = fcmp olt double %178, %q_cut
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %170
  store double 0.000000e+00, double* %177, align 8, !tbaa !1
  br label %181

; <label>:181                                     ; preds = %180, %170, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* nocapture %p_new, double* nocapture %bvc, double* nocapture %pbvc, double* nocapture readonly %e_old, double* nocapture readonly %compression, double* nocapture readonly %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* nocapture readonly %regElemList) unnamed_addr #7 {
  %1 = icmp sgt i32 %length, 0
  br i1 %1, label %.lr.ph5.preheader, label %._crit_edge

.lr.ph5.preheader:                                ; preds = %0
  br label %.lr.ph5

.preheader:                                       ; preds = %.lr.ph5
  br i1 true, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  br label %._crit_edge

.lr.ph5:                                          ; preds = %.lr.ph5.preheader, %.lr.ph5
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph5 ], [ 0, %.lr.ph5.preheader ]
  %2 = getelementptr inbounds double, double* %compression, i64 %indvars.iv6
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = fadd double %3, 1.000000e+00
  %5 = fmul double %4, 0x3FE5555555555555
  %6 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv6
  store double %5, double* %6, align 8, !tbaa !1
  %7 = getelementptr inbounds double, double* %pbvc, i64 %indvars.iv6
  store double 0x3FE5555555555555, double* %7, align 8, !tbaa !1
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv.next7 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %length
  br i1 %exitcond9, label %.preheader, label %.lr.ph5

._crit_edge.loopexit:                             ; preds = %27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.._crit_edge_crit_edge, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %.lr.ph.preheader ]
  %8 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = getelementptr inbounds double, double* %e_old, i64 %indvars.iv
  %13 = load double, double* %12, align 8, !tbaa !1
  %14 = fmul double %11, %13
  %15 = getelementptr inbounds double, double* %p_new, i64 %indvars.iv
  %16 = tail call double @_Z4FABSd(double %14)
  %17 = fcmp olt double %16, %p_cut
  %storemerge = select i1 %17, double 0.000000e+00, double %14
  store double %storemerge, double* %15, align 8, !tbaa !1
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds double, double* %vnewc, i64 %18
  %20 = load double, double* %19, align 8, !tbaa !1
  %21 = fcmp ult double %20, %eosvmax
  br i1 %21, label %23, label %22

; <label>:22                                      ; preds = %.lr.ph
  store double 0.000000e+00, double* %15, align 8, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %22, %.lr.ph
  %24 = phi double [ 0.000000e+00, %22 ], [ %storemerge, %.lr.ph ]
  %25 = fcmp olt double %24, %pmin
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  store double %pmin, double* %15, align 8, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %26, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double* nocapture readonly %vnewc, double %rho0, double* nocapture readonly %enewc, double* nocapture readonly %pnewc, double* nocapture readonly %pbvc, double* nocapture readonly %bvc, i32 %len, i32* nocapture readonly %regElemList) unnamed_addr #7 {
  %1 = icmp sgt i32 %len, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %.lr.ph.preheader ]
  %2 = getelementptr inbounds i32, i32* %regElemList, i64 %indvars.iv
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %4 = getelementptr inbounds double, double* %pbvc, i64 %indvars.iv
  %5 = load double, double* %4, align 8, !tbaa !1
  %6 = getelementptr inbounds double, double* %enewc, i64 %indvars.iv
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = fmul double %5, %7
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds double, double* %vnewc, i64 %9
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = fmul double %11, %11
  %13 = getelementptr inbounds double, double* %bvc, i64 %indvars.iv
  %14 = load double, double* %13, align 8, !tbaa !1
  %15 = fmul double %12, %14
  %16 = getelementptr inbounds double, double* %pnewc, i64 %indvars.iv
  %17 = load double, double* %16, align 8, !tbaa !1
  %18 = fmul double %15, %17
  %19 = fadd double %8, %18
  %20 = fdiv double %19, %rho0
  %21 = fcmp ugt double %20, 1.111111e-37
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %.lr.ph
  %23 = tail call double @_Z4SQRTd(double %20)
  br label %24

; <label>:24                                      ; preds = %22, %.lr.ph
  %ssTmp.0 = phi double [ %23, %22 ], [ 3.333333e-19, %.lr.ph ]
  %25 = tail call dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* nonnull %domain, i32 %3)
  store double %ssTmp.0, double* %25, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain5v_cutEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 54
  %2 = load double, double* %1, align 8, !tbaa !57
  ret double %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL21UpdateVolumesForElemsR6DomainPddi(%class.Domain* nocapture readonly dereferenceable(1456) %domain, double* nocapture readonly %vnew, double %v_cut, i32 %length) unnamed_addr #7 {
  %1 = icmp sgt i32 %length, 0
  br i1 %1, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %2 = getelementptr inbounds double, double* %vnew, i64 %indvars.iv
  %3 = load double, double* %2, align 8, !tbaa !1
  %4 = fadd double %3, -1.000000e+00
  %5 = tail call double @_Z4FABSd(double %4)
  %6 = fcmp olt double %5, %v_cut
  %tmpV.0 = select i1 %6, double 1.000000e+00, double %3
  %7 = trunc i64 %indvars.iv to i32
  %8 = tail call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* nonnull %domain, i32 %7)
  store double %tmpV.0, double* %8, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* dereferenceable(1456) %domain) unnamed_addr #7 {
  %1 = tail call dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* nonnull %domain)
  store double 1.000000e+20, double* %1, align 8, !tbaa !1
  %2 = tail call dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* nonnull %domain)
  store double 1.000000e+20, double* %2, align 8, !tbaa !1
  %3 = tail call dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* nonnull %domain)
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %r.01 = phi i32 [ %14, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %6 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r.01)
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = tail call i32* @_ZN6Domain11regElemlistEi(%class.Domain* nonnull %domain, i32 %r.01)
  %9 = tail call double @_ZNK6Domain3qqcEv(%class.Domain* nonnull %domain)
  tail call fastcc void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull dereferenceable(1456) %domain, i32 %7, i32* %8, double %9, double* nonnull dereferenceable(8) %1)
  %10 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* nonnull %domain, i32 %r.01)
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = tail call i32* @_ZN6Domain11regElemlistEi(%class.Domain* nonnull %domain, i32 %r.01)
  %13 = tail call double @_ZNK6Domain7dvovmaxEv(%class.Domain* nonnull %domain)
  tail call fastcc void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull dereferenceable(1456) %domain, i32 %11, i32* %12, double %13, double* nonnull dereferenceable(8) %2)
  %14 = add nuw nsw i32 %r.01, 1
  %15 = load i32, i32* %3, align 4, !tbaa !5
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain3qqcEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 63
  %2 = load double, double* %1, align 8, !tbaa !58
  ret double %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nocapture readonly dereferenceable(1456) %domain, i32 %length, i32* nocapture readonly %regElemlist, double %qqc, double* nocapture dereferenceable(8) %dtcourant) unnamed_addr #7 {
  %1 = fmul double %qqc, 6.400000e+01
  %2 = fmul double %1, %qqc
  %3 = icmp sgt i32 %length, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %0
  %4 = load double, double* %dtcourant, align 8, !tbaa !1
  br label %.lr.ph

._crit_edge:                                      ; preds = %21
  %phitmp = icmp eq i32 %courant_elem.1, -1
  br i1 %phitmp, label %._crit_edge.thread, label %30

.lr.ph:                                           ; preds = %21, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %.lr.ph.preheader ]
  %dtcourant_tmp.04 = phi double [ %dtcourant_tmp.1, %21 ], [ %4, %.lr.ph.preheader ]
  %courant_elem.02 = phi i32 [ %courant_elem.1, %21 ], [ -1, %.lr.ph.preheader ]
  %5 = getelementptr inbounds i32, i32* %regElemlist, i64 %indvars.iv
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = tail call dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* nonnull %domain, i32 %6)
  %8 = load double, double* %7, align 8, !tbaa !1
  %9 = fmul double %8, %8
  %10 = tail call dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nonnull %domain, i32 %6)
  %11 = load double, double* %10, align 8, !tbaa !1
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %21

; <label>:13                                      ; preds = %.lr.ph
  %14 = tail call dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* nonnull %domain, i32 %6)
  %15 = load double, double* %14, align 8, !tbaa !1
  %16 = fmul double %2, %15
  %17 = fmul double %15, %16
  %18 = fmul double %11, %17
  %19 = fmul double %11, %18
  %20 = fadd double %9, %19
  br label %21

; <label>:21                                      ; preds = %13, %.lr.ph
  %dtf.0 = phi double [ %20, %13 ], [ %9, %.lr.ph ]
  %22 = tail call double @_Z4SQRTd(double %dtf.0)
  %23 = tail call dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* nonnull %domain, i32 %6)
  %24 = load double, double* %23, align 8, !tbaa !1
  %25 = fdiv double %24, %22
  %26 = tail call dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nonnull %domain, i32 %6)
  %27 = load double, double* %26, align 8, !tbaa !1
  %28 = fcmp une double %27, 0.000000e+00
  %29 = fcmp olt double %25, %dtcourant_tmp.04
  %or.cond = and i1 %29, %28
  %courant_elem.1 = select i1 %or.cond, i32 %6, i32 %courant_elem.02
  %dtcourant_tmp.1 = select i1 %or.cond, double %25, double %dtcourant_tmp.04
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

; <label>:30                                      ; preds = %._crit_edge
  store double %dtcourant_tmp.1, double* %dtcourant, align 8, !tbaa !1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %30, %._crit_edge, %0
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr double @_ZNK6Domain7dvovmaxEv(%class.Domain* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 68
  %2 = load double, double* %1, align 8, !tbaa !59
  ret double %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nocapture readonly dereferenceable(1456) %domain, i32 %length, i32* nocapture readonly %regElemlist, double %dvovmax, double* nocapture dereferenceable(8) %dthydro) unnamed_addr #7 {
  %1 = icmp sgt i32 %length, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %0
  %2 = load double, double* %dthydro, align 8, !tbaa !1
  br label %.lr.ph

._crit_edge:                                      ; preds = %14
  %3 = icmp eq i32 %hydro_elem.2, -1
  br i1 %3, label %._crit_edge.thread, label %15

.lr.ph:                                           ; preds = %14, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %.lr.ph.preheader ]
  %dthydro_tmp.04 = phi double [ %dthydro_tmp.2, %14 ], [ %2, %.lr.ph.preheader ]
  %hydro_elem.03 = phi i32 [ %hydro_elem.2, %14 ], [ -1, %.lr.ph.preheader ]
  %4 = getelementptr inbounds i32, i32* %regElemlist, i64 %indvars.iv
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = tail call dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* nonnull %domain, i32 %5)
  %7 = load double, double* %6, align 8, !tbaa !1
  %8 = fcmp une double %7, 0.000000e+00
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %.lr.ph
  %10 = tail call double @_Z4FABSd(double %7)
  %11 = fadd double %10, 1.000000e-20
  %12 = fdiv double %dvovmax, %11
  %13 = fcmp ogt double %dthydro_tmp.04, %12
  %hydro_elem.1 = select i1 %13, i32 %5, i32 %hydro_elem.03
  %dthydro_tmp.1 = select i1 %13, double %12, double %dthydro_tmp.04
  br label %14

; <label>:14                                      ; preds = %9, %.lr.ph
  %hydro_elem.2 = phi i32 [ %hydro_elem.03, %.lr.ph ], [ %hydro_elem.1, %9 ]
  %dthydro_tmp.2 = phi double [ %dthydro_tmp.04, %.lr.ph ], [ %dthydro_tmp.1, %9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

; <label>:15                                      ; preds = %._crit_edge
  store double %dthydro_tmp.2, double* %dthydro, align 8, !tbaa !1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %15, %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z11DumpToVisitR6Domainiii(%class.Domain* nocapture readnone dereferenceable(1456) %domain, i32 %numFiles, i32 %myRank, i32 %numRanks) #5 {
  %1 = icmp eq i32 %myRank, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @str.3, i64 0, i64 0))
  br label %3

; <label>:3                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Z8StrToIntPKcPi(i8* %token, i32* nocapture %retVal) #5 {
  %endptr = alloca i8*, align 8
  %1 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = icmp eq i8* %token, null
  br i1 %2, label %11, label %3

; <label>:3                                       ; preds = %0
  %4 = call i64 @strtol(i8* nonnull %token, i8** nonnull %endptr, i32 10) #2
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %retVal, align 4, !tbaa !5
  %6 = load i8*, i8** %endptr, align 8, !tbaa !32
  %7 = icmp eq i8* %6, %token
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = load i8, i8* %6, align 1, !tbaa !60
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
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #10

; Function Attrs: nounwind uwtable
define void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** nocapture readonly %argv, i32 %myRank, %struct.cmdLineOpts* nocapture %opts) #5 {
  %msg = alloca [80 x i8], align 16
  %1 = icmp sgt i32 %argc, 1
  br i1 %1, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 0
  %3 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 1
  %4 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 2
  %5 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 3
  %6 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 4
  %7 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 5
  %8 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 8
  %9 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i64 0, i32 7
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  br label %11

; <label>:11                                      ; preds = %.backedge, %.lr.ph
  %i.01 = phi i32 [ 1, %.lr.ph ], [ %i.0.be, %.backedge ]
  %12 = sext i32 %i.01 to i64
  %13 = getelementptr inbounds i8*, i8** %argv, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !32
  %15 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

; <label>:17                                      ; preds = %11
  %18 = add nsw i32 %i.01, 1
  %19 = icmp slt i32 %18, %argc
  br i1 %19, label %21, label %20

; <label>:20                                      ; preds = %17
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.7, i64 0, i64 0), i32 %myRank)
  br label %21

; <label>:21                                      ; preds = %20, %17
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i8*, i8** %argv, i64 %22
  %24 = load i8*, i8** %23, align 8, !tbaa !32
  %25 = tail call i32 @_Z8StrToIntPKcPi(i8* %24, i32* %2)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %21
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.8, i64 0, i64 0), i32 %myRank)
  br label %28

; <label>:28                                      ; preds = %27, %21
  %29 = add nsw i32 %i.01, 2
  br label %.backedge

; <label>:30                                      ; preds = %11
  %31 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

; <label>:33                                      ; preds = %30
  %34 = add nsw i32 %i.01, 1
  %35 = icmp slt i32 %34, %argc
  br i1 %35, label %37, label %36

; <label>:36                                      ; preds = %33
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %myRank)
  br label %37

; <label>:37                                      ; preds = %36, %33
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i8*, i8** %argv, i64 %38
  %40 = load i8*, i8** %39, align 8, !tbaa !32
  %41 = tail call i32 @_Z8StrToIntPKcPi(i8* %40, i32* %3)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %37
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %myRank)
  br label %44

; <label>:44                                      ; preds = %43, %37
  %45 = add nsw i32 %i.01, 2
  br label %.backedge

.backedge:                                        ; preds = %131, %124, %119, %103, %87, %82, %77, %61, %44, %28
  %i.0.be = phi i32 [ %29, %28 ], [ %45, %44 ], [ %62, %61 ], [ %78, %77 ], [ %83, %82 ], [ %88, %87 ], [ %104, %103 ], [ %120, %119 ], [ %125, %124 ], [ %i.01, %131 ]
  %46 = icmp slt i32 %i.0.be, %argc
  br i1 %46, label %11, label %.loopexit.loopexit

; <label>:47                                      ; preds = %30
  %48 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.9, i64 0, i64 0)) #29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

; <label>:50                                      ; preds = %47
  %51 = add nsw i32 %i.01, 1
  %52 = icmp slt i32 %51, %argc
  br i1 %52, label %54, label %53

; <label>:53                                      ; preds = %50
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %myRank)
  br label %54

; <label>:54                                      ; preds = %53, %50
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds i8*, i8** %argv, i64 %55
  %57 = load i8*, i8** %56, align 8, !tbaa !32
  %58 = tail call i32 @_Z8StrToIntPKcPi(i8* %57, i32* %4)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %54
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %myRank)
  br label %61

; <label>:61                                      ; preds = %60, %54
  %62 = add nsw i32 %i.01, 2
  br label %.backedge

; <label>:63                                      ; preds = %47
  %64 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #29
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

; <label>:66                                      ; preds = %63
  %67 = add nsw i32 %i.01, 1
  %68 = icmp slt i32 %67, %argc
  br i1 %68, label %70, label %69

; <label>:69                                      ; preds = %66
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.10, i64 0, i64 0), i32 %myRank)
  br label %70

; <label>:70                                      ; preds = %69, %66
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds i8*, i8** %argv, i64 %71
  %73 = load i8*, i8** %72, align 8, !tbaa !32
  %74 = tail call i32 @_Z8StrToIntPKcPi(i8* %73, i32* %5)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %70
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11.11, i64 0, i64 0), i32 %myRank)
  br label %77

; <label>:77                                      ; preds = %76, %70
  %78 = add nsw i32 %i.01, 2
  br label %.backedge

; <label>:79                                      ; preds = %63
  %80 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.12, i64 0, i64 0)) #29
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %79
  store i32 1, i32* %6, align 4, !tbaa !19
  %83 = add nsw i32 %i.01, 1
  br label %.backedge

; <label>:84                                      ; preds = %79
  %85 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.13, i64 0, i64 0)) #29
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

; <label>:87                                      ; preds = %84
  store i32 1, i32* %7, align 4, !tbaa !20
  %88 = add nsw i32 %i.01, 1
  br label %.backedge

; <label>:89                                      ; preds = %84
  %90 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #29
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

; <label>:92                                      ; preds = %89
  %93 = add nsw i32 %i.01, 1
  %94 = icmp slt i32 %93, %argc
  br i1 %94, label %96, label %95

; <label>:95                                      ; preds = %92
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %myRank)
  br label %96

; <label>:96                                      ; preds = %95, %92
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds i8*, i8** %argv, i64 %97
  %99 = load i8*, i8** %98, align 8, !tbaa !32
  %100 = tail call i32 @_Z8StrToIntPKcPi(i8* %99, i32* %8)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %96
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i32 %myRank)
  br label %103

; <label>:103                                     ; preds = %102, %96
  %104 = add nsw i32 %i.01, 2
  br label %.backedge

; <label>:105                                     ; preds = %89
  %106 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #29
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %121

; <label>:108                                     ; preds = %105
  %109 = add nsw i32 %i.01, 1
  %110 = icmp slt i32 %109, %argc
  br i1 %110, label %112, label %111

; <label>:111                                     ; preds = %108
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %myRank)
  br label %112

; <label>:112                                     ; preds = %111, %108
  %113 = sext i32 %109 to i64
  %114 = getelementptr inbounds i8*, i8** %argv, i64 %113
  %115 = load i8*, i8** %114, align 8, !tbaa !32
  %116 = tail call i32 @_Z8StrToIntPKcPi(i8* %115, i32* %9)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %112
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 %myRank)
  br label %119

; <label>:119                                     ; preds = %118, %112
  %120 = add nsw i32 %i.01, 2
  br label %.backedge

; <label>:121                                     ; preds = %105
  %122 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

; <label>:124                                     ; preds = %121
  tail call fastcc void @_ZL10ParseErrorPKci(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %myRank)
  %125 = add nsw i32 %i.01, 1
  br label %.backedge

; <label>:126                                     ; preds = %121
  %127 = tail call i32 @strcmp(i8* %14, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #29
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

; <label>:129                                     ; preds = %126
  %130 = load i8*, i8** %argv, align 8, !tbaa !32
  tail call fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %130, i32 %myRank)
  tail call void @exit(i32 0) #26
  unreachable

; <label>:131                                     ; preds = %126
  call void @llvm.lifetime.start(i64 80, i8* %10) #2
  %132 = load i8*, i8** %argv, align 8, !tbaa !32
  tail call fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %132, i32 %myRank)
  %133 = load i8*, i8** %13, align 8, !tbaa !32
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* %133) #2
  call fastcc void @_ZL10ParseErrorPKci(i8* %10, i32 %myRank)
  call void @llvm.lifetime.end(i64 80, i8* %10) #2
  br label %.backedge

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #21

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL10ParseErrorPKci(i8* nocapture %message, i32 %myRank) unnamed_addr #5 {
  %1 = icmp eq i32 %myRank, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* %message)
  tail call void @exit(i32 -1) #26
  unreachable

; <label>:3                                       ; preds = %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL23PrintCommandLineOptionsPci(i8* %execname, i32 %myRank) unnamed_addr #5 {
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
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #10

; Function Attrs: nounwind uwtable
define void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %elapsed_time, %class.Domain* readonly dereferenceable(1456) %locDom, i32 %nx, i32 %numRanks) #5 {
  %1 = fmul double %elapsed_time, 1.000000e+06
  %2 = tail call dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* nonnull %locDom)
  %3 = load i32, i32* %2, align 4, !tbaa !5
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
  %15 = load i32, i32* %2, align 4, !tbaa !5
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %15)
  %17 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %locDom, i32 0)
  %18 = load double, double* %17, align 8, !tbaa !1
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), double %18)
  %20 = icmp sgt i32 %nx, 0
  br i1 %20, label %.lr.ph12.preheader, label %._crit_edge

.lr.ph12.preheader:                               ; preds = %0
  br label %.lr.ph12

.loopexit.loopexit:                               ; preds = %31
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph12
  %MaxAbsDiff.1.lcssa = phi double [ %MaxAbsDiff.011, %.lr.ph12 ], [ %MaxAbsDiff.2, %.loopexit.loopexit ]
  %TotalAbsDiff.1.lcssa = phi double [ %TotalAbsDiff.010, %.lr.ph12 ], [ %41, %.loopexit.loopexit ]
  %MaxRelDiff.1.lcssa = phi double [ %MaxRelDiff.08, %.lr.ph12 ], [ %MaxRelDiff.2, %.loopexit.loopexit ]
  %exitcond16 = icmp eq i32 %28, %nx
  br i1 %exitcond16, label %._crit_edge.loopexit, label %.lr.ph12

._crit_edge.loopexit:                             ; preds = %.loopexit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %MaxAbsDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %MaxAbsDiff.1.lcssa, %._crit_edge.loopexit ]
  %TotalAbsDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %TotalAbsDiff.1.lcssa, %._crit_edge.loopexit ]
  %MaxRelDiff.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %MaxRelDiff.1.lcssa, %._crit_edge.loopexit ]
  %puts1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @str.62, i64 0, i64 0))
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), double %MaxAbsDiff.0.lcssa)
  %22 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), double %TotalAbsDiff.0.lcssa)
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), double %MaxRelDiff.0.lcssa)
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), double %elapsed_time)
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i64 0, i64 0), double %9, double %12)
  %26 = fdiv double 1.000000e+03, %12
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), double %26)
  ret void

.lr.ph12:                                         ; preds = %.lr.ph12.preheader, %.loopexit
  %MaxAbsDiff.011 = phi double [ %MaxAbsDiff.1.lcssa, %.loopexit ], [ 0.000000e+00, %.lr.ph12.preheader ]
  %TotalAbsDiff.010 = phi double [ %TotalAbsDiff.1.lcssa, %.loopexit ], [ 0.000000e+00, %.lr.ph12.preheader ]
  %j.09 = phi i32 [ %28, %.loopexit ], [ 0, %.lr.ph12.preheader ]
  %MaxRelDiff.08 = phi double [ %MaxRelDiff.1.lcssa, %.loopexit ], [ 0.000000e+00, %.lr.ph12.preheader ]
  %28 = add nuw nsw i32 %j.09, 1
  %29 = icmp slt i32 %28, %nx
  br i1 %29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph12
  %30 = mul nsw i32 %j.09, %nx
  br label %31

; <label>:31                                      ; preds = %31, %.lr.ph
  %MaxAbsDiff.15 = phi double [ %MaxAbsDiff.011, %.lr.ph ], [ %MaxAbsDiff.2, %31 ]
  %TotalAbsDiff.14 = phi double [ %TotalAbsDiff.010, %.lr.ph ], [ %41, %31 ]
  %k.03 = phi i32 [ %28, %.lr.ph ], [ %45, %31 ]
  %MaxRelDiff.12 = phi double [ %MaxRelDiff.08, %.lr.ph ], [ %MaxRelDiff.2, %31 ]
  %32 = add nsw i32 %k.03, %30
  %33 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %locDom, i32 %32)
  %34 = load double, double* %33, align 8, !tbaa !1
  %35 = mul nsw i32 %k.03, %nx
  %36 = add nsw i32 %35, %j.09
  %37 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %locDom, i32 %36)
  %38 = load double, double* %37, align 8, !tbaa !1
  %39 = fsub double %34, %38
  %40 = tail call double @_Z4FABSd(double %39)
  %41 = fadd double %TotalAbsDiff.14, %40
  %42 = fcmp olt double %MaxAbsDiff.15, %40
  %MaxAbsDiff.2 = select i1 %42, double %40, double %MaxAbsDiff.15
  %43 = fdiv double %40, %38
  %44 = fcmp olt double %MaxRelDiff.12, %43
  %MaxRelDiff.2 = select i1 %44, double %43, double %MaxRelDiff.12
  %45 = add nuw nsw i32 %k.03, 1
  %exitcond = icmp eq i32 %45, %nx
  br i1 %exitcond, label %.loopexit.loopexit, label %31
}

; Function Attrs: uwtable
define void @_ZN6DomainC2Eiiiiiiiii(%class.Domain* %this, i32 %numRanks, i32 %colLoc, i32 %rowLoc, i32 %planeLoc, i32 %nx, i32 %tp, i32 %nr, i32 %balance, i32 %cost) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %1)
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %2)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %3)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %4)
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %5)
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %6)
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %7)
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %8)
  %9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %9)
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %10)
  %11 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %11)
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %12)
  %13 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %13)
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %14)
  %15 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %15)
  %16 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %16)
  %17 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %17)
  %18 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %18)
  %19 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %19)
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %20)
  %21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %21)
  %22 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %22)
  %23 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %23)
  %24 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %24)
  %25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 29
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %25)
  %26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 30
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %26)
  %27 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 31
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %27)
  %28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 32
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %28)
  %29 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 33
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %29)
  %30 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 34
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %30)
  %31 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 35
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %31)
  %32 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 36
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %32)
  %33 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 37
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %33)
  %34 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %34)
  %35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %35)
  %36 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %36)
  %37 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %37)
  %38 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %38)
  %39 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %39)
  %40 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %40)
  %41 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 45
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %41)
  %42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %42)
  %43 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %43)
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %44)
  %45 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %45)
  %46 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %46)
  %47 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 51
  store double 1.000000e-07, double* %47, align 8, !tbaa !51
  %48 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 52
  store double 1.000000e-07, double* %48, align 8, !tbaa !52
  %49 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 53
  store double 1.000000e-07, double* %49, align 8, !tbaa !53
  %50 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 54
  store double 1.000000e-10, double* %50, align 8, !tbaa !57
  %51 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 55
  store double 1.000000e-07, double* %51, align 8, !tbaa !28
  %52 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 56
  store double 3.000000e+00, double* %52, align 8, !tbaa !33
  %53 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 57
  store double 0x3FF5555555555555, double* %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 58
  store double 1.000000e+12, double* %54, align 8, !tbaa !48
  %55 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 59
  store double 1.000000e+00, double* %55, align 8, !tbaa !44
  %56 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 60
  store double 2.000000e+00, double* %56, align 8, !tbaa !43
  %57 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 61
  store double 5.000000e-01, double* %57, align 8, !tbaa !45
  %58 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 62
  store double 0x3FE5555555555555, double* %58, align 8, !tbaa !46
  %59 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 63
  store double 2.000000e+00, double* %59, align 8, !tbaa !58
  %60 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 64
  store double 1.000000e+09, double* %60, align 8, !tbaa !50
  %61 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 65
  store double 1.000000e-09, double* %61, align 8, !tbaa !49
  %62 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 66
  store double 0.000000e+00, double* %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 67
  store double -1.000000e+15, double* %63, align 8, !tbaa !55
  %64 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 68
  store double 1.000000e-01, double* %64, align 8, !tbaa !59
  %65 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 69
  store double 1.000000e+00, double* %65, align 8, !tbaa !56
  %66 = add nsw i32 %nx, 1
  %67 = tail call dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this)
  store i32 %cost, i32* %67, align 4, !tbaa !5
  %68 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  store i32 %tp, i32* %68, align 8, !tbaa !62
  %69 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 80
  store i32 %numRanks, i32* %69, align 8, !tbaa !63
  %70 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  store i32 %colLoc, i32* %70, align 4, !tbaa !64
  %71 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  store i32 %rowLoc, i32* %71, align 8, !tbaa !65
  %72 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  store i32 %planeLoc, i32* %72, align 4, !tbaa !66
  %73 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 85
  store i32 %nx, i32* %73, align 4, !tbaa !67
  %74 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 86
  store i32 %nx, i32* %74, align 8, !tbaa !68
  %75 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 87
  store i32 %nx, i32* %75, align 4, !tbaa !69
  %76 = mul nsw i32 %nx, %nx
  %77 = mul nsw i32 %76, %nx
  %78 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 88
  store i32 %77, i32* %78, align 8, !tbaa !70
  %79 = mul nsw i32 %66, %66
  %80 = mul nsw i32 %79, %66
  %81 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 89
  store i32 %80, i32* %81, align 4, !tbaa !71
  %82 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = sext i32 %83 to i64
  %85 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %84, i64 4)
  %86 = extractvalue { i64, i1 } %85, 1
  %87 = extractvalue { i64, i1 } %85, 0
  %88 = select i1 %86, i64 -1, i64 %87
  %89 = invoke noalias i8* @_Znam(i64 %88) #24
          to label %90 unwind label %.loopexit.split-lp

; <label>:90                                      ; preds = %0
  %91 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %92 = bitcast i32** %91 to i8**
  store i8* %89, i8** %92, align 8, !tbaa !72
  %93 = load i32, i32* %82, align 4, !tbaa !5
  invoke void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* nonnull %this, i32 %93)
          to label %94 unwind label %.loopexit.split-lp

; <label>:94                                      ; preds = %90
  %95 = tail call dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* nonnull %this)
  %96 = load i32, i32* %95, align 4, !tbaa !5
  invoke void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* nonnull %this, i32 %96)
          to label %97 unwind label %.loopexit.split-lp

; <label>:97                                      ; preds = %94
  invoke void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* nonnull %this, i32 %66)
          to label %.preheader57 unwind label %.loopexit.split-lp

.preheader57:                                     ; preds = %97
  %98 = load i32, i32* %82, align 4, !tbaa !5
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %.lr.ph71.preheader, label %.preheader55

.lr.ph71.preheader:                               ; preds = %.preheader57
  br label %.lr.ph71

.preheader56:                                     ; preds = %.lr.ph71
  %100 = icmp sgt i32 %107, 0
  br i1 %100, label %.lr.ph69.preheader, label %.preheader55

.lr.ph69.preheader:                               ; preds = %.preheader56
  br label %.lr.ph69

.loopexit:                                        ; preds = %172
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %101

.loopexit.split-lp:                               ; preds = %._crit_edge63, %97, %94, %90, %0
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %101

; <label>:101                                     ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %46)
          to label %217 unwind label %263

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %i.070 = phi i32 [ %106, %.lr.ph71 ], [ 0, %.lr.ph71.preheader ]
  %102 = tail call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %i.070)
  store double 0.000000e+00, double* %102, align 8, !tbaa !1
  %103 = tail call dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this, i32 %i.070)
  store double 0.000000e+00, double* %103, align 8, !tbaa !1
  %104 = tail call dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this, i32 %i.070)
  store double 0.000000e+00, double* %104, align 8, !tbaa !1
  %105 = tail call dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this, i32 %i.070)
  store double 0.000000e+00, double* %105, align 8, !tbaa !1
  %106 = add nuw nsw i32 %i.070, 1
  %107 = load i32, i32* %82, align 4, !tbaa !5
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %.lr.ph71, label %.preheader56

.preheader55.loopexit:                            ; preds = %.lr.ph69
  br label %.preheader55

.preheader55:                                     ; preds = %.preheader55.loopexit, %.preheader56, %.preheader57
  %109 = load i32, i32* %95, align 4, !tbaa !5
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %.lr.ph67.preheader, label %.preheaderthread-pre-split

.lr.ph67.preheader:                               ; preds = %.preheader55
  br label %.lr.ph67

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %i1.068 = phi i32 [ %112, %.lr.ph69 ], [ 0, %.lr.ph69.preheader ]
  %111 = tail call dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this, i32 %i1.068)
  store double 1.000000e+00, double* %111, align 8, !tbaa !1
  %112 = add nuw nsw i32 %i1.068, 1
  %113 = load i32, i32* %82, align 4, !tbaa !5
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %.lr.ph69, label %.preheader55.loopexit

.preheader54:                                     ; preds = %.lr.ph67
  %115 = icmp sgt i32 %120, 0
  br i1 %115, label %.lr.ph65.preheader, label %.preheaderthread-pre-split

.lr.ph65.preheader:                               ; preds = %.preheader54
  br label %.lr.ph65

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %i2.066 = phi i32 [ %119, %.lr.ph67 ], [ 0, %.lr.ph67.preheader ]
  %116 = tail call dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this, i32 %i2.066)
  store double 0.000000e+00, double* %116, align 8, !tbaa !1
  %117 = tail call dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this, i32 %i2.066)
  store double 0.000000e+00, double* %117, align 8, !tbaa !1
  %118 = tail call dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this, i32 %i2.066)
  store double 0.000000e+00, double* %118, align 8, !tbaa !1
  %119 = add nuw nsw i32 %i2.066, 1
  %120 = load i32, i32* %95, align 4, !tbaa !5
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %.lr.ph67, label %.preheader54

.preheaderthread-pre-split:                       ; preds = %.preheader54, %.preheader55
  %.pr = phi i32 [ %120, %.preheader54 ], [ %109, %.preheader55 ]
  br label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph65
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheaderthread-pre-split
  %122 = phi i32 [ %.pr, %.preheaderthread-pre-split ], [ %128, %.preheader.loopexit ]
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %.preheader
  br label %.lr.ph62

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %i3.064 = phi i32 [ %127, %.lr.ph65 ], [ 0, %.lr.ph65.preheader ]
  %124 = tail call dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this, i32 %i3.064)
  store double 0.000000e+00, double* %124, align 8, !tbaa !1
  %125 = tail call dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this, i32 %i3.064)
  store double 0.000000e+00, double* %125, align 8, !tbaa !1
  %126 = tail call dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this, i32 %i3.064)
  store double 0.000000e+00, double* %126, align 8, !tbaa !1
  %127 = add nuw nsw i32 %i3.064, 1
  %128 = load i32, i32* %95, align 4, !tbaa !5
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %.lr.ph65, label %.preheader.loopexit

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %i4.061 = phi i32 [ %131, %.lr.ph62 ], [ 0, %.lr.ph62.preheader ]
  %130 = tail call dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %i4.061)
  store double 0.000000e+00, double* %130, align 8, !tbaa !1
  %131 = add nuw nsw i32 %i4.061, 1
  %132 = load i32, i32* %95, align 4, !tbaa !5
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %.lr.ph62, label %._crit_edge63.loopexit

._crit_edge63.loopexit:                           ; preds = %.lr.ph62
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %.preheader
  tail call void @_ZN6Domain9BuildMeshEiii(%class.Domain* %this, i32 %nx, i32 %66, i32 %nx)
  %134 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 92
  %135 = bitcast i32** %134 to i8*
  call void @llvm.memset.p0i8.i64(i8* %135, i8 0, i64 16, i32 8, i1 false)
  invoke void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance)
          to label %136 unwind label %.loopexit.split-lp

; <label>:136                                     ; preds = %._crit_edge63
  tail call void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* nonnull %this, i32 %66)
  tail call void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* nonnull %this, i32 %nx)
  tail call void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* nonnull %this, i32 %nx)
  %137 = tail call dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* nonnull %this)
  store double -1.000000e-06, double* %137, align 8, !tbaa !1
  %138 = tail call dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* nonnull %this)
  store double 1.000000e-02, double* %138, align 8, !tbaa !1
  %139 = tail call dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* nonnull %this)
  store double 1.100000e+00, double* %139, align 8, !tbaa !1
  %140 = tail call dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* nonnull %this)
  store double 1.200000e+00, double* %140, align 8, !tbaa !1
  %141 = tail call dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* nonnull %this)
  store double 1.000000e+20, double* %141, align 8, !tbaa !1
  %142 = tail call dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* nonnull %this)
  store double 1.000000e+20, double* %142, align 8, !tbaa !1
  %143 = tail call dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* nonnull %this)
  store double 1.000000e-02, double* %143, align 8, !tbaa !1
  %144 = tail call dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* nonnull %this)
  store double 0.000000e+00, double* %144, align 8, !tbaa !1
  %145 = tail call dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* nonnull %this)
  store i32 0, i32* %145, align 4, !tbaa !5
  %146 = load i32, i32* %82, align 4, !tbaa !5
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %136
  %148 = bitcast [8 x double]* %x_local to i8*
  %149 = bitcast [8 x double]* %y_local to i8*
  %150 = bitcast [8 x double]* %z_local to i8*
  %151 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %152 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %153 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  br label %170

._crit_edge.loopexit:                             ; preds = %196
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %136
  %154 = load i32, i32* %68, align 8, !tbaa !62
  %155 = mul nsw i32 %154, %nx
  %156 = sitofp i32 %155 to double
  %157 = fdiv double %156, 4.500000e+01
  %158 = fmul double %157, 3.948746e+07
  %159 = fmul double %157, %158
  %160 = fmul double %157, %159
  %161 = bitcast i32* %71 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %70, align 4, !tbaa !64
  %165 = add nsw i32 %164, %163
  %166 = lshr i64 %162, 32
  %167 = trunc i64 %166 to i32
  %168 = sub i32 0, %167
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %206, label %208

; <label>:170                                     ; preds = %196, %.lr.ph
  %i5.060 = phi i32 [ 0, %.lr.ph ], [ %197, %196 ]
  call void @llvm.lifetime.start(i64 64, i8* %148) #2
  call void @llvm.lifetime.start(i64 64, i8* %149) #2
  call void @llvm.lifetime.start(i64 64, i8* %150) #2
  %171 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %i5.060)
  br label %174

; <label>:172                                     ; preds = %174
  %173 = invoke double @_Z14CalcElemVolumePKdS0_S0_(double* nonnull %151, double* nonnull %152, double* nonnull %153)
          to label %192 unwind label %.loopexit

; <label>:174                                     ; preds = %174, %170
  %indvars.iv = phi i64 [ 0, %170 ], [ %indvars.iv.next, %174 ]
  %175 = getelementptr inbounds i32, i32* %171, i64 %indvars.iv
  %176 = load i32, i32* %175, align 4, !tbaa !5
  %177 = call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %176)
  %178 = bitcast double* %177 to i64*
  %179 = load i64, i64* %178, align 8, !tbaa !1
  %180 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %indvars.iv
  %181 = bitcast double* %180 to i64*
  store i64 %179, i64* %181, align 8, !tbaa !1
  %182 = call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %176)
  %183 = bitcast double* %182 to i64*
  %184 = load i64, i64* %183, align 8, !tbaa !1
  %185 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %indvars.iv
  %186 = bitcast double* %185 to i64*
  store i64 %184, i64* %186, align 8, !tbaa !1
  %187 = call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %176)
  %188 = bitcast double* %187 to i64*
  %189 = load i64, i64* %188, align 8, !tbaa !1
  %190 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %indvars.iv
  %191 = bitcast double* %190 to i64*
  store i64 %189, i64* %191, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %172, label %174

; <label>:192                                     ; preds = %172
  %193 = call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 %i5.060)
  store double %173, double* %193, align 8, !tbaa !1
  %194 = call dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this, i32 %i5.060)
  store double %173, double* %194, align 8, !tbaa !1
  %195 = fmul double %173, 1.250000e-01
  br label %200

; <label>:196                                     ; preds = %200
  call void @llvm.lifetime.end(i64 64, i8* %150) #2
  call void @llvm.lifetime.end(i64 64, i8* %149) #2
  call void @llvm.lifetime.end(i64 64, i8* %148) #2
  %197 = add nuw nsw i32 %i5.060, 1
  %198 = load i32, i32* %82, align 4, !tbaa !5
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %170, label %._crit_edge.loopexit

; <label>:200                                     ; preds = %200, %192
  %indvars.iv72 = phi i64 [ 0, %192 ], [ %indvars.iv.next73, %200 ]
  %201 = getelementptr inbounds i32, i32* %171, i64 %indvars.iv72
  %202 = load i32, i32* %201, align 4, !tbaa !5
  %203 = call dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %202)
  %204 = load double, double* %203, align 8, !tbaa !1
  %205 = fadd double %195, %204
  store double %205, double* %203, align 8, !tbaa !1
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond74 = icmp eq i64 %indvars.iv.next73, 8
  br i1 %exitcond74, label %196, label %200

; <label>:206                                     ; preds = %._crit_edge
  %207 = call dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* nonnull %this, i32 0)
  store double %160, double* %207, align 8, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %206, %._crit_edge
  %209 = call dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* nonnull %this, i32 0)
  %210 = load double, double* %209, align 8, !tbaa !1
  %211 = call double @cbrt(double %210) #2
  %212 = fmul double %211, 5.000000e-01
  %213 = fmul double %160, 2.000000e+00
  %214 = call double @sqrt(double %213) #2
  %215 = fdiv double %212, %214
  %216 = call dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* nonnull %this)
  store double %215, double* %216, align 8, !tbaa !1
  ret void

; <label>:217                                     ; preds = %101
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %45)
          to label %218 unwind label %263

; <label>:218                                     ; preds = %217
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %44)
          to label %219 unwind label %263

; <label>:219                                     ; preds = %218
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %43)
          to label %220 unwind label %263

; <label>:220                                     ; preds = %219
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %42)
          to label %221 unwind label %263

; <label>:221                                     ; preds = %220
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %41)
          to label %222 unwind label %263

; <label>:222                                     ; preds = %221
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %40)
          to label %223 unwind label %263

; <label>:223                                     ; preds = %222
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %39)
          to label %224 unwind label %263

; <label>:224                                     ; preds = %223
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %38)
          to label %225 unwind label %263

; <label>:225                                     ; preds = %224
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %37)
          to label %226 unwind label %263

; <label>:226                                     ; preds = %225
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %36)
          to label %227 unwind label %263

; <label>:227                                     ; preds = %226
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %35)
          to label %228 unwind label %263

; <label>:228                                     ; preds = %227
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %34)
          to label %229 unwind label %263

; <label>:229                                     ; preds = %228
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %33)
          to label %230 unwind label %263

; <label>:230                                     ; preds = %229
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %32)
          to label %231 unwind label %263

; <label>:231                                     ; preds = %230
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %31)
          to label %232 unwind label %263

; <label>:232                                     ; preds = %231
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %30)
          to label %233 unwind label %263

; <label>:233                                     ; preds = %232
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %29)
          to label %234 unwind label %263

; <label>:234                                     ; preds = %233
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %28)
          to label %235 unwind label %263

; <label>:235                                     ; preds = %234
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %27)
          to label %236 unwind label %263

; <label>:236                                     ; preds = %235
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %26)
          to label %237 unwind label %263

; <label>:237                                     ; preds = %236
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %25)
          to label %238 unwind label %263

; <label>:238                                     ; preds = %237
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %24)
          to label %239 unwind label %263

; <label>:239                                     ; preds = %238
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %23)
          to label %240 unwind label %263

; <label>:240                                     ; preds = %239
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %22)
          to label %241 unwind label %263

; <label>:241                                     ; preds = %240
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %21)
          to label %242 unwind label %263

; <label>:242                                     ; preds = %241
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %20)
          to label %243 unwind label %263

; <label>:243                                     ; preds = %242
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %19)
          to label %244 unwind label %263

; <label>:244                                     ; preds = %243
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %18)
          to label %245 unwind label %263

; <label>:245                                     ; preds = %244
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %17)
          to label %246 unwind label %263

; <label>:246                                     ; preds = %245
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %16)
          to label %247 unwind label %263

; <label>:247                                     ; preds = %246
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %15)
          to label %248 unwind label %263

; <label>:248                                     ; preds = %247
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %14)
          to label %249 unwind label %263

; <label>:249                                     ; preds = %248
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %13)
          to label %250 unwind label %263

; <label>:250                                     ; preds = %249
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %12)
          to label %251 unwind label %263

; <label>:251                                     ; preds = %250
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %11)
          to label %252 unwind label %263

; <label>:252                                     ; preds = %251
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %10)
          to label %253 unwind label %263

; <label>:253                                     ; preds = %252
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %9)
          to label %254 unwind label %263

; <label>:254                                     ; preds = %253
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %8)
          to label %255 unwind label %263

; <label>:255                                     ; preds = %254
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %7)
          to label %256 unwind label %263

; <label>:256                                     ; preds = %255
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %6)
          to label %257 unwind label %263

; <label>:257                                     ; preds = %256
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %5)
          to label %258 unwind label %263

; <label>:258                                     ; preds = %257
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %4)
          to label %259 unwind label %263

; <label>:259                                     ; preds = %258
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %3)
          to label %260 unwind label %263

; <label>:260                                     ; preds = %259
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %2)
          to label %261 unwind label %263

; <label>:261                                     ; preds = %260
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %1)
          to label %262 unwind label %263

; <label>:262                                     ; preds = %261
  resume { i8*, i32 } %lpad.phi

; <label>:263                                     ; preds = %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %101
  %264 = landingpad { i8*, i32 }
          catch i8* null
  %265 = extractvalue { i8*, i32 } %264, 0
  call void @__clang_call_terminate(i8* %265) #26
  unreachable
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* nocapture %this) unnamed_addr #16 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) #12

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* %this, i32 %numElem) #0 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 21
  %2 = shl nsw i32 %numElem, 3
  %3 = sext i32 %2 to i64
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %1, i64 %3, i32 0)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 22
  %5 = sext i32 %numElem to i64
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %4, i64 %5, i32 0)
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 23
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %6, i64 %5, i32 0)
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 24
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %7, i64 %5, i32 0)
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 25
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %8, i64 %5, i32 0)
  %9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 26
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %9, i64 %5, i32 0)
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 27
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %10, i64 %5, i32 0)
  %11 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 28
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %11, i64 %5, i32 0)
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 38
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %12, i64 %5, double 0.000000e+00)
  %13 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 39
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %13, i64 %5, double 0.000000e+00)
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 40
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %14, i64 %5, double 0.000000e+00)
  %15 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 41
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %15, i64 %5, double 0.000000e+00)
  %16 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 42
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %16, i64 %5, double 0.000000e+00)
  %17 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 43
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %17, i64 %5, double 0.000000e+00)
  %18 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 44
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %18, i64 %5, double 0.000000e+00)
  %19 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 46
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %19, i64 %5, double 0.000000e+00)
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 47
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %20, i64 %5, double 0.000000e+00)
  %21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 48
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %21, i64 %5, double 0.000000e+00)
  %22 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 49
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %22, i64 %5, double 0.000000e+00)
  %23 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 50
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %23, i64 %5, double 0.000000e+00)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %this, i64 %__new_size, i32 %__x) #0 comdat align 2 {
  %1 = alloca i32, align 4
  store i32 %__x, i32* %1, align 4, !tbaa !5
  %2 = tail call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this)
  %3 = icmp ult i64 %2, %__new_size
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = tail call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this)
  %6 = tail call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this)
  %7 = sub i64 %__new_size, %6
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* %this, i32* %5, i64 %7, i32* nonnull dereferenceable(4) %1)
  br label %14

; <label>:8                                       ; preds = %0
  %9 = icmp ugt i64 %2, %__new_size
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8, !tbaa !7
  %13 = getelementptr inbounds i32, i32* %12, i64 %__new_size
  tail call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* %this, i32* %13)
  br label %14

; <label>:14                                      ; preds = %10, %8, %4
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* nocapture readonly %this) #3 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast i32** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !36
  %4 = bitcast %"class.std::vector.0"* %this to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %6 = sub i64 %3, %5
  %7 = ashr exact i64 %6, 2
  ret i64 %7
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, i32** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nocapture %this, i32** nocapture readonly dereferenceable(8) %__i) unnamed_addr #16 comdat align 2 {
  %1 = bitcast i32** %__i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !32
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %this to i64*
  store i64 %2, i64* %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(%"class.std::vector.0"* %this, i32* %__position.coerce, i64 %__n, i32* nocapture readonly dereferenceable(4) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__x_copy = alloca i32, align 4
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i64 0, i32 0
  store i32* %__position.coerce, i32** %3, align 8
  %4 = icmp eq i64 %__n, 0
  br i1 %4, label %71, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0
  %7 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 2
  %8 = bitcast i32** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %11 = bitcast i32** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !36
  %13 = sub i64 %9, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ult i64 %14, %__n
  br i1 %15, label %47, label %16

; <label>:16                                      ; preds = %5
  %17 = bitcast i32* %__x_copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %__x, align 4, !tbaa !5
  store i32 %18, i32* %__x_copy, align 4, !tbaa !5
  %19 = tail call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* nonnull %this)
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %1, %"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %__position)
  %22 = load i32*, i32** %10, align 8, !tbaa !36
  %23 = icmp ugt i64 %21, %__n
  br i1 %23, label %24, label %36

; <label>:24                                      ; preds = %16
  %25 = sub i64 0, %__n
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* nonnull %6)
  %28 = call i32* @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %26, i32* %22, i32* %22, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %27)
  %29 = load i32*, i32** %10, align 8, !tbaa !36
  %30 = getelementptr inbounds i32, i32* %29, i64 %__n
  store i32* %30, i32** %10, align 8, !tbaa !36
  %31 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__position)
  %32 = load i32*, i32** %31, align 8, !tbaa !32
  %33 = call i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %32, i32* %26, i32* %22)
  %34 = load i32*, i32** %31, align 8, !tbaa !32
  %35 = getelementptr inbounds i32, i32* %34, i64 %__n
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(i32* %34, i32* %35, i32* nonnull dereferenceable(4) %__x_copy)
  br label %46

; <label>:36                                      ; preds = %16
  %37 = sub i64 %__n, %21
  %38 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* nonnull %6)
  %39 = call i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %22, i64 %37, i32* nonnull dereferenceable(4) %__x_copy, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %38)
  store i32* %39, i32** %10, align 8, !tbaa !36
  %40 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__position)
  %41 = load i32*, i32** %40, align 8, !tbaa !32
  %42 = call i32* @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %41, i32* %22, i32* %39, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %38)
  %43 = load i32*, i32** %10, align 8, !tbaa !36
  %44 = getelementptr inbounds i32, i32* %43, i64 %21
  store i32* %44, i32** %10, align 8, !tbaa !36
  %45 = load i32*, i32** %40, align 8, !tbaa !32
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(i32* %45, i32* %22, i32* nonnull dereferenceable(4) %__x_copy)
  br label %46

; <label>:46                                      ; preds = %36, %24
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  br label %71

; <label>:47                                      ; preds = %5
  %48 = tail call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* nonnull %this, i64 %__n, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.23, i64 0, i64 0))
  %49 = tail call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* nonnull %this)
  %50 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i64 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* nonnull dereferenceable(8) %2)
  %52 = tail call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %6, i64 %48)
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  %54 = tail call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %6)
  %55 = call i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %53, i64 %__n, i32* nonnull dereferenceable(4) %__x, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %54)
  %56 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8, !tbaa !7
  %58 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__position)
  %59 = load i32*, i32** %58, align 8, !tbaa !32
  %60 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %57, i32* %59, i32* %52, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %54)
  %61 = getelementptr inbounds i32, i32* %60, i64 %__n
  %62 = load i32*, i32** %58, align 8, !tbaa !32
  %63 = load i32*, i32** %10, align 8, !tbaa !36
  %64 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %62, i32* %63, i32* %61, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %54)
  %65 = load i32*, i32** %56, align 8, !tbaa !7
  %66 = load i64, i64* %8, align 8, !tbaa !75
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %6, i32* %65, i64 %69)
  store i32* %52, i32** %56, align 8, !tbaa !7
  store i32* %64, i32** %10, align 8, !tbaa !36
  %70 = getelementptr inbounds i32, i32* %52, i64 %48
  store i32* %70, i32** %7, align 8, !tbaa !75
  br label %71

; <label>:71                                      ; preds = %47, %46, %0
  ret void
}

; Function Attrs: inlinehint norecurse nounwind readonly uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #9 comdat {
  %1 = tail call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__lhs)
  %2 = bitcast i32** %1 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !32
  %4 = tail call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull %__rhs)
  %5 = bitcast i32** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !32
  %7 = sub i64 %3, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* readnone %this) #13 comdat align 2 {
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  ret i32** %1
}

; Function Attrs: norecurse nounwind readnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* readnone %this) #13 comdat align 2 {
  %1 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__alloc) #7 comdat {
  %1 = tail call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__alloc)
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1)) #7 comdat {
  %2 = tail call i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #16 comdat align 2 {
  %1 = tail call i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__last)
  %3 = tail call i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %1, i32* %2, i32* %__result)
  ret i32* %3
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i32* @_ZSt12__miter_baseIPiET_S1_(i32* readnone %__it) #4 comdat {
  ret i32* %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__last)
  %3 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__result)
  %4 = tail call i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %1, i32* %2, i32* %3)
  ret i32* %4
}

; Function Attrs: inlinehint norecurse nounwind readnone uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiET_S1_(i32* readnone %__it) #4 comdat {
  ret i32* %__it
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #16 comdat align 2 {
  %1 = ptrtoint i32* %__last to i64
  %2 = ptrtoint i32* %__first to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %__result to i8*
  %8 = bitcast i32* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %3, i32 4, i1 false)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = getelementptr inbounds i32, i32* %__result, i64 %4
  ret i32* %10
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__last)
  %3 = tail call i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %1, i32* %2, i32* %__result)
  ret i32* %3
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__last)
  %3 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__result)
  %4 = tail call i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %1, i32* %2, i32* %3)
  ret i32* %4
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = tail call i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #16 comdat align 2 {
  %1 = ptrtoint i32* %__last to i64
  %2 = ptrtoint i32* %__first to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %0
  br label %11

; <label>:6                                       ; preds = %0
  %7 = sub nsw i64 0, %4
  %8 = getelementptr inbounds i32, i32* %__result, i64 %7
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i32* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %3, i32 4, i1 false)
  br label %11

; <label>:11                                      ; preds = %._crit_edge, %6
  %.pre-phi2 = phi i32* [ %__result, %._crit_edge ], [ %8, %6 ]
  %.pre-phi = phi i64 [ 0, %._crit_edge ], [ %7, %6 ]
  ret i32* %.pre-phi2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr void @_ZSt4fillIPiiEvT_S1_RKT0_(i32* %__first, i32* readnone %__last, i32* nocapture readonly dereferenceable(4) %__value) #7 comdat {
  %1 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__last)
  tail call void @_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* %1, i32* %2, i32* nonnull dereferenceable(4) %__value)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* %__first, i32* readnone %__last, i32* nocapture readonly dereferenceable(4) %__value) #7 comdat {
  %1 = load i32, i32* %__value, align 4, !tbaa !5
  %2 = icmp eq i32* %__first, %__last
  br i1 %2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01 = phi i32* [ %3, %.lr.ph ], [ %__first, %.lr.ph.preheader ]
  store i32 %1, i32* %.01, align 4, !tbaa !5
  %3 = getelementptr inbounds i32, i32* %.01, i64 1
  %4 = icmp eq i32* %3, %__last
  br i1 %4, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %__first, i64 %__n, i32* nocapture readonly dereferenceable(4) %__x, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1)) #7 comdat {
  %2 = tail call i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull dereferenceable(4) %__x)
  ret i32* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nocapture readonly dereferenceable(4) %__x) #7 comdat {
  %1 = tail call i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull dereferenceable(4) %__x)
  ret i32* %1
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %__first, i64 %__n, i32* nocapture readonly dereferenceable(4) %__x) #16 comdat align 2 {
  %1 = tail call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull dereferenceable(4) %__x)
  ret i32* %1
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nocapture readonly dereferenceable(4) %__value) #7 comdat {
  %1 = tail call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %2 = tail call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %1, i64 %__n, i32* nonnull dereferenceable(4) %__value)
  ret i32* %2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* nocapture readonly dereferenceable(4) %__value) #7 comdat {
  %1 = load i32, i32* %__value, align 4, !tbaa !5
  %2 = icmp eq i64 %__n, 0
  br i1 %2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %scevgep = getelementptr i32, i32* %__first, i64 %__n
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %.0.lcssa = phi i32* [ %__first, %0 ], [ %scevgep, %._crit_edge.loopexit ]
  ret i32* %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %__niter.02 = phi i64 [ %3, %.lr.ph ], [ %__n, %.lr.ph.preheader ]
  %.01 = phi i32* [ %4, %.lr.ph ], [ %__first, %.lr.ph.preheader ]
  store i32 %1, i32* %.01, align 4, !tbaa !5
  %3 = add i64 %__niter.02, -1
  %4 = getelementptr inbounds i32, i32* %.01, i64 1
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* nocapture readonly %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %__n, i64* %1, align 8, !tbaa !41
  %3 = tail call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this)
  %4 = sub i64 4611686018427387903, %3
  %5 = icmp ult i64 %4, %__n
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #27
  unreachable

; <label>:7                                       ; preds = %0
  store i64 %3, i64* %2, align 8, !tbaa !41
  %8 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull dereferenceable(8) %2, i64* nonnull dereferenceable(8) %1)
  %9 = load i64, i64* %8, align 8, !tbaa !41
  %10 = add i64 %9, %3
  %11 = tail call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this)
  %12 = icmp ult i64 %10, %11
  %13 = icmp ugt i64 %10, 4611686018427387903
  %or.cond = or i1 %12, %13
  %14 = select i1 %or.cond, i64 4611686018427387903, i64 %10
  ret i64 %14
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* nocapture readonly %this) #16 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nonnull %1, i32** dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i64 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr noalias i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* nocapture readnone %this, i64 %__n) #0 comdat align 2 {
  %1 = icmp eq i64 %__n, 0
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.std::ios_base::Init"*
  %4 = tail call i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %3, i64 %__n)
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i32* [ %4, %2 ], [ null, %0 ]
  ret i32* %6
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  %2 = tail call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %__n, i8* null)
  ret i32* %2
}

; Function Attrs: uwtable
define linkonce_odr noalias nonnull i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.std::ios_base::Init"* nocapture readnone %this, i64 %__n, i8* nocapture readnone) #0 comdat align 2 {
  %2 = icmp ugt i64 %__n, 4611686018427387903
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %1
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

; <label>:4                                       ; preds = %1
  %5 = shl i64 %__n, 2
  %6 = tail call noalias i8* @_Znwm(i64 %5)
  %7 = bitcast i8* %6 to i32*
  ret i32* %7
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__alloc) #7 comdat {
  %1 = tail call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::ios_base::Init"* nonnull dereferenceable(1) %__alloc)
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* nocapture readnone %this, i32* %__p, i64 %__n) #5 comdat align 2 {
  %1 = icmp eq i32* %__p, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::ios_base::Init"* dereferenceable(1) %3, i32* nonnull %__p, i64 %__n)
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::ios_base::Init"* nocapture readnone dereferenceable(1) %__a, i32* %__p, i64 %__n) #5 comdat align 2 {
  %1 = bitcast %"class.std::ios_base::Init"* %__a to %"class.std::ios_base::Init"*
  tail call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.std::ios_base::Init"* %1, i32* %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.std::ios_base::Init"* nocapture readnone %this, i32* %__p, i64) #5 comdat align 2 {
  %2 = bitcast i32* %__p to i8*
  tail call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* nocapture %this, i32* %__pos) #16 comdat align 2 {
  %1 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  store i32* %__pos, i32** %1, align 8, !tbaa !36
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* %this, i32 %numNode) #0 comdat align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 0
  %2 = sext i32 %numNode to i64
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %1, i64 %2, double 0.000000e+00)
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %3, i64 %2, double 0.000000e+00)
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %4, i64 %2, double 0.000000e+00)
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %5, i64 %2, double 0.000000e+00)
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 4
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %6, i64 %2, double 0.000000e+00)
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 5
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %7, i64 %2, double 0.000000e+00)
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 6
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %8, i64 %2, double 0.000000e+00)
  %9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 7
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %9, i64 %2, double 0.000000e+00)
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 8
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %10, i64 %2, double 0.000000e+00)
  %11 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 9
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %11, i64 %2, double 0.000000e+00)
  %12 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 10
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %12, i64 %2, double 0.000000e+00)
  %13 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 11
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %13, i64 %2, double 0.000000e+00)
  %14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 12
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %14, i64 %2, double 0.000000e+00)
  ret void
}

; Function Attrs: uwtable
define void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this, i32 %edgeNodes) #0 align 2 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %3 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %4 = load i32, i32* %3, align 4
  %5 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %4, %6
  %8 = select i1 %7, i32 %4, i32 %6
  %9 = icmp sgt i32 %2, %8
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %0
  %.7 = select i1 %7, i32* %3, i32* %5
  %.pre = load i32, i32* %.7, align 4, !tbaa !5
  br label %11

; <label>:11                                      ; preds = %10, %0
  %12 = phi i32 [ %2, %0 ], [ %.pre, %10 ]
  %.in1 = phi i32* [ %1, %0 ], [ %.7, %10 ]
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %13, %13
  %15 = add nuw i32 %14, 15
  %16 = and i32 %15, -16
  %17 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 90
  store i32 %16, i32* %17, align 8, !tbaa !76
  %18 = add i32 %12, 16
  %19 = and i32 %18, -16
  %20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 91
  store i32 %19, i32* %20, align 4, !tbaa !77
  %21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %22 = bitcast i32* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %not. = icmp ne i32 %24, 0
  %25 = zext i1 %not. to i32
  %26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 94
  store i32 %25, i32* %26, align 8, !tbaa !78
  %27 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %28 = load i32, i32* %27, align 8, !tbaa !62
  %29 = add nsw i32 %28, -1
  %not.2 = icmp ne i32 %24, %29
  %30 = zext i1 %not.2 to i32
  %31 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 95
  store i32 %30, i32* %31, align 4, !tbaa !79
  %32 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %33 = load i32, i32* %32, align 4, !tbaa !64
  %not.3 = icmp ne i32 %33, 0
  %34 = zext i1 %not.3 to i32
  %35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 96
  store i32 %34, i32* %35, align 8, !tbaa !80
  %not.4 = icmp ne i32 %33, %29
  %36 = zext i1 %not.4 to i32
  %37 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 97
  store i32 %36, i32* %37, align 4, !tbaa !81
  %38 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %39 = lshr i64 %23, 32
  %40 = trunc i64 %39 to i32
  %not.5 = icmp ne i32 %40, 0
  %41 = zext i1 %not.5 to i32
  %42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 98
  store i32 %41, i32* %42, align 8, !tbaa !82
  %not.6 = icmp ne i32 %40, %29
  %43 = zext i1 %not.6 to i32
  %44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 99
  store i32 %43, i32* %44, align 4, !tbaa !83
  %45 = icmp eq i32 %33, 0
  br i1 %45, label %46, label %53

; <label>:46                                      ; preds = %11
  %47 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  %48 = mul nsw i32 %edgeNodes, %edgeNodes
  %49 = zext i32 %48 to i64
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %47, i64 %49, i32 0)
  %.pre1 = load i64, i64* %22, align 8
  %50 = trunc i64 %.pre1 to i32
  %51 = lshr i64 %.pre1, 32
  %52 = trunc i64 %51 to i32
  br label %53

; <label>:53                                      ; preds = %46, %11
  %54 = phi i32 [ %52, %46 ], [ %40, %11 ]
  %55 = phi i32 [ %50, %46 ], [ %24, %11 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

; <label>:57                                      ; preds = %53
  %58 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  %59 = mul nsw i32 %edgeNodes, %edgeNodes
  %60 = zext i32 %59 to i64
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %58, i64 %60, i32 0)
  %.pre2 = load i32, i32* %38, align 4, !tbaa !66
  br label %61

; <label>:61                                      ; preds = %57, %53
  %62 = phi i32 [ %.pre2, %57 ], [ %54, %53 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64                                      ; preds = %61
  %65 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  %66 = mul nsw i32 %edgeNodes, %edgeNodes
  %67 = zext i32 %66 to i64
  tail call void @_ZNSt6vectorIiSaIiEE6resizeEmi(%"class.std::vector.0"* %65, i64 %67, i32 0)
  br label %68

; <label>:68                                      ; preds = %64, %61
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* nocapture readonly %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* nocapture readonly %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 0
  %2 = load double*, double** %1, align 8, !tbaa !11
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 2
  %4 = bitcast double** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !40
  %6 = ptrtoint double* %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %2, i64 %8)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain9BuildMeshEiii(%class.Domain* nocapture readonly %this, i32 %nx, i32 %edgeNodes, i32 %edgeElems) #16 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %2 = load i32, i32* %1, align 8, !tbaa !62
  %3 = mul nsw i32 %2, %nx
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %5 = sitofp i32 %3 to double
  %6 = icmp sgt i32 %edgeNodes, 0
  br i1 %6, label %.lr.ph46, label %.preheader7

.lr.ph46:                                         ; preds = %0
  %7 = load i32, i32* %4, align 4, !tbaa !66
  %8 = mul nsw i32 %7, %nx
  %9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %.pre = load i32, i32* %9, align 8, !tbaa !65
  %.pre1.pre = load i32, i32* %10, align 4, !tbaa !64
  br label %.lr.ph36.preheader

.preheader7.loopexit:                             ; preds = %._crit_edge37
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit, %0
  %11 = icmp sgt i32 %edgeElems, 0
  br i1 %11, label %.preheader6.lr.ph, label %._crit_edge21

.preheader6.lr.ph:                                ; preds = %.preheader7
  %12 = mul nsw i32 %edgeNodes, %edgeNodes
  br label %.preheader.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge37, %.lr.ph46
  %.pre1 = phi i32 [ %.pre1.pre, %.lr.ph46 ], [ %33, %._crit_edge37 ]
  %13 = phi i32 [ %.pre, %.lr.ph46 ], [ %23, %._crit_edge37 ]
  %.pn40.pn.in.in = phi i32 [ %8, %.lr.ph46 ], [ %17, %._crit_edge37 ]
  %nidx.043 = phi i32 [ 0, %.lr.ph46 ], [ %20, %._crit_edge37 ]
  %plane.042 = phi i32 [ 0, %.lr.ph46 ], [ %16, %._crit_edge37 ]
  %.pn40.pn.in = sitofp i32 %.pn40.pn.in.in to double
  %.pn40.pn = fmul double %.pn40.pn.in, 1.125000e+00
  %tz.044 = fdiv double %.pn40.pn, %5
  %14 = mul nsw i32 %13, %nx
  br label %.lr.ph36

._crit_edge37:                                    ; preds = %._crit_edge27.loopexit
  %15 = mul nsw i32 %28, %nx
  %16 = add nuw nsw i32 %plane.042, 1
  %17 = add i32 %16, %15
  %exitcond54 = icmp eq i32 %16, %edgeNodes
  br i1 %exitcond54, label %.preheader7.loopexit, label %.lr.ph36.preheader

.lr.ph36:                                         ; preds = %._crit_edge27.loopexit, %.lr.ph36.preheader
  %18 = phi i32 [ %33, %._crit_edge27.loopexit ], [ %.pre1, %.lr.ph36.preheader ]
  %.pn4.pn.in.in = phi i32 [ %26, %._crit_edge27.loopexit ], [ %14, %.lr.ph36.preheader ]
  %nidx.133 = phi i32 [ %20, %._crit_edge27.loopexit ], [ %nidx.043, %.lr.ph36.preheader ]
  %row.032 = phi i32 [ %25, %._crit_edge27.loopexit ], [ 0, %.lr.ph36.preheader ]
  %.pn4.pn.in = sitofp i32 %.pn4.pn.in.in to double
  %.pn4.pn = fmul double %.pn4.pn.in, 1.125000e+00
  %ty.034 = fdiv double %.pn4.pn, %5
  %19 = mul nsw i32 %18, %nx
  br label %.lr.ph26

._crit_edge27.loopexit:                           ; preds = %.lr.ph26
  %20 = add i32 %nidx.133, %edgeNodes
  %21 = bitcast i32* %9 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %23, %nx
  %25 = add nuw nsw i32 %row.032, 1
  %26 = add i32 %25, %24
  %exitcond53 = icmp eq i32 %25, %edgeNodes
  %27 = lshr i64 %22, 32
  %28 = trunc i64 %27 to i32
  br i1 %exitcond53, label %._crit_edge37, label %.lr.ph36

.lr.ph26:                                         ; preds = %.lr.ph26, %.lr.ph36
  %nidx.224 = phi i32 [ %32, %.lr.ph26 ], [ %nidx.133, %.lr.ph36 ]
  %col.023 = phi i32 [ %35, %.lr.ph26 ], [ 0, %.lr.ph36 ]
  %.pn5.in.in22 = phi i32 [ %36, %.lr.ph26 ], [ %19, %.lr.ph36 ]
  %.pn5.in = sitofp i32 %.pn5.in.in22 to double
  %.pn5 = fmul double %.pn5.in, 1.125000e+00
  %tx.0 = fdiv double %.pn5, %5
  %29 = tail call dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* nonnull %this, i32 %nidx.224)
  store double %tx.0, double* %29, align 8, !tbaa !1
  %30 = tail call dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* nonnull %this, i32 %nidx.224)
  store double %ty.034, double* %30, align 8, !tbaa !1
  %31 = tail call dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* nonnull %this, i32 %nidx.224)
  store double %tz.044, double* %31, align 8, !tbaa !1
  %32 = add nsw i32 %nidx.224, 1
  %33 = load i32, i32* %10, align 4, !tbaa !64
  %34 = mul nsw i32 %33, %nx
  %35 = add nuw nsw i32 %col.023, 1
  %36 = add i32 %35, %34
  %exitcond52 = icmp eq i32 %35, %edgeNodes
  br i1 %exitcond52, label %._crit_edge27.loopexit, label %.lr.ph26

.preheader.preheader:                             ; preds = %._crit_edge15, %.preheader6.lr.ph
  %nidx.320 = phi i32 [ 0, %.preheader6.lr.ph ], [ %38, %._crit_edge15 ]
  %plane1.019 = phi i32 [ 0, %.preheader6.lr.ph ], [ %39, %._crit_edge15 ]
  %zidx.018 = phi i32 [ 0, %.preheader6.lr.ph ], [ %37, %._crit_edge15 ]
  br label %.lr.ph.preheader

._crit_edge21.loopexit:                           ; preds = %._crit_edge15
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %.preheader7
  ret void

.lr.ph.preheader:                                 ; preds = %._crit_edge.loopexit, %.preheader.preheader
  %nidx.414 = phi i32 [ %41, %._crit_edge.loopexit ], [ %nidx.320, %.preheader.preheader ]
  %row2.013 = phi i32 [ %42, %._crit_edge.loopexit ], [ 0, %.preheader.preheader ]
  %zidx.112 = phi i32 [ %37, %._crit_edge.loopexit ], [ %zidx.018, %.preheader.preheader ]
  %37 = add i32 %zidx.112, %edgeElems
  br label %.lr.ph

._crit_edge15:                                    ; preds = %._crit_edge.loopexit
  %38 = add nsw i32 %41, %edgeNodes
  %39 = add nuw nsw i32 %plane1.019, 1
  %exitcond51 = icmp eq i32 %39, %edgeElems
  br i1 %exitcond51, label %._crit_edge21.loopexit, label %.preheader.preheader

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %40 = add i32 %nidx.414, %edgeElems
  %41 = add nsw i32 %40, 1
  %42 = add nuw nsw i32 %row2.013, 1
  %exitcond50 = icmp eq i32 %42, %edgeElems
  br i1 %exitcond50, label %._crit_edge15, label %.lr.ph.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %nidx.510 = phi i32 [ %44, %.lr.ph ], [ %nidx.414, %.lr.ph.preheader ]
  %col3.09 = phi i32 [ %59, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %zidx.28 = phi i32 [ %58, %.lr.ph ], [ %zidx.112, %.lr.ph.preheader ]
  %43 = tail call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %zidx.28)
  store i32 %nidx.510, i32* %43, align 4, !tbaa !5
  %44 = add nsw i32 %nidx.510, 1
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %44, i32* %45, align 4, !tbaa !5
  %46 = add nsw i32 %nidx.510, %edgeNodes
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %47, i32* %48, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %46, i32* %49, align 4, !tbaa !5
  %50 = add nsw i32 %nidx.510, %12
  %51 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nsw i32 %50, 1
  %53 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %52, i32* %53, align 4, !tbaa !5
  %54 = add nsw i32 %50, %edgeNodes
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds i32, i32* %43, i64 6
  store i32 %55, i32* %56, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %43, i64 7
  store i32 %54, i32* %57, align 4, !tbaa !5
  %58 = add nsw i32 %zidx.28, 1
  %59 = add nuw nsw i32 %col3.09, 1
  %exitcond = icmp eq i32 %59, %edgeElems
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance) #0 align 2 {
  tail call void @srand(i32 0) #2
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  store i32 %nr, i32* %1, align 4, !tbaa !5
  %2 = sext i32 %nr to i64
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 4)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %7 = tail call noalias i8* @_Znam(i64 %6) #24
  %8 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 18
  %9 = bitcast i32** %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !42
  %10 = load i32, i32* %1, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 8)
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = extractvalue { i64, i1 } %12, 0
  %15 = select i1 %13, i64 -1, i64 %14
  %16 = tail call noalias i8* @_Znam(i64 %15) #24
  %17 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 20
  %18 = bitcast i32*** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !47
  %19 = load i32, i32* %1, align 4, !tbaa !5
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %.preheader9, label %31

.preheader9:                                      ; preds = %0
  %21 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* nonnull %this)
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph17.preheader, label %._crit_edge18

.lr.ph17.preheader:                               ; preds = %.preheader9
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %nextIndex.016 = phi i32 [ %25, %.lr.ph17 ], [ 0, %.lr.ph17.preheader ]
  %24 = tail call dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %nextIndex.016)
  store i32 1, i32* %24, align 4, !tbaa !5
  %25 = add nuw nsw i32 %nextIndex.016, 1
  %26 = load i32, i32* %21, align 4, !tbaa !5
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %.lr.ph17, label %._crit_edge18.loopexit

._crit_edge18.loopexit:                           ; preds = %.lr.ph17
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %._crit_edge18.loopexit, %.preheader9
  %28 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 0)
  store i32 0, i32* %28, align 4, !tbaa !5
  %.pre1 = load i32, i32* %21, align 4, !tbaa !5
  br label %.preheader8

.preheader8.loopexit:                             ; preds = %.critedge.loopexit
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.loopexit, %.critedge.preheader, %._crit_edge18
  %29 = phi i32 [ %41, %.critedge.preheader ], [ %.pre1, %._crit_edge18 ], [ %54, %.preheader8.loopexit ]
  %.pre-phi = phi i32* [ %40, %.critedge.preheader ], [ %21, %._crit_edge18 ], [ %40, %.preheader8.loopexit ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph15.preheader, label %.preheader7

.lr.ph15.preheader:                               ; preds = %.preheader8
  br label %.lr.ph15

; <label>:31                                      ; preds = %0
  %32 = sext i32 %19 to i64
  %33 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %32, i64 4)
  %34 = extractvalue { i64, i1 } %33, 1
  %35 = extractvalue { i64, i1 } %33, 0
  %36 = select i1 %34, i64 -1, i64 %35
  %37 = tail call noalias i8* @_Znam(i64 %36) #24
  %38 = bitcast i8* %37 to i32*
  %39 = icmp sgt i32 %19, 0
  br i1 %39, label %.lr.ph36.preheader, label %.critedge.preheader

.lr.ph36.preheader:                               ; preds = %31
  br label %.lr.ph36

.critedge.preheader.loopexit:                     ; preds = %.lr.ph36
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %31
  %costDenominator.0.lcssa = phi i32 [ 0, %31 ], [ %49, %.critedge.preheader.loopexit ]
  %40 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %.lr.ph32.preheader, label %.preheader8

.lr.ph32.preheader:                               ; preds = %.critedge.preheader
  br label %.lr.ph32

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.lr.ph36
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph36 ], [ 0, %.lr.ph36.preheader ]
  %costDenominator.033 = phi i32 [ %49, %.lr.ph36 ], [ 0, %.lr.ph36.preheader ]
  %43 = trunc i64 %indvars.iv45 to i32
  %44 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %43)
  store i32 0, i32* %44, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %45 = trunc i64 %indvars.iv.next46 to i32
  %46 = tail call double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %45, i32 %balance)
  %47 = sitofp i32 %costDenominator.033 to double
  %48 = fadd double %47, %46
  %49 = fptosi double %48 to i32
  %50 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv45
  store i32 %49, i32* %50, align 4, !tbaa !5
  %51 = load i32, i32* %1, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next46, %52
  br i1 %53, label %.lr.ph36, label %.critedge.preheader.loopexit

.critedge.loopexit.loopexit:                      ; preds = %.lr.ph28
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexit.loopexit, %119
  %54 = phi i32 [ %122, %119 ], [ %127, %.critedge.loopexit.loopexit ]
  %nextIndex.2.lcssa = phi i32 [ %nextIndex.131, %119 ], [ %125, %.critedge.loopexit.loopexit ]
  %55 = icmp slt i32 %nextIndex.2.lcssa, %54
  br i1 %55, label %.lr.ph32, label %.preheader8.loopexit

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.critedge.loopexit
  %nextIndex.131 = phi i32 [ %nextIndex.2.lcssa, %.critedge.loopexit ], [ 0, %.lr.ph32.preheader ]
  %lastReg.030 = phi i32 [ %regionNum.0.lcssa, %.critedge.loopexit ], [ -1, %.lr.ph32.preheader ]
  %56 = tail call i32 @rand() #2
  %57 = srem i32 %56, %costDenominator.0.lcssa
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph32
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %58 ], [ 0, %.lr.ph32 ]
  %59 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv41
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp slt i32 %57, %60
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br i1 %61, label %62, label %58

; <label>:62                                      ; preds = %58
  %63 = trunc i64 %indvars.iv41 to i32
  %64 = load i32, i32* %1, align 4, !tbaa !5
  %65 = srem i32 %63, %64
  %regionNum.019 = add nsw i32 %65, 1
  %66 = icmp eq i32 %regionNum.019, %lastReg.030
  %67 = tail call i32 @rand() #2
  br i1 %66, label %.lr.ph21.preheader, label %._crit_edge22

.lr.ph21.preheader:                               ; preds = %62
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %74
  %68 = phi i32 [ %79, %74 ], [ %67, %.lr.ph21.preheader ]
  %69 = srem i32 %68, %costDenominator.0.lcssa
  br label %70

; <label>:70                                      ; preds = %70, %.lr.ph21
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %70 ], [ 0, %.lr.ph21 ]
  %71 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv43
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %73 = icmp slt i32 %69, %72
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br i1 %73, label %74, label %70

; <label>:74                                      ; preds = %70
  %75 = trunc i64 %indvars.iv43 to i32
  %76 = load i32, i32* %1, align 4, !tbaa !5
  %77 = srem i32 %75, %76
  %regionNum.0 = add nsw i32 %77, 1
  %78 = icmp eq i32 %regionNum.0, %lastReg.030
  %79 = tail call i32 @rand() #2
  br i1 %78, label %.lr.ph21, label %._crit_edge22.loopexit

._crit_edge22.loopexit:                           ; preds = %74
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge22.loopexit, %62
  %.lcssa10 = phi i32 [ %67, %62 ], [ %79, %._crit_edge22.loopexit ]
  %regionNum.0.lcssa = phi i32 [ %regionNum.019, %62 ], [ %regionNum.0, %._crit_edge22.loopexit ]
  %80 = srem i32 %.lcssa10, 1000
  %81 = icmp slt i32 %80, 773
  br i1 %81, label %82, label %86

; <label>:82                                      ; preds = %._crit_edge22
  %83 = tail call i32 @rand() #2
  %84 = srem i32 %83, 15
  %85 = add nsw i32 %84, 1
  br label %119

; <label>:86                                      ; preds = %._crit_edge22
  %87 = icmp slt i32 %80, 937
  br i1 %87, label %88, label %92

; <label>:88                                      ; preds = %86
  %89 = tail call i32 @rand() #2
  %90 = srem i32 %89, 16
  %91 = add nsw i32 %90, 16
  br label %119

; <label>:92                                      ; preds = %86
  %93 = icmp slt i32 %80, 970
  br i1 %93, label %94, label %98

; <label>:94                                      ; preds = %92
  %95 = tail call i32 @rand() #2
  %96 = srem i32 %95, 32
  %97 = add nsw i32 %96, 32
  br label %119

; <label>:98                                      ; preds = %92
  %99 = icmp slt i32 %80, 974
  br i1 %99, label %100, label %104

; <label>:100                                     ; preds = %98
  %101 = tail call i32 @rand() #2
  %102 = srem i32 %101, 64
  %103 = add nsw i32 %102, 64
  br label %119

; <label>:104                                     ; preds = %98
  %105 = icmp slt i32 %80, 978
  br i1 %105, label %106, label %110

; <label>:106                                     ; preds = %104
  %107 = tail call i32 @rand() #2
  %108 = srem i32 %107, 128
  %109 = add nsw i32 %108, 128
  br label %119

; <label>:110                                     ; preds = %104
  %111 = icmp slt i32 %80, 981
  %112 = tail call i32 @rand() #2
  br i1 %111, label %113, label %116

; <label>:113                                     ; preds = %110
  %114 = srem i32 %112, 256
  %115 = add nsw i32 %114, 256
  br label %119

; <label>:116                                     ; preds = %110
  %117 = srem i32 %112, 1537
  %118 = add nsw i32 %117, 512
  br label %119

; <label>:119                                     ; preds = %116, %113, %106, %100, %94, %88, %82
  %elements.0 = phi i32 [ %85, %82 ], [ %91, %88 ], [ %97, %94 ], [ %103, %100 ], [ %109, %106 ], [ %115, %113 ], [ %118, %116 ]
  %120 = add nsw i32 %elements.0, %nextIndex.131
  %121 = icmp sgt i32 %elements.0, 0
  %122 = load i32, i32* %40, align 4
  %123 = icmp slt i32 %nextIndex.131, %122
  %or.cond25 = and i1 %121, %123
  br i1 %or.cond25, label %.lr.ph28.preheader, label %.critedge.loopexit

.lr.ph28.preheader:                               ; preds = %119
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %.lr.ph28
  %nextIndex.226 = phi i32 [ %125, %.lr.ph28 ], [ %nextIndex.131, %.lr.ph28.preheader ]
  %124 = tail call dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %nextIndex.226)
  store i32 %regionNum.0.lcssa, i32* %124, align 4, !tbaa !5
  %125 = add nsw i32 %nextIndex.226, 1
  %126 = icmp slt i32 %125, %120
  %127 = load i32, i32* %40, align 4
  %128 = icmp slt i32 %125, %127
  %or.cond = and i1 %126, %128
  br i1 %or.cond, label %.lr.ph28, label %.critedge.loopexit.loopexit

.preheader7.loopexit:                             ; preds = %.lr.ph15
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit, %.preheader8
  %129 = phi i32 [ %29, %.preheader8 ], [ %139, %.preheader7.loopexit ]
  %130 = load i32, i32* %1, align 4, !tbaa !5
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %.lr.ph13.preheader, label %.preheader

.lr.ph13.preheader:                               ; preds = %.preheader7
  br label %.lr.ph13

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15
  %i2.014 = phi i32 [ %138, %.lr.ph15 ], [ 0, %.lr.ph15.preheader ]
  %132 = tail call dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %i2.014)
  %133 = load i32, i32* %132, align 4, !tbaa !5
  %134 = add nsw i32 %133, -1
  %135 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %134)
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4, !tbaa !5
  %138 = add nuw nsw i32 %i2.014, 1
  %139 = load i32, i32* %.pre-phi, align 4, !tbaa !5
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %.lr.ph15, label %.preheader7.loopexit

.preheader:                                       ; preds = %.lr.ph13..preheader_crit_edge, %.preheader7
  %141 = phi i32 [ %.pre, %.lr.ph13..preheader_crit_edge ], [ %129, %.preheader7 ]
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %.lr.ph13
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph13 ], [ 0, %.lr.ph13.preheader ]
  %143 = trunc i64 %indvars.iv to i32
  %144 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %143)
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = sext i32 %145 to i64
  %147 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %146, i64 4)
  %148 = extractvalue { i64, i1 } %147, 1
  %149 = extractvalue { i64, i1 } %147, 0
  %150 = select i1 %148, i64 -1, i64 %149
  %151 = tail call noalias i8* @_Znam(i64 %150) #24
  %152 = load i32**, i32*** %17, align 8, !tbaa !47
  %153 = getelementptr inbounds i32*, i32** %152, i64 %indvars.iv
  %154 = bitcast i32** %153 to i8**
  store i8* %151, i8** %154, align 8, !tbaa !32
  %155 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %143)
  store i32 0, i32* %155, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %156 = load i32, i32* %1, align 4, !tbaa !5
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %indvars.iv.next, %157
  br i1 %158, label %.lr.ph13, label %.lr.ph13..preheader_crit_edge

.lr.ph13..preheader_crit_edge:                    ; preds = %.lr.ph13
  %.pre = load i32, i32* %.pre-phi, align 4, !tbaa !5
  br label %.preheader

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i4.011 = phi i32 [ %166, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %159 = tail call dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %i4.011)
  %160 = load i32, i32* %159, align 4, !tbaa !5
  %161 = add nsw i32 %160, -1
  %162 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %161)
  %163 = load i32, i32* %162, align 4, !tbaa !5
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4, !tbaa !5
  %165 = tail call dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this, i32 %161, i32 %163)
  store i32 %i4.011, i32* %165, align 4, !tbaa !5
  %166 = add nuw nsw i32 %i4.011, 1
  %167 = load i32, i32* %.pre-phi, align 4, !tbaa !5
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: nounwind
declare void @srand(i32) #10

; Function Attrs: norecurse nounwind readonly uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* nocapture readonly %this, i32 %idx) #3 comdat align 2 {
  %1 = sext i32 %idx to i64
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 19
  %3 = load i32*, i32** %2, align 8, !tbaa !72
  %4 = getelementptr inbounds i32, i32* %3, i64 %1
  ret i32* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %__x, i32 %__y) #8 comdat {
  %1 = sitofp i32 %__x to double
  %2 = sitofp i32 %__y to double
  %3 = tail call double @pow(double %1, double %2) #2
  ret double %3
}

; Function Attrs: nounwind
declare double @pow(double, double) #10

; Function Attrs: nounwind
declare i32 @rand() #10

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* nocapture readonly %this, i32 %edgeNodes) #16 align 2 {
  %1 = icmp sgt i32 %edgeNodes, 0
  br i1 %1, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %0
  %2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 15
  %4 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %5 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 14
  %6 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %7 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 13
  br label %.lr.ph.preheader

._crit_edge7.loopexit:                            ; preds = %._crit_edge.loopexit
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %0
  ret void

.lr.ph.preheader:                                 ; preds = %._crit_edge.loopexit, %.lr.ph6
  %nidx.04 = phi i32 [ 0, %.lr.ph6 ], [ %11, %._crit_edge.loopexit ]
  %i.03 = phi i32 [ 0, %.lr.ph6 ], [ %12, %._crit_edge.loopexit ]
  %8 = mul nsw i32 %i.03, %edgeNodes
  %9 = mul nsw i32 %8, %edgeNodes
  %10 = sext i32 %nidx.04 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %31
  %11 = add i32 %nidx.04, %edgeNodes
  %12 = add nuw nsw i32 %i.03, 1
  %exitcond8 = icmp eq i32 %12, %edgeNodes
  br i1 %exitcond8, label %._crit_edge7.loopexit, label %.lr.ph.preheader

.lr.ph:                                           ; preds = %31, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %10, %.lr.ph.preheader ], [ %indvars.iv.next, %31 ]
  %j.02 = phi i32 [ 0, %.lr.ph.preheader ], [ %32, %31 ]
  %13 = load i32, i32* %2, align 4, !tbaa !66
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %.lr.ph
  %16 = add nsw i32 %j.02, %8
  %17 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* nonnull %3, i64 %indvars.iv)
  store i32 %16, i32* %17, align 4, !tbaa !5
  br label %18

; <label>:18                                      ; preds = %15, %.lr.ph
  %19 = load i32, i32* %4, align 8, !tbaa !65
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %18
  %22 = add nsw i32 %j.02, %9
  %23 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* nonnull %5, i64 %indvars.iv)
  store i32 %22, i32* %23, align 4, !tbaa !5
  br label %24

; <label>:24                                      ; preds = %21, %18
  %25 = load i32, i32* %6, align 4, !tbaa !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %24
  %28 = mul nsw i32 %j.02, %edgeNodes
  %29 = add nsw i32 %28, %9
  %30 = tail call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* nonnull %7, i64 %indvars.iv)
  store i32 %29, i32* %30, align 4, !tbaa !5
  br label %31

; <label>:31                                      ; preds = %27, %24
  %32 = add nuw nsw i32 %j.02, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %32, %edgeNodes
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* readonly %this, i32 %edgeElems) #16 align 2 {
  %1 = tail call dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 0)
  store i32 0, i32* %1, align 4, !tbaa !5
  %2 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %.lr.ph19.preheader, label %._crit_edge20

.lr.ph19.preheader:                               ; preds = %0
  br label %.lr.ph19

._crit_edge20.loopexit:                           ; preds = %.lr.ph19
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %0
  %.lcssa8 = phi i32 [ %3, %0 ], [ %12, %._crit_edge20.loopexit ]
  %5 = add nsw i32 %.lcssa8, -1
  %6 = tail call dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %5)
  store i32 %5, i32* %6, align 4, !tbaa !5
  %7 = icmp sgt i32 %edgeElems, 0
  br i1 %7, label %.lr.ph16.preheader, label %.preheader6

.lr.ph16.preheader:                               ; preds = %._crit_edge20
  br label %.lr.ph16

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %.lr.ph19
  %i.017 = phi i32 [ %11, %.lr.ph19 ], [ 1, %.lr.ph19.preheader ]
  %8 = add nsw i32 %i.017, -1
  %9 = tail call dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %i.017)
  store i32 %8, i32* %9, align 4, !tbaa !5
  %10 = tail call dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %8)
  store i32 %i.017, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i32 %i.017, 1
  %12 = load i32, i32* %2, align 4, !tbaa !5
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %.lr.ph19, label %._crit_edge20.loopexit

.preheader6.loopexit:                             ; preds = %.lr.ph16
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %._crit_edge20
  %14 = load i32, i32* %2, align 4, !tbaa !5
  %15 = icmp sgt i32 %14, %edgeElems
  br i1 %15, label %.lr.ph13.preheader, label %.preheader5

.lr.ph13.preheader:                               ; preds = %.preheader6
  br label %.lr.ph13

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %.lr.ph16
  %i1.014 = phi i32 [ %21, %.lr.ph16 ], [ 0, %.lr.ph16.preheader ]
  %16 = tail call dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %i1.014)
  store i32 %i1.014, i32* %16, align 4, !tbaa !5
  %17 = load i32, i32* %2, align 4, !tbaa !5
  %18 = sub nsw i32 %17, %edgeElems
  %19 = add nsw i32 %18, %i1.014
  %20 = tail call dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %19)
  store i32 %19, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i32 %i1.014, 1
  %exitcond = icmp eq i32 %21, %edgeElems
  br i1 %exitcond, label %.preheader6.loopexit, label %.lr.ph16

.preheader5.loopexit:                             ; preds = %.lr.ph13
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit, %.preheader6
  %22 = phi i32 [ %14, %.preheader6 ], [ %29, %.preheader5.loopexit ]
  %23 = mul nsw i32 %edgeElems, %edgeElems
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %.preheader, label %.lr.ph11.preheader

.lr.ph11.preheader:                               ; preds = %.preheader5
  br label %.lr.ph11

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %.lr.ph13
  %i2.012 = phi i32 [ %28, %.lr.ph13 ], [ %edgeElems, %.lr.ph13.preheader ]
  %25 = sub nsw i32 %i2.012, %edgeElems
  %26 = tail call dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %i2.012)
  store i32 %25, i32* %26, align 4, !tbaa !5
  %27 = tail call dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %25)
  store i32 %i2.012, i32* %27, align 4, !tbaa !5
  %28 = add nsw i32 %i2.012, 1
  %29 = load i32, i32* %2, align 4, !tbaa !5
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %.lr.ph13, label %.preheader5.loopexit

.preheader:                                       ; preds = %.lr.ph11..preheader_crit_edge, %.preheader5
  %31 = phi i32 [ %.pre, %.lr.ph11..preheader_crit_edge ], [ %22, %.preheader5 ]
  %32 = icmp slt i32 %23, %31
  br i1 %32, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.lr.ph11
  %i3.010 = phi i32 [ %38, %.lr.ph11 ], [ 0, %.lr.ph11.preheader ]
  %33 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %i3.010)
  store i32 %i3.010, i32* %33, align 4, !tbaa !5
  %34 = load i32, i32* %2, align 4, !tbaa !5
  %35 = sub nsw i32 %34, %23
  %36 = add nsw i32 %35, %i3.010
  %37 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %36)
  store i32 %36, i32* %37, align 4, !tbaa !5
  %38 = add nuw nsw i32 %i3.010, 1
  %39 = icmp slt i32 %38, %23
  br i1 %39, label %.lr.ph11, label %.lr.ph11..preheader_crit_edge

.lr.ph11..preheader_crit_edge:                    ; preds = %.lr.ph11
  %.pre = load i32, i32* %2, align 4, !tbaa !5
  br label %.preheader

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i4.09 = phi i32 [ %43, %.lr.ph ], [ %23, %.lr.ph.preheader ]
  %40 = sub nsw i32 %i4.09, %23
  %41 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %i4.09)
  store i32 %40, i32* %41, align 4, !tbaa !5
  %42 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %40)
  store i32 %i4.09, i32* %42, align 4, !tbaa !5
  %43 = add nsw i32 %i4.09, 1
  %44 = load i32, i32* %2, align 4, !tbaa !5
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* readonly %this, i32 %edgeElems) #16 align 2 {
  %ghostIdx = alloca [6 x i32], align 16
  %1 = bitcast [6 x i32]* %ghostIdx to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = tail call dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph11.preheader, label %.preheader3.preheader

.lr.ph11.preheader:                               ; preds = %0
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.lr.ph11
  %i.09 = phi i32 [ %6, %.lr.ph11 ], [ 0, %.lr.ph11.preheader ]
  %5 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %i.09)
  store i32 0, i32* %5, align 4, !tbaa !5
  %6 = add nuw nsw i32 %i.09, 1
  %7 = load i32, i32* %2, align 4, !tbaa !5
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph11, label %.preheader3.preheader.loopexit

.preheader3.preheader.loopexit:                   ; preds = %.lr.ph11
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader3.preheader.loopexit, %0
  %.ph = phi i32 [ %3, %0 ], [ %7, %.preheader3.preheader.loopexit ]
  br label %.preheader3

; <label>:9                                       ; preds = %.preheader3
  %10 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 98
  %11 = bitcast i32* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  %15 = lshr i64 %12, 32
  %16 = trunc i64 %15 to i32
  br i1 %14, label %26, label %18

.preheader3:                                      ; preds = %.preheader3.preheader, %.preheader3
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader3 ], [ 0, %.preheader3.preheader ]
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 %indvars.iv
  store i32 -2147483648, i32* %17, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond13, label %9, label %.preheader3

; <label>:18                                      ; preds = %9
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  store i32 %.ph, i32* %19, align 16, !tbaa !5
  %20 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %this)
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* nonnull %this)
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, %.ph
  br label %26

; <label>:26                                      ; preds = %18, %9
  %pidx.0 = phi i32 [ %25, %18 ], [ %.ph, %9 ]
  %27 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 99
  %28 = icmp eq i32 %16, 0
  br i1 %28, label %37, label %29

; <label>:29                                      ; preds = %26
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  store i32 %pidx.0, i32* %30, align 4, !tbaa !5
  %31 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %this)
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* nonnull %this)
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = mul nsw i32 %34, %32
  %36 = add nsw i32 %35, %pidx.0
  br label %37

; <label>:37                                      ; preds = %29, %26
  %pidx.1 = phi i32 [ %36, %29 ], [ %pidx.0, %26 ]
  %38 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 94
  %39 = bitcast i32* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  %43 = lshr i64 %40, 32
  %44 = trunc i64 %43 to i32
  br i1 %42, label %53, label %45

; <label>:45                                      ; preds = %37
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  store i32 %pidx.1, i32* %46, align 8, !tbaa !5
  %47 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %this)
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* nonnull %this)
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = mul nsw i32 %50, %48
  %52 = add nsw i32 %51, %pidx.1
  br label %53

; <label>:53                                      ; preds = %45, %37
  %pidx.2 = phi i32 [ %52, %45 ], [ %pidx.1, %37 ]
  %54 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 95
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %64, label %56

; <label>:56                                      ; preds = %53
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  store i32 %pidx.2, i32* %57, align 4, !tbaa !5
  %58 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* nonnull %this)
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* nonnull %this)
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = mul nsw i32 %61, %59
  %63 = add nsw i32 %62, %pidx.2
  br label %64

; <label>:64                                      ; preds = %56, %53
  %pidx.3 = phi i32 [ %63, %56 ], [ %pidx.2, %53 ]
  %65 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 96
  %66 = bitcast i32* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 0
  %70 = lshr i64 %67, 32
  %71 = trunc i64 %70 to i32
  br i1 %69, label %80, label %72

; <label>:72                                      ; preds = %64
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  store i32 %pidx.3, i32* %73, align 16, !tbaa !5
  %74 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* nonnull %this)
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = tail call dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* nonnull %this)
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = mul nsw i32 %77, %75
  %79 = add nsw i32 %78, %pidx.3
  br label %80

; <label>:80                                      ; preds = %72, %64
  %pidx.4 = phi i32 [ %79, %72 ], [ %pidx.3, %64 ]
  %81 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 97
  %82 = icmp eq i32 %71, 0
  br i1 %82, label %.preheader, label %83

; <label>:83                                      ; preds = %80
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  store i32 %pidx.4, i32* %84, align 4, !tbaa !5
  br label %.preheader

.preheader:                                       ; preds = %83, %80
  %85 = icmp sgt i32 %edgeElems, 0
  br i1 %85, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %.preheader
  %86 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 83
  %87 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 84
  %88 = mul nsw i32 %edgeElems, %edgeElems
  %89 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 82
  %90 = sub i32 %88, %edgeElems
  %91 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 81
  %92 = add i32 %edgeElems, -1
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  %94 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  %96 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  %99 = load i32, i32* %93, align 4
  %100 = load i32, i32* %94, align 16
  %101 = load i32, i32* %95, align 4
  %102 = load i32, i32* %96, align 8
  %103 = load i32, i32* %97, align 4
  %104 = load i32, i32* %98, align 16
  br label %.lr.ph.preheader

._crit_edge7.loopexit:                            ; preds = %._crit_edge
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %.preheader
  call void @llvm.lifetime.end(i64 24, i8* %1) #2
  ret void

.lr.ph.preheader:                                 ; preds = %._crit_edge, %.lr.ph6
  %i2.05 = phi i32 [ 0, %.lr.ph6 ], [ %107, %._crit_edge ]
  %105 = mul nsw i32 %i2.05, %edgeElems
  %106 = mul nsw i32 %105, %edgeElems
  br label %.lr.ph

._crit_edge:                                      ; preds = %190
  %107 = add nuw nsw i32 %i2.05, 1
  %exitcond12 = icmp eq i32 %107, %edgeElems
  br i1 %exitcond12, label %._crit_edge7.loopexit, label %.lr.ph.preheader

.lr.ph:                                           ; preds = %190, %.lr.ph.preheader
  %j.04 = phi i32 [ %191, %190 ], [ 0, %.lr.ph.preheader ]
  %108 = load i32, i32* %86, align 4, !tbaa !66
  %109 = icmp eq i32 %108, 0
  %110 = add i32 %j.04, %105
  %111 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %110)
  %112 = load i32, i32* %111, align 4, !tbaa !5
  br i1 %109, label %113, label %115

; <label>:113                                     ; preds = %.lr.ph
  %114 = or i32 %112, 4096
  store i32 %114, i32* %111, align 4, !tbaa !5
  br label %119

; <label>:115                                     ; preds = %.lr.ph
  %116 = or i32 %112, 16384
  store i32 %116, i32* %111, align 4, !tbaa !5
  %117 = add i32 %110, %104
  %118 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* nonnull %this, i32 %110)
  store i32 %117, i32* %118, align 4, !tbaa !5
  br label %119

; <label>:119                                     ; preds = %115, %113
  %120 = load i32, i32* %86, align 4, !tbaa !66
  %121 = load i32, i32* %87, align 8, !tbaa !62
  %122 = add nsw i32 %121, -1
  %123 = icmp eq i32 %120, %122
  %124 = load i32, i32* %2, align 4, !tbaa !5
  %125 = sub i32 %110, %88
  %126 = add i32 %125, %124
  %127 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %this, i32 %126)
  %128 = load i32, i32* %127, align 4, !tbaa !5
  br i1 %123, label %129, label %131

; <label>:129                                     ; preds = %119
  %130 = or i32 %128, 65536
  store i32 %130, i32* %127, align 4, !tbaa !5
  br label %137

; <label>:131                                     ; preds = %119
  %132 = or i32 %128, 131072
  store i32 %132, i32* %127, align 4, !tbaa !5
  %133 = add i32 %110, %103
  %134 = load i32, i32* %2, align 4, !tbaa !5
  %135 = add i32 %125, %134
  %136 = tail call dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* nonnull %this, i32 %135)
  store i32 %133, i32* %136, align 4, !tbaa !5
  br label %137

; <label>:137                                     ; preds = %131, %129
  %138 = load i32, i32* %89, align 8, !tbaa !65
  %139 = icmp eq i32 %138, 0
  %140 = add nsw i32 %j.04, %106
  %141 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %this, i32 %140)
  %142 = load i32, i32* %141, align 4, !tbaa !5
  br i1 %139, label %143, label %145

; <label>:143                                     ; preds = %137
  %144 = or i32 %142, 64
  store i32 %144, i32* %141, align 4, !tbaa !5
  br label %149

; <label>:145                                     ; preds = %137
  %146 = or i32 %142, 256
  store i32 %146, i32* %141, align 4, !tbaa !5
  %147 = add i32 %110, %102
  %148 = tail call dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* nonnull %this, i32 %140)
  store i32 %147, i32* %148, align 4, !tbaa !5
  br label %149

; <label>:149                                     ; preds = %145, %143
  %150 = load i32, i32* %89, align 8, !tbaa !65
  %151 = load i32, i32* %87, align 8, !tbaa !62
  %152 = add nsw i32 %151, -1
  %153 = icmp eq i32 %150, %152
  %154 = add i32 %90, %140
  %155 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %this, i32 %154)
  %156 = load i32, i32* %155, align 4, !tbaa !5
  br i1 %153, label %157, label %159

; <label>:157                                     ; preds = %149
  %158 = or i32 %156, 1024
  store i32 %158, i32* %155, align 4, !tbaa !5
  br label %163

; <label>:159                                     ; preds = %149
  %160 = or i32 %156, 2048
  store i32 %160, i32* %155, align 4, !tbaa !5
  %161 = add i32 %110, %101
  %162 = tail call dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* nonnull %this, i32 %154)
  store i32 %161, i32* %162, align 4, !tbaa !5
  br label %163

; <label>:163                                     ; preds = %159, %157
  %164 = load i32, i32* %91, align 4, !tbaa !64
  %165 = icmp eq i32 %164, 0
  %166 = mul nsw i32 %j.04, %edgeElems
  %167 = add nsw i32 %166, %106
  %168 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %this, i32 %167)
  %169 = load i32, i32* %168, align 4, !tbaa !5
  br i1 %165, label %170, label %172

; <label>:170                                     ; preds = %163
  %171 = or i32 %169, 1
  store i32 %171, i32* %168, align 4, !tbaa !5
  br label %176

; <label>:172                                     ; preds = %163
  %173 = or i32 %169, 4
  store i32 %173, i32* %168, align 4, !tbaa !5
  %174 = add i32 %110, %100
  %175 = tail call dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* nonnull %this, i32 %167)
  store i32 %174, i32* %175, align 4, !tbaa !5
  br label %176

; <label>:176                                     ; preds = %172, %170
  %177 = load i32, i32* %91, align 4, !tbaa !64
  %178 = load i32, i32* %87, align 8, !tbaa !62
  %179 = add nsw i32 %178, -1
  %180 = icmp eq i32 %177, %179
  %181 = add i32 %92, %167
  %182 = tail call dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* nonnull %this, i32 %181)
  %183 = load i32, i32* %182, align 4, !tbaa !5
  br i1 %180, label %184, label %186

; <label>:184                                     ; preds = %176
  %185 = or i32 %183, 16
  store i32 %185, i32* %182, align 4, !tbaa !5
  br label %190

; <label>:186                                     ; preds = %176
  %187 = or i32 %183, 32
  store i32 %187, i32* %182, align 4, !tbaa !5
  %188 = add i32 %110, %99
  %189 = tail call dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* nonnull %this, i32 %181)
  store i32 %188, i32* %189, align 4, !tbaa !5
  br label %190

; <label>:190                                     ; preds = %186, %184
  %191 = add nuw nsw i32 %j.04, 1
  %exitcond = icmp eq i32 %191, %edgeElems
  br i1 %exitcond, label %._crit_edge, label %.lr.ph
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* nocapture readonly %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* nocapture readonly %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i64 0, i32 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !7
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i64 0, i32 0, i32 2
  %4 = bitcast i32** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !75
  %6 = ptrtoint i32* %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this, i32* %2, i64 %8)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #23 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: norecurse nounwind uwtable
define void @_ZN6Domain28SetupThreadSupportStructuresEv(%class.Domain* nocapture %this) #16 align 2 {
  %1 = getelementptr inbounds %class.Domain, %class.Domain* %this, i64 0, i32 92
  %2 = bitcast i32** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z14InitMeshDecompiiPiS_S_S_(i32 %numRanks, i32 %myRank, i32* nocapture %col, i32* nocapture %row, i32* nocapture %plane, i32* nocapture %side) #5 {
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
  tail call void @exit(i32 -1) #26
  unreachable

; <label>:9                                       ; preds = %0
  %10 = icmp sgt i32 0, %myRank
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = mul nsw i32 2, %myRank
  br label %14

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13, %11
  %myDom.0 = phi i32 [ %12, %11 ], [ %myRank, %13 ]
  %15 = srem i32 %myDom.0, %4
  store i32 %15, i32* %col, align 4, !tbaa !5
  %16 = sdiv i32 %myDom.0, %4
  %17 = srem i32 %16, %4
  store i32 %17, i32* %row, align 4, !tbaa !5
  %18 = sdiv i32 %myDom.0, %5
  store i32 %18, i32* %plane, align 4, !tbaa !5
  store i32 %4, i32* %side, align 4, !tbaa !5
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { inlinehint norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inlinehint nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readnone }
attributes #23 = { noinline noreturn nounwind }
attributes #24 = { builtin }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !9, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"any pointer", !3, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !10, i64 0, !10, i64 8, !10, i64 16}
!14 = !{!15, !6, i64 0}
!15 = !{!"_ZTS11cmdLineOpts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!15, !6, i64 4}
!17 = !{!15, !6, i64 8}
!18 = !{!15, !6, i64 12}
!19 = !{!15, !6, i64 16}
!20 = !{!15, !6, i64 20}
!21 = !{!15, !6, i64 24}
!22 = !{!15, !6, i64 32}
!23 = !{!15, !6, i64 28}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTS7timeval", !26, i64 0, !26, i64 8}
!26 = !{!"long", !3, i64 0}
!27 = !{!25, !26, i64 8}
!28 = !{!29, !2, i64 1168}
!29 = !{!"_ZTS6Domain", !30, i64 0, !30, i64 24, !30, i64 48, !30, i64 72, !30, i64 96, !30, i64 120, !30, i64 144, !30, i64 168, !30, i64 192, !30, i64 216, !30, i64 240, !30, i64 264, !30, i64 288, !31, i64 312, !31, i64 336, !31, i64 360, !6, i64 384, !6, i64 388, !10, i64 392, !10, i64 400, !10, i64 408, !31, i64 416, !31, i64 440, !31, i64 464, !31, i64 488, !31, i64 512, !31, i64 536, !31, i64 560, !31, i64 584, !30, i64 608, !30, i64 632, !30, i64 656, !30, i64 680, !30, i64 704, !30, i64 728, !30, i64 752, !30, i64 776, !30, i64 800, !30, i64 824, !30, i64 848, !30, i64 872, !30, i64 896, !30, i64 920, !30, i64 944, !30, i64 968, !30, i64 992, !30, i64 1016, !30, i64 1040, !30, i64 1064, !30, i64 1088, !30, i64 1112, !2, i64 1136, !2, i64 1144, !2, i64 1152, !2, i64 1160, !2, i64 1168, !2, i64 1176, !2, i64 1184, !2, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !2, i64 1240, !2, i64 1248, !2, i64 1256, !2, i64 1264, !2, i64 1272, !2, i64 1280, !2, i64 1288, !2, i64 1296, !6, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !2, i64 1336, !2, i64 1344, !2, i64 1352, !2, i64 1360, !6, i64 1368, !6, i64 1372, !6, i64 1376, !6, i64 1380, !6, i64 1384, !6, i64 1388, !6, i64 1392, !6, i64 1396, !6, i64 1400, !6, i64 1404, !6, i64 1408, !6, i64 1412, !10, i64 1416, !10, i64 1424, !6, i64 1432, !6, i64 1436, !6, i64 1440, !6, i64 1444, !6, i64 1448, !6, i64 1452}
!30 = !{!"_ZTSSt6vectorIdSaIdEE"}
!31 = !{!"_ZTSSt6vectorIiSaIiEE"}
!32 = !{!10, !10, i64 0}
!33 = !{!29, !2, i64 1176}
!34 = !{!35, !10, i64 0}
!35 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !10, i64 0}
!36 = !{!8, !10, i64 8}
!37 = !{!12, !10, i64 8}
!38 = !{!39, !10, i64 0}
!39 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !10, i64 0}
!40 = !{!12, !10, i64 16}
!41 = !{!26, !26, i64 0}
!42 = !{!29, !10, i64 392}
!43 = !{!29, !2, i64 1208}
!44 = !{!29, !2, i64 1200}
!45 = !{!29, !2, i64 1216}
!46 = !{!29, !2, i64 1224}
!47 = !{!29, !10, i64 408}
!48 = !{!29, !2, i64 1192}
!49 = !{!29, !2, i64 1248}
!50 = !{!29, !2, i64 1240}
!51 = !{!29, !2, i64 1136}
!52 = !{!29, !2, i64 1144}
!53 = !{!29, !2, i64 1152}
!54 = !{!29, !2, i64 1256}
!55 = !{!29, !2, i64 1264}
!56 = !{!29, !2, i64 1280}
!57 = !{!29, !2, i64 1160}
!58 = !{!29, !2, i64 1232}
!59 = !{!29, !2, i64 1272}
!60 = !{!3, !3, i64 0}
!61 = !{!29, !2, i64 1184}
!62 = !{!29, !6, i64 1384}
!63 = !{!29, !6, i64 1368}
!64 = !{!29, !6, i64 1372}
!65 = !{!29, !6, i64 1376}
!66 = !{!29, !6, i64 1380}
!67 = !{!29, !6, i64 1388}
!68 = !{!29, !6, i64 1392}
!69 = !{!29, !6, i64 1396}
!70 = !{!29, !6, i64 1400}
!71 = !{!29, !6, i64 1404}
!72 = !{!29, !10, i64 400}
!73 = !{!74, !10, i64 0}
!74 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !10, i64 0}
!75 = !{!8, !10, i64 16}
!76 = !{!29, !6, i64 1408}
!77 = !{!29, !6, i64 1412}
!78 = !{!29, !6, i64 1432}
!79 = !{!29, !6, i64 1436}
!80 = !{!29, !6, i64 1440}
!81 = !{!29, !6, i64 1444}
!82 = !{!29, !6, i64 1448}
!83 = !{!29, !6, i64 1452}
