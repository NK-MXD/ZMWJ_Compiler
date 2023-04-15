@a = global [6 x i32] [i32 10, i32 1, i32 50, i32 50, i32 20, i32 5], align 4
@dp = global [10 x [10 x i32]] zeroinitializer, align 4
define i32 @main() {
B75:
  %t76 = alloca i32, align 4
  %t77 = alloca i32, align 4
  %t78 = alloca i32, align 4
  %t79 = alloca i32, align 4
  %t80 = alloca i32, align 4
  %t81 = alloca i32, align 4
  store i32 6, i32* %t76, align 4
  store i32 3, i32* %t77, align 4
  br label %B82
B82:                               	; preds = %B75
  %t10 = load i32, i32* %t77, align 4
  %t11 = load i32, i32* %t76, align 4
  %t12 = icmp sle i32 %t10, %t11
  br i1 %t12, label %B83, label %B87
B83:                               	; preds = %B82, %B90
  store i32 0, i32* %t78, align 4
  br label %B88
B87:                               	; preds = %B82
  br label %B84
B88:                               	; preds = %B83
  %t14 = load i32, i32* %t78, align 4
  %t15 = load i32, i32* %t76, align 4
  %t16 = load i32, i32* %t77, align 4
  %t17 = sub i32 %t15, %t16
  %t18 = add i32 %t17, 1
  %t19 = icmp slt i32 %t14, %t18
  br i1 %t19, label %B89, label %B93
B84:                               	; preds = %B87, %B142
  %t74 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 0
  %t72 = load i32, i32* %t76, align 4
  %t73 = sub i32 %t72, 1
  %t143 = getelementptr inbounds [10 x i32], [10 x i32]* %t74, i32 0, i32 %t73
  %t144 = load i32, i32* %t143, align 4
  call void @putint(i32 %t144)
  ret i32 0
B89:                               	; preds = %B88, %B96
  %t21 = load i32, i32* %t78, align 4
  %t22 = load i32, i32* %t77, align 4
  %t23 = add i32 %t21, %t22
  %t24 = sub i32 %t23, 1
  store i32 %t24, i32* %t80, align 4
  %t26 = load i32, i32* %t78, align 4
  %t27 = add i32 %t26, 1
  store i32 %t27, i32* %t79, align 4
  br label %B94
B93:                               	; preds = %B88
  br label %B90
B94:                               	; preds = %B89
  %t28 = load i32, i32* %t79, align 4
  %t29 = load i32, i32* %t80, align 4
  %t30 = icmp slt i32 %t28, %t29
  br i1 %t30, label %B95, label %B99
B90:                               	; preds = %B93, %B136
  %t70 = load i32, i32* %t77, align 4
  %t71 = add i32 %t70, 1
  store i32 %t71, i32* %t77, align 4
  %t137 = load i32, i32* %t77, align 4
  %t138 = load i32, i32* %t76, align 4
  %t139 = icmp sle i32 %t137, %t138
  br i1 %t139, label %B83, label %B142
B95:                               	; preds = %B94, %B108
  %t32 = load i32, i32* %t78, align 4
  %t34 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t32
  %t33 = load i32, i32* %t79, align 4
  %t100 = getelementptr inbounds [10 x i32], [10 x i32]* %t34, i32 0, i32 %t33
  %t101 = load i32, i32* %t100, align 4
  %t35 = load i32, i32* %t79, align 4
  %t37 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t35
  %t36 = load i32, i32* %t80, align 4
  %t102 = getelementptr inbounds [10 x i32], [10 x i32]* %t37, i32 0, i32 %t36
  %t103 = load i32, i32* %t102, align 4
  %t38 = add i32 %t101, %t103
  %t39 = load i32, i32* %t78, align 4
  %t40 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t39
  %t104 = load i32, i32* %t40, align 4
  %t41 = load i32, i32* %t79, align 4
  %t42 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t41
  %t105 = load i32, i32* %t42, align 4
  %t43 = mul i32 %t104, %t105
  %t44 = load i32, i32* %t80, align 4
  %t45 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t44
  %t106 = load i32, i32* %t45, align 4
  %t46 = mul i32 %t43, %t106
  %t47 = add i32 %t38, %t46
  store i32 %t47, i32* %t81, align 4
  %t48 = load i32, i32* %t78, align 4
  %t50 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t48
  %t49 = load i32, i32* %t80, align 4
  %t110 = getelementptr inbounds [10 x i32], [10 x i32]* %t50, i32 0, i32 %t49
  %t111 = load i32, i32* %t110, align 4
  %t112 = icmp ne i32 %t111, 0
  %t51 = xor i1 %t112, true
  %t58 = icmp ne i1 %t51, 0
  br i1 %t58, label %B107, label %B114
B99:                               	; preds = %B94
  br label %B96
B142:                               	; preds = %B90
  br label %B84
B107:                               	; preds = %B95, %B109
  %t62 = load i32, i32* %t81, align 4
  %t59 = load i32, i32* %t78, align 4
  %t61 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t59
  %t60 = load i32, i32* %t80, align 4
  %t121 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t60
  store i32 %t62, i32* %t121, align 4
  br label %B108
B114:                               	; preds = %B95
  br label %B109
B96:                               	; preds = %B99, %B127
  %t67 = load i32, i32* %t78, align 4
  %t68 = add i32 %t67, 1
  store i32 %t68, i32* %t78, align 4
  %t128 = load i32, i32* %t78, align 4
  %t129 = load i32, i32* %t76, align 4
  %t130 = load i32, i32* %t77, align 4
  %t131 = sub i32 %t129, %t130
  %t132 = add i32 %t131, 1
  %t133 = icmp slt i32 %t128, %t132
  br i1 %t133, label %B89, label %B136
B108:                               	; preds = %B107, %B120
  %t64 = load i32, i32* %t79, align 4
  %t65 = add i32 %t64, 1
  store i32 %t65, i32* %t79, align 4
  %t122 = load i32, i32* %t79, align 4
  %t123 = load i32, i32* %t80, align 4
  %t124 = icmp slt i32 %t122, %t123
  br i1 %t124, label %B95, label %B127
B109:                               	; preds = %B114
  %t52 = load i32, i32* %t81, align 4
  %t53 = load i32, i32* %t78, align 4
  %t55 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t53
  %t54 = load i32, i32* %t80, align 4
  %t116 = getelementptr inbounds [10 x i32], [10 x i32]* %t55, i32 0, i32 %t54
  %t117 = load i32, i32* %t116, align 4
  %t56 = icmp slt i32 %t52, %t117
  br i1 %t56, label %B107, label %B120
B136:                               	; preds = %B96
  br label %B90
B127:                               	; preds = %B108
  br label %B96
B120:                               	; preds = %B109
  br label %B108
}
declare void @putint(i32)
