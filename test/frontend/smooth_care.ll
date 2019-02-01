; ModuleID = 'smooth.ll'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @smooth(i32* nocapture readonly %igrid, i32* nocapture readonly %mtheta, i32* nocapture readnone %itran, double* nocapture readnone %phism, double* nocapture %phitmp, double* nocapture readnone %phi, i32 %mpsi) #0 !dbg !8 {
entry:
  %cmp18 = icmp sgt i32 %mpsi, 1
  br i1 %cmp18, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %igrid, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4, !dbg !21, !tbaa !22
  %arrayidx2 = getelementptr inbounds i32, i32* %mtheta, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !26, !tbaa !22
  %add = add nsw i32 %1, %0, !dbg !26
  %mul = shl i32 %add, 1
  %sub = add nsw i32 %mul, -1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds double, double* %phitmp, i64 %idxprom3
  %2 = bitcast double* %arrayidx4 to i64*
  %3 = load i64, i64* %2, align 8, !dbg !27, !tbaa !28
  %mul7 = shl i32 %0, 1, !dbg !21
  %sub8 = add nsw i32 %mul7, -1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds double, double* %phitmp, i64 %idxprom9
  %4 = bitcast double* %arrayidx10 to i64*
  store i64 %3, i64* %4, align 8, !dbg !30, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mpsi
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #1 !dbg !15 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !31, !tbaa !32
  %call = tail call i32 @atoi(i8* %0), !dbg !31
  %conv = sext i32 %call to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @malloc(i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  %call4 = tail call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call4 to i32*
  %cmp79 = icmp sgt i32 %call, 0
  br i1 %cmp79, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %mul1685 = shl nsw i64 %conv, 3
  %call2086 = tail call i8* @malloc(i64 %mul1685)
  %3 = bitcast i8* %call2086 to double*
  br label %for.end42

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.body ], [ 0, %entry ]
  %call9 = tail call i32 @rand() #5
  %rem = srem i32 %call9, %call
  %arrayidx12 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv81
  store i32 %rem, i32* %arrayidx12, align 4, !dbg !34, !tbaa !22
  %arrayidx14 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv81
  store i32 %rem, i32* %arrayidx14, align 4, !dbg !35, !tbaa !22
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %call
  br i1 %exitcond84, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %mul16 = shl nsw i64 %conv, 3
  %call20 = tail call i8* @malloc(i64 %mul16)
  %4 = bitcast i8* %call20 to double*
  %cmp2577 = icmp sgt i32 %call, 0
  br i1 %cmp2577, label %for.body27, label %for.end42

for.body27:                                       ; preds = %for.body27, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.end ]
  %call28 = tail call i32 @rand() #5
  %call32 = tail call i32 @rand() #5
  %conv33 = sitofp i32 %call32 to double
  %arrayidx35 = getelementptr inbounds double, double* %4, i64 %indvars.iv
  store double %conv33, double* %arrayidx35, align 8, !dbg !36, !tbaa !28
  %call36 = tail call i32 @rand() #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end42, label %for.body27

for.end42:                                        ; preds = %for.body27, %for.end, %for.end.thread
  %5 = phi double* [ %3, %for.end.thread ], [ %4, %for.end ], [ %4, %for.body27 ]
  %call43 = tail call i32 @smooth(i32* %1, i32* %2, i32* undef, double* undef, double* %5, double* undef, i32 %call)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @rand() #4

attributes #0 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!4 = distinct !DICompileUnit(language: DW_LANG_C, file: !5, producer: "CARE", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !6, subprograms: !7)
!5 = !DIFile(filename: "smooth.ll", directory: ".")
!6 = !{}
!7 = !{!8, !15}
!8 = distinct !DISubprogram(name: "smooth", linkageName: "smooth", scope: !5, file: !5, line: 1, type: !9, isLocal: false, isDefinition: true, scopeLine: 1, flags: DIFlagPrototyped, isOptimized: false, variables: !6)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !12, !12, !13, !13, !13, !11}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!15 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !5, file: !5, line: 6, type: !16, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, variables: !6)
!16 = !DISubroutineType(types: !17)
!17 = !{!11, !11, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 2, column: 2, scope: !8)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 3, column: 3, scope: !8)
!27 = !DILocation(line: 4, column: 4, scope: !8)
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !24, i64 0}
!30 = !DILocation(line: 5, column: 5, scope: !8)
!31 = !DILocation(line: 7, column: 7, scope: !15)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !24, i64 0}
!34 = !DILocation(line: 8, column: 8, scope: !15)
!35 = !DILocation(line: 9, column: 9, scope: !15)
!36 = !DILocation(line: 10, column: 10, scope: !15)
