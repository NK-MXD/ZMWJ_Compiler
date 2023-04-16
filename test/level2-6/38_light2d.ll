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
  br label %B319
B319:                               	; preds = %B315
  %t481 = add i32 10, 0
  %t47 = icmp ne i32 10, 0
  br i1 %t47, label %B320, label %B323
B320:                               	; preds = %B319, %B530
  %t49 = load float, float* %t317, align 4
  %t50 = load float, float* %t316, align 4
  %t51 = load float, float* %t317, align 4
  %t52 = fdiv float %t50, %t51
  %t53 = fadd float %t49, %t52
  %t55 = sitofp i32 2 to float
  %t54 = fdiv float %t53, %t55
  store float %t54, float* %t317, align 4
  %t58 = sub i32 %t481, 1
  %t326 = icmp ne i32 %t58, 0
  br i1 %t326, label %B530, label %B328
B323:                               	; preds = %B319
  %t482 = add i32 10, 0
  br label %B321
B328:                               	; preds = %B320
  %t482 = add i32 %t58, 0
  br label %B321
B530:                               	; preds = %B320
  %t481 = add i32 %t58, 0
  br label %B320
B321:                               	; preds = %B323, %B328
  %t59 = load float, float* %t317, align 4
  ret float %t59
}
define float @p(float %t60) {
B330:
  %t331 = alloca float, align 4
  store float %t60, float* %t331, align 4
  %t64 = sitofp i32 3 to float
  %t62 = load float, float* %t331, align 4
  %t63 = fmul float %t64, %t62
  %t67 = sitofp i32 4 to float
  %t65 = load float, float* %t331, align 4
  %t66 = fmul float %t67, %t65
  %t68 = load float, float* %t331, align 4
  %t69 = fmul float %t66, %t68
  %t70 = load float, float* %t331, align 4
  %t71 = fmul float %t69, %t70
  %t72 = fsub float %t63, %t71
  ret float %t72
}
define float @my_sin_impl(float %t73) {
B332:
  %t333 = alloca float, align 4
  store float %t73, float* %t333, align 4
  %t75 = load float, float* %t333, align 4
  %t76 = call float @my_fabs(float %t75)
  %t77 = load float, float* @EPSILON, align 4
  %t78 = icmp sle float %t76, %t77
  br i1 %t78, label %B334, label %B338
B334:                               	; preds = %B332
  %t79 = load float, float* %t333, align 4
  ret float %t79
B338:                               	; preds = %B332
  br label %B335
B335:                               	; preds = %B338
  %t80 = load float, float* %t333, align 4
  %t81 = fdiv float %t80, 3.000000
  %t82 = call float @my_sin_impl(float %t81)
  %t83 = call float @p(float %t82)
  ret float %t83
}
define float @my_sin(float %t84) {
B339:
  %t340 = alloca float, align 4
  store float %t84, float* %t340, align 4
  %t86 = load float, float* %t340, align 4
  %t87 = load float, float* @TWO_PI, align 4
  %t88 = icmp sgt float %t86, %t87
  br i1 %t88, label %B341, label %B346
B341:                               	; preds = %B339, %B343
  %t94 = load float, float* %t340, align 4
  %t95 = load float, float* @TWO_PI, align 4
  %t96 = fdiv float %t94, %t95
  %t98 = fptosi float %t96 to i32
  %t100 = load float, float* %t340, align 4
  %t104 = sitofp i32 %t98 to float
  %t102 = load float, float* @TWO_PI, align 4
  %t103 = fmul float %t104, %t102
  %t105 = fsub float %t100, %t103
  store float %t105, float* %t340, align 4
  %t487 = add i32 %t98, 0
  br label %B342
B346:                               	; preds = %B339
  br label %B343
B342:                               	; preds = %B341, %B349
  %t106 = load float, float* %t340, align 4
  %t107 = load float, float* @PI, align 4
  %t108 = icmp sgt float %t106, %t107
  br i1 %t108, label %B351, label %B355
B343:                               	; preds = %B346
  %t89 = load float, float* %t340, align 4
  %t90 = load float, float* @TWO_PI, align 4
  %t91 = fsub float 0.000000, %t90
  %t92 = icmp slt float %t89, %t91
  br i1 %t92, label %B341, label %B349
B351:                               	; preds = %B342
  %t110 = load float, float* %t340, align 4
  %t111 = load float, float* @TWO_PI, align 4
  %t112 = fsub float %t110, %t111
  store float %t112, float* %t340, align 4
  br label %B352
B355:                               	; preds = %B342
  br label %B352
B349:                               	; preds = %B343
  %t487 = add i32 0, 0
  br label %B342
B352:                               	; preds = %B351, %B355
  %t113 = load float, float* %t340, align 4
  %t114 = load float, float* @PI, align 4
  %t115 = fsub float 0.000000, %t114
  %t116 = icmp slt float %t113, %t115
  br i1 %t116, label %B356, label %B360
B356:                               	; preds = %B352
  %t118 = load float, float* %t340, align 4
  %t119 = load float, float* @TWO_PI, align 4
  %t120 = fadd float %t118, %t119
  store float %t120, float* %t340, align 4
  br label %B357
B360:                               	; preds = %B352
  br label %B357
B357:                               	; preds = %B356, %B360
  %t121 = load float, float* %t340, align 4
  %t122 = call float @my_sin_impl(float %t121)
  ret float %t122
}
define float @my_cos(float %t123) {
B361:
  %t362 = alloca float, align 4
  store float %t123, float* %t362, align 4
  %t125 = load float, float* %t362, align 4
  %t126 = load float, float* @PI, align 4
  %t128 = sitofp i32 2 to float
  %t127 = fdiv float %t126, %t128
  %t129 = fadd float %t125, %t127
  %t130 = call float @my_sin(float %t129)
  ret float %t130
}
define float @circle_sdf(float %t131, float %t133, float %t135, float %t137, float %t139) {
B363:
  %t364 = alloca float, align 4
  %t365 = alloca float, align 4
  %t366 = alloca float, align 4
  %t367 = alloca float, align 4
  %t368 = alloca float, align 4
  %t369 = alloca float, align 4
  %t370 = alloca float, align 4
  store float %t131, float* %t364, align 4
  store float %t133, float* %t365, align 4
  store float %t135, float* %t366, align 4
  store float %t137, float* %t367, align 4
  store float %t139, float* %t368, align 4
  %t141 = load float, float* %t364, align 4
  %t142 = load float, float* %t366, align 4
  %t143 = fsub float %t141, %t142
  store float %t143, float* %t369, align 4
  %t145 = load float, float* %t365, align 4
  %t146 = load float, float* %t367, align 4
  %t147 = fsub float %t145, %t146
  store float %t147, float* %t370, align 4
  %t149 = load float, float* %t369, align 4
  %t150 = load float, float* %t369, align 4
  %t151 = fmul float %t149, %t150
  %t152 = load float, float* %t370, align 4
  %t153 = load float, float* %t370, align 4
  %t154 = fmul float %t152, %t153
  %t155 = fadd float %t151, %t154
  %t156 = call float @my_sqrt(float %t155)
  %t157 = load float, float* %t368, align 4
  %t158 = fsub float %t156, %t157
  ret float %t158
}
define void @scene(float %t159, float %t161, float* %t163) {
B371:
  %t372 = alloca float, align 4
  %t373 = alloca float, align 4
  %t374 = alloca float*, align 4
  %t375 = alloca float, align 4
  %t376 = alloca float, align 4
  store float %t159, float* %t372, align 4
  store float %t161, float* %t373, align 4
  store float* %t163, float** %t374, align 4
  %t165 = load float, float* %t372, align 4
  %t166 = load float, float* %t373, align 4
  %t167 = call float @circle_sdf(float %t165, float %t166, float 0.400000, float 0.400000, float 0.100000)
  store float %t167, float* %t375, align 4
  %t169 = load float, float* %t372, align 4
  %t170 = load float, float* %t373, align 4
  %t171 = call float @circle_sdf(float %t169, float %t170, float 0.600000, float 0.600000, float 0.050000)
  store float %t171, float* %t376, align 4
  %t173 = load float, float* %t375, align 4
  %t174 = load float, float* %t376, align 4
  %t175 = icmp slt float %t173, %t174
  br i1 %t175, label %B377, label %B382
B377:                               	; preds = %B371
  %t177 = load float, float* %t375, align 4
  %t383 = load float*, float** %t374, align 4
  %t176 = getelementptr inbounds float, float* %t383, i32 0
  store float %t177, float* %t176, align 4
  %t178 = getelementptr inbounds float, float* %t383, i32 1
  store float 3.000000, float* %t178, align 4
  br label %B379
B382:                               	; preds = %B371
  br label %B378
B379:                               	; preds = %B377, %B378
  ret void
B378:                               	; preds = %B382
  %t180 = load float, float* %t376, align 4
  %t385 = load float*, float** %t374, align 4
  %t179 = getelementptr inbounds float, float* %t385, i32 0
  store float %t180, float* %t179, align 4
  %t181 = getelementptr inbounds float, float* %t385, i32 1
  store float 0.000000, float* %t181, align 4
  br label %B379
}
define float @trace(float %t182, float %t184, float %t186, float %t188) {
B387:
  %t388 = alloca float, align 4
  %t389 = alloca float, align 4
  %t390 = alloca float, align 4
  %t391 = alloca float, align 4
  %t392 = alloca float, align 4
  %t404 = alloca [2 x float], align 4
  store float %t182, float* %t388, align 4
  store float %t184, float* %t389, align 4
  store float %t186, float* %t390, align 4
  store float %t188, float* %t391, align 4
  store float 0.000000, float* %t392, align 4
  br label %B394
B394:                               	; preds = %B387
  %t193 = load i32, i32* @MAX_STEP, align 4
  %t491 = add i32 0, 0
  %t194 = icmp slt i32 0, %t193
  br i1 %t194, label %B418, label %B400
B418:                               	; preds = %B394, %B406
  %t195 = load float, float* %t392, align 4
  %t196 = load float, float* @MAX_DISTANCE, align 4
  %t416 = icmp slt float %t195, %t196
  br i1 %t416, label %B395, label %B424
B400:                               	; preds = %B394
  %t490 = add i32 0, 0
  br label %B396
B395:                               	; preds = %B418
  %t200 = load float, float* %t388, align 4
  %t201 = load float, float* %t390, align 4
  %t202 = load float, float* %t392, align 4
  %t203 = fmul float %t201, %t202
  %t204 = fadd float %t200, %t203
  %t205 = load float, float* %t389, align 4
  %t206 = load float, float* %t391, align 4
  %t207 = load float, float* %t392, align 4
  %t208 = fmul float %t206, %t207
  %t209 = fadd float %t205, %t208
  %t210 = getelementptr inbounds [2 x float], [2 x float]* %t404, i32 0, i32 0
  call void @scene(float %t204, float %t209, float* %t210)
  %t407 = load float, float* %t210, align 4
  %t212 = load float, float* @EPSILON, align 4
  %t213 = icmp slt float %t407, %t212
  br i1 %t213, label %B405, label %B410
B424:                               	; preds = %B418
  %t490 = add i32 %t491, 0
  br label %B396
B396:                               	; preds = %B400, %B421, %B424
  ret float 0.000000
B405:                               	; preds = %B395
  %t214 = getelementptr inbounds [2 x float], [2 x float]* %t404, i32 0, i32 1
  %t411 = load float, float* %t214, align 4
  ret float %t411
B410:                               	; preds = %B395
  br label %B406
B406:                               	; preds = %B410
  %t216 = load float, float* %t392, align 4
  %t217 = getelementptr inbounds [2 x float], [2 x float]* %t404, i32 0, i32 0
  %t412 = load float, float* %t217, align 4
  %t218 = fadd float %t216, %t412
  store float %t218, float* %t392, align 4
  %t221 = add i32 %t491, 1
  %t414 = load i32, i32* @MAX_STEP, align 4
  %t491 = add i32 %t221, 0
  %t415 = icmp slt i32 %t221, %t414
  br i1 %t415, label %B418, label %B421
B421:                               	; preds = %B406
  %t490 = add i32 %t221, 0
  br label %B396
}
define float @sample(float %t222, float %t224) {
B425:
  %t426 = alloca float, align 4
  %t427 = alloca float, align 4
  %t428 = alloca float, align 4
  %t436 = alloca float, align 4
  %t437 = alloca float, align 4
  store float %t222, float* %t426, align 4
  store float %t224, float* %t427, align 4
  store float 0.000000, float* %t428, align 4
  br label %B430
B430:                               	; preds = %B425
  %t229 = load i32, i32* @N, align 4
  %t497 = add i32 0, 0
  %t230 = icmp slt i32 0, %t229
  br i1 %t230, label %B431, label %B435
B431:                               	; preds = %B430, %B536
  %t231 = call i32 @rand()
  %t233 = sitofp i32 %t231 to float
  store float %t233, float* %t436, align 4
  %t234 = load float, float* @TWO_PI, align 4
  %t241 = sitofp i32 %t497 to float
  %t236 = load float, float* %t436, align 4
  %t237 = load i32, i32* @RAND_MAX, align 4
  %t239 = sitofp i32 %t237 to float
  %t238 = fdiv float %t236, %t239
  %t240 = fadd float %t241, %t238
  %t242 = fmul float %t234, %t240
  %t243 = load i32, i32* @N, align 4
  %t245 = sitofp i32 %t243 to float
  %t244 = fdiv float %t242, %t245
  store float %t244, float* %t437, align 4
  %t248 = load float, float* %t428, align 4
  %t249 = load float, float* %t426, align 4
  %t250 = load float, float* %t427, align 4
  %t251 = load float, float* %t437, align 4
  %t252 = call float @my_cos(float %t251)
  %t253 = load float, float* %t437, align 4
  %t254 = call float @my_sin(float %t253)
  %t255 = call float @trace(float %t249, float %t250, float %t252, float %t254)
  %t256 = fadd float %t248, %t255
  store float %t256, float* %t428, align 4
  %t259 = add i32 %t497, 1
  %t439 = load i32, i32* @N, align 4
  %t440 = icmp slt i32 %t259, %t439
  br i1 %t440, label %B536, label %B443
B435:                               	; preds = %B430
  %t496 = add i32 0, 0
  br label %B432
B443:                               	; preds = %B431
  %t496 = add i32 %t259, 0
  br label %B432
B536:                               	; preds = %B431
  %t497 = add i32 %t259, 0
  br label %B431
B432:                               	; preds = %B435, %B443
  %t260 = load float, float* %t428, align 4
  %t261 = load i32, i32* @N, align 4
  %t263 = sitofp i32 %t261 to float
  %t262 = fdiv float %t260, %t263
  ret float %t262
}
define void @write_pgm() {
B444:
  %t459 = alloca float, align 4
  %t460 = alloca float, align 4
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
  br label %B446
B446:                               	; preds = %B444
  %t268 = load i32, i32* @H, align 4
  %t523 = add i32 0, 0
  %t511 = add i32 0, 0
  %t502 = add i32 0, 0
  %t269 = icmp slt i32 0, %t268
  br i1 %t269, label %B447, label %B451
B447:                               	; preds = %B446, %B455
  br label %B453
B451:                               	; preds = %B446
  %t524 = add i32 0, 0
  %t512 = add i32 0, 0
  %t503 = add i32 0, 0
  br label %B448
B453:                               	; preds = %B447
  %t272 = load i32, i32* @W, align 4
  %t520 = add i32 %t523, 0
  %t508 = add i32 0, 0
  %t273 = icmp slt i32 0, %t272
  br i1 %t273, label %B454, label %B458
B448:                               	; preds = %B451, %B478
  ret void
B454:                               	; preds = %B453, %B463
  %t276 = sitofp i32 %t508 to float
  store float %t276, float* %t459, align 4
  %t279 = sitofp i32 %t502 to float
  store float %t279, float* %t460, align 4
  %t280 = load float, float* %t459, align 4
  %t281 = load i32, i32* @W, align 4
  %t283 = sitofp i32 %t281 to float
  %t282 = fdiv float %t280, %t283
  %t284 = load float, float* %t460, align 4
  %t285 = load i32, i32* @H, align 4
  %t287 = sitofp i32 %t285 to float
  %t286 = fdiv float %t284, %t287
  %t288 = call float @sample(float %t282, float %t286)
  %t289 = fmul float %t288, 255.000000
  %t291 = fptosi float %t289 to i32
  %t293 = icmp sgt i32 %t291, 255
  br i1 %t293, label %B462, label %B466
B458:                               	; preds = %B453
  %t521 = add i32 %t523, 0
  %t509 = add i32 0, 0
  br label %B455
B462:                               	; preds = %B454
  %t518 = add i32 255, 0
  br label %B463
B466:                               	; preds = %B454
  %t518 = add i32 %t291, 0
  br label %B463
B455:                               	; preds = %B458, %B472
  call void @putch(i32 10)
  %t301 = add i32 %t502, 1
  %t474 = load i32, i32* @H, align 4
  %t523 = add i32 %t521, 0
  %t511 = add i32 %t509, 0
  %t502 = add i32 %t301, 0
  %t475 = icmp slt i32 %t301, %t474
  br i1 %t475, label %B447, label %B478
B463:                               	; preds = %B462, %B466
  call void @putint(i32 %t518)
  call void @putch(i32 32)
  %t298 = add i32 %t508, 1
  %t468 = load i32, i32* @W, align 4
  %t520 = add i32 %t518, 0
  %t508 = add i32 %t298, 0
  %t469 = icmp slt i32 %t298, %t468
  br i1 %t469, label %B454, label %B472
B478:                               	; preds = %B455
  %t524 = add i32 %t521, 0
  %t512 = add i32 %t509, 0
  %t503 = add i32 %t301, 0
  br label %B448
B472:                               	; preds = %B463
  %t521 = add i32 %t518, 0
  %t509 = add i32 %t298, 0
  br label %B455
}
define i32 @main() {
B479:
  call void @write_pgm()
  ret i32 0
}
declare void @putch(i32)
declare void @putint(i32)
