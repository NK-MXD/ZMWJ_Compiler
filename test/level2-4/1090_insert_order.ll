@N = global i32 0, align 4
define i32 @insert(i32* %t1, i32 %t3) {
B68:
  %t69 = alloca i32*, align 4
  %t70 = alloca i32, align 4
  store i32* %t1, i32** %t69, align 4
  store i32 %t3, i32* %t70, align 4
  br label %B73
B73:                               	; preds = %B68
  %t8 = load i32, i32* %t70, align 4
  %t77 = load i32*, i32** %t69, align 4
  %t10 = getelementptr inbounds i32, i32* %t77, i32 0
  %t78 = load i32, i32* %t10, align 4
  %t137 = add i32 0, 0
  %t11 = icmp sgt i32 %t8, %t78
  br i1 %t11, label %B93, label %B81
B93:                               	; preds = %B73, %B74
  %t90 = load i32, i32* @N, align 4
  %t91 = icmp slt i32 %t137, %t90
  br i1 %t91, label %B74, label %B101
B81:                               	; preds = %B73
  %t136 = add i32 0, 0
  br label %B75
B74:                               	; preds = %B93
  %t18 = add i32 %t137, 1
  %t85 = load i32, i32* %t70, align 4
  %t94 = load i32*, i32** %t69, align 4
  %t87 = getelementptr inbounds i32, i32* %t94, i32 %t18
  %t95 = load i32, i32* %t87, align 4
  %t137 = add i32 %t18, 0
  %t88 = icmp sgt i32 %t85, %t95
  br i1 %t88, label %B93, label %B98
B101:                               	; preds = %B93
  %t136 = add i32 %t137, 0
  br label %B75
B75:                               	; preds = %B81, %B98, %B101
  %t20 = load i32, i32* @N, align 4
  br label %B102
B98:                               	; preds = %B74
  %t136 = add i32 %t18, 0
  br label %B75
B102:                               	; preds = %B75
  %t142 = add i32 %t20, 0
  %t23 = icmp sgt i32 %t20, %t136
  br i1 %t23, label %B103, label %B107
B103:                               	; preds = %B102, %B164
  %t108 = load i32*, i32** %t69, align 4
  %t27 = sub i32 %t142, 1
  %t28 = getelementptr inbounds i32, i32* %t108, i32 %t27
  %t109 = load i32, i32* %t28, align 4
  %t25 = getelementptr inbounds i32, i32* %t108, i32 %t142
  store i32 %t109, i32* %t25, align 4
  %t31 = load i32, i32* %t70, align 4
  %t30 = getelementptr inbounds i32, i32* %t108, i32 %t136
  store i32 %t31, i32* %t30, align 4
  %t114 = icmp sgt i32 %t27, %t136
  br i1 %t114, label %B164, label %B117
B107:                               	; preds = %B102
  %t143 = add i32 %t20, 0
  br label %B104
B117:                               	; preds = %B103
  %t143 = add i32 %t27, 0
  br label %B104
B164:                               	; preds = %B103
  %t142 = add i32 %t27, 0
  br label %B103
B104:                               	; preds = %B107, %B117
  ret i32 0
}
define i32 @main() {
B118:
  %t119 = alloca [11 x i32], align 4
  store i32 10, i32* @N, align 4
  %t37 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 0
  store i32 1, i32* %t37, align 4
  %t38 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 1
  store i32 3, i32* %t38, align 4
  %t39 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 2
  store i32 4, i32* %t39, align 4
  %t40 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 3
  store i32 7, i32* %t40, align 4
  %t41 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 4
  store i32 8, i32* %t41, align 4
  %t42 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 5
  store i32 11, i32* %t42, align 4
  %t43 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 6
  store i32 13, i32* %t43, align 4
  %t44 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 7
  store i32 18, i32* %t44, align 4
  %t45 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 8
  store i32 56, i32* %t45, align 4
  %t46 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 9
  store i32 78, i32* %t46, align 4
  %t51 = call i32 @getint()
  %t55 = call i32 @insert(i32* %t37, i32 %t51)
  br label %B122
B122:                               	; preds = %B118
  %t57 = load i32, i32* @N, align 4
  %t157 = add i32 0, 0
  %t149 = add i32 %t55, 0
  %t58 = icmp slt i32 0, %t57
  br i1 %t58, label %B123, label %B127
B123:                               	; preds = %B122, %B168
  %t61 = getelementptr inbounds [11 x i32], [11 x i32]* %t119, i32 0, i32 %t157
  %t128 = load i32, i32* %t61, align 4
  call void @putint(i32 %t128)
  call void @putch(i32 10)
  %t67 = add i32 %t157, 1
  %t130 = load i32, i32* @N, align 4
  %t131 = icmp slt i32 %t67, %t130
  br i1 %t131, label %B168, label %B134
B127:                               	; preds = %B122
  %t156 = add i32 0, 0
  %t148 = add i32 %t55, 0
  br label %B124
B134:                               	; preds = %B123
  %t156 = add i32 %t67, 0
  %t148 = add i32 10, 0
  br label %B124
B168:                               	; preds = %B123
  %t157 = add i32 %t67, 0
  %t149 = add i32 10, 0
  br label %B123
B124:                               	; preds = %B127, %B134
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
