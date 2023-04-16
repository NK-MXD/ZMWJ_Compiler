@e = global float 0x4005BF0A80000000, align 4
define float @my_fabs(float %t1) {
B352:
  %t353 = alloca float, align 4
  store float %t1, float* %t353, align 4
  %t3 = load float, float* %t353, align 4
  %t5 = sitofp i32 0 to float
  %t4 = icmp sgt float %t3, %t5
  br i1 %t4, label %B354, label %B358
B354:                               	; preds = %B352
  %t6 = load float, float* %t353, align 4
  ret float %t6
B358:                               	; preds = %B352
  br label %B355
B355:                               	; preds = %B358
  %t7 = load float, float* %t353, align 4
  %t8 = fsub float 0.000000, %t7
  ret float %t8
}
define float @my_pow(float %t9, i32 %t11) {
B359:
  %t360 = alloca float, align 4
  %t361 = alloca i32, align 4
  %t367 = alloca float, align 4
  store float %t9, float* %t360, align 4
  store i32 %t11, i32* %t361, align 4
  %t13 = load i32, i32* %t361, align 4
  %t14 = icmp slt i32 %t13, 0
  br i1 %t14, label %B362, label %B366
B362:                               	; preds = %B359
  %t20 = sitofp i32 1 to float
  %t15 = load float, float* %t360, align 4
  %t16 = load i32, i32* %t361, align 4
  %t17 = sub i32 0, %t16
  %t18 = call float @my_pow(float %t15, i32 %t17)
  %t19 = fdiv float %t20, %t18
  ret float %t19
B366:                               	; preds = %B359
  br label %B363
B363:                               	; preds = %B366
  store float 1.000000, float* %t367, align 4
  br label %B368
B368:                               	; preds = %B363
  %t22 = load i32, i32* %t361, align 4
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %B369, label %B372
B369:                               	; preds = %B368, %B375
  %t24 = load i32, i32* %t361, align 4
  %t25 = srem i32 %t24, 2
  %t30 = icmp ne i32 %t25, 0
  br i1 %t30, label %B374, label %B377
B372:                               	; preds = %B368
  br label %B370
B374:                               	; preds = %B369
  %t27 = load float, float* %t367, align 4
  %t28 = load float, float* %t360, align 4
  %t29 = fmul float %t27, %t28
  store float %t29, float* %t367, align 4
  br label %B375
B377:                               	; preds = %B369
  br label %B375
B370:                               	; preds = %B372, %B382
  %t38 = load float, float* %t367, align 4
  ret float %t38
B375:                               	; preds = %B374, %B377
  %t32 = load float, float* %t360, align 4
  %t33 = load float, float* %t360, align 4
  %t34 = fmul float %t32, %t33
  store float %t34, float* %t360, align 4
  %t36 = load i32, i32* %t361, align 4
  %t37 = sdiv i32 %t36, 2
  store i32 %t37, i32* %t361, align 4
  %t379 = load i32, i32* %t361, align 4
  %t380 = icmp ne i32 %t379, 0
  br i1 %t380, label %B369, label %B382
B382:                               	; preds = %B375
  br label %B370
}
define float @my_sqrt(float %t39) {
B384:
  %t385 = alloca float, align 4
  %t391 = alloca float, align 4
  store float %t39, float* %t385, align 4
  %t41 = load float, float* %t385, align 4
  %t43 = sitofp i32 100 to float
  %t42 = icmp sgt float %t41, %t43
  br i1 %t42, label %B386, label %B390
B386:                               	; preds = %B384
  %t44 = load float, float* %t385, align 4
  %t46 = sitofp i32 100 to float
  %t45 = fdiv float %t44, %t46
  %t47 = call float @my_sqrt(float %t45)
  %t48 = fmul float 10.000000, %t47
  ret float %t48
B390:                               	; preds = %B384
  br label %B387
B387:                               	; preds = %B390
  %t49 = load float, float* %t385, align 4
  %t51 = sitofp i32 8 to float
  %t50 = fdiv float %t49, %t51
  %t52 = fadd float %t50, 0.500000
  %t55 = sitofp i32 2 to float
  %t53 = load float, float* %t385, align 4
  %t54 = fmul float %t55, %t53
  %t58 = sitofp i32 4 to float
  %t56 = load float, float* %t385, align 4
  %t57 = fadd float %t58, %t56
  %t59 = fdiv float %t54, %t57
  %t60 = fadd float %t52, %t59
  store float %t60, float* %t391, align 4
  br label %B393
B393:                               	; preds = %B387
  %t506 = add i32 10, 0
  %t64 = icmp ne i32 10, 0
  br i1 %t64, label %B394, label %B397
B394:                               	; preds = %B393, %B519
  %t66 = load float, float* %t391, align 4
  %t67 = load float, float* %t385, align 4
  %t68 = load float, float* %t391, align 4
  %t69 = fdiv float %t67, %t68
  %t70 = fadd float %t66, %t69
  %t72 = sitofp i32 2 to float
  %t71 = fdiv float %t70, %t72
  store float %t71, float* %t391, align 4
  %t75 = sub i32 %t506, 1
  %t400 = icmp ne i32 %t75, 0
  br i1 %t400, label %B519, label %B402
B397:                               	; preds = %B393
  %t507 = add i32 10, 0
  br label %B395
B402:                               	; preds = %B394
  %t507 = add i32 %t75, 0
  br label %B395
B519:                               	; preds = %B394
  %t506 = add i32 %t75, 0
  br label %B394
B395:                               	; preds = %B397, %B402
  %t76 = load float, float* %t391, align 4
  ret float %t76
}
define float @F1(float %t77) {
B404:
  %t405 = alloca float, align 4
  store float %t77, float* %t405, align 4
  %t81 = sitofp i32 1 to float
  %t79 = load float, float* %t405, align 4
  %t80 = fdiv float %t81, %t79
  ret float %t80
}
define float @F2(float %t82) {
B406:
  %t407 = alloca float, align 4
  store float %t82, float* %t407, align 4
  %t91 = sitofp i32 1 to float
  %t84 = load float, float* %t407, align 4
  %t85 = load float, float* %t407, align 4
  %t86 = fmul float %t84, %t85
  %t87 = fsub float %t91, %t86
  %t89 = call float @my_sqrt(float %t87)
  %t90 = fdiv float %t91, %t89
  ret float %t90
}
define float @simpson(float %t92, float %t94, i32 %t96) {
B408:
  %t409 = alloca float, align 4
  %t410 = alloca float, align 4
  %t411 = alloca i32, align 4
  %t412 = alloca float, align 4
  store float %t92, float* %t409, align 4
  store float %t94, float* %t410, align 4
  store i32 %t96, i32* %t411, align 4
  %t98 = load float, float* %t409, align 4
  %t99 = load float, float* %t410, align 4
  %t100 = load float, float* %t409, align 4
  %t101 = fsub float %t99, %t100
  %t103 = sitofp i32 2 to float
  %t102 = fdiv float %t101, %t103
  %t104 = fadd float %t98, %t102
  store float %t104, float* %t412, align 4
  %t106 = load i32, i32* %t411, align 4
  %t107 = icmp eq i32 %t106, 1
  br i1 %t107, label %B413, label %B417
B413:                               	; preds = %B408
  %t108 = load float, float* %t409, align 4
  %t109 = call float @F1(float %t108)
  %t113 = sitofp i32 4 to float
  %t110 = load float, float* %t412, align 4
  %t111 = call float @F1(float %t110)
  %t112 = fmul float %t113, %t111
  %t114 = fadd float %t109, %t112
  %t115 = load float, float* %t410, align 4
  %t116 = call float @F1(float %t115)
  %t117 = fadd float %t114, %t116
  %t118 = load float, float* %t410, align 4
  %t119 = load float, float* %t409, align 4
  %t120 = fsub float %t118, %t119
  %t121 = fmul float %t117, %t120
  %t123 = sitofp i32 6 to float
  %t122 = fdiv float %t121, %t123
  ret float %t122
B417:                               	; preds = %B408
  br label %B414
B414:                               	; preds = %B417
  %t124 = load i32, i32* %t411, align 4
  %t125 = icmp eq i32 %t124, 2
  br i1 %t125, label %B418, label %B422
B418:                               	; preds = %B414
  %t126 = load float, float* %t409, align 4
  %t127 = call float @F2(float %t126)
  %t131 = sitofp i32 4 to float
  %t128 = load float, float* %t412, align 4
  %t129 = call float @F2(float %t128)
  %t130 = fmul float %t131, %t129
  %t132 = fadd float %t127, %t130
  %t133 = load float, float* %t410, align 4
  %t134 = call float @F2(float %t133)
  %t135 = fadd float %t132, %t134
  %t136 = load float, float* %t410, align 4
  %t137 = load float, float* %t409, align 4
  %t138 = fsub float %t136, %t137
  %t139 = fmul float %t135, %t138
  %t141 = sitofp i32 6 to float
  %t140 = fdiv float %t139, %t141
  ret float %t140
B422:                               	; preds = %B414
  br label %B419
B419:                               	; preds = %B422
  %t142 = sitofp i32 0 to float
  ret float %t142
}
define float @asr5(float %t143, float %t145, float %t147, float %t149, i32 %t151) {
B423:
  %t424 = alloca float, align 4
  %t425 = alloca float, align 4
  %t426 = alloca float, align 4
  %t427 = alloca float, align 4
  %t428 = alloca i32, align 4
  %t429 = alloca float, align 4
  %t430 = alloca float, align 4
  %t431 = alloca float, align 4
  store float %t143, float* %t424, align 4
  store float %t145, float* %t425, align 4
  store float %t147, float* %t426, align 4
  store float %t149, float* %t427, align 4
  store i32 %t151, i32* %t428, align 4
  %t153 = load float, float* %t424, align 4
  %t154 = load float, float* %t425, align 4
  %t155 = load float, float* %t424, align 4
  %t156 = fsub float %t154, %t155
  %t158 = sitofp i32 2 to float
  %t157 = fdiv float %t156, %t158
  %t159 = fadd float %t153, %t157
  store float %t159, float* %t429, align 4
  %t161 = load float, float* %t424, align 4
  %t162 = load float, float* %t429, align 4
  %t163 = load i32, i32* %t428, align 4
  %t164 = call float @simpson(float %t161, float %t162, i32 %t163)
  store float %t164, float* %t430, align 4
  %t166 = load float, float* %t429, align 4
  %t167 = load float, float* %t425, align 4
  %t168 = load i32, i32* %t428, align 4
  %t169 = call float @simpson(float %t166, float %t167, i32 %t168)
  store float %t169, float* %t431, align 4
  %t171 = load float, float* %t430, align 4
  %t172 = load float, float* %t431, align 4
  %t173 = fadd float %t171, %t172
  %t174 = load float, float* %t427, align 4
  %t175 = fsub float %t173, %t174
  %t176 = call float @my_fabs(float %t175)
  %t179 = sitofp i32 15 to float
  %t177 = load float, float* %t426, align 4
  %t178 = fmul float %t179, %t177
  %t180 = icmp sle float %t176, %t178
  br i1 %t180, label %B432, label %B436
B432:                               	; preds = %B423
  %t181 = load float, float* %t430, align 4
  %t182 = load float, float* %t431, align 4
  %t183 = fadd float %t181, %t182
  %t184 = load float, float* %t430, align 4
  %t185 = load float, float* %t431, align 4
  %t187 = load float, float* %t427, align 4
  %t188 = fsub float %t183, %t187
  %t189 = fdiv float %t188, 15.000000
  %t190 = fadd float %t183, %t189
  ret float %t190
B436:                               	; preds = %B423
  br label %B433
B433:                               	; preds = %B436
  %t191 = load float, float* %t424, align 4
  %t192 = load float, float* %t429, align 4
  %t193 = load float, float* %t426, align 4
  %t195 = sitofp i32 2 to float
  %t194 = fdiv float %t193, %t195
  %t196 = load float, float* %t430, align 4
  %t197 = load i32, i32* %t428, align 4
  %t198 = call float @asr5(float %t191, float %t192, float %t194, float %t196, i32 %t197)
  %t199 = load float, float* %t429, align 4
  %t200 = load float, float* %t425, align 4
  %t201 = load float, float* %t426, align 4
  %t204 = load float, float* %t431, align 4
  %t205 = load i32, i32* %t428, align 4
  %t206 = call float @asr5(float %t199, float %t200, float %t194, float %t204, i32 %t205)
  %t207 = fadd float %t198, %t206
  ret float %t207
}
define float @asr4(float %t208, float %t210, float %t212, i32 %t214) {
B437:
  %t438 = alloca float, align 4
  %t439 = alloca float, align 4
  %t440 = alloca float, align 4
  %t441 = alloca i32, align 4
  store float %t208, float* %t438, align 4
  store float %t210, float* %t439, align 4
  store float %t212, float* %t440, align 4
  store i32 %t214, i32* %t441, align 4
  %t216 = load float, float* %t438, align 4
  %t217 = load float, float* %t439, align 4
  %t218 = load float, float* %t440, align 4
  %t219 = load float, float* %t438, align 4
  %t220 = load float, float* %t439, align 4
  %t221 = load i32, i32* %t441, align 4
  %t222 = call float @simpson(float %t219, float %t220, i32 %t221)
  %t223 = load i32, i32* %t441, align 4
  %t224 = call float @asr5(float %t216, float %t217, float %t218, float %t222, i32 %t223)
  ret float %t224
}
define float @eee(float %t225) {
B442:
  %t443 = alloca float, align 4
  %t449 = alloca float, align 4
  store float %t225, float* %t443, align 4
  %t227 = load float, float* %t443, align 4
  %t228 = icmp sgt float %t227, 0.001000
  br i1 %t228, label %B444, label %B448
B444:                               	; preds = %B442
  %t229 = load float, float* %t443, align 4
  %t231 = sitofp i32 2 to float
  %t230 = fdiv float %t229, %t231
  %t232 = call float @eee(float %t230)
  store float %t232, float* %t449, align 4
  %t234 = load float, float* %t449, align 4
  %t235 = load float, float* %t449, align 4
  %t236 = fmul float %t234, %t235
  ret float %t236
B448:                               	; preds = %B442
  br label %B445
B445:                               	; preds = %B448
  %t239 = sitofp i32 1 to float
  %t237 = load float, float* %t443, align 4
  %t238 = fadd float %t239, %t237
  %t240 = load float, float* %t443, align 4
  %t241 = load float, float* %t443, align 4
  %t242 = fmul float %t240, %t241
  %t244 = sitofp i32 2 to float
  %t243 = fdiv float %t242, %t244
  %t245 = fadd float %t238, %t243
  %t246 = load float, float* %t443, align 4
  %t247 = call float @my_pow(float %t246, i32 3)
  %t249 = sitofp i32 6 to float
  %t248 = fdiv float %t247, %t249
  %t250 = fadd float %t245, %t248
  %t251 = load float, float* %t443, align 4
  %t252 = call float @my_pow(float %t251, i32 4)
  %t254 = sitofp i32 24 to float
  %t253 = fdiv float %t252, %t254
  %t255 = fadd float %t250, %t253
  %t256 = load float, float* %t443, align 4
  %t257 = call float @my_pow(float %t256, i32 5)
  %t259 = sitofp i32 120 to float
  %t258 = fdiv float %t257, %t259
  %t260 = fadd float %t255, %t258
  ret float %t260
}
define float @my_exp(float %t261) {
B450:
  %t451 = alloca float, align 4
  %t458 = alloca float, align 4
  %t459 = alloca float, align 4
  store float %t261, float* %t451, align 4
  %t263 = load float, float* %t451, align 4
  %t265 = sitofp i32 0 to float
  %t264 = icmp slt float %t263, %t265
  br i1 %t264, label %B452, label %B456
B452:                               	; preds = %B450
  %t270 = sitofp i32 1 to float
  %t266 = load float, float* %t451, align 4
  %t267 = fsub float 0.000000, %t266
  %t268 = call float @my_exp(float %t267)
  %t269 = fdiv float %t270, %t268
  ret float %t269
B456:                               	; preds = %B450
  br label %B453
B453:                               	; preds = %B456
  %t271 = load float, float* %t451, align 4
  %t273 = fptosi float %t271 to i32
  %t275 = load float, float* %t451, align 4
  %t278 = sitofp i32 %t273 to float
  %t277 = fsub float %t275, %t278
  store float %t277, float* %t451, align 4
  %t279 = load float, float* @e, align 4
  %t281 = call float @my_pow(float %t279, i32 %t273)
  store float %t281, float* %t458, align 4
  %t283 = load float, float* %t451, align 4
  %t284 = call float @eee(float %t283)
  store float %t284, float* %t459, align 4
  %t286 = load float, float* %t458, align 4
  %t287 = load float, float* %t459, align 4
  %t288 = fmul float %t286, %t287
  ret float %t288
}
define float @my_ln(float %t289) {
B460:
  %t461 = alloca float, align 4
  store float %t289, float* %t461, align 4
  %t293 = sitofp i32 1 to float
  %t291 = load float, float* %t461, align 4
  %t292 = call float @asr4(float %t293, float %t291, float 0.000000, i32 1)
  ret float %t292
}
define float @my_log(float %t294, float %t296) {
B462:
  %t463 = alloca float, align 4
  %t464 = alloca float, align 4
  store float %t294, float* %t463, align 4
  store float %t296, float* %t464, align 4
  %t298 = load float, float* %t464, align 4
  %t299 = call float @my_ln(float %t298)
  %t300 = load float, float* %t463, align 4
  %t301 = call float @my_ln(float %t300)
  %t302 = fdiv float %t299, %t301
  ret float %t302
}
define float @my_powf(float %t303, float %t305) {
B465:
  %t466 = alloca float, align 4
  %t467 = alloca float, align 4
  store float %t303, float* %t466, align 4
  store float %t305, float* %t467, align 4
  %t307 = load float, float* %t467, align 4
  %t308 = load float, float* %t466, align 4
  %t309 = call float @my_ln(float %t308)
  %t310 = fmul float %t307, %t309
  %t311 = call float @my_exp(float %t310)
  ret float %t311
}
define i32 @main() {
B468:
  %t476 = alloca float, align 4
  %t477 = alloca float, align 4
  %t312 = call i32 @getint()
  br label %B470
B470:                               	; preds = %B468
  %t513 = add i32 %t312, 0
  %t315 = icmp ne i32 %t312, 0
  br i1 %t315, label %B471, label %B474
B471:                               	; preds = %B470, %B496
  %t316 = call float @getfloat()
  store float %t316, float* %t476, align 4
  %t318 = call float @getfloat()
  store float %t318, float* %t477, align 4
  %t320 = load float, float* %t476, align 4
  %t321 = call float @my_fabs(float %t320)
  call void @putfloat(float %t321)
  call void @putch(i32 32)
  %t322 = load float, float* %t476, align 4
  %t323 = call float @my_pow(float %t322, i32 2)
  call void @putfloat(float %t323)
  call void @putch(i32 32)
  %t324 = load float, float* %t476, align 4
  %t325 = call float @my_sqrt(float %t324)
  call void @putfloat(float %t325)
  call void @putch(i32 32)
  %t326 = load float, float* %t476, align 4
  %t327 = call float @my_exp(float %t326)
  call void @putfloat(float %t327)
  call void @putch(i32 32)
  %t328 = load float, float* %t476, align 4
  %t330 = sitofp i32 0 to float
  %t329 = icmp sgt float %t328, %t330
  br i1 %t329, label %B478, label %B483
B474:                               	; preds = %B470
  %t514 = add i32 %t312, 0
  br label %B472
B478:                               	; preds = %B471
  %t331 = load float, float* %t476, align 4
  %t332 = call float @my_ln(float %t331)
  call void @putfloat(float %t332)
  br label %B480
B483:                               	; preds = %B471
  br label %B479
B472:                               	; preds = %B474, %B503
  ret i32 0
B480:                               	; preds = %B478, %B479
  call void @putch(i32 32)
  %t333 = load float, float* %t476, align 4
  %t335 = sitofp i32 0 to float
  %t334 = icmp sgt float %t333, %t335
  br i1 %t334, label %B487, label %B490
B479:                               	; preds = %B483
  call void @putch(i32 45)
  br label %B480
B487:                               	; preds = %B480
  %t336 = load float, float* %t477, align 4
  %t338 = sitofp i32 0 to float
  %t337 = icmp sgt float %t336, %t338
  br i1 %t337, label %B484, label %B493
B490:                               	; preds = %B480
  br label %B485
B484:                               	; preds = %B487
  %t340 = load float, float* %t476, align 4
  %t341 = load float, float* %t477, align 4
  %t342 = call float @my_log(float %t340, float %t341)
  call void @putfloat(float %t342)
  br label %B486
B493:                               	; preds = %B487
  br label %B485
B485:                               	; preds = %B490, %B493
  call void @putch(i32 45)
  br label %B486
B486:                               	; preds = %B484, %B485
  call void @putch(i32 32)
  %t343 = load float, float* %t476, align 4
  %t345 = sitofp i32 0 to float
  %t344 = icmp sgt float %t343, %t345
  br i1 %t344, label %B494, label %B499
B494:                               	; preds = %B486
  %t346 = load float, float* %t476, align 4
  %t347 = load float, float* %t477, align 4
  %t348 = call float @my_powf(float %t346, float %t347)
  call void @putfloat(float %t348)
  br label %B496
B499:                               	; preds = %B486
  br label %B495
B496:                               	; preds = %B494, %B495
  call void @putch(i32 10)
  %t351 = sub i32 %t513, 1
  %t513 = add i32 %t351, 0
  %t501 = icmp ne i32 %t351, 0
  br i1 %t501, label %B471, label %B503
B495:                               	; preds = %B499
  call void @putch(i32 45)
  br label %B496
B503:                               	; preds = %B496
  %t514 = add i32 %t351, 0
  br label %B472
}
declare i32 @getint()
declare float @getfloat()
declare void @putfloat(float)
declare void @putch(i32)
