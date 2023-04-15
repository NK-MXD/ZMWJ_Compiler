@a1 = global i32 1, align 4
@a2 = global i32 2, align 4
@a3 = global i32 3, align 4
@a4 = global i32 4, align 4
@a5 = global i32 5, align 4
@a6 = global i32 6, align 4
@a7 = global i32 7, align 4
@a8 = global i32 8, align 4
@a9 = global i32 9, align 4
@a10 = global i32 10, align 4
@a11 = global i32 11, align 4
@a12 = global i32 12, align 4
@a13 = global i32 13, align 4
@a14 = global i32 14, align 4
@a15 = global i32 15, align 4
@a16 = global i32 16, align 4
@a17 = global i32 1, align 4
@a18 = global i32 2, align 4
@a19 = global i32 3, align 4
@a20 = global i32 4, align 4
@a21 = global i32 5, align 4
@a22 = global i32 6, align 4
@a23 = global i32 7, align 4
@a24 = global i32 8, align 4
@a25 = global i32 9, align 4
@a26 = global i32 10, align 4
@a27 = global i32 11, align 4
@a28 = global i32 12, align 4
@a29 = global i32 13, align 4
@a30 = global i32 14, align 4
@a31 = global i32 15, align 4
@a32 = global i32 16, align 4
define i32 @func(i32 %t32, i32 %t34) {
B581:
  %t582 = alloca i32, align 4
  %t583 = alloca i32, align 4
  %t584 = alloca i32, align 4
  %t585 = alloca i32, align 4
  %t586 = alloca i32, align 4
  %t587 = alloca i32, align 4
  %t588 = alloca i32, align 4
  %t589 = alloca i32, align 4
  %t590 = alloca i32, align 4
  %t591 = alloca i32, align 4
  %t592 = alloca i32, align 4
  %t593 = alloca i32, align 4
  %t594 = alloca i32, align 4
  %t595 = alloca i32, align 4
  %t596 = alloca i32, align 4
  %t597 = alloca i32, align 4
  %t598 = alloca i32, align 4
  %t599 = alloca i32, align 4
  %t600 = alloca i32, align 4
  %t601 = alloca i32, align 4
  %t602 = alloca i32, align 4
  %t603 = alloca i32, align 4
  %t604 = alloca i32, align 4
  %t605 = alloca i32, align 4
  %t606 = alloca i32, align 4
  %t607 = alloca i32, align 4
  %t608 = alloca i32, align 4
  %t609 = alloca i32, align 4
  %t610 = alloca i32, align 4
  %t611 = alloca i32, align 4
  %t612 = alloca i32, align 4
  %t613 = alloca i32, align 4
  %t614 = alloca i32, align 4
  %t615 = alloca i32, align 4
  %t616 = alloca i32, align 4
  %t617 = alloca i32, align 4
  %t618 = alloca i32, align 4
  %t619 = alloca i32, align 4
  %t620 = alloca i32, align 4
  store i32 %t32, i32* %t582, align 4
  store i32 %t34, i32* %t583, align 4
  %t38 = load i32, i32* %t582, align 4
  %t39 = load i32, i32* %t583, align 4
  %t40 = add i32 %t38, %t39
  store i32 %t40, i32* %t584, align 4
  %t78 = call i32 @getint()
  store i32 %t78, i32* %t585, align 4
  %t80 = call i32 @getint()
  store i32 %t80, i32* %t586, align 4
  %t82 = call i32 @getint()
  store i32 %t82, i32* %t587, align 4
  %t84 = call i32 @getint()
  store i32 %t84, i32* %t588, align 4
  %t86 = load i32, i32* %t585, align 4
  %t87 = add i32 1, %t86
  %t88 = load i32, i32* @a1, align 4
  %t89 = add i32 %t87, %t88
  store i32 %t89, i32* %t589, align 4
  %t91 = load i32, i32* %t586, align 4
  %t92 = add i32 2, %t91
  %t93 = load i32, i32* @a2, align 4
  %t94 = add i32 %t92, %t93
  store i32 %t94, i32* %t590, align 4
  %t96 = load i32, i32* %t587, align 4
  %t97 = add i32 3, %t96
  %t98 = load i32, i32* @a3, align 4
  %t99 = add i32 %t97, %t98
  store i32 %t99, i32* %t591, align 4
  %t101 = load i32, i32* %t588, align 4
  %t102 = add i32 4, %t101
  %t103 = load i32, i32* @a4, align 4
  %t104 = add i32 %t102, %t103
  store i32 %t104, i32* %t592, align 4
  %t106 = load i32, i32* %t589, align 4
  %t107 = add i32 1, %t106
  %t108 = load i32, i32* @a5, align 4
  %t109 = add i32 %t107, %t108
  store i32 %t109, i32* %t593, align 4
  %t111 = load i32, i32* %t590, align 4
  %t112 = add i32 2, %t111
  %t113 = load i32, i32* @a6, align 4
  %t114 = add i32 %t112, %t113
  store i32 %t114, i32* %t594, align 4
  %t116 = load i32, i32* %t591, align 4
  %t117 = add i32 3, %t116
  %t118 = load i32, i32* @a7, align 4
  %t119 = add i32 %t117, %t118
  store i32 %t119, i32* %t595, align 4
  %t121 = load i32, i32* %t592, align 4
  %t122 = add i32 4, %t121
  %t123 = load i32, i32* @a8, align 4
  %t124 = add i32 %t122, %t123
  store i32 %t124, i32* %t596, align 4
  %t126 = load i32, i32* %t593, align 4
  %t127 = add i32 1, %t126
  %t128 = load i32, i32* @a9, align 4
  %t129 = add i32 %t127, %t128
  store i32 %t129, i32* %t597, align 4
  %t131 = load i32, i32* %t594, align 4
  %t132 = add i32 2, %t131
  %t133 = load i32, i32* @a10, align 4
  %t134 = add i32 %t132, %t133
  store i32 %t134, i32* %t598, align 4
  %t136 = load i32, i32* %t595, align 4
  %t137 = add i32 3, %t136
  %t138 = load i32, i32* @a11, align 4
  %t139 = add i32 %t137, %t138
  store i32 %t139, i32* %t599, align 4
  %t141 = load i32, i32* %t596, align 4
  %t142 = add i32 4, %t141
  %t143 = load i32, i32* @a12, align 4
  %t144 = add i32 %t142, %t143
  store i32 %t144, i32* %t600, align 4
  %t146 = load i32, i32* %t597, align 4
  %t147 = add i32 1, %t146
  %t148 = load i32, i32* @a13, align 4
  %t149 = add i32 %t147, %t148
  store i32 %t149, i32* %t601, align 4
  %t151 = load i32, i32* %t598, align 4
  %t152 = add i32 2, %t151
  %t153 = load i32, i32* @a14, align 4
  %t154 = add i32 %t152, %t153
  store i32 %t154, i32* %t602, align 4
  %t156 = load i32, i32* %t599, align 4
  %t157 = add i32 3, %t156
  %t158 = load i32, i32* @a15, align 4
  %t159 = add i32 %t157, %t158
  store i32 %t159, i32* %t603, align 4
  %t161 = load i32, i32* %t600, align 4
  %t162 = add i32 4, %t161
  %t163 = load i32, i32* @a16, align 4
  %t164 = add i32 %t162, %t163
  store i32 %t164, i32* %t604, align 4
  %t166 = load i32, i32* %t601, align 4
  %t167 = add i32 1, %t166
  %t168 = load i32, i32* @a17, align 4
  %t169 = add i32 %t167, %t168
  store i32 %t169, i32* %t605, align 4
  %t171 = load i32, i32* %t602, align 4
  %t172 = add i32 2, %t171
  %t173 = load i32, i32* @a18, align 4
  %t174 = add i32 %t172, %t173
  store i32 %t174, i32* %t606, align 4
  %t176 = load i32, i32* %t603, align 4
  %t177 = add i32 3, %t176
  %t178 = load i32, i32* @a19, align 4
  %t179 = add i32 %t177, %t178
  store i32 %t179, i32* %t607, align 4
  %t181 = load i32, i32* %t604, align 4
  %t182 = add i32 4, %t181
  %t183 = load i32, i32* @a20, align 4
  %t184 = add i32 %t182, %t183
  store i32 %t184, i32* %t608, align 4
  %t186 = load i32, i32* %t605, align 4
  %t187 = add i32 1, %t186
  %t188 = load i32, i32* @a21, align 4
  %t189 = add i32 %t187, %t188
  store i32 %t189, i32* %t609, align 4
  %t191 = load i32, i32* %t606, align 4
  %t192 = add i32 2, %t191
  %t193 = load i32, i32* @a22, align 4
  %t194 = add i32 %t192, %t193
  store i32 %t194, i32* %t610, align 4
  %t196 = load i32, i32* %t607, align 4
  %t197 = add i32 3, %t196
  %t198 = load i32, i32* @a23, align 4
  %t199 = add i32 %t197, %t198
  store i32 %t199, i32* %t611, align 4
  %t201 = load i32, i32* %t608, align 4
  %t202 = add i32 4, %t201
  %t203 = load i32, i32* @a24, align 4
  %t204 = add i32 %t202, %t203
  store i32 %t204, i32* %t612, align 4
  %t206 = load i32, i32* %t609, align 4
  %t207 = add i32 1, %t206
  %t208 = load i32, i32* @a25, align 4
  %t209 = add i32 %t207, %t208
  store i32 %t209, i32* %t613, align 4
  %t211 = load i32, i32* %t610, align 4
  %t212 = add i32 2, %t211
  %t213 = load i32, i32* @a26, align 4
  %t214 = add i32 %t212, %t213
  store i32 %t214, i32* %t614, align 4
  %t216 = load i32, i32* %t611, align 4
  %t217 = add i32 3, %t216
  %t218 = load i32, i32* @a27, align 4
  %t219 = add i32 %t217, %t218
  store i32 %t219, i32* %t615, align 4
  %t221 = load i32, i32* %t612, align 4
  %t222 = add i32 4, %t221
  %t223 = load i32, i32* @a28, align 4
  %t224 = add i32 %t222, %t223
  store i32 %t224, i32* %t616, align 4
  %t226 = load i32, i32* %t613, align 4
  %t227 = add i32 1, %t226
  %t228 = load i32, i32* @a29, align 4
  %t229 = add i32 %t227, %t228
  store i32 %t229, i32* %t617, align 4
  %t231 = load i32, i32* %t614, align 4
  %t232 = add i32 2, %t231
  %t233 = load i32, i32* @a30, align 4
  %t234 = add i32 %t232, %t233
  store i32 %t234, i32* %t618, align 4
  %t236 = load i32, i32* %t615, align 4
  %t237 = add i32 3, %t236
  %t238 = load i32, i32* @a31, align 4
  %t239 = add i32 %t237, %t238
  store i32 %t239, i32* %t619, align 4
  %t241 = load i32, i32* %t616, align 4
  %t242 = add i32 4, %t241
  %t243 = load i32, i32* @a32, align 4
  %t244 = add i32 %t242, %t243
  store i32 %t244, i32* %t620, align 4
  %t246 = load i32, i32* %t582, align 4
  %t247 = load i32, i32* %t583, align 4
  %t248 = sub i32 %t246, %t247
  %t249 = add i32 %t248, 10
  store i32 %t249, i32* %t584, align 4
  %t251 = load i32, i32* %t613, align 4
  %t252 = add i32 1, %t251
  %t253 = load i32, i32* @a29, align 4
  %t254 = add i32 %t252, %t253
  store i32 %t254, i32* %t617, align 4
  %t256 = load i32, i32* %t614, align 4
  %t257 = add i32 2, %t256
  %t258 = load i32, i32* @a30, align 4
  %t259 = add i32 %t257, %t258
  store i32 %t259, i32* %t618, align 4
  %t261 = load i32, i32* %t615, align 4
  %t262 = add i32 3, %t261
  %t263 = load i32, i32* @a31, align 4
  %t264 = add i32 %t262, %t263
  store i32 %t264, i32* %t619, align 4
  %t266 = load i32, i32* %t616, align 4
  %t267 = add i32 4, %t266
  %t268 = load i32, i32* @a32, align 4
  %t269 = add i32 %t267, %t268
  store i32 %t269, i32* %t620, align 4
  %t271 = load i32, i32* %t609, align 4
  %t272 = add i32 1, %t271
  %t273 = load i32, i32* @a25, align 4
  %t274 = add i32 %t272, %t273
  store i32 %t274, i32* %t613, align 4
  %t276 = load i32, i32* %t610, align 4
  %t277 = add i32 2, %t276
  %t278 = load i32, i32* @a26, align 4
  %t279 = add i32 %t277, %t278
  store i32 %t279, i32* %t614, align 4
  %t281 = load i32, i32* %t611, align 4
  %t282 = add i32 3, %t281
  %t283 = load i32, i32* @a27, align 4
  %t284 = add i32 %t282, %t283
  store i32 %t284, i32* %t615, align 4
  %t286 = load i32, i32* %t612, align 4
  %t287 = add i32 4, %t286
  %t288 = load i32, i32* @a28, align 4
  %t289 = add i32 %t287, %t288
  store i32 %t289, i32* %t616, align 4
  %t291 = load i32, i32* %t605, align 4
  %t292 = add i32 1, %t291
  %t293 = load i32, i32* @a21, align 4
  %t294 = add i32 %t292, %t293
  store i32 %t294, i32* %t609, align 4
  %t296 = load i32, i32* %t606, align 4
  %t297 = add i32 2, %t296
  %t298 = load i32, i32* @a22, align 4
  %t299 = add i32 %t297, %t298
  store i32 %t299, i32* %t610, align 4
  %t301 = load i32, i32* %t607, align 4
  %t302 = add i32 3, %t301
  %t303 = load i32, i32* @a23, align 4
  %t304 = add i32 %t302, %t303
  store i32 %t304, i32* %t611, align 4
  %t306 = load i32, i32* %t608, align 4
  %t307 = add i32 4, %t306
  %t308 = load i32, i32* @a24, align 4
  %t309 = add i32 %t307, %t308
  store i32 %t309, i32* %t612, align 4
  %t311 = load i32, i32* %t601, align 4
  %t312 = add i32 1, %t311
  %t313 = load i32, i32* @a17, align 4
  %t314 = add i32 %t312, %t313
  store i32 %t314, i32* %t605, align 4
  %t316 = load i32, i32* %t602, align 4
  %t317 = add i32 2, %t316
  %t318 = load i32, i32* @a18, align 4
  %t319 = add i32 %t317, %t318
  store i32 %t319, i32* %t606, align 4
  %t321 = load i32, i32* %t603, align 4
  %t322 = add i32 3, %t321
  %t323 = load i32, i32* @a19, align 4
  %t324 = add i32 %t322, %t323
  store i32 %t324, i32* %t607, align 4
  %t326 = load i32, i32* %t604, align 4
  %t327 = add i32 4, %t326
  %t328 = load i32, i32* @a20, align 4
  %t329 = add i32 %t327, %t328
  store i32 %t329, i32* %t608, align 4
  %t331 = load i32, i32* %t597, align 4
  %t332 = add i32 1, %t331
  %t333 = load i32, i32* @a13, align 4
  %t334 = add i32 %t332, %t333
  store i32 %t334, i32* %t601, align 4
  %t336 = load i32, i32* %t598, align 4
  %t337 = add i32 2, %t336
  %t338 = load i32, i32* @a14, align 4
  %t339 = add i32 %t337, %t338
  store i32 %t339, i32* %t602, align 4
  %t341 = load i32, i32* %t599, align 4
  %t342 = add i32 3, %t341
  %t343 = load i32, i32* @a15, align 4
  %t344 = add i32 %t342, %t343
  store i32 %t344, i32* %t603, align 4
  %t346 = load i32, i32* %t600, align 4
  %t347 = add i32 4, %t346
  %t348 = load i32, i32* @a16, align 4
  %t349 = add i32 %t347, %t348
  store i32 %t349, i32* %t604, align 4
  %t351 = load i32, i32* %t593, align 4
  %t352 = add i32 1, %t351
  %t353 = load i32, i32* @a9, align 4
  %t354 = add i32 %t352, %t353
  store i32 %t354, i32* %t597, align 4
  %t356 = load i32, i32* %t594, align 4
  %t357 = add i32 2, %t356
  %t358 = load i32, i32* @a10, align 4
  %t359 = add i32 %t357, %t358
  store i32 %t359, i32* %t598, align 4
  %t361 = load i32, i32* %t595, align 4
  %t362 = add i32 3, %t361
  %t363 = load i32, i32* @a11, align 4
  %t364 = add i32 %t362, %t363
  store i32 %t364, i32* %t599, align 4
  %t366 = load i32, i32* %t596, align 4
  %t367 = add i32 4, %t366
  %t368 = load i32, i32* @a12, align 4
  %t369 = add i32 %t367, %t368
  store i32 %t369, i32* %t600, align 4
  %t371 = load i32, i32* %t589, align 4
  %t372 = add i32 1, %t371
  %t373 = load i32, i32* @a5, align 4
  %t374 = add i32 %t372, %t373
  store i32 %t374, i32* %t593, align 4
  %t376 = load i32, i32* %t590, align 4
  %t377 = add i32 2, %t376
  %t378 = load i32, i32* @a6, align 4
  %t379 = add i32 %t377, %t378
  store i32 %t379, i32* %t594, align 4
  %t381 = load i32, i32* %t591, align 4
  %t382 = add i32 3, %t381
  %t383 = load i32, i32* @a7, align 4
  %t384 = add i32 %t382, %t383
  store i32 %t384, i32* %t595, align 4
  %t386 = load i32, i32* %t592, align 4
  %t387 = add i32 4, %t386
  %t388 = load i32, i32* @a8, align 4
  %t389 = add i32 %t387, %t388
  store i32 %t389, i32* %t596, align 4
  %t391 = load i32, i32* %t585, align 4
  %t392 = add i32 1, %t391
  %t393 = load i32, i32* @a1, align 4
  %t394 = add i32 %t392, %t393
  store i32 %t394, i32* %t589, align 4
  %t396 = load i32, i32* %t586, align 4
  %t397 = add i32 2, %t396
  %t398 = load i32, i32* @a2, align 4
  %t399 = add i32 %t397, %t398
  store i32 %t399, i32* %t590, align 4
  %t401 = load i32, i32* %t587, align 4
  %t402 = add i32 3, %t401
  %t403 = load i32, i32* @a3, align 4
  %t404 = add i32 %t402, %t403
  store i32 %t404, i32* %t591, align 4
  %t406 = load i32, i32* %t588, align 4
  %t407 = add i32 4, %t406
  %t408 = load i32, i32* @a4, align 4
  %t409 = add i32 %t407, %t408
  store i32 %t409, i32* %t592, align 4
  %t411 = load i32, i32* %t585, align 4
  %t412 = add i32 1, %t411
  %t413 = load i32, i32* @a1, align 4
  %t414 = add i32 %t412, %t413
  store i32 %t414, i32* %t589, align 4
  %t416 = load i32, i32* %t586, align 4
  %t417 = add i32 2, %t416
  %t418 = load i32, i32* @a2, align 4
  %t419 = add i32 %t417, %t418
  store i32 %t419, i32* %t590, align 4
  %t421 = load i32, i32* %t587, align 4
  %t422 = add i32 3, %t421
  %t423 = load i32, i32* @a3, align 4
  %t424 = add i32 %t422, %t423
  store i32 %t424, i32* %t591, align 4
  %t426 = load i32, i32* %t588, align 4
  %t427 = add i32 4, %t426
  %t428 = load i32, i32* @a4, align 4
  %t429 = add i32 %t427, %t428
  store i32 %t429, i32* %t592, align 4
  %t430 = load i32, i32* %t584, align 4
  %t431 = load i32, i32* %t585, align 4
  %t432 = add i32 %t430, %t431
  %t433 = load i32, i32* %t586, align 4
  %t434 = add i32 %t432, %t433
  %t435 = load i32, i32* %t587, align 4
  %t436 = add i32 %t434, %t435
  %t437 = load i32, i32* %t588, align 4
  %t438 = add i32 %t436, %t437
  %t439 = load i32, i32* %t589, align 4
  %t440 = sub i32 %t438, %t439
  %t441 = load i32, i32* %t590, align 4
  %t442 = sub i32 %t440, %t441
  %t443 = load i32, i32* %t591, align 4
  %t444 = sub i32 %t442, %t443
  %t445 = load i32, i32* %t592, align 4
  %t446 = sub i32 %t444, %t445
  %t447 = load i32, i32* %t593, align 4
  %t448 = add i32 %t446, %t447
  %t449 = load i32, i32* %t594, align 4
  %t450 = add i32 %t448, %t449
  %t451 = load i32, i32* %t595, align 4
  %t452 = add i32 %t450, %t451
  %t453 = load i32, i32* %t596, align 4
  %t454 = add i32 %t452, %t453
  %t455 = load i32, i32* %t597, align 4
  %t456 = sub i32 %t454, %t455
  %t457 = load i32, i32* %t598, align 4
  %t458 = sub i32 %t456, %t457
  %t459 = load i32, i32* %t599, align 4
  %t460 = sub i32 %t458, %t459
  %t461 = load i32, i32* %t600, align 4
  %t462 = sub i32 %t460, %t461
  %t463 = load i32, i32* %t601, align 4
  %t464 = add i32 %t462, %t463
  %t465 = load i32, i32* %t602, align 4
  %t466 = add i32 %t464, %t465
  %t467 = load i32, i32* %t603, align 4
  %t468 = add i32 %t466, %t467
  %t469 = load i32, i32* %t604, align 4
  %t470 = add i32 %t468, %t469
  %t471 = load i32, i32* %t605, align 4
  %t472 = sub i32 %t470, %t471
  %t473 = load i32, i32* %t606, align 4
  %t474 = sub i32 %t472, %t473
  %t475 = load i32, i32* %t607, align 4
  %t476 = 