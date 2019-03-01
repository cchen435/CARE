; ModuleID = 'sum.ll'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !4 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !15, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !18, metadata !16), !dbg !19
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !20
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !20
  %call = call i32 @atoi(i8* %0), !dbg !21
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !22, metadata !16), !dbg !23
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !24
  %1 = load i8*, i8** %arrayidx1, align 8, !dbg !24
  %call2 = call i32 @atoi(i8* %1), !dbg !25
  call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !26, metadata !16), !dbg !27
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 3, !dbg !28
  %2 = load i8*, i8** %arrayidx3, align 8, !dbg !28
  %call4 = call i32 @atoi(i8* %2), !dbg !29
  call void @llvm.dbg.value(metadata i32 %call4, i64 0, metadata !30, metadata !16), !dbg !31
  %add = add nsw i32 %call, %call2, !dbg !32
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !30, metadata !16), !dbg !31
  %mul = mul nsw i32 %add, %call, !dbg !33
  call void @llvm.dbg.value(metadata i32 %mul, i64 0, metadata !30, metadata !16), !dbg !31
  %add5 = add nsw i32 %mul, %call, !dbg !34
  %add6 = add nsw i32 %add5, %call2, !dbg !35
  %mul7 = mul nsw i32 %mul, %add6, !dbg !36
  call void @llvm.dbg.value(metadata i32 %mul7, i64 0, metadata !30, metadata !16), !dbg !31
  ret i32 %mul7, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "sum.c", directory: "/Users/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7, !8}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 14, scope: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !4, file: !1, line: 4, type: !8)
!19 = !DILocation(line: 4, column: 27, scope: !4)
!20 = !DILocation(line: 7, column: 11, scope: !4)
!21 = !DILocation(line: 7, column: 6, scope: !4)
!22 = !DILocalVariable(name: "a", scope: !4, file: !1, line: 6, type: !7)
!23 = !DILocation(line: 6, column: 6, scope: !4)
!24 = !DILocation(line: 8, column: 11, scope: !4)
!25 = !DILocation(line: 8, column: 6, scope: !4)
!26 = !DILocalVariable(name: "b", scope: !4, file: !1, line: 6, type: !7)
!27 = !DILocation(line: 6, column: 9, scope: !4)
!28 = !DILocation(line: 9, column: 11, scope: !4)
!29 = !DILocation(line: 9, column: 6, scope: !4)
!30 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 6, type: !7)
!31 = !DILocation(line: 6, column: 12, scope: !4)
!32 = !DILocation(line: 10, column: 7, scope: !4)
!33 = !DILocation(line: 11, column: 7, scope: !4)
!34 = !DILocation(line: 12, column: 13, scope: !4)
!35 = !DILocation(line: 12, column: 17, scope: !4)
!36 = !DILocation(line: 12, column: 8, scope: !4)
!37 = !DILocation(line: 13, column: 2, scope: !4)
