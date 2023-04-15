define i32 @maxSubArray(i32* %t0, i32 %t2) {
B58:
  %t59 = alloca i32*, align 4
  %t60 = alloca i32, align 4
  %t73 = alloca i32, align 4
  %t76 = alloca i32, align 4
  %t77 = alloca i32, align 4
  store i32* %t0, i32** %t59, align 4
  store i32 %t2, i32* %t60, align 4
  %t4 = load i32, i32* %t60, align 4
  %t5 = icmp eq i32 %t4, 0
  br i1 %t5, label %B61, label %B65
B61:                               	; preds = %B58
  ret i32 0
B65:                               	; preds = %B58
  br label %B62
B62:                               	; preds = %B65
  %t6 = load i32, i32* %t60, align 4
  %t7 = icmp eq i32 %t6, 1
  br i1 %t7, label %B66, label %B70
B66:                               	; preds = %B62
  %t71 = load i32*, i32** %t59, align 4
  %t8 = getelementptr inbounds i32, i32* %t71, i32 0
  %t72 = load i32, i32* %t8, align 4
  ret i32 %t72
B70:                               	; preds = %B62
  br label %B67
B67:                               	; preds = %B70
  %t74 = load i32*, i32** %t59, align 4
  %t11 = getelementptr inbounds i32, i32* %t74, i32 0
  %t75 = load i32, i32* %t11, align 4
  store i32 %t75, i32* %t73, align 4
  %t14 = load i32, i32* %t73, align 4
  store i32 %t14, i32* %t76, align 4
  store i32 1, i32* %t77, align 4
  br label %B78
B78:                               	; preds = %B67
  %t17 = load i32, i32* %t77, align 4
  %t18 = load i32, i32* %t60, align 4
  %t19 = icmp slt i32 %t17, %t18
  br i1 %t19, label %B79, label %B83
B79:                               	; preds = %B78, %B92
  %t20 = load i32, i32* %t73, align 4
  %t21 = icmp slt i32 %t20, 0
  br i1 %t21, label %B84, label %B88
B83:                               	; preds = %B78
  br label %B80
B84:                               	; preds = %B79
  store i32 0, i32* %t73, align 4
  br label %B85
B88:                               	; preds = %B79
  br label %B85
B80:                               	; preds = %B83, %B101
  %t36 = load i32, i32* %t76, align 4
  ret i32 %t36
B85:                               	; preds = %B84, %B88
  %t24 = load i32, i32* %t73, align 4
  %t89 = load i32*, i32** %t59, align 4
  %t25 = load i32, i32* %t77, align 4
  %t26 = getelementptr inbounds i32, i32* %t89, i32 %t25
  %t90 = load i32, i32* %t26, align 4
  %t27 = add i32 %t24, %t90
  store i32 %t27, i32* %t73, align 4
  %t28 = load i32, i32* %t76, align 4
  %t29 = load i32, i32* %t73, align 4
  %t30 = icmp slt i32 %t28, %t29
  br i1 %t30, label %B91, label %B95
B91:                               	; preds = %B85
  %t32 = load i32, i32* %t73, align 4
  store i32 %t32, i32* %t76, align 4
  br label %B92
B95:                               	; preds = %B85
  br label %B92
B92:                               	; preds = %B91, %B95
  %t34 = load i32, i32* %t77, align 4
  %t35 = add i32 %t34, 1
  store i32 %t35, i32* %t77, align 4
  %t96 = load i32, i32* %t77, align 4
  %t97 = load i32, i32* %t60, align 4
  %t98 = icmp slt i32 %t96, %t97
  br i1 %t98, label %B79, label %B101
B101:                               	; preds = %B92
  br label %B80
}
define i32 @main() {
B102:
  %t103 = alloca i32, align 4
  %t104 = alloca [10 x i32], align 4
  %t40 = sub i32 0, 4
  %t39 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 0
  store i32 %t40, i32* %t39, align 4
  %t41 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 1
  store i32 3, i32* %t41, align 4
  %t42 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 2
  store i32 9, i32* %t42, align 4
  %t44 = sub i32 0, 2
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 3
  store i32 %t44, i32* %t43, align 4
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 4
  store i32 0, i32* %t45, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 5
  store i32 1, i32* %t46, align 4
  %t48 = sub i32 0, 6
  %t47 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 6
  store i32 %t48, i32* %t47, align 4
  %t49 = getelementptr inbounds [10 x i32], [10 x i32]* %t104, i32 0, i32 7
  store i32 5, i32* %t49, align 4
  %t50 = getelementpt