; ModuleID = 'smooth.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @smooth(i32* %igrid, i32* %mtheta, i32* %itran, double* %phism, double* %phitmp, double* %phi, i32 %mpsi) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32* %igrid, i64 0, metadata !21, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata i32* %mtheta, i64 0, metadata !24, metadata !22), !dbg !25
  call void @llvm.dbg.value(metadata i32* %itran, i64 0, metadata !26, metadata !22), !dbg !27
  call void @llvm.dbg.value(metadata double* %phism, i64 0, metadata !28, metadata !22), !dbg !29
  call void @llvm.dbg.value(metadata double* %phitmp, i64 0, metadata !30, metadata !22), !dbg !31
  call void @llvm.dbg.value(metadata double* %phi, i64 0, metadata !32, metadata !22), !dbg !33
  call void @llvm.dbg.value(metadata i32 %mpsi, i64 0, metadata !34, metadata !22), !dbg !35
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !36, metadata !22), !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %mpsi, !dbg !40
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
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !36, metadata !22), !dbg !38
  br label %for.cond, !dbg !57

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !58
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !59, metadata !22), !dbg !60
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !61, metadata !22), !dbg !62
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !63
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !63
  %call = call i32 @atoi(i8* %0) #4, !dbg !64
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !65, metadata !22), !dbg !66
  %conv = sext i32 %call to i64, !dbg !67
  %mul = mul i64 4, %conv, !dbg !68
  %call1 = call noalias i8* @malloc(i64 %mul) #5, !dbg !69
  %1 = bitcast i8* %call1 to i32*, !dbg !70
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !71, metadata !22), !dbg !72
  %call4 = call noalias i8* @malloc(i64 %mul) #5, !dbg !73
  %2 = bitcast i8* %call4 to i32*, !dbg !74
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !75, metadata !22), !dbg !76
  %call7 = call noalias i8* @malloc(i64 %mul) #5, !dbg !77
  %3 = bitcast i8* %call7 to i32*, !dbg !78
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !79, metadata !22), !dbg !80
  %mul9 = mul i64 8, %conv, !dbg !81
  %call10 = call noalias i8* @malloc(i64 %mul9) #5, !dbg !82
  %4 = bitcast i8* %call10 to double*, !dbg !83
  call void @llvm.dbg.value(metadata double* %4, i64 0, metadata !84, metadata !22), !dbg !85
  %call13 = call noalias i8* @malloc(i64 %mul9) #5, !dbg !86
  %5 = bitcast i8* %call13 to double*, !dbg !87
  call void @llvm.dbg.value(metadata double* %5, i64 0, metadata !88, metadata !22), !dbg !89
  %call16 = call noalias i8* @malloc(i64 %mul9) #5, !dbg !90
  %6 = bitcast i8* %call16 to double*, !dbg !91
  call void @llvm.dbg.value(metadata double* %6, i64 0, metadata !92, metadata !22), !dbg !93
  %call17 = call i32 @smooth(i32* %1, i32* %2, i32* %3, double* %4, double* %5, double* %6, i32 %call), !dbg !94
  ret i32 0, !dbg !95
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8)
!1 = !DIFile(filename: "smooth.c", directory: "/home/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4, !6}
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
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!21 = !DILocalVariable(name: "igrid", arg: 1, scope: !9, file: !1, line: 4, type: !4)
!22 = !DIExpression()
!23 = !DILocation(line: 4, column: 17, scope: !9)
!24 = !DILocalVariable(name: "mtheta", arg: 2, scope: !9, file: !1, line: 4, type: !4)
!25 = !DILocation(line: 4, column: 29, scope: !9)
!26 = !DILocalVariable(name: "itran", arg: 3, scope: !9, file: !1, line: 4, type: !4)
!27 = !DILocation(line: 4, column: 42, scope: !9)
!28 = !DILocalVariable(name: "phism", arg: 4, scope: !9, file: !1, line: 4, type: !6)
!29 = !DILocation(line: 4, column: 57, scope: !9)
!30 = !DILocalVariable(name: "phitmp", arg: 5, scope: !9, file: !1, line: 4, type: !6)
!31 = !DILocation(line: 4, column: 72, scope: !9)
!32 = !DILocalVariable(name: "phi", arg: 6, scope: !9, file: !1, line: 5, type: !6)
!33 = !DILocation(line: 5, column: 20, scope: !9)
!34 = !DILocalVariable(name: "mpsi", arg: 7, scope: !9, file: !1, line: 5, type: !5)
!35 = !DILocation(line: 5, column: 29, scope: !9)
!36 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 40, type: !5)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 3)
!38 = !DILocation(line: 40, column: 12, scope: !37)
!39 = !DILocation(line: 40, column: 8, scope: !37)
!40 = !DILocation(line: 40, column: 21, scope: !41)
!41 = !DILexicalBlockFile(scope: !42, file: !1, discriminator: 1)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 40, column: 3)
!43 = !DILocation(line: 40, column: 3, scope: !41)
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
!55 = !DILocation(line: 40, column: 30, scope: !56)
!56 = !DILexicalBlockFile(scope: !42, file: !1, discriminator: 2)
!57 = !DILocation(line: 40, column: 3, scope: !56)
!58 = !DILocation(line: 55, column: 3, scope: !9)
!59 = !DILocalVariable(name: "argc", arg: 1, scope: !12, file: !1, line: 58, type: !5)
!60 = !DILocation(line: 58, column: 14, scope: !12)
!61 = !DILocalVariable(name: "argv", arg: 2, scope: !12, file: !1, line: 58, type: !15)
!62 = !DILocation(line: 58, column: 26, scope: !12)
!63 = !DILocation(line: 59, column: 21, scope: !12)
!64 = !DILocation(line: 59, column: 16, scope: !12)
!65 = !DILocalVariable(name: "mpsi", scope: !12, file: !1, line: 59, type: !5)
!66 = !DILocation(line: 59, column: 9, scope: !12)
!67 = !DILocation(line: 62, column: 42, scope: !12)
!68 = !DILocation(line: 62, column: 40, scope: !12)
!69 = !DILocation(line: 62, column: 21, scope: !12)
!70 = !DILocation(line: 62, column: 13, scope: !12)
!71 = !DILocalVariable(name: "igrid", scope: !12, file: !1, line: 60, type: !4)
!72 = !DILocation(line: 60, column: 10, scope: !12)
!73 = !DILocation(line: 63, column: 22, scope: !12)
!74 = !DILocation(line: 63, column: 14, scope: !12)
!75 = !DILocalVariable(name: "mtheta", scope: !12, file: !1, line: 60, type: !4)
!76 = !DILocation(line: 60, column: 18, scope: !12)
!77 = !DILocation(line: 64, column: 21, scope: !12)
!78 = !DILocation(line: 64, column: 13, scope: !12)
!79 = !DILocalVariable(name: "itran", scope: !12, file: !1, line: 60, type: !4)
!80 = !DILocation(line: 60, column: 27, scope: !12)
!81 = !DILocation(line: 66, column: 46, scope: !12)
!82 = !DILocation(line: 66, column: 24, scope: !12)
!83 = !DILocation(line: 66, column: 13, scope: !12)
!84 = !DILocalVariable(name: "phism", scope: !12, file: !1, line: 61, type: !6)
!85 = !DILocation(line: 61, column: 13, scope: !12)
!86 = !DILocation(line: 67, column: 25, scope: !12)
!87 = !DILocation(line: 67, column: 14, scope: !12)
!88 = !DILocalVariable(name: "phitmp", scope: !12, file: !1, line: 61, type: !6)
!89 = !DILocation(line: 61, column: 21, scope: !12)
!90 = !DILocation(line: 68, column: 22, scope: !12)
!91 = !DILocation(line: 68, column: 11, scope: !12)
!92 = !DILocalVariable(name: "phi", scope: !12, file: !1, line: 61, type: !6)
!93 = !DILocation(line: 61, column: 30, scope: !12)
!94 = !DILocation(line: 70, column: 5, scope: !12)
!95 = !DILocation(line: 71, column: 5, scope: !12)
