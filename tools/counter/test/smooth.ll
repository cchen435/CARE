; ModuleID = 'smooth.ll'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @smooth(i32* %igrid, i32* %mtheta, i32* %itran, double* %phism, double* %phitmp, double* %phi, i32 %mpsi) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %mpsi
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %igrid, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %mtheta, i64 %idxprom
  %1 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %0, %1
  %mul = mul nsw i32 %add, 2
  %sub = sub nsw i32 %mul, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds double, double* %phitmp, i64 %idxprom3
  %2 = load double, double* %arrayidx4, align 8
  %mul7 = mul nsw i32 %0, 2
  %sub8 = sub nsw i32 %mul7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds double, double* %phitmp, i64 %idxprom9
  store double %2, double* %arrayidx10, align 8
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %0)
  %conv = sext i32 %call to i64
  %mul = mul i64 4, %conv
  %call1 = call i8* @malloc(i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  %call4 = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call4 to i32*
  %call7 = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call7 to i32*
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call i32 @rand()
  %rem = srem i32 %call9, %call
  %idxprom = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %rem, i32* %arrayidx10, align 4
  %arrayidx12 = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %rem, i32* %arrayidx12, align 4
  %arrayidx14 = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 %rem, i32* %arrayidx14, align 4
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %mul16 = mul i64 8, %conv
  %call17 = call i8* @malloc(i64 %mul16)
  %4 = bitcast i8* %call17 to double*
  %call20 = call i8* @malloc(i64 %mul16)
  %5 = bitcast i8* %call20 to double*
  %call23 = call i8* @malloc(i64 %mul16)
  %6 = bitcast i8* %call23 to double*
  br label %for.cond24

for.cond24:                                       ; preds = %for.body27, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc41, %for.body27 ]
  %cmp25 = icmp slt i32 %i.1, %call
  br i1 %cmp25, label %for.body27, label %for.end42

for.body27:                                       ; preds = %for.cond24
  %call28 = call i32 @rand()
  %conv29 = sitofp i32 %call28 to double
  %idxprom30 = sext i32 %i.1 to i64
  %arrayidx31 = getelementptr inbounds double, double* %4, i64 %idxprom30
  store double %conv29, double* %arrayidx31, align 8
  %call32 = call i32 @rand()
  %conv33 = sitofp i32 %call32 to double
  %arrayidx35 = getelementptr inbounds double, double* %5, i64 %idxprom30
  store double %conv33, double* %arrayidx35, align 8
  %call36 = call i32 @rand()
  %conv37 = sitofp i32 %call36 to double
  %arrayidx39 = getelementptr inbounds double, double* %6, i64 %idxprom30
  store double %conv37, double* %arrayidx39, align 8
  %inc41 = add nsw i32 %i.1, 1
  br label %for.cond24

for.end42:                                        ; preds = %for.cond24
  %call43 = call i32 @smooth(i32* %1, i32* %2, i32* %3, double* %4, double* %5, double* %6, i32 %call)
  ret i32 0
}

declare i32 @atoi(i8*) #1

declare i8* @malloc(i64) #1

declare i32 @rand() #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
