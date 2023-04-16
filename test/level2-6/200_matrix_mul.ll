@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @mul(float* %t3, float* %t5, float* %t7, float* %t9, float* %t11, float* %t13, float* %t15, float* %t17, float* %t19) {
B228:
  %t229 = alloca float*, align 4
  %t230 = alloca float*, align 4
  %t231 = alloca float*, align 4
  %t232 = alloca float*, align 4
  %t233 = alloca float*, align 4
  %t234 = alloca float*, align 4
  %t235 = alloca float*, align 4
  %t236 = alloca float*, align 4
  %t237 = alloca float*, align 4
  store float* %t3, float** %t229, align 4
  store float* %t5, float** %t230, align 4
  store float* %t7, float** %t231, align 4
  store float* %t9, float** %t232, align 4
  store float* %t11, float** %t233, align 4
  store float* %t13, float** %t234, align 4
  store float* %t15, float** %t235, align 4
  store float* %t17, float** %t236, align 4
  store float* %t19, float** %t237, align 4
  %t239 = load float*, float** %t229, align 4
  %t24 = getelementptr inbounds float, float* %t239, i32 0
  %t240 = load float, float* %t24, align 4
  %t241 = load float*, float** %t232, align 4
  %t25 = getelementptr inbounds float, float* %t241, i32 0
  %t242 = load float, float* %t25, align 4
  %t26 = fmul float %t240, %t242
  %t27 = getelementptr inbounds float, float* %t239, i32 1
  %t244 = load float, float* %t27, align 4
  %t245 = load float*, float** %t233, align 4
  %t28 = getelementptr inbounds float, float* %t245, i32 0
  %t246 = load float, float* %t28, align 4
  %t29 = fmul float %t244, %t246
  %t30 = fadd float %t26, %t29
  %t31 = getelementptr inbounds float, float* %t239, i32 2
  %t248 = load float, float* %t31, align 4
  %t249 = load float*, float** %t234, align 4
  %t32 = getelementptr inbounds float, float* %t249, i32 0
  %t250 = load float, float* %t32, align 4
  %t33 = fmul float %t248, %t250
  %t34 = fadd float %t30, %t33
  %t251 = load float*, float** %t235, align 4
  %t23 = getelementptr inbounds float, float* %t251, i32 0
  store float %t34, float* %t23, align 4
  %t36 = getelementptr inbounds float, float* %t239, i32 0
  %t253 = load float, float* %t36, align 4
  %t37 = getelementptr inbounds float, float* %t241, i32 1
  %t255 = load float, float* %t37, align 4
  %t38 = fmul float %t253, %t255
  %t257 = load float, float* %t27, align 4
  %t40 = getelementptr inbounds float, float* %t245, i32 1
  %t259 = load float, float* %t40, align 4
  %t41 = fmul float %t257, %t259
  %t42 = fadd float %t38, %t41
  %t261 = load float, float* %t31, align 4
  %t44 = getelementptr inbounds float, float* %t249, i32 1
  %t263 = load float, float* %t44, align 4
  %t45 = fmul float %t261, %t263
  %t46 = fadd float %t42, %t45
  %t35 = getelementptr inbounds float, float* %t251, i32 1
  store float %t46, float* %t35, align 4
  %t266 = load float, float* %t36, align 4
  %t49 = getelementptr inbounds float, float* %t241, i32 2
  %t268 = load float, float* %t49, align 4
  %t50 = fmul float %t266, %t268
  %t270 = load float, float* %t27, align 4
  %t52 = getelementptr inbounds float, float* %t245, i32 2
  %t272 = load float, float* %t52, align 4
  %t53 = fmul float %t270, %t272
  %t54 = fadd float %t50, %t53
  %t274 = load float, float* %t31, align 4
  %t56 = getelementptr inbounds float, float* %t249, i32 2
  %t276 = load float, float* %t56, align 4
  %t57 = fmul float %t274, %t276
  %t58 = fadd float %t54, %t57
  %t47 = getelementptr inbounds float, float* %t251, i32 2
  store float %t58, float* %t47, align 4
  %t278 = load float*, float** %t230, align 4
  %t60 = getelementptr inbounds float, float* %t278, i32 0
  %t279 = load float, float* %t60, align 4
  %t61 = getelementptr inbounds float, float* %t241, i32 0
  %t281 = load float, float* %t61, align 4
  %t62 = fmul float %t279, %t281
  %t63 = getelementptr inbounds float, float* %t278, i32 1
  %t283 = load float, float* %t63, align 4
  %t64 = getelementptr inbounds float, float* %t245, i32 0
  %t285 = load float, float* %t64, align 4
  %t65 = fmul float %t283, %t285
  %t66 = fadd float %t62, %t65
  %t67 = getelementptr inbounds float, float* %t278, i32 2
  %t287 = load float, float* %t67, align 4
  %t68 = getelementptr inbounds float, float* %t249, i32 0
  %t289 = load float, float* %t68, align 4
  %t69 = fmul float %t287, %t289
  %t70 = fadd float %t66, %t69
  %t290 = load float*, float** %t236, align 4
  %t59 = getelementptr inbounds float, float* %t290, i32 0
  store float %t70, float* %t59, align 4
  %t72 = getelementptr inbounds float, float* %t278, i32 0
  %t292 = load float, float* %t72, align 4
  %t294 = load float, float* %t37, align 4
  %t74 = fmul float %t292, %t294
  %t296 = load float, float* %t63, align 4
  %t298 = load float, float* %t40, align 4
  %t77 = fmul float %t296, %t298
  %t78 = fadd float %t74, %t77
  %t300 = load float, float* %t67, align 4
  %t302 = load float, float* %t44, align 4
  %t81 = fmul float %t300, %t302
  %t82 = fadd float %t78, %t81
  %t71 = getelementptr inbounds float, float* %t290, i32 1
  store float %t82, float* %t71, align 4
  %t305 = load float, float* %t72, align 4
  %t307 = load float, float* %t49, align 4
  %t86 = fmul float %t305, %t307
  %t309 = load float, float* %t63, align 4
  %t311 = load float, float* %t52, align 4
  %t89 = fmul float %t309, %t311
  %t90 = fadd float %t86, %t89
  %t313 = load float, float* %t67, align 4
  %t315 = load float, float* %t56, align 4
  %t93 = fmul float %t313, %t315
  %t94 = fadd float %t90, %t93
  %t83 = getelementptr inbounds float, float* %t290, i32 2
  store float %t94, float* %t83, align 4
  %t317 = load float*, float** %t231, align 4
  %t96 = getelementptr inbounds float, float* %t317, i32 0
  %t318 = load float, float* %t96, align 4
  %t320 = load float, float* %t61, align 4
  %t98 = fmul float %t318, %t320
  %t99 = getelementptr inbounds float, float* %t317, i32 1
  %t322 = load float, float* %t99, align 4
  %t324 = load float, float* %t64, align 4
  %t101 = fmul float %t322, %t324
  %t102 = fadd float %t98, %t101
  %t103 = getelementptr inbounds float, float* %t317, i32 2
  %t326 = load float, float* %t103, align 4
  %t328 = load float, float* %t68, align 4
  %t105 = fmul float %t326, %t328
  %t106 = fadd float %t102, %t105
  %t329 = load float*, float** %t237, align 4
  %t95 = getelementptr inbounds float, float* %t329, i32 0
  store float %t106, float* %t95, align 4
  %t108 = getelementptr inbounds float, float* %t317, i32 0
  %t331 = load float, float* %t108, align 4
  %t333 = load float, float* %t37, align 4
  %t110 = fmul float %t331, %t333
  %t335 = load float, float* %t99, align 4
  %t337 = load float, float* %t40, align 4
  %t113 = fmul float %t335, %t337
  %t114 = fadd float %t110, %t113
  %t339 = load float, float* %t103, align 4
  %t341 = load float, float* %t44, align 4
  %t117 = fmul float %t339, %t341
  %t118 = fadd float %t114, %t117
  %t107 = getelementptr inbounds float, float* %t329, i32 1
  store float %t118, float* %t107, align 4
  %t344 = load float, float* %t108, align 4
  %t346 = load float, float* %t49, align 4
  %t122 = fmul float %t344, %t346
  %t348 = load float, float* %t99, align 4
  %t350 = load float, float* %t52, align 4
  %t125 = fmul float %t348, %t350
  %t126 = fadd float %t122, %t125
  %t352 = load float, float* %t103, align 4
  %t354 = load float, float* %t56, align 4
  %t129 = fmul float %t352, %t354
  %t130 = fadd float %t126, %t129
  %t119 = getelementptr inbounds float, float* %t329, i32 2
  store float %t130, float* %t119, align 4
  ret i32 0
}
define i32 @main() {
B356:
  %t357 = alloca [3 x float], align 4
  %t358 = alloca [3 x float], align 4
  %t359 = alloca [3 x float], align 4
  %t360 = alloca [3 x float], align 4
  %t361 = alloca [3 x float], align 4
  %t362 = alloca [3 x float], align 4
  %t363 = alloca [6 x float], align 4
  %t364 = alloca [3 x float], align 4
  %t365 = alloca [3 x float], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B367
B367:                               	; preds = %B356
  %t146 = load i32, i32* @M, align 4
  %t439 = add i32 0, 0
  %t147 = icmp slt i32 0, %t146
  br i1 %t147, label %B368, label %B372
B368:                               	; preds = %B367, %B463
  %t151 = sitofp i32 %t439 to float
  %t149 = getelementptr inbounds [3 x float], [3 x float]* %t357, i32 0, i32 %t439
  store float %t151, float* %t149, align 4
  %t153 = getelementptr inbounds [3 x float], [3 x float]* %t358, i32 0, i32 %t439
  store float %t151, float* %t153, align 4
  %t157 = getelementptr inbounds [3 x float], [3 x float]* %t359, i32 0, i32 %t439
  store float %t151, float* %t157, align 4
  %t161 = getelementptr inbounds [3 x float], [3 x float]* %t360, i32 0, i32 %t439
  store float %t151, float* %t161, align 4
  %t165 = getelementptr inbounds [3 x float], [3 x float]* %t361, i32 0, i32 %t439
  store float %t151, float* %t165, align 4
  %t169 = getelementptr inbounds [3 x float], [3 x float]* %t362, i32 0, i32 %t439
  store float %t151, float* %t169, align 4
  %t174 = add i32 %t439, 1
  %t374 = load i32, i32* @M, align 4
  %t375 = icmp slt i32 %t174, %t374
  br i1 %t375, label %B463, label %B378
B372:                               	; preds = %B367
  %t440 = add i32 0, 0
  br label %B369
B378:                               	; preds = %B368
  %t440 = add i32 %t174, 0
  br label %B369
B463:                               	; preds = %B368
  %t439 = add i32 %t174, 0
  br label %B368
B369:                               	; preds = %B372, %B378
  %t176 = getelementptr inbounds [3 x float], [3 x float]* %t357, i32 0, i32 0
  %t177 = getelementptr inbounds [3 x float], [3 x float]* %t358, i32 0, i32 0
  %t178 = getelementptr inbounds [3 x float], [3 x float]* %t359, i32 0, i32 0
  %t179 = getelementptr inbounds [3 x float], [3 x float]* %t360, i32 0, i32 0
  %t180 = getelementptr inbounds [3 x float], [3 x float]* %t361, i32 0, i32 0
  %t181 = getelementptr inbounds [3 x float], [3 x float]* %t362, i32 0, i32 0
  %t182 = getelementptr inbounds [6 x float], [6 x float]* %t363, i32 0, i32 0
  %t183 = getelementptr inbounds [3 x float], [3 x float]* %t364, i32 0, i32 0
  %t184 = getelementptr inbounds [3 x float], [3 x float]* %t365, i32 0, i32 0
  %t185 = call i32 @mul(float* %t176, float* %t177, float* %t178, float* %t179, float* %t180, float* %t181, float* %t182, float* %t183, float* %t184)
  br label %B380
B380:                               	; preds = %B369
  %t188 = load i32, i32* @N, align 4
  %t458 = add i32 0, 0
  %t433 = add i32 %t185, 0
  %t189 = icmp slt i32 %t185, %t188
  br i1 %t189, label %B381, label %B385
B381:                               	; preds = %B380, %B467
  %t192 = getelementptr inbounds [6 x float], [6 x float]* %t363, i32 0, i32 %t433
  %t386 = load float, float* %t192, align 4
  %t193 = fptosi float %t386 to i32
  call void @putint(i32 %t193)
  %t197 = add i32 %t433, 1
  %t388 = load i32, i32* @N, align 4
  %t389 = icmp slt i32 %t197, %t388
  br i1 %t389, label %B467, label %B392
B385:                               	; preds = %B380
  %t459 = add i32 0, 0
  %t434 = add i32 %t185, 0
  br label %B382
B392:                               	; preds = %B381
  %t459 = add i32 %t193, 0
  %t434 = add i32 %t197, 0
  br label %B382
B467:                               	; preds = %B381
  %t458 = add i32 %t193, 0
  %t433 = add i32 %t197, 0
  br label %B381
B382:                               	; preds = %B385, %B392
  call void @putch(i32 10)
  br label %B393
B393:                               	; preds = %B382
  %t202 = load i32, i32* @N, align 4
  %t452 = add i32 10, 0
  %t427 = add i32 0, 0
  %t203 = icmp slt i32 0, %t202
  br i1 %t203, label %B394, label %B398
B394:                               	; preds = %B393, %B472
  %t206 = getelementptr inbounds [3 x float], [3 x float]* %t364, i32 0, i32 %t427
  %t399 = load float, float* %t206, align 4
  %t207 = fptosi float %t399 to i32
  call void @putint(i32 %t207)
  %t211 = add i32 %t427, 1
  %t401 = load i32, i32* @N, align 4
  %t402 = icmp slt i32 %t211, %t401
  br i1 %t402, label %B472, label %B405
B398:                               	; preds = %B393
  %t453 = add i32 10, 0
  %t428 = add i32 0, 0
  br label %B395
B405:                               	; preds = %B394
  %t453 = add i32 %t207, 0
  %t428 = add i32 %t211, 0
  br label %B395
B472:                               	; preds = %B394
  %t452 = add i32 %t207, 0
  %t427 = add i32 %t211, 0
  br label %B394
B395:                               	; preds = %B398, %B405
  call void @putch(i32 10)
  br label %B406
B406:                               	; preds = %B395
  %t216 = load i32, i32* @N, align 4
  %t446 = add i32 10, 0
  %t421 = add i32 0, 0
  %t217 = icmp slt i32 0, %t216
  br i1 %t217, label %B407, label %B411
B407:                               	; preds = %B406, %B477
  %t220 = getelementptr inbounds [3 x float], [3 x float]* %t365, i32 0, i32 %t421
  %t412 = load float, float* %t220, align 4
  %t221 = fptosi float %t412 to i32
  call void @putint(i32 %t221)
  %t225 = add i32 %t421, 1
  %t414 = load i32, i32* @N, align 4
  %t415 = icmp slt i32 %t225, %t414
  br i1 %t415, label %B477, label %B418
B411:                               	; preds = %B406
  %t447 = add i32 10, 0
  %t422 = add i32 0, 0
  br label %B408
B418:                               	; preds = %B407
  %t447 = add i32 %t221, 0
  %t422 = add i32 %t225, 0
  br label %B408
B477:                               	; preds = %B407
  %t446 = add i32 %t221, 0
  %t421 = add i32 %t225, 0
  br label %B407
B408:                               	; preds = %B411, %B418
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
