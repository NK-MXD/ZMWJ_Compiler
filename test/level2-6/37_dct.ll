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
  %t62 = load float, float* %t389, align 4
  %t66 = sitofp i32 %t60 to float
  %t64 = load float, float* @TWO_PI, align 4
  %t65 = fmul float %t66, %t64
  %t67 = fsub float %t62, %t65
  store float %t67, float* %t389, align 4
  %t661 = add i32 %t60, 0
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
  %t661 = add i32 0, 0
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
  store [8 x float]* %t94, [8 x float]** %t413, align 4
  store i32 %t96, i32* %t414, align 4
  store i32 %t98, i32* %t415, align 4
  br label %B417
B417:                               	; preds = %B412
  %t102 = load i32, i32* %t414, align 4
  %t674 = add i32 0, 0
  %t665 = add i32 0, 0
  %t103 = icmp slt i32 0, %t102
  br i1 %t103, label %B418, label %B422
B418:                               	; preds = %B417, %B429
  %t423 = load [8 x float]*, [8 x float]** %t413, align 4
  %t105 = getelementptr inbounds [8 x float], [8 x float]* %t423, i32 %t665
  %t424 = getelementptr inbounds [8 x float], [8 x float]* %t105, i32 0, i32 0
  %t425 = load float, float* %t424, align 4
  call void @putfloat(float %t425)
  br label %B427
B422:                               	; preds = %B417
  %t673 = add i32 0, 0
  %t664 = add i32 0, 0
  br label %B419
B427:                               	; preds = %B418
  %t108 = load i32, i32* %t415, align 4
  %t670 = add i32 1, 0
  %t109 = icmp slt i32 1, %t108
  br i1 %t109, label %B428, label %B432
B419:                               	; preds = %B422, %B447
  call void @putch(i32 10)
  ret void
B428:                               	; preds = %B427, %B811
  call void @putch(i32 32)
  %t433 = load [8 x float]*, [8 x float]** %t413, align 4
  %t112 = getelementptr inbounds [8 x float], [8 x float]* %t433, i32 %t665
  %t434 = getelementptr inbounds [8 x float], [8 x float]* %t112, i32 0, i32 %t670
  %t435 = load float, float* %t434, align 4
  call void @putfloat(float %t435)
  %t115 = add i32 %t670, 1
  %t437 = load i32, i32* %t415, align 4
  %t438 = icmp slt i32 %t115, %t437
  br i1 %t438, label %B811, label %B441
B432:                               	; preds = %B427
  %t671 = add i32 1, 0
  br label %B429
B441:                               	; preds = %B428
  %t671 = add i32 %t115, 0
  br label %B429
B811:                               	; preds = %B428
  %t670 = add i32 %t115, 0
  br label %B428
B429:                               	; preds = %B432, %B441
  call void @putch(i32 10)
  %t118 = add i32 %t665, 1
  %t443 = load i32, i32* %t414, align 4
  %t674 = add i32 %t671, 0
  %t665 = add i32 %t118, 0
  %t444 = icmp slt i32 %t118, %t443
  br i1 %t444, label %B418, label %B447
B447:                               	; preds = %B429
  %t673 = add i32 %t671, 0
  %t664 = add i32 %t118, 0
  br label %B419
}
define void @dct([8 x float]* %t120, [8 x float]* %t123, i32 %t125, i32 %t127) {
B448:
  %t449 = alloca [8 x float]*, align 4
  %t450 = alloca [8 x float]*, align 4
  %t451 = alloca i32, align 4
  %t452 = alloca i32, align 4
  store [8 x float]* %t120, [8 x float]** %t449, align 4
  store [8 x float]* %t123, [8 x float]** %t450, align 4
  store i32 %t125, i32* %t451, align 4
  store i32 %t127, i32* %t452, align 4
  br label %B454
B454:                               	; preds = %B448
  %t131 = load i32, i32* %t451, align 4
  %t720 = add i32 0, 0
  %t703 = add i32 0, 0
  %t690 = add i32 0, 0
  %t681 = add i32 0, 0
  %t132 = icmp slt i32 0, %t131
  br i1 %t132, label %B455, label %B459
B455:                               	; preds = %B454, %B463
  br label %B461
B459:                               	; preds = %B454
  %t719 = add i32 0, 0
  %t702 = add i32 0, 0
  %t689 = add i32 0, 0
  %t680 = add i32 0, 0
  br label %B456
B461:                               	; preds = %B455
  %t135 = load i32, i32* %t452, align 4
  %t716 = add i32 %t720, 0
  %t699 = add i32 %t703, 0
  %t686 = add i32 0, 0
  %t136 = icmp slt i32 0, %t135
  br i1 %t136, label %B462, label %B466
B456:                               	; preds = %B459, %B514
  ret void
B462:                               	; preds = %B461, %B472
  %t140 = sitofp i32 0 to float
  %t467 = load [8 x float]*, [8 x float]** %t449, align 4
  %t139 = getelementptr inbounds [8 x float], [8 x float]* %t467, i32 %t681
  %t468 = getelementptr inbounds [8 x float], [8 x float]* %t139, i32 0, i32 %t686
  store float %t140, float* %t468, align 4
  br label %B470
B466:                               	; preds = %B461
  %t717 = add i32 %t720, 0
  %t700 = add i32 %t703, 0
  %t687 = add i32 0, 0
  br label %B463
B470:                               	; preds = %B462
  %t143 = load i32, i32* %t451, align 4
  %t713 = add i32 %t716, 0
  %t696 = add i32 0, 0
  %t144 = icmp slt i32 0, %t143
  br i1 %t144, label %B471, label %B475
B463:                               	; preds = %B466, %B508
  %t198 = add i32 %t681, 1
  %t510 = load i32, i32* %t451, align 4
  %t720 = add i32 %t717, 0
  %t703 = add i32 %t700, 0
  %t690 = add i32 %t687, 0
  %t681 = add i32 %t198, 0
  %t511 = icmp slt i32 %t198, %t510
  br i1 %t511, label %B455, label %B514
B471:                               	; preds = %B470, %B479
  br label %B477
B475:                               	; preds = %B470
  %t714 = add i32 %t716, 0
  %t697 = add i32 0, 0
  br label %B472
B514:                               	; preds = %B463
  %t719 = add i32 %t717, 0
  %t702 = add i32 %t700, 0
  %t689 = add i32 %t687, 0
  %t680 = add i32 %t198, 0
  br label %B456
B477:                               	; preds = %B471
  %t147 = load i32, i32* %t452, align 4
  %t710 = add i32 0, 0
  %t148 = icmp slt i32 0, %t147
  br i1 %t148, label %B478, label %B482
B472:                               	; preds = %B475, %B502
  %t195 = add i32 %t686, 1
  %t504 = load i32, i32* %t452, align 4
  %t716 = add i32 %t714, 0
  %t699 = add i32 %t697, 0
  %t686 = add i32 %t195, 0
  %t505 = icmp slt i32 %t195, %t504
  br i1 %t505, label %B462, label %B508
B478:                               	; preds = %B477, %B832
  %t483 = load [8 x float]*, [8 x float]** %t449, align 4
  %t154 = getelementptr inbounds [8 x float], [8 x float]* %t483, i32 %t681
  %t484 = getelementptr inbounds [8 x float], [8 x float]* %t154, i32 0, i32 %t686
  %t485 = load float, float* %t484, align 4
  %t486 = load [8 x float]*, [8 x float]** %t450, align 4
  %t157 = getelementptr inbounds [8 x float], [8 x float]* %t486, i32 %t696
  %t487 = getelementptr inbounds [8 x float], [8 x float]* %t157, i32 0, i32 %t710
  %t488 = load float, float* %t487, align 4
  %t158 = load float, float* @PI, align 4
  %t159 = load i32, i32* %t451, align 4
  %t161 = sitofp i32 %t159 to float
  %t160 = fdiv float %t158, %t161
  %t165 = sitofp i32 %t696 to float
  %t163 = fdiv float 1.000000, 2.000000
  %t164 = fadd float %t165, %t163
  %t166 = fmul float %t160, %t164
  %t169 = sitofp i32 %t681 to float
  %t168 = fmul float %t166, %t169
  %t170 = call float @my_cos(float %t168)
  %t171 = fmul float %t488, %t170
  %t172 = load float, float* @PI, align 4
  %t173 = load i32, i32* %t452, align 4
  %t175 = sitofp i32 %t173 to float
  %t174 = fdiv float %t172, %t175
  %t179 = sitofp i32 %t710 to float
  %t178 = fadd float %t179, %t163
  %t180 = fmul float %t174, %t178
  %t183 = sitofp i32 %t686 to float
  %t182 = fmul float %t180, %t183
  %t184 = call float @my_cos(float %t182)
  %t185 = fmul float %t171, %t184
  %t186 = fadd float %t485, %t185
  %t151 = getelementptr inbounds [8 x float], [8 x float]* %t483, i32 %t681
  %t490 = getelementptr inbounds [8 x float], [8 x float]* %t151, i32 0, i32 %t686
  store float %t186, float* %t490, align 4
  %t189 = add i32 %t710, 1
  %t492 = load i32, i32* %t452, align 4
  %t493 = icmp slt i32 %t189, %t492
  br i1 %t493, label %B832, label %B496
B482:                               	; preds = %B477
  %t711 = add i32 0, 0
  br label %B479
B508:                               	; preds = %B472
  %t717 = add i32 %t714, 0
  %t700 = add i32 %t697, 0
  %t687 = add i32 %t195, 0
  br label %B463
B496:                               	; preds = %B478
  %t711 = add i32 %t189, 0
  br label %B479
B832:                               	; preds = %B478
  %t710 = add i32 %t189, 0
  br label %B478
B479:                               	; preds = %B482, %B496
  %t192 = add i32 %t696, 1
  %t498 = load i32, i32* %t451, align 4
  %t713 = add i32 %t711, 0
  %t696 = add i32 %t192, 0
  %t499 = icmp slt i32 %t192, %t498
  br i1 %t499, label %B471, label %B502
B502:                               	; preds = %B479
  %t714 = add i32 %t711, 0
  %t697 = add i32 %t192, 0
  br label %B472
}
define void @idct([8 x float]* %t200, [8 x float]* %t203, i32 %t205, i32 %t207) {
B515:
  %t516 = alloca [8 x float]*, align 4
  %t517 = alloca [8 x float]*, align 4
  %t518 = alloca i32, align 4
  %t519 = alloca i32, align 4
  store [8 x float]* %t200, [8 x float]** %t516, align 4
  store [8 x float]* %t203, [8 x float]** %t517, align 4
  store i32 %t205, i32* %t518, align 4
  store i32 %t207, i32* %t519, align 4
  br label %B521
B521:                               	; preds = %B515
  %t211 = load i32, i32* %t518, align 4
  %t774 = add i32 0, 0
  %t751 = add i32 0, 0
  %t738 = add i32 0, 0
  %t729 = add i32 0, 0
  %t212 = icmp slt i32 0, %t211
  br i1 %t212, label %B522, label %B526
B522:                               	; preds = %B521, %B530
  br label %B528
B526:                               	; preds = %B521
  %t773 = add i32 0, 0
  %t750 = add i32 0, 0
  %t737 = add i32 0, 0
  %t728 = add i32 0, 0
  br label %B523
B528:                               	; preds = %B522
  %t215 = load i32, i32* %t519, align 4
  %t770 = add i32 %t774, 0
  %t747 = add i32 %t751, 0
  %t734 = add i32 0, 0
  %t216 = icmp slt i32 0, %t215
  br i1 %t216, label %B529, label %B533
B523:                               	; preds = %B526, %B629
  ret void
B529:                               	; preds = %B528, %B583
  %t221 = sitofp i32 1 to float
  %t220 = fdiv float %t221, 4.000000
  %t534 = load [8 x float]*, [8 x float]** %t517, align 4
  %t222 = getelementptr inbounds [8 x float], [8 x float]* %t534, i32 0
  %t536 = load float, [8 x float]* %t222, align 4
  %t223 = fmul float %t220, %t536
  %t537 = load [8 x float]*, [8 x float]** %t516, align 4
  %t219 = getelementptr inbounds [8 x float], [8 x float]* %t537, i32 %t729
  %t538 = getelementptr inbounds [8 x float], [8 x float]* %t219, i32 0, i32 %t734
  store float %t223, float* %t538, align 4
  br label %B541
B533:                               	; preds = %B528
  %t771 = add i32 %t774, 0
  %t748 = add i32 %t751, 0
  %t735 = add i32 0, 0
  br label %B530
B541:                               	; preds = %B529
  %t228 = load i32, i32* %t518, align 4
  %t758 = add i32 1, 0
  %t229 = icmp slt i32 1, %t228
  br i1 %t229, label %B542, label %B546
B530:                               	; preds = %B533, %B623
  %t335 = add i32 %t729, 1
  %t625 = load i32, i32* %t518, align 4
  %t774 = add i32 %t771, 0
  %t751 = add i32 %t748, 0
  %t738 = add i32 %t735, 0
  %t729 = add i32 %t335, 0
  %t626 = icmp slt i32 %t335, %t625
  br i1 %t626, label %B522, label %B629
B542:                               	; preds = %B541, %B849
  %t547 = load [8 x float]*, [8 x float]** %t516, align 4
  %t235 = getelementptr inbounds [8 x float], [8 x float]* %t547, i32 %t729
  %t548 = getelementptr inbounds [8 x float], [8 x float]* %t235, i32 0, i32 %t734
  %t549 = load float, float* %t548, align 4
  %t237 = sitofp i32 1 to float
  %t236 = fdiv float %t237, 2.000000
  %t550 = load [8 x float]*, [8 x float]** %t517, align 4
  %t239 = getelementptr inbounds [8 x float], [8 x float]* %t550, i32 %t758
  %t551 = getelementptr inbounds [8 x float], [8 x float]* %t239, i32 0, i32 0
  %t552 = load float, float* %t551, align 4
  %t240 = fmul float %t236, %t552
  %t241 = fadd float %t549, %t240
  %t232 = getelementptr inbounds [8 x float], [8 x float]* %t547, i32 %t729
  %t554 = getelementptr inbounds [8 x float], [8 x float]* %t232, i32 0, i32 %t734
  store float %t241, float* %t554, align 4
  %t244 = add i32 %t758, 1
  %t556 = load i32, i32* %t518, align 4
  %t557 = icmp slt i32 %t244, %t556
  br i1 %t557, label %B849, label %B560
B546:                               	; preds = %B541
  %t759 = add i32 1, 0
  br label %B543
B629:                               	; preds = %B530
  %t773 = add i32 %t771, 0
  %t750 = add i32 %t748, 0
  %t737 = add i32 %t735, 0
  %t728 = add i32 %t335, 0
  br label %B523
B560:                               	; preds = %B542
  %t759 = add i32 %t244, 0
  br label %B543
B849:                               	; preds = %B542
  %t758 = add i32 %t244, 0
  br label %B542
B543:                               	; preds = %B546, %B560
  br label %B561
B561:                               	; preds = %B543
  %t247 = load i32, i32* %t519, align 4
  %t782 = add i32 1, 0
  %t248 = icmp slt i32 1, %t247
  br i1 %t248, label %B562, label %B566
B562:                               	; preds = %B561, %B852
  %t567 = load [8 x float]*, [8 x float]** %t516, align 4
  %t254 = getelementptr inbounds [8 x float], [8 x float]* %t567, i32 %t729
  %t568 = getelementptr inbounds [8 x float], [8 x float]* %t254, i32 0, i32 %t734
  %t569 = load float, float* %t568, align 4
  %t256 = sitofp i32 1 to float
  %t255 = fdiv float %t256, 2.000000
  %t570 = load [8 x float]*, [8 x float]** %t517, align 4
  %t258 = getelementptr inbounds [8 x float], [8 x float]* %t570, i32 0
  %t571 = getelementptr inbounds [8 x float], [8 x float]* %t258, i32 0, i32 %t782
  %t572 = load float, float* %t571, align 4
  %t259 = fmul float %t255, %t572
  %t260 = fadd float %t569, %t259
  %t251 = getelementptr inbounds [8 x float], [8 x float]* %t567, i32 %t729
  %t574 = getelementptr inbounds [8 x float], [8 x float]* %t251, i32 0, i32 %t734
  store float %t260, float* %t574, align 4
  %t263 = add i32 %t782, 1
  %t576 = load i32, i32* %t519, align 4
  %t577 = icmp slt i32 %t263, %t576
  br i1 %t577, label %B852, label %B580
B566:                               	; preds = %B561
  %t783 = add i32 1, 0
  br label %B563
B580:                               	; preds = %B562
  %t783 = add i32 %t263, 0
  br label %B563
B852:                               	; preds = %B562
  %t782 = add i32 %t263, 0
  br label %B562
B563:                               	; preds = %B566, %B580
  br label %B581
B581:                               	; preds = %B563
  %t266 = load i32, i32* %t518, align 4
  %t767 = add i32 %t783, 0
  %t744 = add i32 1, 0
  %t267 = icmp slt i32 1, %t266
  br i1 %t267, label %B582, label %B586
B582:                               	; preds = %B581, %B589
  br label %B587
B586:                               	; preds = %B581
  %t768 = add i32 %t783, 0
  %t745 = add i32 1, 0
  br label %B583
B587:                               	; preds = %B582
  %t270 = load i32, i32* %t519, align 4
  %t764 = add i32 1, 0
  %t271 = icmp slt i32 1, %t270
  br i1 %t271, label %B588, label %B592
B583:                               	; preds = %B586, %B612
  %t613 = load [8 x float]*, [8 x float]** %t516, align 4
  %t321 = getelementptr inbounds [8 x float], [8 x float]* %t613, i32 %t729
  %t614 = getelementptr inbounds [8 x float], [8 x float]* %t321, i32 0, i32 %t734
  %t615 = load float, float* %t614, align 4
  %t322 = fmul float %t615, 2.000000
  %t323 = load i32, i32* %t518, align 4
  %t325 = sitofp i32 %t323 to float
  %t324 = fdiv float %t322, %t325
  %t326 = fmul float %t324, 2.000000
  %t327 = load i32, i32* %t519, align 4
  %t329 = sitofp i32 %t327 to float
  %t328 = fdiv float %t326, %t329
  %t318 = getelementptr inbounds [8 x float], [8 x float]* %t613, i32 %t729
  %t617 = getelementptr inbounds [8 x float], [8 x float]* %t318, i32 0, i32 %t734
  store float %t328, float* %t617, align 4
  %t332 = add i32 %t734, 1
  %t619 = load i32, i32* %t519, align 4
  %t770 = add i32 %t768, 0
  %t747 = add i32 %t745, 0
  %t734 = add i32 %t332, 0
  %t620 = icmp slt i32 %t332, %t619
  br i1 %t620, label %B529, label %B623
B588:                               	; preds = %B587, %B859
  %t593 = load [8 x float]*, [8 x float]** %t516, align 4
  %t277 = getelementptr inbounds [8 x float], [8 x float]* %t593, i32 %t729
  %t594 = getelementptr inbounds [8 x float], [8 x float]* %t277, i32 0, i32 %t734
  %t595 = load float, float* %t594, align 4
  %t596 = load [8 x float]*, [8 x float]** %t517, align 4
  %t280 = getelementptr inbounds [8 x float], [8 x float]* %t596, i32 %t744
  %t597 = getelementptr inbounds [8 x float], [8 x float]* %t280, i32 0, i32 %t764
  %t598 = load float, float* %t597, align 4
  %t281 = load float, float* @PI, align 4
  %t282 = load i32, i32* %t518, align 4
  %t284 = sitofp i32 %t282 to float
  %t283 = fdiv float %t281, %t284
  %t288 = sitofp i32 %t729 to float
  %t286 = fdiv float 1.000000, 2.000000
  %t287 = fadd float %t288, %t286
  %t289 = fmul float %t283, %t287
  %t292 = sitofp i32 %t744 to float
  %t291 = fmul float %t289, %t292
  %t293 = call float @my_cos(float %t291)
  %t294 = fmul float %t598, %t293
  %t295 = load float, float* @PI, align 4
  %t296 = load i32, i32* %t519, align 4
  %t298 = sitofp i32 %t296 to float
  %t297 = fdiv float %t295, %t298
  %t302 = sitofp i32 %t734 to float
  %t301 = fadd float %t302, %t286
  %t303 = fmul float %t297, %t301
  %t306 = sitofp i32 %t764 to float
  %t305 = fmul float %t303, %t306
  %t307 = call float @my_cos(float %t305)
  %t308 = fmul float %t294, %t307
  %t309 = fadd float %t595, %t308
  %t274 = getelementptr inbounds [8 x float], [8 x float]* %t593, i32 %t729
  %t600 = getelementptr inbounds [8 x float], [8 x float]* %t274, i32 0, i32 %t734
  store float %t309, float* %t600, align 4
  %t312 = add i32 %t764, 1
  %t602 = load i32, i32* %t519, align 4
  %t603 = icmp slt i32 %t312, %t602
  br i1 %t603, label %B859, label %B606
B592:                               	; preds = %B587
  %t765 = add i32 1, 0
  br label %B589
B623:                               	; preds = %B583
  %t771 = add i32 %t768, 0
  %t748 = add i32 %t745, 0
  %t735 = add i32 %t332, 0
  br label %B530
B606:                               	; preds = %B588
  %t765 = add i32 %t312, 0
  br label %B589
B859:                               	; preds = %B588
  %t764 = add i32 %t312, 0
  br label %B588
B589:                               	; preds = %B592, %B606
  %t315 = add i32 %t744, 1
  %t608 = load i32, i32* %t518, align 4
  %t767 = add i32 %t765, 0
  %t744 = add i32 %t315, 0
  %t609 = icmp slt i32 %t315, %t608
  br i1 %t609, label %B582, label %B612
B612:                               	; preds = %B589
  %t768 = add i32 %t765, 0
  %t745 = add i32 %t315, 0
  br label %B583
}
define i32 @main() {
B630:
  %t336 = call i32 @getint()
  %t338 = call i32 @getint()
  br label %B634
B634:                               	; preds = %B630
  %t801 = add i32 0, 0
  %t791 = add i32 0, 0
  %t343 = icmp slt i32 0, %t336
  br i1 %t343, label %B635, label %B639
B635:                               	; preds = %B634, %B643
  br label %B641
B639:                               	; preds = %B634
  %t800 = add i32 0, 0
  %t790 = add i32 0, 0
  br label %B636
B641:                               	; preds = %B635
  %t797 = add i32 0, 0
  %t347 = icmp slt i32 0, %t338
  br i1 %t347, label %B642, label %B646
B636:                               	; preds = %B639, %B659
  %t358 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_dct, i32 0, i32 0
  %t359 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_block, i32 0, i32 0
  call void @dct([8 x float]* %t358, [8 x float]* %t359, i32 %t336, i32 %t338)
  call void @write_mat([8 x float]* %t358, i32 %t336, i32 %t338)
  %t365 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_idct, i32 0, i32 0
  call void @idct([8 x float]* %t365, [8 x float]* %t358, i32 %t336, i32 %t338)
  call void @write_mat([8 x float]* %t365, i32 %t336, i32 %t338)
  ret i32 0
B642:                               	; preds = %B641, %B866
  %t351 = call float @getfloat()
  %t350 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_block, i32 0, i32 %t791
  %t647 = getelementptr inbounds [8 x float], [8 x float]* %t350, i32 0, i32 %t797
  store float %t351, float* %t647, align 4
  %t354 = add i32 %t797, 1
  %t650 = icmp slt i32 %t354, %t338
  br i1 %t650, label %B866, label %B653
B646:                               	; preds = %B641
  %t796 = add i32 0, 0
  br label %B643
B653:                               	; preds = %B642
  %t796 = add i32 %t354, 0
  br label %B643
B866:                               	; preds = %B642
  %t797 = add i32 %t354, 0
  br label %B642
B643:                               	; preds = %B646, %B653
  %t357 = add i32 %t791, 1
  %t801 = add i32 %t796, 0
  %t791 = add i32 %t357, 0
  %t656 = icmp slt i32 %t357, %t336
  br i1 %t656, label %B635, label %B659
B659:                               	; preds = %B643
  %t800 = add i32 %t796, 0
  %t790 = add i32 %t357, 0
  br label %B636
}
declare void @putfloat(float)
declare void @putch(i32)
declare i32 @getint()
declare float @getfloat()
