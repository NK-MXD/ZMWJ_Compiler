@MAX_DIM_X = global i32 8, align 4
@MAX_DIM_Y = global i32 8, align 4
@test_block = global [8 x [8 x float]] zeroinitializer, align 4
@test_dct = global [8 x [8 x float]] zeroinitializer, align 4
@test_idct = global [8 x [8 x float]] zeroinitializer, align 4
@PI = global float 0x400921FB60000000, align 4
@TWO_PI = global float 0x401921FB60000000, align 4
@EPSILON = global float 0x3EB0C6F7A0000000, align 4
define float @my_fabs(float %t14) {
B372:
  %t373 = alloca float, align 4
  store float %t14, float* %t373, align 4
  %t16 = load float, float* %t373, align 4
  %t18 = sitofp i32 0 to float
  %t17 = icmp sgt float %t16, %t18
  br i1 %t17, label %B374, label %B378
B374:                               	; preds = %B372
  %t19 = load float, float* %t373, align 4
  ret float %t19
B378:                               	; preds = %B372
  br label %B375
B375:                               	; preds = %B378
  %t20 = load float, float* %t373, align 4
  %t21 = fsub float 0.000000, %t20
  ret float %t21
}
define float @p(float %t22) {
B379:
  %t380 = alloca float, align 4
  store float %t22, float* %t380, align 4
  %t26 = sitofp i32 3 to float
  %t24 = load float, float* %t380, align 4
  %t25 = fmul float %t26, %t24
  %t29 = sitofp i32 4 to float
  %t27 = load float, float* %t380, align 4
  %t28 = fmul float %t29, %t27
  %t30 = load float, float* %t380, align 4
  %t31 = fmul float %t28, %t30
  %t32 = load float, float* %t380, align 4
  %t33 = fmul float %t31, %t32
  %t34 = fsub float %t25, %t33
  ret float %t34
}
define float @my_sin_impl(float %t35) {
B381:
  %t382 = alloca float, align 4
  store float %t35, float* %t382, align 4
  %t37 = load float, float* %t382, align 4
  %t38 = call float @my_fabs(float %t37)
  %t39 = load float, float* @EPSILON, align 4
  %t40 = icmp sle float %t38, %t39
  br i1 %t40, label %B383, label %B387
B383:                               	; preds = %B381
  %t41 = load float, float* %t382, align 4
  ret float %t41
B387:                               	; preds = %B381
  br label %B384
B384:                               	; preds = %B387
  %t42 = load float, float* %t382, align 4
  %t43 = fdiv float %t42, 3.000000
  %t44 = call float @my_sin_impl(float %t43)
  %t45 = call float @p(float %t44)
  ret float %t45
}
define float @my_sin(float %t46) {
B388:
  %t389 = alloca float, align 4
  %t399 = alloca i32, align 4
  store float %t46, float* %t389, align 4
  %t48 = load float, float* %t389, align 4
  %t49 = load float, float* @TWO_PI, align 4
  %t50 = icmp sgt float %t48, %t49
  br i1 %t50, label %B390, label %B395
B390:                               	; preds = %B388, %B392
  %t56 = load float, float* %t389, align 4
  %t57 = load float, float* @TWO_PI, align 4
  %t58 = fdiv float %t56, %t57
  %t60 = fptosi float %t58 to i32
  store i32 %t60, i32* %t399, align 4
  %t62 = load float, float* %t389, align 4
  %t63 = load i32, i32* %t399, align 4
  %t66 = sitofp i32 %t63 to float
  %t64 = load float, float* @TWO_PI, align 4
  %t65 = fmul float %t66, %t64
  %t67 = fsub float %t62, %t65
  store float %t67, float* %t389, align 4
  br label %B391
B395:                               	; preds = %B388
  br label %B392
B391:                               	; preds = %B390, %B398
  %t68 = load float, float* %t389, align 4
  %t69 = load float, float* @PI, align 4
  %t70 = icmp sgt float %t68, %t69
  br i1 %t70, label %B400, label %B404
B392:                               	; preds = %B395
  %t51 = load float, float* %t389, align 4
  %t52 = load float, float* @TWO_PI, align 4
  %t53 = fsub float 0.000000, %t52
  %t54 = icmp slt float %t51, %t53
  br i1 %t54, label %B390, label %B398
B400:                               	; preds = %B391
  %t72 = load float, float* %t389, align 4
  %t73 = load float, float* @TWO_PI, align 4
  %t74 = fsub float %t72, %t73
  store float %t74, float* %t389, align 4
  br label %B401
B404:                               	; preds = %B391
  br label %B401
B398:                               	; preds = %B392
  br label %B391
B401:                               	; preds = %B400, %B404
  %t75 = load float, float* %t389, align 4
  %t76 = load float, float* @PI, align 4
  %t77 = fsub float 0.000000, %t76
  %t78 = icmp slt float %t75, %t77
  br i1 %t78, label %B405, label %B409
B405:                               	; preds = %B401
  %t80 = load float, float* %t389, align 4
  %t81 = load float, float* @TWO_PI, align 4
  %t82 = fadd float %t80, %t81
  store float %t82, float* %t389, align 4
  br label %B406
B409:                               	; preds = %B401
  br label %B406
B406:                               	; preds = %B405, %B409
  %t83 = load float, float* %t389, align 4
  %t84 = call float @my_sin_impl(float %t83)
  ret float %t84
}
define float @my_cos(float %t85) {
B410:
  %t411 = alloca float, align 4
  store float %t85, float* %t411, align 4
  %t87 = load float, float* %t411, align 4
  %t88 = load float, float* @PI, align 4
  %t90 = sitofp i32 2 to float
  %t89 = fdiv float %t88, %t90
  %t91 = fadd float %t87, %t89
  %t92 = call float @my_sin(float %t91)
  ret float %t92
}
define void @write_mat([8 x float]* %t94, i32 %t96, i32 %t98) {
B412:
  %t413 = alloca [8 x float]*, align 4
  %t414 = alloca i32, align 4
  %t415 = alloca i32, align 4
  %t416 = alloca i32, align 4
  %t426 = alloca i32, align 4
  store [8 x float]* %t94, [8 x float]** %t413, align 4
  store i32 %t96, i32* %t414, align 4
  store i32 %t98, i32* %t415, align 4
  store i32 0, i32* %t416, align 4
  br label %B417
B417:                               	; preds = %B412, %B429
  %t101 = load i32, i32* %t416, align 4
  %t102 = load i32, i32* %t414, align 4
  %t103 = icmp slt i32 %t101, %t102
  br i1 %t103, label %B418, label %B422
B418:                               	; preds = %B417
  %t423 = load [8 x float]*, [8 x float]** %t413, align 4
  %t104 = load i32, i32* %t416, align 4
  %t105 = getelementptr inbounds [8 x float], [8 x float]* %t423, i32 %t104
  %t424 = getelementptr inbounds [8 x float], [8 x float]* %t105, i32 0, i32 0
  %t425 = load float, float* %t424, align 4
  call void @putfloat(float %t425)
  store i32 1, i32* %t426, align 4
  br label %B427
B422:                               	; preds = %B417
  br label %B419
B427:                               	; preds = %B418, %B428
  %t107 = load i32, i32* %t426, align 4
  %t108 = load i32, i32* %t415, align 4
  %t109 = icmp slt i32 %t107, %t108
  br i1 %t109, label %B428, label %B432
B419:                               	; preds = %B422
  call void @putch(i32 10)
  ret void
B428:                               	; preds = %B427
  call void @putch(i32 32)
  %t433 = load [8 x float]*, [8 x float]** %t413, align 4
  %t110 = load i32, i32* %t416, align 4
  %t112 = getelementptr inbounds [8 x float], [8 x float]* %t433, i32 %t110
  %t111 = load i32, i32* %t426, align 4
  %t434 = getelementptr inbounds [8 x float], [8 x float]* %t112, i32 0, i32 %t111
  %t435 = load float, float* %t434, align 4
  call void @putfloat(float %t435)
  %t114 = load i32, i32* %t426, align 4
  %t115 = add i32 %t114, 1
  store i32 %t115, i32* %t426, align 4
  br label %B427
B432:                               	; preds = %B427
  br label %B429
B429:                               	; preds = %B432
  call void @putch(i32 10)
  %t117 = load i32, i32* %t416, align 4
  %t118 = add i32 %t117, 1
  store i32 %t118, i32* %t416, align 4
  br label %B417
}
define void @dct([8 x float]* %t120, [8 x float]* %t123, i32 %t125, i32 %t127) {
B436:
  %t437 = alloca [8 x float]*, align 4
  %t438 = alloca [8 x float]*, align 4
  %t439 = alloca i32, align 4
  %t440 = alloca i32, align 4
  %t441 = alloca i32, align 4
  %t448 = alloca i32, align 4
  %t457 = alloca i32, align 4
  %t464 = alloca i32, align 4
  store [8 x float]* %t120, [8 x float]** %t437, align 4
  store [8 x float]* %t123, [8 x float]** %t438, align 4
  store i32 %t125, i32* %t439, align 4
  store i32 %t127, i32* %t440, align 4
  store i32 0, i32* %t441, align 4
  br label %B442
B442:                               	; preds = %B436, %B451
  %t130 = load i32, i32* %t441, align 4
  %t131 = load i32, i32* %t439, align 4
  %t132 = icmp slt i32 %t130, %t131
  br i1 %t132, label %B443, label %B447
B443:                               	; preds = %B442
  store i32 0, i32* %t448, align 4
  br label %B449
B447:                               	; preds = %B442
  br label %B444
B449:                               	; preds = %B443, %B460
  %t134 = load i32, i32* %t448, align 4
  %t135 = load i32, i32* %t440, align 4
  %t136 = icmp slt i32 %t134, %t135
  br i1 %t136, label %B450, label %B454
B444:                               	; preds = %B447
  ret void
B450:                               	; preds = %B449
  %t140 = sitofp i32 0 to float
  %t455 = load [8 x float]*, [8 x float]** %t437, align 4
  %t137 = load i32, i32* %t441, align 4
  %t139 = getelementptr inbounds [8 x float], [8 x float]* %t455, i32 %t137
  %t138 = load i32, i32* %t448, align 4
  %t456 = getelementptr inbounds [8 x float], [8 x float]* %t139, i32 0, i32 %t138
  store float %t140, float* %t456, align 4
  store i32 0, i32* %t457, align 4
  br label %B458
B454:                               	; preds = %B449
  br label %B451
B458:                               	; preds = %B450, %B467
  %t142 = load i32, i32* %t457, align 4
  %t143 = load i32, i32* %t439, align 4
  %t144 = icmp slt i32 %t142, %t143
  br i1 %t144, label %B459, label %B463
B451:                               	; preds = %B454
  %t197 = load i32, i32* %t441, align 4
  %t198 = add i32 %t197, 1
  store i32 %t198, i32* %t441, align 4
  br label %B442
B459:                               	; preds = %B458
  store i32 0, i32* %t464, align 4
  br label %B465
B463:                               	; preds = %B458
  br label %B460
B465:                               	; preds = %B459, %B466
  %t146 = load i32, i32* %t464, align 4
  %t147 = load i32, i32* %t440, align 4
  %t148 = icmp slt i32 %t146, %t147
  br i1 %t148, label %B466, label %B470
B460:                               	; preds = %B463
  %t194 = load i32, i32* %t448, align 4
  %t195 = add i32 %t194, 1
  store i32 %t195, i32* %t448, align 4
  br label %B449
B466:                               	; preds = %B465
  %t471 = load [8 x float]*, [8 x float]** %t437, align 4
  %t152 = load i32, i32* %t441, align 4
  %t154 = getelementptr inbounds [8 x float], [8 x float]* %t471, i32 %t152
  %t153 = load i32, i32* %t448, align 4
  %t472 = getelementptr inbounds [8 x float], [8 x float]* %t154, i32 0, i32 %t153
  %t473 = load float, float* %t472, align 4
  %t474 = load [8 x float]*, [8 x float]** %t438, align 4
  %t155 = load i32, i32* %t457, align 4
  %t157 = getelementptr inbounds [8 x float], [8 x float]* %t474, i32 %t155
  %t156 = load i32, i32* %t464, align 4
  %t475 = getelementptr inbounds [8 x float], [8 x float]* %t157, i32 0, i32 %t156
  %t476 = load float, float* %t475, align 4
  %t158 = load float, float* @PI, align 4
  %t159 = load i32, i32* %t439, align 4
  %t161 = sitofp i32 %t159 to float
  %t160 = fdiv float %t158, %t161
  %t162 = load i32, i32* %t457, align 4
  %t165 = sitofp i32 %t162 to float
  %t163 = fdiv float 1.000000, 2.000000
  %t164 = fadd float %t165, %t163
  %t166 = fmul float %t160, %t164
  %t167 = load i32, i32* %t441, align 4
  %t169 = sitofp i32 %t167 to float
  %t168 = fmul float %t166, %t169
  %t170 = call float @my_cos(float %t168)
  %t171 = fmul float %t476, %t170
  %t172 = load float, float* @PI, align 4
  %t173 = load i32, i32* %t440, align 4
  %t175 = sitofp i32 %t173 to float
  %t174 = fdiv float %t172, %t175
  %t176 = load i32, i32* %t464, align 4
  %t179 = sitofp i32 %t176 to float
  %t177 = fdiv float 1.000000, 2.000000
  %t178 = fadd float %t179, %t177
  %t180 = fmul float %t174, %t178
  %t181 = load i32, i32* %t448, align 4
  %t183 = sitofp i32 %t181 to float
  %t182 = fmul float %t180, %t183
  %t184 = call float @my_cos(float %t182)
  %t185 = fmul float %t171, %t184
  %t186 = fadd float %t473, %t185
  %t477 = load [8 x float]*, [8 x float]** %t437, align 4
  %t149 = load i32, i32* %t441, align 4
  %t151 = getelementptr inbounds [8 x float], [8 x float]* %t477, i32 %t149
  %t150 = load i32, i32* %t448, align 4
  %t478 = getelementptr inbounds [8 x float], [8 x float]* %t151, i32 0, i32 %t150
  store float %t186, float* %t478, align 4
  %t188 = load i32, i32* %t464, align 4
  %t189 = add i32 %t188, 1
  store i32 %t189, i32* %t464, align 4
  br label %B465
B470:                               	; preds = %B465
  br label %B467
B467:                               	; preds = %B470
  %t191 = load i32, i32* %t457, align 4
  %t192 = add i32 %t191, 1
  store i32 %t192, i32* %t457, align 4
  br label %B458
}
define void @idct([8 x float]* %t200, [8 x float]* %t203, i32 %t205, i32 %t207) {
B479:
  %t480 = alloca [8 x float]*, align 4
  %t481 = alloca [8 x float]*, align 4
  %t482 = alloca i32, align 4
  %t483 = alloca i32, align 4
  %t484 = alloca i32, align 4
  %t491 = alloca i32, align 4
  %t503 = alloca i32, align 4
  %t504 = alloca i32, align 4
  store [8 x float]* %t200, [8 x float]** %t480, align 4
  store [8 x float]* %t203, [8 x float]** %t481, align 4
  store i32 %t205, i32* %t482, align 4
  store i32 %t207, i32* %t483, align 4
  store i32 0, i32* %t484, align 4
  br label %B485
B485:                               	; preds = %B479, %B494
  %t210 = load i32, i32* %t484, align 4
  %t211 = load i32, i32* %t482, align 4
  %t212 = icmp slt i32 %t210, %t211
  br i1 %t212, label %B486, label %B490
B486:                               	; preds = %B485
  store i32 0, i32* %t491, align 4
  br label %B492
B490:                               	; preds = %B485
  br label %B487
B492:                               	; preds = %B486, %B535
  %t214 = load i32, i32* %t491, align 4
  %t215 = load i32, i32* %t483, align 4
  %t216 = icmp slt i32 %t214, %t215
  br i1 %t216, label %B493, label %B497
B487:                               	; preds = %B490
  ret void
B493:                               	; preds = %B492
  %t221 = sitofp i32 1 to float
  %t220 = fdiv float %t221, 4.000000
  %t498 = load [8 x float]*, [8 x float]** %t481, align 4
  %t222 = getelementptr inbounds [8 x float], [8 x float]* %t498, i32 0
  %t499 = getelementptr inbounds [8 x float], [8 x float]* %t222, i32 0, i32 0
  %t500 = load float, float* %t499, align 4
  %t223 = fmul float %t220, %t500
  %t501 = load [8 x float]*, [8 x float]** %t480, align 4
  %t217 = load i32, i32* %t484, align 4
  %t219 = getelementptr inbounds [8 x float], [8 x float]* %t501, i32 %t217
  %t218 = load i32, i32* %t491, align 4
  %t502 = getelementptr inbounds [8 x float], [8 x float]* %t219, i32 0, i32 %t218
  store float %t223, float* %t502, align 4
  store i32 1, i32* %t503, align 4
  br label %B505
B497:                               	; preds = %B492
  br label %B494
B505:                               	; preds = %B493, %B506
  %t227 = load i32, i32* %t503, align 4
  %t228 = load i32, i32* %t482, align 4
  %t229 = icmp slt i32 %t227, %t228
  br i1 %t229, label %B506, label %B510
B494:                               	; preds = %B497
  %t334 = load i32, i32* %t484, align 4
  %t335 = add i32 %t334, 1
  store i32 %t335, i32* %t484, align 4
  br label %B485
B506:                               	; preds = %B505
  %t511 = load [8 x float]*, [8 x float]** %t480, align 4
  %t233 = load i32, i32* %t484, align 4
  %t235 = getelementptr inbounds [8 x float], [8 x float]* %t511, i32 %t233
  %t234 = load i32, i32* %t491, align 4
  %t512 = getelementptr inbounds [8 x float], [8 x float]* %t235, i32 0, i32 %t234
  %t513 = load float, float* %t512, align 4
  %t237 = sitofp i32 1 to float
  %t236 = fdiv float %t237, 2.000000
  %t514 = load [8 x float]*, [8 x float]** %t481, align 4
  %t238 = load i32, i32* %t503, align 4
  %t239 = getelementptr inbounds [8 x float], [8 x float]* %t514, i32 %t238
  %t515 = getelementptr inbounds [8 x float], [8 x float]* %t239, i32 0, i32 0
  %t516 = load float, float* %t515, align 4
  %t240 = fmul float %t236, %t516
  %t241 = fadd float %t513, %t240
  %t517 = load [8 x float]*, [8 x float]** %t480, align 4
  %t230 = load i32, i32* %t484, align 4
  %t232 = getelementptr inbounds [8 x float], [8 x float]* %t517, i32 %t230
  %t231 = load i32, i32* %t491, align 4
  %t518 = getelementptr inbounds [8 x float], [8 x float]* %t232, i32 0, i32 %t231
  store float %t241, float* %t518, align 4
  %t243 = load i32, i32* %t503, align 4
  %t244 = add i32 %t243, 1
  store i32 %t244, i32* %t503, align 4
  br label %B505
B510:                               	; preds = %B505
  br label %B507
B507:                               	; preds = %B510
  store i32 1, i32* %t504, align 4
  br label %B519
B519:                               	; preds = %B507, %B520
  %t246 = load i32, i32* %t504, align 4
  %t247 = load i32, i32* %t483, align 4
  %t248 = icmp slt i32 %t246, %t247
  br i1 %t248, label %B520, label %B524
B520:                               	; preds = %B519
  %t525 = load [8 x float]*, [8 x float]** %t480, align 4
  %t252 = load i32, i32* %t484, align 4
  %t254 = getelementptr inbounds [8 x float], [8 x float]* %t525, i32 %t252
  %t253 = load i32, i32* %t491, align 4
  %t526 = getelementptr inbounds [8 x float], [8 x float]* %t254, i32 0, i32 %t253
  %t527 = load float, float* %t526, align 4
  %t256 = sitofp i32 1 to float
  %t255 = fdiv float %t256, 2.000000
  %t528 = load [8 x float]*, [8 x float]** %t481, align 4
  %t258 = getelementptr inbounds [8 x float], [8 x float]* %t528, i32 0
  %t257 = load i32, i32* %t504, align 4
  %t529 = getelementptr inbounds [8 x float], [8 x float]* %t258, i32 0, i32 %t257
  %t530 = load float, float* %t529, align 4
  %t259 = fmul float %t255, %t530
  %t260 = fadd float %t527, %t259
  %t531 = load [8 x float]*, [8 x float]** %t480, align 4
  %t249 = load i32, i32* %t484, align 4
  %t251 = getelementptr inbounds [8 x float], [8 x float]* %t531, i32 %t249
  %t250 = load i32, i32* %t491, align 4
  %t532 = getelementptr inbounds [8 x float], [8 x float]* %t251, i32 0, i32 %t250
  store float %t260, float* %t532, align 4
  %t262 = load i32, i32* %t504, align 4
  %t263 = add i32 %t262, 1
  store i32 %t263, i32* %t504, align 4
  br label %B519
B524:                               	; preds = %B519
  br label %B521
B521:                               	; preds = %B524
  store i32 1, i32* %t503, align 4
  br label %B533
B533:                               	; preds = %B521, %B541
  %t265 = load i32, i32* %t503, align 4
  %t266 = load i32, i32* %t482, align 4
  %t267 = icmp slt i32 %t265, %t266
  br i1 %t267, label %B534, label %B538
B534:                               	; preds = %B533
  store i32 1, i32* %t504, align 4
  br label %B539
B538:                               	; preds = %B533
  br label %B535
B539:                               	; preds = %B534, %B540
  %t269 = load i32, i32* %t504, align 4
  %t270 = load i32, i32* %t483, align 4
  %t271 = icmp slt i32 %t269, %t270
  br i1 %t271, label %B540, label %B544
B535:                               	; preds = %B538
  %t553 = load [8 x float]*, [8 x float]** %t480, align 4
  %t319 = load i32, i32* %t484, align 4
  %t321 = getelementptr inbounds [8 x float], [8 x float]* %t553, i32 %t319
  %t320 = load i32, i32* %t491, align 4
  %t554 = getelementptr inbounds [8 x float], [8 x float]* %t321, i32 0, i32 %t320
  %t555 = load float, float* %t554, align 4
  %t322 = fmul float %t555, 2.000000
  %t323 = load i32, i32* %t482, align 4
  %t325 = sitofp i32 %t323 to float
  %t324 = fdiv float %t322, %t325
  %t326 = fmul float %t324, 2.000000
  %t327 = load i32, i32* %t483, align 4
  %t329 = sitofp i32 %t327 to float
  %t328 = fdiv float %t326, %t329
  %t556 = load [8 x float]*, [8 x float]** %t480, align 4
  %t316 = load i32, i32* %t484, align 4
  %t318 = getelementptr inbounds [8 x float], [8 x float]* %t556, i32 %t316
  %t317 = load i32, i32* %t491, align 4
  %t557 = getelementptr inbounds [8 x float], [8 x float]* %t318, i32 0, i32 %t317
  store float %t328, float* %t557, align 4
  %t331 = load i32, i32* %t491, align 4
  %t332 = add i32 %t331, 1
  store i32 %t332, i32* %t491, align 4
  br label %B492
B540:                               	; preds = %B539
  %t545 = load [8 x float]*, [8 x float]** %t480, align 4
  %t275 = load i32, i32* %t484, align 4
  %t277 = getelementptr inbounds [8 x float], [8 x float]* %t545, i32 %t275
  %t276 = load i32, i32* %t491, align 4
  %t546 = getelementptr inbounds [8 x float], [8 x float]* %t277, i32 0, i32 %t276
  %t547 = load float, float* %t546, align 4
  %t548 = load [8 x float]*, [8 x float]** %t481, align 4
  %t278 = load i32, i32* %t503, align 4
  %t280 = getelementptr inbounds [8 x float], [8 x float]* %t548, i32 %t278
  %t279 = load i32, i32* %t504, align 4
  %t549 = getelementptr inbounds [8 x float], [8 x float]* %t280, i32 0, i32 %t279
  %t550 = load float, float* %t549, align 4
  %t281 = load float, float* @PI, align 4
  %t282 = load i32, i32* %t482, align 4
  %t284 = sitofp i32 %t282 to float
  %t283 = fdiv float %t281, %t284
  %t285 = load i32, i32* %t484, align 4
  %t288 = sitofp i32 %t285 to float
  %t286 = fdiv float 1.000000, 2.000000
  %t287 = fadd float %t288, %t286
  %t289 = fmul float %t283, %t287
  %t290 = load i32, i32* %t503, align 4
  %t292 = sitofp i32 %t290 to float
  %t291 = fmul float %t289, %t292
  %t293 = call float @my_cos(float %t291)
  %t294 = fmul float %t550, %t293
  %t295 = load float, float* @PI, align 4
  %t296 = load i32, i32* %t483, align 4
  %t298 = sitofp i32 %t296 to float
  %t297 = fdiv float %t295, %t298
  %t299 = load i32, i32* %t491, align 4
  %t302 = sitofp i32 %t299 to float
  %t300 = fdiv float 1.000000, 2.000000
  %t301 = fadd float %t302, %t300
  %t303 = fmul float %t297, %t301
  %t304 = load i32, i32* %t504, align 4
  %t306 = sitofp i32 %t304 to float
  %t305 = fmul float %t303, %t306
  %t307 = call float @my_cos(float %t305)
  %t308 = fmul float %t294, %t307
  %t309 = fadd float %t547, %t308
  %t551 = load [8 x float]*, [8 x float]** %t480, align 4
  %t272 = load i32, i32* %t484, align 4
  %t274 = getelementptr inbounds [8 x float], [8 x float]* %t551, i32 %t272
  %t273 = load i32, i32* %t491, align 4
  %t552 = getelementptr inbounds [8 x float], [8 x float]* %t274, i32 0, i32 %t273
  store float %t309, float* %t552, align 4
  %t311 = load i32, i32* %t504, align 4
  %t312 = add i32 %t311, 1
  store i32 %t312, i32* %t504, align 4
  br label %B539
B544:                               	; preds = %B539
  br label %B541
B541:                               	; preds = %B544
  %t314 = load i32, i32* %t503, align 4
  %t315 = add i32 %t314, 1
  store i32 %t315, i32* %t503, align 4
  br label %B533
}
define i32 @main() {
B558:
  %t559 = alloca i32, align 4
  %t560 = alloca i32, align 4
  %t561 = alloca i32, align 4
  %t568 = alloca i32, align 4
  %t336 = call i32 @getint()
  store i32 %t336, i32* %t559, align 4
  %t338 = call i32 @getint()
  store i32 %t338, i32* %t560, align 4
  store i32 0, i32* %t561, align 4
  br label %B562
B562:                               	; preds = %B558, %B571
  %t341 = load i32, i32* %t561, align 4
  %t342 = load i32, i32* %t559, align 4
  %t343 = icmp slt i32 %t341, %t342
  br i1 %t343, label %B563, label %B567
B563:                               	; preds = %B562
  store i32 0, i32* %t568, align 4
  br label %B569
B567:                               	; preds = %B562
  br label %B564
B569:                               	; preds = %B563, %B570
  %t345 = load i32, i32* %t568, align 4
  %t346 = load i32, i32* %t560, align 4
  %t347 = icmp slt i32 %t345, %t346
  br i1 %t347, label %B570, label %B574
B564:                               	; preds = %B567
  %t358 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_dct, i32 0, i32 0
  %t359 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_block, i32 0, i32 0
  %t360 = load i32, i32* %t559, align 4
  %t361 = load i32, i32* %t560, align 4
  call void @dct([8 x float]* %t358, [8 x float]* %t359, i32 %t360, i32 %t361)
  %t362 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_dct, i32 0, i32 0
  %t363 = load i32, i32* %t559, align 4
  %t364 = load i32, i32* %t560, align 4
  call void @write_mat([8 x float]* %t362, i32 %t363, i32 %t364)
  %t365 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_idct, i32 0, i32 0
  %t366 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_dct, i32 0, i32 0
  %t367 = load i32, i32* %t559, align 4
  %t368 = load i32, i32* %t560, align 4
  call void @idct([8 x float]* %t365, [8 x float]* %t366, i32 %t367, i32 %t368)
  %t369 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_idct, i32 0, i32 0
  %t370 = load i32, i32* %t559, align 4
  %t371 = load i32, i32* %t560, align 4
  call void @write_mat([8 x float]* %t369, i32 %t370, i32 %t371)
  ret i32 0
B570:                               	; preds = %B569
  %t351 = call float @getfloat()
  %t348 = load i32, i32* %t561, align 4
  %t350 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_block, i32 0, i32 %t348
  %t349 = load i32, i32* %t568, align 4
  %t575 = getelementptr inbounds [8 x float], [8 x float]* %t350, i32 0, i32 %t349
  store float %t351, float* %t575, align 4
  %t353 = load i32, i32* %t568, align 4
  %t354 = add i32 %t353, 1
  store i32 %t354, i32* %t568, align 4
  br label %B569
B574:                               	; preds = %B569
  br label %B571
B571:                               	; preds = %B574
  %t356 = load i32, i32* %t561, align 4
  %t357 = add i32 %t356, 1
  store i32 %t357, i32* %t561, align 4
  br label %B562
}
declare void @putfloat(float)
declare void @putch(i32)
declare i32 @getint()
declare float @getfloat()
