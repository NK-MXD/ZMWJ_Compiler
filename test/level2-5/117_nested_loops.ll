@arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer, align 4
@arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer, align 4
define void @loop1(i32 %t2, i32 %t4) {
B284:
  %t285 = alloca i32, align 4
  %t286 = alloca i32, align 4
  %t287 = alloca i32, align 4
  %t288 = alloca i32, align 4
  %t289 = alloca i32, align 4
  %t290 = alloca i32, align 4
  %t291 = alloca i32, align 4
  %t292 = alloca i32, align 4
  %t293 = alloca i32, align 4
  store i32 %t2, i32* %t285, align 4
  store i32 %t4, i32* %t286, align 4
  store i32 0, i32* %t287, align 4
  br label %B294
B294:                               	; preds = %B284, %B306
  %t14 = load i32, i32* %t287, align 4
  %t15 = load i32, i32* %t285, align 4
  %t16 = icmp slt i32 %t14, %t15
  br i1 %t16, label %B297, label %B300
B297:                               	; preds = %B294
  %t17 = load i32, i32* %t287, align 4
  %t18 = load i32, i32* %t286, align 4
  %t19 = icmp slt i32 %t17, %t18
  br i1 %t19, label %B295, label %B303
B300:                               	; preds = %B294
  br label %B296
B295:                               	; preds = %B297
  store i32 0, i32* %t288, align 4
  br label %B304
B303:                               	; preds = %B297
  br label %B296
B296:                               	; preds = %B300, %B303
  ret void
B304:                               	; preds = %B295, %B312
  %t22 = load i32, i32* %t288, align 4
  %t23 = icmp slt i32 %t22, 2
  br i1 %t23, label %B305, label %B309
B305:                               	; preds = %B304
  store i32 0, i32* %t289, align 4
  br label %B310
B309:                               	; preds = %B304
  br label %B306
B310:                               	; preds = %B305, %B318
  %t25 = load i32, i32* %t289, align 4
  %t26 = icmp slt i32 %t25, 3
  br i1 %t26, label %B311, label %B315
B306:                               	; preds = %B309
  %t83 = load i32, i32* %t287, align 4
  %t84 = add i32 %t83, 1
  store i32 %t84, i32* %t287, align 4
  br label %B294
B311:                               	; preds = %B310
  store i32 0, i32* %t290, align 4
  br label %B316
B315:                               	; preds = %B310
  br label %B312
B316:                               	; preds = %B311, %B324
  %t28 = load i32, i32* %t290, align 4
  %t29 = icmp slt i32 %t28, 4
  br i1 %t29, label %B317, label %B321
B312:                               	; preds = %B315
  %t80 = load i32, i32* %t288, align 4
  %t81 = add i32 %t80, 1
  store i32 %t81, i32* %t288, align 4
  br label %B304
B317:                               	; preds = %B316
  store i32 0, i32* %t291, align 4
  br label %B322
B321:                               	; preds = %B316
  br label %B318
B322:                               	; preds = %B317, %B330
  %t31 = load i32, i32* %t291, align 4
  %t32 = icmp slt i32 %t31, 5
  br i1 %t32, label %B323, label %B327
B318:                               	; preds = %B321
  %t77 = load i32, i32* %t289, align 4
  %t78 = add i32 %t77, 1
  store i32 %t78, i32* %t289, align 4
  br label %B310
B323:                               	; preds = %B322
  store i32 0, i32* %t292, align 4
  br label %B328
B327:                               	; preds = %B322
  br label %B324
B328:                               	; preds = %B323, %B336
  %t34 = load i32, i32* %t292, align 4
  %t35 = icmp slt i32 %t34, 6
  br i1 %t35, label %B329, label %B333
B324:                               	; preds = %B327
  %t74 = load i32, i32* %t290, align 4
  %t75 = add i32 %t74, 1
  store i32 %t75, i32* %t290, align 4
  br label %B316
B329:                               	; preds = %B328
  store i32 0, i32* %t293, align 4
  br label %B334
B333:                               	; preds = %B328
  br label %B330
B334:                               	; preds = %B329, %B335
  %t37 = load i32, i32* %t293, align 4
  %t38 = icmp slt i32 %t37, 2
  br i1 %t38, label %B335, label %B339
B330:                               	; preds = %B333
  %t71 = load i32, i32* %t291, align 4
  %t72 = add i32 %t71, 1
  store i32 %t72, i32* %t291, align 4
  br label %B322
B335:                               	; preds = %B334
  %t47 = load i32, i32* %t287, align 4
  %t48 = load i32, i32* %t288, align 4
  %t49 = add i32 %t47, %t48
  %t50 = load i32, i32* %t289, align 4
  %t51 = add i32 %t49, %t50
  %t52 = load i32, i32* %t290, align 4
  %t53 = add i32 %t51, %t52
  %t54 = load i32, i32* %t291, align 4
  %t55 = add i32 %t53, %t54
  %t56 = load i32, i32* %t292, align 4
  %t57 = add i32 %t55, %t56
  %t58 = load i32, i32* %t293, align 4
  %t59 = add i32 %t57, %t58
  %t60 = load i32, i32* %t285, align 4
  %t61 = add i32 %t59, %t60
  %t62 = load i32, i32* %t286, align 4
  %t63 = add i32 %t61, %t62
  %t39 = load i32, i32* %t287, align 4
  %t46 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %t39
  %t40 = load i32, i32* %t288, align 4
  %t340 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %t46, i32 0, i32 %t40
  %t41 = load i32, i32* %t289, align 4
  %t341 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %t340, i32 0, i32 %t41
  %t42 = load i32, i32* %t290, align 4
  %t342 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %t341, i32 0, i32 %t42
  %t43 = load i32, i32* %t291, align 4
  %t343 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %t342, i32 0, i32 %t43
  %t44 = load i32, i32* %t292, align 4
  %t344 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %t343, i32 0, i32 %t44
  %t45 = load i32, i32* %t293, align 4
  %t345 = getelementptr inbounds [2 x i32], [2 x i32]* %t344, i32 0, i32 %t45
  store i32 %t63, i32* %t345, align 4
  %t65 = load i32, i32* %t293, align 4
  %t66 = add i32 %t65, 1
  store i32 %t66, i32* %t293, align 4
  br label %B334
B339:                               	; preds = %B334
  br label %B336
B336:                               	; preds = %B339
  %t68 = load i32, i32* %t292, align 4
  %t69 = add i32 %t68, 1
  store i32 %t69, i32* %t292, align 4
  br label %B328
}
define void @loop2() {
B346:
  %t347 = alloca i32, align 4
  %t348 = alloca i32, align 4
  %t349 = alloca i32, align 4
  %t350 = alloca i32, align 4
  %t351 = alloca i32, align 4
  %t352 = alloca i32, align 4
  %t353 = alloca i32, align 4
  store i32 0, i32* %t347, align 4
  br label %B354
B354:                               	; preds = %B346, %B362
  %t93 = load i32, i32* %t347, align 4
  %t94 = icmp slt i32 %t93, 10
  br i1 %t94, label %B355, label %B359
B355:                               	; preds = %B354
  store i32 0, i32* %t348, align 4
  br label %B360
B359:                               	; preds = %B354
  br label %B356
B360:                               	; preds = %B355, %B368
  %t96 = load i32, i32* %t348, align 4
  %t97 = icmp slt i32 %t96, 2
  br i1 %t97, label %B361, label %B365
B356:                               	; preds = %B359
  ret void
B361:                               	; preds = %B360
  store i32 0, i32* %t349, align 4
  br label %B366
B365:                               	; preds = %B360
  br label %B362
B366:                               	; preds = %B361, %B374
  %t99 = load i32, i32* %t349, align 4
  %t100 = icmp slt i32 %t99, 3
  br i1 %t100, label %B367, label %B371
B362:                               	; preds = %B365
  %t147 = load i32, i32* %t347, align 4
  %t148 = add i32 %t147, 1
  store i32 %t148, i32* %t347, align 4
  br label %B354
B367:                               	; preds = %B366
  store i32 0, i32* %t350, align 4
  br label %B372
B371:                               	; preds = %B366
  br label %B368
B372:                               	; preds = %B367, %B380
  %t102 = load i32, i32* %t350, align 4
  %t103 = icmp slt i32 %t102, 2
  br i1 %t103, label %B373, label %B377
B368:                               	; preds = %B371
  %t144 = load i32, i32* %t348, align 4
  %t145 = add i32 %t144, 1
  store i32 %t145, i32* %t348, align 4
  br label %B360
B373:                               	; preds = %B372
  store i32 0, i32* %t351, align 4
  br label %B378
B377:                               	; preds = %B372
  br label %B374
B378:                               	; preds = %B373, %B386
  %t105 = load i32, i32* %t351, align 4
  %t106 = icmp slt i32 %t105, 4
  br i1 %t106, label %B379, label %B383
B374:                               	; preds = %B377
  %t141 = load i32, i32* %t349, align 4
  %t142 = add i32 %t141, 1
  store i32 %t142, i32* %t349, align 4
  br label %B366
B379:                               	; preds = %B378
  store i32 0, i32* %t352, align 4
  br label %B384
B383:                               	; preds = %B378
  br label %B380
B384:                               	; preds = %B379, %B392
  %t108 = load i32, i32* %t352, align 4
  %t109 = icmp slt i32 %t108, 8
  br i1 %t109, label %B385, label %B389
B380:                               	; preds = %B383
  %t138 = load i32, i32* %t350, align 4
  %t139 = add i32 %t138, 1
  store i32 %t139, i32* %t350, align 4
  br label %B372
B385:                               	; preds = %B384
  store i32 0, i32* %t353, align 4
  br label %B390
B389:                               	; preds = %B384
  br label %B386
B390:                               	; preds = %B385, %B391
  %t111 = load i32, i32* %t353, align 4
  %t112 = icmp slt i32 %t111, 7
  br i1 %t112, label %B391, label %B395
B386:                               	; preds = %B389
  %t135 = load i32, i32* %t351, align 4
  %t136 = add i32 %t135, 1
  store i32 %t136, i32* %t351, align 4
  br label %B378
B391:                               	; preds = %B390
  %t121 = load i32, i32* %t347, align 4
  %t122 = load i32, i32* %t348, align 4
  %t123 = add i32 %t121, %t122
  %t124 = load i32, i32* %t350, align 4
  %t125 = add i32 %t123, %t124
  %t126 = load i32, i32* %t353, align 4
  %t127 = add i32 %t125, %t126
  %t113 = load i32, i32* %t347, align 4
  %t120 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %t113
  %t114 = load i32, i32* %t348, align 4
  %t396 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %t120, i32 0, i32 %t114
  %t115 = load i32, i32* %t349, align 4
  %t397 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %t396, i32 0, i32 %t115
  %t116 = load i32, i32* %t350, align 4
  %t398 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %t397, i32 0, i32 %t116
  %t117 = load i32, i32* %t351, align 4
  %t399 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %t398, i32 0, i32 %t117
  %t118 = load i32, i32* %t352, align 4
  %t400 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %t399, i32 0, i32 %t118
  %t119 = load i32, i32* %t353, align 4
  %t401 = getelementptr inbounds [7 x i32], [7 x i32]* %t400, i32 0, i32 %t119
  store i32 %t127, i32* %t401, align 4
  %t129 = load i32, i32* %t353, align 4
  %t130 = add i32 %t129, 1
  store i32 %t130, i32* %t353, align 4
  br label %B390
B395:                               	; preds = %B390
  br label %B392
B392:                               	; preds = %B395
  %t132 = load i32, i32* %t352, align 4
  %t133 = add i32 %t132, 1
  store i32 %t133, i32* %t352, align 4
  br label %B384
}
define i32 @loop3(i32 %t149, i32 %t151, i32 %t153, i32 %t155, i32 %t157, i32 %t159, i32 %t161) {
B402:
  %t403 = alloca i32, align 4
  %t404 = alloca i32, align 4
  %t405 = alloca i32, align 4
  %t406 = alloca i32, align 4
  %t407 = alloca i32, align 4
  %t408 = alloca i32, align 4
  %t409 = alloca i32, align 4
  %t410 = alloca i32, align 4
  %t411 = alloca i32, align 4
  %t412 = alloca i32, align 4
  %t413 = alloca i32, align 4
  %t414 = alloca i32, align 4
  %t415 = alloca i32, align 4
  %t416 = alloca i32, align 4
  %t417 = alloca i32, align 4
  store i32 %t149, i32* %t403, align 4
  store i32 %t151, i32* %t404, align 4
  store i32 %t153, i32* %t405, align 4
  store i32 %t155, i32* %t406, align 4
  store i32 %t157, i32* %t407, align 4
  store i32 %t159, i32* %t408, align 4
  store i32 %t161, i32* %t409, align 4
  store i32 0, i32* %t417, align 4
  store i32 0, i32* %t410, align 4
  br label %B418
B418:                               	; preds = %B402, %B511
  %t172 = load i32, i32* %t410, align 4
  %t173 = icmp slt i32 %t172, 10
  br i1 %t173, label %B419, label %B423
B419:                               	; preds = %B418
  store i32 0, i32* %t411, align 4
  br label %B424
B423:                               	; preds = %B418
  br label %B420
B424:                               	; preds = %B419, %B505
  %t175 = load i32, i32* %t411, align 4
  %t176 = icmp slt i32 %t175, 100
  br i1 %t176, label %B425, label %B429
B420:                               	; preds = %B423, %B510
  %t255 = load i32, i32* %t417, align 4
  ret i32 %t255
B425:                               	; preds = %B424
  store i32 0, i32* %t412, align 4
  br label %B430
B429:                               	; preds = %B424
  br label %B426
B430:                               	; preds = %B425, %B499
  %t178 = load i32, i32* %t412, align 4
  %t179 = icmp slt i32 %t178, 1000
  br i1 %t179, label %B431, label %B435
B426:                               	; preds = %B429, %B504
  %t250 = load i32, i32* %t410, align 4
  %t251 = add i32 %t250, 1
  store i32 %t251, i32* %t410, align 4
  %t252 = load i32, i32* %t410, align 4
  %t253 = load i32, i32* %t403, align 4
  %t254 = icmp sge i32 %t252, %t253
  br i1 %t254, label %B510, label %B514
B431:                               	; preds = %B430
  store i32 0, i32* %t413, align 4
  br label %B436
B435:                               	; preds = %B430
  br label %B432
B510:                               	; preds = %B426
  br label %B420
B514:                               	; preds = %B426
  br label %B511
B436:                               	; preds = %B431, %B493
  %t181 = load i32, i32* %t413, align 4
  %t182 = icmp slt i32 %t181, 10000
  br i1 %t182, label %B437, label %B441
B432:                               	; preds = %B435, %B498
  %t244 = load i32, i32* %t411, align 4
  %t245 = add i32 %t244, 1
  store i32 %t245, i32* %t411, align 4
  %t246 = load i32, i32* %t411, align 4
  %t247 = load i32, i32* %t404, align 4
  %t248 = icmp sge i32 %t246, %t247
  br i1 %t248, label %B504, label %B508
B511:                               	; preds = %B514
  br label %B418
B437:                               	; preds = %B436
  store i32 0, i32* %t414, align 4
  br label %B442
B441:                               	; preds = %B436
  br label %B438
B504:                               	; preds = %B432
  br label %B426
B508:                               	; preds = %B432
  br label %B505
B442:                               	; preds = %B437, %B487
  %t184 = load i32, i32* %t414, align 4
  %t185 = icmp slt i32 %t184, 100000
  br i1 %t185, label %B443, label %B447
B438:                               	; preds = %B441, %B492
  %t238 = load i32, i32* %t412, align 4
  %t239 = add i32 %t238, 1
  store i32 %t239, i32* %t412, align 4
  %t240 = load i32, i32* %t412, align 4
  %t241 = load i32, i32* %t405, align 4
  %t242 = icmp sge i32 %t240, %t241
  br i1 %t242, label %B498, label %B502
B505:                               	; preds = %B508
  br label %B424
B443:                               	; preds = %B442
  store i32 0, i32* %t415, align 4
  br label %B448
B447:                               	; preds = %B442
  br label %B444
B498:                               	; preds = %B438
  br label %B432
B502:                               	; preds = %B438
  br label %B499
B448:                               	; preds = %B443, %B481
  %t187 = load i32, i32* %t415, align 4
  %t188 = icmp slt i32 %t187, 1000000
  br i1 %t188, label %B449, label %B453
B444:                               	; preds = %B447, %B486
  %t232 = load i32, i32* %t413, align 4
  %t233 = add i32 %t232, 1
  store i32 %t233, i32* %t413, align 4
  %t234 = load i32, i32* %t413, align 4
  %t235 = load i32, i32* %t406, align 4
  %t236 = icmp sge i32 %t234, %t235
  br i1 %t236, label %B492, label %B496
B499:                               	; preds = %B502
  br label %B430
B449:                               	; preds = %B448
  store i32 0, i32* %t416, align 4
  br label %B454
B453:                               	; preds = %B448
  br label %B450
B492:                               	; preds = %B444
  br label %B438
B496:                               	; preds = %B444
  br label %B493
B454:                               	; preds = %B449, %B475
  %t190 = load i32, i32* %t416, align 4
  %t191 = icmp slt i32 %t190, 10000000
  br i1 %t191, label %B455, label %B459
B450:                               	; preds = %B453, %B480
  %t226 = load i32, i32* %t414, align 4
  %t227 = add i32 %t226, 1
  store i32 %t227, i32* %t414, align 4
  %t228 = load i32, i32* %t414, align 4
  %t229 = load i32, i32* %t407, align 4
  %t230 = icmp sge i32 %t228, %t229
  br i1 %t230, label %B486, label %B490
B493:                               	; preds = %B496
  br label %B436
B455:                               	; preds = %B454
  %t193 = load i32, i32* %t417, align 4
  %t194 = srem i32 %t193, 817
  %t195 = load i32, i32* %t410, align 4
  %t202 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %t195
  %t196 = load i32, i32* %t411, align 4
  %t460 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %t202, i32 0, i32 %t196
  %t197 = load i32, i32* %t412, align 4
  %t461 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %t460, i32 0, i32 %t197
  %t198 = load i32, i32* %t413, align 4
  %t462 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %t461, i32 0, i32 %t198
  %t199 = load i32, i32* %t414, align 4
  %t463 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %t462, i32 0, i32 %t199
  %t200 = load i32, i32* %t415, align 4
  %t464 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %t463, i32 0, i32 %t200
  %t201 = load i32, i32* %t416, align 4
  %t465 = getelementptr inbounds [2 x i32], [2 x i32]* %t464, i32 0, i32 %t201
  %t466 = load i32, i32* %t465, align 4
  %t203 = add i32 %t194, %t466
  %t204 = load i32, i32* %t410, align 4
  %t211 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %t204
  %t205 = load i32, i32* %t411, align 4
  %t467 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %t211, i32 0, i32 %t205
  %t206 = load i32, i32* %t412, align 4
  %t468 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %t467, i32 0, i32 %t206
  %t207 = load i32, i32* %t413, align 4
  %t469 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %t468, i32 0, i32 %t207
  %t208 = load i32, i32* %t414, align 4
  %t470 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %t469, i32 0, i32 %t208
  %t209 = load i32, i32* %t415, align 4
  %t471 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %t470, i32 0, i32 %t209
  %t210 = load i32, i32* %t416, align 4
  %t472 = getelementptr inbounds [7 x i32], [7 x i32]* %t471, i32 0, i32 %t210
  %t473 = load i32, i32* %t472, align 4
  %t212 = add i32 %t203, %t473
  store i32 %t212, i32* %t417, align 4
  %t214 = load i32, i32* %t416, align 4
  %t215 = add i32 %t214, 1
  store i32 %t215, i32* %t416, align 4
  %t216 = load i32, i32* %t416, align 4
  %t217 = load i32, i32* %t409, align 4
  %t218 = icmp sge i32 %t216, %t217
  br i1 %t218, label %B474, label %B478
B459:                               	; preds = %B454
  br label %B456
B486:                               	; preds = %B450
  br label %B444
B490:                               	; preds = %B450
  br label %B487
B474:                               	; preds = %B455
  br label %B456
B478:                               	; preds = %B455
  br label %B475
B456:                               	; preds = %B459, %B474
  %t220 = load i32, i32* %t415, align 4
  %t221 = add i32 %t220, 1
  store i32 %t221, i32* %t415, align 4
  %t222 = load i32, i32* %t415, align 4
  %t223 = load i32, i32* %t408, align 4
  %t224 = icmp sge i32 %t222, %t223
  br i1 %t224, label %B480, label %B484
B487:                               	; preds = %B490
  br label %B442
B475:                               	; preds = %B478
  br label %B454
B480:                               	; preds = %B456
  br label %B450
B484:                               	; preds = %B456
  br label %B481
B481:                               	; preds = %B484
  br label %B448
}
define i32 @main() {
B516:
  %t517 = alloca i32, align 4
  %t518 = alloca i32, align 4
  %t519 = alloca i32, align 4
  %t520 = alloca i32, align 4
  %t521 = alloca i32, align 4
  %t522 = alloca i32, align 4
  %t523 = alloca i32, align 4
  %t524 = alloca i32, align 4
  %t525 = alloca i32, align 4
  %t256 = call i32 @getint()
  store i32 %t256, i32* %t517, align 4
  %t258 = call i32 @getint()
  store i32 %t258, i32* %t518, align 4
  %t260 = call i32 @getint()
  store i32 %t260, i32* %t519, align 4
  %t262 = call i32 @getint()
  store i32 %t262, i32* %t520, align 4
  %t264 = call i32 @getint()
  store i32 %t264, i32* %t521, align 4
  %t266 = call i32 @getint()
  store i32 %t266, i32* %t522, align 4
  %t268 = call i32 @getint()
  store i32 %t268, i32* %t523, align 4
  %t270 = call i32 @getint()
  store i32 %t270, i32* %t524, align 4
  %t272 = call i32 @getint()
  store i32 %t272, i32* %t525, align 4
  %t274 = load i32, i32* %t517, align 4
  %t275 = load i32, i32* %t518, align 4
  call void @loop1(i32 %t274, i32 %t275)
  call void @loop2()
  %t276 = load i32, i32* %t519, align 4
  %t277 = load i32, i32* %t520, align 4
  %t278 = load i32, i32* %t521, align 4
  %t279 = load i32, i32* %t522, align 4
  %t280 = load i32, i32* %t523, align 4
  %t281 = load i32, i32* %t524, align 4
  %t282 = load i32, i32* %t525, align 4
  %t283 = call i32 @loop3(i32 %t276, i32 %t277, i32 %t278, i32 %t279, i32 %t280, i32 %t281, i32 %t282)
  ret i32 %t283
}
declare i32 @getint()
