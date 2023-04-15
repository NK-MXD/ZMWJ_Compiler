@N = global i32 10000, align 4
define i32 @long_array(i32 %t1) {
B136:
  %t137 = alloca i32, align 4
  %t138 = alloca [10000 x i32], align 4
  %t139 = alloca [10000 x i32], align 4
  %t140 = alloca [10000 x i32], align 4
  %t141 = alloca i32, align 4
  %t183 = alloca i32, align 4
  %t203 = alloca i32, align 4
  %t224 = alloca i32, align 4
  store i32 %t1, i32* %t137, align 4
  store i32 0, i32* %t141, align 4
  br label %B142
B142:                               	; preds = %B136
  %t10 = load i32, i32* %t141, align 4
  %t11 = load i32, i32* @N, align 4
  %t12 = icmp slt i32 %t10, %t11
  br i1 %t12, label %B143, label %B147
B143:                               	; preds = %B142, %B143
  %t15 = load i32, i32* %t141, align 4
  %t16 = load i32, i32* %t141, align 4
  %t17 = mul i32 %t15, %t16
  %t18 = srem i32 %t17, 10
  %t13 = load i32, i32* %t141, align 4
  %t14 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t13
  store i32 %t18, i32* %t14, align 4
  %t20 = load i32, i32* %t141, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t141, align 4
  %t148 = load i32, i32* %t141, align 4
  %t149 = load i32, i32* @N, align 4
  %t150 = icmp slt i32 %t148, %t149
  br i1 %t150, label %B143, label %B153
B147:                               	; preds = %B142
  br label %B144
B153:                               	; preds = %B143
  br label %B144
B144:                               	; preds = %B147, %B153
  store i32 0, i32* %t141, align 4
  br label %B154
B154:                               	; preds = %B144
  %t23 = load i32, i32* %t141, align 4
  %t24 = load i32, i32* @N, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B155, label %B159
B155:                               	; preds = %B154, %B155
  %t28 = load i32, i32* %t141, align 4
  %t29 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t28
  %t160 = load i32, i32* %t29, align 4
  %t30 = load i32, i32* %t141, align 4
  %t31 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t30
  %t161 = load i32, i32* %t31, align 4
  %t32 = mul i32 %t160, %t161
  %t33 = srem i32 %t32, 10
  %t26 = load i32, i32* %t141, align 4
  %t27 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t26
  store i32 %t33, i32* %t27, align 4
  %t35 = load i32, i32* %t141, align 4
  %t36 = add i32 %t35, 1
  store i32 %t36, i32* %t141, align 4
  %t162 = load i32, i32* %t141, align 4
  %t163 = load i32, i32* @N, align 4
  %t164 = icmp slt i32 %t162, %t163
  br i1 %t164, label %B155, label %B167
B159:                               	; preds = %B154
  br label %B156
B167:                               	; preds = %B155
  br label %B156
B156:                               	; preds = %B159, %B167
  store i32 0, i32* %t141, align 4
  br label %B168
B168:                               	; preds = %B156
  %t38 = load i32, i32* %t141, align 4
  %t39 = load i32, i32* @N, align 4
  %t40 = icmp slt i32 %t38, %t39
  br i1 %t40, label %B169, label %B173
B169:                               	; preds = %B168, %B169
  %t43 = load i32, i32* %t141, align 4
  %t44 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t43
  %t174 = load i32, i32* %t44, align 4
  %t45 = load i32, i32* %t141, align 4
  %t46 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t45
  %t175 = load i32, i32* %t46, align 4
  %t47 = mul i32 %t174, %t175
  %t48 = srem i32 %t47, 100
  %t49 = load i32, i32* %t141, align 4
  %t50 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t49
  %t176 = load i32, i32* %t50, align 4
  %t51 = add i32 %t48, %t176
  %t41 = load i32, i32* %t141, align 4
  %t42 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t41
  store i32 %t51, i32* %t42, align 4
  %t53 = load i32, i32* %t141, align 4
  %t54 = add i32 %t53, 1
  store i32 %t54, i32* %t141, align 4
  %t177 = load i32, i32* %t141, align 4
  %t178 = load i32, i32* @N, align 4
  %t179 = icmp slt i32 %t177, %t178
  br i1 %t179, label %B169, label %B182
B173:                               	; preds = %B168
  br label %B170
B182:                               	; preds = %B169
  br label %B170
B170:                               	; preds = %B173, %B182
  store i32 0, i32* %t183, align 4
  store i32 0, i32* %t141, align 4
  br label %B184
B184:                               	; preds = %B170
  %t57 = load i32, i32* %t141, align 4
  %t58 = load i32, i32* @N, align 4
  %t59 = icmp slt i32 %t57, %t58
  br i1 %t59, label %B185, label %B189
B185:                               	; preds = %B184, %B192
  %t60 = load i32, i32* %t141, align 4
  %t61 = icmp slt i32 %t60, 10
  br i1 %t61, label %B190, label %B195
B189:                               	; preds = %B184
  br label %B186
B190:                               	; preds = %B185
  %t63 = load i32, i32* %t183, align 4
  %t64 = load i32, i32* %t141, align 4
  %t65 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t64
  %t196 = load i32, i32* %t65, align 4
  %t66 = add i32 %t63, %t196
  %t67 = srem i32 %t66, 1333
  store i32 %t67, i32* %t183, align 4
  %t68 = load i32, i32* %t183, align 4
  call void @putint(i32 %t68)
  br label %B192
B195:                               	; preds = %B185
  br label %B191
B186:                               	; preds = %B189, %B253
  %t134 = load i32, i32* %t183, align 4
  ret i32 %t134
B192:                               	; preds = %B190, %B199
  %t132 = load i32, i32* %t141, align 4
  %t133 = add i32 %t132, 1
  store i32 %t133, i32* %t141, align 4
  %t248 = load i32, i32* %t141, align 4
  %t249 = load i32, i32* @N, align 4
  %t250 = icmp slt i32 %t248, %t249
  br i1 %t250, label %B185, label %B253
B191:                               	; preds = %B195
  %t69 = load i32, i32* %t141, align 4
  %t70 = icmp slt i32 %t69, 20
  br i1 %t70, label %B197, label %B202
B253:                               	; preds = %B192
  br label %B186
B197:                               	; preds = %B191
  %t71 = load i32, i32* @N, align 4
  %t72 = sdiv i32 %t71, 2
  store i32 %t72, i32* %t203, align 4
  br label %B204
B202:                               	; preds = %B191
  br label %B198
B204:                               	; preds = %B197
  %t74 = load i32, i32* %t203, align 4
  %t75 = load i32, i32* @N, align 4
  %t76 = icmp slt i32 %t74, %t75
  br i1 %t76, label %B205, label %B209
B198:                               	; preds = %B202
  %t89 = load i32, i32* %t141, align 4
  %t90 = icmp slt i32 %t89, 30
  br i1 %t90, label %B218, label %B223
B205:                               	; preds = %B204, %B205
  %t78 = load i32, i32* %t183, align 4
  %t79 = load i32, i32* %t141, align 4
  %t80 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t79
  %t210 = load i32, i32* %t80, align 4
  %t81 = add i32 %t78, %t210
  %t82 = load i32, i32* %t203, align 4
  %t83 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t82
  %t211 = load i32, i32* %t83, align 4
  %t84 = sub i32 %t81, %t211
  store i32 %t84, i32* %t183, align 4
  %t86 = load i32, i32* %t203, align 4
  %t87 = add i32 %t86, 1
  store i32 %t87, i32* %t203, align 4
  %t212 = load i32, i32* %t203, align 4
  %t213 = load i32, i32* @N, align 4
  %t214 = icmp slt i32 %t212, %t213
  br i1 %t214, label %B205, label %B217
B209:                               	; preds = %B204
  br label %B206
B218:                               	; preds = %B198
  %t91 = load i32, i32* @N, align 4
  %t92 = sdiv i32 %t91, 2
  store i32 %t92, i32* %t224, align 4
  br label %B225
B223:                               	; preds = %B198
  br label %B219
B217:                               	; preds = %B205
  br label %B206
B206:                               	; preds = %B209, %B217
  %t88 = load i32, i32* %t183, align 4
  call void @putint(i32 %t88)
  br label %B199
B225:                               	; preds = %B218
  %t94 = load i32, i32* %t224, align 4
  %t95 = load i32, i32* @N, align 4
  %t96 = icmp slt i32 %t94, %t95
  br i1 %t96, label %B226, label %B230
B219:                               	; preds = %B223
  %t124 = load i32, i32* %t183, align 4
  %t125 = load i32, i32* %t141, align 4
  %t126 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t125
  %t247 = load i32, i32* %t126, align 4
  %t127 = load i32, i32* %t137, align 4
  %t128 = mul i32 %t247, %t127
  %t129 = add i32 %t124, %t128
  %t130 = srem i32 %t129, 99988
  store i32 %t130, i32* %t183, align 4
  br label %B220
B199:                               	; preds = %B206, %B220
  br label %B192
B226:                               	; preds = %B225, %B233
  %t97 = load i32, i32* %t224, align 4
  %t98 = icmp sgt i32 %t97, 2233
  br i1 %t98, label %B231, label %B236
B230:                               	; preds = %B225
  br label %B227
B220:                               	; preds = %B219, %B227
  br label %B199
B231:                               	; preds = %B226
  %t100 = load i32, i32* %t183, align 4
  %t101 = load i32, i32* %t141, align 4
  %t102 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t101
  %t237 = load i32, i32* %t102, align 4
  %t103 = add i32 %t100, %t237
  %t104 = load i32, i32* %t224, align 4
  %t105 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t104
  %t238 = load i32, i32* %t105, align 4
  %t106 = sub i32 %t103, %t238
  store i32 %t106, i32* %t183, align 4
  %t108 = load i32, i32* %t224, align 4
  %t109 = add i32 %t108, 1
  store i32 %t109, i32* %t224, align 4
  br label %B233
B236:                               	; preds = %B226
  br label %B232
B227:                               	; preds = %B230, %B246
  %t122 = load i32, i32* %t183, align 4
  call void @putint(i32 %t122)
  br label %B220
B233:                               	; preds = %B231, %B232
  %t241 = load i32, i32* %t224, align 4
  %t242 = load i32, i32* @N, align 4
  %t243 = icmp slt i32 %t241, %t242
  br i1 %t243, label %B226, label %B246
B232:                               	; preds = %B236
  %t111 = load i32, i32* %t183, align 4
  %t112 = load i32, i32* %t141, align 4
  %t113 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t112
  %t239 = load i32, i32* %t113, align 4
  %t114 = add i32 %t111, %t239
  %t115 = load i32, i32* %t224, align 4
  %t116 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t115
  %t240 = load i32, i32* %t116, align 4
  %t117 = add i32 %t114, %t240
  %t118 = srem i32 %t117, 13333
  store i32 %t118, i32* %t183, align 4
  %t120 = load i32, i32* %t224, align 4
  %t121 = add i32 %t120, 2
  store i32 %t121, i32* %t224, align 4
  br label %B233
B246:                               	; preds = %B233
  br label %B227
}
define i32 @main() {
B254:
  %t135 = call i32 @long_array(i32 9)
  ret i32 %t135
}
declare void @putint(i32)
