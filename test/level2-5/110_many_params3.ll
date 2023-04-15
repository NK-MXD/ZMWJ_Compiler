define i32 @testParam8(i32 %t0, i32 %t2, i32 %t4, i32 %t6, i32 %t8, i32 %t10, i32 %t12, i32 %t14) {
B344:
  %t345 = alloca i32, align 4
  %t346 = alloca i32, align 4
  %t347 = alloca i32, align 4
  %t348 = alloca i32, align 4
  %t349 = alloca i32, align 4
  %t350 = alloca i32, align 4
  %t351 = alloca i32, align 4
  %t352 = alloca i32, align 4
  store i32 %t0, i32* %t345, align 4
  store i32 %t2, i32* %t346, align 4
  store i32 %t4, i32* %t347, align 4
  store i32 %t6, i32* %t348, align 4
  store i32 %t8, i32* %t349, align 4
  store i32 %t10, i32* %t350, align 4
  store i32 %t12, i32* %t351, align 4
  store i32 %t14, i32* %t352, align 4
  %t16 = load i32, i32* %t345, align 4
  %t17 = load i32, i32* %t346, align 4
  %t18 = sub i32 %t16, %t17
  %t19 = load i32, i32* %t347, align 4
  %t20 = add i32 %t18, %t19
  %t21 = load i32, i32* %t348, align 4
  %t22 = sub i32 %t20, %t21
  %t23 = load i32, i32* %t349, align 4
  %t24 = sub i32 %t22, %t23
  %t25 = load i32, i32* %t350, align 4
  %t26 = sub i32 %t24, %t25
  %t27 = load i32, i32* %t351, align 4
  %t28 = add i32 %t26, %t27
  %t29 = load i32, i32* %t352, align 4
  %t30 = add i32 %t28, %t29
  ret i32 %t30
}
define i32 @testParam16(i32 %t31, i32 %t33, i32 %t35, i32 %t37, i32 %t39, i32 %t41, i32 %t43, i32 %t45, i32 %t47, i32 %t49, i32 %t51, i32 %t53, i32 %t55, i32 %t57, i32 %t59, i32 %t61) {
B353:
  %t354 = alloca i32, align 4
  %t355 = alloca i32, align 4
  %t356 = alloca i32, align 4
  %t357 = alloca i32, align 4
  %t358 = alloca i32, align 4
  %t359 = alloca i32, align 4
  %t360 = alloca i32, align 4
  %t361 = alloca i32, align 4
  %t362 = alloca i32, align 4
  %t363 = alloca i32, align 4
  %t364 = alloca i32, align 4
  %t365 = alloca i32, align 4
  %t366 = alloca i32, align 4
  %t367 = alloca i32, align 4
  %t368 = alloca i32, align 4
  %t369 = alloca i32, align 4
  store i32 %t31, i32* %t354, align 4
  store i32 %t33, i32* %t355, align 4
  store i32 %t35, i32* %t356, align 4
  store i32 %t37, i32* %t357, align 4
  store i32 %t39, i32* %t358, align 4
  store i32 %t41, i32* %t359, align 4
  store i32 %t43, i32* %t360, align 4
  store i32 %t45, i32* %t361, align 4
  store i32 %t47, i32* %t362, align 4
  store i32 %t49, i32* %t363, align 4
  store i32 %t51, i32* %t364, align 4
  store i32 %t53, i32* %t365, align 4
  store i32 %t55, i32* %t366, align 4
  store i32 %t57, i32* %t367, align 4
  store i32 %t59, i32* %t368, align 4
  store i32 %t61, i32* %t369, align 4
  %t63 = load i32, i32* %t354, align 4
  %t64 = load i32, i32* %t355, align 4
  %t65 = add i32 %t63, %t64
  %t66 = load i32, i32* %t356, align 4
  %t67 = add i32 %t65, %t66
  %t68 = load i32, i32* %t357, align 4
  %t69 = add i32 %t67, %t68
  %t70 = load i32, i32* %t358, align 4
  %t71 = sub i32 %t69, %t70
  %t72 = load i32, i32* %t359, align 4
  %t73 = add i32 %t71, %t72
  %t74 = load i32, i32* %t360, align 4
  %t75 = add i32 %t73, %t74
  %t76 = load i32, i32* %t361, align 4
  %t77 = add i32 %t75, %t76
  %t78 = load i32, i32* %t362, align 4
  %t79 = sub i32 %t77, %t78
  %t80 = load i32, i32* %t363, align 4
  %t81 = add i32 %t79, %t80
  %t82 = load i32, i32* %t364, align 4
  %t83 = sub i32 %t81, %t82
  %t84 = load i32, i32* %t365, align 4
  %t85 = add i32 %t83, %t84
  %t86 = load i32, i32* %t366, align 4
  %t87 = add i32 %t85, %t86
  %t88 = load i32, i32* %t367, align 4
  %t89 = add i32 %t87, %t88
  %t90 = load i32, i32* %t368, align 4
  %t91 = add i32 %t89, %t90
  %t92 = load i32, i32* %t369, align 4
  %t93 = add i32 %t91, %t92
  ret i32 %t93
}
define i32 @testParam32(i32 %t94, i32 %t96, i32 %t98, i32 %t100, i32 %t102, i32 %t104, i32 %t106, i32 %t108, i32 %t110, i32 %t112, i32 %t114, i32 %t116, i32 %t118, i32 %t120, i32 %t122, i32 %t124, i32 %t126, i32 %t128, i32 %t130, i32 %t132, i32 %t134, i32 %t136, i32 %t138, i32 %t140, i32 %t142, i32 %t144, i32 %t146, i32 %t148, i32 %t150, i32 %t152, i32 %t154, i32 %t156) {
B370:
  %t371 = alloca i32, align 4
  %t372 = alloca i32, align 4
  %t373 = alloca i32, align 4
  %t374 = alloca i32, align 4
  %t375 = alloca i32, align 4
  %t376 = alloca i32, align 4
  %t377 = alloca i32, align 4
  %t378 = alloca i32, align 4
  %t379 = alloca i32, align 4
  %t380 = alloca i32, align 4
  %t381 = alloca i32, align 4
  %t382 = alloca i32, align 4
  %t383 = alloca i32, align 4
  %t384 = alloca i32, align 4
  %t385 = alloca i32, align 4
  %t386 = alloca i32, align 4
  %t387 = alloca i32, align 4
  %t388 = alloca i32, align 4
  %t389 = alloca i32, align 4
  %t390 = alloca i32, align 4
  %t391 = alloca i32, align 4
  %t392 = alloca i32, align 4
  %t393 = alloca i32, align 4
  %t394 = alloca i32, align 4
  %t395 = alloca i32, align 4
  %t396 = alloca i32, align 4
  %t397 = alloca i32, align 4
  %t398 = alloca i32, align 4
  %t399 = alloca i32, align 4
  %t400 = alloca i32, align 4
  %t401 = alloca i32, align 4
  %t402 = alloca i32, align 4
  store i32 %t94, i32* %t371, align 4
  store i32 %t96, i32* %t372, align 4
  store i32 %t98, i32* %t373, align 4
  store i32 %t100, i32* %t374, align 4
  store i32 %t102, i32* %t375, align 4
  store i32 %t104, i32* %t376, align 4
  store i32 %t106, i32* %t377, align 4
  store i32 %t108, i32* %t378, align 4
  store i32 %t110, i32* %t379, align 4
  store i32 %t112, i32* %t380, align 4
  store i32 %t114, i32* %t381, align 4
  store i32 %t116, i32* %t382, align 4
  store i32 %t118, i32* %t383, align 4
  store i32 %t120, i32* %t384, align 4
  store i32 %t122, i32* %t385, align 4
  store i32 %t124, i32* %t386, align 4
  store i32 %t126, i32* %t387, align 4
  store i32 %t128, i32* %t388, align 4
  store i32 %t130, i32* %t389, align 4
  store i32 %t132, i32* %t390, align 4
  store i32 %t134, i32* %t391, align 4
  store i32 %t136, i32* %t392, align 4
  store i32 %t138, i32* %t393, align 4
  store i32 %t140, i32* %t394, align 4
  store i32 %t142, i32* %t395, align 4
  store i32 %t144, i32* %t396, align 4
  store i32 %t146, i32* %t397, align 4
  store i32 %t148, i32* %t398, align 4
  store i32 %t150, i32* %t399, align 4
  store i32 %t152, i32* %t400, align 4
  store i32 %t154, i32* %t401, align 4
  store i32 %t156, i32* %t402, align 4
  %t158 = load i32, i32* %t371, align 4
  %t159 = load i32, i32* %t372, align 4
  %t160 = load i32, i32* %t373, align 4
  %t161 = mul i32 %t159, %t160
  %t162 = add i32 %t158, %t161
  %t163 = load i32, i32* %t374, align 4
  %t164 = add i32 %t162, %t163
  %t165 = load i32, i32* %t375, align 4
  %t166 = add i32 %t164, %t165
  %t167 = load i32, i32* %t376, align 4
  %t168 = add i32 %t166, %t167
  %t169 = load i32, i32* %t377, align 4
  %t170 = add i32 %t168, %t169
  %t171 = load i32, i32* %t378, align 4
  %t172 = add i32 %t170, %t171
  %t173 = load i32, i32* %t379, align 4
  %t174 = add i32 %t172, %t173
  %t175 = load i32, i32* %t380, align 4
  %t176 = add i32 %t174, %t175
  %t177 = load i32, i32* %t381, align 4
  %t178 = add i32 %t176, %t177
  %t179 = load i32, i32* %t382, align 4
  %t180 = add i32 %t178, %t179
  %t181 = load i32, i32* %t383, align 4
  %t182 = sub i32 %t180, %t181
  %t183 = load i32, i32* %t384, align 4
  %t184 = sub i32 %t182, %t183
  %t185 = load i32, i32* %t385, align 4
  %t186 = sub i32 %t184, %t185
  %t187 = load i32, i32* %t386, align 4
  %t188 = sub i32 %t186, %t187
  %t189 = load i32, i32* %t387, align 4
  %t190 = sub i32 %t188, %t189
  %t191 = load i32, i32* %t388, align 4
  %t192 = sub i32 %t190, %t191
  %t193 = load i32, i32* %t389, align 4
  %t194 = sub i32 %t192, %t193
  %t195 = load i32, i32* %t390, align 4
  %t196 = sub i32 %t194, %t195
  %t197 = load i32, i32* %t391, align 4
  %t198 = sub i32 %t196, %t197
  %t199 = load i32, i32* %t392, align 4
  %t200 = sub i32 %t198, %t199
  %t201 = load i32, i32* %t393, align 4
  %t202 = add i32 %t200, %t201
  %t203 = load i32, i32* %t394, align 4
  %t204 = add i32 %t202, %t203
  %t205 = load i32, i32* %t395, align 4
  %t206 = add i32 %t204, %t205
  %t207 = load i32, i32* %t396, align 4
  %t208 = add i32 %t206, %t207
  %t209 = load i32, i32* %t397, align 4
  %t210 = add i32 %t208, %t209
  %t211 = load i32, i32* %t398, align 4
  %t212 = add i32 %t210, %t211
  %t213 = load i32, i32* %t399, align 4
  %t214 = add i32 %t212, %t213
  %t215 = load i32, i32* %t400, align 4
  %t216 = add i32 %t214, %t215
  %t217 = load i32, i32* %t401, align 4
  %t218 = add i32 %t216, %t217
  %t219 = load i32, i32* %t402, align 4
  %t220 = add i32 %t218, %t219
  ret i32 %t220
}
define i32 @main() {
B403:
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
  %t418 = alloca i32, align 4
  %t419 = alloca i32, align 4
  %t420 = alloca i32, align 4
  %t421 = alloca i32, align 4
  %t422 = alloca i32, align 4
  %t423 = alloca i32, align 4
  %t424 = alloca i32, align 4
  %t425 = alloca i32, align 4
  %t426 = alloca i32, align 4
  %t427 = alloca i32, align 4
  %t428 = alloca i32, align 4
  %t429 = alloca i32, align 4
  %t430 = alloca i32, align 4
  %t431 = alloca i32, align 4
  %t432 = alloca i32, align 4
  %t433 = alloca i32, align 4
  %t434 = alloca i32, align 4
  %t435 = alloca i32, align 4
  store i32 0, i32* %t404, align 4
  store i32 1, i32* %t405, align 4
  store i32 2, i32* %t406, align 4
  store i32 3, i32* %t407, align 4
  store i32 4, i32* %t408, align 4
  store i32 5, i32* %t409, align 4
  store i32 6, i32* %t410, align 4
  store i32 7, i32* %t411, align 4
  store i32 8, i32* %t412, align 4
  store i32 9, i32* %t413, align 4
  store i32 0, i32* %t414, align 4
  store i32 1, i32* %t415, align 4
  store i32 2, i32* %t416, align 4
  store i32 3, i32* %t417, align 4
  store i32 4, i32* %t418, align 4
  store i32 5, i32* %t419, align 4
  store i32 6, i32* %t420, align 4
  store i32 7, i32* %t421, align 4
  store i32 8, i32* %t422, align 4
  store i32 9, i32* %t423, align 4
  store i32 0, i32* %t424, align 4
  store i32 1, i32* %t425, align 4
  store i32 2, i32* %t426, align 4
  store i32 3, i32* %t427, align 4
  store i32 4, i32* %t428, align 4
  store i32 5, i32* %t429, align 4
  store i32 6, i32* %t430, align 4
  store i32 7, i32* %t431, align 4
  store i32 8, i32* %t432, align 4
  store i32 9, i32* %t433, align 4
  store i32 0, i32* %t434, align 4
  store i32 1, i32* %t435, align 4
  %t286 = load i32, i32* %t404, align 4
  %t287 = load i32, i32* %t405, align 4
  %t288 = load i32, i32* %t406, align 4
  %t289 = load i32, i32* %t407, align 4
  %t290 = load i32, i32* %t408, align 4
  %t291 = load i32, i32* %t409, align 4
  %t292 = load i32, i32* %t410, align 4
  %t293 = load i32, i32* %t411, align 4
  %t294 = call i32 @testParam8(i32 %t286, i32 %t287, i32 %t288, i32 %t289, i32 %t290, i32 %t291, i32 %t292, i32 %t293)
  %t295 = load i32, i32* %t405, align 4
  %t296 = load i32, i32* %t406, align 4
  %t297 = load i32, i32* %t407, align 4
  %t298 = load i32, i32* %t408, align 4
  %t299 = load i32, i32* %t409, align 4
  %t300 = load i32, i32* %t410, align 4
  %t301 = load i32, i32* %t411, align 4
  %t302 = load i32, i32* %t412, align 4
  %t303 = load i32, i32* %t413, align 4
  %t304 = load i32, i32* %t414, align 4
  %t305 = load i32, i32* %t415, align 4
  %t306 = load i32, i32* %t416, align 4
  %t307 = load i32, i32* %t417, align 4
  %t308 = load i32, i32* %t418, align 4
  %t309 = load i32, i32* %t419, align 4
  %t310 = call i32 @testParam16(i32 %t294, i32 %t295, i32 %t296, i32 %t297, i32 %t298, i32 %t299, i32 %t300, i32 %t301, i32 %t302, i32 %t303, i32 %t304, i32 %t305, i32 %t306, i32 %t307, i32 %t308, i32 %t309)
  %t311 = load i32, i32* %t405, align 4
  %t312 = load i32, i32* %t406, align 4
  %t313 = load i32, i32* %t407, align 4
  %t314 = load i32, i32* %t408, align 4
  %t315 = load i32, i32* %t409, align 4
  %t316 = load i32, i32* %t410, align 4
  %t317 = load i32, i32* %t411, align 4
  %t318 = load i32, i32* %t412, align 4
  %t319 = load i32, i32* %t413, align 4
  %t320 = load i32, i32* %t414, align 4
  %t321 = load i32, i32* %t415, align 4
  %t322 = load i32, i32* %t416, align 4
  %t323 = load i32, i32* %t417, align 4
  %t324 = load i32, i32* %t418, align 4
  %t325 = load i32, i32* %t419, align 4
  %t326 = load i32, i32* %t420, align 4
  %t327 = load i32, i32* %t421, align 4
  %t328 = load i32, i32* %t422, align 4
  %t329 = load i32, i32* %t423, align 4
  %t330 = load i32, i32* %t424, align 4
  %t331 = load i32, i32* %t425, align 4
  %t332 = load i32, i32* %t426, align 4
  %t333 = load i32, i32* %t427, align 4
  %t334 = load i32, i32* %t428, align 4
  %t335 = load i32, i32* %t429, align 4
  %t336 = load i32, i32* %t430, align 4
  %t337 = load i32, i32* %t431, align 4
  %t338 = load i32, i32* %t432, align 4
  %t339 = load i32, i32* %t433, align 4
  %t340 = load i32, i32* %t434, align 4
  %t341 = load i32, i32* %t435, align 4
  %t342 = call i32 @testParam32(i32 %t310, i32 %t311, i32 %t312, i32 %t313, i32 %t314, i32 %t315, i32 %t316, i32 %t317, i32 %t318, i32 %t319, i32 %t320, i32 %t321, i32 %t322, i32 %t323, i32 %t324, i32 %t325, i32 %t326, i32 %t327, i32 %t328, i32 %t329, i32 %t330, i32 %t331, i32 %t332, i32 %t333, i32 %t334, i32 %t335, i32 %t336, i32 %t337, i32 %t338, i32 %t339, i32 %t340, i32 %t341)
  store i32 %t342, i32* %t404, align 4
  %t343 = load i32, i32* %t404, align 4
  call void @putint(i32 %t343)
  ret i32 0
}
declare void @putint(i32)
