define i32 @func1(i32 %t0, i32 %t2, i32 %t4) {
B150:
  %t151 = alloca i32, align 4
  %t152 = alloca i32, align 4
  %t153 = alloca i32, align 4
  store i32 %t0, i32* %t151, align 4
  store i32 %t2, i32* %t152, align 4
  store i32 %t4, i32* %t153, align 4
  %t6 = load i32, i32* %t153, align 4
  %t7 = icmp eq i32 %t6, 0
  br i1 %t7, label %B154, label %B159
B154:                               	; preds = %B150
  %t8 = load i32, i32* %t151, align 4
  %t9 = load i32, i32* %t152, align 4
  %t10 = mul i32 %t8, %t9
  ret i32 %t10
B159:                               	; preds = %B150
  br label %B155
B155:                               	; preds = %B159
  %t11 = load i32, i32* %t151, align 4
  %t12 = load i32, i32* %t152, align 4
  %t13 = load i32, i32* %t153, align 4
  %t14 = sub i32 %t12, %t13
  %t15 = call i32 @func1(i32 %t11, i32 %t14, i32 0)
  ret i32 %t15
}
define i32 @func2(i32 %t16, i32 %t18) {
B160:
  %t161 = alloca i32, align 4
  %t162 = alloca i32, align 4
  store i32 %t16, i32* %t161, align 4
  store i32 %t18, i32* %t162, align 4
  %t20 = load i32, i32* %t162, align 4
  %t26 = icmp ne i32 %t20, 0
  br i1 %t26, label %B163, label %B167
B163:                               	; preds = %B160
  %t21 = load i32, i32* %t161, align 4
  %t22 = load i32, i32* %t162, align 4
  %t23 = srem i32 %t21, %t22
  %t24 = call i32 @func2(i32 %t23, i32 0)
  ret i32 %t24
B167:                               	; preds = %B160
  br label %B164
B164:                               	; preds = %B167
  %t25 = load i32, i32* %t161, align 4
  ret i32 %t25
}
define i32 @func3(i32 %t27, i32 %t29) {
B169:
  %t170 = alloca i32, align 4
  %t171 = alloca i32, align 4
  store i32 %t27, i32* %t170, align 4
  store i32 %t29, i32* %t171, align 4
  %t31 = load i32, i32* %t171, align 4
  %t32 = icmp eq i32 %t31, 0
  br i1 %t32, label %B172, label %B177
B172:                               	; preds = %B169
  %t33 = load i32, i32* %t170, align 4
  %t34 = add i32 %t33, 1
  ret i32 %t34
B177:                               	; preds = %B169
  br label %B173
B173:                               	; preds = %B177
  %t35 = load i32, i32* %t170, align 4
  %t36 = load i32, i32* %t171, align 4
  %t37 = add i32 %t35, %t36
  %t38 = call i32 @func3(i32 %t37, i32 0)
  ret i32 %t38
}
define i32 @func4(i32 %t39, i32 %t41, i32 %t43) {
B178:
  %t179 = alloca i32, align 4
  %t180 = alloca i32, align 4
  %t181 = alloca i32, align 4
  store i32 %t39, i32* %t179, align 4
  store i32 %t41, i32* %t180, align 4
  store i32 %t43, i32* %t181, align 4
  %t45 = load i32, i32* %t179, align 4
  %t48 = icmp ne i32 %t45, 0
  br i1 %t48, label %B182, label %B186
B182:                               	; preds = %B178
  %t46 = load i32, i32* %t180, align 4
  ret i32 %t46
B186:                               	; preds = %B178
  br label %B183
B183:                               	; preds = %B186
  %t47 = load i32, i32* %t181, align 4
  ret i32 %t47
}
define i32 @func5(i32 %t49) {
B188:
  %t189 = alloca i32, align 4
  store i32 %t49, i32* %t189, align 4
  %t51 = load i32, i32* %t189, align 4
  %t52 = sub i32 0, %t51
  ret i32 %t52
}
define i32 @func6(i32 %t53, i32 %t55) {
B190:
  %t191 = alloca i32, align 4
  %t192 = alloca i32, align 4
  store i32 %t53, i32* %t191, align 4
  store i32 %t55, i32* %t192, align 4
  %t57 = load i32, i32* %t191, align 4
  %t60 = icmp ne i32 %t57, 0
  br i1 %t60, label %B196, label %B198
B196:                               	; preds = %B190
  %t58 = load i32, i32* %t192, align 4
  %t61 = icmp ne i32 %t58, 0
  br i1 %t61, label %B193, label %B201
B198:                               	; preds = %B190
  br label %B194
B193:                               	; preds = %B196
  ret i32 1
B201:                               	; preds = %B196
  br label %B194
B194:                               	; preds = %B198, %B201
  ret i32 0
}
define i32 @func7(i32 %t62) {
B203:
  %t204 = alloca i32, align 4
  store i32 %t62, i32* %t204, align 4
  %t64 = load i32, i32* %t204, align 4
  %t208 = icmp ne i32 %t64, 0
  %t65 = xor i1 %t208, true
  %t66 = icmp ne i1 %t65, 0
  br i1 %t66, label %B205, label %B210
B205:                               	; preds = %B203
  ret i32 1
B210:                               	; preds = %B203
  br label %B206
B206:                               	; preds = %B210
  ret i32 0
}
define i32 @main() {
B212:
  %t217 = alloca [10 x i32], align 4
  %t67 = call i32 @getint()
  %t69 = call i32 @getint()
  %t71 = call i32 @getint()
  %t73 = call i32 @getint()
  br label %B219
B219:                               	; preds = %B212
  %t256 = add i32 0, 0
  %t78 = icmp slt i32 0, 10
  br i1 %t78, label %B220, label %B224
B220:                               	; preds = %B219, %B263
  %t81 = call i32 @getint()
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 %t256
  store i32 %t81, i32* %t80, align 4
  %t84 = add i32 %t256, 1
  %t226 = icmp slt i32 %t84, 10
  br i1 %t226, label %B263, label %B229
B224:                               	; preds = %B219
  %t257 = add i32 0, 0
  br label %B221
B229:                               	; preds = %B220
  %t257 = add i32 %t84, 0
  br label %B221
B263:                               	; preds = %B220
  %t256 = add i32 %t84, 0
  br label %B220
B221:                               	; preds = %B224, %B229
  %t86 = call i32 @func7(i32 %t67)
  %t88 = call i32 @func5(i32 %t69)
  %t89 = call i32 @func6(i32 %t86, i32 %t88)
  %t91 = call i32 @func2(i32 %t89, i32 %t71)
  %t93 = call i32 @func3(i32 %t91, i32 %t73)
  %t94 = call i32 @func5(i32 %t93)
  %t95 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 0
  %t231 = load i32, i32* %t95, align 4
  %t96 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 1
  %t232 = load i32, i32* %t96, align 4
  %t97 = call i32 @func5(i32 %t232)
  %t98 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 2
  %t233 = load i32, i32* %t98, align 4
  %t99 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 3
  %t234 = load i32, i32* %t99, align 4
  %t100 = call i32 @func7(i32 %t234)
  %t101 = call i32 @func6(i32 %t233, i32 %t100)
  %t102 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 4
  %t235 = load i32, i32* %t102, align 4
  %t103 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 5
  %t236 = load i32, i32* %t103, align 4
  %t104 = call i32 @func7(i32 %t236)
  %t105 = call i32 @func2(i32 %t235, i32 %t104)
  %t106 = call i32 @func4(i32 %t97, i32 %t101, i32 %t105)
  %t107 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 6
  %t237 = load i32, i32* %t107, align 4
  %t108 = call i32 @func3(i32 %t106, i32 %t237)
  %t109 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 7
  %t238 = load i32, i32* %t109, align 4
  %t110 = call i32 @func2(i32 %t108, i32 %t238)
  %t111 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 8
  %t239 = load i32, i32* %t111, align 4
  %t112 = getelementptr inbounds [10 x i32], [10 x i32]* %t217, i32 0, i32 9
  %t240 = load i32, i32* %t112, align 4
  %t113 = call i32 @func7(i32 %t240)
  %t114 = call i32 @func3(i32 %t239, i32 %t113)
  %t116 = call i32 @func1(i32 %t110, i32 %t114, i32 %t67)
  %t117 = call i32 @func4(i32 %t94, i32 %t231, i32 %t116)
  %t120 = call i32 @func7(i32 %t71)
  %t122 = call i32 @func3(i32 %t120, i32 %t73)
  %t123 = call i32 @func2(i32 %t69, i32 %t122)
  %t124 = call i32 @func3(i32 %t117, i32 %t123)
  %t241 = load i32, i32* %t95, align 4
  %t242 = load i32, i32* %t96, align 4
  %t127 = call i32 @func1(i32 %t124, i32 %t241, i32 %t242)
  %t243 = load i32, i32* %t98, align 4
  %t129 = call i32 @func2(i32 %t127, i32 %t243)
  %t244 = load i32, i32* %t99, align 4
  %t245 = load i32, i32* %t102, align 4
  %t246 = load i32, i32* %t103, align 4
  %t133 = call i32 @func5(i32 %t246)
  %t134 = call i32 @func3(i32 %t245, i32 %t133)
  %t247 = load i32, i32* %t107, align 4
  %t136 = call i32 @func5(i32 %t247)
  %t137 = call i32 @func2(i32 %t134, i32 %t136)
  %t248 = load i32, i32* %t109, align 4
  %t249 = load i32, i32* %t111, align 4
  %t140 = call i32 @func7(i32 %t249)
  %t141 = call i32 @func1(i32 %t137, i32 %t248, i32 %t140)
  %t250 = load i32, i32* %t112, align 4
  %t143 = call i32 @func5(i32 %t250)
  %t144 = call i32 @func2(i32 %t141, i32 %t143)
  %t146 = call i32 @func3(i32 %t144, i32 %t67)
  %t147 = call i32 @func1(i32 %t129, i32 %t244, i32 %t146)
  ret i32 %t147
}
declare i32 @getint()
