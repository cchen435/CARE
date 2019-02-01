; ModuleID = 'smooth_g_6.0.ll'
source_filename = "smooth.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @smooth(i32*, i32*, i32*, double*, double*, double*, i32) #0 !dbg !12 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32* %1, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata double* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata double* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata double* %5, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 %6, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 1, metadata !29, metadata !DIExpression()), !dbg !31
  br label %8, !dbg !32

; <label>:8:                                      ; preds = %10, %7
  %.0 = phi i32 [ 1, %7 ], [ %26, %10 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !29, metadata !DIExpression()), !dbg !31
  %9 = icmp slt i32 %.0, %6, !dbg !33
  br i1 %9, label %10, label %27, !dbg !35

; <label>:10:                                     ; preds = %8
  %11 = sext i32 %.0 to i64, !dbg !36
  %12 = getelementptr inbounds i32, i32* %0, i64 %11, !dbg !36
  %13 = load i32, i32* %12, align 4, !dbg !36
  %14 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !38
  %15 = load i32, i32* %14, align 4, !dbg !38
  %16 = add nsw i32 %13, %15, !dbg !39
  %17 = mul nsw i32 %16, 2, !dbg !40
  %18 = sub nsw i32 %17, 1, !dbg !41
  %19 = sext i32 %18 to i64, !dbg !42
  %20 = getelementptr inbounds double, double* %4, i64 %19, !dbg !42
  %21 = load double, double* %20, align 8, !dbg !42
  %22 = mul nsw i32 %13, 2, !dbg !43
  %23 = sub nsw i32 %22, 1, !dbg !44
  %24 = sext i32 %23 to i64, !dbg !45
  %25 = getelementptr inbounds double, double* %4, i64 %24, !dbg !45
  store double %21, double* %25, align 8, !dbg !46
  %26 = add nsw i32 %.0, 1, !dbg !47
  call void @llvm.dbg.value(metadata i32 %26, metadata !29, metadata !DIExpression()), !dbg !31
  br label %8, !dbg !48, !llvm.loop !49

; <label>:27:                                     ; preds = %8
  ret i32 0, !dbg !51
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !52 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i8** %1, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !62
  %4 = load i8*, i8** %3, align 8, !dbg !62
  %5 = call i32 @atoi(i8* %4) #4, !dbg !63
  call void @llvm.dbg.value(metadata i32 %5, metadata !64, metadata !DIExpression()), !dbg !65
  %6 = sext i32 %5 to i64, !dbg !66
  %7 = mul i64 4, %6, !dbg !67
  %8 = call noalias i8* @malloc(i64 %7) #5, !dbg !68
  %9 = bitcast i8* %8 to i32*, !dbg !69
  call void @llvm.dbg.value(metadata i32* %9, metadata !70, metadata !DIExpression()), !dbg !71
  %10 = call noalias i8* @malloc(i64 %7) #5, !dbg !72
  %11 = bitcast i8* %10 to i32*, !dbg !73
  call void @llvm.dbg.value(metadata i32* %11, metadata !74, metadata !DIExpression()), !dbg !75
  %12 = call noalias i8* @malloc(i64 %7) #5, !dbg !76
  %13 = bitcast i8* %12 to i32*, !dbg !77
  call void @llvm.dbg.value(metadata i32* %13, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !81
  br label %14, !dbg !82

; <label>:14:                                     ; preds = %16, %2
  %.0 = phi i32 [ 0, %2 ], [ %23, %16 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !80, metadata !DIExpression()), !dbg !81
  %15 = icmp slt i32 %.0, %5, !dbg !84
  br i1 %15, label %16, label %24, !dbg !86

; <label>:16:                                     ; preds = %14
  %17 = call i32 @rand() #5, !dbg !87
  %18 = srem i32 %17, %5, !dbg !89
  call void @llvm.dbg.value(metadata i32 %18, metadata !90, metadata !DIExpression()), !dbg !91
  %19 = sext i32 %.0 to i64, !dbg !92
  %20 = getelementptr inbounds i32, i32* %13, i64 %19, !dbg !92
  store i32 %18, i32* %20, align 4, !dbg !93
  %21 = getelementptr inbounds i32, i32* %11, i64 %19, !dbg !94
  store i32 %18, i32* %21, align 4, !dbg !95
  %22 = getelementptr inbounds i32, i32* %9, i64 %19, !dbg !96
  store i32 %18, i32* %22, align 4, !dbg !97
  %23 = add nsw i32 %.0, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %23, metadata !80, metadata !DIExpression()), !dbg !81
  br label %14, !dbg !99, !llvm.loop !100

; <label>:24:                                     ; preds = %14
  %25 = mul i64 8, %6, !dbg !102
  %26 = call noalias i8* @malloc(i64 %25) #5, !dbg !103
  %27 = bitcast i8* %26 to double*, !dbg !104
  call void @llvm.dbg.value(metadata double* %27, metadata !105, metadata !DIExpression()), !dbg !106
  %28 = call noalias i8* @malloc(i64 %25) #5, !dbg !107
  %29 = bitcast i8* %28 to double*, !dbg !108
  call void @llvm.dbg.value(metadata double* %29, metadata !109, metadata !DIExpression()), !dbg !110
  %30 = call noalias i8* @malloc(i64 %25) #5, !dbg !111
  %31 = bitcast i8* %30 to double*, !dbg !112
  call void @llvm.dbg.value(metadata double* %31, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !81
  br label %32, !dbg !115

; <label>:32:                                     ; preds = %34, %24
  %.1 = phi i32 [ 0, %24 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !80, metadata !DIExpression()), !dbg !81
  %33 = icmp slt i32 %.1, %5, !dbg !117
  br i1 %33, label %34, label %46, !dbg !119

; <label>:34:                                     ; preds = %32
  %35 = call i32 @rand() #5, !dbg !120
  %36 = sitofp i32 %35 to double, !dbg !122
  %37 = sext i32 %.1 to i64, !dbg !123
  %38 = getelementptr inbounds double, double* %27, i64 %37, !dbg !123
  store double %36, double* %38, align 8, !dbg !124
  %39 = call i32 @rand() #5, !dbg !125
  %40 = sitofp i32 %39 to double, !dbg !126
  %41 = getelementptr inbounds double, double* %29, i64 %37, !dbg !127
  store double %40, double* %41, align 8, !dbg !128
  %42 = call i32 @rand() #5, !dbg !129
  %43 = sitofp i32 %42 to double, !dbg !130
  %44 = getelementptr inbounds double, double* %31, i64 %37, !dbg !131
  store double %43, double* %44, align 8, !dbg !132
  %45 = add nsw i32 %.1, 1, !dbg !133
  call void @llvm.dbg.value(metadata i32 %45, metadata !80, metadata !DIExpression()), !dbg !81
  br label %32, !dbg !134, !llvm.loop !135

; <label>:46:                                     ; preds = %32
  %47 = call i32 @smooth(i32* %9, i32* %11, i32* %13, double* %27, double* %29, double* %31, i32 %5), !dbg !137
  ret i32 0, !dbg !138
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "smooth.c", directory: "/home/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!12 = distinct !DISubprogram(name: "smooth", scope: !1, file: !1, line: 4, type: !13, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !4, !4, !4, !6, !6, !6, !5}
!15 = !DILocalVariable(name: "igrid", arg: 1, scope: !12, file: !1, line: 4, type: !4)
!16 = !DILocation(line: 4, column: 17, scope: !12)
!17 = !DILocalVariable(name: "mtheta", arg: 2, scope: !12, file: !1, line: 4, type: !4)
!18 = !DILocation(line: 4, column: 29, scope: !12)
!19 = !DILocalVariable(name: "itran", arg: 3, scope: !12, file: !1, line: 4, type: !4)
!20 = !DILocation(line: 4, column: 42, scope: !12)
!21 = !DILocalVariable(name: "phism", arg: 4, scope: !12, file: !1, line: 4, type: !6)
!22 = !DILocation(line: 4, column: 57, scope: !12)
!23 = !DILocalVariable(name: "phitmp", arg: 5, scope: !12, file: !1, line: 4, type: !6)
!24 = !DILocation(line: 4, column: 72, scope: !12)
!25 = !DILocalVariable(name: "phi", arg: 6, scope: !12, file: !1, line: 5, type: !6)
!26 = !DILocation(line: 5, column: 20, scope: !12)
!27 = !DILocalVariable(name: "mpsi", arg: 7, scope: !12, file: !1, line: 5, type: !5)
!28 = !DILocation(line: 5, column: 29, scope: !12)
!29 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 40, type: !5)
!30 = distinct !DILexicalBlock(scope: !12, file: !1, line: 40, column: 3)
!31 = !DILocation(line: 40, column: 12, scope: !30)
!32 = !DILocation(line: 40, column: 8, scope: !30)
!33 = !DILocation(line: 40, column: 21, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 40, column: 3)
!35 = !DILocation(line: 40, column: 3, scope: !30)
!36 = !DILocation(line: 41, column: 40, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 40, column: 34)
!38 = !DILocation(line: 41, column: 51, scope: !37)
!39 = !DILocation(line: 41, column: 49, scope: !37)
!40 = !DILocation(line: 41, column: 62, scope: !37)
!41 = !DILocation(line: 41, column: 66, scope: !37)
!42 = !DILocation(line: 41, column: 32, scope: !37)
!43 = !DILocation(line: 41, column: 21, scope: !37)
!44 = !DILocation(line: 41, column: 25, scope: !37)
!45 = !DILocation(line: 41, column: 5, scope: !37)
!46 = !DILocation(line: 41, column: 30, scope: !37)
!47 = !DILocation(line: 40, column: 30, scope: !34)
!48 = !DILocation(line: 40, column: 3, scope: !34)
!49 = distinct !{!49, !35, !50}
!50 = !DILocation(line: 42, column: 3, scope: !30)
!51 = !DILocation(line: 55, column: 3, scope: !12)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !53, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!5, !5, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DILocalVariable(name: "argc", arg: 1, scope: !52, file: !1, line: 58, type: !5)
!59 = !DILocation(line: 58, column: 14, scope: !52)
!60 = !DILocalVariable(name: "argv", arg: 2, scope: !52, file: !1, line: 58, type: !55)
!61 = !DILocation(line: 58, column: 26, scope: !52)
!62 = !DILocation(line: 59, column: 21, scope: !52)
!63 = !DILocation(line: 59, column: 16, scope: !52)
!64 = !DILocalVariable(name: "mpsi", scope: !52, file: !1, line: 59, type: !5)
!65 = !DILocation(line: 59, column: 9, scope: !52)
!66 = !DILocation(line: 62, column: 42, scope: !52)
!67 = !DILocation(line: 62, column: 40, scope: !52)
!68 = !DILocation(line: 62, column: 21, scope: !52)
!69 = !DILocation(line: 62, column: 13, scope: !52)
!70 = !DILocalVariable(name: "igrid", scope: !52, file: !1, line: 60, type: !4)
!71 = !DILocation(line: 60, column: 10, scope: !52)
!72 = !DILocation(line: 63, column: 22, scope: !52)
!73 = !DILocation(line: 63, column: 14, scope: !52)
!74 = !DILocalVariable(name: "mtheta", scope: !52, file: !1, line: 60, type: !4)
!75 = !DILocation(line: 60, column: 18, scope: !52)
!76 = !DILocation(line: 64, column: 21, scope: !52)
!77 = !DILocation(line: 64, column: 13, scope: !52)
!78 = !DILocalVariable(name: "itran", scope: !52, file: !1, line: 60, type: !4)
!79 = !DILocation(line: 60, column: 27, scope: !52)
!80 = !DILocalVariable(name: "i", scope: !52, file: !1, line: 66, type: !5)
!81 = !DILocation(line: 66, column: 9, scope: !52)
!82 = !DILocation(line: 67, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !52, file: !1, line: 67, column: 5)
!84 = !DILocation(line: 67, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !1, line: 67, column: 5)
!86 = !DILocation(line: 67, column: 5, scope: !83)
!87 = !DILocation(line: 68, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 67, column: 32)
!89 = !DILocation(line: 68, column: 23, scope: !88)
!90 = !DILocalVariable(name: "tmp", scope: !88, file: !1, line: 68, type: !5)
!91 = !DILocation(line: 68, column: 10, scope: !88)
!92 = !DILocation(line: 69, column: 25, scope: !88)
!93 = !DILocation(line: 69, column: 34, scope: !88)
!94 = !DILocation(line: 69, column: 13, scope: !88)
!95 = !DILocation(line: 69, column: 23, scope: !88)
!96 = !DILocation(line: 69, column: 2, scope: !88)
!97 = !DILocation(line: 69, column: 11, scope: !88)
!98 = !DILocation(line: 67, column: 28, scope: !85)
!99 = !DILocation(line: 67, column: 5, scope: !85)
!100 = distinct !{!100, !86, !101}
!101 = !DILocation(line: 70, column: 5, scope: !83)
!102 = !DILocation(line: 72, column: 46, scope: !52)
!103 = !DILocation(line: 72, column: 24, scope: !52)
!104 = !DILocation(line: 72, column: 13, scope: !52)
!105 = !DILocalVariable(name: "phism", scope: !52, file: !1, line: 61, type: !6)
!106 = !DILocation(line: 61, column: 13, scope: !52)
!107 = !DILocation(line: 73, column: 25, scope: !52)
!108 = !DILocation(line: 73, column: 14, scope: !52)
!109 = !DILocalVariable(name: "phitmp", scope: !52, file: !1, line: 61, type: !6)
!110 = !DILocation(line: 61, column: 21, scope: !52)
!111 = !DILocation(line: 74, column: 22, scope: !52)
!112 = !DILocation(line: 74, column: 11, scope: !52)
!113 = !DILocalVariable(name: "phi", scope: !52, file: !1, line: 61, type: !6)
!114 = !DILocation(line: 61, column: 30, scope: !52)
!115 = !DILocation(line: 76, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !52, file: !1, line: 76, column: 5)
!117 = !DILocation(line: 76, column: 19, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !1, line: 76, column: 5)
!119 = !DILocation(line: 76, column: 5, scope: !116)
!120 = !DILocation(line: 77, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 76, column: 32)
!122 = !DILocation(line: 77, column: 17, scope: !121)
!123 = !DILocation(line: 77, column: 6, scope: !121)
!124 = !DILocation(line: 77, column: 15, scope: !121)
!125 = !DILocation(line: 78, column: 26, scope: !121)
!126 = !DILocation(line: 78, column: 18, scope: !121)
!127 = !DILocation(line: 78, column: 6, scope: !121)
!128 = !DILocation(line: 78, column: 16, scope: !121)
!129 = !DILocation(line: 79, column: 23, scope: !121)
!130 = !DILocation(line: 79, column: 15, scope: !121)
!131 = !DILocation(line: 79, column: 6, scope: !121)
!132 = !DILocation(line: 79, column: 13, scope: !121)
!133 = !DILocation(line: 76, column: 28, scope: !118)
!134 = !DILocation(line: 76, column: 5, scope: !118)
!135 = distinct !{!135, !119, !136}
!136 = !DILocation(line: 80, column: 5, scope: !116)
!137 = !DILocation(line: 82, column: 5, scope: !52)
!138 = !DILocation(line: 83, column: 5, scope: !52)
