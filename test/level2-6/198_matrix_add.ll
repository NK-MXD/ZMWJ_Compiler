@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @add(float* %t3, float* %t5, float* %t7, float* %t9, float* %t11, float* %t13, float* %t15, float* %t17, float* %t19) {
B147:
  %t148 = alloca float*, align 4
  %t149 = alloca float*, align 4
  %t150 = alloca float*, align 4
  %t151 = alloca float*, align 4
  %t152 = alloca float*, align 4
  %t153 = alloca float*, align 4
  %t154 = alloca float*, align 4
  %t155 = alloca float*, align 4
  %t156 = alloca float*, align 4
  %t157 = alloca i32, align 4
  store float* %t3, float** %t148, align 4
  store float* %t5, float** %t149, align 4
  store float* %t7, float** %t150, align 4
  store float* %t9, float** %t151, align 4
  store float* %t11, float** %t152, align 4
  store float* %t13, float** %t153, align 4
  store float* %t15, float** %t154, align 4
  store float* %t17, float** %t155, align 4
  store float* %t19, float** %t156, align 4
  store i32 0, i32* %t157, align 4
  br label %B158
B158:                               	; preds = %B147, %B159
  %t23 = load i32, i32* %t157, align 4
  %t24 = load i32, i32* @M, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B159, label %B163
B159:                               	; preds = %B158
  %t164 = load float*, float** %t148, align 4
  %t28 = load i32, i32* %t157, align 4
  %t29 = getelementptr inbounds float, float* %t164, i32 %t28
  %t165 = load float, float* %t29, align 4
  %t166 = load float*, float** %t151, align 4
  %t30 = load i32, i32* %t157, align 4
  %t31 = getelementptr inbounds float, float* %t166, i32 %t30
  %t167 = load float, float* %t31, align 4
  %t32 = fadd float %t165, %t167
  %t168 = load float*, float** %t154, align 4
  %t26 = load i32, i32* %t157, align 4
  %t27 = getelementptr inbounds float, float* %t168, i32 %t26
  store float %t32, float* %t27, align 4
  %t169 = load float*, float** %t149, align 4
  %t35 = load i32, i32* %t157, align 4
  %t36 = getelementptr inbounds float, float* %t169, i32 %t35
  %t170 = load float, float* %t36, align 4
  %t171 = load float*, float** %t152, align 4
  %t37 = load i32, i32* %t157, align 4
  %t38 = getelementptr inbounds float, float* %t171, i32 %t37
  %t172 = load float, float* %t38, align 4
  %t39 = fadd float %t170, %t172
  %t173 = load float*, float** %t155, align 4
  %t33 = load i32, i32* %t157, align 4
  %t34 = getelementptr inbounds float, float* %t173, i32 %t33
  store float %t39, float* %t34, align 4
  %t174 = load float*, float** %t150, align 4
  %t42 = load i32, i32* %t157, align 4
  %t43 = getelementptr inbounds float, float* %t174, i32 %t42
  %t175 = load float, float* %t43, align 4
  %t176 = load float*, float** %t153, align 4
  %t44 = load i32, i32* %t157, align 4
  %t45 = getelementptr inbounds float, float* %t176, i32 %t44
  %t177 = load float, float* %t45, align 4
  %t46 = fadd float %t175, %t177
  %t178 = load float*, float** %t156, align 4
  %t40 = load i32, i32* %t157, align 4
  %t41 = getelementptr inbounds float, float* %t178, i32 %t40
  store float %t46, float* %t41, align 4
  %t48 = load i32, i32* %t157, align 4
  %t49 = add i32 %t48, 1
  store i32 %t49, i32* %t157, align 4
  br label %B158
B163:                               	; preds = %B158
  br label %B160
B160:                               	; preds = %B163
  ret i32 0
}
define i32 @main() {
B179:
  %t180 = alloca [3 x float], align 4
  %t181 = alloca [3 x float], align 4
  %t182 = alloca [3 x float], align 4
  %t183 = alloca [3 x float], align 4
  %t184 = alloca [3 x float], align 4
  %t185 = alloca [3 x float], align 4
  %t186 = alloca [6 x float], align 4
  %t187 = alloca [3 x float], align 4
  %t188 = alloca [3 x float], align 4
  %t189 = alloca i32, align 4
  %t196 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t189, align 4
  br label %B190
B190:                               	; preds = %B179, %B191
  %t64 = load i32, i32* %t189, align 4
  %t65 = load i32, i32* @M, align 4
  %t66 = icmp slt i32 %t64, %t65
  br i1 %t66, label %B191, label %B195
B191:                               	; preds = %B190
  %t69 = load i32, i32* %t189, align 4
  %t70 = sitofp i32 %t69 to float
  %t67 = load i32, i32* %t189, align 4
  %t68 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 %t67
  store float %t70, float* %t68, align 4
  %t73 = load i32, i32* %t189, align 4
  %t74 = sitofp i32 %t73 to float
  %t71 = load i32, i32* %t189, align 4
  %t72 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 %t71
  store float %t74, float* %t72, align 4
  %t77 = load i32, i32* %t189, align 4
  %t78 = sitofp i32 %t77 to float
  %t75 = load i32, i32* %t189, align 4
  %t76 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 %t75
  store float %t78, float* %t76, align 4
  %t81 = load i32, i32* %t189, align 4
  %t82 = sitofp i32 %t81 to float
  %t79 = load i32, i32* %t189, align 4
  %t80 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 %t79
  store float %t82, float* %t80, align 4
  %t85 = load i32, i32* %t189, align 4
  %t86 = sitofp i32 %t85 to float
  %t83 = load i32, i32* %t189, align 4
  %t84 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 %t83
  store float %t86, float* %t84, align 4
  %t89 = load i32, i32* %t189, align 4
  %t90 = sitofp i32 %t89 to float
  %t87 = load i32, i32* %t189, align 4
  %t88 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 %t87
  store float %t90, float* %t88, align 4
  %t92 = load i32, i32* %t189, align 4
  %t93 = add i32 %t92, 1
  store i32 %t93, i32* %t189, align 4
  br label %B190
B195:                               	; preds = %B190
  br label %B192
B192:                               	; preds = %B195
  %t95 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 0
  %t98 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 0
  %t99 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 0
  %t100 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 0
  %t101 = getelementptr inbounds [6 x float], [6 x float]* %t186, i32 0, i32 0
  %t102 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 0
  %t103 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 0
  %t104 = call i32 @add(float* %t95, float* %t96, float* %t97, float* %t98, float* %t99, float* %t100, float* %t101, float* %t102, float* %t103)
  store i32 %t104, i32* %t189, align 4
  br label %B197
B197:                               	; preds = %B192, %B198
  %t106 = load i32, i32* %t189, align 4
  %t107 = load i32, i32* @N, align 4
  %t108 = icmp slt i32 %t106, %t107
  br i1 %t108, label %B198, label %B202
B198:                               	; preds = %B197
  %t110 = load i32, i32* %t189, align 4
  %t111 = getelementptr inbounds [6 x float], [6 x float]* %t186, i32 0, i32 %t110
  %t203 = load float, float* %t111, align 4
  %t112 = fptosi float %t203 to i32
  store i32 %t112, i32* %t196, align 4
  %t113 = load i32, i32* %t196, align 4
  call void @putint(i32 %t113)
  %t115 = load i32, i32* %t189, align 4
  %t116 = add i32 %t115, 1
  store i32 %t116, i32* %t189, align 4
  br label %B197
B202:                               	; preds = %B197
  br label %B199
B199:                               	; preds = %B202
  store i32 10, i32* %t196, align 4
  %t118 = load i32, i32* %t196, align 4
  call void @putch(i32 %t118)
  store i32 0, i32* %t189, align 4
  br label %B204
B204:                               	; preds = %B199, %B205
  %t120 = load i32, i32* %t189, align 4
  %t121 = load i32, i32* @N, align 4
  %t122 = icmp slt i32 %t120, %t121
  br i1 %t122, label %B205, label %B209
B205:                               	; preds = %B204
  %t124 = load i32, i32* %t189, align 4
  %t125 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 %t124
  %t210 = load float, float* %t125, align 4
  %t126 = fptosi float %t210 to i32
  store i32 %t126, i32* %t196, align 4
  %t127 = load i32, i32* %t196, align 4
  call void @putint(i32 %t127)
  %t129 = load i32, i32* %t189, align 4
  %t130 = add i32 %t129, 1
  store i32 %t130, i32* %t189, align 4
  br label %B204
B209:                               	; preds = %B204
  br label %B206
B206:                               	; preds = %B209
  store i32 10, i32* %t196, align 4
  %t132 = load i32, i32* %t196, align 4
  call void @putch(i32 %t132)
  store i32 0, i32* %t189, align 4
  br label %B211
B211:                               	; preds = %B206, %B212
  %t134 = load i32, i32* %t189, align 4
  %t135 = load i32, i32* @N, align 4
  %t136 = icmp slt i32 %t134, %t135
  br i1 %t136, label %B212, label %B216
B212:                               	; preds = %B211
  %t138 = load i32, i32* %t189, align 4
  %t139 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 %t138
  %t217 = load float, float* %t139, align 4
  %t140 = fptosi float %t217 to i32
  store i32 %t140, i32* %t196, align 4
  %t141 = load i32, i32* %t196, align 4
  call void @putint(i32 %t141)
  %t143 = load i32, i32* %t189, align 4
  %t144 = add i32 %t143, 1
  store i32 %t144, i32* %t189, align 4
  br label %B211
B216:                               	; preds = %B211
  br label %B213
B213:                               	; preds = %B216
  store i32 10, i32* %t196, align 4
  %t146 = load i32, i32* %t196, align 4
  call void @putch(i32 %t146)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
