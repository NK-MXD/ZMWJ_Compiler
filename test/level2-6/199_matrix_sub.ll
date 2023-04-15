@N = global i32 0, align 4
@M = global i32 0, align 4
@L = global i32 0, align 4
define i32 @sub(float* %t3, float* %t5, float* %t7, float* %t9, float* %t11, float* %t13, float* %t15, float* %t17, float* %t19) {
B142:
  %t143 = alloca float*, align 4
  %t144 = alloca float*, align 4
  %t145 = alloca float*, align 4
  %t146 = alloca float*, align 4
  %t147 = alloca float*, align 4
  %t148 = alloca float*, align 4
  %t149 = alloca float*, align 4
  %t150 = alloca float*, align 4
  %t151 = alloca float*, align 4
  %t152 = alloca i32, align 4
  store float* %t3, float** %t143, align 4
  store float* %t5, float** %t144, align 4
  store float* %t7, float** %t145, align 4
  store float* %t9, float** %t146, align 4
  store float* %t11, float** %t147, align 4
  store float* %t13, float** %t148, align 4
  store float* %t15, float** %t149, align 4
  store float* %t17, float** %t150, align 4
  store float* %t19, float** %t151, align 4
  store i32 0, i32* %t152, align 4
  br label %B153
B153:                               	; preds = %B142, %B154
  %t23 = load i32, i32* %t152, align 4
  %t24 = icmp slt i32 %t23, 3
  br i1 %t24, label %B154, label %B158
B154:                               	; preds = %B153
  %t159 = load float*, float** %t143, align 4
  %t27 = load i32, i32* %t152, align 4
  %t28 = getelementptr inbounds float, float* %t159, i32 %t27
  %t160 = load float, float* %t28, align 4
  %t161 = load float*, float** %t146, align 4
  %t29 = load i32, i32* %t152, align 4
  %t30 = getelementptr inbounds float, float* %t161, i32 %t29
  %t162 = load float, float* %t30, align 4
  %t31 = fsub float %t160, %t162
  %t163 = load float*, float** %t149, align 4
  %t25 = load i32, i32* %t152, align 4
  %t26 = getelementptr inbounds float, float* %t163, i32 %t25
  store float %t31, float* %t26, align 4
  %t164 = load float*, float** %t144, align 4
  %t34 = load i32, i32* %t152, align 4
  %t35 = getelementptr inbounds float, float* %t164, i32 %t34
  %t165 = load float, float* %t35, align 4
  %t166 = load float*, float** %t147, align 4
  %t36 = load i32, i32* %t152, align 4
  %t37 = getelementptr inbounds float, float* %t166, i32 %t36
  %t167 = load float, float* %t37, align 4
  %t38 = fsub float %t165, %t167
  %t168 = load float*, float** %t150, align 4
  %t32 = load i32, i32* %t152, align 4
  %t33 = getelementptr inbounds float, float* %t168, i32 %t32
  store float %t38, float* %t33, align 4
  %t169 = load float*, float** %t145, align 4
  %t41 = load i32, i32* %t152, align 4
  %t42 = getelementptr inbounds float, float* %t169, i32 %t41
  %t170 = load float, float* %t42, align 4
  %t171 = load float*, float** %t148, align 4
  %t43 = load i32, i32* %t152, align 4
  %t44 = getelementptr inbounds float, float* %t171, i32 %t43
  %t172 = load float, float* %t44, align 4
  %t45 = fsub float %t170, %t172
  %t173 = load float*, float** %t151, align 4
  %t39 = load i32, i32* %t152, align 4
  %t40 = getelementptr inbounds float, float* %t173, i32 %t39
  store float %t45, float* %t40, align 4
  %t47 = load i32, i32* %t152, align 4
  %t48 = add i32 %t47, 1
  store i32 %t48, i32* %t152, align 4
  br label %B153
B158:                               	; preds = %B153
  br label %B155
B155:                               	; preds = %B158
  ret i32 0
}
define i32 @main() {
B174:
  %t175 = alloca [3 x float], align 4
  %t176 = alloca [3 x float], align 4
  %t177 = alloca [3 x float], align 4
  %t178 = alloca [3 x float], align 4
  %t179 = alloca [3 x float], align 4
  %t180 = alloca [3 x float], align 4
  %t181 = alloca [6 x float], align 4
  %t182 = alloca [3 x float], align 4
  %t183 = alloca [3 x float], align 4
  %t184 = alloca i32, align 4
  %t191 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t184, align 4
  br label %B185
B185:                               	; preds = %B174, %B186
  %t63 = load i32, i32* %t184, align 4
  %t64 = icmp slt i32 %t63, 3
  br i1 %t64, label %B186, label %B190
B186:                               	; preds = %B185
  %t67 = load i32, i32* %t184, align 4
  %t68 = sitofp i32 %t67 to float
  %t65 = load i32, i32* %t184, align 4
  %t66 = getelementptr inbounds [3 x float], [3 x float]* %t175, i32 0, i32 %t65
  store float %t68, float* %t66, align 4
  %t71 = load i32, i32* %t184, align 4
  %t72 = sitofp i32 %t71 to float
  %t69 = load i32, i32* %t184, align 4
  %t70 = getelementptr inbounds [3 x float], [3 x float]* %t176, i32 0, i32 %t69
  store float %t72, float* %t70, align 4
  %t75 = load i32, i32* %t184, align 4
  %t76 = sitofp i32 %t75 to float
  %t73 = load i32, i32* %t184, align 4
  %t74 = getelementptr inbounds [3 x float], [3 x float]* %t177, i32 0, i32 %t73
  store float %t76, float* %t74, align 4
  %t79 = load i32, i32* %t184, align 4
  %t80 = sitofp i32 %t79 to float
  %t77 = load i32, i32* %t184, align 4
  %t78 = getelementptr inbounds [3 x float], [3 x float]* %t178, i32 0, i32 %t77
  store float %t80, float* %t78, align 4
  %t83 = load i32, i32* %t184, align 4
  %t84 = sitofp i32 %t83 to float
  %t81 = load i32, i32* %t184, align 4
  %t82 = getelementptr inbounds [3 x float], [3 x float]* %t179, i32 0, i32 %t81
  store float %t84, float* %t82, align 4
  %t87 = load i32, i32* %t184, align 4
  %t88 = sitofp i32 %t87 to float
  %t85 = load i32, i32* %t184, align 4
  %t86 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 %t85
  store float %t88, float* %t86, align 4
  %t90 = load i32, i32* %t184, align 4
  %t91 = add i32 %t90, 1
  store i32 %t91, i32* %t184, align 4
  br label %B185
B190:                               	; preds = %B185
  br label %B187
B187:                               	; preds = %B190
  %t93 = getelementptr inbounds [3 x float], [3 x float]* %t175, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x float], [3 x float]* %t176, i32 0, i32 0
  %t95 = getelementptr inbounds [3 x float], [3 x float]* %t177, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x float], [3 x float]* %t178, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x float], [3 x float]* %t179, i32 0, i32 0
  %t98 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 0
  %t99 = getelementptr inbounds [6 x float], [6 x float]* %t181, i32 0, i32 0
  %t100 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 0
  %t101 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 0
  %t102 = call i32 @sub(float* %t93, float* %t94, float* %t95, float* %t96, float* %t97, float* %t98, float* %t99, float* %t100, float* %t101)
  store i32 %t102, i32* %t184, align 4
  br label %B192
B192:                               	; preds = %B187, %B193
  %t104 = load i32, i32* %t184, align 4
  %t105 = icmp slt i32 %t104, 3
  br i1 %t105, label %B193, label %B197
B193:                               	; preds = %B192
  %t107 = load i32, i32* %t184, align 4
  %t108 = getelementptr inbounds [6 x float], [6 x float]* %t181, i32 0, i32 %t107
  %t198 = load float, float* %t108, align 4
  %t109 = fptosi float %t198 to i32
  store i32 %t109, i32* %t191, align 4
  %t110 = load i32, i32* %t191, align 4
  call void @putint(i32 %t110)
  %t112 = load i32, i32* %t184, align 4
  %t113 = add i32 %t112, 1
  store i32 %t113, i32* %t184, align 4
  br label %B192
B197:                               	; preds = %B192
  br label %B194
B194:                               	; preds = %B197
  store i32 10, i32* %t191, align 4
  store i32 0, i32* %t184, align 4
  %t116 = load i32, i32* %t191, align 4
  call void @putch(i32 %t116)
  br label %B199
B199:                               	; preds = %B194, %B200
  %t117 = load i32, i32* %t184, align 4
  %t118 = icmp slt i32 %t117, 3
  br i1 %t118, label %B200, label %B204
B200:                               	; preds = %B199
  %t120 = load i32, i32* %t184, align 4
  %t121 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 %t120
  %t205 = load float, float* %t121, align 4
  %t122 = fptosi float %t205 to i32
  store i32 %t122, i32* %t191, align 4
  %t123 = load i32, i32* %t191, align 4
  call void @putint(i32 %t123)
  %t125 = load i32, i32* %t184, align 4
  %t126 = add i32 %t125, 1
  store i32 %t126, i32* %t184, align 4
  br label %B199
B204:                               	; preds = %B199
  br label %B201
B201:                               	; preds = %B204
  store i32 10, i32* %t191, align 4
  store i32 0, i32* %t184, align 4
  %t129 = load i32, i32* %t191, align 4
  call void @putch(i32 %t129)
  br label %B206
B206:                               	; preds = %B201, %B207
  %t130 = load i32, i32* %t184, align 4
  %t131 = icmp slt i32 %t130, 3
  br i1 %t131, label %B207, label %B211
B207:                               	; preds = %B206
  %t133 = load i32, i32* %t184, align 4
  %t134 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 %t133
  %t212 = load float, float* %t134, align 4
  %t135 = fptosi float %t212 to i32
  store i32 %t135, i32* %t191, align 4
  %t136 = load i32, i32* %t191, align 4
  call void @putint(i32 %t136)
  %t138 = load i32, i32* %t184, align 4
  %t139 = add i32 %t138, 1
  store i32 %t139, i32* %t184, align 4
  br label %B206
B211:                               	; preds = %B206
  br label %B208
B208:                               	; preds = %B211
  store i32 10, i32* %t191, align 4
  %t141 = load i32, i32* %t191, align 4
  call void @putch(i32 %t141)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
