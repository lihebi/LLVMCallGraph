; ModuleID = 'simple-c-func.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @foo() #0 !dbg !4 {
entry:
  call void @bar(), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nounwind uwtable
define void @bar() #0 !dbg !7 {
entry:
  call void @bar2(), !dbg !19
  call void @foo2(), !dbg !20
  ret void, !dbg !21
}

; Function Attrs: nounwind uwtable
define void @bar2() #0 !dbg !8 {
entry:
  call void @foo2(), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nounwind uwtable
define void @foo2() #0 !dbg !9 {
entry:
  ret void, !dbg !24
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca void (...)*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata void (...)** %fp, metadata !25, metadata !29), !dbg !30
  store void (...)* bitcast (void ()* @bar2 to void (...)*), void (...)** %fp, align 8, !dbg !31
  %0 = load void (...)*, void (...)** %fp, align 8, !dbg !32
  call void (...) %0(), !dbg !32
  call void @foo(), !dbg !33
  call void @bar(), !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (trunk 259875) (llvm/trunk 259862)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "simple-c-func.c", directory: "/home/hebi/github/callgraph/benchmark")
!2 = !{}
!3 = !{!4, !7, !8, !9, !10}
!4 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 8, type: !5, isLocal: false, isDefinition: true, scopeLine: 8, isOptimized: false, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, variables: !2)
!8 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 17, type: !5, isLocal: false, isDefinition: true, scopeLine: 17, isOptimized: false, variables: !2)
!9 = distinct !DISubprogram(name: "foo2", scope: !1, file: !1, line: 21, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, isOptimized: false, variables: !2)
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !11, isLocal: false, isDefinition: true, scopeLine: 23, isOptimized: false, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{!"clang version 3.9.0 (trunk 259875) (llvm/trunk 259862)"}
!17 = !DILocation(line: 9, column: 3, scope: !4)
!18 = !DILocation(line: 10, column: 1, scope: !4)
!19 = !DILocation(line: 13, column: 3, scope: !7)
!20 = !DILocation(line: 14, column: 3, scope: !7)
!21 = !DILocation(line: 15, column: 1, scope: !7)
!22 = !DILocation(line: 18, column: 3, scope: !8)
!23 = !DILocation(line: 19, column: 1, scope: !8)
!24 = !DILocation(line: 21, column: 14, scope: !9)
!25 = !DILocalVariable(name: "fp", scope: !10, file: !1, line: 24, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{null, null}
!29 = !DIExpression()
!30 = !DILocation(line: 24, column: 10, scope: !10)
!31 = !DILocation(line: 25, column: 6, scope: !10)
!32 = !DILocation(line: 26, column: 3, scope: !10)
!33 = !DILocation(line: 27, column: 3, scope: !10)
!34 = !DILocation(line: 28, column: 3, scope: !10)
!35 = !DILocation(line: 29, column: 3, scope: !10)
