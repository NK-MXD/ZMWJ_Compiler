define i32 @main() {
B31:
  %t34 = alloca [20 x i32], align 4
  %t35 = bitcast [20 x i32]* %t34 to i8*
  call void @llvm.memset.p0.i32(i8* %t35, i8 0, i32 80, i1 0)
  %t36 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 0
  store i32 1, i32* %t36, align 4
  %t37 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 1
  store i32 2, i32* %t37, align 4
  br label %B57
B57:                               	; preds = %B31
  %t82 = add i32 0, 0
  %t75 = add i32 2, 0
  %t7 = icmp slt i32 2, 20
  br i1 %t7, label %B58, label %B62
B58:                               	; preds = %B57, %B89
  %t11 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t75
  %t63 = load i32, i32* %t11, align 4
  %t13 = sub i32 %t75, 1
  %t14 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t13
  %t64 = load i32, i32* %t14, align 4
  %t15 = add i32 %t63, %t64
  %t17 = sub i32 %t75, 2
  %t18 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t17
  %t65 = load i32, i32* %t18, align 4
  %t19 = add i32 %t15, %t65
  %t9 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t75
  store i32 %t19, i32* %t9, align 4
  %t23 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t75
  %t66 = load i32, i32* %t23, align 4
  %t24 = add i32 %t82, %t66
  %t26 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t75
  %t67 = load i32, i32* %t26, align 4
  call void @putint(i32 %t67)
  call void @putch(i32 10)
  %t29 = add i32 %t75, 1
  %t70 = icmp slt i32 %t29, 20
  br i1 %t70, label %B89, label %B73
B62:                               	; preds = %B57
  %t83 = add i32 0, 0
  %t76 = add i32 2, 0
  br label %B59
B73:                               	; preds = %B58
  %t83 = add i32 %t24, 0
  %t76 = add i32 %t29, 0
  br label %B59
B89:                               	; preds = %B58
  %t82 = add i32 %t24, 0
  %t75 = add i32 %t29, 0
  br label %B58
B59:                               	; preds = %B62, %B73
  ret i32 %t83
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
