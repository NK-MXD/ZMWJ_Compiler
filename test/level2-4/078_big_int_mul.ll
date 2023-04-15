@len = global i32 20, align 4
define i32 @main() {
B129:
  %t130 = alloca i32, align 4
  %t131 = alloca i32, align 4
  %t132 = alloca i32, align 4
  %t133 = alloca i32, align 4
  %t134 = alloca i32, align 4
  %t135 = alloca [20 x i32], align 4
  %t156 = alloca [20 x i32], align 4
  %t177 = alloca i32, align 4
  %t178 = alloca i32, align 4
  %t179 = alloca [25 x i32], align 4
  %t180 = alloca [25 x i32], align 4
  %t181 = alloca [40 x i32], align 4
  %t136 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 0
  store i32 1, i32* %t136, align 4
  %t137 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 1
  store i32 2, i32* %t137, align 4
  %t138 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 2
  store i32 3, i32* %t138, align 4
  %t139 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 3
  store i32 4, i32* %t139, align 4
  %t140 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 4
  store i32 5, i32* %t140, align 4
  %t141 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 5
  store i32 6, i32* %t141, align 4
  %t142 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 6
  store i32 7, i32* %t142, align 4
  %t143 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 7
  store i32 8, i32* %t143, align 4
  %t144 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 8
  store i32 9, i32* %t144, align 4
  %t145 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 9
  store i32 0, i32* %t145, align 4
  %t146 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 10
  store i32 1, i32* %t146, align 4
  %t147 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 11
  store i32 2, i32* %t147, align 4
  %t148 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 12
  store i32 3, i32* %t148, align 4
  %t149 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 13
  store i32 4, i32* %t149, align 4
  %t150 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 14
  store i32 5, i32* %t150, align 4
  %t151 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 15
  store i32 6, i32* %t151, align 4
  %t152 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 16
  store i32 7, i32* %t152, align 4
  %t153 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 17
  store i32 8, i32* %t153, align 4
  %t154 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 18
  store i32 9, i32* %t154, align 4
  %t155 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 19
  store i32 0, i32* %t155, align 4
  %t157 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 0
  store i32 2, i32* %t157, align 4
  %t158 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 1
  store i32 3, i32* %t158, align 4
  %t159 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 2
  store i32 4, i32* %t159, align 4
  %t160 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 3
  store i32 2, i32* %t160, align 4
  %t161 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 4
  store i32 5, i32* %t161, align 4
  %t162 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 5
  store i32 7, i32* %t162, align 4
  %t163 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 6
  store i32 9, i32* %t163, align 4
  %t164 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 7
  store i32 9, i32* %t164, align 4
  %t165 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 8
  store i32 0, i32* %t165, align 4
  %t166 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 9
  store i32 1, i32* %t166, align 4
  %t167 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 10
  store i32 9, i32* %t167, align 4
  %t168 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 11
  store i32 8, i32* %t168, align 4
  %t169 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 12
  store i32 7, i32* %t169, align 4
  %t170 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 13
  store i32 6, i32* %t170, align 4
  %t171 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 14
  store i32 4, i32* %t171, align 4
  %t172 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 15
  store i32 3, i32* %t172, align 4
  %t173 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 16
  store i32 2, i32* %t173, align 4
  %t174 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 17
  store i32 1, i32* %t174, align 4
  %t175 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 18
  store i32 2, i32* %t175, align 4
  %t176 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 19
  store i32 2, i32* %t176, align 4
  %t10 = load i32, i32* @len, align 4
  store i32 %t10, i32* %t177, align 4
  %t12 = load i32, i32* @len, align 4
  store i32 %t12, i32* %t178, align 4
  %t182 = bitcast [40 x i32]* %t181 to i8*
  call void @llvm.memset.p0.i32(i8* %t182, i8 0, i32 160, i1 0)
  store i32 0, i32* %t130, align 4
  br label %B183
B183:                               	; preds = %B129
  %t24 = load i32, i32* %t130, align 4
  %t25 = load i32, i32* %t177, align 4
  %t26 = icmp slt i32 %t24, %t25
  br i1 %t26, label %B184, label %B188
B184:                               	; preds = %B183, %B184
  %t29 = load i32, i32* %t130, align 4
  %t30 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 %t29
  %t189 = load i32, i32* %t30, align 4
  %t27 = load i32, i32* %t130, align 4
  %t28 = getelementptr inbounds [25 x i32], [25 x i32]* %t179, i32 0, i32 %t27
  store i32 %t189, i32* %t28, align 4
  %t32 = load i32, i32* %t130, align 4
  %t33 = add i32 %t32, 1
  store i32 %t33, i32* %t130, align 4
  %t190 = load i32, i32* %t130, align 4
  %t191 = load i32, i32* %t177, align 4
  %t192 = icmp slt i32 %t190, %t191
  br i1 %t192, label %B184, label %B195
B188:                               	; preds = %B183
  br label %B185
B195:                               	; preds = %B184
  br label %B185
B185:                               	; preds = %B188, %B195
  store i32 0, i32* %t130, align 4
  br label %B196
B196:                               	; preds = %B185
  %t35 = load i32, i32* %t130, align 4
  %t36 = load i32, i32* %t178, align 4
  %t37 = icmp slt i32 %t35, %t36
  br i1 %t37, label %B197, label %B201
B197:                               	; preds = %B196, %B197
  %t40 = load i32, i32* %t130, align 4
  %t41 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 %t40
  %t202 = load i32, i32* %t41, align 4
  %t38 = load i32, i32* %t130, align 4
  %t39 = getelementptr inbounds [25 x i32], [25 x i32]* %t180, i32 0, i32 %t38
  store i32 %t202, i32* %t39, align 4
  %t43 = load i32, i32* %t130, align 4
  %t44 = add i32 %t43, 1
  store i32 %t44, i32* %t130, align 4
  %t203 = load i32, i32* %t130, align 4
  %t204 = load i32, i32* %t178, align 4
  %t205 = icmp slt i32 %t203, %t204
  br i1 %t205, label %B197, label %B208
B201:                               	; preds = %B196
  br label %B198
B208:                               	; preds = %B197
  br label %B198
B198:                               	; preds = %B201, %B208
  %t46 = load i32, i32* %t177, align 4
  %t47 = load i32, i32* %t178, align 4
  %t48 = add i32 %t46, %t47
  %t49 = sub i32 %t48, 1
  store i32 %t49, i32* %t133, align 4
  store i32 0, i32* %t130, align 4
  br label %B209
B209:                               	; preds = %B198
  %t51 = load i32, i32* %t130, align 4
  %t52 = load i32, i32* %t133, align 4
  %t53 = icmp sle i32 %t51, %t52
  br i1 %t53, label %B210, label %B214
B210:                               	; preds = %B209, %B210
  %t54 = load i32, i32* %t130, align 4
  %t55 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t54
  store i32 0, i32* %t55, align 4
  %t57 = load i32, i32* %t130, align 4
  %t58 = add i32 %t57, 1
  store i32 %t58, i32* %t130, align 4
  %t215 = load i32, i32* %t130, align 4
  %t216 = load i32, i32* %t133, align 4
  %t217 = icmp sle i32 %t215, %t216
  br i1 %t217, label %B210, label %B220
B214:                               	; preds = %B209
  br label %B211
B220:                               	; preds = %B210
  br label %B211
B211:                               	; preds = %B214, %B220
  store i32 0, i32* %t134, align 4
  %t61 = load i32, i32* %t178, align 4
  %t62 = sub i32 %t61, 1
  store i32 %t62, i32* %t130, align 4
  br label %B221
B221:                               	; preds = %B211
  %t63 = load i32, i32* %t130, align 4
  %t64 = sub i32 0, 1
  %t65 = icmp sgt i32 %t63, %t64
  br i1 %t65, label %B222, label %B226
B222:                               	; preds = %B221, %B230
  %t67 = load i32, i32* %t130, align 4
  %t68 = getelementptr inbounds [25 x i32], [25 x i32]* %t180, i32 0, i32 %t67
  %t227 = load i32, i32* %t68, align 4
  store i32 %t227, i32* %t132, align 4
  %t70 = load i32, i32* %t177, align 4
  %t71 = sub i32 %t70, 1
  store i32 %t71, i32* %t131, align 4
  br label %B228
B226:                               	; preds = %B221
  br label %B223
B228:                               	; preds = %B222
  %t72 = load i32, i32* %t131, align 4
  %t73 = sub i32 0, 1
  %t74 = icmp sgt i32 %t72, %t73
  br i1 %t74, label %B229, label %B233
B223:                               	; preds = %B226, %B254
  %t114 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 0
  %t257 = load i32, i32* %t114, align 4
  %t115 = icmp ne i32 %t257, 0
  br i1 %t115, label %B255, label %B260
B229:                               	; preds = %B228, %B238
  %t76 = load i32, i32* %t133, align 4
  %t77 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t76
  %t234 = load i32, i32* %t77, align 4
  %t78 = load i32, i32* %t132, align 4
  %t79 = load i32, i32* %t131, align 4
  %t80 = getelementptr inbounds [25 x i32], [25 x i32]* %t179, i32 0, i32 %t79
  %t235 = load i32, i32* %t80, align 4
  %t81 = mul i32 %t78, %t235
  %t82 = add i32 %t234, %t81
  store i32 %t82, i32* %t134, align 4
  %t83 = load i32, i32* %t134, align 4
  %t84 = icmp sge i32 %t83, 10
  br i1 %t84, label %B236, label %B241
B233:                               	; preds = %B228
  br label %B230
B255:                               	; preds = %B223
  %t116 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 0
  %t261 = load i32, i32* %t116, align 4
  call void @putint(i32 %t261)
  br label %B256
B260:                               	; preds = %B223
  br label %B256
B236:                               	; preds = %B229
  %t87 = load i32, i32* %t134, align 4
  %t85 = load i32, i32* %t133, align 4
  %t86 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t85
  store i32 %t87, i32* %t86, align 4
  %t91 = load i32, i32* %t133, align 4
  %t92 = sub i32 %t91, 1
  %t93 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t92
  %t242 = load i32, i32* %t93, align 4
  %t94 = load i32, i32* %t134, align 4
  %t95 = sdiv i32 %t94, 10
  %t96 = add i32 %t242, %t95
  %t88 = load i32, i32* %t133, align 4
  %t89 = sub i32 %t88, 1
  %t90 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t89
  store i32 %t96, i32* %t90, align 4
  br label %B238
B241:                               	; preds = %B229
  br label %B237
B230:                               	; preds = %B233, %B248
  %t107 = load i32, i32* %t133, align 4
  %t108 = load i32, i32* %t177, align 4
  %t109 = add i32 %t107, %t108
  %t110 = sub i32 %t109, 1
  store i32 %t110, i32* %t133, align 4
  %t112 = load i32, i32* %t130, align 4
  %t113 = sub i32 %t112, 1
  store i32 %t113, i32* %t130, align 4
  %t249 = load i32, i32* %t130, align 4
  %t250 = sub i32 0, 1
  %t251 = icmp sgt i32 %t249, %t250
  br i1 %t251, label %B222, label %B254
B256:                               	; preds = %B255, %B260
  store i32 1, i32* %t130, align 4
  br label %B262
B238:                               	; preds = %B236, %B237
  %t101 = load i32, i32* %t131, align 4
  %t102 = sub i32 %t101, 1
  store i32 %t102, i32* %t131, align 4
  %t104 = load i32, i32* %t133, align 4
  %t105 = sub i32 %t104, 