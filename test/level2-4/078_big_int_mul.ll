@len = global i32 20, align 4
define i32 @main() {
B129:
  %t135 = alloca [20 x i32], align 4
  %t156 = alloca [20 x i32], align 4
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
  %t12 = load i32, i32* @len, align 4
  %t182 = bitcast [40 x i32]* %t181 to i8*
  call void @llvm.memset.p0.i32(i8* %t182, i8 0, i32 160, i1 0)
  br label %B183
B183:                               	; preds = %B129
  %t303 = add i32 0, 0
  %t26 = icmp slt i32 0, %t10
  br i1 %t26, label %B184, label %B188
B184:                               	; preds = %B183, %B347
  %t30 = getelementptr inbounds [20 x i32], [20 x i32]* %t135, i32 0, i32 %t303
  %t189 = load i32, i32* %t30, align 4
  %t28 = getelementptr inbounds [25 x i32], [25 x i32]* %t179, i32 0, i32 %t303
  store i32 %t189, i32* %t28, align 4
  %t33 = add i32 %t303, 1
  %t192 = icmp slt i32 %t33, %t10
  br i1 %t192, label %B347, label %B195
B188:                               	; preds = %B183
  %t304 = add i32 0, 0
  br label %B185
B195:                               	; preds = %B184
  %t304 = add i32 %t33, 0
  br label %B185
B347:                               	; preds = %B184
  %t303 = add i32 %t33, 0
  br label %B184
B185:                               	; preds = %B188, %B195
  br label %B196
B196:                               	; preds = %B185
  %t297 = add i32 0, 0
  %t37 = icmp slt i32 0, %t12
  br i1 %t37, label %B197, label %B201
B197:                               	; preds = %B196, %B350
  %t41 = getelementptr inbounds [20 x i32], [20 x i32]* %t156, i32 0, i32 %t297
  %t202 = load i32, i32* %t41, align 4
  %t39 = getelementptr inbounds [25 x i32], [25 x i32]* %t180, i32 0, i32 %t297
  store i32 %t202, i32* %t39, align 4
  %t44 = add i32 %t297, 1
  %t205 = icmp slt i32 %t44, %t12
  br i1 %t205, label %B350, label %B208
B201:                               	; preds = %B196
  %t298 = add i32 0, 0
  br label %B198
B208:                               	; preds = %B197
  %t298 = add i32 %t44, 0
  br label %B198
B350:                               	; preds = %B197
  %t297 = add i32 %t44, 0
  br label %B197
B198:                               	; preds = %B201, %B208
  %t48 = add i32 %t10, %t12
  %t49 = sub i32 %t48, 1
  br label %B209
B209:                               	; preds = %B198
  %t291 = add i32 0, 0
  %t53 = icmp sle i32 0, %t49
  br i1 %t53, label %B210, label %B214
B210:                               	; preds = %B209, %B353
  %t55 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t291
  store i32 0, i32* %t55, align 4
  %t58 = add i32 %t291, 1
  %t217 = icmp sle i32 %t58, %t49
  br i1 %t217, label %B353, label %B220
B214:                               	; preds = %B209
  %t292 = add i32 0, 0
  br label %B211
B220:                               	; preds = %B210
  %t292 = add i32 %t58, 0
  br label %B211
B353:                               	; preds = %B210
  %t291 = add i32 %t58, 0
  br label %B210
B211:                               	; preds = %B214, %B220
  %t62 = sub i32 %t12, 1
  br label %B221
B221:                               	; preds = %B211
  %t64 = sub i32 0, 1
  %t338 = add i32 0, 0
  %t327 = add i32 %t49, 0
  %t319 = add i32 0, 0
  %t312 = add i32 0, 0
  %t285 = add i32 %t62, 0
  %t65 = icmp sgt i32 %t62, %t64
  br i1 %t65, label %B222, label %B226
B222:                               	; preds = %B221, %B230
  %t68 = getelementptr inbounds [25 x i32], [25 x i32]* %t180, i32 0, i32 %t285
  %t227 = load i32, i32* %t68, align 4
  %t71 = sub i32 %t10, 1
  br label %B228
B226:                               	; preds = %B221
  %t339 = add i32 0, 0
  %t328 = add i32 %t49, 0
  %t320 = add i32 0, 0
  %t313 = add i32 0, 0
  %t286 = add i32 %t62, 0
  br label %B223
B228:                               	; preds = %B222
  %t73 = sub i32 0, 1
  %t335 = add i32 %t338, 0
  %t324 = add i32 %t327, 0
  %t309 = add i32 %t71, 0
  %t74 = icmp sgt i32 %t71, %t73
  br i1 %t74, label %B229, label %B233
B223:                               	; preds = %B226, %B254
  %t114 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 0
  %t257 = load i32, i32* %t114, align 4
  %t115 = icmp ne i32 %t257, 0
  br i1 %t115, label %B255, label %B260
B229:                               	; preds = %B228, %B238
  %t77 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t324
  %t234 = load i32, i32* %t77, align 4
  %t80 = getelementptr inbounds [25 x i32], [25 x i32]* %t179, i32 0, i32 %t309
  %t235 = load i32, i32* %t80, align 4
  %t81 = mul i32 %t227, %t235
  %t82 = add i32 %t234, %t81
  %t84 = icmp sge i32 %t82, 10
  br i1 %t84, label %B236, label %B241
B233:                               	; preds = %B228
  %t336 = add i32 %t338, 0
  %t325 = add i32 %t327, 0
  %t310 = add i32 %t71, 0
  br label %B230
B255:                               	; preds = %B223
  %t116 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 0
  %t261 = load i32, i32* %t116, align 4
  call void @putint(i32 %t261)
  br label %B256
B260:                               	; preds = %B223
  br label %B256
B236:                               	; preds = %B229
  %t86 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t324
  store i32 %t82, i32* %t86, align 4
  %t92 = sub i32 %t324, 1
  %t93 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t92
  %t242 = load i32, i32* %t93, align 4
  %t95 = sdiv i32 %t82, 10
  %t96 = add i32 %t242, %t95
  store i32 %t96, i32* %t93, align 4
  br label %B238
B241:                               	; preds = %B229
  br label %B237
B230:                               	; preds = %B233, %B248
  %t109 = add i32 %t325, %t10
  %t110 = sub i32 %t109, 1
  %t113 = sub i32 %t285, 1
  %t250 = sub i32 0, 1
  %t338 = add i32 %t336, 0
  %t327 = add i32 %t110, 0
  %t319 = add i32 %t227, 0
  %t312 = add i32 %t310, 0
  %t285 = add i32 %t113, 0
  %t251 = icmp sgt i32 %t113, %t250
  br i1 %t251, label %B222, label %B254
B256:                               	; preds = %B255, %B260
  br label %B262
B238:                               	; preds = %B236, %B237
  %t102 = sub i32 %t309, 1
  %t105 = sub i32 %t324, 1
  %t244 = sub i32 0, 1
  %t335 = add i32 %t82, 0
  %t324 = add i32 %t105, 0
  %t309 = add i32 %t102, 0
  %t245 = icmp sgt i32 %t102, %t244
  br i1 %t245, label %B229, label %B248
B237:                               	; preds = %B241
  %t98 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t324
  store i32 %t82, i32* %t98, align 4
  br label %B238
B254:                               	; preds = %B230
  %t339 = add i32 %t336, 0
  %t328 = add i32 %t110, 0
  %t320 = add i32 %t227, 0
  %t313 = add i32 %t310, 0
  %t286 = add i32 %t113, 0
  br label %B223
B262:                               	; preds = %B256
  %t121 = add i32 %t10, %t12
  %t122 = sub i32 %t121, 1
  %t279 = add i32 1, 0
  %t123 = icmp sle i32 1, %t122
  br i1 %t123, label %B263, label %B267
B248:                               	; preds = %B238
  %t336 = add i32 %t82, 0
  %t325 = add i32 %t105, 0
  %t310 = add i32 %t102, 0
  br label %B230
B263:                               	; preds = %B262, %B372
  %t125 = getelementptr inbounds [40 x i32], [40 x i32]* %t181, i32 0, i32 %t279
  %t268 = load i32, i32* %t125, align 4
  call void @putint(i32 %t268)
  %t128 = add i32 %t279, 1
  %t272 = add i32 %t10, %t12
  %t273 = sub i32 %t272, 1
  %t274 = icmp sle i32 %t128, %t273
  br i1 %t274, label %B372, label %B277
B267:                               	; preds = %B262
  %t280 = add i32 1, 0
  br label %B264
B277:                               	; preds = %B263
  %t280 = add i32 %t128, 0
  br label %B264
B372:                               	; preds = %B263
  %t279 = add i32 %t128, 0
  br label %B263
B264:                               	; preds = %B267, %B277
  ret i32 0
}
declare void @putint(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
