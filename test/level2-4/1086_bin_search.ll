define i32 @main() {
B63:
  %t64 = alloca i32, align 4
  %t65 = alloca i32, align 4
  %t66 = alloca [10 x i32], align 4
  %t78 = alloca i32, align 4
  %t79 = alloca i32, align 4
  %t80 = alloca i32, align 4
  %t81 = alloca i32, align 4
  %t82 = alloca i32, align 4
  store i32 0, i32* %t65, align 4
  store i32 0, i32* %t64, align 4
  br label %B67
B67:                               	; preds = %B63
  %t5 = load i32, i32* %t64, align 4
  %t6 = icmp slt i32 %t5, 10
  br i1 %t6, label %B68, label %B72
B68:                               	; preds = %B67, %B68
  %t9 = load i32, i32* %t64, align 4
  %t10 = add i32 %t9, 1
  %t7 = load i32, i32* %t64, align 4
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t7
  store i32 %t10, i32* %t8, align 4
  %t12 = load i32, i32* %t64, align 4
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t64, align 4
  %t73 = load i32, i32* %t64, align 4
  %t74 = icmp slt i32 %t73, 10
  br i1 %t74, label %B68, label %B77
B72:                               	; preds = %B67
  br label %B69
B77:                               	; preds = %B68
  br label %B69
B69:                               	; preds = %B72, %B77
  store i32 10, i32* %t82, align 4
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t78, align 4
  %t23 = load i32, i32* %t82, align 4
  %t24 = sub i32 %t23, 1
  store i32 %t24, i32* %t79, align 4
  store i32 0, i32* %t80, align 4
  %t27 = load i32, i32* %t79, align 4
  %t28 = load i32, i32* %t80, align 4
  %t29 = add i32 %t27, %t28
  %t30 = sdiv i32 %t29, 2
  store i32 %t30, i32* %t81, align 4
  br label %B83
B83:                               	; preds = %B69
  %t31 = load i32, i32* %t81, align 4
  %t32 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t31
  %t87 = load i32, i32* %t32, align 4
  %t33 = load i32, i32* %t78, align 4
  %t34 = icmp ne i32 %t87, %t33
  br i1 %t34, label %B109, label %B90
B109:                               	; preds = %B83, %B96
  %t105 = load i32, i32* %t80, align 4
  %t106 = load i32, i32* %t79, align 4
  %t107 = icmp slt i32 %t105, %t106
  br i1 %t107, label %B84, label %B116
B90:                               	; preds = %B83
  br label %B85
B84:                               	; preds = %B109
  %t40 = load i32, i32* %t79, align 4
  %t41 = load i32, i32* %t80, align 4
  %t42 = add i32 %t40, %t41
  %t43 = sdiv i32 %t42, 2
  store i32 %t43, i32* %t81, align 4
  %t44 = load i32, i32* %t78, align 4
  %t45 = load i32, i32* %t81, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t45
  %t97 = load i32, i32* %t46, align 4
  %t47 = icmp slt i32 %t44, %t97
  br i1 %t47, label %B94, label %B100
B116:                               	; preds = %B109
  br label %B85
B85:                               	; preds = %B90, %B113, %B116
  %t54 = load i32, i32* %t78, align 4
  %t55 = load i32, i32* %t81, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t55
  %t120 = load i32, i32* %t56, align 4
  %t57 = icmp eq i32 %t54, %t120
  br i1 %t57, label %B117, label %B123
B94:                               	; preds = %B84
  %t49 = load i32, i32* %t81, align 4
  %t50 = sub i32 %t49, 1
  store i32 %t50, i32* %t79, align 4
  br label %B96
B100:                               	; preds = %B84
  br label %B95
B117:                               	; preds = %B85
  %t58 = load i32, i32* %t78, align 4
  call void @putint(i32 %t58)
  br label %B119
B123:                               	; preds = %B85
  br label %B118
B96:                               	; preds = %B94, %B95
  %t101 = load i32, i32* %t81, align 4
  %t102 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t101
  %t110 = load i32, i32* %t102, align 4
  %t103 = load i32, i32* %t78, align 4
  %t104 = icmp ne i32 %t110, %t103
  br i1 %t104, label %B109, label %B113
B95:                               	; preds = %B100
  %t52 = load i32, i32* %t81, align 4
  %t53 = add i32 %t52, 1
  store i32 %t53, i32* %t80, align 4
  br label %B96
B119:                               	; preds = %B117, %B118
  store i32 10, i32* %t78, align 4
  %t62 = load i32, i32* %t78, align 4
  call void @putch(i32 %t62)
  ret i32 0
B118:                               	; preds = %B123
  store i32 0, i32* %t78, align 4
  %t60 = load i32, i32* %t78, align 4
  call void @putint(i32 %t60)
  br label %B119
B113:                               	; preds = %B96
  br label %B85
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
