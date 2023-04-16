@n = global i32 0, align 4
define i32 @bubblesort(i32* %t1) {
B71:
  %t72 = alloca i32*, align 4
  store i32* %t1, i32** %t72, align 4
  br label %B75
B75:                               	; preds = %B71
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t158 = add i32 0, 0
  %t146 = add i32 0, 0
  %t137 = add i32 0, 0
  %t9 = icmp slt i32 0, %t8
  br i1 %t9, label %B76, label %B80
B76:                               	; preds = %B75, %B83
  br label %B81
B80:                               	; preds = %B75
  %t159 = add i32 0, 0
  %t147 = add i32 0, 0
  %t138 = add i32 0, 0
  br label %B77
B81:                               	; preds = %B76
  %t12 = load i32, i32* @n, align 4
  %t14 = sub i32 %t12, %t137
  %t15 = sub i32 %t14, 1
  %t155 = add i32 %t158, 0
  %t143 = add i32 0, 0
  %t16 = icmp slt i32 0, %t15
  br i1 %t16, label %B82, label %B86
B77:                               	; preds = %B80, %B118
  ret i32 0
B82:                               	; preds = %B81, %B88
  %t89 = load i32*, i32** %t72, align 4
  %t18 = getelementptr inbounds i32, i32* %t89, i32 %t143
  %t90 = load i32, i32* %t18, align 4
  %t20 = add i32 %t143, 1
  %t21 = getelementptr inbounds i32, i32* %t89, i32 %t20
  %t92 = load i32, i32* %t21, align 4
  %t22 = icmp sgt i32 %t90, %t92
  br i1 %t22, label %B87, label %B95
B86:                               	; preds = %B81
  %t156 = add i32 %t158, 0
  %t144 = add i32 0, 0
  br label %B83
B87:                               	; preds = %B82
  %t97 = load i32*, i32** %t72, align 4
  %t26 = add i32 %t143, 1
  %t27 = getelementptr inbounds i32, i32* %t97, i32 %t26
  %t98 = load i32, i32* %t27, align 4
  %t32 = getelementptr inbounds i32, i32* %t97, i32 %t143
  %t100 = load i32, i32* %t32, align 4
  %t30 = getelementptr inbounds i32, i32* %t97, i32 %t26
  store i32 %t100, i32* %t30, align 4
  %t34 = getelementptr inbounds i32, i32* %t97, i32 %t143
  store i32 %t98, i32* %t34, align 4
  %t153 = add i32 %t98, 0
  br label %B88
B95:                               	; preds = %B82
  %t153 = add i32 %t155, 0
  br label %B88
B83:                               	; preds = %B86, %B111
  %t41 = add i32 %t137, 1
  %t113 = load i32, i32* @n, align 4
  %t114 = sub i32 %t113, 1
  %t158 = add i32 %t156, 0
  %t146 = add i32 %t144, 0
  %t137 = add i32 %t41, 0
  %t115 = icmp slt i32 %t41, %t114
  br i1 %t115, label %B76, label %B118
B88:                               	; preds = %B87, %B95
  %t38 = add i32 %t143, 1
  %t104 = load i32, i32* @n, align 4
  %t106 = sub i32 %t104, %t137
  %t107 = sub i32 %t106, 1
  %t155 = add i32 %t153, 0
  %t143 = add i32 %t38, 0
  %t108 = icmp slt i32 %t38, %t107
  br i1 %t108, label %B82, label %B111
B118:                               	; preds = %B83
  %t159 = add i32 %t156, 0
  %t147 = add i32 %t144, 0
  %t138 = add i32 %t41, 0
  br label %B77
B111:                               	; preds = %B88
  %t156 = add i32 %t153, 0
  %t144 = add i32 %t38, 0
  br label %B83
}
define i32 @main() {
B119:
  %t120 = alloca [10 x i32], align 4
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
  %t57 = call i32 @bubblesort(i32* %t44)
  br label %B122
B122:                               	; preds = %B119
  %t59 = load i32, i32* @n, align 4
  %t171 = add i32 0, 0
  %t165 = add i32 %t57, 0
  %t60 = icmp slt i32 %t57, %t59
  br i1 %t60, label %B123, label %B127
B123:                               	; preds = %B122, %B188
  %t64 = getelementptr inbounds [10 x i32], [10 x i32]* %t120, i32 0, i32 %t165
  %t129 = load i32, i32* %t64, align 4
  call void @putint(i32 %t129)
  call void @putch(i32 10)
  %t70 = add i32 %t165, 1
  %t131 = load i32, i32* @n, align 4
  %t132 = icmp slt i32 %t70, %t131
  br i1 %t132, label %B188, label %B135
B127:                               	; preds = %B122
  %t170 = add i32 0, 0
  %t164 = add i32 %t57, 0
  br label %B124
B135:                               	; preds = %B123
  %t170 = add i32 10, 0
  %t164 = add i32 %t70, 0
  br label %B124
B188:                               	; preds = %B123
  %t171 = add i32 10, 0
  %t165 = add i32 %t70, 0
  br label %B123
B124:                               	; preds = %B127, %B135
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
