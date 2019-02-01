; ModuleID = 'smooth.ll'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @smooth(i32* %igrid, i32* %mtheta, i32* %itran, double* %phism, double* %phitmp, double* %phi, i32 %mpsi) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32* %igrid, i64 0, metadata !22, metadata !23), !dbg !24
  call void @llvm.dbg.value(metadata i32* %mtheta, i64 0, metadata !25, metadata !23), !dbg !26
  call void @llvm.dbg.value(metadata i32* %itran, i64 0, metadata !27, metadata !23), !dbg !28
  call void @llvm.dbg.value(metadata double* %phism, i64 0, metadata !29, metadata !23), !dbg !30
  call void @llvm.dbg.value(metadata double* %phitmp, i64 0, metadata !31, metadata !23), !dbg !32
  call void @llvm.dbg.value(metadata double* %phi, i64 0, metadata !33, metadata !23), !dbg !34
  call void @llvm.dbg.value(metadata i32 %mpsi, i64 0, metadata !35, metadata !23), !dbg !36
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !37, metadata !23), !dbg !39
  br label %for.cond, !dbg !40

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %mpsi, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !44
  %arrayidx = getelementptr inbounds i32, i32* %igrid, i64 %idxprom, !dbg !44
  %0 = load i32, i32* %arrayidx, align 4, !dbg !44
  %arrayidx2 = getelementptr inbounds i32, i32* %mtheta, i64 %idxprom, !dbg !46
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !46
  %add = add nsw i32 %0, %1, !dbg !47
  %mul = mul nsw i32 %add, 2, !dbg !48
  %sub = sub nsw i32 %mul, 1, !dbg !49
  %idxprom3 = sext i32 %sub to i64, !dbg !50
  %arrayidx4 = getelementptr inbounds double, double* %phitmp, i64 %idxprom3, !dbg !50
  %2 = load double, double* %arrayidx4, align 8, !dbg !50
  %mul7 = mul nsw i32 %0, 2, !dbg !51
  %sub8 = sub nsw i32 %mul7, 1, !dbg !52
  %idxprom9 = sext i32 %sub8 to i64, !dbg !53
  %arrayidx10 = getelementptr inbounds double, double* %phitmp, i64 %idxprom9, !dbg !53
  store double %2, double* %arrayidx10, align 8, !dbg !54
  %inc = add nsw i32 %i.0, 1, !dbg !55
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !37, metadata !23), !dbg !39
  br label %for.cond, !dbg !56

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !58, metadata !23), !dbg !59
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !60, metadata !23), !dbg !61
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !62
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !62
  %call = call i32 @atoi(i8* %0), !dbg !63
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !64, metadata !23), !dbg !65
  %conv = sext i32 %call to i64, !dbg !66
  %mul = mul i64 4, %conv, !dbg !67
  %call1 = call i8* @malloc(i64 %mul), !dbg !68
  %1 = bitcast i8* %call1 to i32*, !dbg !69
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !70, metadata !23), !dbg !71
  %call4 = call i8* @malloc(i64 %mul), !dbg !72
  %2 = bitcast i8* %call4 to i32*, !dbg !73
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !74, metadata !23), !dbg !75
  %call7 = call i8* @malloc(i64 %mul), !dbg !76
  %3 = bitcast i8* %call7 to i32*, !dbg !77
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !78, metadata !23), !dbg !79
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !23), !dbg !81
  br label %for.cond, !dbg !82

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %call, !dbg !84
  br i1 %cmp, label %for.body, label %for.end, !dbg !86

for.body:                                         ; preds = %for.cond
  %call9 = call i32 @rand(), !dbg !87
  %rem = srem i32 %call9, %call, !dbg !89
  call void @llvm.dbg.value(metadata i32 %rem, i64 0, metadata !90, metadata !23), !dbg !91
  %idxprom = sext i32 %i.0 to i64, !dbg !92
  %arrayidx10 = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !92
  store i32 %rem, i32* %arrayidx10, align 4, !dbg !93
  %arrayidx12 = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !94
  store i32 %rem, i32* %arrayidx12, align 4, !dbg !95
  %arrayidx14 = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !96
  store i32 %rem, i32* %arrayidx14, align 4, !dbg !97
  %inc = add nsw i32 %i.0, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !80, metadata !23), !dbg !81
  br label %for.cond, !dbg !99

for.end:                                          ; preds = %for.cond
  %mul16 = mul i64 8, %conv, !dbg !100
  %call17 = call i8* @malloc(i64 %mul16), !dbg !101
  %4 = bitcast i8* %call17 to double*, !dbg !102
  call void @llvm.dbg.value(metadata double* %4, i64 0, metadata !103, metadata !23), !dbg !104
  %call20 = call i8* @malloc(i64 %mul16), !dbg !105
  %5 = bitcast i8* %call20 to double*, !dbg !106
  call void @llvm.dbg.value(metadata double* %5, i64 0, metadata !107, metadata !23), !dbg !108
  %call23 = call i8* @malloc(i64 %mul16), !dbg !109
  %6 = bitcast i8* %call23 to double*, !dbg !110
  call void @llvm.dbg.value(metadata double* %6, i64 0, metadata !111, metadata !23), !dbg !112
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !23), !dbg !81
  br label %for.cond24, !dbg !113

for.cond24:                                       ; preds = %for.body27, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc41, %for.body27 ]
  %cmp25 = icmp slt i32 %i.1, %call, !dbg !115
  br i1 %cmp25, label %for.body27, label %for.end42, !dbg !117

for.body27:                                       ; preds = %for.cond24
  %call28 = call i32 @rand(), !dbg !118
  %conv29 = sitofp i32 %call28 to double, !dbg !120
  %idxprom30 = sext i32 %i.1 to i64, !dbg !121
  %arrayidx31 = getelementptr inbounds double, double* %4, i64 %idxprom30, !dbg !121
  store double %conv29, double* %arrayidx31, align 8, !dbg !122
  %call32 = call i32 @rand(), !dbg !123
  %conv33 = sitofp i32 %call32 to double, !dbg !124
  %arrayidx35 = getelementptr inbounds double, double* %5, i64 %idxprom30, !dbg !125
  store double %conv33, double* %arrayidx35, align 8, !dbg !126
  %call36 = call i32 @rand(), !dbg !127
  %conv37 = sitofp i32 %call36 to double, !dbg !128
  %arrayidx39 = getelementptr inbounds double, double* %6, i64 %idxprom30, !dbg !129
  store double %conv37, double* %arrayidx39, align 8, !dbg !130
  %inc41 = add nsw i32 %i.1, 1, !dbg !131
  call void @llvm.dbg.value(metadata i32 %inc41, i64 0, metadata !80, metadata !23), !dbg !81
  br label %for.cond24, !dbg !132

for.end42:                                        ; preds = %for.cond24
  %call43 = call i32 @smooth(i32* %1, i32* %2, i32* %3, double* %4, double* %5, double* %6, i32 %call), !dbg !133
  ret i32 0, !dbg !134
}

declare i32 @atoi(i8*) #2

declare i8* @malloc(i64) #2

declare i32 @rand() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8)
!1 = !DIFile(filename: "smooth.c", directory: "/Users/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !{!9, !12}
!9 = distinct !DISubprogram(name: "smooth", scope: !1, file: !1, line: 4, type: !10, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !4, !4, !4, !6, !6, !6, !5}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !13, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !5, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!22 = !DILocalVariable(name: "igrid", arg: 1, scope: !9, file: !1, line: 4, type: !4)
!23 = !DIExpression()
!24 = !DILocation(line: 4, column: 17, scope: !9)
!25 = !DILocalVariable(name: "mtheta", arg: 2, scope: !9, file: !1, line: 4, type: !4)
!26 = !DILocation(line: 4, column: 29, scope: !9)
!27 = !DILocalVariable(name: "itran", arg: 3, scope: !9, file: !1, line: 4, type: !4)
!28 = !DILocation(line: 4, column: 42, scope: !9)
!29 = !DILocalVariable(name: "phism", arg: 4, scope: !9, file: !1, line: 4, type: !6)
!30 = !DILocation(line: 4, column: 57, scope: !9)
!31 = !DILocalVariable(name: "phitmp", arg: 5, scope: !9, file: !1, line: 4, type: !6)
!32 = !DILocation(line: 4, column: 72, scope: !9)
!33 = !DILocalVariable(name: "phi", arg: 6, scope: !9, file: !1, line: 5, type: !6)
!34 = !DILocation(line: 5, column: 20, scope: !9)
!35 = !DILocalVariable(name: "mpsi", arg: 7, scope: !9, file: !1, line: 5, type: !5)
!36 = !DILocation(line: 5, column: 29, scope: !9)
!37 = !DILocalVariable(name: "i", scope: !38, file: !1, line: 40, type: !5)
!38 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 3)
!39 = !DILocation(line: 40, column: 12, scope: !38)
!40 = !DILocation(line: 40, column: 8, scope: !38)
!41 = !DILocation(line: 40, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 40, column: 3)
!43 = !DILocation(line: 40, column: 3, scope: !38)
!44 = !DILocation(line: 41, column: 40, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 40, column: 34)
!46 = !DILocation(line: 41, column: 51, scope: !45)
!47 = !DILocation(line: 41, column: 49, scope: !45)
!48 = !DILocation(line: 41, column: 62, scope: !45)
!49 = !DILocation(line: 41, column: 66, scope: !45)
!50 = !DILocation(line: 41, column: 32, scope: !45)
!51 = !DILocation(line: 41, column: 21, scope: !45)
!52 = !DILocation(line: 41, column: 25, scope: !45)
!53 = !DILocation(line: 41, column: 5, scope: !45)
!54 = !DILocation(line: 41, column: 30, scope: !45)
!55 = !DILocation(line: 40, column: 30, scope: !42)
!56 = !DILocation(line: 40, column: 3, scope: !42)
!57 = !DILocation(line: 55, column: 3, scope: !9)
!58 = !DILocalVariable(name: "argc", arg: 1, scope: !12, file: !1, line: 58, type: !5)
!59 = !DILocation(line: 58, column: 14, scope: !12)
!60 = !DILocalVariable(name: "argv", arg: 2, scope: !12, file: !1, line: 58, type: !15)
!61 = !DILocation(line: 58, column: 26, scope: !12)
!62 = !DILocation(line: 59, column: 21, scope: !12)
!63 = !DILocation(line: 59, column: 16, scope: !12)
!64 = !DILocalVariable(name: "mpsi", scope: !12, file: !1, line: 59, type: !5)
!65 = !DILocation(line: 59, column: 9, scope: !12)
!66 = !DILocation(line: 62, column: 42, scope: !12)
!67 = !DILocation(line: 62, column: 40, scope: !12)
!68 = !DILocation(line: 62, column: 21, scope: !12)
!69 = !DILocation(line: 62, column: 13, scope: !12)
!70 = !DILocalVariable(name: "igrid", scope: !12, file: !1, line: 60, type: !4)
!71 = !DILocation(line: 60, column: 10, scope: !12)
!72 = !DILocation(line: 63, column: 22, scope: !12)
!73 = !DILocation(line: 63, column: 14, scope: !12)
!74 = !DILocalVariable(name: "mtheta", scope: !12, file: !1, line: 60, type: !4)
!75 = !DILocation(line: 60, column: 18, scope: !12)
!76 = !DILocation(line: 64, column: 21, scope: !12)
!77 = !DILocation(line: 64, column: 13, scope: !12)
!78 = !DILocalVariable(name: "itran", scope: !12, file: !1, line: 60, type: !4)
!79 = !DILocation(line: 60, column: 27, scope: !12)
!80 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 66, type: !5)
!81 = !DILocation(line: 66, column: 9, scope: !12)
!82 = !DILocation(line: 67, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !12, file: !1, line: 67, column: 5)
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
!100 = !DILocation(line: 72, column: 46, scope: !12)
!101 = !DILocation(line: 72, column: 24, scope: !12)
!102 = !DILocation(line: 72, column: 13, scope: !12)
!103 = !DILocalVariable(name: "phism", scope: !12, file: !1, line: 61, type: !6)
!104 = !DILocation(line: 61, column: 13, scope: !12)
!105 = !DILocation(line: 73, column: 25, scope: !12)
!106 = !DILocation(line: 73, column: 14, scope: !12)
!107 = !DILocalVariable(name: "phitmp", scope: !12, file: !1, line: 61, type: !6)
!108 = !DILocation(line: 61, column: 21, scope: !12)
!109 = !DILocation(line: 74, column: 22, scope: !12)
!110 = !DILocation(line: 74, column: 11, scope: !12)
!111 = !DILocalVariable(name: "phi", scope: !12, file: !1, line: 61, type: !6)
!112 = !DILocation(line: 61, column: 30, scope: !12)
!113 = !DILocation(line: 76, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !12, file: !1, line: 76, column: 5)
!115 = !DILocation(line: 76, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !1, line: 76, column: 5)
!117 = !DILocation(line: 76, column: 5, scope: !114)
!118 = !DILocation(line: 77, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 76, column: 32)
!120 = !DILocation(line: 77, column: 17, scope: !119)
!121 = !DILocation(line: 77, column: 6, scope: !119)
!122 = !DILocation(line: 77, column: 15, scope: !119)
!123 = !DILocation(line: 78, column: 26, scope: !119)
!124 = !DILocation(line: 78, column: 18, scope: !119)
!125 = !DILocation(line: 78, column: 6, scope: !119)
!126 = !DILocation(line: 78, column: 16, scope: !119)
!127 = !DILocation(line: 79, column: 23, scope: !119)
!128 = !DILocation(line: 79, column: 15, scope: !119)
!129 = !DILocation(line: 79, column: 6, scope: !119)
!130 = !DILocation(line: 79, column: 13, scope: !119)
!131 = !DILocation(line: 76, column: 28, scope: !116)
!132 = !DILocation(line: 76, column: 5, scope: !116)
!133 = !DILocation(line: 82, column: 5, scope: !12)
!134 = !DILocation(line: 83, column: 5, scope: !12)
