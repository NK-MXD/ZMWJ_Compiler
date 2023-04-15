@n = global i32 0, align 4
define i32 @select_sort(i32* %t1, i32 %t3) {
B79:
  %t80 = alloca i32*, align 4
  %t81 = alloca i32, align 4
  %t82 = alloca i32, align 4
  %t83 = alloca i32, align 4
  %t84 = alloca i32, align 4
  %t117 = alloca i32, align 4
  store i32* %t1, i32** %t80, align 4
  store i32 %t3, i32* %t81, align 4
  store i32 0, i32* %t82, align 4
  br label %B85
B85:                               	; preds = %B79
  %t9 = load i32, i32* %t82, align 4
  %t10 = load i32, i32* %t81, align 4
  %t11 = sub i32 %t10, 1
  %t12 = icmp slt i32 %t9, %t11
  br i1 %t12, label %B86, label %B90
B86:                               	; preds = %B85, %B113
  %t14 = load i32, i32* %t82, align 4
  store i32 %t14, i32* %t84, align 4
  %t16 = load i32, i32* %t82, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t83, align 4
  br label %B91
B90:                               	; preds = %B85
  br label %B87
B91:                               	; preds = %B86
  %t18 = load i32, i32* %t83, align 4
  %t19 = load i32, i32* %t81, align 4
  %t20 = icmp slt i32 %t18, %t19
  br i1 %t20, label %B92, label %B96
B87:                               	; preds = %B90, %B130
  ret i32 0
B92:                               	; preds = %B91, %B98
  %t99 = load i32*, i32** %t80, align 4
  %t21 = load i32, i32* %t84, align 4
  %t22 = getelementptr inbounds i32, i32* %t99, i32 %t21
  %t100 = load i32, i32* %t22, align 4
  %t101 = load i32*, i32** %t80, align 4
  %t23 = load i32, i32* %t83, align 4
  %t24 = getelementptr inbounds i32, i32* %t101, i32 %t23
  %t102 = load i32, i32* %t24, align 4
  %t25 = icmp sgt i32 %t100, %t102
  br i1 %t25, label %B97, label %B105
B96:                               	; preds = %B91
  br label %B93
B97:                               	; preds = %B92
  %t27 = load i32, i32* %t83, align 4
  store i32 %t27, i32* %t84, align 4
  br label %B98
B105:                               	; preds = %B92
  br label %B98
B93:                               	; preds = %B96, %B111
  %t31 = load i32, i32* %t84, align 4
  %t32 = load i32, i32* %t82, align 4
  %t33 = icmp ne i32 %t31, %t32
  br i1 %t33, label %B112, label %B116
B98:                               	; preds = %B97, %B105
  %t29 = load i32, i32* %t83, align 4
  %t30 = add i32 %t29, 1
  store i32 %t30, i32* %t83, align 4
  %t106 = load i32, i32* %t83, align 4
  %t107 = load i32, i32* %t81, align 4
  %t108 = icmp slt i32 %t106, %t107
  br i1 %t108, label %B92, label %B111
B112:                               	; preds = %B93
  %t118 = load i32*, i32** %t80, align 4
  %t36 = load i32, i32* %t84, align 4
  %t37 = getelementptr inbounds i32, i32* %t118, i32 %t36
  %t119 = load i32, i32* %t37, align 4
  store i32 %t119, i32* %t117, align 4
  %t120 = load i32*, i32** %t80, align 4
  %t40 = load i32, i32* %t82, align 4
  %t41 = getelementptr inbounds i32, i32* %t120, i32 %t40
  %t121 = load i32, i32* %t41, align 4
  %t122 = load i32*, i32** %t80, align 4
  %t38 = load i32, i32* %t84, align 4
  %t39 = getelementptr inbounds i32, i32* %t122, i32 %t38
  store i32 %t121, i32* %t39, align 4
  %t44 = load i32, i32* %t117, align 4
  %t123 = load i32*, i32** %t80, align 4
  %t42 = load i32, i32* %t82, align 4
  %t43 = getelementptr inbounds i32, i32* %t123, i32 %t42
  store i32 %t44, i32* %t43, align 4
  br label %B113
B116:                               	; preds = %B93
  br label %B113
B111:                               	; preds = %B98
  br label %B93
B113:                               	; preds = %B112, %B116
  %t46 = load i32, i32* %t82, align 4
  %t47 = add i32 %t46, 1
  store i32 %t47, i32* %t82, align 4
  %t124 = load i32, i32* %t82, align 4
  %t125 = load i32, i32* %t81, align 4
  %t126 = sub i32 %t125, 1
  %t127 = icmp slt i32 %t124, %t126
  br i1 %t127, label %B86, label %B130
B130:                               	; preds = %B113
  br label %B87
}
define i32 @main() {
B131:
  %t132 = alloca [10 x i32], align 4
  %t133 = alloca i32, align 4
  %t140 = alloca i32, align 4
  store i32 10, i32* @n, align 4
  %t50 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 0
  store i32 4, i32* %t50, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 1
  store i32 3, i32* %t51, align 4
  %t52 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 2
  store i32 9, i32* %t52, align 4
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 3
  store i32 2, i32* %t53, align 4
  %t54 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 4
  store i32 0, i32* %t54, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 5
  store i32 1, i32* %t55, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 6
  store i32 6, i32* %t56, align 4
  %t57 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 7
  store i32 5, i32* %t57, align 4
  %t58 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 8
  store i32 7, i32* %t58, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 9
  store i32 8, i32* %t59, align 4
  store i32 0, i32* %t133, align 4
  %t63 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 0
  %t64 = load i32, i32* @n, align 4
  %t65 = call i32 @select_sort(i32* %t63, i32 %t64)
  store i32 %t65, i32* %t133, align 4
  br label %B134
B134:                               	; preds = %B131
  %t66 = load i32, i32* %t133, align 4
  %t67 = load i32, i32* @n, align 4
  %t68 = icmp slt i32 %t66, %t67
  br i1 %t68, label %B135, label %B139
B135:                               	; preds = %B134, %B135
  %t71 = load i32, i32* %t133, align 4
  %t72 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 %t71
  %t141 = load i32, i32* %t72, align 4
  store i32 %t141, i32* %t140, align 4
  %t73 = load i32, i32* %t140, align 4
  call void @putint(i32 %t73)
  store i32 10, i32* %t140, align 4
  %t75 = load i32, i32* %t140, align 4
  call void @putch(i32 %t75)
  %t77 = load i32, i32* %t133, align 4
  %t78 = add i32 %t77, 1
  store i32 %t78, i32* %t133, align 4
  %t142 = load i32, i32* %t133, align 4
  %t143 = load i32, i32* @n, align 4
  %t144 = icmp slt i32 %t142, %t143
  br i1 %t144, label %B135, label %B147
B139:                               	; preds = %B134
  br label %B136
B147:                               	; preds = %B135
  br label %B136
B136:                               	; preds = %B139, %B147
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
