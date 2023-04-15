@W = global i32 192, align 4
@H = global i32 192, align 4
@N = global i32 24, align 4
@PI = global float 0x400921FB60000000, align 4
@TWO_PI = global float 0x401921FB60000000, align 4
@MAX_STEP = global i32 10, align 4
@MAX_DISTANCE = global float 0x4000000000000000, align 4
@EPSILON = global float 0x3EB0C6F7A0000000, align 4
@RAND_MAX = global i32 100000006, align 4
@seed = global i32 0, align 4
define i32 @rand() {
B302:
  %t12 = load i32, i32* @seed, align 4
  %t13 = mul i32 %t12, 19980130
  %t14 = add i32 %t13, 23333
  %t15 = srem i32 %t14, 100000007
  store i32 %t15, i32* @seed, align 4
  %t16 = load i32, i32* @seed, align 4
  %t17 = icmp slt i32 %t16, 0
  br i1 %t17, label %B303, label %B307
B303:                               	; preds = %B302
  %t19 = load i32, i32* @seed, align 4
  %t20 = add i32 %t19, 100000007
  store i32 %t20, i32* @seed, align 4
  br label %B304
B307:                               	; preds = %B302
  br label %B304
B304:                               	; preds = %B303, %B307
  %t21 = load i32, i32* @seed, align 4
  ret i32 %t21
}
define float @my_fabs(float %t22) {
B308:
  %t309 = alloca float, align 4
  store float %t22, float* %t309, align 4
  %t24 = load float, float* %t309, align 4
  %t26 = sitofp i32 0 to float
  %t25 = icmp sgt float %t24, %t26
  br i1 %t25, label %B310, label %B314
B310:                               	; preds = %B308
  %t27 = load float, float* %t309, align 4
  ret float %t27
B314:                               	; preds = %B308
  br label %B311
B311:                               	; preds = %B314
  %t28 = load float, float* %t309, align 4
  %t29 = fsub float 0.000000, %t28
  ret float %t29
}
define float @my_sqrt(float %t30) {
B315:
  %t316 = alloca float, align 4
  %t317 = alloca float, align 4
  %t318 = alloca i32, align 4
  store float %t30, float* %t316, align 4
  %t32 = load float, float* %t316, align 4
  %t34 = sitofp i32 8 to float
  %t33 = fdiv float %t32, %t34
  %t35 = fadd float %t33, 0.500000
  %t38 = sitofp i32 2 to float
  %t36 = load float, float* %t316, align 4
  %t37 = fmul float %t38, %t36
  %t41 = sitofp i32 4 to float
  %t39 = load float, float* %t316, align 4
  %t40 = fadd float %t41, %t39
  %t42 = fdiv float %t37, %t40
  %t43 = fadd float %t35, %t42
  store float %t43, float* %t317, align 4
  store i32 10, i32* %t318, align 4
  br label %B319
B319:                               	; preds = %B315, %B320
  %t46 = load i32, i32* %t318, align 4
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %B320, label %B323
B320:                               	; preds = %B319
  %t49 = load float, float* %t317, align 4
  %t50 = load float, float* %t316, align 4
  %t51 = load float, float* %t317, align 4
  %t52 = fdiv float %t50, %t51
  %t53 = fadd float %t49, %t52
  %t55 = sitofp i32 2 to float
  %t54 = fdiv float %t53, %t55
  store float %t54, float* %t317, align 4
  %t57 = load i32, i32* %t318, align 4
  %t58 = sub i32 %t57, 1
  store i32 %t58, i32* %t318, align 4
  br label %B319
B323:                               	; preds = %B319
  br label %B321
B321:                               	; preds = %B323
  %t59 = load float, float* %t317, align 4
  ret float %t59
}
define float @p(float %t60) {
B325:
  %t326 = alloca float, align 4
  store float %t60, float* %t326, align 4
  %t64 = sitofp i32 3 to float
  %t62 = load float, float* %t326, align 4
  %t63 = fmul float %t64, %t62
  %t67 = sitofp i32 4 to float
  %t65 = load float, float* %t326, align 4
  %t66 = fmul float %t67, %t65
  %t68 = load float, float* %t326, align 4
  %t69 = fmul float %t66, %t68
  %t70 = load float, float* %t326, align 4
  %t71 = fmul float %t69, %t70
  %t72 = fsub float %t63, %t71
  ret float %t72
}
define float @my_sin_impl(float %t73) {
B327:
  %t328 = alloca float, align 4
  store float %t73, float* %t328, align 4
  %t75 = load float, float* %t328, align 4
  %t76 = call float @my_fabs(float %t75)
  %t77 = load float, float* @EPSILON, align 4
  %t78 = icmp sle float %t76, %t77
  br i1 %t78, label %B329, label %B333
B329:                               	; preds = %B327
  %t79 = load float, float* %t328, align 4
  ret float %t79
B333:                               	; preds = %B327
  br label %B330
B330:                               	; preds = %B333
  %t80 = load float, float* %t328, align 4
  %t81 = fdiv float %t80, 3.000000
  %t82 = call float @my_sin_impl(float %t81)
  %t83 = call float @p(float %t82)
  ret float %t83
}
define float @my_sin(float %t84) {
B334:
  %t335 = alloca float, align 4
  %t345 = alloca i32, align 4
  store float %t84, float* %t335, align 4
  %t86 = load float, float* %t335, align 4
  %t87 = load float, float* @TWO_PI, align 4
  %t88 = icmp sgt float %t86, %t87
  br i1 %t88, label %B336, label %B341
B336:                               	; preds = %B334, %B338
  %t94 = load float, float* %t335, align 4
  %t95 = load float, float* @TWO_PI, align 4
  %t96 = fdiv float %t94, %t95
  %t98 = fptosi float %t96 to i32
  store i32 %t98, i32* %t345, align 4
  %t100 = load float, float* %t335, align 4
  %t101 = load i32, i32* %t345, align 4
  %t104 = sitofp i32 %t101 to float
  %t102 = load float, float* @TWO_PI, align 4
  %t103 = fmul float %t104, %t102
  %t105 = fsub float %t100, %t103
  store float %t105, float* %t335, align 4
  br label %B337
B341:                               	; preds = %B334
  br label %B338
B337:                               	; preds = %B336, %B344
  %t106 = load float, float* %t335, align 4
  %t107 = load float, float* @PI, align 4
  %t108 = icmp sgt float %t106, %t107
  br i1 %t108, label %B346, label %B350
B338:                               	; preds = %B341
  %t89 = load float, float* %t335, align 4
  %t90 = load float, float* @TWO_PI, align 4
  %t91 = fsub float 0.000000, %t90
  %t92 = icmp slt float %t89, %t91
  br i1 %t92, label %B336, label %B344
B346:                               	; preds = %B337
  %t110 = load float, float* %t335, align 4
  %t111 = load float, float* @TWO_PI, align 4
  %t112 = fsub float %t110, %t111
  store float %t112, float* %t335, align 4
  br label %B347
B350:                               	; preds = %B337
  br label %B347
B344:                               	; preds = %B338
  br label %B337
B347:                               	; preds = %B346, %B350
  %t113 = load float, float* %t335, align 4
  %t114 = load float, float* @PI, align 4
  %t115 = fsub float 0.000000, %t114
  %t116 = icmp slt float %t113, %t115
  br i1 %t116, label %B351, label %B355
B351:                               	; preds = %B347
  %t118 = load float, float* %t335, align 4
  %t119 = load float, float* @TWO_PI, align 4
  %t120 = fadd float %t118, %t119
  store float %t120, float* %t335, align 4
  br label %B352
B355:                               	; preds = %B347
  br label %B352
B352:                               	; preds = %B351, %B355
  %t121 = load float, float* %t335, align 4
  %t122 = call float @my_sin_impl(float %t121)
  ret float %t122
}
define float @my_cos(float %t123) {
B356:
  %t357 = alloca float, align 4
  store float %t123, float* %t357, align 4
  %t125 = load float, float* %t357, align 4
  %t126 = load float, float* @PI, align 4
  %t128 = sitofp i32 2 to float
  %t127 = fdiv float %t126, %t128
  %t129 = fadd float %t125, %t127
  %t130 = call float @my_sin(float %t129)
  ret float %t130
}
define float @circle_sdf(float %t131, float %t133, float %t135, float %t137, float %t139) {
B358:
  %t359 = alloca float, align 4
  %t360 = alloca float, align 4
  %t361 = alloca float, align 4
  %t362 = alloca float, align 4
  %t363 = alloca float, align 4
  %t364 = alloca float, align 4
  %t365 = alloca float, align 4
  store float %t131, float* %t359, align 4
  store float %t133, float* %t360, align 4
  store float %t135, float* %t361, align 4
  store float %t137, float* %t362, align 4
  store float %t139, float* %t363, align 4
  %t141 = load float, float* %t359, align 4
  %t142 = load float, float* %t361, align 4
  %t143 = fsub float %t141, %t142
  store float %t143, float* %t364, align 4
  %t145 = load float, float* %t360, align 4
  %t146 = load float, float* %t362, align 4
  %t147 = fsub float %t145, %t146
  store float %t147, float* %t365, align 4
  %t149 = load float, float* %t364, align 4
  %t150 = load float, float* %t364, align 4
  %t151 = fmul float %t149, %t150
  %t152 = load float, float* %t365, align 4
  %t153 = load float, float* %t365, align 4
  %t154 = fmul float %t152, %t153
  %t155 = fadd float %t151, %t154
  %t156 = call float @my_sqrt(float %t155)
  %t157 = load float, float* %t363, align 4
  %t158 = fsub float %t156, %t157
  ret float %t158
}
define void @scene(float %t159, float %t161, float* %t163) {
B366:
  %t367 = alloca float, align 4
  %t368 = alloca float, align 4
  %t369 = alloca float*, align 4
  %t370 = alloca float, align 4
  %t371 = alloca float, align 4
  store float %t159, float* %t367, align 4
  store float %t161, float* %t368, align 4
  store float* %t163, float** %t369, align 4
  %t165 = load float, float* %t367, align 4
  %t166 = load float, float* %t368, align 4
  %t167 = call float @circle_sdf(float %t165, float %t166, float 0.400000, float 0.400000, float 0.100000)
  store float %t167, float* %t370, align 4
  %t169 = load float, float* %t367, align 4
  %t170 = load float, float* %t368, align 4
  %t171 = call float @circle_sdf(float %t169, float %t170, float 0.600000, float 0.600000, float 0.050000)
  store float %t171, float* %t371, align 4
  %t173 = load float, float* %t370, align 4
  %t174 = load float, float* %t371, align 4
  %t175 = icmp slt float %t173, %t174
  br i1 %t175, label %B372, label %B377
B372:                               	; preds = %B366
  %t177 = load float, float* %t370, align 4
  %t378 = load float*, float** %t369, align 4
  %t176 = getelementptr inbounds float, float* %t378, i32 0
  store float %t177, float* %t176, align 4
  %t379 = load float*, float** %t369, align 4
  %t178 = getelementptr inbounds float, float* %t379, i32 1
  store float 3.000000, float* %t178, align 4
  br label %B374
B377:                               	; preds = %B366
  br label %B373
B374:                               	; preds = %B372, %B373
  ret void
B373:                               	; preds = %B377
  %t180 = load float, float* %t371, align 4
  %t380 = load float*, float** %t369, align 4
  %t179 = getelementptr inbounds float, float* %t380, i32 0
  store float %t180, float* %t179, align 4
  %t381 = load float*, float** %t369, align 4
  %t181 = getelementptr inbounds float, float* %t381, i32 1
  store float 0.000000, float* %t181, align 4
  br label %B374
}
define float @trace(float %t182, float %t184, float %t186, float %t188) {
B382:
  %t383 = alloca float, align 4
  %t384 = alloca float, align 4
  %t385 = alloca float, align 4
  %t386 = alloca float, align 4
  %t387 = alloca float, align 4
  %t388 = alloca i32, align 4
  %t399 = alloca [2 x float], align 4
  store float %t182, float* %t383, align 4
  store float %t184, float* %t384, align 4
  store float %t186, float* %t385, align 4
  store float %t188, float* %t386, align 4
  store float 0.000000, float* %t387, align 4
  store i32 0, i32* %t388, align 4
  br label %B389
B389:                               	; preds = %B382, %B401
  %t192 = load i32, i32* %t388, align 4
  %t193 = load i32, i32* @MAX_STEP, align 4
  %t194 = icmp slt i32 %t192, %t193
  br i1 %t194, label %B392, label %B395
B392:                               	; preds = %B389
  %t195 = load float, float* %t387, align 4
  %t196 = load float, float* @MAX_DISTANCE, align 4
  %t197 = icmp slt float %t195, %t196
  br i1 %t197, label %B390, label %B398
B395:                               	; preds = %B389
  br label %B391
B390:                               	; preds = %B392
  %t200 = load float, float* %t383, align 4
  %t201 = load float, float* %t385, align 4
  %t202 = load float, float* %t387, align 4
  %t203 = fmul float %t201, %t202
  %t204 = fadd float %t200, %t203
  %t205 = load float, float* %t384, align 4
  %t206 = load float, float* %t386, align 4
  %t207 = load float, float* %t387, align 4
  %t208 = fmul float %t206, %t207
  %t209 = fadd float %t205, %t208
  %t210 = getelementptr inbounds [2 x float], [2 x float]* %t399, i32 0, i32 0
  call void @scene(float %t204, float %t209, float* %t210)
  %t211 = getelementptr inbounds [2 x float], [2 x float]* %t399, i32 0, i32 0
  %t402 = load float, float* %t211, align 4
  %t212 = load float, float* @EPSILON, align 4
  %t213 = icmp slt float %t402, %t212
  br i1 %t213, label %B400, label %B405
B398:                               	; preds = %B392
  br label %B391
B391:                               	; preds = %B395, %B398
  ret float 0.000000
B400:                               	; preds = %B390
  %t214 = getelementptr inbounds [2 x float], [2 x float]* %t399, i32 0, i32 1
  %t406 = load float, float* %t214, align 4
  ret float %t406
B405:                               	; preds = %B390
  br label %B401
B401:                               	; preds = %B405
  %t216 = load float, float* %t387, align 4
  %t217 = getelementptr inbounds [2 x float], [2 x float]* %t399, i32 0, i32 0
  %t407 = load float, float* %t217, align 4
  %t218 = fadd float %t216, %t407
  store float %t218, float* %t387, align 4
  %t220 = load i32, i32* %t388, align 4
  %t221 = add i32 %t220, 1
  store i32 %t221, i32* %t388, align 4
  br label %B389
}
define float @sample(float %t222, float %t224) {
B408:
  %t409 = alloca float, align 4
  %t410 = alloca float, align 4
  %t411 = alloca float, align 4
  %t412 = alloca i32, align 4
  %t419 = alloca float, align 4
  %t420 = alloca float, align 4
  store float %t222, float* %t409, align 4
  store float %t224, float* %t410, align 4
  store float 0.000000, float* %t411, align 4
  store i32 0, i32* %t412, align 4
  br label %B413
B413:                               	; preds = %B408, %B414
  %t228 = load i32, i32* %t412, align 4
  %t229 = load i32, i32* @N, align 4
  %t230 = icmp slt i32 %t228, %t229
  br i1 %t230, label %B414, label %B418
B414:                               	; preds = %B413
  %t231 = call i32 @rand()
  %t233 = sitofp i32 %t231 to float
  store float %t233, float* %t419, align 4
  %t234 = load float, float* @TWO_PI, align 4
  %t235 = load i32, i32* %t412, align 4
  %t241 = sitofp i32 %t235 to float
  %t236 = load float, float* %t419, align 4
  %t237 = load i32, i32* @RAND_MAX, align 4
  %t239 = sitofp i32 %t237 to float
  %t238 = fdiv float %t236, %t239
  %t240 = fadd float %t241, %t238
  %t242 = fmul float %t234, %t240
  %t243 = load i32, i32* @N, align 4
  %t245 = sitofp i32 %t243 to float
  %t244 = fdiv float %t242, %t245
  store float %t244, float* %t420, align 4
  %t248 = load float, float* %t411, align 4
  %t249 = load float, float* %t409, align 4
  %t250 = load float, float* %t410, align 4
  %t251 = load float, float* %t420, align 4
  %t252 = call float @my_cos(float %t251)
  %t253 = load float, float* %t420, align 4
  %t254 = call float @my_sin(float %t253)
  %t255 = call float @trace(float %t249, float %t250, float %t252, float %t254)
  %t256 = fadd float %t248, %t255
  store float %t256, float* %t411, align 4
  %t258 = load i32, i32* %t412, align 4
  %t259 = add i32 %t258, 1
  store i32 %t259, i32* %t412, align 4
  br label %B413
B418:                               	; preds = %B413
  br label %B415
B415:                               	; preds = %B418
  %t260 = load float, float* %t411, align 4
  %t261 = load i32, i32* @N, align 4
  %t263 = sitofp i32 %t261 to float
  %t262 = fdiv float %t260, %t263
  ret float %t262
}
define void @write_pgm() {
B421:
  %t422 = alloca i32, align 4
  %t429 = alloca i32, align 4
  %t436 = alloca float, align 4
  %t437 = alloca float, align 4
  %t438 = alloca i32, align 4
  call void @putch(i32 80)
  call void @putch(i32 50)
  call void @putch(i32 10)
  %t264 = load i32, i32* @W, align 4
  call void @putint(i32 %t264)
  call void @putch(i32 32)
  %t265 = load i32, i32* @H, align 4
  call void @putint(i32 %t265)
  call void @putch(i32 32)
  call void @putint(i32 255)
  call void @putch(i32 10)
  store i32 0, i32* %t422, align 4
  br label %B423
B423:                               	; preds = %B421, %B432
  %t267 = load i32, i32* %t422, align 4
  %t268 = load i32, i32* @H, align 4
  %t269 = icmp slt i32 %t267, %t268
  br i1 %t269, label %B424, label %B428
B424:                               	; preds = %B423
  store i32 0, i32* %t429, align 4
  br label %B430
B428:                               	; preds = %B423
  br label %B425
B430:                               	; preds = %B424, %B440
  %t271 = load i32, i32* %t429, align 4
  %t272 = load i32, i32* @W, align 4
  %t273 = icmp slt i32 %t271, %t272
  br i1 %t273, label %B431, label %B435
B425:                               	; preds = %B428
  ret void
B431:                               	; preds = %B430
  %t274 = load i32, i32* %t429, align 4
  %t276 = sitofp i32 %t274 to float
  store float %t276, float* %t436, align 4
  %t277 = load i32, i32* %t422, align 4
  %t279 = sitofp i32 %t277 to float
  store float %t279, float* %t437, align 4
  %t280 = load float, float* %t436, align 4
  %t281 = load i32, i32* @W, align 4
  %t283 = sitofp i32 %t281 to float
  %t282 = fdiv float %t280, %t283
  %t284 = load float, float* %t437, align 4
  %t285 = load i32, i32* @H, align 4
  %t287 = sitofp i32 %t285 to float
  %t286 = fdiv float %t284, %t287
  %t288 = call float @sample(float %t282, float %t286)
  %t289 = fmul float %t288, 255.000000
  %t291 = fptosi float %t289 to i32
  store i32 %t291, i32* %t438, align 4
  %t292 = load i32, i32* %t438, align 4
  %t293 = icmp sgt i32 %t292, 255
  br i1 %t293, label %B439, label %B443
B435:                               	; preds = %B430
  br label %B432
B439:                               	; preds = %B431
  store i32 255, i32* %t438, align 4
  br label %B440
B443:                               	; preds = %B431
  br label %B440
B432:                               	; preds = %B435
  call void @putch(i32 10)
  %t300 = load i32, i32* %t422, align 4
  %t301 = add i32 %t300, 1
  store i32 %t301, i32* %t422, align 4
  br label %B423
B440:                               	; preds = %B439, %B443
  %t295 = load i32, i32* %t438, align 4
  call void @putint(i32 %t295)
  call void @putch(i32 32)
  %t297 = load i32, i32* %t429, align 4
  %t298 = add i32 %t297, 1
  store i32 %t298, i32* %t429, align 4
  br label %B430
}
define i32 @main() {
B444:
  call void @write_pgm()
  ret i32 0
}
declare void @putch(i32)
declare void @putint(i32)
