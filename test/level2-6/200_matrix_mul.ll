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
  %t238 = alloca i32, align 4
  store float* %t3, float** %t229, align 4
  store float* %t5, float** %t230, align 4
  store float* %t7, float** %t231, align 4
  store float* %t9, float** %t232, align 4
  store float* %t11, float** %t233, align 4
  store float* %t13, float** %t234, align 4
  store float* %t15, float** %t235, align 4
  store float* %t17, float** %t236, align 4
  store float* %t19, float** %t237, align 4
  store i32 0, i32* %t238, align 4
  %t239 = load float*, float** %t229, align 4
  %t24 = getelementptr inbounds float, float* %t239, i32 0
  %t240 = load float, float* %t24, align 4
  %t241 = load float*, float** %t232, align 4
  %t25 = getelementptr inbounds float, float* %t241, i32 0
  %t242 = load float, float* %t25, align 4
  %t26 = fmul float %t240, %t242
  %t243 = load float*, float** %t229, align 4
  %t27 = getelementptr inbounds float, float* %t243, i32 1
  %t244 = load float, float* %t27, align 4
  %t245 = load float*, float** %t233, align 4
  %t28 = getelementptr inbounds float, float* %t245, i32 0
  %t246 = load float, float* %t28, align 4
  %t29 = fmul float %t244, %t246
  %t30 = fadd float %t26, %t29
  %t247 = load float*, float** %t229, align 4
  %t31 = getelementptr inbounds float, float* %t247, i32 2
  %t248 = load float, float* %t31, align 4
  %t249 = load float*, float** %t234, align 4
  %t32 = getelementptr inbounds float, float* %t249, i32 0
  %t250 = load float, float* %t32, align 4
  %t33 = fmul float %t248, %t250
  %t34 = fadd float %t30, %t33
  %t251 = load float*, float** %t235, align 4
  %t23 = getelementptr inbounds float, float* %t251, i32 0
  store float %t34, float* %t23, align 4
  %t252 = load float*, float** %t229, align 4
  %t36 = getelementptr inbounds float, float* %t252, i32 0
  %t253 = load float, float* %t36, align 4
  %t254 = load float*, float** %t232, align 4
  %t37 = getelementptr inbounds float, float* %t254, i32 1
  %t255 = load float, float* %t37, align 4
  %t38 = fmul float %t253, %t255
  %t256 = load float*, float** %t229, align 4
  %t39 = getelementptr inbounds float, float* %t256, i32 1
  %t257 = load float, float* %t39, align 4
  %t258 = load float*, float** %t233, align 4
  %t40 = getelementptr inbounds float, float* %t258, i32 1
  %t259 = load float, float* %t40, align 4
  %t41 = fmul float %t257, %t259
  %t42 = fadd float %t38, %t41
  %t260 = load float*, float** %t229, align 4
  %t43 = getelementptr inbounds float, float* %t260, i32 2
  %t261 = load float, float* %t43, align 4
  %t262 = load float*, float** %t234, align 4
  %t44 = getelementptr inbounds float, float* %t262, i32 1
  %t263 = load float, float* %t44, align 4
  %t45 = fmul float %t261, %t263
  %t46 = fadd float %t42, %t45
  %t264 = load float*, float** %t235, align 4
  %t35 = getelementptr inbounds float, float* %t264, i32 1
  store float %t46, float* %t35, align 4
  %t265 = load float*, float** %t229, align 4
  %t48 = getelementptr inbounds float, float* %t265, i32 0
  %t266 = load float, float* %t48, align 4
  %t267 = load float*, float** %t232, align 4
  %t49 = getelementptr inbounds float, float* %t267, i32 2
  %t268 = load float, float* %t49, align 4
  %t50 = fmul float %t266, %t268
  %t269 = load float*, float** %t229, align 4
  %t51 = getelementptr inbounds float, float* %t269, i32 1
  %t270 = load float, float* %t51, align 4
  %t271 = load float*, float** %t233, align 4
  %t52 = getelementptr inbounds float, float* %t271, i32 2
  %t272 = load float, float* %t52, align 4
  %t53 = fmul float %t270, %t272
  %t54 = fadd float %t50, %t53
  %t273 = load float*, float** %t229, align 4
  %t55 = getelementptr inbounds float, float* %t273, i32 2
  %t274 = load float, float* %t55, align 4
  %t275 = load float*, float** %t234, align 4
  %t56 = getelementptr inbounds float, float* %t275, i32 2
  %t276 = load float, float* %t56, align 4
  %t57 = fmul float %t274, %t276
  %t58 = fadd float %t54, %t57
  %t277 = load float*, float** %t235, align 4
  %t47 = getelementptr inbounds float, float* %t277, i32 2
  store float %t58, float* %t47, align 4
  %t278 = load float*, float** %t230, align 4
  %t60 = getelementptr inbounds float, float* %t278, i32 0
  %t279 = load float, float* %t60, align 4
  %t280 = load float*, float** %t232, align 4
  %t61 = getelementptr inbounds float, float* %t280, i32 0
  %t281 = load float, float* %t61, align 4
  %t62 = fmul float %t279, %t281
  %t282 = load float*, float** %t230, align 4
  %t63 = getelementptr inbounds float, float* %t282, i32 1
  %t283 = load float, float* %t63, align 4
  %t284 = load float*, float** %t233, align 4
  %t64 = getelementptr inbounds float, float* %t284, i32 0
  %t285 = load float, float* %t64, align 4
  %t65 = fmul float %t283, %t285
  %t66 = fadd float %t62, %t65
  %t286 = load float*, float** %t230, align 4
  %t67 = getelementptr inbounds float, float* %t286, i32 2
  %t287 = load float, float* %t67, align 4
  %t288 = load float*, float** %t234, align 4
  %t68 = getelementptr inbounds float, float* %t288, i32 0
  %t289 = load float, float* %t68, align 4
  %t69 = fmul float %t287, %t289
  %t70 = fadd float %t66, %t69
  %t290 = load float*, float** %t236, align 4
  %t59 = getelementptr inbounds float, float* %t290, i32 0
  store float %t70, float* %t59, align 4
  %t291 = load float*, float** %t230, align 4
  %t72 = getelementptr inbounds float, float* %t291, i32 0
  %t292 = load float, float* %t72, align 4
  %t293 = load float*, float** %t232, align 4
  %t73 = getelementptr inbounds float, float* %t293, i32 1
  %t294 = load float, float* %t73, align 4
  %t74 = fmul float %t292, %t294
  %t295 = load float*, float** %t230, align 4
  %t75 = getelementptr inbounds float, float* %t295, i32 1
  %t296 = load float, float* %t75, align 4
  %t297 = load float*, float** %t233, align 4
  %t76 = getelementptr inbounds float, float* %t297, i32 1
  %t298 = load float, float* %t76, align 4
  %t77 = fmul float %t296, %t298
  %t78 = fadd float %t74, %t77
  %t299 = load float*, float** %t230, align 4
  %t79 = getelementptr inbounds float, float* %t299, i32 2
  %t300 = load float, float* %t79, align 4
  %t301 = load float*, float** %t234, align 4
  %t80 = getelementptr inbounds float, float* %t301, i32 1
  %t302 = load float, float* %t80, align 4
  %t81 = fmul float %t300, %t302
  %t82 = fadd float %t78, %t81
  %t303 = load float*, float** %t236, align 4
  %t71 = getelementptr inbounds float, float* %t303, i32 1
  store float %t82, float* %t71, align 4
  %t304 = load float*, float** %t230, align 4
  %t84 = getelementptr inbounds float, float* %t304, i32 0
  %t305 = load float, float* %t84, align 4
  %t306 = load float*, float** %t232, align 4
  %t85 = getelementptr inbounds float, float* %t306, i32 2
  %t307 = load float, float* %t85, align 4
  %t86 = fmul float %t305, %t307
  %t308 = load float*, float** %t230, align 4
  %t87 = getelementptr inbounds float, float* %t308, i32 1
  %t309 = load float, float* %t87, align 4
  %t310 = load float*, float** %t233, align 4
  %t88 = getelementptr inbounds float, float* %t310, i32 2
  %t311 = load float, float* %t88, align 4
  %t89 = fmul float %t309, %t311
  %t90 = fadd float %t86, %t89
  %t312 = load float*, float** %t230, align 4
  %t91 = getelementptr inbounds float, float* %t312, i32 2
  %t313 = load float, float* %t91, align 4
  %t314 = load float*, float** %t234, align 4
  %t92 = getelementptr inbounds float, float* %t314, i32 2
  %t315 = load float, float* %t92, align 4
  %t93 = fmul float %t313, %t315
  %t94 = fadd float %t90, %t93
  %t316 = load float*, float** %t236, align 4
  %t83 = getelementptr inbounds float, float* %t316, i32 2
  store float %t94, float* %t83, align 4
  %t317 = load float*, float** %t231, align 4
  %t96 = getelementptr inbounds float, float* %t317, i32 0
  %t318 = load float, float* %t96, align 4
  %t319 = load float*, float** %t232, align 4
  %t97 = getelementptr inbounds float, float* %t319, i32 0
  %t320 = load float, float* %t97, align 4
  %t98 = fmul float %t318, %t320
  %t321 = load float*, float** %t231, align 4
  %t99 = getelementptr inbounds float, float* %t321, i32 1
  %t322 = load float, float* %t99, align 4
  %t323 = load float*, float** %t233, align 4
  %t100 = getelementptr inbounds float, float* %t323, i32 0
  %t324 = load float, float* %t100, align 4
  %t101 = fmul float %t322, %t324
  %t102 = fadd float %t98, %t101
  %t325 = load float*, float** %t231, align 4
  %t103 = getelementptr inbounds float, float* %t325, i32 2
  %t326 = load float, float* %t103, align 4
  %t327 = load float*, float** %t234, align 4
  %t104 = getelementptr inbounds float, float* %t327, i32 0
  %t328 = load float, float* %t104, align 4
  %t105 = fmul float %t326, %t328
  %t106 = fadd float %t102, %t105
  %t329 = load float*, float** %t237, align 4
  %t95 = getelementptr inbounds float, float* %t329, i32 0
  store float %t106, float* %t95, align 4
  %t330 = load float*, float** %t231, align 4
  %t108 = getelementptr inbounds float, float* %t330, i32 0
  %t331 = load float, float* %t108, align 4
  %t332 = load float*, float** %t232, align 4
  %t109 = getelementptr inbounds float, float* %t332, i32 1
  %t333 = load float, float* %t109, align 4
  %t110 = fmul float %t331, %t333
  %t334 = load float*, float** %t231, align 4
  %t111 = getelementptr inbounds float, float* %t334, i32 1
  %t335 = load float, float* %t111, align 4
  %t336 = load float*, float** %t233, align 4
  %t112 = getelementptr inbounds float, float* %t336, i32 1
  %t337 = load float, float* %t112, align 4
  %t113 = fmul float %t335, %t337
  %t114 = fadd float %t110, %t113
  %t338 = load float*, float** %t231, align 4
  %t115 = getelementptr inbounds float, float* %t338, i32 2
  %t339 = load float, float* %t115, align 4
  %t340 = load float*, float** %t234, align 4
  %t116 = getelementptr inbounds float, float* %t340, i32 1
  %t341 = load float, float* %t116, align 4
  %t117 = fmul float %t339, %t341
  %t118 = fadd float %t114, %t117
  %t342 = load float*, float** %t237, align 4
  %t107 = getelementptr inbounds float, float* %t342, i32 1
  store float %t118, float* %t107, align 4
  %t343 = load float*, float** %t231, align 4
  %t120 = getelementptr inbounds float, float* %t343, i32 0
  %t344 = load float, float* %t120, align 4
  %t345 = load float*, float** %t232, align 4
  %t121 = getelementptr inbounds float, float* %t345, i32 2
  %t346 = load float, float* %t121, align 4
  %t122 = fmul float %t344, %t346
  %t347 = load float*, float** %t231, align 4
  %t123 = getelementptr inbounds float, float* %t347, i32 1
  %t348 = load float, float* %t123, align 4
  %t349 = load float*, float** %t233, align 4
  %t124 = getelementptr inbounds float, float* %t349, i32 2
  %t350 = load float, float* %t124, align 4
  %t125 = fmul float %t348, %t350
  %t126 = fadd float %t122, %t125
  %t351 = load float*, float** %t231, align 4
  %t127 = getelementptr inbounds float, float* %t351, i32 2
  %t352 = load float, float* %t127, align 4
  %t353 = load float*, float** %t234, align 4
  %t128 = getelementptr inbounds float, float* %t353, i32 2
  %t354 = load float, float* %t128, align 4
  %t129 = fmul float %t352, %t354
  %t130 = fadd float %t126, %t129
  %t355 = load float*, float** %t237, align 4
  %t119 = getelementptr inbounds float, float* %t355, i32 2
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
  %t366 = alloca i32, align 4
  %t373 = alloca i32, align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t366, align 4
  br label %B367
B367:                               	; preds = %B356, %B368
  %t145 = load i32, i32* %t366, align 4
  %t146 = load i32, i32* @M, align 4
  %t147 = icmp slt i32 %t145, %t146
  br i1 %t147, label %B368, label %B372
B368:                               	; preds = %B367
  %t150 = load i32, i32* %t366, align 4
  %t151 = sitofp i32 %t150 to float
  %t148 = load i32, i32* %t366, align 4
  %t149 = getelementptr inbounds [3 x float], [3 x float]* %t357, i32 0, i32 %t148
  store float %t151, float* %t149, align 4
  %t154 = load i32, i32* %t366, align 4
  %t155 = sitofp i32 %t154 to float
  %t152 = load i32, i32* %t366, align 4
  %t153 = getelementptr inbounds [3 x float], [3 x float]* %t358, i32 0, i32 %t152
  store float %t155, float* %t153, align 4
  %t158 = load i32, i32* %t366, align 4
  %t159 = sitofp i32 %t158 to float
  %t156 = load i32, i32* %t366, align 4
  %t157 = getelementptr inbounds [3 x float], [3 x float]* %t359, i32 0, i32 %t156
  store float %t159, float* %t157, align 4
  %t162 = load i32, i32* %t366, align 4
  %t163 = sitofp i32 %t162 to float
  %t160 = load i32, i32* %t366, align 4
  %t161 = getelementptr inbounds [3 x float], [3 x float]* %t360, i32 0, i32 %t160
  store float %t163, float* %t161, align 4
  %t166 = load i32, i32* %t366, align 4
  %t167 = sitofp i32 %t166 to float
  %t164 = load i32, i32* %t366, align 4
  %t165 = getelementptr inbounds [3 x float], [3 x float]* %t361, i32 0, i32 %t164
  store float %t167, float* %t165, align 4
  %t170 = load i32, i32* %t366, align 4
  %t171 = sitofp i32 %t170 to float
  %t168 = load i32, i32* %t366, align 4
  %t169 = getelementptr inbounds [3 x float], [3 x float]* %t362, i32 0, i32 %t168
  store float %t171, float* %t169, align 4
  %t173 = load i32, i32* %t366, align 4
  %t174 = add i32 %t173, 1
  store i32 %t174, i32* %t366, align 4
  br label %B367
B372:                               	; preds = %B367
  br label %B369
B369:                               	; preds = %B372
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
  store i32 %t185, i32* %t366, align 4
  br label %B374
B374:                               	; preds = %B369, %B375
  %t187 = load i32, i32* %t366, align 4
  %t188 = load i32, i32* @N, align 4
  %t189 = icmp slt i32 %t187, %t188
  br i1 %t189, label %B375, label %B379
B375:                               	; preds = %B374
  %t191 = load i32, i32* %t366, align 4
  %t192 = getelementptr inbounds [6 x float], [6 x float]* %t363, i32 0, i32 %t191
  %t380 = load float, float* %t192, align 4
  %t193 = fptosi float %t380 to i32
  store i32 %t193, i32* %t373, align 4
  %t194 = load i32, i32* %t373, align 4
  call void @putint(i32 %t194)
  %t196 = load i32, i32* %t366, align 4
  %t197 = add i32 %t196, 1
  store i32 %t197, i32* %t366, align 4
  br label %B374
B379:                               	; preds = %B374
  br label %B376
B376:                               	; preds = %B379
  store i32 10, i32* %t373, align 4
  store i32 0, i32* %t366, align 4
  %t200 = load i32, i32* %t373, align 4
  call void @putch(i32 %t200)
  br label %B381
B381:                               	; preds = %B376, %B382
  %t201 = load i32, i32* %t366, align 4
  %t202 = load i32, i32* @N, align 4
  %t203 = icmp slt i32 %t201, %t202
  br i1 %t203, label %B382, label %B386
B382:                               	; preds = %B381
  %t205 = load i32, i32* %t366, align 4
  %t206 = getelementptr inbounds [3 x float], [3 x float]* %t364, i32 0, i32 %t205
  %t387 = load float, float* %t206, align 4
  %t207 = fptosi float %t387 to i32
  store i32 %t207, i32* %t373, align 4
  %t208 = load i32, i32* %t373, align 4
  call void @putint(i32 %t208)
  %t210 = load i32, i32* %t366, align 4
  %t211 = add i32 %t210, 1
  store i32 %t211, i32* %t366, align 4
  br label %B381
B386:                               	; preds = %B381
  br label %B383
B383:                               	; preds = %B386
  store i32 10, i32* %t373, align 4
  store i32 0, i32* %t366, align 4
  %t214 = load i32, i32* %t373, align 4
  call void @putch(i32 %t214)
  br label %B388
B388:                               	; preds = %B383, %B389
  %t215 = load i32, i32* %t366, align 4
  %t216 = load i32, i32* @N, align 4
  %t217 = icmp slt i32 %t215, %t216
  br i1 %t217, label %B389, label %B393
B389:                               	; preds = %B388
  %t219 = load i32, i32* %t366, align 4
  %t220 = getelementptr inbounds [3 x float], [3 x float]* %t365, i32 0, i32 %t219
  %t394 = load float, float* %t220, align 4
  %t221 = fptosi float %t394 to i32
  store i32 %t221, i32* %t373, align 4
  %t222 = load i32, i32* %t373, align 4
  call void @putint(i32 %t222)
  %t224 = load i32, i32* %t366, align 4
  %t225 = add i32 %t224, 1
  store i32 %t225, i32* %t366, align 4
  br label %B388
B393:                               	; preds = %B388
  br label %B390
B390:                               	; preds = %B393
  store i32 10, i32* %t373, align 4
  %t227 = load i32, i32* %t373, align 4
  call void @putch(i32 %t227)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
