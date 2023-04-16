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
  store float* %t3, float** %t139, align 4
  store float* %t5, float** %t140, align 4
  store float* %t7, float** %t141, align 4
  store float* %t9, float** %t142, align 4
  store float* %t11, float** %t143, align 4
  store float* %t13, float** %t144, align 4
  store float* %t15, float** %t145, align 4
  store float* %t17, float** %t146, align 4
  store float* %t19, float** %t147, align 4
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
  %t28 = getelementptr inbounds float, float* %t152, i32 0
  %t156 = load float, float* %t28, align 4
  %t157 = load float*, float** %t145, align 4
  %t27 = getelementptr inbounds float, float* %t157, i32 1
  store float %t156, float* %t27, align 4
  %t30 = getelementptr inbounds float, float* %t149, i32 0
  %t159 = load float, float* %t30, align 4
  %t29 = getelementptr inbounds float, float* %t157, i32 2
  store float %t159, float* %t29, align 4
  %t161 = load float*, float** %t139, align 4
  %t32 = getelementptr inbounds float, float* %t161, i32 1
  %t162 = load float, float* %t32, align 4
  %t31 = getelementptr inbounds float, float* %t151, i32 0
  store float %t162, float* %t31, align 4
  %t34 = getelementptr inbounds float, float* %t161, i32 2
  %t165 = load float, float* %t34, align 4
  %t33 = getelementptr inbounds float, float* %t154, i32 0
  store float %t165, float* %t33, align 4
  %t36 = getelementptr inbounds float, float* %t152, i32 1
  %t168 = load float, float* %t36, align 4
  %t35 = getelementptr inbounds float, float* %t151, i32 1
  store float %t168, float* %t35, align 4
  %t38 = getelementptr inbounds float, float* %t149, i32 2
  %t171 = load float, float* %t38, align 4
  %t37 = getelementptr inbounds float, float* %t154, i32 2
  store float %t171, float* %t37, align 4
  %t40 = getelementptr inbounds float, float* %t161, i32 0
  %t174 = load float, float* %t40, align 4
  %t39 = getelementptr inbounds float, float* %t157, i32 0
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
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B187
B187:                               	; preds = %B176
  %t56 = load i32, i32* @M, align 4
  %t259 = add i32 0, 0
  %t57 = icmp slt i32 0, %t56
  br i1 %t57, label %B188, label %B192
B188:                               	; preds = %B187, %B283
  %t61 = sitofp i32 %t259 to float
  %t59 = getelementptr inbounds [3 x float], [3 x float]* %t177, i32 0, i32 %t259
  store float %t61, float* %t59, align 4
  %t63 = getelementptr inbounds [3 x float], [3 x float]* %t178, i32 0, i32 %t259
  store float %t61, float* %t63, align 4
  %t67 = getelementptr inbounds [3 x float], [3 x float]* %t179, i32 0, i32 %t259
  store float %t61, float* %t67, align 4
  %t71 = getelementptr inbounds [3 x float], [3 x float]* %t180, i32 0, i32 %t259
  store float %t61, float* %t71, align 4
  %t75 = getelementptr inbounds [3 x float], [3 x float]* %t181, i32 0, i32 %t259
  store float %t61, float* %t75, align 4
  %t79 = getelementptr inbounds [3 x float], [3 x float]* %t182, i32 0, i32 %t259
  store float %t61, float* %t79, align 4
  %t84 = add i32 %t259, 1
  %t194 = load i32, i32* @M, align 4
  %t195 = icmp slt i32 %t84, %t194
  br i1 %t195, label %B283, label %B198
B192:                               	; preds = %B187
  %t260 = add i32 0, 0
  br label %B189
B198:                               	; preds = %B188
  %t260 = add i32 %t84, 0
  br label %B189
B283:                               	; preds = %B188
  %t259 = add i32 %t84, 0
  br label %B188
B189:                               	; preds = %B192, %B198
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
  br label %B200
B200:                               	; preds = %B189
  %t98 = load i32, i32* @N, align 4
  %t278 = add i32 0, 0
  %t253 = add i32 %t95, 0
  %t99 = icmp slt i32 %t95, %t98
  br i1 %t99, label %B201, label %B205
B201:                               	; preds = %B200, %B287
  %t102 = getelementptr inbounds [6 x float], [6 x float]* %t183, i32 0, i32 %t253
  %t206 = load float, float* %t102, align 4
  %t103 = fptosi float %t206 to i32
  call void @putint(i32 %t103)
  %t107 = add i32 %t253, 1
  %t208 = load i32, i32* @N, align 4
  %t209 = icmp slt i32 %t107, %t208
  br i1 %t209, label %B287, label %B212
B205:                               	; preds = %B200
  %t279 = add i32 0, 0
  %t254 = add i32 %t95, 0
  br label %B202
B212:                               	; preds = %B201
  %t279 = add i32 %t103, 0
  %t254 = add i32 %t107, 0
  br label %B202
B287:                               	; preds = %B201
  %t278 = add i32 %t103, 0
  %t253 = add i32 %t107, 0
  br label %B201
B202:                               	; preds = %B205, %B212
  call void @putch(i32 10)
  br label %B213
B213:                               	; preds = %B202
  %t112 = load i32, i32* @N, align 4
  %t272 = add i32 10, 0
  %t247 = add i32 0, 0
  %t113 = icmp slt i32 0, %t112
  br i1 %t113, label %B214, label %B218
B214:                               	; preds = %B213, %B292
  %t116 = getelementptr inbounds [3 x float], [3 x float]* %t184, i32 0, i32 %t247
  %t219 = load float, float* %t116, align 4
  %t117 = fptosi float %t219 to i32
  call void @putint(i32 %t117)
  %t121 = add i32 %t247, 1
  %t221 = load i32, i32* @N, align 4
  %t222 = icmp slt i32 %t121, %t221
  br i1 %t222, label %B292, label %B225
B218:                               	; preds = %B213
  %t273 = add i32 10, 0
  %t248 = add i32 0, 0
  br label %B215
B225:                               	; preds = %B214
  %t273 = add i32 %t117, 0
  %t248 = add i32 %t121, 0
  br label %B215
B292:                               	; preds = %B214
  %t272 = add i32 %t117, 0
  %t247 = add i32 %t121, 0
  br label %B214
B215:                               	; preds = %B218, %B225
  call void @putch(i32 10)
  br label %B226
B226:                               	; preds = %B215
  %t126 = load i32, i32* @N, align 4
  %t266 = add i32 10, 0
  %t241 = add i32 0, 0
  %t127 = icmp slt i32 0, %t126
  br i1 %t127, label %B227, label %B231
B227:                               	; preds = %B226, %B297
  %t130 = getelementptr inbounds [3 x float], [3 x float]* %t185, i32 0, i32 %t241
  %t232 = load float, float* %t130, align 4
  %t131 = fptosi float %t232 to i32
  call void @putint(i32 %t131)
  %t135 = add i32 %t241, 1
  %t234 = load i32, i32* @N, align 4
  %t235 = icmp slt i32 %t135, %t234
  br i1 %t235, label %B297, label %B238
B231:                               	; preds = %B226
  %t267 = add i32 10, 0
  %t242 = add i32 0, 0
  br label %B228
B238:                               	; preds = %B227
  %t267 = add i32 %t131, 0
  %t242 = add i32 %t135, 0
  br label %B228
B297:                               	; preds = %B227
  %t266 = add i32 %t131, 0
  %t241 = add i32 %t135, 0
  br label %B227
B228:                               	; preds = %B231, %B238
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
