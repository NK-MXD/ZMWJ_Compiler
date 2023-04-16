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
  store float* %t3, float** %t143, align 4
  store float* %t5, float** %t144, align 4
  store float* %t7, float** %t145, align 4
  store float* %t9, float** %t146, align 4
  store float* %t11, float** %t147, align 4
  store float* %t13, float** %t148, align 4
  store float* %t15, float** %t149, align 4
  store float* %t17, float** %t150, align 4
  store float* %t19, float** %t151, align 4
  br label %B153
B153:                               	; preds = %B142
  %t239 = add i32 0, 0
  %t24 = icmp slt i32 0, 3
  br i1 %t24, label %B154, label %B158
B154:                               	; preds = %B153, %B287
  %t159 = load float*, float** %t143, align 4
  %t28 = getelementptr inbounds float, float* %t159, i32 %t239
  %t160 = load float, float* %t28, align 4
  %t161 = load float*, float** %t146, align 4
  %t30 = getelementptr inbounds float, float* %t161, i32 %t239
  %t162 = load float, float* %t30, align 4
  %t31 = fsub float %t160, %t162
  %t163 = load float*, float** %t149, align 4
  %t26 = getelementptr inbounds float, float* %t163, i32 %t239
  store float %t31, float* %t26, align 4
  %t164 = load float*, float** %t144, align 4
  %t35 = getelementptr inbounds float, float* %t164, i32 %t239
  %t165 = load float, float* %t35, align 4
  %t166 = load float*, float** %t147, align 4
  %t37 = getelementptr inbounds float, float* %t166, i32 %t239
  %t167 = load float, float* %t37, align 4
  %t38 = fsub float %t165, %t167
  %t168 = load float*, float** %t150, align 4
  %t33 = getelementptr inbounds float, float* %t168, i32 %t239
  store float %t38, float* %t33, align 4
  %t169 = load float*, float** %t145, align 4
  %t42 = getelementptr inbounds float, float* %t169, i32 %t239
  %t170 = load float, float* %t42, align 4
  %t171 = load float*, float** %t148, align 4
  %t44 = getelementptr inbounds float, float* %t171, i32 %t239
  %t172 = load float, float* %t44, align 4
  %t45 = fsub float %t170, %t172
  %t173 = load float*, float** %t151, align 4
  %t40 = getelementptr inbounds float, float* %t173, i32 %t239
  store float %t45, float* %t40, align 4
  %t48 = add i32 %t239, 1
  %t175 = icmp slt i32 %t48, 3
  br i1 %t175, label %B287, label %B178
B158:                               	; preds = %B153
  %t240 = add i32 0, 0
  br label %B155
B178:                               	; preds = %B154
  %t240 = add i32 %t48, 0
  br label %B155
B287:                               	; preds = %B154
  %t239 = add i32 %t48, 0
  br label %B154
B155:                               	; preds = %B158, %B178
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
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B190
B190:                               	; preds = %B179
  %t264 = add i32 0, 0
  %t64 = icmp slt i32 0, 3
  br i1 %t64, label %B191, label %B195
B191:                               	; preds = %B190, %B290
  %t68 = sitofp i32 %t264 to float
  %t66 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 %t264
  store float %t68, float* %t66, align 4
  %t70 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 %t264
  store float %t68, float* %t70, align 4
  %t74 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 %t264
  store float %t68, float* %t74, align 4
  %t78 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 %t264
  store float %t68, float* %t78, align 4
  %t82 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 %t264
  store float %t68, float* %t82, align 4
  %t86 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 %t264
  store float %t68, float* %t86, align 4
  %t91 = add i32 %t264, 1
  %t197 = icmp slt i32 %t91, 3
  br i1 %t197, label %B290, label %B200
B195:                               	; preds = %B190
  %t263 = add i32 0, 0
  br label %B192
B200:                               	; preds = %B191
  %t263 = add i32 %t91, 0
  br label %B192
B290:                               	; preds = %B191
  %t264 = add i32 %t91, 0
  br label %B191
B192:                               	; preds = %B195, %B200
  %t93 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 0
  %t95 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x float], [3 x float]* %t183, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 0
  %t98 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 0
  %t99 = getelementptr inbounds [6 x float], [6 x float]* %t186, i32 0, i32 0
  %t100 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 0
  %t101 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 0
  %t102 = call i32 @sub(float* %t93, float* %t94, float* %t95, float* %t96, float* %t97, float* %t98, float* %t99, float* %t100, float* %t101)
  br label %B202
B202:                               	; preds = %B192
  %t282 = add i32 0, 0
  %t257 = add i32 %t102, 0
  %t105 = icmp slt i32 %t102, 3
  br i1 %t105, label %B203, label %B207
B203:                               	; preds = %B202, %B294
  %t108 = getelementptr inbounds [6 x float], [6 x float]* %t186, i32 0, i32 %t257
  %t208 = load float, float* %t108, align 4
  %t109 = fptosi float %t208 to i32
  call void @putint(i32 %t109)
  %t113 = add i32 %t257, 1
  %t210 = icmp slt i32 %t113, 3
  br i1 %t210, label %B294, label %B213
B207:                               	; preds = %B202
  %t283 = add i32 0, 0
  %t258 = add i32 %t102, 0
  br label %B204
B213:                               	; preds = %B203
  %t283 = add i32 %t109, 0
  %t258 = add i32 %t113, 0
  br label %B204
B294:                               	; preds = %B203
  %t282 = add i32 %t109, 0
  %t257 = add i32 %t113, 0
  br label %B203
B204:                               	; preds = %B207, %B213
  call void @putch(i32 10)
  br label %B214
B214:                               	; preds = %B204
  %t276 = add i32 10, 0
  %t251 = add i32 0, 0
  %t118 = icmp slt i32 0, 3
  br i1 %t118, label %B215, label %B219
B215:                               	; preds = %B214, %B299
  %t121 = getelementptr inbounds [3 x float], [3 x float]* %t187, i32 0, i32 %t251
  %t220 = load float, float* %t121, align 4
  %t122 = fptosi float %t220 to i32
  call void @putint(i32 %t122)
  %t126 = add i32 %t251, 1
  %t222 = icmp slt i32 %t126, 3
  br i1 %t222, label %B299, label %B225
B219:                               	; preds = %B214
  %t277 = add i32 10, 0
  %t252 = add i32 0, 0
  br label %B216
B225:                               	; preds = %B215
  %t277 = add i32 %t122, 0
  %t252 = add i32 %t126, 0
  br label %B216
B299:                               	; preds = %B215
  %t276 = add i32 %t122, 0
  %t251 = add i32 %t126, 0
  br label %B215
B216:                               	; preds = %B219, %B225
  call void @putch(i32 10)
  br label %B226
B226:                               	; preds = %B216
  %t270 = add i32 10, 0
  %t245 = add i32 0, 0
  %t131 = icmp slt i32 0, 3
  br i1 %t131, label %B227, label %B231
B227:                               	; preds = %B226, %B304
  %t134 = getelementptr inbounds [3 x float], [3 x float]* %t188, i32 0, i32 %t245
  %t232 = load float, float* %t134, align 4
  %t135 = fptosi float %t232 to i32
  call void @putint(i32 %t135)
  %t139 = add i32 %t245, 1
  %t234 = icmp slt i32 %t139, 3
  br i1 %t234, label %B304, label %B237
B231:                               	; preds = %B226
  %t271 = add i32 10, 0
  %t246 = add i32 0, 0
  br label %B228
B237:                               	; preds = %B227
  %t271 = add i32 %t135, 0
  %t246 = add i32 %t139, 0
  br label %B228
B304:                               	; preds = %B227
  %t270 = add i32 %t135, 0
  %t245 = add i32 %t139, 0
  br label %B227
B228:                               	; preds = %B231, %B237
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
