@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @tran(i32* %t3, i32* %t5, i32* %t7, i32* %t9, i32* %t11, i32* %t13, i32* %t15, i32* %t17, i32* %t19) {
B129:
  %t130 = alloca i32*, align 4
  %t131 = alloca i32*, align 4
  %t132 = alloca i32*, align 4
  %t133 = alloca i32*, align 4
  %t134 = alloca i32*, align 4
  %t135 = alloca i32*, align 4
  %t136 = alloca i32*, align 4
  %t137 = alloca i32*, align 4
  %t138 = alloca i32*, align 4
  %t139 = alloca i32, align 4
  store i32* %t3, i32** %t130, align 4
  store i32* %t5, i32** %t131, align 4
  store i32* %t7, i32** %t132, align 4
  store i32* %t9, i32** %t133, align 4
  store i32* %t11, i32** %t134, align 4
  store i32* %t13, i32** %t135, align 4
  store i32* %t15, i32** %t136, align 4
  store i32* %t17, i32** %t137, align 4
  store i32* %t19, i32** %t138, align 4
  store i32 0, i32* %t139, align 4
  %t140 = load i32*, i32** %t132, align 4
  %t24 = getelementptr inbounds i32, i32* %t140, i32 1
  %t141 = load i32, i32* %t24, align 4
  %t142 = load i32*, i32** %t137, align 4
  %t23 = getelementptr inbounds i32, i32* %t142, i32 2
  store i32 %t141, i32* %t23, align 4
  %t143 = load i32*, i32** %t131, align 4
  %t26 = getelementptr inbounds i32, i32* %t143, i32 2
  %t144 = load i32, i32* %t26, align 4
  %t145 = load i32*, i32** %t138, align 4
  %t25 = getelementptr inbounds i32, i32* %t145, i32 1
  store i32 %t144, i32* %t25, align 4
  %t146 = load i32*, i32** %t131, align 4
  %t28 = getelementptr inbounds i32, i32* %t146, i32 0
  %t147 = load i32, i32* %t28, align 4
  %t148 = load i32*, i32** %t136, align 4
  %t27 = getelementptr inbounds i32, i32* %t148, i32 1
  store i32 %t147, i32* %t27, align 4
  %t149 = load i32*, i32** %t132, align 4
  %t30 = getelementptr inbounds i32, i32* %t149, i32 0
  %t150 = load i32, i32* %t30, align 4
  %t151 = load i32*, i32** %t136, align 4
  %t29 = getelementptr inbounds i32, i32* %t151, i32 2
  store i32 %t150, i32* %t29, align 4
  %t152 = load i32*, i32** %t130, align 4
  %t32 = getelementptr inbounds i32, i32* %t152, i32 1
  %t153 = load i32, i32* %t32, align 4
  %t154 = load i32*, i32** %t137, align 4
  %t31 = getelementptr inbounds i32, i32* %t154, i32 0
  store i32 %t153, i32* %t31, align 4
  %t155 = load i32*, i32** %t130, align 4
  %t34 = getelementptr inbounds i32, i32* %t155, i32 2
  %t156 = load i32, i32* %t34, align 4
  %t157 = load i32*, i32** %t138, align 4
  %t33 = getelementptr inbounds i32, i32* %t157, i32 0
  store i32 %t156, i32* %t33, align 4
  %t158 = load i32*, i32** %t131, align 4
  %t36 = getelementptr inbounds i32, i32* %t158, i32 1
  %t159 = load i32, i32* %t36, align 4
  %t160 = load i32*, i32** %t137, align 4
  %t35 = getelementptr inbounds i32, i32* %t160, i32 1
  store i32 %t159, i32* %t35, align 4
  %t161 = load i32*, i32** %t132, align 4
  %t38 = getelementptr inbounds i32, i32* %t161, i32 2
  %t162 = load i32, i32* %t38, align 4
  %t163 = load i32*, i32** %t138, align 4
  %t37 = getelementptr inbounds i32, i32* %t163, i32 2
  store i32 %t162, i32* %t37, align 4
  %t164 = load i32*, i32** %t130, align 4
  %t40 = getelementptr inbounds i32, i32* %t164, i32 0
  %t165 = load i32, i32* %t40, align 4
  %t166 = load i32*, i32** %t136, align 4
  %t39 = getelementptr inbounds i32, i32* %t166, i32 0
  store i32 %t165, i32* %t39, align 4
  ret i32 0
}
define i32 @main() {
B167:
  %t168 = alloca [3 x i32], align 4
  %t169 = alloca [3 x i32], align 4
  %t170 = alloca [3 x i32], align 4
  %t171 = alloca [3 x i32], align 4
  %t172 = alloca [3 x i32], align 4
  %t173 = alloca [3 x i32], align 4
  %t174 = alloca [6 x i32], align 4
  %t175 = alloca [3 x i32], align 4
  %t176 = alloca [3 x i32], align 4
  %t177 = alloca i32, align 4
  %t190 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t177, align 4
  br label %B178
B178:                               	; preds = %B167
  %t55 = load i32, i32* %t177, align 4
  %t56 = load i32, i32* @M, align 4
  %t57 = icmp slt i32 %t55, %t56
  br i1 %t57, label %B179, label %B183
B179:                               	; preds = %B178, %B179
  %t60 = load i32, i32* %t177, align 4
  %t58 = load i32, i32* %t177, align 4
  %t59 = getelementptr inbounds [3 x i32], [3 x i32]* %t168, i32 0, i32 %t58
  store i32 %t60, i32* %t59, align 4
  %t63 = load i32, i32* %t177, align 4
  %t61 = load i32, i32* %t177, align 4
  %t62 = getelementptr inbounds [3 x i32], [3 x i32]* %t169, i32 0, i32 %t61
  store i32 %t63, i32* %t62, align 4
  %t66 = load i32, i32* %t177, align 4
  %t64 = load i32, i32* %t177, align 4
  %t65 = getelementptr inbounds [3 x i32], [3 x i32]* %t170, i32 0, i32 %t64
  store i32 %t66, i32* %t65, align 4
  %t69 = load i32, i32* %t177, align 4
  %t67 = load i32, i32* %t177, align 4
  %t68 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 %t67
  store i32 %t69, i32* %t68, align 4
  %t72 = load i32, i32* %t177, align 4
  %t70 = load i32, i32* %t177, align 4
  %t71 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 %t70
  store i32 %t72, i32* %t71, align 4
  %t75 = load i32, i32* %t177, align 4
  %t73 = load i32, i32* %t177, align 4
  %t74 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 %t73
  store i32 %t75, i32* %t74, align 4
  %t77 = load i32, i32* %t177, align 4
  %t78 = add i32 %t77, 1
  store i32 %t78, i32* %t177, align 4
  %t184 = load i32, i32* %t177, align 4
  %t185 = load i32, i32* @M, align 4
  %t186 = icmp slt i32 %t184, %t185
  br i1 %t186, label %B179, label %B189
B183:                               	; preds = %B178
  br label %B180
B189:                               	; preds = %B179
  br label %B180
B180:                               	; preds = %B183, %B189
  %t80 = getelementptr inbounds [3 x i32], [3 x i32]* %t168, i32 0, i32 0
  %t81 = getelementptr inbounds [3 x i32], [3 x i32]* %t169, i32 0, i32 0
  %t82 = getelementptr inbounds [3 x i32], [3 x i32]* %t170, i32 0, i32 0
  %t83 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 0
  %t84 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 0
  %t85 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 0
  %t86 = getelementptr inbounds [6 x i32], [6 x i32]* %t174, i32 0, i32 0
  %t87 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 0
  %t88 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 0
  %t89 = call i32 @tran(i32* %t80, i32* %t81, i32* %t82, i32* %t83, i32* %t84, i32* %t85, i32* %t86, i32* %t87, i32* %t88)
  store i32 %t89, i32* %t177, align 4
  br label %B191
B191:                               	; preds = %B180
  %t91 = load i32, i32* %t177, align 4
  %t92 = load i32, i32* @N, align 4
  %t93 = icmp slt i32 %t91, %t92
  br i1 %t93, label %B192, label %B196
B192:                               	; preds = %B191, %B192
  %t95 = load i32, i32* %t177, align 4
  %t96 = getelementptr inbounds [6 x i32], [6 x i32]* %t174, i32 0, i32 %t95
  %t197 = load i32, i32* %t96, align 4
  store i32 %t197, i32* %t190, align 4
  %t97 = load i32, i32* %t190, align 4
  call void @putint(i32 %t97)
  %t99 = load i32, i32* %t177, align 4
  %t100 = add i32 %t99, 1
  store i32 %t100, i32* %t177, align 4
  %t198 = load i32, i32* %t177, align 4
  %t199 = load i32, i32* @N, align 4
  %t200 = icmp slt i32 %t198, %t199
  br i1 %t200, label %B192, label %B203
B196:                               	; preds = %B191
  br label %B193
B203:                               	; preds = %B192
  br label %B193
B193:                               	; preds = %B196, %B203
  store i32 10, i32* %t190, align 4
  %t102 = load i32, i32* %t190, align 4
  call void @putch(i32 %t102)
  store i32 0, i32* %t177, align 4
  br label %B204
B204:                               	; preds = %B193
  %t104 = load i32, i32* %t177, align 4
  %t105 = load i32, i32* @N, align 4
  %t106 = icmp slt i32 %t104, %t105
  br i1 %t106, label %B205, label %B209
B205:                               	; preds = %B204, %B205
  %t108 = load i32, i32* %t177, align 4
  %t109 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 %t108
  %t210 = load i32, i32* %t109, align 4
  store i32 %t210, i32* %t190, align 4
  %t110 = load i32, i32* %t190, align 4
  call void @putint(i32 %t110)
  %t112 = load i32, i32* %t177, align 4
  %t113 = add i32 %t112, 1
  store i32 %t113, i32* %t177, align 4
  %t211 = load i32, i32* %t177, align 4
  %t212 = load i32, i32* @N, align 4
  %t213 = icmp slt i32 %t211, %t212
  br i1 %t213, label %B205, label %B216
B209:                               	; preds = %B204
  br label %B206
B216:                               	; preds = %B205
  br label %B206
B206:                               	; preds = %B209, %B216
  store i32 10, i32* %t190, align 4
  store i32 0, i32* %t177, align 4
  %t116 = load i32, i32* %t190, align 4
  call void @putch(i32 %t116)
  br label %B217
B217:                               	; preds = %B206
  %t117 = load i32, i32* %t177, align 4
  %t118 = load i32, i32* @N, align 4
  %t119 = icmp slt i32 %t117, %t118
  br i1 %t119, label %B218, label %B222
B218:                               	; preds = %B217, %B218
  %t121 = load i32, i32* %t177, align 4
  %t122 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 %t121
  %t223 = load i32, i32* %t122, align 4
  store i32 %t223, i32* %t190, align 4
  %t123 = load i32, i32* %t190, align 4
  call void @putint(i32 %t123)
  %t125 = load i32, i32* %t177, align 4
  %t126 = add i32 %t125, 1
  store i32 %t126, i32* %t177, align 4
  %t224 = load i32, i32* %t177, align 4
  %t225 = load i32, i32* @N, align 4
  %t226 = icmp slt i32 %t224, %t225
  br i1 %t226, label %B218, label %B229
B222:                               	; preds = %B217
  br label %B219
B229:                               	; preds = %B218
  br label %B219
B219:                               	; preds = %B222, %B229
  store i32 10, i32* %t190, align 4
  %t128 = load i32, i32* %t190, align 4
  call void @putch(i32 %t128)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
