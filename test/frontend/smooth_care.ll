; ModuleID = './smooth.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @smooth(i32* %igrid, i32* %mtheta, i32* %itran, double* %phism, double* %phitmp, double* %phi, i32 %mpsi) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32* %igrid, i64 0, metadata !18, metadata !27), !dbg !28
  call void @llvm.dbg.value(metadata i32* %mtheta, i64 0, metadata !16, metadata !27), !dbg !29
  call void @llvm.dbg.value(metadata double* %phitmp, i64 0, metadata !15, metadata !27), !dbg !30
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i32 %i.0, i64 0, metadata !17, metadata !27), !dbg !31
  %cmp = icmp slt i32 %i.0, %mpsi
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %igrid, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !dbg !32
  %arrayidx2 = getelementptr inbounds i32, i32* %mtheta, i64 %idxprom
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !33
  %add = add nsw i32 %0, %1, !dbg !33
  %mul = mul nsw i32 %add, 2
  %sub = sub nsw i32 %mul, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds double, double* %phitmp, i64 %idxprom3
  %2 = load double, double* %arrayidx4, align 8, !dbg !34
  %mul7 = mul nsw i32 %0, 2, !dbg !32
  %sub8 = sub nsw i32 %mul7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds double, double* %phitmp, i64 %idxprom9
  store double %2, double* %arrayidx10, align 8, !dbg !35
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !26, metadata !27), !dbg !36
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !37
  %call = call i32 @atoi(i8* %0) #4
  %conv = sext i32 %call to i64
  %mul = mul i64 4, %conv
  %call1 = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call1 to i32*
  %call4 = call noalias i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call4 to i32*
  %call7 = call noalias i8* @malloc(i64 %mul) #5
  %3 = bitcast i8* %call7 to i32*
  %mul9 = mul i64 8, %conv
  %call10 = call noalias i8* @malloc(i64 %mul9) #5
  %4 = bitcast i8* %call10 to double*
  %call13 = call noalias i8* @malloc(i64 %mul9) #5
  %5 = bitcast i8* %call13 to double*
  %call16 = call noalias i8* @malloc(i64 %mul9) #5
  %6 = bitcast i8* %call16 to double*
  %call17 = call i32 @smooth(i32* %1, i32* %2, i32* %3, double* %4, double* %5, double* %6, i32 %call)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_C, file: !4, producer: "CARE", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !5, subprograms: !6)
!4 = !DIFile(filename: "./smooth.ll", directory: ".")
!5 = !{}
!6 = !{!7, !19}
!7 = distinct !DISubprogram(name: "smooth", linkageName: "smooth", scope: !4, file: !4, line: 4160662529, type: !8, isLocal: false, isDefinition: true, scopeLine: 22068, flags: DIFlagPrototyped, isOptimized: false, variables: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !12, !12, !12, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "phitmp", arg: 5, scope: !7, file: !4, line: 4160662534, type: !12)
!16 = !DILocalVariable(name: "mtheta", arg: 2, scope: !7, file: !4, line: 4160662535, type: !11)
!17 = !DILocalVariable(name: "i.0", scope: !7, file: !4, line: 4160662536, type: !10)
!18 = !DILocalVariable(name: "igrid", arg: 1, scope: !7, file: !4, line: 4160662537, type: !11)
!19 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !4, file: !4, line: 4160662538, type: !20, isLocal: false, isDefinition: true, scopeLine: 22077, flags: DIFlagPrototyped, isOptimized: false, variables: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!10, !10, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DILocalVariable(name: "argv", arg: 2, scope: !19, file: !4, line: 4160662540, type: !22)
!27 = !DIExpression()
!28 = !DILocation(line: 4160662537, column: 22076, scope: !7)
!29 = !DILocation(line: 4160662535, column: 22074, scope: !7)
!30 = !DILocation(line: 4160662534, column: 22073, scope: !7)
!31 = !DILocation(line: 4160662536, column: 22075, scope: !7)
!32 = !DILocation(line: 4160662530, column: 22069, scope: !7)
!33 = !DILocation(line: 4160662531, column: 22070, scope: !7)
!34 = !DILocation(line: 4160662532, column: 22071, scope: !7)
!35 = !DILocation(line: 4160662533, column: 22072, scope: !7)
!36 = !DILocation(line: 4160662540, column: 22079, scope: !19)
!37 = !DILocation(line: 4160662539, column: 22078, scope: !19)
