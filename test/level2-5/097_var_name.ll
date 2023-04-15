define i32 @main() {
B31:
  %t32 = alloca i32, align 4
  %t33 = alloca i32, align 4
  %t34 = alloca [20 x i32], align 4
  %t56 = alloca i32, align 4
  store i32 2, i32* %t32, align 4
  store i32 20, i32* %t33, align 4
  %t35 = bitcast [20 x i32]* %t34 to i8*
  call void @llvm.memset.p0.i32(i8* %t35, i8 0, i32 80, i1 0)
  %t36 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 0
  store i32 1, i32* %t36, align 4
  %t37 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 1
  store i32 2, i32* %t37, align 4
  store i32 0, i32* %t56, align 4
  br label %B57
B57:                               	; preds = %B31
  %t5 = load i32, i32* %t32, align 4
  %t6 = load i32, i32* %t33, align 4
  %t7 = icmp slt i32 %t5, %t6
  br i1 %t7, label %B58, label %B62
B58:                               	; preds = %B57, %B58
  %t10 = load i32, i32* %t32, align 4
  %t11 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t10
  %t63 = load i32, i32* %t11, align 4
  %t12 = load i32, i32* %t32, align 4
  %t13 = sub i32 %t12, 1
  %t14 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t13
  %t64 = load i32, i32* %t14, align 4
  %t15 = add i32 %t63, %t64
  %t16 = load i32, i32* %t32, align 4
  %t17 = sub i32 %t16, 2
  %t18 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t17
  %t65 = load i32, i32* %t18, align 4
  %t19 = add i32 %t15, %t65
  %t8 = load i32, i32* %t32, align 4
  %t9 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t8
  store i32 %t19, i32* %t9, align 4
  %t21 = load i32, i32* %t56, align 4
  %t22 = load i32, i32* %t32, align 4
  %t23 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t22
  %t66 = load i32, i32* %t23, align 4
  %t24 = add i32 %t21, %t66
  store i32 %t24, i32* %t56, align 4
  %t25 = load i32, i32* %t32, align 4
  %t26 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t25
  %t67 = load i32, i32* %t26, align 4
  call void @putint(i32 %t67)
  call void @putch(i32 10)
  %t28 = load i32, i32* %t32, align 4
  %t29 = add i32 %t28, 1
  store i32 %t29, i32* %t32, align 4
  %t68 = load i32, i32* %t32, align 4
  %t69 = load i32, i32* %t33, align 4
  %t70 = icmp slt i32 %t68, %t69
  br i1 %t70, label %B58, label %B73
B62:                               	; preds = %B57
  br label %B59
B73:                               	; preds = %B58
  br label %B59
B59:                               	; preds = %B62, %B73
  %t30 = load i32, i32* %t56, align 4
  ret i32 %t30
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
