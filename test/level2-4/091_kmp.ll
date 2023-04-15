define void @get_next(i32* %t0, i32* %t2) {
B99:
  %t100 = alloca i32*, align 4
  %t101 = alloca i32*, align 4
  %t103 = alloca i32, align 4
  %t104 = alloca i32, align 4
  store i32* %t0, i32** %t100, align 4
  store i32* %t2, i32** %t101, align 4
  %t5 = sub i32 0, 1
  %t102 = load i32*, i32** %t101, align 4
  %t4 = getelementptr inbounds i32, i32* %t102, i32 0
  store i32 %t5, i32* %t4, align 4
  store i32 0, i32* %t103, align 4
  %t7 = sub i32 0, 1
  store i32 %t7, i32* %t104, align 4
  br label %B105
B105:                               	; preds = %B99
  %t108 = load i32*, i32** %t100, align 4
  %t9 = load i32, i32* %t103, align 4
  %t10 = getelementptr inbounds i32, i32* %t108, i32 %t9
  %t109 = load i32, i32* %t10, align 4
  %t11 = icmp ne i32 %t109, 0
  br i1 %t11, label %B106, label %B111
B106:                               	; preds = %B105, %B115
  %t12 = load i32, i32* %t104, align 4
  %t13 = sub i32 0, 1
  %t14 = icmp eq i32 %t12, %t13
  br i1 %t14, label %B113, label %B119
B111:                               	; preds = %B105
  br label %B107
B113:                               	; preds = %B106, %B116
  %t22 = load i32, i32* %t104, align 4
  %t23 = add i32 %t22, 1
  store i32 %t23, i32* %t104, align 4
  %t25 = load i32, i32* %t103, align 4
  %t26 = add i32 %t25, 1
  store i32 %t26, i32* %t103, align 4
  %t29 = load i32, i32* %t104, align 4
  %t127 = load i32*, i32** %t101, align 4
  %t27 = load i32, i32* %t103, align 4
  %t28 = getelementptr inbounds i32, i32* %t127, i32 %t27
  store i32 %t29, i32* %t28, align 4
  br label %B115
B119:                               	; preds = %B106
  br label %B116
B107:                               	; preds = %B111, %B136
  ret void
B115:                               	; preds = %B113, %B114
  %t133 = load i32*, i32** %t100, align 4
  %t130 = load i32, i32* %t103, align 4
  %t131 = getelementptr inbounds i32, i32* %t133, i32 %t130
  %t134 = load i32, i32* %t131, align 4
  %t132 = icmp ne i32 %t134, 0
  br i1 %t132, label %B106, label %B136
B116:                               	; preds = %B119
  %t120 = load i32*, i32** %t100, align 4
  %t15 = load i32, i32* %t103, align 4
  %t16 = getelementptr inbounds i32, i32* %t120, i32 %t15
  %t121 = load i32, i32* %t16, align 4
  %t122 = load i32*, i32** %t100, align 4
  %t17 = load i32, i32* %t104, align 4
  %t18 = getelementptr inbounds i32, i32* %t122, i32 %t17
  %t123 = load i32, i32* %t18, align 4
  %t19 = icmp eq i32 %t121, %t123
  br i1 %t19, label %B113, label %B126
B136:                               	; preds = %B115
  br label %B107
B126:                               	; preds = %B116
  br label %B114
B114:                               	; preds = %B126
  %t128 = load i32*, i32** %t101, align 4
  %t31 = load i32, i32* %t104, align 4
  %t32 = getelementptr inbounds i32, i32* %t128, i32 %t31
  %t129 = load i32, i32* %t32, align 4
  store i32 %t129, i32* %t104, align 4
  br label %B115
}
define i32 @KMP(i32* %t33, i32* %t35) {
B138:
  %t139 = alloca i32*, align 4
  %t140 = alloca i32*, align 4
  %t141 = alloca [4096 x i32], align 4
  %t143 = alloca i32, align 4
  %t144 = alloca i32, align 4
  store i32* %t33, i32** %t139, align 4
  store i32* %t35, i32** %t140, align 4
  %t142 = load i32*, i32** %t139, align 4
  %t39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t141, i32 0, i32 0
  call void @get_next(i32* %t142, i32* %t39)
  store i32 0, i32* %t143, align 4
  store i32 0, i32* %t144, align 4
  br label %B145
B145:                               	; preds = %B138
  %t148 = load i32*, i32** %t140, align 4
  %t42 = load i32, i32* %t144, align 4
  %t43 = getelementptr inbounds i32, i32* %t148, i32 %t42
  %t149 = load i32, i32* %t43, align 4
  %t44 = icmp ne i32 %t149, 0
  br i1 %t44, label %B146, label %B151
B146:                               	; preds = %B145, %B155
  %t156 = load i32*, i32** %t139, align 4
  %t45 = load i32, i32* %t143, align 4
  %t46 = getelementptr inbounds i32, i32* %t156, i32 %t45
  %t157 = load i32, i32* %t46, align 4
  %t158 = load i32*, i32** %t140, align 4
  %t47 = load i32, i32* %t144, align 4
  %t48 = getelementptr inbounds i32, i32* %t158, i32 %t47
  %t159 = load i32, i32* %t48, align 4
  %t49 = icmp eq i32 %t157, %t159
  br i1 %t49, label %B153, label %B162
B151:                               	; preds = %B145
  br label %B147
B153:                               	; preds = %B146
  %t51 = load i32, i32* %t143, align 4
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* %t143, align 4
  %t54 = load i32, i32* %t144, align 4
  %t55 = add i32 %t54, 1
  store i32 %t55, i32* %t144, align 4
  %t165 = load i32*, i32** %t139, align 4
  %t56 = load i32, i32* %t143, align 4
  %t57 = getelementptr inbounds i32, i32* %t165, i32 %t56
  %t166 = load i32, i32* %t57, align 4
  %t167 = icmp ne i32 %t166, 0
  %t58 = xor i1 %t167, true
  %t60 = icmp ne i1 %t58, 0
  br i1 %t60, label %B163, label %B169
B162:                               	; preds = %B146
  br label %B154
B147:                               	; preds = %B151, %B183
  %t73 = sub i32 0, 1
  ret i32 %t73
B163:                               	; preds = %B153
  %t59 = load i32, i32* %t144, align 4
  ret i32 %t59
B169:                               	; preds = %B153
  br label %B164
B154:                               	; preds = %B162
  %t62 = load i32, i32* %t143, align 4
  %t63 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t141, i32 0, i32 %t62
  %t171 = load i32, i32* %t63, align 4
  store i32 %t171, i32* %t143, align 4
  %t64 = load i32, i32* %t143, align 4
  %t65 = sub i32 0, 1
  %t66 = icmp eq i32 %t64, %t65
  br i1 %t66, label %B172, label %B176
B164:                               	; preds = %B169
  br label %B155
B172:                               	; preds = %B154
  %t68 = load i32, i32* %t143, align 4
  %t69 = add i32 %t68, 1
  store i32 %t69, i32* %t143, align 4
  %t71 = load i32, i32* %t144, align 4
  %t72 = add i32 %t71, 1
  store i32 %t72, i32* %t144, align 4
  br label %B173
B176:                               	; preds = %B154
  br label %B173
B155:                               	; preds = %B164, %B173
  %t180 = load i32*, i32** %t140, align 4
  %t177 = load i32, i32* %t144, align 4
  %t178 = getelementptr inbounds i32, i32* %t180, i32 %t177
  %t181 = load i32, i32* %t178, align 4
  %t179 = icmp ne i32 %t181, 0
  br i1 %t179, label %B146, label %B183
B173:                               	; preds = %B172, %B176
  br label %B155
B183:                               	; preds = %B155
  br label %B147
}
define i32 @read_str(i32* %t74) {
B185:
  %t186 = alloca i32*, align 4
  %t187 = alloca i32, align 4
  store i32* %t74, i32** %t186, align 4
  store i32 0, i32* %t187, align 4
  br label %B188
B188:                               	; preds = %B185
  %t77 = icmp ne i32 1, 0
  br i1 %t77, label %B189, label %B192
B189:                               	; preds = %B188, %B196
  %t80 = call i32 @getch()
  %t194 = load i32*, i32** %t186, align 4
  %t78 = load i32, i32* %t187, align 4
  %t79 = getelementptr inbounds i32, i32* %t194, i32 %t78
  store i32 %t80, i32* %t79, align 4
  %t197 = load i32*, i32** %t186, align 4
  %t81 = load i32, i32* %t187, align 4
  %t82 = getelementptr inbounds i32, i32* %t197, i32 %t81
  %t198 = load i32, i32* %t82, align 4
  %t83 = icmp eq i32 %t198, 10
  br i1 %t83, label %B195, label %B201
B192:                               	; preds = %B188
  br label %B190
B195:                               	; preds = %B189
  br label %B190
B201:                               	; preds = %B189
  br label %B196
B190:                               	; preds = %B192, %B195, %B205
  %t207 = load i32*, i32** %t186, align 4
  %t87 = load i32, i32* %t187, align 4
  %t88 = getelementptr inbounds i32, i32* %t207, i32 %t87
  store i32 0, i32* %t88, align 4
  %t89 = load i32, i32* %t187, align 4
  ret i32 %t89
B196:                               	; preds = %B201
  %t85 = load i32, i32* %t187, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t187, align 4
  %t203 = icmp ne i32 1, 0
  br i1 %t203, label %B189, label %B205
B205:                               	; preds = %B196
  br label %B190
}
define i32 @main() {
B208:
  %t209 = alloca [4096 x i32], align 4
  %t210 = alloca [4096 x i32], align 4
  %t92 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t209, i32 0, i32 0
  %t93 = call i32 @read_str(i32* %t92)
  %t94 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t210, i32 0, i32 0
  %t95 = call i32 @read_str(i32* %t94)
  %t96 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t209, i32 0, i32 0
  %t97 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t210, i32 0, i32 0
  %t98 = call i32 @KMP(i32* %t96, i32* %t97)
  call void @putint(i32 %t98)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
