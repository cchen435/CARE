; ModuleID = 'smooth.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %0) #3
  %conv = sext i32 %call to i64
  %mul = mul i64 4, %conv
  %call1 = call noalias i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call1 to i32*
  %call4 = call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call4 to i32*
  %call7 = call noalias i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call7 to i32*
  %mul9 = mul i64 8, %conv
  %call10 = call noalias i8* @malloc(i64 %mul9) #4
  %4 = bitcast i8* %call10 to double*
  %call13 = call noalias i8* @malloc(i64 %mul9) #4
  %5 = bitcast i8* %call13 to double*
  %call16 = call noalias i8* @malloc(i64 %mul9) #4
  %6 = bitcast i8* %call16 to double*
  %call17 = call i32 @smooth(i32* %1, i32* %2, i32* %3, double* %4, double* %5, double* %6, i32 %call)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
