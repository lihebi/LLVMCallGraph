; ModuleID = 'test1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.A = type { i32 (...)** }
%class.C = type { i32 (...)** }
%class.E = type { %class.D }
%class.D = type { %class.C }
%class.B = type { %class.A }

$_ZN1AC2Ev = comdat any

$_ZN1EC2Ev = comdat any

$_ZN1A3fooEv = comdat any

$_ZN1DC2Ev = comdat any

$_ZN1E4foo2Ev = comdat any

$_ZN1CC2Ev = comdat any

$_ZN1D4foo2Ev = comdat any

$_ZN1C4foo2Ev = comdat any

$_ZN1BC2Ev = comdat any

$_ZN1B3fooEv = comdat any

$_ZTV1A = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTV1E = comdat any

$_ZTS1E = comdat any

$_ZTS1D = comdat any

$_ZTS1C = comdat any

$_ZTI1C = comdat any

$_ZTI1D = comdat any

$_ZTI1E = comdat any

$_ZTV1D = comdat any

$_ZTV1C = comdat any

$_ZTV1B = comdat any

$_ZTS1B = comdat any

$_ZTI1B = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZTV1A = linkonce_odr unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (void (%class.A*)* @_ZN1A3fooEv to i8*)], comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS1A = linkonce_odr constant [3 x i8] c"1A\00", comdat
@_ZTI1A = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat
@_ZTV1E = linkonce_odr unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1E to i8*), i8* bitcast (void (%class.E*)* @_ZN1E4foo2Ev to i8*)], comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS1E = linkonce_odr constant [3 x i8] c"1E\00", comdat
@_ZTS1D = linkonce_odr constant [3 x i8] c"1D\00", comdat
@_ZTS1C = linkonce_odr constant [3 x i8] c"1C\00", comdat
@_ZTI1C = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1C, i32 0, i32 0) }, comdat
@_ZTI1D = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1D, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1C to i8*) }, comdat
@_ZTI1E = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1E, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1D to i8*) }, comdat
@_ZTV1D = linkonce_odr unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1D to i8*), i8* bitcast (void (%class.D*)* @_ZN1D4foo2Ev to i8*)], comdat, align 8
@_ZTV1C = linkonce_odr unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1C to i8*), i8* bitcast (void (%class.C*)* @_ZN1C4foo2Ev to i8*)], comdat, align 8
@_ZTV1B = linkonce_odr unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1B to i8*), i8* bitcast (void (%class.B*)* @_ZN1B3fooEv to i8*)], comdat, align 8
@_ZTS1B = linkonce_odr constant [3 x i8] c"1B\00", comdat
@_ZTI1B = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1B, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test1.cpp, i8* null }]

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !82 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !472
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2, !dbg !473
  ret void, !dbg !472
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !86 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca %class.A*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %e = alloca %class.C*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !475, metadata !476), !dbg !477
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !478, metadata !476), !dbg !479
  call void @_ZL6foobarv(), !dbg !480
  call void @llvm.dbg.declare(metadata %class.A** %a, metadata !481, metadata !476), !dbg !483
  %call = call noalias i8* @_Znwm(i64 8) #10, !dbg !484
  %0 = bitcast i8* %call to %class.A*, !dbg !484
  invoke void @_ZN1AC2Ev(%class.A* %0)
          to label %invoke.cont unwind label %lpad, !dbg !485

invoke.cont:                                      ; preds = %entry
  store %class.A* %0, %class.A** %a, align 8, !dbg !486
  %1 = load %class.A*, %class.A** %a, align 8, !dbg !488
  %2 = bitcast %class.A* %1 to void (%class.A*)***, !dbg !488
  %vtable = load void (%class.A*)**, void (%class.A*)*** %2, align 8, !dbg !488
  %vfn = getelementptr inbounds void (%class.A*)*, void (%class.A*)** %vtable, i64 0, !dbg !488
  %3 = load void (%class.A*)*, void (%class.A*)** %vfn, align 8, !dbg !488
  call void %3(%class.A* %1), !dbg !488
  %4 = load %class.A*, %class.A** %a, align 8, !dbg !489
  %5 = bitcast %class.A* %4 to void (%class.A*)***, !dbg !490
  %vtable1 = load void (%class.A*)**, void (%class.A*)*** %5, align 8, !dbg !490
  %vfn2 = getelementptr inbounds void (%class.A*)*, void (%class.A*)** %vtable1, i64 0, !dbg !490
  %6 = load void (%class.A*)*, void (%class.A*)** %vfn2, align 8, !dbg !490
  call void %6(%class.A* %4), !dbg !490
  call void @llvm.dbg.declare(metadata %class.C** %e, metadata !491, metadata !476), !dbg !493
  %call3 = call noalias i8* @_Znwm(i64 8) #10, !dbg !494
  %7 = bitcast i8* %call3 to %class.E*, !dbg !494
  %8 = bitcast %class.E* %7 to i8*, !dbg !495
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 8, i32 8, i1 false), !dbg !496
  call void @_ZN1EC2Ev(%class.E* %7) #2, !dbg !497
  %9 = bitcast %class.E* %7 to %class.C*, !dbg !494
  store %class.C* %9, %class.C** %e, align 8, !dbg !493
  %10 = load %class.C*, %class.C** %e, align 8, !dbg !499
  %11 = bitcast %class.C* %10 to void (%class.C*)***, !dbg !499
  %vtable4 = load void (%class.C*)**, void (%class.C*)*** %11, align 8, !dbg !499
  %vfn5 = getelementptr inbounds void (%class.C*)*, void (%class.C*)** %vtable4, i64 0, !dbg !499
  %12 = load void (%class.C*)*, void (%class.C*)** %vfn5, align 8, !dbg !499
  call void %12(%class.C* %10), !dbg !499
  %13 = load %class.C*, %class.C** %e, align 8, !dbg !500
  call void @_ZN1C4bar2Ev(%class.C* %13), !dbg !500
  ret i32 0, !dbg !501

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !502
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !502
  store i8* %15, i8** %exn.slot, align 8, !dbg !502
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !502
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !502
  call void @_ZdlPv(i8* %call) #11, !dbg !503
  br label %eh.resume, !dbg !503

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !504
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !504
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !504
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !504
  resume { i8*, i32 } %lpad.val6, !dbg !504
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nounwind uwtable
define internal void @_ZL6foobarv() #5 !dbg !92 {
entry:
  ret void, !dbg !506
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #6

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN1AC2Ev(%class.A* %this) unnamed_addr #5 comdat align 2 !dbg !93 {
entry:
  %this.addr = alloca %class.A*, align 8
  store %class.A* %this, %class.A** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.A** %this.addr, metadata !507, metadata !476), !dbg !508
  %this1 = load %class.A*, %class.A** %this.addr, align 8
  %0 = bitcast %class.A* %this1 to i32 (...)***, !dbg !509
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV1A, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !509
  ret void, !dbg !510
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN1EC2Ev(%class.E* %this) unnamed_addr #9 comdat align 2 !dbg !95 {
entry:
  %this.addr = alloca %class.E*, align 8
  store %class.E* %this, %class.E** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.E** %this.addr, metadata !511, metadata !476), !dbg !513
  %this1 = load %class.E*, %class.E** %this.addr, align 8
  %0 = bitcast %class.E* %this1 to %class.D*, !dbg !514
  call void @_ZN1DC2Ev(%class.D* %0) #2, !dbg !514
  %1 = bitcast %class.E* %this1 to i32 (...)***, !dbg !514
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV1E, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !514
  ret void, !dbg !514
}

declare void @_ZN1C4bar2Ev(%class.C*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN1A3fooEv(%class.A* %this) unnamed_addr #5 comdat align 2 !dbg !94 {
entry:
  %this.addr = alloca %class.A*, align 8
  store %class.A* %this, %class.A** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.A** %this.addr, metadata !515, metadata !476), !dbg !516
  %this1 = load %class.A*, %class.A** %this.addr, align 8
  ret void, !dbg !517
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN1DC2Ev(%class.D* %this) unnamed_addr #9 comdat align 2 !dbg !97 {
entry:
  %this.addr = alloca %class.D*, align 8
  store %class.D* %this, %class.D** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.D** %this.addr, metadata !518, metadata !476), !dbg !520
  %this1 = load %class.D*, %class.D** %this.addr, align 8
  %0 = bitcast %class.D* %this1 to %class.C*, !dbg !521
  call void @_ZN1CC2Ev(%class.C* %0) #2, !dbg !521
  %1 = bitcast %class.D* %this1 to i32 (...)***, !dbg !521
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV1D, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !521
  ret void, !dbg !521
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN1E4foo2Ev(%class.E* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !103 {
entry:
  %this.addr = alloca %class.E*, align 8
  %a = alloca %class.A*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.E* %this, %class.E** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.E** %this.addr, metadata !522, metadata !476), !dbg !523
  %this1 = load %class.E*, %class.E** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.A** %a, metadata !524, metadata !476), !dbg !525
  %call = call noalias i8* @_Znwm(i64 8) #10, !dbg !526
  %0 = bitcast i8* %call to %class.B*, !dbg !526
  %1 = bitcast %class.B* %0 to i8*, !dbg !527
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false), !dbg !528
  invoke void @_ZN1BC2Ev(%class.B* %0)
          to label %invoke.cont unwind label %lpad, !dbg !527

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %class.B* %0 to %class.A*, !dbg !530
  store %class.A* %2, %class.A** %a, align 8, !dbg !532
  %3 = load %class.A*, %class.A** %a, align 8, !dbg !533
  %4 = bitcast %class.A* %3 to void (%class.A*)***, !dbg !533
  %vtable = load void (%class.A*)**, void (%class.A*)*** %4, align 8, !dbg !533
  %vfn = getelementptr inbounds void (%class.A*)*, void (%class.A*)** %vtable, i64 0, !dbg !533
  %5 = load void (%class.A*)*, void (%class.A*)** %vfn, align 8, !dbg !533
  call void %5(%class.A* %3), !dbg !533
  ret void, !dbg !534

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !535
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !535
  store i8* %7, i8** %exn.slot, align 8, !dbg !535
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !535
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !535
  call void @_ZdlPv(i8* %call) #11, !dbg !536
  br label %eh.resume, !dbg !536

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !538
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !538
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !538
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !538
  resume { i8*, i32 } %lpad.val2, !dbg !538
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN1CC2Ev(%class.C* %this) unnamed_addr #9 comdat align 2 !dbg !99 {
entry:
  %this.addr = alloca %class.C*, align 8
  store %class.C* %this, %class.C** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.C** %this.addr, metadata !540, metadata !476), !dbg !541
  %this1 = load %class.C*, %class.C** %this.addr, align 8
  %0 = bitcast %class.C* %this1 to i32 (...)***, !dbg !542
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV1C, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !542
  ret void, !dbg !542
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN1D4foo2Ev(%class.D* %this) unnamed_addr #5 comdat align 2 !dbg !102 {
entry:
  %this.addr = alloca %class.D*, align 8
  store %class.D* %this, %class.D** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.D** %this.addr, metadata !543, metadata !476), !dbg !544
  %this1 = load %class.D*, %class.D** %this.addr, align 8
  ret void, !dbg !545
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN1C4foo2Ev(%class.C* %this) unnamed_addr #5 comdat align 2 !dbg !101 {
entry:
  %this.addr = alloca %class.C*, align 8
  store %class.C* %this, %class.C** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.C** %this.addr, metadata !546, metadata !476), !dbg !547
  %this1 = load %class.C*, %class.C** %this.addr, align 8
  ret void, !dbg !548
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN1BC2Ev(%class.B* %this) unnamed_addr #9 comdat align 2 !dbg !104 {
entry:
  %this.addr = alloca %class.B*, align 8
  store %class.B* %this, %class.B** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.B** %this.addr, metadata !549, metadata !476), !dbg !551
  %this1 = load %class.B*, %class.B** %this.addr, align 8
  %0 = bitcast %class.B* %this1 to %class.A*, !dbg !552
  call void @_ZN1AC2Ev(%class.A* %0), !dbg !552
  %1 = bitcast %class.B* %this1 to i32 (...)***, !dbg !552
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV1B, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !552
  ret void, !dbg !552
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN1B3fooEv(%class.B* %this) unnamed_addr #5 comdat align 2 !dbg !106 {
entry:
  %this.addr = alloca %class.B*, align 8
  store %class.B* %this, %class.B** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.B** %this.addr, metadata !553, metadata !476), !dbg !554
  %this1 = load %class.B*, %class.B** %this.addr, align 8
  ret void, !dbg !555
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test1.cpp() #0 section ".text.startup" !dbg !107 {
entry:
  call void @__cxx_global_var_init(), !dbg !556
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!469, !470}
!llvm.ident = !{!471}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (trunk 259875) (llvm/trunk 259862)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !81, globals: !109, imports: !111)
!1 = !DIFile(filename: "test1.cpp", directory: "/home/hebi/github/callgraph/benchmark")
!2 = !{}
!3 = !{!4, !6, !8, !16, !17, !19, !23, !36, !49, !57, !65, !73}
!4 = !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 82, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS11__mbstate_t")
!5 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/hebi/github/callgraph/benchmark")
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !7, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/hebi/github/callgraph/benchmark")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !9, identifier: "_ZTS13__va_list_tag")
!9 = !{!10, !12, !13, !15}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !11, size: 32, align: 32)
!11 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !11, size: 32, align: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !14, size: 64, align: 64, offset: 128)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !5, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !18, line: 54, size: 768, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!18 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/hebi/github/callgraph/benchmark")
!19 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !21, file: !20, line: 199, size: 1728, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/bits/ios_base.h", directory: "/home/hebi/github/callgraph/benchmark")
!21 = !DINamespace(name: "std", scope: null, file: !22, line: 1855)
!22 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/x86_64-redhat-linux/bits/c++config.h", directory: "/home/hebi/github/callgraph/benchmark")
!23 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !"_ZTSSt8ios_base", file: !20, line: 533, size: 8, align: 8, elements: !24, identifier: "_ZTSNSt8ios_base4InitE")
!24 = !{!25, !29, !31, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !"_ZTSNSt8ios_base4InitE", file: !20, line: 541, baseType: !26, flags: DIFlagStaticMember)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !27, line: 32, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/x86_64-redhat-linux/bits/atomic_word.h", directory: "/home/hebi/github/callgraph/benchmark")
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !"_ZTSNSt8ios_base4InitE", file: !20, line: 542, baseType: !30, flags: DIFlagStaticMember)
!30 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!31 = !DISubprogram(name: "Init", scope: !"_ZTSNSt8ios_base4InitE", file: !20, line: 537, type: !32, isLocal: false, isDefinition: false, scopeLine: 537, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTSNSt8ios_base4InitE", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!35 = !DISubprogram(name: "~Init", scope: !"_ZTSNSt8ios_base4InitE", file: !20, line: 538, type: !32, isLocal: false, isDefinition: false, scopeLine: 538, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!36 = !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !1, line: 9, size: 64, align: 64, elements: !37, vtableHolder: !"_ZTS1A", identifier: "_ZTS1A")
!37 = !{!38, !43, !47, !48}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !1, file: !1, baseType: !39, size: 64, flags: DIFlagArtificial)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!28}
!43 = !DISubprogram(name: "A", scope: !"_ZTS1A", file: !1, line: 11, type: !44, isLocal: false, isDefinition: false, scopeLine: 11, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1A", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!47 = !DISubprogram(name: "foo", linkageName: "_ZN1A3fooEv", scope: !"_ZTS1A", file: !1, line: 12, type: !44, isLocal: false, isDefinition: false, scopeLine: 12, containingType: !"_ZTS1A", virtuality: DW_VIRTUALITY_virtual, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!48 = !DISubprogram(name: "bar", linkageName: "_ZN1A3barEv", scope: !"_ZTS1A", file: !1, line: 14, type: !44, isLocal: false, isDefinition: false, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!49 = !DICompositeType(tag: DW_TAG_class_type, name: "C", file: !1, line: 22, size: 64, align: 64, elements: !50, vtableHolder: !"_ZTS1C", identifier: "_ZTS1C")
!50 = !{!51, !52, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$C", scope: !1, file: !1, baseType: !39, size: 64, flags: DIFlagArtificial)
!52 = !DISubprogram(name: "foo2", linkageName: "_ZN1C4foo2Ev", scope: !"_ZTS1C", file: !1, line: 24, type: !53, isLocal: false, isDefinition: false, scopeLine: 24, containingType: !"_ZTS1C", virtuality: DW_VIRTUALITY_virtual, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1C", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!56 = !DISubprogram(name: "bar2", linkageName: "_ZN1C4bar2Ev", scope: !"_ZTS1C", file: !1, line: 25, type: !53, isLocal: false, isDefinition: false, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!57 = !DICompositeType(tag: DW_TAG_class_type, name: "E", file: !1, line: 33, size: 64, align: 64, elements: !58, vtableHolder: !"_ZTS1C", identifier: "_ZTS1E")
!58 = !{!59, !60, !64}
!59 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTS1E", baseType: !"_ZTS1D", flags: DIFlagPublic)
!60 = !DISubprogram(name: "foo2", linkageName: "_ZN1E4foo2Ev", scope: !"_ZTS1E", file: !1, line: 34, type: !61, isLocal: false, isDefinition: false, scopeLine: 34, containingType: !"_ZTS1E", virtuality: DW_VIRTUALITY_virtual, flags: DIFlagPrototyped, isOptimized: false)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1E", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!64 = !DISubprogram(name: "bar2", linkageName: "_ZN1E4bar2Ev", scope: !"_ZTS1E", file: !1, line: 38, type: !61, isLocal: false, isDefinition: false, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DICompositeType(tag: DW_TAG_class_type, name: "D", file: !1, line: 28, size: 64, align: 64, elements: !66, vtableHolder: !"_ZTS1C", identifier: "_ZTS1D")
!66 = !{!67, !68, !72}
!67 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTS1D", baseType: !"_ZTS1C", flags: DIFlagPublic)
!68 = !DISubprogram(name: "foo2", linkageName: "_ZN1D4foo2Ev", scope: !"_ZTS1D", file: !1, line: 29, type: !69, isLocal: false, isDefinition: false, scopeLine: 29, containingType: !"_ZTS1D", virtuality: DW_VIRTUALITY_virtual, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1D", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !DISubprogram(name: "bar2", linkageName: "_ZN1D4bar2Ev", scope: !"_ZTS1D", file: !1, line: 30, type: !69, isLocal: false, isDefinition: false, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DICompositeType(tag: DW_TAG_class_type, name: "B", file: !1, line: 17, size: 64, align: 64, elements: !74, vtableHolder: !"_ZTS1A", identifier: "_ZTS1B")
!74 = !{!75, !76, !80}
!75 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTS1B", baseType: !"_ZTS1A", flags: DIFlagPublic)
!76 = !DISubprogram(name: "foo", linkageName: "_ZN1B3fooEv", scope: !"_ZTS1B", file: !1, line: 18, type: !77, isLocal: false, isDefinition: false, scopeLine: 18, containingType: !"_ZTS1B", virtuality: DW_VIRTUALITY_virtual, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1B", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!80 = !DISubprogram(name: "bar", linkageName: "_ZN1B3barEv", scope: !"_ZTS1B", file: !1, line: 19, type: !77, isLocal: false, isDefinition: false, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false)
!81 = !{!82, !86, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107}
!82 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !83, file: !83, line: 74, type: !84, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!83 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/iostream", directory: "/home/hebi/github/callgraph/benchmark")
!84 = !DISubroutineType(types: !85)
!85 = !{null}
!86 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !87, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{!28, !28, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = distinct !DISubprogram(name: "foobar", linkageName: "_ZL6foobarv", scope: !1, file: !1, line: 41, type: !84, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!93 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !"_ZTS1A", file: !1, line: 11, type: !44, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, declaration: !43, variables: !2)
!94 = distinct !DISubprogram(name: "foo", linkageName: "_ZN1A3fooEv", scope: !"_ZTS1A", file: !1, line: 12, type: !44, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, declaration: !47, variables: !2)
!95 = distinct !DISubprogram(name: "E", linkageName: "_ZN1EC2Ev", scope: !"_ZTS1E", file: !1, line: 33, type: !61, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, declaration: !96, variables: !2)
!96 = !DISubprogram(name: "E", scope: !"_ZTS1E", type: !61, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!97 = distinct !DISubprogram(name: "D", linkageName: "_ZN1DC2Ev", scope: !"_ZTS1D", file: !1, line: 28, type: !69, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, declaration: !98, variables: !2)
!98 = !DISubprogram(name: "D", scope: !"_ZTS1D", type: !69, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!99 = distinct !DISubprogram(name: "C", linkageName: "_ZN1CC2Ev", scope: !"_ZTS1C", file: !1, line: 22, type: !53, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, declaration: !100, variables: !2)
!100 = !DISubprogram(name: "C", scope: !"_ZTS1C", type: !53, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!101 = distinct !DISubprogram(name: "foo2", linkageName: "_ZN1C4foo2Ev", scope: !"_ZTS1C", file: !1, line: 24, type: !53, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, declaration: !52, variables: !2)
!102 = distinct !DISubprogram(name: "foo2", linkageName: "_ZN1D4foo2Ev", scope: !"_ZTS1D", file: !1, line: 29, type: !69, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, declaration: !68, variables: !2)
!103 = distinct !DISubprogram(name: "foo2", linkageName: "_ZN1E4foo2Ev", scope: !"_ZTS1E", file: !1, line: 34, type: !61, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, declaration: !60, variables: !2)
!104 = distinct !DISubprogram(name: "B", linkageName: "_ZN1BC2Ev", scope: !"_ZTS1B", file: !1, line: 17, type: !77, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, declaration: !105, variables: !2)
!105 = !DISubprogram(name: "B", scope: !"_ZTS1B", type: !77, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!106 = distinct !DISubprogram(name: "foo", linkageName: "_ZN1B3fooEv", scope: !"_ZTS1B", file: !1, line: 18, type: !77, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, declaration: !76, variables: !2)
!107 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_test1.cpp", scope: !1, file: !1, type: !108, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, variables: !2)
!108 = !DISubroutineType(types: !2)
!109 = !{!110}
!110 = !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !21, file: !83, line: 74, type: !"_ZTSNSt8ios_base4InitE", isLocal: true, isDefinition: true, variable: %"class.std::ios_base::Init"* @_ZStL8__ioinit)
!111 = !{!112, !115, !118, !122, !128, !136, !140, !147, !151, !155, !157, !159, !163, !174, !178, !184, !190, !192, !196, !200, !204, !208, !213, !215, !219, !223, !227, !229, !234, !238, !242, !244, !246, !250, !257, !261, !265, !269, !271, !277, !279, !286, !291, !295, !300, !304, !308, !312, !314, !316, !320, !324, !328, !330, !334, !338, !340, !342, !346, !353, !358, !363, !364, !365, !366, !370, !371, !375, !380, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !420, !422, !423, !425, !427, !429, !431, !435, !437, !439, !441, !443, !445, !447, !449, !451, !455, !459, !461, !465}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !113, line: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !5, line: 106, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !5, line: 94, baseType: !"_ZTS11__mbstate_t")
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !116, line: 139)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !117, line: 132, baseType: !11)
!117 = !DIFile(filename: "/usr/local/bin/../lib/clang/3.9.0/include/stddef.h", directory: "/home/hebi/github/callgraph/benchmark")
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !119, line: 141)
!119 = !DISubprogram(name: "btowc", scope: !5, file: !5, line: 353, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!116, !28}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !123, line: 142)
!123 = !DISubprogram(name: "fgetwc", scope: !5, file: !5, line: 745, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{!116, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !7, line: 64, baseType: !"_ZTS8_IO_FILE")
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !129, line: 143)
!129 = !DISubprogram(name: "fgetws", scope: !5, file: !5, line: 774, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !134, !28, !135}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !137, line: 144)
!137 = !DISubprogram(name: "fputwc", scope: !5, file: !5, line: 759, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!116, !133, !126}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !141, line: 145)
!141 = !DISubprogram(name: "fputws", scope: !5, file: !5, line: 781, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{!28, !144, !135}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !148, line: 146)
!148 = !DISubprogram(name: "fwide", scope: !5, file: !5, line: 587, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!28, !126, !28}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !152, line: 147)
!152 = !DISubprogram(name: "fwprintf", scope: !5, file: !5, line: 594, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!28, !135, !144, null}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !156, line: 148)
!156 = !DISubprogram(name: "fwscanf", scope: !5, file: !5, line: 635, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !158, line: 149)
!158 = !DISubprogram(name: "getwc", scope: !5, file: !5, line: 746, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !160, line: 150)
!160 = !DISubprogram(name: "getwchar", scope: !5, file: !5, line: 752, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!116}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !164, line: 151)
!164 = !DISubprogram(name: "mbrlen", scope: !5, file: !5, line: 376, type: !165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !169, !167, !172}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 62, baseType: !168)
!168 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !175, line: 152)
!175 = !DISubprogram(name: "mbrtowc", scope: !5, file: !5, line: 365, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!167, !134, !169, !167, !172}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !179, line: 153)
!179 = !DISubprogram(name: "mbsinit", scope: !5, file: !5, line: 361, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!28, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !185, line: 154)
!185 = !DISubprogram(name: "mbsrtowcs", scope: !5, file: !5, line: 408, type: !186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DISubroutineType(types: !187)
!187 = !{!167, !134, !188, !167, !172}
!188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !191, line: 155)
!191 = !DISubprogram(name: "putwc", scope: !5, file: !5, line: 760, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !193, line: 156)
!193 = !DISubprogram(name: "putwchar", scope: !5, file: !5, line: 766, type: !194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{!116, !133}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !197, line: 158)
!197 = !DISubprogram(name: "swprintf", scope: !5, file: !5, line: 604, type: !198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{!28, !134, !167, !144, null}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !201, line: 160)
!201 = !DISubprogram(name: "swscanf", scope: !5, file: !5, line: 645, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!28, !144, !144, null}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !205, line: 161)
!205 = !DISubprogram(name: "ungetwc", scope: !5, file: !5, line: 789, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!116, !116, !126}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !209, line: 162)
!209 = !DISubprogram(name: "vfwprintf", scope: !5, file: !5, line: 612, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!28, !135, !144, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS13__va_list_tag", size: 64, align: 64)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !214, line: 164)
!214 = !DISubprogram(name: "vfwscanf", scope: !5, file: !5, line: 689, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !216, line: 167)
!216 = !DISubprogram(name: "vswprintf", scope: !5, file: !5, line: 625, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!28, !134, !167, !144, !212}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !220, line: 170)
!220 = !DISubprogram(name: "vswscanf", scope: !5, file: !5, line: 701, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!28, !144, !144, !212}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !224, line: 172)
!224 = !DISubprogram(name: "vwprintf", scope: !5, file: !5, line: 620, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!28, !144, !212}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !228, line: 174)
!228 = !DISubprogram(name: "vwscanf", scope: !5, file: !5, line: 697, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !230, line: 176)
!230 = !DISubprogram(name: "wcrtomb", scope: !5, file: !5, line: 370, type: !231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!167, !233, !133, !172}
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !235, line: 177)
!235 = !DISubprogram(name: "wcscat", scope: !5, file: !5, line: 155, type: !236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubroutineType(types: !237)
!237 = !{!132, !134, !144}
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !239, line: 178)
!239 = !DISubprogram(name: "wcscmp", scope: !5, file: !5, line: 163, type: !240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DISubroutineType(types: !241)
!241 = !{!28, !145, !145}
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !243, line: 179)
!243 = !DISubprogram(name: "wcscoll", scope: !5, file: !5, line: 192, type: !240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !245, line: 180)
!245 = !DISubprogram(name: "wcscpy", scope: !5, file: !5, line: 147, type: !236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !247, line: 181)
!247 = !DISubprogram(name: "wcscspn", scope: !5, file: !5, line: 252, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!167, !145, !145}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !251, line: 182)
!251 = !DISubprogram(name: "wcsftime", scope: !5, file: !5, line: 855, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!167, !134, !167, !144, !254}
!254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !"_ZTS2tm")
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !258, line: 183)
!258 = !DISubprogram(name: "wcslen", scope: !5, file: !5, line: 287, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!167, !145}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !262, line: 184)
!262 = !DISubprogram(name: "wcsncat", scope: !5, file: !5, line: 158, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!132, !134, !144, !167}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !266, line: 185)
!266 = !DISubprogram(name: "wcsncmp", scope: !5, file: !5, line: 166, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!28, !145, !145, !167}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !270, line: 186)
!270 = !DISubprogram(name: "wcsncpy", scope: !5, file: !5, line: 150, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !272, line: 187)
!272 = !DISubprogram(name: "wcsrtombs", scope: !5, file: !5, line: 414, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!167, !233, !275, !167, !172}
!275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !278, line: 188)
!278 = !DISubprogram(name: "wcsspn", scope: !5, file: !5, line: 256, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !280, line: 189)
!280 = !DISubprogram(name: "wcstod", scope: !5, file: !5, line: 450, type: !281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !144, !284}
!283 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !287, line: 191)
!287 = !DISubprogram(name: "wcstof", scope: !5, file: !5, line: 457, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !144, !284}
!290 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !292, line: 193)
!292 = !DISubprogram(name: "wcstok", scope: !5, file: !5, line: 282, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{!132, !134, !144, !284}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !296, line: 194)
!296 = !DISubprogram(name: "wcstol", scope: !5, file: !5, line: 468, type: !297, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !144, !284, !28}
!299 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !301, line: 195)
!301 = !DISubprogram(name: "wcstoul", scope: !5, file: !5, line: 473, type: !302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DISubroutineType(types: !303)
!303 = !{!168, !144, !284, !28}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !305, line: 196)
!305 = !DISubprogram(name: "wcsxfrm", scope: !5, file: !5, line: 196, type: !306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DISubroutineType(types: !307)
!307 = !{!167, !134, !144, !167}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !309, line: 197)
!309 = !DISubprogram(name: "wctob", scope: !5, file: !5, line: 357, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!28, !116}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !313, line: 198)
!313 = !DISubprogram(name: "wmemcmp", scope: !5, file: !5, line: 325, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !315, line: 199)
!315 = !DISubprogram(name: "wmemcpy", scope: !5, file: !5, line: 329, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !317, line: 200)
!317 = !DISubprogram(name: "wmemmove", scope: !5, file: !5, line: 334, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!132, !132, !145, !167}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !321, line: 201)
!321 = !DISubprogram(name: "wmemset", scope: !5, file: !5, line: 338, type: !322, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{!132, !132, !133, !167}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !325, line: 202)
!325 = !DISubprogram(name: "wprintf", scope: !5, file: !5, line: 601, type: !326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DISubroutineType(types: !327)
!327 = !{!28, !144, null}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !329, line: 203)
!329 = !DISubprogram(name: "wscanf", scope: !5, file: !5, line: 642, type: !326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !331, line: 204)
!331 = !DISubprogram(name: "wcschr", scope: !5, file: !5, line: 227, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!132, !145, !133}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !335, line: 205)
!335 = !DISubprogram(name: "wcspbrk", scope: !5, file: !5, line: 266, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{!132, !145, !145}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !339, line: 206)
!339 = !DISubprogram(name: "wcsrchr", scope: !5, file: !5, line: 237, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !341, line: 207)
!341 = !DISubprogram(name: "wcsstr", scope: !5, file: !5, line: 277, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !343, line: 208)
!343 = !DISubprogram(name: "wmemchr", scope: !5, file: !5, line: 320, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{!132, !145, !133, !167}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !349, line: 248)
!347 = !DINamespace(name: "__gnu_cxx", scope: null, file: !348, line: 241)
!348 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/cwchar", directory: "/home/hebi/github/callgraph/benchmark")
!349 = !DISubprogram(name: "wcstold", scope: !5, file: !5, line: 459, type: !350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !144, !284}
!352 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !354, line: 257)
!354 = !DISubprogram(name: "wcstoll", scope: !5, file: !5, line: 483, type: !355, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !144, !284, !28}
!357 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !359, line: 258)
!359 = !DISubprogram(name: "wcstoull", scope: !5, file: !5, line: 490, type: !360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !144, !284, !28}
!362 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !349, line: 264)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !354, line: 265)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !359, line: 266)
!366 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !367, entity: !369, line: 56)
!367 = !DINamespace(name: "__gnu_debug", scope: null, file: !368, line: 54)
!368 = !DIFile(filename: "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/debug/debug.h", directory: "/home/hebi/github/callgraph/benchmark")
!369 = !DINamespace(name: "__debug", scope: !21, file: !368, line: 48)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !"_ZTS5lconv", line: 53)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !372, line: 54)
!372 = !DISubprogram(name: "setlocale", scope: !18, file: !18, line: 125, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!90, !28, !170}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !376, line: 55)
!376 = !DISubprogram(name: "localeconv", scope: !18, file: !18, line: 128, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS5lconv", size: 64, align: 64)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !381, line: 64)
!381 = !DISubprogram(name: "isalnum", scope: !382, file: !382, line: 111, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/hebi/github/callgraph/benchmark")
!383 = !DISubroutineType(types: !384)
!384 = !{!28, !28}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !386, line: 65)
!386 = !DISubprogram(name: "isalpha", scope: !382, file: !382, line: 112, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !388, line: 66)
!388 = !DISubprogram(name: "iscntrl", scope: !382, file: !382, line: 113, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !390, line: 67)
!390 = !DISubprogram(name: "isdigit", scope: !382, file: !382, line: 114, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !392, line: 68)
!392 = !DISubprogram(name: "isgraph", scope: !382, file: !382, line: 116, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !394, line: 69)
!394 = !DISubprogram(name: "islower", scope: !382, file: !382, line: 115, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !396, line: 70)
!396 = !DISubprogram(name: "isprint", scope: !382, file: !382, line: 117, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !398, line: 71)
!398 = !DISubprogram(name: "ispunct", scope: !382, file: !382, line: 118, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !400, line: 72)
!400 = !DISubprogram(name: "isspace", scope: !382, file: !382, line: 119, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !402, line: 73)
!402 = !DISubprogram(name: "isupper", scope: !382, file: !382, line: 120, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !404, line: 74)
!404 = !DISubprogram(name: "isxdigit", scope: !382, file: !382, line: 121, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !406, line: 75)
!406 = !DISubprogram(name: "tolower", scope: !382, file: !382, line: 125, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !408, line: 76)
!408 = !DISubprogram(name: "toupper", scope: !382, file: !382, line: 128, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !410, line: 44)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !21, file: !22, line: 1857, baseType: !168)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !412, line: 45)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !21, file: !22, line: 1858, baseType: !299)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !414, line: 82)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !415, line: 186, baseType: !416)
!415 = !DIFile(filename: "/usr/include/wctype.h", directory: "/home/hebi/github/callgraph/benchmark")
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !419, line: 40, baseType: !28)
!419 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/hebi/github/callgraph/benchmark")
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !421, line: 83)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !415, line: 52, baseType: !168)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !116, line: 84)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !424, line: 86)
!424 = !DISubprogram(name: "iswalnum", scope: !415, file: !415, line: 111, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !426, line: 87)
!426 = !DISubprogram(name: "iswalpha", scope: !415, file: !415, line: 117, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !428, line: 89)
!428 = !DISubprogram(name: "iswblank", scope: !415, file: !415, line: 162, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !430, line: 91)
!430 = !DISubprogram(name: "iswcntrl", scope: !415, file: !415, line: 120, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !432, line: 92)
!432 = !DISubprogram(name: "iswctype", scope: !415, file: !415, line: 175, type: !433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!433 = !DISubroutineType(types: !434)
!434 = !{!28, !116, !421}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !436, line: 93)
!436 = !DISubprogram(name: "iswdigit", scope: !415, file: !415, line: 124, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !438, line: 94)
!438 = !DISubprogram(name: "iswgraph", scope: !415, file: !415, line: 128, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !440, line: 95)
!440 = !DISubprogram(name: "iswlower", scope: !415, file: !415, line: 133, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !442, line: 96)
!442 = !DISubprogram(name: "iswprint", scope: !415, file: !415, line: 136, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !444, line: 97)
!444 = !DISubprogram(name: "iswpunct", scope: !415, file: !415, line: 141, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !446, line: 98)
!446 = !DISubprogram(name: "iswspace", scope: !415, file: !415, line: 146, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !448, line: 99)
!448 = !DISubprogram(name: "iswupper", scope: !415, file: !415, line: 151, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !450, line: 100)
!450 = !DISubprogram(name: "iswxdigit", scope: !415, file: !415, line: 156, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !452, line: 101)
!452 = !DISubprogram(name: "towctrans", scope: !415, file: !415, line: 221, type: !453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{!116, !116, !414}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !456, line: 102)
!456 = !DISubprogram(name: "towlower", scope: !415, file: !415, line: 194, type: !457, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!457 = !DISubroutineType(types: !458)
!458 = !{!116, !116}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !460, line: 103)
!460 = !DISubprogram(name: "towupper", scope: !415, file: !415, line: 197, type: !457, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !462, line: 104)
!462 = !DISubprogram(name: "wctrans", scope: !415, file: !415, line: 218, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!414, !170}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !466, line: 105)
!466 = !DISubprogram(name: "wctype", scope: !415, file: !415, line: 171, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{!421, !170}
!469 = !{i32 2, !"Dwarf Version", i32 4}
!470 = !{i32 2, !"Debug Info Version", i32 3}
!471 = !{!"clang version 3.9.0 (trunk 259875) (llvm/trunk 259862)"}
!472 = !DILocation(line: 74, column: 25, scope: !82)
!473 = !DILocation(line: 74, column: 25, scope: !474)
!474 = !DILexicalBlockFile(scope: !82, file: !83, discriminator: 1)
!475 = !DILocalVariable(name: "argc", arg: 1, scope: !86, file: !1, line: 45, type: !28)
!476 = !DIExpression()
!477 = !DILocation(line: 45, column: 14, scope: !86)
!478 = !DILocalVariable(name: "argv", arg: 2, scope: !86, file: !1, line: 45, type: !89)
!479 = !DILocation(line: 45, column: 26, scope: !86)
!480 = !DILocation(line: 46, column: 3, scope: !86)
!481 = !DILocalVariable(name: "a", scope: !86, file: !1, line: 47, type: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1A", size: 64, align: 64)
!483 = !DILocation(line: 47, column: 6, scope: !86)
!484 = !DILocation(line: 47, column: 10, scope: !86)
!485 = !DILocation(line: 47, column: 14, scope: !86)
!486 = !DILocation(line: 47, column: 6, scope: !487)
!487 = !DILexicalBlockFile(scope: !86, file: !1, discriminator: 1)
!488 = !DILocation(line: 48, column: 3, scope: !86)
!489 = !DILocation(line: 49, column: 5, scope: !86)
!490 = !DILocation(line: 49, column: 3, scope: !86)
!491 = !DILocalVariable(name: "e", scope: !86, file: !1, line: 50, type: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1C", size: 64, align: 64)
!493 = !DILocation(line: 50, column: 6, scope: !86)
!494 = !DILocation(line: 50, column: 10, scope: !86)
!495 = !DILocation(line: 50, column: 14, scope: !86)
!496 = !DILocation(line: 50, column: 14, scope: !487)
!497 = !DILocation(line: 50, column: 14, scope: !498)
!498 = !DILexicalBlockFile(scope: !86, file: !1, discriminator: 2)
!499 = !DILocation(line: 51, column: 3, scope: !86)
!500 = !DILocation(line: 52, column: 3, scope: !86)
!501 = !DILocation(line: 53, column: 1, scope: !86)
!502 = !DILocation(line: 53, column: 1, scope: !487)
!503 = !DILocation(line: 47, column: 10, scope: !498)
!504 = !DILocation(line: 47, column: 10, scope: !505)
!505 = !DILexicalBlockFile(scope: !86, file: !1, discriminator: 3)
!506 = !DILocation(line: 42, column: 1, scope: !92)
!507 = !DILocalVariable(name: "this", arg: 1, scope: !93, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!508 = !DILocation(line: 0, scope: !93)
!509 = !DILocation(line: 11, column: 7, scope: !93)
!510 = !DILocation(line: 11, column: 8, scope: !93)
!511 = !DILocalVariable(name: "this", arg: 1, scope: !95, type: !512, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1E", size: 64, align: 64)
!513 = !DILocation(line: 0, scope: !95)
!514 = !DILocation(line: 33, column: 7, scope: !95)
!515 = !DILocalVariable(name: "this", arg: 1, scope: !94, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!516 = !DILocation(line: 0, scope: !94)
!517 = !DILocation(line: 13, column: 3, scope: !94)
!518 = !DILocalVariable(name: "this", arg: 1, scope: !97, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1D", size: 64, align: 64)
!520 = !DILocation(line: 0, scope: !97)
!521 = !DILocation(line: 28, column: 7, scope: !97)
!522 = !DILocalVariable(name: "this", arg: 1, scope: !103, type: !512, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DILocation(line: 0, scope: !103)
!524 = !DILocalVariable(name: "a", scope: !103, file: !1, line: 35, type: !482)
!525 = !DILocation(line: 35, column: 8, scope: !103)
!526 = !DILocation(line: 35, column: 12, scope: !103)
!527 = !DILocation(line: 35, column: 16, scope: !103)
!528 = !DILocation(line: 35, column: 16, scope: !529)
!529 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 4)
!530 = !DILocation(line: 35, column: 12, scope: !531)
!531 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 1)
!532 = !DILocation(line: 35, column: 8, scope: !531)
!533 = !DILocation(line: 36, column: 5, scope: !103)
!534 = !DILocation(line: 37, column: 3, scope: !103)
!535 = !DILocation(line: 37, column: 3, scope: !531)
!536 = !DILocation(line: 35, column: 12, scope: !537)
!537 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 2)
!538 = !DILocation(line: 35, column: 12, scope: !539)
!539 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 3)
!540 = !DILocalVariable(name: "this", arg: 1, scope: !99, type: !492, flags: DIFlagArtificial | DIFlagObjectPointer)
!541 = !DILocation(line: 0, scope: !99)
!542 = !DILocation(line: 22, column: 7, scope: !99)
!543 = !DILocalVariable(name: "this", arg: 1, scope: !102, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!544 = !DILocation(line: 0, scope: !102)
!545 = !DILocation(line: 29, column: 24, scope: !102)
!546 = !DILocalVariable(name: "this", arg: 1, scope: !101, type: !492, flags: DIFlagArtificial | DIFlagObjectPointer)
!547 = !DILocation(line: 0, scope: !101)
!548 = !DILocation(line: 24, column: 24, scope: !101)
!549 = !DILocalVariable(name: "this", arg: 1, scope: !104, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1B", size: 64, align: 64)
!551 = !DILocation(line: 0, scope: !104)
!552 = !DILocation(line: 17, column: 7, scope: !104)
!553 = !DILocalVariable(name: "this", arg: 1, scope: !106, type: !550, flags: DIFlagArtificial | DIFlagObjectPointer)
!554 = !DILocation(line: 0, scope: !106)
!555 = !DILocation(line: 18, column: 23, scope: !106)
!556 = !DILocation(line: 0, scope: !107)
