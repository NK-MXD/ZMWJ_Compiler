@n = global i32 0, align 4
define i32 @insertsort(i32* %t1) {
B68:
  %t69 = alloca i32*, align 4
  store i32* %t1, i32** %t69, align 4
  br label %B71
B71:                               	; preds = %B68
  %t6 = load i32, i32* @n, align 4
  %t153 = add i32 0, 0
  %t144 = add i32 0, 0
  %t138 = add i32 1, 0
  %t7 = icmp slt i32 1, %t6
  br i1 %t7, label %B72, label %B76
B72:                               	; preds = %B71, %B83
  %t78 = load i32*, i32** %t69, align 4
  %t11 = getelementptr inbounds i32, i32* %t78, i32 %t138
  %t79 = load i32, i32* %t11, align 4
  %t15 = sub i32 %t138, 1
  br label %B81
B76:                               	; preds = %B71
  %t154 = add i32 0, 0
  %t145 = add i32 0, 0
  %t139 = add i32 1, 0
  br label %B73
B81:                               	; preds = %B72
  %t17 = sub i32 0, 1
  %t150 = add i32 %t15, 0
  %t18 = icmp sgt i32 %t15, %t17
  br i1 %t18, label %B104, label %B87
B73:                               	; preds = %B76, %B119
  ret i32 0
B104:                               	; preds = %B81, %B82
  %t108 = load i32*, i32** %t69, align 4
  %t101 = getelementptr inbounds i32, i32* %t108, i32 %t150
  %t109 = load i32, i32* %t101, align 4
  %t102 = icmp slt i32 %t79, %t109
  br i1 %t102, label %B82, label %B112
B87:                               	; preds = %B81
  %t149 = add i32 %t15, 0
  br label %B83
B82:                               	; preds = %B104
  %t93 = load i32*, i32** %t69, align 4
  %t28 = getelementptr inbounds i32, i32* %t93, i32 %t150
  %t94 = load i32, i32* %t28, align 4
  %t25 = add i32 %t150, 1
  %t26 = getelementptr inbounds i32, i32* %t93, i32 %t25
  store i32 %t94, i32* %t26, align 4
  %t31 = sub i32 %t150, 1
  %t97 = sub i32 0, 1
  %t150 = add i32 %t31, 0
  %t98 = icmp sgt i32 %t31, %t97
  br i1 %t98, label %B104, label %B107
B112:                               	; preds = %B104
  %t149 = add i32 %t150, 0
  br label %B83
B83:                               	; preds = %B87, %B107, %B112
  %t113 = load i32*, i32** %t69, align 4
  %t33 = add i32 %t149, 1
  %t34 = getelementptr inbounds i32, i32* %t113, i32 %t33
  store i32 %t79, i32* %t34, align 4
  %t38 = add i32 %t138, 1
  %t115 = load i32, i32* @n, align 4
  %t153 = add i32 %t149, 0
  %t144 = add i32 %t79, 0
  %t138 = add i32 %t38, 0
  %t116 = icmp slt i32 %t38, %t115
  br i1 %t116, label %B72, label %B119
B107:                               	; preds = %B82
  %t149 = add i32 %t31, 0
  br label %B83
B119:                               	; preds = %B83
  %t154 = add i32 %t149, 0
  %t145 = add i32 %t79, 0
  %t139 = add i32 %t38, 0
  br label %B73
}
define i32 @main() {
B120:
  %t121 = alloca [10 x i32], align 4
  store i32 10, i32* @n, align 4
  %t41 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 0
  store i32 4, i32* %t41, align 4
  %t42 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 1
  store i32 3, i32* %t42, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 2
  store i32 9, i32* %t43, align 4
  %t44 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 3
  store i32 2, i32* %t44, align 4
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 4
  store i32 0, i32* %t45, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 5
  store i32 1, i32* %t46, align 4
  %t47 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 6
  store i32 6, i32* %t47, align 4
  %t48 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 7
  store i32 5, i32* %t48, align 4
  %t49 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 8
  store i32 7, i32* %t49, align 4
  %t50 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 9
  store i32 8, i32* %t50, align 4
  %t54 = call i32 @insertsort(i32* %t41)
  br label %B123
B123:                               	; preds = %B120
  %t56 = load i32, i32* @n, align 4
  %t166 = add i32 0, 0
  %t160 = add i32 %t54, 0
  %t57 = icmp slt i32 %t54, %t56
  br i1 %t57, label %B124, label %B128
B124:                               	; preds = %B123, %B180
  %t61 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 %t160
  %t130 = load i32, i32* %t61, align 4
  call void @putint(i32 %t130)
  call void @putch(i32 10)
  %t67 = add i32 %t160, 1
  %t132 = load i32, i32* @n, align 4
  %t133 = icmp slt i32 %t67, %t132
  br i1 %t133, label %B180, label %B136
B128:                               	; preds = %B123
  %t165 = add i32 0, 0
  %t159 = add i32 %t54, 0
  br label %B125
B136:                               	; preds = %B124
  %t165 = add i32 10, 0
  %t159 = add i32 %t67, 0
  br label %B125
B180:                               	; preds = %B124
  %t166 = add i32 10, 0
  %t160 = add i32 %t67, 0
  br label %B124
B125:                               	; preds = %B128, %B136
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
