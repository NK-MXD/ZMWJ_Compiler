define i32 @func(i32 %t0, i32 %t2) {
B341:
  %t342 = alloca i32, align 4
  %t343 = alloca i32, align 4
  store i32 %t0, i32* %t342, align 4
  store i32 %t2, i32* %t343, align 4
  %t6 = load i32, i32* %t342, align 4
  %t7 = load i32, i32* %t343, align 4
  %t8 = add i32 %t6, %t7
  %t51 = add i32 1, 1
  %t54 = add i32 2, 2
  %t57 = add i32 3, 3
  %t60 = add i32 4, 4
  %t63 = add i32 1, %t51
  %t66 = add i32 2, %t54
  %t69 = add i32 3, %t57
  %t72 = add i32 4, %t60
  %t75 = add i32 1, %t63
  %t78 = add i32 2, %t66
  %t81 = add i32 3, %t69
  %t84 = add i32 4, %t72
  %t87 = add i32 1, %t75
  %t90 = add i32 2, %t78
  %t93 = add i32 3, %t81
  %t96 = add i32 4, %t84
  %t99 = add i32 1, %t87
  %t102 = add i32 2, %t90
  %t105 = add i32 3, %t93
  %t108 = add i32 4, %t96
  %t111 = add i32 1, %t99
  %t114 = add i32 2, %t102
  %t117 = add i32 3, %t105
  %t120 = add i32 4, %t108
  %t123 = add i32 1, %t111
  %t126 = add i32 2, %t114
  %t129 = add i32 3, %t117
  %t132 = add i32 4, %t120
  %t135 = add i32 1, %t123
  %t138 = add i32 2, %t126
  %t141 = add i32 3, %t129
  %t144 = add i32 4, %t132
  %t146 = load i32, i32* %t342, align 4
  %t147 = load i32, i32* %t343, align 4
  %t148 = sub i32 %t146, %t147
  %t149 = add i32 %t148, 10
  %t248 = add i32 1, %t135
  %t251 = add i32 2, %t138
  %t254 = add i32 3, %t141
  %t257 = add i32 4, %t144
  %t260 = add i32 %t149, %t248
  %t262 = add i32 %t260, %t251
  %t264 = add i32 %t262, %t254
  %t266 = add i32 %t264, %t257
  %t268 = sub i32 %t266, %t51
  %t270 = sub i32 %t268, %t54
  %t272 = sub i32 %t270, %t57
  %t274 = sub i32 %t272, %t60
  %t276 = add i32 %t274, %t63
  %t278 = add i32 %t276, %t66
  %t280 = add i32 %t278, %t69
  %t282 = add i32 %t280, %t72
  %t284 = sub i32 %t282, %t75
  %t286 = sub i32 %t284, %t78
  %t288 = sub i32 %t286, %t81
  %t290 = sub i32 %t288, %t84
  %t292 = add i32 %t290, %t87
  %t294 = add i32 %t292, %t90
  %t296 = add i32 %t294, %t93
  %t298 = add i32 %t296, %t96
  %t300 = sub i32 %t298, %t99
  %t302 = sub i32 %t300, %t102
  %t304 = sub i32 %t302, %t105
  %t306 = sub i32 %t304, %t108
  %t308 = add i32 %t306, %t111
  %t310 = add i32 %t308, %t114
  %t312 = add i32 %t310, %t117
  %t314 = add i32 %t312, %t120
  %t316 = sub i32 %t314, %t123
  %t318 = sub i32 %t316, %t126
  %t320 = sub i32 %t318, %t129
  %t322 = sub i32 %t320, %t132
  %t324 = add i32 %t322, %t135
  %t326 = add i32 %t324, %t138
  %t328 = add i32 %t326, %t141
  %t330 = add i32 %t328, %t144
  ret i32 %t330
}
define i32 @main() {
B381:
  %t336 = mul i32 2, 9
  %t337 = add i32 1, %t336
  %t340 = call i32 @func(i32 1, i32 %t337)
  ret i32 %t340
}
