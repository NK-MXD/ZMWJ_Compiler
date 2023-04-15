@ans = global [50 x i32] zeroinitializer, align 4
@sum = global i32 0, align 4
@n = global i32 0, align 4
@row = global [50 x i32] zeroinitializer, align 4
@line1 = global [50 x i32] zeroinitializer, align 4
@line2 = global [100 x i32] zeroinitializer, align 4
define void @printans() {
B90:
  %t91 = alloca i32, align 4
  %t7 = load i32, i32* @sum, align 4
  %t8 = add i32 %t7, 1
  store i32 %t8, i32* @sum, align 4
  store i32 1, i32* %t91, align 4
  br label %B92
B92:                               	; preds = %B90
  %t10 = load i32, i32* %t91, align 4
  %t11 = load i32, i32* @n, align 4
  %t12 = icmp sle i32 %t10, %t11
  br i1 %t12, label %B93, label %B97
B93:                               	; preds = %B92, %B101
  %t13 = load i32, i32* %t91, align 4
  %t14 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i32 0, i32 %t13
  %t98 = load i32, i32* %t14, align 4
  call void @putint(i32 %t98)
  %t15 = load i32, i32* %t91, align 4
  %t16 = load i32, i32* @n, align 4
  %t17 = icmp eq i32 %t15, %t16
  br i1 %t17, label %B99, label %B104
B97:                               	; preds = %B92
  br label %B94
B99:                               	; preds = %B93
  call void @putch(i32 10)
  ret void
B104:                               	; preds = %B93
  br label %B100
B94:                               	; preds = %B97, %B110
  ret void
B100:                               	; preds = %B104
  call void @putch(i32 32)
  br label %B101
B101:                               	; preds = %B100
  %t19 = load i32, i32* %t91, align 4
  %t20 = add i32 %t19, 1
  store i32 %t20, i32* %t91, align 4
  %t105 = load i32, i32* %t91, align 4
  %t106 = load i32, i32* @n, align 4
  %t107 = icmp sle i32 %t105, %t106
  br i1 %t107, label %B93, label %B110
B110:                               	; preds = %B101
  br label %B94
}
define void @f(i32 %t21) {
B111:
  %t112 = alloca i32, align 4
  %t113 = alloca i32, align 4
  store i32 %t21, i32* %t112, align 4
  store i32 1, i32* %t113, align 4
  br label %B114
B114:                               	; preds = %B111
  %t24 = load i32, i32* %t113, align 4
  %t25 = load i32, i32* @n, align 4
  %t26 = icmp sle i32 %t24, %t25
  br i1 %t26, label %B115, label %B119
B115:                               	; preds = %B114, %B121
  %t27 = load i32, i32* %t113, align 4
  %t28 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t27
  %t124 = load i32, i32* %t28, align 4
  %t29 = icmp ne i32 %t124, 1
  br i1 %t29, label %B123, label %B127
B119:                               	; preds = %B114
  br label %B116
B123:                               	; preds = %B115
  %t30 = load i32, i32* %t112, align 4
  %t31 = load i32, i32* %t113, align 4
  %t32 = add i32 %t30, %t31
  %t33 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t32
  %t128 = load i32, i32* %t33, align 4
  %t34 = icmp eq i32 %t128, 0
  br i1 %t34, label %B122, label %B131
B127:                               	; preds = %B115
  br label %B121
B116:                               	; preds = %B119, %B147
  ret void
B122:                               	; preds = %B123
  %t36 = load i32, i32* @n, align 4
  %t37 = load i32, i32* %t112, align 4
  %t38 = add i32 %t36, %t37
  %t39 = load i32, i32* %t113, align 4
  %t40 = sub i32 %t38, %t39
  %t41 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t40
  %t132 = load i32, i32* %t41, align 4
  %t133 = icmp ne i32 %t132, 0
  %t42 = xor i1 %t133, true
  %t44 = icmp ne i1 %t42, 0
  br i1 %t44, label %B120, label %B135
B131:                               	; preds = %B123
  br label %B121
B121:                               	; preds = %B127, %B131, %B135, %B138
  %t78 = load i32, i32* %t113, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t113, align 4
  %t142 = load i32, i32* %t113, align 4
  %t143 = load i32, i32* @n, align 4
  %t144 = icmp sle i32 %t142, %t143
  br i1 %t144, label %B115, label %B147
B120:                               	; preds = %B122
  %t47 = load i32, i32* %t113, align 4
  %t45 = load i32, i32* %t112, align 4
  %t46 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i32 0, i32 %t45
  store i32 %t47, i32* %t46, align 4
  %t48 = load i32, i32* %t112, align 4
  %t49 = load i32, i32* @n, align 4
  %t50 = icmp eq i32 %t48, %t49
  br i1 %t50, label %B137, label %B141
B135:                               	; preds = %B122
  br label %B121
B147:                               	; preds = %B121
  br label %B116
B137:                               	; preds = %B120
  call void @printans()
  br label %B138
B141:                               	; preds = %B120
  br label %B138
B138:                               	; preds = %B137, %B141
  %t51 = load i32, i32* %t113, align 4
  %t52 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t51
  store i32 1, i32* %t52, align 4
  %t53 = load i32, i32* %t112, align 4
  %t54 = load i32, i32* %t113, align 4
  %t55 = add i32 %t53, %t54
  %t56 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t55
  store i32 1, i32* %t56, align 4
  %t57 = load i32, i32* @n, align 4
  %t58 = load i32, i32* %t112, align 4
  %t59 = add i32 %t57, %t58
  %t60 = load i32, i32* %t113, align 4
  %t61 = sub i32 %t59, %t60
  %t62 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t61
  store i32 1, i32* %t62, align 4
  %t63 = load i32, i32* %t112, align 4
  %t64 = add i32 %t63, 1
  call void @f(i32 %t64)
  %t65 = load i32, i32* %t113, align 4
  %t66 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t65
  store i32 0, i32* %t66, align 4
  %t67 = load i32, i32* %t112, align 4
  %t68 = load i32, i32* %t113, align 4
  %t69 = add i32 %t67, %t68
  %t70 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t69
  store i32 0, i32* %t70, align 4
  %t71 = load i32, i32* @n, align 4
  %t72 = load i32, i32* %t112, align 4
  %t73 = add i32 %t71, %t72
  %t74 = load i32, i32* %t113, align 4
  %t75 = sub i32 %t73, %t74
  %t76 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t75
  store i32 0, i32* %t76, align 4
  br label %B121
}
define i32 @main() {
B148:
  %t149 = alloca i32, align 4
  %t80 = call i32 @getint()
  store i32 %t80, i32* %t149, align 4
  br label %B150
B150:                               	; preds = %B148
  %t82 = load i32, i32* %t149, align 4
  %t83 = icmp sgt i32 %t82, 0
  br i1 %t83, label %B151, label %B155
B151:                               	; preds = %B150, %B151
  %t85 = call i32 @getint()
  store i32 %t85, i32* @n, align 4
  call void @f(i32 1)
  %t87 = load i32, i32* %t149, align 4
  %t88 = sub i32 %t87, 1
  store i32 %t88, i32* %t149, align 4
  %t156 = load i32, i32* %t149, align 4
  %t157 = icmp sgt i32 %t156, 0
  br i1 %t157, label %B151, label %B160
B155:                               	; preds = %B150
  br label %B152
B160:                               	; preds = %B151
  br label %B152
B152:                               	; preds = %B155, %B160
  %t89 = load i32, i32* @sum, align 4
  ret i32 %t89
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
