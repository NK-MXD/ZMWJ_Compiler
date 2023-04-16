define void @get_next(i32* %t0, i32* %t2) {
B99:
  %t100 = alloca i32*, align 4
  %t101 = alloca i32*, align 4
  store i32* %t0, i32** %t100, align 4
  store i32* %t2, i32** %t101, align 4
  %t5 = sub i32 0, 1
  %t102 = load i32*, i32** %t101, align 4
  %t4 = getelementptr inbounds i32, i32* %t102, i32 0
  store i32 %t5, i32* %t4, align 4
  br label %B105
B105:                               	; preds = %B99
  %t108 = load i32*, i32** %t100, align 4
  %t10 = getelementptr inbounds i32, i32* %t108, i32 0
  %t109 = load i32, i32* %t10, align 4
  %t222 = add i32 %t5, 0
  %t214 = add i32 0, 0
  %t11 = icmp ne i32 %t109, 0
  br i1 %t11, label %B106, label %B111
B106:                               	; preds = %B105, %B115
  %t13 = sub i32 0, 1
  %t14 = icmp eq i32 %t222, %t13
  br i1 %t14, label %B113, label %B119
B111:                               	; preds = %B105
  %t223 = add i32 %t5, 0
  %t215 = add i32 0, 0
  br label %B107
B113:                               	; preds = %B106, %B116
  %t23 = add i32 %t222, 1
  %t26 = add i32 %t214, 1
  %t127 = load i32*, i32** %t101, align 4
  %t28 = getelementptr inbounds i32, i32* %t127, i32 %t26
  store i32 %t23, i32* %t28, align 4
  %t220 = add i32 %t23, 0
  %t212 = add i32 %t26, 0
  br label %B115
B119:                               	; preds = %B106
  br label %B116
B107:                               	; preds = %B111, %B136
  ret void
B115:                               	; preds = %B113, %B114
  %t133 = load i32*, i32** %t100, align 4
  %t131 = getelementptr inbounds i32, i32* %t133, i32 %t212
  %t134 = load i32, i32* %t131, align 4
  %t222 = add i32 %t220, 0
  %t214 = add i32 %t212, 0
  %t132 = icmp ne i32 %t134, 0
  br i1 %t132, label %B106, label %B136
B116:                               	; preds = %B119
  %t120 = load i32*, i32** %t100, align 4
  %t16 = getelementptr inbounds i32, i32* %t120, i32 %t214
  %t121 = load i32, i32* %t16, align 4
  %t18 = getelementptr inbounds i32, i32* %t120, i32 %t222
  %t123 = load i32, i32* %t18, align 4
  %t19 = icmp eq i32 %t121, %t123
  br i1 %t19, label %B113, label %B126
B136:                               	; preds = %B115
  %t223 = add i32 %t220, 0
  %t215 = add i32 %t212, 0
  br label %B107
B126:                               	; preds = %B116
  br label %B114
B114:                               	; preds = %B126
  %t128 = load i32*, i32** %t101, align 4
  %t32 = getelementptr inbounds i32, i32* %t128, i32 %t222
  %t129 = load i32, i32* %t32, align 4
  %t220 = add i32 %t129, 0
  %t212 = add i32 %t214, 0
  br label %B115
}
define i32 @KMP(i32* %t33, i32* %t35) {
B138:
  %t139 = alloca i32*, align 4
  %t140 = alloca i32*, align 4
  %t141 = alloca [4096 x i32], align 4
  store i32* %t33, i32** %t139, align 4
  store i32* %t35, i32** %t140, align 4
  %t142 = load i32*, i32** %t139, align 4
  %t39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t141, i32 0, i32 0
  call void @get_next(i32* %t142, i32* %t39)
  br label %B145
B145:                               	; preds = %B138
  %t148 = load i32*, i32** %t140, align 4
  %t43 = getelementptr inbounds i32, i32* %t148, i32 0
  %t149 = load i32, i32* %t43, align 4
  %t246 = add i32 0, 0
  %t234 = add i32 0, 0
  %t44 = icmp ne i32 %t149, 0
  br i1 %t44, label %B146, label %B151
B146:                               	; preds = %B145, %B155
  %t156 = load i32*, i32** %t139, align 4
  %t46 = getelementptr inbounds i32, i32* %t156, i32 %t234
  %t157 = load i32, i32* %t46, align 4
  %t158 = load i32*, i32** %t140, align 4
  %t48 = getelementptr inbounds i32, i32* %t158, i32 %t246
  %t159 = load i32, i32* %t48, align 4
  %t49 = icmp eq i32 %t157, %t159
  br i1 %t49, label %B153, label %B162
B151:                               	; preds = %B145
  %t245 = add i32 0, 0
  %t233 = add i32 0, 0
  br label %B147
B153:                               	; preds = %B146
  %t52 = add i32 %t234, 1
  %t55 = add i32 %t246, 1
  %t165 = load i32*, i32** %t139, align 4
  %t57 = getelementptr inbounds i32, i32* %t165, i32 %t52
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
  ret i32 %t55
B169:                               	; preds = %B153
  br label %B164
B154:                               	; preds = %B162
  %t63 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t141, i32 0, i32 %t234
  %t171 = load i32, i32* %t63, align 4
  %t65 = sub i32 0, 1
  %t66 = icmp eq i32 %t171, %t65
  br i1 %t66, label %B172, label %B176
B164:                               	; preds = %B169
  %t243 = add i32 %t55, 0
  %t231 = add i32 %t52, 0
  br label %B155
B172:                               	; preds = %B154
  %t69 = add i32 %t171, 1
  %t72 = add i32 %t246, 1
  %t241 = add i32 %t72, 0
  %t229 = add i32 %t69, 0
  br label %B173
B176:                               	; preds = %B154
  %t241 = add i32 %t246, 0
  %t229 = add i32 %t171, 0
  br label %B173
B155:                               	; preds = %B164, %B173
  %t180 = load i32*, i32** %t140, align 4
  %t178 = getelementptr inbounds i32, i32* %t180, i32 %t243
  %t181 = load i32, i32* %t178, align 4
  %t246 = add i32 %t243, 0
  %t234 = add i32 %t231, 0
  %t179 = icmp ne i32 %t181, 0
  br i1 %t179, label %B146, label %B183
B173:                               	; preds = %B172, %B176
  %t243 = add i32 %t241, 0
  %t231 = add i32 %t229, 0
  br label %B155
B183:                               	; preds = %B155
  %t245 = add i32 %t243, 0
  %t233 = add i32 %t231, 0
  br label %B147
}
define i32 @read_str(i32* %t74) {
B185:
  %t186 = alloca i32*, align 4
  store i32* %t74, i32** %t186, align 4
  br label %B188
B188:                               	; preds = %B185
  %t253 = add i32 0, 0
  %t77 = icmp ne i32 1, 0
  br i1 %t77, label %B189, label %B192
B189:                               	; preds = %B188, %B196
  %t80 = call i32 @getch()
  %t194 = load i32*, i32** %t186, align 4
  %t79 = getelementptr inbounds i32, i32* %t194, i32 %t253
  store i32 %t80, i32* %t79, align 4
  %t82 = getelementptr inbounds i32, i32* %t194, i32 %t253
  %t198 = load i32, i32* %t82, align 4
  %t83 = icmp eq i32 %t198, 10
  br i1 %t83, label %B195, label %B201
B192:                               	; preds = %B188
  %t252 = add i32 0, 0
  br label %B190
B195:                               	; preds = %B189
  %t252 = add i32 %t253, 0
  br label %B190
B201:                               	; preds = %B189
  br label %B196
B190:                               	; preds = %B192, %B195, %B205
  %t207 = load i32*, i32** %t186, align 4
  %t88 = getelementptr inbounds i32, i32* %t207, i32 %t252
  store i32 0, i32* %t88, align 4
  ret i32 %t252
B196:                               	; preds = %B201
  %t86 = add i32 %t253, 1
  %t253 = add i32 %t86, 0
  %t203 = icmp ne i32 1, 0
  br i1 %t203, label %B189, label %B205
B205:                               	; preds = %B196
  %t252 = add i32 %t86, 0
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
  %t98 = call i32 @KMP(i32* %t92, i32* %t94)
  call void @putint(i32 %t98)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
