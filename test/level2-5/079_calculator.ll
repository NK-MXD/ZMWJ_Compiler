@ints = global [10000 x i32] zeroinitializer, align 4
@intt = global i32 0, align 4
@chas = global [10000 x i32] zeroinitializer, align 4
@chat = global i32 0, align 4
@i = global i32 0, align 4
@ii = global i32 1, align 4
@c = global i32 0, align 4
@get = global [10000 x i32] zeroinitializer, align 4
@get2 = global [10000 x i32] zeroinitializer, align 4
define i32 @isdigit(i32 %t9) {
B390:
  %t391 = alloca i32, align 4
  store i32 %t9, i32* %t391, align 4
  %t11 = load i32, i32* %t391, align 4
  %t12 = icmp sge i32 %t11, 48
  br i1 %t12, label %B394, label %B397
B394:                               	; preds = %B390
  %t13 = load i32, i32* %t391, align 4
  %t14 = icmp sle i32 %t13, 57
  br i1 %t14, label %B392, label %B400
B397:                               	; preds = %B390
  br label %B393
B392:                               	; preds = %B394
  ret i32 1
B400:                               	; preds = %B394
  br label %B393
B393:                               	; preds = %B397, %B400
  ret i32 0
}
define i32 @power(i32 %t16, i32 %t18) {
B401:
  %t402 = alloca i32, align 4
  %t403 = alloca i32, align 4
  store i32 %t16, i32* %t402, align 4
  store i32 %t18, i32* %t403, align 4
  br label %B405
B405:                               	; preds = %B401
  %t21 = load i32, i32* %t403, align 4
  %t1032 = add i32 1, 0
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %B406, label %B410
B406:                               	; preds = %B405, %B1093
  %t25 = load i32, i32* %t402, align 4
  %t26 = mul i32 %t1032, %t25
  %t28 = load i32, i32* %t403, align 4
  %t29 = sub i32 %t28, 1
  store i32 %t29, i32* %t403, align 4
  %t411 = load i32, i32* %t403, align 4
  %t412 = icmp ne i32 %t411, 0
  br i1 %t412, label %B1093, label %B415
B410:                               	; preds = %B405
  %t1031 = add i32 1, 0
  br label %B407
B415:                               	; preds = %B406
  %t1031 = add i32 %t26, 0
  br label %B407
B1093:                               	; preds = %B406
  %t1032 = add i32 %t26, 0
  br label %B406
B407:                               	; preds = %B410, %B415
  ret i32 %t1031
}
define i32 @getstr(i32* %t31) {
B416:
  %t417 = alloca i32*, align 4
  store i32* %t31, i32** %t417, align 4
  %t33 = call i32 @getch()
  br label %B420
B420:                               	; preds = %B416
  %t1044 = add i32 0, 0
  %t1038 = add i32 %t33, 0
  %t37 = icmp ne i32 %t33, 13
  br i1 %t37, label %B436, label %B426
B436:                               	; preds = %B420, %B421
  %t434 = icmp ne i32 %t1038, 10
  br i1 %t434, label %B421, label %B442
B426:                               	; preds = %B420
  %t1043 = add i32 0, 0
  %t1037 = add i32 %t33, 0
  br label %B422
B421:                               	; preds = %B436
  %t430 = load i32*, i32** %t417, align 4
  %t42 = getelementptr inbounds i32, i32* %t430, i32 %t1044
  store i32 %t1038, i32* %t42, align 4
  %t46 = add i32 %t1044, 1
  %t48 = call i32 @getch()
  %t1044 = add i32 %t46, 0
  %t1038 = add i32 %t48, 0
  %t432 = icmp ne i32 %t48, 13
  br i1 %t432, label %B436, label %B439
B442:                               	; preds = %B436
  %t1043 = add i32 %t1044, 0
  %t1037 = add i32 %t1038, 0
  br label %B422
B422:                               	; preds = %B426, %B439, %B442
  ret i32 %t1043
B439:                               	; preds = %B421
  %t1043 = add i32 %t46, 0
  %t1037 = add i32 %t48, 0
  br label %B422
}
define void @intpush(i32 %t50) {
B443:
  %t444 = alloca i32, align 4
  store i32 %t50, i32* %t444, align 4
  %t53 = load i32, i32* @intt, align 4
  %t54 = add i32 %t53, 1
  store i32 %t54, i32* @intt, align 4
  %t57 = load i32, i32* %t444, align 4
  %t55 = load i32, i32* @intt, align 4
  %t56 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t55
  store i32 %t57, i32* %t56, align 4
  ret void
}
define void @chapush(i32 %t58) {
B445:
  %t446 = alloca i32, align 4
  store i32 %t58, i32* %t446, align 4
  %t61 = load i32, i32* @chat, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* @chat, align 4
  %t65 = load i32, i32* %t446, align 4
  %t63 = load i32, i32* @chat, align 4
  %t64 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t63
  store i32 %t65, i32* %t64, align 4
  ret void
}
define i32 @intpop() {
B447:
  %t67 = load i32, i32* @intt, align 4
  %t68 = sub i32 %t67, 1
  store i32 %t68, i32* @intt, align 4
  %t69 = load i32, i32* @intt, align 4
  %t70 = add i32 %t69, 1
  %t71 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t70
  %t448 = load i32, i32* %t71, align 4
  ret i32 %t448
}
define i32 @chapop() {
B449:
  %t73 = load i32, i32* @chat, align 4
  %t74 = sub i32 %t73, 1
  store i32 %t74, i32* @chat, align 4
  %t75 = load i32, i32* @chat, align 4
  %t76 = add i32 %t75, 1
  %t77 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t76
  %t450 = load i32, i32* %t77, align 4
  ret i32 %t450
}
define void @intadd(i32 %t78) {
B451:
  %t452 = alloca i32, align 4
  store i32 %t78, i32* %t452, align 4
  %t82 = load i32, i32* @intt, align 4
  %t83 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t82
  %t453 = load i32, i32* %t83, align 4
  %t84 = mul i32 %t453, 10
  %t80 = load i32, i32* @intt, align 4
  %t81 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t80
  store i32 %t84, i32* %t81, align 4
  %t87 = load i32, i32* @intt, align 4
  %t88 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t87
  %t454 = load i32, i32* %t88, align 4
  %t89 = load i32, i32* %t452, align 4
  %t90 = add i32 %t454, %t89
  %t85 = load i32, i32* @intt, align 4
  %t86 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t85
  store i32 %t90, i32* %t86, align 4
  ret void
}
define i32 @find() {
B455:
  %t92 = call i32 @chapop()
  store i32 %t92, i32* @c, align 4
  %t93 = load i32, i32* @ii, align 4
  %t94 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t93
  store i32 32, i32* %t94, align 4
  %t98 = load i32, i32* @c, align 4
  %t95 = load i32, i32* @ii, align 4
  %t96 = add i32 %t95, 1
  %t97 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t96
  store i32 %t98, i32* %t97, align 4
  %t100 = load i32, i32* @ii, align 4
  %t101 = add i32 %t100, 2
  store i32 %t101, i32* @ii, align 4
  %t102 = load i32, i32* @chat, align 4
  %t103 = icmp eq i32 %t102, 0
  br i1 %t103, label %B456, label %B460
B456:                               	; preds = %B455
  ret i32 0
B460:                               	; preds = %B455
  br label %B457
B457:                               	; preds = %B460
  ret i32 1
}
define i32 @main() {
B461:
  store i32 0, i32* @intt, align 4
  store i32 0, i32* @chat, align 4
  %t106 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 0
  %t107 = call i32 @getstr(i32* %t106)
  br label %B463
B463:                               	; preds = %B461
  %t109 = load i32, i32* @i, align 4
  %t111 = icmp slt i32 %t109, %t107
  br i1 %t111, label %B464, label %B468
B464:                               	; preds = %B463, %B471
  %t112 = load i32, i32* @i, align 4
  %t113 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t112
  %t472 = load i32, i32* %t113, align 4
  %t114 = call i32 @isdigit(i32 %t472)
  %t115 = icmp eq i32 %t114, 1
  br i1 %t115, label %B469, label %B475
B468:                               	; preds = %B463
  br label %B465
B469:                               	; preds = %B464
  %t118 = load i32, i32* @i, align 4
  %t119 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t118
  %t476 = load i32, i32* %t119, align 4
  %t116 = load i32, i32* @ii, align 4
  %t117 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t116
  store i32 %t476, i32* %t117, align 4
  %t121 = load i32, i32* @ii, align 4
  %t122 = add i32 %t121, 1
  store i32 %t122, i32* @ii, align 4
  br label %B471
B475:                               	; preds = %B464
  br label %B470
B465:                               	; preds = %B468, %B907
  br label %B908
B471:                               	; preds = %B469, %B835
  %t269 = load i32, i32* @i, align 4
  %t270 = add i32 %t269, 1
  store i32 %t270, i32* @i, align 4
  %t902 = load i32, i32* @i, align 4
  %t904 = icmp slt i32 %t902, %t107
  br i1 %t904, label %B464, label %B907
B470:                               	; preds = %B475
  %t123 = load i32, i32* @i, align 4
  %t124 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t123
  %t479 = load i32, i32* %t124, align 4
  %t125 = icmp eq i32 %t479, 40
  br i1 %t125, label %B477, label %B482
B908:                               	; preds = %B465
  %t271 = load i32, i32* @chat, align 4
  %t1050 = add i32 0, 0
  %t272 = icmp sgt i32 %t271, 0
  br i1 %t272, label %B909, label %B913
B907:                               	; preds = %B471
  br label %B465
B477:                               	; preds = %B470
  call void @chapush(i32 40)
  br label %B478
B482:                               	; preds = %B470
  br label %B478
B909:                               	; preds = %B908, %B1100
  %t273 = call i32 @chapop()
  %t275 = load i32, i32* @ii, align 4
  %t276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t275
  store i32 32, i32* %t276, align 4
  %t277 = load i32, i32* @ii, align 4
  %t278 = add i32 %t277, 1
  %t279 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t278
  store i32 %t273, i32* %t279, align 4
  %t282 = load i32, i32* @ii, align 4
  %t283 = add i32 %t282, 2
  store i32 %t283, i32* @ii, align 4
  %t915 = load i32, i32* @chat, align 4
  %t916 = icmp sgt i32 %t915, 0
  br i1 %t916, label %B1100, label %B919
B913:                               	; preds = %B908
  %t1051 = add i32 0, 0
  br label %B910
B478:                               	; preds = %B477, %B482
  %t126 = load i32, i32* @i, align 4
  %t127 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t126
  %t485 = load i32, i32* %t127, align 4
  %t128 = icmp eq i32 %t485, 94
  br i1 %t128, label %B483, label %B488
B919:                               	; preds = %B909
  %t1051 = add i32 %t273, 0
  br label %B910
B1100:                               	; preds = %B909
  %t1050 = add i32 %t273, 0
  br label %B909
B910:                               	; preds = %B913, %B919
  %t284 = load i32, i32* @ii, align 4
  %t285 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t284
  store i32 64, i32* %t285, align 4
  store i32 1, i32* @i, align 4
  br label %B920
B483:                               	; preds = %B478
  call void @chapush(i32 94)
  br label %B484
B488:                               	; preds = %B478
  br label %B484
B920:                               	; preds = %B910
  %t287 = load i32, i32* @i, align 4
  %t288 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t287
  %t923 = load i32, i32* %t288, align 4
  %t1073 = add i32 0, 0
  %t1064 = add i32 0, 0
  %t1057 = add i32 0, 0
  %t289 = icmp ne i32 %t923, 64
  br i1 %t289, label %B921, label %B926
B484:                               	; preds = %B483, %B488
  %t129 = load i32, i32* @i, align 4
  %t130 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t129
  %t491 = load i32, i32* %t130, align 4
  %t131 = icmp eq i32 %t491, 41
  br i1 %t131, label %B489, label %B494
B921:                               	; preds = %B920, %B929
  %t290 = load i32, i32* @i, align 4
  %t291 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t290
  %t935 = load i32, i32* %t291, align 4
  %t292 = icmp eq i32 %t935, 43
  br i1 %t292, label %B927, label %B938
B926:                               	; preds = %B920
  %t1074 = add i32 0, 0
  %t1065 = add i32 0, 0
  %t1058 = add i32 0, 0
  br label %B922
B489:                               	; preds = %B484
  %t133 = call i32 @chapop()
  store i32 %t133, i32* @c, align 4
  br label %B495
B494:                               	; preds = %B484
  br label %B490
B927:                               	; preds = %B921, %B930, %B931, %B932, %B933, %B934
  %t313 = call i32 @intpop()
  %t315 = call i32 @intpop()
  %t318 = load i32, i32* @i, align 4
  %t319 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t318
  %t964 = load i32, i32* %t319, align 4
  %t320 = icmp eq i32 %t964, 43
  br i1 %t320, label %B962, label %B967
B938:                               	; preds = %B921
  br label %B934
B922:                               	; preds = %B926, %B1028
  %t389 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 1
  %t1029 = load i32, i32* %t389, align 4
  call void @putint(i32 %t1029)
  ret i32 0
B495:                               	; preds = %B489
  %t134 = load i32, i32* @c, align 4
  %t135 = icmp ne i32 %t134, 40
  br i1 %t135, label %B496, label %B500
B490:                               	; preds = %B494, %B497
  %t147 = load i32, i32* @i, align 4
  %t148 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t147
  %t508 = load i32, i32* %t148, align 4
  %t149 = icmp eq i32 %t508, 43
  br i1 %t149, label %B506, label %B511
B962:                               	; preds = %B927
  %t324 = add i32 %t313, %t315
  %t1090 = add i32 %t324, 0
  br label %B963
B967:                               	; preds = %B927
  %t1090 = add i32 %t1073, 0
  br label %B963
B934:                               	; preds = %B938
  %t293 = load i32, i32* @i, align 4
  %t294 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t293
  %t939 = load i32, i32* %t294, align 4
  %t295 = icmp eq i32 %t939, 45
  br i1 %t295, label %B927, label %B942
B496:                               	; preds = %B495, %B496
  %t136 = load i32, i32* @ii, align 4
  %t137 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t136
  store i32 32, i32* %t137, align 4
  %t141 = load i32, i32* @c, align 4
  %t138 = load i32, i32* @ii, align 4
  %t139 = add i32 %t138, 1
  %t140 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t139
  store i32 %t141, i32* %t140, align 4
  %t143 = load i32, i32* @ii, align 4
  %t144 = add i32 %t143, 2
  store i32 %t144, i32* @ii, align 4
  %t146 = call i32 @chapop()
  store i32 %t146, i32* @c, align 4
  %t501 = load i32, i32* @c, align 4
  %t502 = icmp ne i32 %t501, 40
  br i1 %t502, label %B496, label %B505
B500:                               	; preds = %B495
  br label %B497
B506:                               	; preds = %B490
  br label %B512
B511:                               	; preds = %B490
  br label %B507
B963:                               	; preds = %B962, %B967
  %t325 = load i32, i32* @i, align 4
  %t326 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t325
  %t970 = load i32, i32* %t326, align 4
  %t327 = icmp eq i32 %t970, 45
  br i1 %t327, label %B968, label %B973
B942:                               	; preds = %B934
  br label %B933
B505:                               	; preds = %B496
  br label %B497
B497:                               	; preds = %B500, %B505
  br label %B490
B512:                               	; preds = %B506
  %t150 = load i32, i32* @chat, align 4
  %t151 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t150
  %t520 = load i32, i32* %t151, align 4
  %t152 = icmp eq i32 %t520, 43
  br i1 %t152, label %B513, label %B523
B507:                               	; preds = %B511, %B514
  %t175 = load i32, i32* @i, align 4
  %t176 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t175
  %t604 = load i32, i32* %t176, align 4
  %t177 = icmp eq i32 %t604, 45
  br i1 %t177, label %B602, label %B607
B968:                               	; preds = %B963
  %t331 = sub i32 %t315, %t313
  %t1087 = add i32 %t331, 0
  br label %B969
B973:                               	; preds = %B963
  %t1087 = add i32 %t1090, 0
  br label %B969
B933:                               	; preds = %B942
  %t297 = load i32, i32* @i, align 4
  %t298 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t297
  %t943 = load i32, i32* %t298, align 4
  %t299 = icmp eq i32 %t943, 42
  br i1 %t299, label %B927, label %B946
B513:                               	; preds = %B512, %B545, %B573, %B574, %B575, %B576, %B577
  %t173 = call i32 @find()
  %t174 = icmp eq i32 %t173, 0
  br i1 %t174, label %B544, label %B548
B523:                               	; preds = %B512
  br label %B577
B602:                               	; preds = %B507
  br label %B608
B607:                               	; preds = %B507
  br label %B603
B969:                               	; preds = %B968, %B973
  %t332 = load i32, i32* @i, align 4
  %t333 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t332
  %t976 = load i32, i32* %t333, align 4
  %t334 = icmp eq i32 %t976, 42
  br i1 %t334, label %B974, label %B979
B946:                               	; preds = %B933
  br label %B932
B544:                               	; preds = %B513
  br label %B514
B548:                               	; preds = %B513
  br label %B545
B577:                               	; preds = %B523, %B581
  %t553 = load i32, i32* @chat, align 4
  %t554 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t553
  %t582 = load i32, i32* %t554, align 4
  %t555 = icmp eq i32 %t582, 45
  br i1 %t555, label %B513, label %B585
B608:                               	; preds = %B602
  %t178 = load i32, i32* @chat, align 4
  %t179 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t178
  %t616 = load i32, i32* %t179, align 4
  %t180 = icmp eq i32 %t616, 43
  br i1 %t180, label %B609, label %B619
B603:                               	; preds = %B607, %B610
  %t203 = load i32, i32* @i, align 4
  %t204 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t203
  %t700 = load i32, i32* %t204, align 4
  %t205 = icmp eq i32 %t700, 42
  br i1 %t205, label %B698, label %B703
B974:                               	; preds = %B969
  %t338 = mul i32 %t313, %t315
  %t1084 = add i32 %t338, 0
  br label %B975
B979:                               	; preds = %B969
  %t1084 = add i32 %t1087, 0
  br label %B975
B932:                               	; preds = %B946
  %t301 = load i32, i32* @i, align 4
  %t302 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t301
  %t947 = load i32, i32* %t302, align 4
  %t303 = icmp eq i32 %t947, 47
  br i1 %t303, label %B927, label %B950
B514:                               	; preds = %B544, %B601
  call void @chapush(i32 43)
  br label %B507
B545:                               	; preds = %B548
  %t550 = load i32, i32* @chat, align 4
  %t551 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t550
  %t578 = load i32, i32* %t551, align 4
  %t552 = icmp eq i32 %t578, 43
  br i1 %t552, label %B513, label %B581
B585:                               	; preds = %B577
  br label %B576
B609:                               	; preds = %B608, %B641, %B669, %B670, %B671, %B672, %B673
  %t201 = call i32 @find()
  %t202 = icmp eq i32 %t201, 0
  br i1 %t202, label %B640, label %B644
B619:                               	; preds = %B608
  br label %B673
B698:                               	; preds = %B603
  br label %B704
B703:                               	; preds = %B603
  br label %B699
B975:                               	; preds = %B974, %B979
  %t339 = load i32, i32* @i, align 4
  %t340 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t339
  %t982 = load i32, i32* %t340, align 4
  %t341 = icmp eq i32 %t982, 47
  br i1 %t341, label %B980, label %B985
B950:                               	; preds = %B932
  br label %B931
B581:                               	; preds = %B545
  br label %B577
B576:                               	; preds = %B585
  %t557 = load i32, i32* @chat, align 4
  %t558 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t557
  %t586 = load i32, i32* %t558, align 4
  %t559 = icmp eq i32 %t586, 42
  br i1 %t559, label %B513, label %B589
B640:                               	; preds = %B609
  br label %B610
B644:                               	; preds = %B609
  br label %B641
B673:                               	; preds = %B619, %B677
  %t649 = load i32, i32* @chat, align 4
  %t650 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t649
  %t678 = load i32, i32* %t650, align 4
  %t651 = icmp eq i32 %t678, 45
  br i1 %t651, label %B609, label %B681
B704:                               	; preds = %B698
  %t206 = load i32, i32* @chat, align 4
  %t207 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t206
  %t710 = load i32, i32* %t207, align 4
  %t208 = icmp eq i32 %t710, 42
  br i1 %t208, label %B705, label %B713
B699:                               	; preds = %B703, %B706
  %t223 = load i32, i32* @i, align 4
  %t224 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t223
  %t768 = load i32, i32* %t224, align 4
  %t225 = icmp eq i32 %t768, 47
  br i1 %t225, label %B766, label %B771
B980:                               	; preds = %B975
  %t345 = sdiv i32 %t315, %t313
  %t1081 = add i32 %t345, 0
  br label %B981
B985:                               	; preds = %B975
  %t1081 = add i32 %t1084, 0
  br label %B981
B931:                               	; preds = %B950
  %t305 = load i32, i32* @i, align 4
  %t306 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t305
  %t951 = load i32, i32* %t306, align 4
  %t307 = icmp eq i32 %t951, 37
  br i1 %t307, label %B927, label %B954
B589:                               	; preds = %B576
  br label %B575
B610:                               	; preds = %B640, %B697
  call void @chapush(i32 45)
  br label %B603
B641:                               	; preds = %B644
  %t646 = load i32, i32* @chat, align 4
  %t647 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t646
  %t674 = load i32, i32* %t647, align 4
  %t648 = icmp eq i32 %t674, 43
  br i1 %t648, label %B609, label %B677
B681:                               	; preds = %B673
  br label %B672
B705:                               	; preds = %B704, %B727, %B747, %B748, %B749
  %t221 = call i32 @find()
  %t222 = icmp eq i32 %t221, 0
  br i1 %t222, label %B726, label %B730
B713:                               	; preds = %B704
  br label %B749
B766:                               	; preds = %B699
  br label %B772
B771:                               	; preds = %B699
  br label %B767
B981:                               	; preds = %B980, %B985
  %t346 = load i32, i32* @i, align 4
  %t347 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t346
  %t988 = load i32, i32* %t347, align 4
  %t348 = icmp eq i32 %t988, 37
  br i1 %t348, label %B986, label %B991
B954:                               	; preds = %B931
  br label %B930
B575:                               	; preds = %B589
  %t561 = load i32, i32* @chat, align 4
  %t562 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t561
  %t590 = load i32, i32* %t562, align 4
  %t563 = icmp eq i32 %t590, 47
  br i1 %t563, label %B513, label %B593
B677:                               	; preds = %B641
  br label %B673
B672:                               	; preds = %B681
  %t653 = load i32, i32* @chat, align 4
  %t654 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t653
  %t682 = load i32, i32* %t654, align 4
  %t655 = icmp eq i32 %t682, 42
  br i1 %t655, label %B609, label %B685
B726:                               	; preds = %B705
  br label %B706
B730:                               	; preds = %B705
  br label %B727
B749:                               	; preds = %B713, %B753
  %t735 = load i32, i32* @chat, align 4
  %t736 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t735
  %t754 = load i32, i32* %t736, align 4
  %t737 = icmp eq i32 %t754, 47
  br i1 %t737, label %B705, label %B757
B772:                               	; preds = %B766
  %t226 = load i32, i32* @chat, align 4
  %t227 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t226
  %t778 = load i32, i32* %t227, align 4
  %t228 = icmp eq i32 %t778, 42
  br i1 %t228, label %B773, label %B781
B767:                               	; preds = %B771, %B774
  %t243 = load i32, i32* @i, align 4
  %t244 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t243
  %t836 = load i32, i32* %t244, align 4
  %t245 = icmp eq i32 %t836, 37
  br i1 %t245, label %B834, label %B839
B986:                               	; preds = %B981
  %t352 = srem i32 %t315, %t313
  %t1078 = add i32 %t352, 0
  br label %B987
B991:                               	; preds = %B981
  %t1078 = add i32 %t1081, 0
  br label %B987
B930:                               	; preds = %B954
  %t309 = load i32, i32* @i, align 4
  %t310 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t309
  %t955 = load i32, i32* %t310, align 4
  %t311 = icmp eq i32 %t955, 94
  br i1 %t311, label %B927, label %B958
B593:                               	; preds = %B575
  br label %B574
B685:                               	; preds = %B672
  br label %B671
B706:                               	; preds = %B726, %B765
  call void @chapush(i32 42)
  br label %B699
B727:                               	; preds = %B730
  %t732 = load i32, i32* @chat, align 4
  %t733 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t732
  %t750 = load i32, i32* %t733, align 4
  %t734 = icmp eq i32 %t750, 42
  br i1 %t734, label %B705, label %B753
B757:                               	; preds = %B749
  br label %B748
B773:                               	; preds = %B772, %B795, %B815, %B816, %B817
  %t241 = call i32 @find()
  %t242 = icmp eq i32 %t241, 0
  br i1 %t242, label %B794, label %B798
B781:                               	; preds = %B772
  br label %B817
B834:                               	; preds = %B767
  br label %B840
B839:                               	; preds = %B767
  br label %B835
B987:                               	; preds = %B986, %B991
  %t353 = load i32, i32* @i, align 4
  %t354 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t353
  %t994 = load i32, i32* %t354, align 4
  %t355 = icmp eq i32 %t994, 94
  br i1 %t355, label %B992, label %B997
B958:                               	; preds = %B930
  br label %B928
B574:                               	; preds = %B593
  %t565 = load i32, i32* @chat, align 4
  %t566 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t565
  %t594 = load i32, i32* %t566, align 4
  %t567 = icmp eq i32 %t594, 37
  br i1 %t567, label %B513, label %B597
B671:                               	; preds = %B685
  %t657 = load i32, i32* @chat, align 4
  %t658 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t657
  %t686 = load i32, i32* %t658, align 4
  %t659 = icmp eq i32 %t686, 47
  br i1 %t659, label %B609, label %B689
B753:                               	; preds = %B727
  br label %B749
B748:                               	; preds = %B757
  %t739 = load i32, i32* @chat, align 4
  %t740 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t739
  %t758 = load i32, i32* %t740, align 4
  %t741 = icmp eq i32 %t758, 37
  br i1 %t741, label %B705, label %B761
B794:                               	; preds = %B773
  br label %B774
B798:                               	; preds = %B773
  br label %B795
B817:                               	; preds = %B781, %B821
  %t803 = load i32, i32* @chat, align 4
  %t804 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t803
  %t822 = load i32, i32* %t804, align 4
  %t805 = icmp eq i32 %t822, 47
  br i1 %t805, label %B773, label %B825
B840:                               	; preds = %B834
  %t246 = load i32, i32* @chat, align 4
  %t247 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t246
  %t846 = load i32, i32* %t247, align 4
  %t248 = icmp eq i32 %t846, 42
  br i1 %t248, label %B841, label %B849
B835:                               	; preds = %B839, %B842
  %t263 = load i32, i32* @ii, align 4
  %t264 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t263
  store i32 32, i32* %t264, align 4
  %t266 = load i32, i32* @ii, align 4
  %t267 = add i32 %t266, 1
  store i32 %t267, i32* @ii, align 4
  br label %B471
B992:                               	; preds = %B987
  %t359 = call i32 @power(i32 %t315, i32 %t313)
  %t1069 = add i32 %t359, 0
  br label %B993
B997:                               	; preds = %B987
  %t1069 = add i32 %t1078, 0
  br label %B993
B928:                               	; preds = %B958
  %t361 = load i32, i32* @i, align 4
  %t362 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t361
  %t1000 = load i32, i32* %t362, align 4
  %t363 = icmp ne i32 %t1000, 32
  br i1 %t363, label %B998, label %B1003
B597:                               	; preds = %B574
  br label %B573
B689:                               	; preds = %B671
  br label %B670
B761:                               	; preds = %B748
  br label %B747
B774:                               	; preds = %B794, %B833
  call void @chapush(i32 47)
  br label %B767
B795:                               	; preds = %B798
  %t800 = load i32, i32* @chat, align 4
  %t801 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t800
  %t818 = load i32, i32* %t801, align 4
  %t802 = icmp eq i32 %t818, 42
  br i1 %t802, label %B773, label %B821
B825:                               	; preds = %B817
  br label %B816
B841:                               	; preds = %B840, %B863, %B883, %B884, %B885
  %t261 = call i32 @find()
  %t262 = icmp eq i32 %t261, 0
  br i1 %t262, label %B862, label %B866
B849:                               	; preds = %B840
  br label %B885
B993:                               	; preds = %B992, %B997
  call void @intpush(i32 %t1069)
  %t1071 = add i32 %t1069, 0
  %t1062 = add i32 %t315, 0
  %t1055 = add i32 %t313, 0
  br label %B929
B998:                               	; preds = %B928
  %t364 = load i32, i32* @i, align 4
  %t365 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t364
  %t1004 = load i32, i32* %t365, align 4
  %t366 = sub i32 %t1004, 48
  call void @intpush(i32 %t366)
  store i32 1, i32* @ii, align 4
  br label %B1005
B1003:                               	; preds = %B928
  br label %B999
B573:                               	; preds = %B597
  %t569 = load i32, i32* @chat, align 4
  %t570 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t569
  %t598 = load i32, i32* %t570, align 4
  %t571 = icmp eq i32 %t598, 94
  br i1 %t571, label %B513, label %B601
B670:                               	; preds = %B689
  %t661 = load i32, i32* @chat, align 4
  %t662 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t661
  %t690 = load i32, i32* %t662, align 4
  %t663 = icmp eq i32 %t690, 37
  br i1 %t663, label %B609, label %B693
B747:                               	; preds = %B761
  %t743 = load i32, i32* @chat, align 4
  %t744 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t743
  %t762 = load i32, i32* %t744, align 4
  %t745 = icmp eq i32 %t762, 94
  br i1 %t745, label %B705, label %B765
B821:                               	; preds = %B795
  br label %B817
B816:                               	; preds = %B825
  %t807 = load i32, i32* @chat, align 4
  %t808 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t807
  %t826 = load i32, i32* %t808, align 4
  %t809 = icmp eq i32 %t826, 37
  br i1 %t809, label %B773, label %B829
B862:                               	; preds = %B841
  br label %B842
B866:                               	; preds = %B841
  br label %B863
B885:                               	; preds = %B849, %B889
  %t871 = load i32, i32* @chat, align 4
  %t872 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t871
  %t890 = load i32, i32* %t872, align 4
  %t873 = icmp eq i32 %t890, 47
  br i1 %t873, label %B841, label %B893
B929:                               	; preds = %B993, %B999
  %t387 = load i32, i32* @i, align 4
  %t388 = add i32 %t387, 1
  store i32 %t388, i32* @i, align 4
  %t1022 = load i32, i32* @i, align 4
  %t1023 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t1022
  %t1025 = load i32, i32* %t1023, align 4
  %t1073 = add i32 %t1071, 0
  %t1064 = add i32 %t1062, 0
  %t1057 = add i32 %t1055, 0
  %t1024 = icmp ne i32 %t1025, 64
  br i1 %t1024, label %B921, label %B1028
B1005:                               	; preds = %B998
  %t368 = load i32, i32* @i, align 4
  %t369 = load i32, i32* @ii, align 4
  %t370 = add i32 %t368, %t369
  %t371 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t370
  %t1008 = load i32, i32* %t371, align 4
  %t372 = icmp ne i32 %t1008, 32
  br i1 %t372, label %B1006, label %B1011
B999:                               	; preds = %B1003, %B1007
  %t1071 = add i32 %t1073, 0
  %t1062 = add i32 %t1064, 0
  %t1055 = add i32 %t1057, 0
  br label %B929
B601:                               	; preds = %B573
  br label %B514
B693:                               	; preds = %B670
  br label %B669
B765:                               	; preds = %B747
  br label %B706
B829:                               	; preds = %B816
  br label %B815
B842:                               	; preds = %B862, %B901
  call void @chapush(i32 37)
  br label %B835
B863:                               	; preds = %B866
  %t868 = load i32, i32* @chat, align 4
  %t869 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t868
  %t886 = load i32, i32* %t869, align 4
  %t870 = icmp eq i32 %t886, 42
  br i1 %t870, label %B841, label %B889
B893:                               	; preds = %B885
  br label %B884
B1028:                               	; preds = %B929
  %t1074 = add i32 %t1071, 0
  %t1065 = add i32 %t1062, 0
  %t1058 = add i32 %t1055, 0
  br label %B922
B1006:                               	; preds = %B1005, %B1006
  %t373 = load i32, i32* @i, align 4
  %t374 = load i32, i32* @ii, align 4
  %t375 = add i32 %t373, %t374
  %t376 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t375
  %t1012 = load i32, i32* %t376, align 4
  %t377 = sub i32 %t1012, 48
  call void @intadd(i32 %t377)
  %t379 = load i32, i32* @ii, align 4
  %t380 = add i32 %t379, 1
  store i32 %t380, i32* @ii, align 4
  %t1013 = load i32, i32* @i, align 4
  %t1014 = load i32, i32* @ii, align 4
  %t1015 = add i32 %t1013, %t1014
  %t1016 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t1015
  %t1018 = load i32, i32* %t1016, align 4
  %t1017 = icmp ne i32 %t1018, 32
  br i1 %t1017, label %B1006, label %B1021
B1011:                               	; preds = %B1005
  br label %B1007
B669:                               	; preds = %B693
  %t665 = load i32, i32* @chat, align 4
  %t666 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t665
  %t694 = load i32, i32* %t666, align 4
  %t667 = icmp eq i32 %t694, 94
  br i1 %t667, label %B609, label %B697
B815:                               	; preds = %B829
  %t811 = load i32, i32* @chat, align 4
  %t812 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t811
  %t830 = load i32, i32* %t812, align 4
  %t813 = icmp eq i32 %t830, 94
  br i1 %t813, label %B773, label %B833
B889:                               	; preds = %B863
  br label %B885
B884:                               	; preds = %B893
  %t875 = load i32, i32* @chat, align 4
  %t876 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t875
  %t894 = load i32, i32* %t876, align 4
  %t877 = icmp eq i32 %t894, 37
  br i1 %t877, label %B841, label %B897
B1021:                               	; preds = %B1006
  br label %B1007
B1007:                               	; preds = %B1011, %B1021
  %t382 = load i32, i32* @i, align 4
  %t383 = load i32, i32* @ii, align 4
  %t384 = add i32 %t382, %t383
  %t385 = sub i32 %t384, 1
  store i32 %t385, i32* @i, align 4
  br label %B999
B697:                               	; preds = %B669
  br label %B610
B833:                               	; preds = %B815
  br label %B774
B897:                               	; preds = %B884
  br label %B883
B883:                               	; preds = %B897
  %t879 = load i32, i32* @chat, align 4
  %t880 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t879
  %t898 = load i32, i32* %t880, align 4
  %t881 = icmp eq i32 %t898, 94
  br i1 %t881, label %B841, label %B901
B901:                               	; preds = %B883
  br label %B842
}
declare i32 @getch()
declare void @putint(i32)
