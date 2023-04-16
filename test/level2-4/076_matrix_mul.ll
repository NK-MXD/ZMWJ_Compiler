@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @mul(i32* %t3, i32* %t5, i32* %t7, i32* %t9, i32* %t11, i32* %t13, i32* %t15, i32* %t17, i32* %t19) {
B219:
  %t220 = alloca i32*, align 4
  %t221 = alloca i32*, align 4
  %t222 = alloca i32*, align 4
  %t223 = alloca i32*, align 4
  %t224 = alloca i32*, align 4
  %t225 = alloca i32*, align 4
  %t226 = alloca i32*, align 4
  %t227 = alloca i32*, align 4
  %t228 = alloca i32*, align 4
  store i32* %t3, i32** %t220, align 4
  store i32* %t5, i32** %t221, align 4
  store i32* %t7, i32** %t222, align 4
  store i32* %t9, i32** %t223, align 4
  store i32* %t11, i32** %t224, align 4
  store i32* %t13, i32** %t225, align 4
  store i32* %t15, i32** %t226, align 4
  store i32* %t17, i32** %t227, align 4
  store i32* %t19, i32** %t228, align 4
  %t230 = load i32*, i32** %t220, align 4
  %t24 = getelementptr inbounds i32, i32* %t230, i32 0
  %t231 = load i32, i32* %t24, align 4
  %t232 = load i32*, i32** %t223, align 4
  %t25 = getelementptr inbounds i32, i32* %t232, i32 0
  %t233 = load i32, i32* %t25, align 4
  %t26 = mul i32 %t231, %t233
  %t27 = getelementptr inbounds i32, i32* %t230, i32 1
  %t235 = load i32, i32* %t27, align 4
  %t236 = load i32*, i32** %t224, align 4
  %t28 = getelementptr inbounds i32, i32* %t236, i32 0
  %t237 = load i32, i32* %t28, align 4
  %t29 = mul i32 %t235, %t237
  %t30 = add i32 %t26, %t29
  %t31 = getelementptr inbounds i32, i32* %t230, i32 2
  %t239 = load i32, i32* %t31, align 4
  %t240 = load i32*, i32** %t225, align 4
  %t32 = getelementptr inbounds i32, i32* %t240, i32 0
  %t241 = load i32, i32* %t32, align 4
  %t33 = mul i32 %t239, %t241
  %t34 = add i32 %t30, %t33
  %t242 = load i32*, i32** %t226, align 4
  %t23 = getelementptr inbounds i32, i32* %t242, i32 0
  store i32 %t34, i32* %t23, align 4
  %t36 = getelementptr inbounds i32, i32* %t230, i32 0
  %t244 = load i32, i32* %t36, align 4
  %t37 = getelementptr inbounds i32, i32* %t232, i32 1
  %t246 = load i32, i32* %t37, align 4
  %t38 = mul i32 %t244, %t246
  %t248 = load i32, i32* %t27, align 4
  %t40 = getelementptr inbounds i32, i32* %t236, i32 1
  %t250 = load i32, i32* %t40, align 4
  %t41 = mul i32 %t248, %t250
  %t42 = add i32 %t38, %t41
  %t252 = load i32, i32* %t31, align 4
  %t44 = getelementptr inbounds i32, i32* %t240, i32 1
  %t254 = load i32, i32* %t44, align 4
  %t45 = mul i32 %t252, %t254
  %t46 = add i32 %t42, %t45
  %t35 = getelementptr inbounds i32, i32* %t242, i32 1
  store i32 %t46, i32* %t35, align 4
  %t257 = load i32, i32* %t36, align 4
  %t49 = getelementptr inbounds i32, i32* %t232, i32 2
  %t259 = load i32, i32* %t49, align 4
  %t50 = mul i32 %t257, %t259
  %t261 = load i32, i32* %t27, align 4
  %t52 = getelementptr inbounds i32, i32* %t236, i32 2
  %t263 = load i32, i32* %t52, align 4
  %t53 = mul i32 %t261, %t263
  %t54 = add i32 %t50, %t53
  %t265 = load i32, i32* %t31, align 4
  %t56 = getelementptr inbounds i32, i32* %t240, i32 2
  %t267 = load i32, i32* %t56, align 4
  %t57 = mul i32 %t265, %t267
  %t58 = add i32 %t54, %t57
  %t47 = getelementptr inbounds i32, i32* %t242, i32 2
  store i32 %t58, i32* %t47, align 4
  %t269 = load i32*, i32** %t221, align 4
  %t60 = getelementptr inbounds i32, i32* %t269, i32 0
  %t270 = load i32, i32* %t60, align 4
  %t61 = getelementptr inbounds i32, i32* %t232, i32 0
  %t272 = load i32, i32* %t61, align 4
  %t62 = mul i32 %t270, %t272
  %t63 = getelementptr inbounds i32, i32* %t269, i32 1
  %t274 = load i32, i32* %t63, align 4
  %t64 = getelementptr inbounds i32, i32* %t236, i32 0
  %t276 = load i32, i32* %t64, align 4
  %t65 = mul i32 %t274, %t276
  %t66 = add i32 %t62, %t65
  %t67 = getelementptr inbounds i32, i32* %t269, i32 2
  %t278 = load i32, i32* %t67, align 4
  %t68 = getelementptr inbounds i32, i32* %t240, i32 0
  %t280 = load i32, i32* %t68, align 4
  %t69 = mul i32 %t278, %t280
  %t70 = add i32 %t66, %t69
  %t281 = load i32*, i32** %t227, align 4
  %t59 = getelementptr inbounds i32, i32* %t281, i32 0
  store i32 %t70, i32* %t59, align 4
  %t72 = getelementptr inbounds i32, i32* %t269, i32 0
  %t283 = load i32, i32* %t72, align 4
  %t285 = load i32, i32* %t37, align 4
  %t74 = mul i32 %t283, %t285
  %t287 = load i32, i32* %t63, align 4
  %t289 = load i32, i32* %t40, align 4
  %t77 = mul i32 %t287, %t289
  %t78 = add i32 %t74, %t77
  %t291 = load i32, i32* %t67, align 4
  %t293 = load i32, i32* %t44, align 4
  %t81 = mul i32 %t291, %t293
  %t82 = add i32 %t78, %t81
  %t71 = getelementptr inbounds i32, i32* %t281, i32 1
  store i32 %t82, i32* %t71, align 4
  %t296 = load i32, i32* %t72, align 4
  %t298 = load i32, i32* %t49, align 4
  %t86 = mul i32 %t296, %t298
  %t300 = load i32, i32* %t63, align 4
  %t302 = load i32, i32* %t52, align 4
  %t89 = mul i32 %t300, %t302
  %t90 = add i32 %t86, %t89
  %t304 = load i32, i32* %t67, align 4
  %t306 = load i32, i32* %t56, align 4
  %t93 = mul i32 %t304, %t306
  %t94 = add i32 %t90, %t93
  %t83 = getelementptr inbounds i32, i32* %t281, i32 2
  store i32 %t94, i32* %t83, align 4
  %t308 = load i32*, i32** %t222, align 4
  %t96 = getelementptr inbounds i32, i32* %t308, i32 0
  %t309 = load i32, i32* %t96, align 4
  %t311 = load i32, i32* %t61, align 4
  %t98 = mul i32 %t309, %t311
  %t99 = getelementptr inbounds i32, i32* %t308, i32 1
  %t313 = load i32, i32* %t99, align 4
  %t315 = load i32, i32* %t64, align 4
  %t101 = mul i32 %t313, %t315
  %t102 = add i32 %t98, %t101
  %t103 = getelementptr inbounds i32, i32* %t308, i32 2
  %t317 = load i32, i32* %t103, align 4
  %t319 = load i32, i32* %t68, align 4
  %t105 = mul i32 %t317, %t319
  %t106 = add i32 %t102, %t105
  %t320 = load i32*, i32** %t228, align 4
  %t95 = getelementptr inbounds i32, i32* %t320, i32 0
  store i32 %t106, i32* %t95, align 4
  %t108 = getelementptr inbounds i32, i32* %t308, i32 0
  %t322 = load i32, i32* %t108, align 4
  %t324 = load i32, i32* %t37, align 4
  %t110 = mul i32 %t322, %t324
  %t326 = load i32, i32* %t99, align 4
  %t328 = load i32, i32* %t40, align 4
  %t113 = mul i32 %t326, %t328
  %t114 = add i32 %t110, %t113
  %t330 = load i32, i32* %t103, align 4
  %t332 = load i32, i32* %t44, align 4
  %t117 = mul i32 %t330, %t332
  %t118 = add i32 %t114, %t117
  %t107 = getelementptr inbounds i32, i32* %t320, i32 1
  store i32 %t118, i32* %t107, align 4
  %t335 = load i32, i32* %t108, align 4
  %t337 = load i32, i32* %t49, align 4
  %t122 = mul i32 %t335, %t337
  %t339 = load i32, i32* %t99, align 4
  %t341 = load i32, i32* %t52, align 4
  %t125 = mul i32 %t339, %t341
  %t126 = add i32 %t122, %t125
  %t343 = load i32, i32* %t103, align 4
  %t345 = load i32, i32* %t56, align 4
  %t129 = mul i32 %t343, %t345
  %t130 = add i32 %t126, %t129
  %t119 = getelementptr inbounds i32, i32* %t320, i32 2
  store i32 %t130, i32* %t119, align 4
  ret i32 0
}
define i32 @main() {
B347:
  %t348 = alloca [3 x i32], align 4
  %t349 = alloca [3 x i32], align 4
  %t350 = alloca [3 x i32], align 4
  %t351 = alloca [3 x i32], align 4
  %t352 = alloca [3 x i32], align 4
  %t353 = alloca [3 x i32], align 4
  %t354 = alloca [6 x i32], align 4
  %t355 = alloca [3 x i32], align 4
  %t356 = alloca [3 x i32], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B358
B358:                               	; preds = %B347
  %t146 = load i32, i32* @M, align 4
  %t430 = add i32 0, 0
  %t147 = icmp slt i32 0, %t146
  br i1 %t147, label %B359, label %B363
B359:                               	; preds = %B358, %B454
  %t149 = getelementptr inbounds [3 x i32], [3 x i32]* %t348, i32 0, i32 %t430
  store i32 %t430, i32* %t149, align 4
  %t152 = getelementptr inbounds [3 x i32], [3 x i32]* %t349, i32 0, i32 %t430
  store i32 %t430, i32* %t152, align 4
  %t155 = getelementptr inbounds [3 x i32], [3 x i32]* %t350, i32 0, i32 %t430
  store i32 %t430, i32* %t155, align 4
  %t158 = getelementptr inbounds [3 x i32], [3 x i32]* %t351, i32 0, i32 %t430
  store i32 %t430, i32* %t158, align 4
  %t161 = getelementptr inbounds [3 x i32], [3 x i32]* %t352, i32 0, i32 %t430
  store i32 %t430, i32* %t161, align 4
  %t164 = getelementptr inbounds [3 x i32], [3 x i32]* %t353, i32 0, i32 %t430
  store i32 %t430, i32* %t164, align 4
  %t168 = add i32 %t430, 1
  %t365 = load i32, i32* @M, align 4
  %t366 = icmp slt i32 %t168, %t365
  br i1 %t366, label %B454, label %B369
B363:                               	; preds = %B358
  %t431 = add i32 0, 0
  br label %B360
B369:                               	; preds = %B359
  %t431 = add i32 %t168, 0
  br label %B360
B454:                               	; preds = %B359
  %t430 = add i32 %t168, 0
  br label %B359
B360:                               	; preds = %B363, %B369
  %t170 = getelementptr inbounds [3 x i32], [3 x i32]* %t348, i32 0, i32 0
  %t171 = getelementptr inbounds [3 x i32], [3 x i32]* %t349, i32 0, i32 0
  %t172 = getelementptr inbounds [3 x i32], [3 x i32]* %t350, i32 0, i32 0
  %t173 = getelementptr inbounds [3 x i32], [3 x i32]* %t351, i32 0, i32 0
  %t174 = getelementptr inbounds [3 x i32], [3 x i32]* %t352, i32 0, i32 0
  %t175 = getelementptr inbounds [3 x i32], [3 x i32]* %t353, i32 0, i32 0
  %t176 = getelementptr inbounds [6 x i32], [6 x i32]* %t354, i32 0, i32 0
  %t177 = getelementptr inbounds [3 x i32], [3 x i32]* %t355, i32 0, i32 0
  %t178 = getelementptr inbounds [3 x i32], [3 x i32]* %t356, i32 0, i32 0
  %t179 = call i32 @mul(i32* %t170, i32* %t171, i32* %t172, i32* %t173, i32* %t174, i32* %t175, i32* %t176, i32* %t177, i32* %t178)
  br label %B371
B371:                               	; preds = %B360
  %t182 = load i32, i32* @N, align 4
  %t449 = add i32 0, 0
  %t424 = add i32 %t179, 0
  %t183 = icmp slt i32 %t179, %t182
  br i1 %t183, label %B372, label %B376
B372:                               	; preds = %B371, %B458
  %t186 = getelementptr inbounds [6 x i32], [6 x i32]* %t354, i32 0, i32 %t424
  %t377 = load i32, i32* %t186, align 4
  call void @putint(i32 %t377)
  %t190 = add i32 %t424, 1
  %t379 = load i32, i32* @N, align 4
  %t380 = icmp slt i32 %t190, %t379
  br i1 %t380, label %B458, label %B383
B376:                               	; preds = %B371
  %t450 = add i32 0, 0
  %t425 = add i32 %t179, 0
  br label %B373
B383:                               	; preds = %B372
  %t450 = add i32 %t377, 0
  %t425 = add i32 %t190, 0
  br label %B373
B458:                               	; preds = %B372
  %t449 = add i32 %t377, 0
  %t424 = add i32 %t190, 0
  br label %B372
B373:                               	; preds = %B376, %B383
  call void @putch(i32 10)
  br label %B384
B384:                               	; preds = %B373
  %t195 = load i32, i32* @N, align 4
  %t443 = add i32 10, 0
  %t418 = add i32 0, 0
  %t196 = icmp slt i32 0, %t195
  br i1 %t196, label %B385, label %B389
B385:                               	; preds = %B384, %B463
  %t199 = getelementptr inbounds [3 x i32], [3 x i32]* %t355, i32 0, i32 %t418
  %t390 = load i32, i32* %t199, align 4
  call void @putint(i32 %t390)
  %t203 = add i32 %t418, 1
  %t392 = load i32, i32* @N, align 4
  %t393 = icmp slt i32 %t203, %t392
  br i1 %t393, label %B463, label %B396
B389:                               	; preds = %B384
  %t444 = add i32 10, 0
  %t419 = add i32 0, 0
  br label %B386
B396:                               	; preds = %B385
  %t444 = add i32 %t390, 0
  %t419 = add i32 %t203, 0
  br label %B386
B463:                               	; preds = %B385
  %t443 = add i32 %t390, 0
  %t418 = add i32 %t203, 0
  br label %B385
B386:                               	; preds = %B389, %B396
  call void @putch(i32 10)
  br label %B397
B397:                               	; preds = %B386
  %t208 = load i32, i32* @N, align 4
  %t437 = add i32 10, 0
  %t412 = add i32 0, 0
  %t209 = icmp slt i32 0, %t208
  br i1 %t209, label %B398, label %B402
B398:                               	; preds = %B397, %B468
  %t212 = getelementptr inbounds [3 x i32], [3 x i32]* %t356, i32 0, i32 %t412
  %t403 = load i32, i32* %t212, align 4
  call void @putint(i32 %t403)
  %t216 = add i32 %t412, 1
  %t405 = load i32, i32* @N, align 4
  %t406 = icmp slt i32 %t216, %t405
  br i1 %t406, label %B468, label %B409
B402:                               	; preds = %B397
  %t438 = add i32 10, 0
  %t413 = add i32 0, 0
  br label %B399
B409:                               	; preds = %B398
  %t438 = add i32 %t403, 0
  %t413 = add i32 %t216, 0
  br label %B399
B468:                               	; preds = %B398
  %t437 = add i32 %t403, 0
  %t412 = add i32 %t216, 0
  br label %B398
B399:                               	; preds = %B402, %B409
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
