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
  %t143 = alloca i32, align 4
  store i32* %t3, i32** %t134, align 4
  store i32* %t5, i32** %t135, align 4
  store i32* %t7, i32** %t136, align 4
  store i32* %t9, i32** %t137, align 4
  store i32* %t11, i32** %t138, align 4
  store i32* %t13, i32** %t139, align 4
  store i32* %t15, i32** %t140, align 4
  store i32* %t17, i32** %t141, align 4
  store i32* %t19, i32** %t142, align 4
  store i32 0, i32* %t143, align 4
  br label %B144
B144:                               	; preds = %B133
  %t23 = load i32, i32* %t143, align 4
  %t24 = icmp slt i32 %t23, 3
  br i1 %t24, label %B145, label %B149
B145:                               	; preds = %B144, %B145
  %t150 = load i32*, i32** %t134, align 4
  %t27 = load i32, i32* %t143, align 4
  %t28 = getelementptr inbounds i32, i32* %t150, i32 %t27
  %t151 = load i32, i32* %t28, align 4
  %t152 = load i32*, i32** %t137, align 4
  %t29 = load i32, i32* %t143, align 4
  %t30 = getelementptr inbounds i32, i32* %t152, i32 %t29
  %t153 = load i32, i32* %t30, align 4
  %t31 = sub i32 %t151, %t153
  %t154 = load i32*, i32** %t140, align 4
  %t25 = load i32, i32* %t143, align 4
  %t26 = getelementptr inbounds i32, i32* %t154, i32 %t25
  store i32 %t31, i32* %t26, align 4
  %t155 = load i32*, i32** %t135, align 4
  %t34 = load i32, i32* %t143, align 4
  %t35 = getelementptr inbounds i32, i32* %t155, i32 %t34
  %t156 = load i32, i32* %t35, align 4
  %t157 = load i32*, i32** %t138, align 4
  %t36 = load i32, i32* %t143, align 4
  %t37 = getelementptr inbounds i32, i32* %t157, i32 %t36
  %t158 = load i32, i32* %t37, align 4
  %t38 = sub i32 %t156, %t158
  %t159 = load i32*, i32** %t141, align 4
  %t32 = load i32, i32* %t143, align 4
  %t33 = getelementptr inbounds i32, i32* %t159, i32 %t32
  store i32 %t38, i32* %t33, align 4
  %t160 = load i32*, i32** %t136, align 4
  %t41 = load i32, i32* %t143, align 4
  %t42 = getelementptr inbounds i32, i32* %t160, i32 %t41
  %t161 = load i32, i32* %t42, align 4
  %t162 = load i32*, i32** %t139, align 4
  %t43 = load i32, i32* %t143, align 4
  %t44 = getelementptr inbounds i32, i32* %t162, i32 %t43
  %t163 = load i32, i32* %t44, align 4
  %t45 = sub i32 %t161, %t163
  %t164 = load i32*, i32** %t142, align 4
  %t39 = load i32, i32* %t143, align 4
  %t40 = getelementptr inbounds i32, i32* %t164, i32 %t39
  store i32 %t45, i32* %t40, align 4
  %t47 = load i32, i32* %t143, align 4
  %t48 = add i32 %t47, 1
  store i32 %t48, i32* %t143, align 4
  %t165 = load i32, i32* %t143, align 4
  %t166 = icmp slt i32 %t165, 3
  br i1 %t166, label %B145, label %B169
B149:                               	; preds = %B144
  br label %B146
B169:                               	; preds = %B145
  br label %B146
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
  %t180 = alloca i32, align 4
  %t192 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t180, align 4
  br label %B181
B181:                               	; preds = %B170
  %t63 = load i32, i32* %t180, align 4
  %t64 = icmp slt i32 %t63, 3
  br i1 %t64, label %B182, label %B186
B182:                               	; preds = %B181, %B182
  %t67 = load i32, i32* %t180, align 4
  %t65 = load i32, i32* %t180, align 4
  %t66 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 %t65
  store i32 %t67, i32* %t66, align 4
  %t70 = load i32, i32* %t180, align 4
  %t68 = load i32, i32* %t180, align 4
  %t69 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 %t68
  store i32 %t70, i32* %t69, align 4
  %t73 = load i32, i32* %t180, align 4
  %t71 = load i32, i32* %t180, align 4
  %t72 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 %t71
  store i32 %t73, i32* %t72, align 4
  %t76 = load i32, i32* %t180, align 4
  %t74 = load i32, i32* %t180, align 4
  %t75 = getelementptr inbounds [3 x i32], [3 x i32]* %t174, i32 0, i32 %t74
  store i32 %t76, i32* %t75, align 4
  %t79 = load i32, i32* %t180, align 4
  %t77 = load i32, i32* %t180, align 4
  %t78 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 %t77
  store i32 %t79, i32* %t78, align 4
  %t82 = load i32, i32* %t180, align 4
  %t80 = load i32, i32* %t180, align 4
  %t81 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 %t80
  store i32 %t82, i32* %t81, align 4
  %t84 = load i32, i32* %t180, align 4
  %t85 = add i32 %t84, 1
  store i32 %t85, i32* %t180, align 4
  %t187 = load i32, i32* %t180, align 4
  %t188 = icmp slt i32 %t187, 3
  br i1 %t188, label %B182, label %B191
B186:                               	; preds = %B181
  br label %B183
B191:                               	; preds = %B182
  br label %B183
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
  store i32 %t96, i32* %t180, align 4
  br label %B193
B193:                               	; preds = %B183
  %t98 = load i32, i32* %t180, align 4
  %t99 = icmp slt i32 %t98, 3
  br i1 %t99, label %B194, label %B198
B194:                               	; preds = %B193, %B194
  %t101 = load i32, i32* %t180, align 4
  %t102 = getelementptr inbounds [6 x i32], [6 x i32]* %t177, i32 0, i32 %t101
  %t199 = load i32, i32* %t102, align 4
  store i32 %t199, i32* %t192, align 4
  %t103 = load i32, i32* %t192, align 4
  call void @putint(i32 %t103)
  %t105 = load i32, i32* %t180, align 4
  %t106 = add i32 %t105, 1
  store i32 %t106, i32* %t180, align 4
  %t200 = load i32, i32* %t180, align 4
  %t201 = icmp slt i32 %t200, 3
  br i1 %t201, label %B194, label %B204
B198:                               	; preds = %B193
  br label %B195
B204:                               	; preds = %B194
  br label %B195
B195:                               	; preds = %B198, %B204
  store i32 10, i32* %t192, align 4
  store i32 0, i32* %t180, align 4
  %t109 = load i32, i32* %t192, align 4
  call void @putch(i32 %t109)
  br label %B205
B205:                               	; preds = %B195
  %t110 = load i32, i32* %t180, align 4
  %t111 = icmp slt i32 %t110, 3
  br i1 %t111, label %B206, label %B210
B206:                               	; preds = %B205, %B206
  %t113 = load i32, i32* %t180, align 4
  %t114 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 %t113
  %t211 = load i32, i32* %t114, align 4
  store i32 %t211, i32* %t192, align 4
  %t115 = load i32, i32* %t192, align 4
  call void @putint(i32 %t115)
  %t117 = load i32, i32* %t180, align 4
  %t118 = add i32 %t117, 1
  store i32 %t118, i32* %t180, align 4
  %t212 = load i32, i32* %t180, align 4
  %t213 = icmp slt i32 %t212, 3
  br i1 %t213, label %B206, label %B216
B210:                               	; preds = %B205
  br label %B207
B216:                               	; preds = %B206
  br label %B207
B207:                               	; preds = %B210, %B216
  store i32 10, i32* %t192, align 4
  store i32 0, i32* %t180, align 4
  %t121 = load i32, i32* %t192, align 4
  call void @putch(i32 %t121)
  br label %B217
B217:                               	; preds = %B207
  %t122 = load i32, i32* %t180, align 4
  %t123 = icmp slt i32 %t122, 3
  br i1 %t123, label %B218, label %B222
B218:                               	; preds = %B217, %B218
  %t125 = load i32, i32* %t180, align 4
  %t126 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 %t125
  %t223 = load i32, i32* %t126, align 4
  store i32 %t223, i32* %t192, align 4
  %t127 = load i32, i32* %t192, align 4
  call void @putint(i32 %t127)
  %t129 = load i32, i32* %t180, align 4
  %t130 = add i32 %t129, 1
  store i32 %t130, i32* %t180, align 4
  %t224 = load i32, i32* %t180, align 4
  %t225 = icmp slt i32 %t224, 3
  br i1 %t225, label %B218, label %B228
B222:                               	; preds = %B217
  br label %B219
B228:                               	; preds = %B218
  br label %B219
B219:                               	; preds = %B222, %B228
  store i32 10, i32* %t192, align 4
  %t132 = load i32, i32* %t192, align 4
  call void @putch(i32 %t132)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
