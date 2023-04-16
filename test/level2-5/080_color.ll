@maxn = global i32 18, align 4
@mod = global i32 1000000007, align 4
@dp = global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer, align 4
@list = global [200 x i32] zeroinitializer, align 4
@cns = global [20 x i32] zeroinitializer, align 4
define i32 @equal(i32 %t9, i32 %t11) {
B246:
  %t247 = alloca i32, align 4
  %t248 = alloca i32, align 4
  store i32 %t9, i32* %t247, align 4
  store i32 %t11, i32* %t248, align 4
  %t13 = load i32, i32* %t247, align 4
  %t14 = load i32, i32* %t248, align 4
  %t15 = icmp eq i32 %t13, %t14
  br i1 %t15, label %B249, label %B253
B249:                               	; preds = %B246
  ret i32 1
B253:                               	; preds = %B246
  br label %B250
B250:                               	; preds = %B253
  ret i32 0
}
define i32 @dfs(i32 %t16, i32 %t18, i32 %t20, i32 %t22, i32 %t24, i32 %t26) {
B254:
  %t255 = alloca i32, align 4
  %t256 = alloca i32, align 4
  %t257 = alloca i32, align 4
  %t258 = alloca i32, align 4
  %t259 = alloca i32, align 4
  %t260 = alloca i32, align 4
  store i32 %t16, i32* %t255, align 4
  store i32 %t18, i32* %t256, align 4
  store i32 %t20, i32* %t257, align 4
  store i32 %t22, i32* %t258, align 4
  store i32 %t24, i32* %t259, align 4
  store i32 %t26, i32* %t260, align 4
  %t28 = load i32, i32* %t255, align 4
  %t34 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t28
  %t29 = load i32, i32* %t256, align 4
  %t263 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t34, i32 0, i32 %t29
  %t30 = load i32, i32* %t257, align 4
  %t264 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t263, i32 0, i32 %t30
  %t31 = load i32, i32* %t258, align 4
  %t265 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t264, i32 0, i32 %t31
  %t32 = load i32, i32* %t259, align 4
  %t266 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t265, i32 0, i32 %t32
  %t33 = load i32, i32* %t260, align 4
  %t267 = getelementptr inbounds [7 x i32], [7 x i32]* %t266, i32 0, i32 %t33
  %t268 = load i32, i32* %t267, align 4
  %t35 = sub i32 0, 1
  %t36 = icmp ne i32 %t268, %t35
  br i1 %t36, label %B261, label %B271
B261:                               	; preds = %B254
  %t37 = load i32, i32* %t255, align 4
  %t43 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t37
  %t38 = load i32, i32* %t256, align 4
  %t272 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t43, i32 0, i32 %t38
  %t39 = load i32, i32* %t257, align 4
  %t273 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t272, i32 0, i32 %t39
  %t40 = load i32, i32* %t258, align 4
  %t274 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t273, i32 0, i32 %t40
  %t41 = load i32, i32* %t259, align 4
  %t275 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t274, i32 0, i32 %t41
  %t42 = load i32, i32* %t260, align 4
  %t276 = getelementptr inbounds [7 x i32], [7 x i32]* %t275, i32 0, i32 %t42
  %t277 = load i32, i32* %t276, align 4
  ret i32 %t277
B271:                               	; preds = %B254
  br label %B262
B262:                               	; preds = %B271
  %t44 = load i32, i32* %t255, align 4
  %t45 = load i32, i32* %t256, align 4
  %t46 = add i32 %t44, %t45
  %t47 = load i32, i32* %t257, align 4
  %t48 = add i32 %t46, %t47
  %t49 = load i32, i32* %t258, align 4
  %t50 = add i32 %t48, %t49
  %t51 = load i32, i32* %t259, align 4
  %t52 = add i32 %t50, %t51
  %t53 = icmp eq i32 %t52, 0
  br i1 %t53, label %B278, label %B282
B278:                               	; preds = %B262
  ret i32 1
B282:                               	; preds = %B262
  br label %B279
B279:                               	; preds = %B282
  %t55 = load i32, i32* %t255, align 4
  %t73 = icmp ne i32 %t55, 0
  br i1 %t73, label %B284, label %B287
B284:                               	; preds = %B279
  %t58 = load i32, i32* %t255, align 4
  %t59 = load i32, i32* %t260, align 4
  %t60 = call i32 @equal(i32 %t59, i32 2)
  %t61 = sub i32 %t58, %t60
  %t62 = load i32, i32* %t255, align 4
  %t63 = sub i32 %t62, 1
  %t64 = load i32, i32* %t256, align 4
  %t65 = load i32, i32* %t257, align 4
  %t66 = load i32, i32* %t258, align 4
  %t67 = load i32, i32* %t259, align 4
  %t68 = call i32 @dfs(i32 %t63, i32 %t64, i32 %t65, i32 %t66, i32 %t67, i32 1)
  %t69 = mul i32 %t61, %t68
  %t70 = add i32 0, %t69
  %t71 = load i32, i32* @mod, align 4
  %t72 = srem i32 %t70, %t71
  %t438 = add i32 %t72, 0
  br label %B285
B287:                               	; preds = %B279
  %t438 = add i32 0, 0
  br label %B285
B285:                               	; preds = %B284, %B287
  %t74 = load i32, i32* %t256, align 4
  %t93 = icmp ne i32 %t74, 0
  br i1 %t93, label %B289, label %B292
B289:                               	; preds = %B285
  %t77 = load i32, i32* %t256, align 4
  %t78 = load i32, i32* %t260, align 4
  %t79 = call i32 @equal(i32 %t78, i32 3)
  %t80 = sub i32 %t77, %t79
  %t81 = load i32, i32* %t255, align 4
  %t82 = add i32 %t81, 1
  %t83 = load i32, i32* %t256, align 4
  %t84 = sub i32 %t83, 1
  %t85 = load i32, i32* %t257, align 4
  %t86 = load i32, i32* %t258, align 4
  %t87 = load i32, i32* %t259, align 4
  %t88 = call i32 @dfs(i32 %t82, i32 %t84, i32 %t85, i32 %t86, i32 %t87, i32 2)
  %t89 = mul i32 %t80, %t88
  %t90 = add i32 %t438, %t89
  %t91 = load i32, i32* @mod, align 4
  %t92 = srem i32 %t90, %t91
  %t435 = add i32 %t92, 0
  br label %B290
B292:                               	; preds = %B285
  %t435 = add i32 %t438, 0
  br label %B290
B290:                               	; preds = %B289, %B292
  %t94 = load i32, i32* %t257, align 4
  %t113 = icmp ne i32 %t94, 0
  br i1 %t113, label %B294, label %B297
B294:                               	; preds = %B290
  %t97 = load i32, i32* %t257, align 4
  %t98 = load i32, i32* %t260, align 4
  %t99 = call i32 @equal(i32 %t98, i32 4)
  %t100 = sub i32 %t97, %t99
  %t101 = load i32, i32* %t255, align 4
  %t102 = load i32, i32* %t256, align 4
  %t103 = add i32 %t102, 1
  %t104 = load i32, i32* %t257, align 4
  %t105 = sub i32 %t104, 1
  %t106 = load i32, i32* %t258, align 4
  %t107 = load i32, i32* %t259, align 4
  %t108 = call i32 @dfs(i32 %t101, i32 %t103, i32 %t105, i32 %t106, i32 %t107, i32 3)
  %t109 = mul i32 %t100, %t108
  %t110 = add i32 %t435, %t109
  %t111 = load i32, i32* @mod, align 4
  %t112 = srem i32 %t110, %t111
  %t432 = add i32 %t112, 0
  br label %B295
B297:                               	; preds = %B290
  %t432 = add i32 %t435, 0
  br label %B295
B295:                               	; preds = %B294, %B297
  %t114 = load i32, i32* %t258, align 4
  %t133 = icmp ne i32 %t114, 0
  br i1 %t133, label %B299, label %B302
B299:                               	; preds = %B295
  %t117 = load i32, i32* %t258, align 4
  %t118 = load i32, i32* %t260, align 4
  %t119 = call i32 @equal(i32 %t118, i32 5)
  %t120 = sub i32 %t117, %t119
  %t121 = load i32, i32* %t255, align 4
  %t122 = load i32, i32* %t256, align 4
  %t123 = load i32, i32* %t257, align 4
  %t124 = add i32 %t123, 1
  %t125 = load i32, i32* %t258, align 4
  %t126 = sub i32 %t125, 1
  %t127 = load i32, i32* %t259, align 4
  %t128 = call i32 @dfs(i32 %t121, i32 %t122, i32 %t124, i32 %t126, i32 %t127, i32 4)
  %t129 = mul i32 %t120, %t128
  %t130 = add i32 %t432, %t129
  %t131 = load i32, i32* @mod, align 4
  %t132 = srem i32 %t130, %t131
  %t429 = add i32 %t132, 0
  br label %B300
B302:                               	; preds = %B295
  %t429 = add i32 %t432, 0
  br label %B300
B300:                               	; preds = %B299, %B302
  %t134 = load i32, i32* %t259, align 4
  %t150 = icmp ne i32 %t134, 0
  br i1 %t150, label %B304, label %B307
B304:                               	; preds = %B300
  %t137 = load i32, i32* %t259, align 4
  %t138 = load i32, i32* %t255, align 4
  %t139 = load i32, i32* %t256, align 4
  %t140 = load i32, i32* %t257, align 4
  %t141 = load i32, i32* %t258, align 4
  %t142 = add i32 %t141, 1
  %t143 = load i32, i32* %t259, align 4
  %t144 = sub i32 %t143, 1
  %t145 = call i32 @dfs(i32 %t138, i32 %t139, i32 %t140, i32 %t142, i32 %t144, i32 5)
  %t146 = mul i32 %t137, %t145
  %t147 = add i32 %t429, %t146
  %t148 = load i32, i32* @mod, align 4
  %t149 = srem i32 %t147, %t148
  %t426 = add i32 %t149, 0
  br label %B305
B307:                               	; preds = %B300
  %t426 = add i32 %t429, 0
  br label %B305
B305:                               	; preds = %B304, %B307
  %t159 = load i32, i32* @mod, align 4
  %t160 = srem i32 %t426, %t159
  %t151 = load i32, i32* %t255, align 4
  %t157 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t151
  %t152 = load i32, i32* %t256, align 4
  %t309 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t157, i32 0, i32 %t152
  %t153 = load i32, i32* %t257, align 4
  %t310 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t309, i32 0, i32 %t153
  %t154 = load i32, i32* %t258, align 4
  %t311 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t310, i32 0, i32 %t154
  %t155 = load i32, i32* %t259, align 4
  %t312 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t311, i32 0, i32 %t155
  %t156 = load i32, i32* %t260, align 4
  %t313 = getelementptr inbounds [7 x i32], [7 x i32]* %t312, i32 0, i32 %t156
  store i32 %t160, i32* %t313, align 4
  %t161 = load i32, i32* %t255, align 4
  %t167 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t161
  %t162 = load i32, i32* %t256, align 4
  %t314 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t167, i32 0, i32 %t162
  %t163 = load i32, i32* %t257, align 4
  %t315 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t314, i32 0, i32 %t163
  %t164 = load i32, i32* %t258, align 4
  %t316 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t315, i32 0, i32 %t164
  %t165 = load i32, i32* %t259, align 4
  %t317 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t316, i32 0, i32 %t165
  %t166 = load i32, i32* %t260, align 4
  %t318 = getelementptr inbounds [7 x i32], [7 x i32]* %t317, i32 0, i32 %t166
  %t319 = load i32, i32* %t318, align 4
  ret i32 %t319
}
define i32 @main() {
B320:
  %t169 = call i32 @getint()
  br label %B323
B323:                               	; preds = %B320
  %t173 = load i32, i32* @maxn, align 4
  %t535 = add i32 0, 0
  %t510 = add i32 0, 0
  %t489 = add i32 0, 0
  %t472 = add i32 0, 0
  %t459 = add i32 0, 0
  %t449 = add i32 0, 0
  %t174 = icmp slt i32 0, %t173
  br i1 %t174, label %B324, label %B328
B324:                               	; preds = %B323, %B332
  br label %B330
B328:                               	; preds = %B323
  %t534 = add i32 0, 0
  %t509 = add i32 0, 0
  %t488 = add i32 0, 0
  %t471 = add i32 0, 0
  %t458 = add i32 0, 0
  %t448 = add i32 0, 0
  br label %B325
B330:                               	; preds = %B324
  %t177 = load i32, i32* @maxn, align 4
  %t531 = add i32 %t535, 0
  %t506 = add i32 %t510, 0
  %t485 = add i32 %t489, 0
  %t468 = add i32 %t472, 0
  %t455 = add i32 0, 0
  %t178 = icmp slt i32 0, %t177
  br i1 %t178, label %B331, label %B335
B325:                               	; preds = %B328, %B403
  br label %B404
B331:                               	; preds = %B330, %B339
  br label %B337
B335:                               	; preds = %B330
  %t532 = add i32 %t535, 0
  %t507 = add i32 %t510, 0
  %t486 = add i32 %t489, 0
  %t469 = add i32 %t472, 0
  %t456 = add i32 0, 0
  br label %B332
B404:                               	; preds = %B325
  %t443 = add i32 0, 0
  %t223 = icmp slt i32 0, %t169
  br i1 %t223, label %B405, label %B409
B337:                               	; preds = %B331
  %t181 = load i32, i32* @maxn, align 4
  %t528 = add i32 %t531, 0
  %t503 = add i32 %t506, 0
  %t482 = add i32 %t485, 0
  %t465 = add i32 0, 0
  %t182 = icmp slt i32 0, %t181
  br i1 %t182, label %B338, label %B342
B332:                               	; preds = %B335, %B397
  %t219 = add i32 %t449, 1
  %t399 = load i32, i32* @maxn, align 4
  %t535 = add i32 %t532, 0
  %t510 = add i32 %t507, 0
  %t489 = add i32 %t486, 0
  %t472 = add i32 %t469, 0
  %t459 = add i32 %t456, 0
  %t449 = add i32 %t219, 0
  %t400 = icmp slt i32 %t219, %t399
  br i1 %t400, label %B324, label %B403
B405:                               	; preds = %B404, %B594
  %t226 = call i32 @getint()
  %t225 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t443
  store i32 %t226, i32* %t225, align 4
  %t231 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t443
  %t410 = load i32, i32* %t231, align 4
  %t232 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 %t410
  %t411 = load i32, i32* %t232, align 4
  %t233 = add i32 %t411, 1
  %t228 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t443
  %t412 = load i32, i32* %t228, align 4
  %t229 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 %t412
  store i32 %t233, i32* %t229, align 4
  %t236 = add i32 %t443, 1
  %t415 = icmp slt i32 %t236, %t169
  br i1 %t415, label %B594, label %B418
B409:                               	; preds = %B404
  %t444 = add i32 0, 0
  br label %B406
B338:                               	; preds = %B337, %B346
  br label %B344
B342:                               	; preds = %B337
  %t529 = add i32 %t531, 0
  %t504 = add i32 %t506, 0
  %t483 = add i32 %t485, 0
  %t466 = add i32 0, 0
  br label %B339
B403:                               	; preds = %B332
  %t534 = add i32 %t532, 0
  %t509 = add i32 %t507, 0
  %t488 = add i32 %t486, 0
  %t471 = add i32 %t469, 0
  %t458 = add i32 %t456, 0
  %t448 = add i32 %t219, 0
  br label %B325
B418:                               	; preds = %B405
  %t444 = add i32 %t236, 0
  br label %B406
B594:                               	; preds = %B405
  %t443 = add i32 %t236, 0
  br label %B405
B406:                               	; preds = %B409, %B418
  %t237 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 1
  %t420 = load i32, i32* %t237, align 4
  %t238 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 2
  %t421 = load i32, i32* %t238, align 4
  %t239 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 3
  %t422 = load i32, i32* %t239, align 4
  %t240 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 4
  %t423 = load i32, i32* %t240, align 4
  %t241 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 5
  %t424 = load i32, i32* %t241, align 4
  %t242 = call i32 @dfs(i32 %t420, i32 %t421, i32 %t422, i32 %t423, i32 %t424, i32 0)
  call void @putint(i32 %t242)
  ret i32 %t242
B344:                               	; preds = %B338
  %t185 = load i32, i32* @maxn, align 4
  %t525 = add i32 %t528, 0
  %t500 = add i32 %t503, 0
  %t479 = add i32 0, 0
  %t186 = icmp slt i32 0, %t185
  br i1 %t186, label %B345, label %B349
B339:                               	; preds = %B342, %B391
  %t216 = add i32 %t455, 1
  %t393 = load i32, i32* @maxn, align 4
  %t531 = add i32 %t529, 0
  %t506 = add i32 %t504, 0
  %t485 = add i32 %t483, 0
  %t468 = add i32 %t466, 0
  %t455 = add i32 %t216, 0
  %t394 = icmp slt i32 %t216, %t393
  br i1 %t394, label %B331, label %B397
B345:                               	; preds = %B344, %B353
  br label %B351
B349:                               	; preds = %B344
  %t526 = add i32 %t528, 0
  %t501 = add i32 %t503, 0
  %t480 = add i32 0, 0
  br label %B346
B397:                               	; preds = %B339
  %t532 = add i32 %t529, 0
  %t507 = add i32 %t504, 0
  %t486 = add i32 %t483, 0
  %t469 = add i32 %t466, 0
  %t456 = add i32 %t216, 0
  br label %B332
B351:                               	; preds = %B345
  %t189 = load i32, i32* @maxn, align 4
  %t522 = add i32 %t525, 0
  %t497 = add i32 0, 0
  %t190 = icmp slt i32 0, %t189
  br i1 %t190, label %B352, label %B356
B346:                               	; preds = %B349, %B385
  %t213 = add i32 %t465, 1
  %t387 = load i32, i32* @maxn, align 4
  %t528 = add i32 %t526, 0
  %t503 = add i32 %t501, 0
  %t482 = add i32 %t480, 0
  %t465 = add i32 %t213, 0
  %t388 = icmp slt i32 %t213, %t387
  br i1 %t388, label %B338, label %B391
B352:                               	; preds = %B351, %B360
  br label %B358
B356:                               	; preds = %B351
  %t523 = add i32 %t525, 0
  %t498 = add i32 0, 0
  br label %B353
B391:                               	; preds = %B346
  %t529 = add i32 %t526, 0
  %t504 = add i32 %t501, 0
  %t483 = add i32 %t480, 0
  %t466 = add i32 %t213, 0
  br label %B339
B358:                               	; preds = %B352
  %t519 = add i32 0, 0
  %t193 = icmp slt i32 0, 7
  br i1 %t193, label %B359, label %B363
B353:                               	; preds = %B356, %B379
  %t210 = add i32 %t479, 1
  %t381 = load i32, i32* @maxn, align 4
  %t525 = add i32 %t523, 0
  %t500 = add i32 %t498, 0
  %t479 = add i32 %t210, 0
  %t382 = icmp slt i32 %t210, %t381
  br i1 %t382, label %B345, label %B385
B359:                               	; preds = %B358, %B591
  %t201 = sub i32 0, 1
  %t200 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t449
  %t364 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t200, i32 0, i32 %t455
  %t365 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t364, i32 0, i32 %t465
  %t366 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t365, i32 0, i32 %t479
  %t367 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t366, i32 0, i32 %t497
  %t368 = getelementptr inbounds [7 x i32], [7 x i32]* %t367, i32 0, i32 %t519
  store i32 %t201, i32* %t368, align 4
  %t204 = add i32 %t519, 1
  %t370 = icmp slt i32 %t204, 7
  br i1 %t370, label %B591, label %B373
B363:                               	; preds = %B358
  %t520 = add i32 0, 0
  br label %B360
B385:                               	; preds = %B353
  %t526 = add i32 %t523, 0
  %t501 = add i32 %t498, 0
  %t480 = add i32 %t210, 0
  br label %B346
B373:                               	; preds = %B359
  %t520 = add i32 %t204, 0
  br label %B360
B591:                               	; preds = %B359
  %t519 = add i32 %t204, 0
  br label %B359
B360:                               	; preds = %B363, %B373
  %t207 = add i32 %t497, 1
  %t375 = load i32, i32* @maxn, align 4
  %t522 = add i32 %t520, 0
  %t497 = add i32 %t207, 0
  %t376 = icmp slt i32 %t207, %t375
  br i1 %t376, label %B352, label %B379
B379:                               	; preds = %B360
  %t523 = add i32 %t520, 0
  %t498 = add i32 %t207, 0
  br label %B353
}
declare i32 @getint()
declare void @putint(i32)
