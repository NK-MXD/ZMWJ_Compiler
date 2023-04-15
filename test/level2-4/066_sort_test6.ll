@n = global i32 0, align 4
define i32 @counting_sort(i32* %t1, i32* %t3, i32 %t5) {
B105:
  %t106 = alloca i32*, align 4
  %t107 = alloca i32*, align 4
  %t108 = alloca i32, align 4
  %t109 = alloca [10 x i32], align 4
  %t110 = alloca i32, align 4
  %t111 = alloca i32, align 4
  %t112 = alloca i32, align 4
  store i32* %t1, i32** %t106, align 4
  store i32* %t3, i32** %t107, align 4
  store i32 %t5, i32* %t108, align 4
  store i32 0, i32* %t112, align 4
  store i32 0, i32* %t110, align 4
  store i32 0, i32* %t111, align 4
  br label %B113
B113:                               	; preds = %B105
  %t14 = load i32, i32* %t112, align 4
  %t15 = icmp slt i32 %t14, 10
  br i1 %t15, label %B114, label %B118
B114:                               	; preds = %B113, %B114
  %t16 = load i32, i32* %t112, align 4
  %t17 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t16
  store i32 0, i32* %t17, align 4
  %t19 = load i32, i32* %t112, align 4
  %t20 = add i32 %t19, 1
  store i32 %t20, i32* %t112, align 4
  %t119 = load i32, i32* %t112, align 4
  %t120 = icmp slt i32 %t119, 10
  br i1 %t120, label %B114, label %B123
B118:                               	; preds = %B113
  br label %B115
B123:                               	; preds = %B114
  br label %B115
B115:                               	; preds = %B118, %B123
  br label %B124
B124:                               	; preds = %B115
  %t21 = load i32, i32* %t110, align 4
  %t22 = load i32, i32* %t108, align 4
  %t23 = icmp slt i32 %t21, %t22
  br i1 %t23, label %B125, label %B129
B125:                               	; preds = %B124, %B125
  %t130 = load i32*, i32** %t106, align 4
  %t27 = load i32, i32* %t110, align 4
  %t28 = getelementptr inbounds i32, i32* %t130, i32 %t27
  %t131 = load i32, i32* %t28, align 4
  %t29 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t131
  %t132 = load i32, i32* %t29, align 4
  %t30 = add i32 %t132, 1
  %t133 = load i32*, i32** %t106, align 4
  %t24 = load i32, i32* %t110, align 4
  %t25 = getelementptr inbounds i32, i32* %t133, i32 %t24
  %t134 = load i32, i32* %t25, align 4
  %t26 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t134
  store i32 %t30, i32* %t26, align 4
  %t32 = load i32, i32* %t110, align 4
  %t33 = add i32 %t32, 1
  store i32 %t33, i32* %t110, align 4
  %t135 = load i32, i32* %t110, align 4
  %t136 = load i32, i32* %t108, align 4
  %t137 = icmp slt i32 %t135, %t136
  br i1 %t137, label %B125, label %B140
B129:                               	; preds = %B124
  br label %B126
B140:                               	; preds = %B125
  br label %B126
B126:                               	; preds = %B129, %B140
  store i32 1, i32* %t112, align 4
  br label %B141
B141:                               	; preds = %B126
  %t35 = load i32, i32* %t112, align 4
  %t36 = icmp slt i32 %t35, 10
  br i1 %t36, label %B142, label %B146
B142:                               	; preds = %B141, %B142
  %t39 = load i32, i32* %t112, align 4
  %t40 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t39
  %t147 = load i32, i32* %t40, align 4
  %t41 = load i32, i32* %t112, align 4
  %t42 = sub i32 %t41, 1
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t42
  %t148 = load i32, i32* %t43, align 4
  %t44 = add i32 %t147, %t148
  %t37 = load i32, i32* %t112, align 4
  %t38 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t37
  store i32 %t44, i32* %t38, align 4
  %t46 = load i32, i32* %t112, align 4
  %t47 = add i32 %t46, 1
  store i32 %t47, i32* %t112, align 4
  %t149 = load i32, i32* %t112, align 4
  %t150 = icmp slt i32 %t149, 10
  br i1 %t150, label %B142, label %B153
B146:                               	; preds = %B141
  br label %B143
B153:                               	; preds = %B142
  br label %B143
B143:                               	; preds = %B146, %B153
  %t49 = load i32, i32* %t108, align 4
  store i32 %t49, i32* %t111, align 4
  br label %B154
B154:                               	; preds = %B143
  %t50 = load i32, i32* %t111, align 4
  %t51 = icmp sgt i32 %t50, 0
  br i1 %t51, label %B155, label %B159
B155:                               	; preds = %B154, %B155
  %t160 = load i32*, i32** %t106, align 4
  %t56 = load i32, i32* %t111, align 4
  %t57 = sub i32 %t56, 1
  %t58 = getelementptr inbounds i32, i32* %t160, i32 %t57
  %t161 = load i32, i32* %t58, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t161
  %t162 = load i32, i32* %t59, align 4
  %t60 = sub i32 %t162, 1
  %t163 = load i32*, i32** %t106, align 4
  %t52 = load i32, i32* %t111, align 4
  %t53 = sub i32 %t52, 1
  %t54 = getelementptr inbounds i32, i32* %t163, i32 %t53
  %t164 = load i32, i32* %t54, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t164
  store i32 %t60, i32* %t55, align 4
  %t165 = load i32*, i32** %t106, align 4
  %t66 = load i32, i32* %t111, align 4
  %t67 = sub i32 %t66, 1
  %t68 = getelementptr inbounds i32, i32* %t165, i32 %t67
  %t166 = load i32, i32* %t68, align 4
  %t167 = load i32*, i32** %t107, align 4
  %t168 = load i32*, i32** %t106, align 4
  %t61 = load i32, i32* %t111, align 4
  %t62 = sub i32 %t61, 1
  %t63 = getelementptr inbounds i32, i32* %t168, i32 %t62
  %t169 = load i32, i32* %t63, align 4
  %t64 = getelementptr inbounds [10 x i32], [10 x i32]* %t109, i32 0, i32 %t169
  %t170 = load i32, i32* %t64, align 4
  %t65 = getelementptr inbounds i32, i32* %t167, i32 %t170
  store i32 %t166, i32* %t65, align 4
  %t70 = load i32, i32* %t111, align 4
  %t71 = sub i32 %t70, 1
  store i32 %t71, i32* %t111, align 4
  %t171 = load i32, i32* %t111, align 4
  %t172 = icmp sgt i32 %t171, 0
  br i1 %t172, label %B155, label %B175
B159:                               	; preds = %B154
  br label %B156
B175:                               	; preds = %B155
  br label %B156
B156:                               	; preds = %B159, %B175
  ret i32 0
}
define i32 @main() {
B176:
  %t177 = alloca [10 x i32], align 4
  %t178 = alloca i32, align 4
  %t179 = alloca [10 x i32], align 4
  %t186 = alloca i32, align 4
  store i32 10, i32* @n, align 4
  %t74 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 0
  store i32 4, i32* %t74, align 4
  %t75 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 1
  store i32 3, i32* %t75, align 4
  %t76 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 2
  store i32 9, i32* %t76, align 4
  %t77 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 3
  store i32 2, i32* %t77, align 4
  %t78 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 4
  store i32 0, i32* %t78, align 4
  %t79 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 5
  store i32 1, i32* %t79, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 6
  store i32 6, i32* %t80, align 4
  %t81 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 7
  store i32 5, i32* %t81, align 4
  %t82 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 8
  store i32 7, i32* %t82, align 4
  %t83 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 9
  store i32 8, i32* %t83, align 4
  store i32 0, i32* %t178, align 4
  %t88 = getelementptr inbounds [10 x i32], [10 x i32]* %t177, i32 0, i32 0
  %t89 = getelementptr inbounds [10 x i32], [10 x i32]* %t179, i32 0, i32 0
  %t90 = load i32, i32* @n, align 4
  %t91 = call i32 @counting_sort(i32* %t88, i32* %t89, i32 %t90)
  store i32 %t91, i32* %t178, align 4
  br label %B180
B180:                               	; preds = %B176
  %t92 = load i32, i32* %t178, align 4
  %t93 = load i32, i32* @n, align 4
  %t94 = icmp slt i32 %t92, %t93
  br i1 %t94, label %B181, label %B185
B181:                               	; preds = %B180, %B181
  %t97 = load i32, i32* %t178, align 4
  %t98 = getelementptr inbounds [10 x i32], [10 x i32]* %t179, i32 0, i32 %t97
  %t187 = load i32, i32* %t98, align 4
  store i32 %t187, i32* %t186, align 4
  %t99 = load i32, i32* %t186, align 4
  call void @putint(i32 %t99)
  store i32 10, i32* %t186, align 4
  %t101 = load i32, i32* %t186, align 4
  call void @putch(i32 %t101)
  %t103 = load i32, i32* %t178, align 4
  %t104 = add i32 %t103, 1
  store i32 %t104, i32* %t178, align 4
  %t188 = load i32, i32* %t178, align 4
  %t189 = load i32, i32* @n, align 4
  %t190 = icmp slt i32 %t188, %t189
  br i1 %t190, label %B181, label %B193
B185:                               	; preds = %B180
  br label %B182
B193:                               	; preds = %B181
  br label %B182
B182:                               	; preds = %B185, %B193
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
