@n = global i32 0, align 4
define i32 @select_sort(i32* %t1, i32 %t3) {
B79:
  %t80 = alloca i32*, align 4
  %t81 = alloca i32, align 4
  store i32* %t1, i32** %t80, align 4
  store i32 %t3, i32* %t81, align 4
  br label %B85
B85:                               	; preds = %B79
  %t10 = load i32, i32* %t81, align 4
  %t11 = sub i32 %t10, 1
  %t179 = add i32 0, 0
  %t170 = add i32 0, 0
  %t158 = add i32 0, 0
  %t149 = add i32 0, 0
  %t12 = icmp slt i32 0, %t11
  br i1 %t12, label %B86, label %B90
B86:                               	; preds = %B85, %B113
  %t17 = add i32 %t149, 1
  br label %B91
B90:                               	; preds = %B85
  %t180 = add i32 0, 0
  %t171 = add i32 0, 0
  %t159 = add i32 0, 0
  %t150 = add i32 0, 0
  br label %B87
B91:                               	; preds = %B86
  %t19 = load i32, i32* %t81, align 4
  %t167 = add i32 %t149, 0
  %t155 = add i32 %t17, 0
  %t20 = icmp slt i32 %t17, %t19
  br i1 %t20, label %B92, label %B96
B87:                               	; preds = %B90, %B130
  ret i32 0
B92:                               	; preds = %B91, %B98
  %t99 = load i32*, i32** %t80, align 4
  %t22 = getelementptr inbounds i32, i32* %t99, i32 %t167
  %t100 = load i32, i32* %t22, align 4
  %t24 = getelementptr inbounds i32, i32* %t99, i32 %t155
  %t102 = load i32, i32* %t24, align 4
  %t25 = icmp sgt i32 %t100, %t102
  br i1 %t25, label %B97, label %B105
B96:                               	; preds = %B91
  %t168 = add i32 %t149, 0
  %t156 = add i32 %t17, 0
  br label %B93
B97:                               	; preds = %B92
  %t165 = add i32 %t155, 0
  br label %B98
B105:                               	; preds = %B92
  %t165 = add i32 %t167, 0
  br label %B98
B93:                               	; preds = %B96, %B111
  %t33 = icmp ne i32 %t168, %t149
  br i1 %t33, label %B112, label %B116
B98:                               	; preds = %B97, %B105
  %t30 = add i32 %t155, 1
  %t107 = load i32, i32* %t81, align 4
  %t167 = add i32 %t165, 0
  %t155 = add i32 %t30, 0
  %t108 = icmp slt i32 %t30, %t107
  br i1 %t108, label %B92, label %B111
B112:                               	; preds = %B93
  %t118 = load i32*, i32** %t80, align 4
  %t37 = getelementptr inbounds i32, i32* %t118, i32 %t168
  %t119 = load i32, i32* %t37, align 4
  %t41 = getelementptr inbounds i32, i32* %t118, i32 %t149
  %t121 = load i32, i32* %t41, align 4
  %t39 = getelementptr inbounds i32, i32* %t118, i32 %t168
  store i32 %t121, i32* %t39, align 4
  %t43 = getelementptr inbounds i32, i32* %t118, i32 %t149
  store i32 %t119, i32* %t43, align 4
  %t177 = add i32 %t119, 0
  br label %B113
B116:                               	; preds = %B93
  %t177 = add i32 %t179, 0
  br label %B113
B111:                               	; preds = %B98
  %t168 = add i32 %t165, 0
  %t156 = add i32 %t30, 0
  br label %B93
B113:                               	; preds = %B112, %B116
  %t47 = add i32 %t149, 1
  %t125 = load i32, i32* %t81, align 4
  %t126 = sub i32 %t125, 1
  %t179 = add i32 %t177, 0
  %t170 = add i32 %t168, 0
  %t158 = add i32 %t156, 0
  %t149 = add i32 %t47, 0
  %t127 = icmp slt i32 %t47, %t126
  br i1 %t127, label %B86, label %B130
B130:                               	; preds = %B113
  %t180 = add i32 %t177, 0
  %t171 = add i32 %t168, 0
  %t159 = add i32 %t156, 0
  %t150 = add i32 %t47, 0
  br label %B87
}
define i32 @main() {
B131:
  %t132 = alloca [10 x i32], align 4
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
  %t64 = load i32, i32* @n, align 4
  %t65 = call i32 @select_sort(i32* %t50, i32 %t64)
  br label %B134
B134:                               	; preds = %B131
  %t67 = load i32, i32* @n, align 4
  %t192 = add i32 0, 0
  %t185 = add i32 %t65, 0
  %t68 = icmp slt i32 %t65, %t67
  br i1 %t68, label %B135, label %B139
B135:                               	; preds = %B134, %B212
  %t72 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 %t185
  %t141 = load i32, i32* %t72, align 4
  call void @putint(i32 %t141)
  call void @putch(i32 10)
  %t78 = add i32 %t185, 1
  %t143 = load i32, i32* @n, align 4
  %t144 = icmp slt i32 %t78, %t143
  br i1 %t144, label %B212, label %B147
B139:                               	; preds = %B134
  %t191 = add i32 0, 0
  %t184 = add i32 %t65, 0
  br label %B136
B147:                               	; preds = %B135
  %t191 = add i32 10, 0
  %t184 = add i32 %t78, 0
  br label %B136
B212:                               	; preds = %B135
  %t192 = add i32 10, 0
  %t185 = add i32 %t78, 0
  br label %B135
B136:                               	; preds = %B139, %B147
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
