; ModuleID = 'static.ll'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"main: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"a: %p\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"going to access: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"d = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !4 {
entry:
  %a = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !15, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !18, metadata !16), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %a, metadata !20, metadata !16), !dbg !21
  store i32 10, i32* %a, align 4, !dbg !21
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !22, metadata !16), !dbg !23
  call void @llvm.dbg.value(metadata i32* inttoptr (i64 2048 to i32*), i64 0, metadata !24, metadata !16), !dbg !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**)* @main), !dbg !27
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32* %a), !dbg !28
  %0 = load i32, i32* %a, align 4, !dbg !29
  %div = sdiv i32 %0, 2, !dbg !30
  call void @llvm.dbg.value(metadata i32 %div, i64 0, metadata !31, metadata !16), !dbg !32
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !33
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %div), !dbg !34
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !35
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32* inttoptr (i64 2048 to i32*)), !dbg !36
  %3 = load i32, i32* inttoptr (i64 2048 to i32*), align 4, !dbg !37
  %add = add nsw i32 %3, 6, !dbg !38
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !39, metadata !16), !dbg !40
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !41
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %add), !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "static.c", directory: "/Users/cchen/Documents/Projects/CARE/Frontend/test")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
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
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !4, file: !1, line: 25, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 25, column: 14, scope: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !4, file: !1, line: 25, type: !8)
!19 = !DILocation(line: 25, column: 27, scope: !4)
!20 = !DILocalVariable(name: "a", scope: !4, file: !1, line: 27, type: !7)
!21 = !DILocation(line: 27, column: 9, scope: !4)
!22 = !DILocalVariable(name: "b", scope: !4, file: !1, line: 28, type: !7)
!23 = !DILocation(line: 28, column: 9, scope: !4)
!24 = !DILocalVariable(name: "bpt", scope: !4, file: !1, line: 30, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!26 = !DILocation(line: 30, column: 10, scope: !4)
!27 = !DILocation(line: 33, column: 5, scope: !4)
!28 = !DILocation(line: 34, column: 5, scope: !4)
!29 = !DILocation(line: 36, column: 13, scope: !4)
!30 = !DILocation(line: 36, column: 15, scope: !4)
!31 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 36, type: !7)
!32 = !DILocation(line: 36, column: 9, scope: !4)
!33 = !DILocation(line: 37, column: 13, scope: !4)
!34 = !DILocation(line: 37, column: 5, scope: !4)
!35 = !DILocation(line: 39, column: 13, scope: !4)
!36 = !DILocation(line: 39, column: 5, scope: !4)
!37 = !DILocation(line: 40, column: 13, scope: !4)
!38 = !DILocation(line: 40, column: 18, scope: !4)
!39 = !DILocalVariable(name: "d", scope: !4, file: !1, line: 40, type: !7)
!40 = !DILocation(line: 40, column: 9, scope: !4)
!41 = !DILocation(line: 42, column: 13, scope: !4)
!42 = !DILocation(line: 42, column: 5, scope: !4)
!43 = !DILocation(line: 44, column: 5, scope: !4)
