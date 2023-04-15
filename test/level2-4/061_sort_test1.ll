@n = global i32 0, align 4
define i32 @bubblesort(i32* %t1) {
B71:
  %t72 = alloca i32*, align 4
  %t73 = alloca i32, align 4
  %t74 = alloca i32, align 4
  %t96 = alloca i32, align 4
  store i32* %t1, i32** %t72, align 4
  store i32 0, i32* %t73, align 4
  br label %B75
B75:                               	; preds = %B71
  %t6 = load i32, i32* %t73, align 4
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t9 = icmp slt i32 %t6, %t8
  br i1 %t9, label %B76, label %B80
B76:                               	; preds = %B75, %B83
  store i32 0, i32* %t74, align 4
  br label %B81
B80:                               	; preds = %B75
  br label %B77
B81:                               	; preds = %B76
  %t11 = load i32, i32* %t74, align 4
  %t12 = load i32, i32* @n, align 4
  %t13 = load i32, i32* %t73, align 4
  %t14 = sub i32 %t12, %t13
  %t15 = sub i32 %t14, 1
  %t16 = icmp slt i32 %t11, %t15
  br i1 %t16, label %B82, label %B86
B77:                               	; preds = %B80, %B118
  ret i32 0
B82:                               	; preds = %B81, %B88
  %t89 = load i32*, i32** %t72, align 4
  %t17 = load i32, i32* %t74, align 4
  %t18 = getelementptr inbounds i32, i32* %t89, i32 %t17
  %t90 = load i32, i32* %t18, align 4
  %t91 = load i32*, i32** %t72, align 4
  %t19 = load i32, i32* %t74, align 4
  %t20 = add i32 %t19, 1
  %t21 = getelementptr inbounds i32, i32* %t91, i32 %t20
  %t92 = load i32, i32* %t21, align 4
  %t22 = icmp sgt i32 %t90, %t92
  br i1 %t22, label %B87, label %B95
B86:                               	; preds = %B81
  br label %B83
B87:                               	; preds = %B82
  %t97 = load i32*, i32** %t72, align 4
  %t25 = load i32, i32* %t74, align 4
  %t26 = add i32 %t25, 1
  %t27 = getelementptr inbounds i32, i32* %t97, i32 %t26
  %t98 = load i32, i32* %t27, align 4
  store i32 %t98, i32* %t96, align 4
  %t99 = load i32*, i32** %t72, align 4
  %t31 = load i32, i32* %t74, align 4
  %t32 = getelementptr inbounds i32, i32* %t99, i32 %t31
  %t100 = load i32, i32* %t32, align 4
  %t101 = load i32*, i32** %t72, align 4
  %t28 = load i32, i32* %t74, align 4
  %t29 = add i32 %t28, 1
  %t30 = getelementptr inbounds i32, i32* %t101, i32 %t29
  store i32 %t100, i32* %t30, align 4
  %t35 = load i32, i32* %t96, align 4
  %t102 = load i32*, i32** %t72, align 4
  %t33 = load i32, i32* %t74, align 4
  %t34 = getelementptr inbounds i32, i32* %t102, i32 %t33
  store i32 %t35, i32* %t34, align 4
  br label %B88
B95:                               	; preds = %B82
  br label %B88
B83:                               	; preds = %B86, %B111
  %t40 = load i32, i32* %t73, align 4
  %t41 = add i32 %t40, 1
  store i32 %t41, i32* %t73, align 4
  %t112 = load i32, i32* %t73, align 4
  %t113 = load i32, i32* @n, align 4
  %t114 = sub i32 %t113, 1
  %t115 = icmp slt i32 %t112, %t114
  br i1 %t115, label %B76, label %B118
B88:                               	; preds = %B87, %B95
  %t37 = load i32, i32* %t74, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t74, align 4
  %t103 = load i32, i32* %t74, align 4
  %t104 = load i32, i32* @n, align 4
  %t105 = load i32, i32* %t73, align 4
  %t106 = sub i32 %t104, %t105
  %t107 = sub i32 %t106, 1
  %t108 = icmp slt i32 %t103, %t107
  br i1 %t108, label %B82, label %B111
B118:                               	; preds = %B83
  br label %B77
B111:                               	; preds = %B88
  br label %B83
}
define i32 @main() {
B119:
  %t120 = alloca [10 x i32], align 4
  %t121 = alloca i32, align 4
  %t128 = alloca i32, align 4
  store i32 10, i32* @n, align 4
  %t44 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 0
  store i32 4, i32* %t44, align 4
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 1
  store i32 3, i32* %t45, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 2
  store i32 9, i32* %t46, align 4
  %t47 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 3
  store i32 2, i32* %t47, align 4
  %t48 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 4
  store i32 0, i32* %t48, align 4
  %t49 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 5
  store i32 1, i32* %t49, align 4
  %t50 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 6
  store i32 6, i32* %t50, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 7
  store i32 5, i32* %t51, align 4
  %t52 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 8
  store i32 7, i32* %t52, align 4
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 9
  store i32 8, i32* %t53, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 0
  %t57 = call i32 @bubblesort(i32* %t56)
  store i32 %t57, i32* %t121, align 4
  br label %B122
B122:                               	; preds = %B119
  %t58 = load i32, i32* %t121, align 4
  %t59 = load i32, i32* @n, align 4
  %t60 = icmp slt i32 %t58, %t59
  br i1 %t60, label %B123, label %B127
B123:                               	; preds = %B122, %B123
  %t63 = load i32, i32* %t121, align 4
  %t64 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 %t63
  %t129 = load i32, i32* %t64, align 4
  store i32 %t129, i32* %t128, align 4
  %t65 = load i32, i32* %t128, align 4
  call void @putint(i32 %t65)
  store i32 10, i32* %t128, align 4
  %t67 = load i32, i32* %t128, align 4
  call void @putch(i32 %t67)
  %t69 = load i32, i32* %t121, align 4
  %t70 = add i32 %t69, 1
  store i32 %t70, i32* %t121, align 4
  %t130 = load i32, i32* %t121, align 4
  %t131 = load i32, i32* @n, align 4
  %t132 = icmp slt i32 %t130, %t131
  br i1 %t132, label %B123, label %B135
B127:                               	; preds = %B122
  br label %B124
B135:                               	; preds = %B123
  br label %B124
B124:                               	; preds = %B127, %B135
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
