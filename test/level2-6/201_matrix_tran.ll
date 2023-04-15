@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @tran(float* %t3, float* %t5, float* %t7, float* %t9, float* %t11, float* %t13, float* %t15, float* %t17, float* %t19) {
B138:
  %t139 = alloca float*, align 4
  %t140 = alloca float*, align 4
  %t141 = alloca float*, align 4
  %t142 = alloca float*, align 4
  %t143 = alloca float*, align 4
  %t144 = alloca float*, align 4
  %t145 = alloca float*, align 4
  %t146 = alloca float*, align 4
  %t147 = alloca float*, align 4
  %t148 = alloca i32, align 4
  store float* %t3, float** %t139, align 4
  store float* %t5, float** %t140, align 4
  store float* %t7, float** %t141, align 4
  store float* %t9, float** %t142, align 4
  store float* %t11, float** %t143, align 4
  store float* %t13, float** %t144, align 4
  store float* %t15, float** %t145, align 4
  store float* %t17, float** %t146, align 4
  store float* %t19, float** %t147, align 4
  store i32 0, i32* %t148, align 4
  %t149 = load float*, float** %t141, align 4
  %t24 = getelementptr inbounds float, float* %t149, i32 1
  %t150 = load float, float* %t24, align 4
  %t151 = load float*, float** %t146, align 4
  %t23 = getelementptr inbounds float, float* %t151, i32 2
  store float %t150, float* %t23, align 4
  %t152 = load float*, float** %t140, align 4
  %t26 = getelementptr inbounds float, float* %t152, i32 2
  %t153 = load float, float* %t26, align 4
  %t154 = load float*, float** %t147, align 4
  %t25 = getelementptr inbounds float, float* %t154, i32 1
  store float %t153, float* %t25, align 4
  %t155 = load float*, float** %t140, align 4
  %t28 = getelementptr inbounds float, float* %t155, i32 0
  %t156 = load float, float* %t28, align 4
  %t157 = load float*, float** %t145, align 4
  %t27 = getelementptr inbounds float, float* %t157, i32 1
  store float %t156, float* %t27, align 4
  %t158 = load float*, float** %t141, align 4
  %t30 = getelementptr inbounds float, float* %t158, i32 0
  %t159 = load float, float* %t30, align 4
  %t160 = load float*, float** %t145, align 4
  %t29 = getelementptr inbounds float, float* %t160, i32 2
  store float %t159, float* %t29, align 4
  %t161 = load float*, float** %t139, align 4
  %t32 = getelementptr inbounds float, float* %t161, i32 1
  %t162 = load float, float* %t32, align 4
  %t163 = load float*, float** %t146, align 4
  %t31 = getelementptr inbounds float, float* %t163, i32 0
  store float %t162, float* %t31, align 4
  %t164 = load float*, float** %t139, align 4
  %t34 = getelementptr inbounds float, float* %t164, i32 2
  %t165 = load float, float* %t34, align 4
  %t166 = load float*, float** %t147, align 4
  %t33 = getelementptr inbounds float, float* %t166, i32 0
  store float %t165, float* %t33, align 4
  %t167 = load float*, float** %t140, align 4
  %t36 = getelementptr inbounds float, float* %t167, i32 1
  %t168 = load float, float* %t36, align 4
  %t169 = load float*, float** %t146, align 4
  %t35 = getelementptr inbounds float, float* %t169, i32 1
  store float %t168, float* %t35, align 4
  %t170 = load float*, float** %t141, align 4
  %t38 = getelementptr inbounds float, float* %t170, i32 2
  %t171 = load float, float* %t38, align 4
  %t172 = load float*, float** %t147, align 4
  %t37 = getelementptr inbounds float, float* %t172, i32 2
  store float %t171, float* %t37, align 4
  %t173 = load float*, float** %t139, align 4
  %t40 = getelementptr inbounds float, float* %t173, i32 0
  %t174 = load float, float* %t40, align 4
  %t175 = load float*, float** %t145, align 4
  %t39 = getelementptr inbounds float, float* %t175, i32 0
  store float %t174, float* %t39, align 4
  ret i32 0
}
define i32 @main() {
B176:
  %t177 = alloca [3 x float], align 4
  %t178 = alloca [3 x float], align 4
  %t179 = alloca [3 x float], align 4
  %t180 = alloca [3 x float], align 4
  %t181 = alloca [3 x float], align 4
  %t182 = alloca [3 x float], align 4
  %t183 = alloca [6 x float], align 4
  %t184 = alloca [3 x float], align 4
  %t185 = alloca [3 x float], align 4
  %t186 = alloca i32, align 4
  %t193 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t186, align 4
  br label %B187
B187:                               	; preds = %B176, %B188
  %t55 = load i32, i32* %t186, align 4
  %t56 = load i32, i32* @M, align 4
  %t57 = icmp slt i32 %t55, %t56
  br i1 %t57, label %B188, label %B192
B188:                               	; preds = %B187
  %t60 = load i32, i32* %t186, align 4
  %t61 = sitofp i32 %t60 to float
  %t58 = load i32, i32* %t186, align 4
  %t59 = getelementptr inbounds [3 x float], [3 x float]* %t177, i32 0, i32 %t58
  store float %t61, float* %t59, align 4
  %t64 = load i32, i32* %t186, align 4
  %t65 = sitofp i32 %t64 to float
  %t62 = load i32, i32* %t186, align 4
  %t63 = getelementptr inbounds [3 x float], [3 x float]* %t178, i32 0, i32 %t62
  store float %t65, float* %t63, align 4
  %t68 = load i32, i32* %t186, align 4
  %t69 = sitofp i32 %t68 to float
  %t66 = load i32, i32* %t186, align 4
  %t67 = getelementptr inbounds [3 x float], [3 x float]* %t179, i32 0, i32 %t66
  store float %t69, float* %t67, align 4
  %t72 = load i32, i32* %t186, align 4
  %t73 = sitofp i32 %t72 to float
  %t70 = load i32, i32* %t186, align 4
  %t71 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 %t70
  store float %t73, float* %t71, align 4
  %t76 = load i32, i32* %t186, align 4
  %t77 = sitofp i32 %t76 to float
  %t74 = load i32, i32* %t186, align 4
  %t75 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 %t74
  store float %t77, float* %t75, align 4
  %t80 = load i32, i32* %t186, align 4
  %t81 = sitofp i32 %t80 to float
  %t78 = load i32, i32* %t186, align 4
  %t79 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 %t78
  store float %t81, float* %t79, align 4
  %t83 = load i32, i32* %t186, align 4
  %t84 = add i32 %t83, 1
  store i32 %t84, i32* %t186, align 4
  br label %B187
B192:                               	; preds = %B187
  br label %B189
B189:                               	; preds = %B192
  %t86 = getelementptr inbounds [3 x float], [3 x float]* %t177, i32 0, i32 0
  %t87 = getelementptr inbounds [3 x float], [3 x float]* %t178, i32 0, i32 0
  %t88 = getelementptr inbounds [3 x float], [3 x float]* %t179, i32 0, i32 0
  %t89 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 0
  %t90 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 0
  %t91 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 0
  %t92 = getelementptr inbounds [6 x float], [6 x float]* %t183, i32 0, i32 0
  %t93 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 0
  %t95 = call i32 @tran(float* %t86, float* %t87, float* %t88, float* %t89, float* %t90, float* %t91, float* %t92, float* %t93, float* %t94)
  store i32 %t95, i32* %t186, align 4
  br label %B194
B194:                               	; preds = %B189, %B195
  %t97 = load i32, i32* %t186, align 4
  %t98 = load i32, i32* @N, align 4
  %t99 = icmp slt i32 %t97, %t98
  br i1 %t99, label %B195, label %B199
B195:                               	; preds = %B194
  %t101 = load i32, i32* %t186, align 4
  %t102 = getelementptr inbounds [6 x float], [6 x float]* %t183, i32 0, i32 %t101
  %t200 = load float, float* %t102, align 4
  %t103 = fptosi float %t200 to i32
  store i32 %t103, i32* %t193, align 4
  %t104 = load i32, i32* %t193, align 4
  call void @putint(i32 %t104)
  %t106 = load i32, i32* %t186, align 4
  %t107 = add i32 %t106, 1
  store i32 %t107, i32* %t186, align 4
  br label %B194
B199:                               	; preds = %B194
  br label %B196
B196:                               	; preds = %B199
  store i32 10, i32* %t193, align 4
  %t109 = load i32, i32* %t193, align 4
  call void @putch(i32 %t109)
  store i32 0, i32* %t186, align 4
  br label %B201
B201:                               	; preds = %B196, %B202
  %t111 = load i32, i32* %t186, align 4
  %t112 = load i32, i32* @N, align 4
  %t113 = icmp slt i32 %t111, %t112
  br i1 %t113, label %B202, label %B206
B202:                               	; preds = %B201
  %t115 = load i32, i32* %t186, align 4
  %t116 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 %t115
  %t207 = load float, float* %t116, align 4
  %t117 = fptosi float %t207 to i32
  store i32 %t117, i32* %t193, align 4
  %t118 = load i32, i32* %t193, align 4
  call void @putint(i32 %t118)
  %t120 = load i32, i32* %t186, align 4
  %t121 = add i32 %t120, 1
  store i32 %t121, i32* %t186, align 4
  br label %B201
B206:                               	; preds = %B201
  br label %B203
B203:                               	; preds = %B206
  store i32 10, i32* %t193, align 4
  store i32 0, i32* %t186, align 4
  %t124 = load i32, i32* %t193, align 4
  call void @putch(i32 %t124)
  br label %B208
B208:                               	; preds = %B203, %B209
  %t125 = load i32, i32* %t186, align 4
  %t126 = load i32, i32* @N, align 4
  %t127 = icmp slt i32 %t125, %t126
  br i1 %t127, label %B209, label %B213
B209:                               	; preds = %B208
  %t129 = load i32, i32* %t186, align 4
  %t130 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 %t129
  %t214 = load float, float* %t130, align 4
  %t131 = fptosi float %t214 to i32
  store i32 %t131, i32* %t193, align 4
  %t132 = load i32, i32* %t193, align 4
  call void @putint(i32 %t132)
  %t134 = load i32, i32* %t186, align 4
  %t135 = add i32 %t134, 1
  store i32 %t135, i32* %t186, align 4
  br label %B208
B213:                               	; preds = %B208
  br label %B210
B210:                               	; preds = %B213
  store i32 10, i32* %t193, align 4
  %t137 = load i32, i32* %t193, align 4
  call void @putch(i32 %t137)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
