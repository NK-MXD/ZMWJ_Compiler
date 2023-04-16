@N = global i32 0, align 4
@M = global i32 0, align 4
@L = global i32 0, align 4
define i32 @sub(i32* %t3, i32* %t5, i32* %t7, i32* %t9, i32* %t11, i32* %t13, i32* %t15, i32* %t17, i32* %t19) {
B133:
  %t134 = alloca i32*, align 4
  %t135 = alloca i32*, align 4
  %t136 = alloca i32*, align 4
  %t137 = alloca i32*, align 4
  %t138 = alloca i32*, align 4
  %t139 = alloca i32*, align 4
  %t140 = alloca i32*, align 4
  %t141 = alloca i32*, align 4
  %t142 = alloca i32*, align 4
  store i32* %t3, i32** %t134, align 4
  store i32* %t5, i32** %t135, align 4
  store i32* %t7, i32** %t136, align 4
  store i32* %t9, i32** %t137, align 4
  store i32* %t11, i32** %t138, align 4
  store i32* %t13, i32** %t139, align 4
  store i32* %t15, i32** %t140, align 4
  store i32* %t17, i32** %t141, align 4
  store i32* %t19, i32** %t142, align 4
  br label %B144
B144:                               	; preds = %B133
  %t230 = add i32 0, 0
  %t24 = icmp slt i32 0, 3
  br i1 %t24, label %B145, label %B149
B145:                               	; preds = %B144, %B278
  %t150 = load i32*, i32** %t134, align 4
  %t28 = getelementptr inbounds i32, i32* %t150, i32 %t230
  %t151 = load i32, i32* %t28, align 4
  %t152 = load i32*, i32** %t137, align 4
  %t30 = getelementptr inbounds i32, i32* %t152, i32 %t230
  %t153 = load i32, i32* %t30, align 4
  %t31 = sub i32 %t151, %t153
  %t154 = load i32*, i32** %t140, align 4
  %t26 = getelementptr inbounds i32, i32* %t154, i32 %t230
  store i32 %t31, i32* %t26, align 4
  %t155 = load i32*, i32** %t135, align 4
  %t35 = getelementptr inbounds i32, i32* %t155, i32 %t230
  %t156 = load i32, i32* %t35, align 4
  %t157 = load i32*, i32** %t138, align 4
  %t37 = getelementptr inbounds i32, i32* %t157, i32 %t230
  %t158 = load i32, i32* %t37, align 4
  %t38 = sub i32 %t156, %t158
  %t159 = load i32*, i32** %t141, align 4
  %t33 = getelementptr inbounds i32, i32* %t159, i32 %t230
  store i32 %t38, i32* %t33, align 4
  %t160 = load i32*, i32** %t136, align 4
  %t42 = getelementptr inbounds i32, i32* %t160, i32 %t230
  %t161 = load i32, i32* %t42, align 4
  %t162 = load i32*, i32** %t139, align 4
  %t44 = getelementptr inbounds i32, i32* %t162, i32 %t230
  %t163 = load i32, i32* %t44, align 4
  %t45 = sub i32 %t161, %t163
  %t164 = load i32*, i32** %t142, align 4
  %t40 = getelementptr inbounds i32, i32* %t164, i32 %t230
  store i32 %t45, i32* %t40, align 4
  %t48 = add i32 %t230, 1
  %t166 = icmp slt i32 %t48, 3
  br i1 %t166, label %B278, label %B169
B149:                               	; preds = %B144
  %t231 = add i32 0, 0
  br label %B146
B169:                               	; preds = %B145
  %t231 = add i32 %t48, 0
  br label %B146
B278:                               	; preds = %B145
  %t230 = add i32 %t48, 0
  br label %B145
B146:                               	; preds = %B149, %B169
  ret i32 0
}
define i32 @main() {
B170:
  %t171 = alloca [3 x i32], align 4
  %t172 = alloca [3 x i32], align 4
  %t173 = alloca [3 x i32], align 4
  %t174 = alloca [3 x i32], align 4
  %t175 = alloca [3 x i32], align 4
  %t176 = alloca [3 x i32], align 4
  %t177 = alloca [6 x i32], align 4
  %t178 = alloca [3 x i32], align 4
  %t179 = alloca [3 x i32], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B181
B181:                               	; preds = %B170
  %t255 = add i32 0, 0
  %t64 = icmp slt i32 0, 3
  br i1 %t64, label %B182, label %B186
B182:                               	; preds = %B181, %B281
  %t66 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 %t255
  store i32 %t255, i32* %t66, align 4
  %t69 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 %t255
  store i32 %t255, i32* %t69, align 4
  %t72 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 %t255
  store i32 %t255, i32* %t72, align 4
  %t75 = getelementptr inbounds [3 x i32], [3 x i32]* %t174, i32 0, i32 %t255
  store i32 %t255, i32* %t75, align 4
  %t78 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 %t255
  store i32 %t255, i32* %t78, align 4
  %t81 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 %t255
  store i32 %t255, i32* %t81, align 4
  %t85 = add i32 %t255, 1
  %t188 = icmp slt i32 %t85, 3
  br i1 %t188, label %B281, label %B191
B186:                               	; preds = %B181
  %t254 = add i32 0, 0
  br label %B183
B191:                               	; preds = %B182
  %t254 = add i32 %t85, 0
  br label %B183
B281:                               	; preds = %B182
  %t255 = add i32 %t85, 0
  br label %B182
B183:                               	; preds = %B186, %B191
  %t87 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 0
  %t88 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 0
  %t89 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 0
  %t90 = getelementptr inbounds [3 x i32], [3 x i32]* %t174, i32 0, i32 0
  %t91 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 0
  %t92 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 0
  %t93 = getelementptr inbounds [6 x i32], [6 x i32]* %t177, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 0
  %t95 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 0
  %t96 = call i32 @sub(i32* %t87, i32* %t88, i32* %t89, i32* %t90, i32* %t91, i32* %t92, i32* %t93, i32* %t94, i32* %t95)
  br label %B193
B193:                               	; preds = %B183
  %t273 = add i32 0, 0
  %t248 = add i32 %t96, 0
  %t99 = icmp slt i32 %t96, 3
  br i1 %t99, label %B194, label %B198
B194:                               	; preds = %B193, %B285
  %t102 = getelementptr inbounds [6 x i32], [6 x i32]* %t177, i32 0, i32 %t248
  %t199 = load i32, i32* %t102, align 4
  call void @putint(i32 %t199)
  %t106 = add i32 %t248, 1
  %t201 = icmp slt i32 %t106, 3
  br i1 %t201, label %B285, label %B204
B198:                               	; preds = %B193
  %t274 = add i32 0, 0
  %t249 = add i32 %t96, 0
  br label %B195
B204:                               	; preds = %B194
  %t274 = add i32 %t199, 0
  %t249 = add i32 %t106, 0
  br label %B195
B285:                               	; preds = %B194
  %t273 = add i32 %t199, 0
  %t248 = add i32 %t106, 0
  br label %B194
B195:                               	; preds = %B198, %B204
  call void @putch(i32 10)
  br label %B205
B205:                               	; preds = %B195
  %t267 = add i32 10, 0
  %t242 = add i32 0, 0
  %t111 = icmp slt i32 0, 3
  br i1 %t111, label %B206, label %B210
B206:                               	; preds = %B205, %B290
  %t114 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 %t242
  %t211 = load i32, i32* %t114, align 4
  call void @putint(i32 %t211)
  %t118 = add i32 %t242, 1
  %t213 = icmp slt i32 %t118, 3
  br i1 %t213, label %B290, label %B216
B210:                               	; preds = %B205
  %t268 = add i32 10, 0
  %t243 = add i32 0, 0
  br label %B207
B216:                               	; preds = %B206
  %t268 = add i32 %t211, 0
  %t243 = add i32 %t118, 0
  br label %B207
B290:                               	; preds = %B206
  %t267 = add i32 %t211, 0
  %t242 = add i32 %t118, 0
  br label %B206
B207:                               	; preds = %B210, %B216
  call void @putch(i32 10)
  br label %B217
B217:                               	; preds = %B207
  %t261 = add i32 10, 0
  %t236 = add i32 0, 0
  %t123 = icmp slt i32 0, 3
  br i1 %t123, label %B218, label %B222
B218:                               	; preds = %B217, %B295
  %t126 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 %t236
  %t223 = load i32, i32* %t126, align 4
  call void @putint(i32 %t223)
  %t130 = add i32 %t236, 1
  %t225 = icmp slt i32 %t130, 3
  br i1 %t225, label %B295, label %B228
B222:                               	; preds = %B217
  %t262 = add i32 10, 0
  %t237 = add i32 0, 0
  br label %B219
B228:                               	; preds = %B218
  %t262 = add i32 %t223, 0
  %t237 = add i32 %t130, 0
  br label %B219
B295:                               	; preds = %B218
  %t261 = add i32 %t223, 0
  %t236 = add i32 %t130, 0
  br label %B218
B219:                               	; preds = %B222, %B228
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
