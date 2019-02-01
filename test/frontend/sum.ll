; ModuleID = 'sum.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !4 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !14, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !17, metadata !15), !dbg !18
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !19
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !19
  %call = call i32 @atoi(i8* %0) #3, !dbg !20
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !21, metadata !15), !dbg !22
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !23
  %1 = load i8*, i8** %arrayidx1, align 8, !dbg !23
  %call2 = call i32 @atoi(i8* %1) #3, !dbg !24
  call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !25, metadata !15), !dbg !26
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 3, !dbg !27
  %2 = load i8*, i8** %arrayidx3, align 8, !dbg !27
  %call4 = call i32 @atoi(i8* %2) #3, !dbg !28
  call void @llvm.dbg.value(metadata i32 %call4, i64 0, metadata !29, metadata !15), !dbg !30
  %add = add nsw i32 %call, %call2, !dbg !31
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !29, metadata !15), !dbg !30
  %mul = mul nsw i32 %add, %call, !dbg !32
  call void @llvm.dbg.value(metadata i32 %mul, i64 0, metadata !29, metadata !15), !dbg !30
  %add5 = add nsw i32 %mul, %call, !dbg !33
  %add6 = add nsw i32 %add5, %call2, !dbg !34
  %mul7 = mul nsw i32 %mul, %add6, !dbg !35
  call void @llvm.dbg.value(metadata i32 %mul7, i64 0, metadata !29, metadata !15), !dbg !30
  ret i32 %mul7, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "sum.c", directory: "/home/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7, !8}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!15 = !DIExpression()
!16 = !DILocation(line: 4, column: 14, scope: !4)
!17 = !DILocalVariable(name: "argv", arg: 2, scope: !4, file: !1, line: 4, type: !8)
!18 = !DILocation(line: 4, column: 27, scope: !4)
!19 = !DILocation(line: 7, column: 11, scope: !4)
!20 = !DILocation(line: 7, column: 6, scope: !4)
!21 = !DILocalVariable(name: "a", scope: !4, file: !1, line: 6, type: !7)
!22 = !DILocation(line: 6, column: 6, scope: !4)
!23 = !DILocation(line: 8, column: 11, scope: !4)
!24 = !DILocation(line: 8, column: 6, scope: !4)
!25 = !DILocalVariable(name: "b", scope: !4, file: !1, line: 6, type: !7)
!26 = !DILocation(line: 6, column: 9, scope: !4)
!27 = !DILocation(line: 9, column: 11, scope: !4)
!28 = !DILocation(line: 9, column: 6, scope: !4)
!29 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 6, type: !7)
!30 = !DILocation(line: 6, column: 12, scope: !4)
!31 = !DILocation(line: 10, column: 7, scope: !4)
!32 = !DILocation(line: 11, column: 7, scope: !4)
!33 = !DILocation(line: 12, column: 13, scope: !4)
!34 = !DILocation(line: 12, column: 17, scope: !4)
!35 = !DILocation(line: 12, column: 8, scope: !4)
!36 = !DILocation(line: 13, column: 2, scope: !4)
