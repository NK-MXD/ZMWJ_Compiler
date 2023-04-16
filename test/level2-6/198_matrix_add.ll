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
  store float* %t3, float** %t148, align 4
  store float* %t5, float** %t149, align 4
  store float* %t7, float** %t150, align 4
  store float* %t9, float** %t151, align 4
  store float* %t11, float** %t152, align 4
  store float* %t13, float** %t153, align 4
  store float* %t15, float** %t154, align 4
  store float* %t17, float** %t155, align 4
  store float* %t19, float** %t156, align 4
  br label %B158
B158:                               	; preds = %B147
  %t24 = load i32, i32* @M, align 4
  %t249 = add i32 0, 0
  %t25 = icmp slt i32 0, %t24
  br i1 %t25, label %B159, label %B163
B159:                               	; preds = %B158, %B297
  %t164 = load float*, float** %t148, align 4
  %t29 = getelementptr inbounds float, float* %t164, i32 %t249
  %t165 = load float, float* %t29, align 4
  %t166 = load float*, float** %t151, align 4
  %t31 = getelementptr inbounds float, float* %t166, i32 %t249
  %t167 = load float, float* %t31, align 4
  %t32 = fadd float %t165, %t167
  %t168 = load float*, float** %t154, align 4
  %t27 = getelementptr inbounds float, float* %t168, i32 %t249
  store float %t32, float* %t27, align 4
  %t169 = load float*, float** %t149, align 4
  %t36 = getelementptr inbounds float, float* %t169, i32 %t249
  %t170 = load float, float* %t36, align 4
  %t171 = load float*, float** %t152, align 4
  %t38 = getelementptr inbounds float, float* %t171, i32 %t249
  %t172 = load float, float* %t38, align 4
  %t39 = fadd float %t170, %t172
  %t173 = load float*, float** %t155, align 4
  %t34 = getelementptr inbounds float, float* %t173, i32 %t249
  store float %t39, float* %t34, align 4
  %t174 = load float*, float** %t150, align 4
  %t43 = getelementptr inbounds float, float* %t174, i32 %t249
  %t175 = load float, float* %t43, align 4
  %t176 = load float*, float** %t153, align 4
  %t45 = getelementptr inbounds float, float* %t176, i32 %t249
  %t177 = load float, float* %t45, align 4
  %t46 = fadd float %t175, %t177
  %t178 = load float*, float** %t156, align 4
  %t41 = getelementptr inbounds float, float* %t178, i32 %t249
  store float %t46, float* %t41, align 4
  %t49 = add i32 %t249, 1
  %t180 = load i32, i32* @M, align 4
  %t181 = icmp slt i32 %t49, %t180
  br i1 %t181, label %B297, label %B184
B163:                               	; preds = %B158
  %t250 = add i32 0, 0
  br label %B160
B184:                               	; preds = %B159
  %t250 = add i32 %t49, 0
  br label %B160
B297:                               	; preds = %B159
  %t249 = add i32 %t49, 0
  br label %B159
B160:                               	; preds = %B163, %B184
  ret i32 0
}
define i32 @main() {
B185:
  %t186 = alloca [3 x float], align 4
  %t187 = alloca [3 x float], align 4
  %t188 = alloca [3 x float], align 4
  %t189 = alloca [3 x float], align 4
  %t190 = alloca [3 x float], align 4
  %t191 = alloca [3 x float], align 4
  %t192 = alloca [6 x float], align 4
  %t193 = alloca [3 x float], align 4
  %t194 = alloca [3 x float], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B196
B196:                               	; preds = %B185
  %t65 = load i32, i32* @M, align 4
  %t274 = add i32 0, 0
  %t66 = icmp slt i32 0, %t65
  br i1 %t66, label %B197, label %B201
B197:                               	; preds = %B196, %B300
  %t70 = sitofp i32 %t274 to float
  %t68 = getelementptr inbounds [3 x float], [3 x float]* %t186, i32 0, i32 %t274
  store float %t70, float* %t68, align 4
  %t72 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 %t274
  store float %t70, float* %t72, align 4
  %t76 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 %t274
  store float %t70, float* %t76, align 4
  %t80 = getelementptr inbounds [3 x float], [3 x float]* %t189, i32 0, i32 %t274
  store float %t70, float* %t80, align 4
  %t84 = getelementptr inbounds [3 x float], [3 x float]* %t190, i32 0, i32 %t274
  store float %t70, float* %t84, align 4
  %t88 = getelementptr inbounds [3 x float], [3 x float]* %t191, i32 0, i32 %t274
  store float %t70, float* %t88, align 4
  %t93 = add i32 %t274, 1
  %t203 = load i32, i32* @M, align 4
  %t204 = icmp slt i32 %t93, %t203
  br i1 %t204, label %B300, label %B207
B201:                               	; preds = %B196
  %t273 = add i32 0, 0
  br label %B198
B207:                               	; preds = %B197
  %t273 = add i32 %t93, 0
  br label %B198
B300:                               	; preds = %B197
  %t274 = add i32 %t93, 0
  br label %B197
B198:                               	; preds = %B201, %B207
  %t95 = getelementptr inbounds [3 x float], [3 x float]* %t186, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 0
  %t98 = getelementptr inbounds [3 x float], [3 x float]* %t189, i32 0, i32 0
  %t99 = getelementptr inbounds [3 x float], [3 x float]* %t190, i32 0, i32 0
  %t100 = getelementptr inbounds [3 x float], [3 x float]* %t191, i32 0, i32 0
  %t101 = getelementptr inbounds [6 x float], [6 x float]* %t192, i32 0, i32 0
  %t102 = getelementptr inbounds [3 x float], [3 x float]* %t193, i32 0, i32 0
  %t103 = getelementptr inbounds [3 x float], [3 x float]* %t194, i32 0, i32 0
  %t104 = call i32 @add(float* %t95, float* %t96, float* %t97, float* %t98, float* %t99, float* %t100, float* %t101, float* %t102, float* %t103)
  br label %B209
B209:                               	; preds = %B198
  %t107 = load i32, i32* @N, align 4
  %t292 = add i32 0, 0
  %t267 = add i32 %t104, 0
  %t108 = icmp slt i32 %t104, %t107
  br i1 %t108, label %B210, label %B214
B210:                               	; preds = %B209, %B304
  %t111 = getelementptr inbounds [6 x float], [6 x float]* %t192, i32 0, i32 %t267
  %t215 = load float, float* %t111, align 4
  %t112 = fptosi float %t215 to i32
  call void @putint(i32 %t112)
  %t116 = add i32 %t267, 1
  %t217 = load i32, i32* @N, align 4
  %t218 = icmp slt i32 %t116, %t217
  br i1 %t218, label %B304, label %B221
B214:                               	; preds = %B209
  %t293 = add i32 0, 0
  %t268 = add i32 %t104, 0
  br label %B211
B221:                               	; preds = %B210
  %t293 = add i32 %t112, 0
  %t268 = add i32 %t116, 0
  br label %B211
B304:                               	; preds = %B210
  %t292 = add i32 %t112, 0
  %t267 = add i32 %t116, 0
  br label %B210
B211:                               	; preds = %B214, %B221
  call void @putch(i32 10)
  br label %B222
B222:                               	; preds = %B211
  %t121 = load i32, i32* @N, align 4
  %t286 = add i32 10, 0
  %t261 = add i32 0, 0
  %t122 = icmp slt i32 0, %t121
  br i1 %t122, label %B223, label %B227
B223:                               	; preds = %B222, %B309
  %t125 = getelementptr inbounds [3 x float], [3 x float]* %t193, i32 0, i32 %t261
  %t228 = load float, float* %t125, align 4
  %t126 = fptosi float %t228 to i32
  call void @putint(i32 %t126)
  %t130 = add i32 %t261, 1
  %t230 = load i32, i32* @N, align 4
  %t231 = icmp slt i32 %t130, %t230
  br i1 %t231, label %B309, label %B234
B227:                               	; preds = %B222
  %t287 = add i32 10, 0
  %t262 = add i32 0, 0
  br label %B224
B234:                               	; preds = %B223
  %t287 = add i32 %t126, 0
  %t262 = add i32 %t130, 0
  br label %B224
B309:                               	; preds = %B223
  %t286 = add i32 %t126, 0
  %t261 = add i32 %t130, 0
  br label %B223
B224:                               	; preds = %B227, %B234
  call void @putch(i32 10)
  br label %B235
B235:                               	; preds = %B224
  %t135 = load i32, i32* @N, align 4
  %t280 = add i32 10, 0
  %t255 = add i32 0, 0
  %t136 = icmp slt i32 0, %t135
  br i1 %t136, label %B236, label %B240
B236:                               	; preds = %B235, %B314
  %t139 = getelementptr inbounds [3 x float], [3 x float]* %t194, i32 0, i32 %t255
  %t241 = load float, float* %t139, align 4
  %t140 = fptosi float %t241 to i32
  call void @putint(i32 %t140)
  %t144 = add i32 %t255, 1
  %t243 = load i32, i32* @N, align 4
  %t244 = icmp slt i32 %t144, %t243
  br i1 %t244, label %B314, label %B247
B240:                               	; preds = %B235
  %t281 = add i32 10, 0
  %t256 = add i32 0, 0
  br label %B237
B247:                               	; preds = %B236
  %t281 = add i32 %t140, 0
  %t256 = add i32 %t144, 0
  br label %B237
B314:                               	; preds = %B236
  %t280 = add i32 %t140, 0
  %t255 = add i32 %t144, 0
  br label %B236
B237:                               	; preds = %B240, %B247
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
