@INF = global i32 1879048192, align 4
@size = global [10 x i32] zeroinitializer, align 4
@to = global [10 x [10 x i32]] zeroinitializer, align 4
@cap = global [10 x [10 x i32]] zeroinitializer, align 4
@rev = global [10 x [10 x i32]] zeroinitializer, align 4
@used = global [10 x i32] zeroinitializer, align 4
define void @my_memset(i32* %t6, i32 %t8, i32 %t10) {
B194:
  %t195 = alloca i32*, align 4
  %t196 = alloca i32, align 4
  %t197 = alloca i32, align 4
  store i32* %t6, i32** %t195, align 4
  store i32 %t8, i32* %t196, align 4
  store i32 %t10, i32* %t197, align 4
  br label %B199
B199:                               	; preds = %B194
  %t14 = load i32, i32* %t197, align 4
  %t345 = add i32 0, 0
  %t15 = icmp slt i32 0, %t14
  br i1 %t15, label %B200, label %B204
B200:                               	; preds = %B199, %B411
  %t18 = load i32, i32* %t196, align 4
  %t205 = load i32*, i32** %t195, align 4
  %t17 = getelementptr inbounds i32, i32* %t205, i32 %t345
  store i32 %t18, i32* %t17, align 4
  %t21 = add i32 %t345, 1
  %t207 = load i32, i32* %t197, align 4
  %t208 = icmp slt i32 %t21, %t207
  br i1 %t208, label %B411, label %B211
B204:                               	; preds = %B199
  %t346 = add i32 0, 0
  br label %B201
B211:                               	; preds = %B200
  %t346 = add i32 %t21, 0
  br label %B201
B411:                               	; preds = %B200
  %t345 = add i32 %t21, 0
  br label %B200
B201:                               	; preds = %B204, %B211
  ret void
}
define void @add_node(i32 %t22, i32 %t24, i32 %t26) {
B212:
  %t213 = alloca i32, align 4
  %t214 = alloca i32, align 4
  %t215 = alloca i32, align 4
  store i32 %t22, i32* %t213, align 4
  store i32 %t24, i32* %t214, align 4
  store i32 %t26, i32* %t215, align 4
  %t32 = load i32, i32* %t214, align 4
  %t28 = load i32, i32* %t213, align 4
  %t31 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t28
  %t29 = load i32, i32* %t213, align 4
  %t30 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t29
  %t217 = load i32, i32* %t30, align 4
  %t216 = getelementptr inbounds [10 x i32], [10 x i32]* %t31, i32 0, i32 %t217
  store i32 %t32, i32* %t216, align 4
  %t37 = load i32, i32* %t215, align 4
  %t33 = load i32, i32* %t213, align 4
  %t36 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t33
  %t34 = load i32, i32* %t213, align 4
  %t35 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t34
  %t219 = load i32, i32* %t35, align 4
  %t218 = getelementptr inbounds [10 x i32], [10 x i32]* %t36, i32 0, i32 %t219
  store i32 %t37, i32* %t218, align 4
  %t42 = load i32, i32* %t214, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t42
  %t220 = load i32, i32* %t43, align 4
  %t38 = load i32, i32* %t213, align 4
  %t41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t38
  %t39 = load i32, i32* %t213, align 4
  %t40 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t39
  %t222 = load i32, i32* %t40, align 4
  %t221 = getelementptr inbounds [10 x i32], [10 x i32]* %t41, i32 0, i32 %t222
  store i32 %t220, i32* %t221, align 4
  %t48 = load i32, i32* %t213, align 4
  %t44 = load i32, i32* %t214, align 4
  %t47 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t44
  %t45 = load i32, i32* %t214, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t45
  %t224 = load i32, i32* %t46, align 4
  %t223 = getelementptr inbounds [10 x i32], [10 x i32]* %t47, i32 0, i32 %t224
  store i32 %t48, i32* %t223, align 4
  %t49 = load i32, i32* %t214, align 4
  %t52 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t49
  %t50 = load i32, i32* %t214, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t50
  %t226 = load i32, i32* %t51, align 4
  %t225 = getelementptr inbounds [10 x i32], [10 x i32]* %t52, i32 0, i32 %t226
  store i32 0, i32* %t225, align 4
  %t57 = load i32, i32* %t213, align 4
  %t58 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t57
  %t227 = load i32, i32* %t58, align 4
  %t53 = load i32, i32* %t214, align 4
  %t56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t53
  %t54 = load i32, i32* %t214, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t54
  %t229 = load i32, i32* %t55, align 4
  %t228 = getelementptr inbounds [10 x i32], [10 x i32]* %t56, i32 0, i32 %t229
  store i32 %t227, i32* %t228, align 4
  %t61 = load i32, i32* %t213, align 4
  %t62 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t61
  %t230 = load i32, i32* %t62, align 4
  %t63 = add i32 %t230, 1
  %t59 = load i32, i32* %t213, align 4
  %t60 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t59
  store i32 %t63, i32* %t60, align 4
  %t66 = load i32, i32* %t214, align 4
  %t67 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t66
  %t231 = load i32, i32* %t67, align 4
  %t68 = add i32 %t231, 1
  %t64 = load i32, i32* %t214, align 4
  %t65 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t64
  store i32 %t68, i32* %t65, align 4
  ret void
}
define i32 @dfs(i32 %t69, i32 %t71, i32 %t73) {
B232:
  %t233 = alloca i32, align 4
  %t234 = alloca i32, align 4
  %t235 = alloca i32, align 4
  store i32 %t69, i32* %t233, align 4
  store i32 %t71, i32* %t234, align 4
  store i32 %t73, i32* %t235, align 4
  %t75 = load i32, i32* %t233, align 4
  %t76 = load i32, i32* %t234, align 4
  %t77 = icmp eq i32 %t75, %t76
  br i1 %t77, label %B236, label %B240
B236:                               	; preds = %B232
  %t78 = load i32, i32* %t235, align 4
  ret i32 %t78
B240:                               	; preds = %B232
  br label %B237
B237:                               	; preds = %B240
  %t79 = load i32, i32* %t233, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 %t79
  store i32 1, i32* %t80, align 4
  %t375 = add i32 0, 0
  %t367 = add i32 0, 0
  %t355 = add i32 0, 0
  br label %B242
B242:                               	; preds = %B237, %B249, %B258
  %t83 = load i32, i32* %t233, align 4
  %t84 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t83
  %t245 = load i32, i32* %t84, align 4
  %t371 = add i32 %t375, 0
  %t363 = add i32 %t367, 0
  %t351 = add i32 %t355, 0
  %t85 = icmp slt i32 %t355, %t245
  br i1 %t85, label %B243, label %B248
B243:                               	; preds = %B242, %B281
  %t86 = load i32, i32* %t233, align 4
  %t88 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t86
  %t251 = getelementptr inbounds [10 x i32], [10 x i32]* %t88, i32 0, i32 %t351
  %t252 = load i32, i32* %t251, align 4
  %t89 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 %t252
  %t253 = load i32, i32* %t89, align 4
  %t93 = icmp ne i32 %t253, 0
  br i1 %t93, label %B249, label %B255
B248:                               	; preds = %B242
  %t372 = add i32 %t375, 0
  %t364 = add i32 %t367, 0
  %t352 = add i32 %t355, 0
  br label %B244
B249:                               	; preds = %B243
  %t92 = add i32 %t351, 1
  %t375 = add i32 %t371, 0
  %t367 = add i32 %t363, 0
  %t355 = add i32 %t92, 0
  br label %B242
B255:                               	; preds = %B243
  br label %B250
B244:                               	; preds = %B248, %B306
  ret i32 0
B250:                               	; preds = %B255
  %t94 = load i32, i32* %t233, align 4
  %t96 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t94
  %t260 = getelementptr inbounds [10 x i32], [10 x i32]* %t96, i32 0, i32 %t351
  %t261 = load i32, i32* %t260, align 4
  %t97 = icmp sle i32 %t261, 0
  br i1 %t97, label %B258, label %B264
B258:                               	; preds = %B250
  %t100 = add i32 %t351, 1
  %t375 = add i32 %t371, 0
  %t367 = add i32 %t363, 0
  %t355 = add i32 %t100, 0
  br label %B242
B264:                               	; preds = %B250
  br label %B259
B259:                               	; preds = %B264
  %t102 = load i32, i32* %t235, align 4
  %t103 = load i32, i32* %t233, align 4
  %t105 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t103
  %t270 = getelementptr inbounds [10 x i32], [10 x i32]* %t105, i32 0, i32 %t351
  %t271 = load i32, i32* %t270, align 4
  %t106 = icmp slt i32 %t102, %t271
  br i1 %t106, label %B267, label %B274
B267:                               	; preds = %B259
  %t108 = load i32, i32* %t235, align 4
  %t361 = add i32 %t108, 0
  br label %B269
B274:                               	; preds = %B259
  br label %B268
B269:                               	; preds = %B267, %B268
  %t113 = load i32, i32* %t233, align 4
  %t115 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t113
  %t278 = getelementptr inbounds [10 x i32], [10 x i32]* %t115, i32 0, i32 %t351
  %t279 = load i32, i32* %t278, align 4
  %t116 = load i32, i32* %t234, align 4
  %t118 = call i32 @dfs(i32 %t279, i32 %t116, i32 %t361)
  %t121 = icmp sgt i32 %t118, 0
  br i1 %t121, label %B280, label %B284
B268:                               	; preds = %B274
  %t110 = load i32, i32* %t233, align 4
  %t112 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t110
  %t275 = getelementptr inbounds [10 x i32], [10 x i32]* %t112, i32 0, i32 %t351
  %t276 = load i32, i32* %t275, align 4
  %t361 = add i32 %t276, 0
  br label %B269
B280:                               	; preds = %B269
  %t125 = load i32, i32* %t233, align 4
  %t127 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t125
  %t285 = getelementptr inbounds [10 x i32], [10 x i32]* %t127, i32 0, i32 %t351
  %t286 = load i32, i32* %t285, align 4
  %t129 = sub i32 %t286, %t118
  %t122 = load i32, i32* %t233, align 4
  %t124 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t122
  %t287 = getelementptr inbounds [10 x i32], [10 x i32]* %t124, i32 0, i32 %t351
  store i32 %t129, i32* %t287, align 4
  %t137 = load i32, i32* %t233, align 4
  %t139 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t137
  %t288 = getelementptr inbounds [10 x i32], [10 x i32]* %t139, i32 0, i32 %t351
  %t289 = load i32, i32* %t288, align 4
  %t143 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t289
  %t140 = load i32, i32* %t233, align 4
  %t142 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t140
  %t291 = getelementptr inbounds [10 x i32], [10 x i32]* %t142, i32 0, i32 %t351
  %t292 = load i32, i32* %t291, align 4
  %t290 = getelementptr inbounds [10 x i32], [10 x i32]* %t143, i32 0, i32 %t292
  %t293 = load i32, i32* %t290, align 4
  %t145 = add i32 %t293, %t118
  %t130 = load i32, i32* %t233, align 4
  %t132 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t130
  %t294 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 %t351
  %t295 = load i32, i32* %t294, align 4
  %t136 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t295
  %t133 = load i32, i32* %t233, align 4
  %t135 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t133
  %t297 = getelementptr inbounds [10 x i32], [10 x i32]* %t135, i32 0, i32 %t351
  %t298 = load i32, i32* %t297, align 4
  %t296 = getelementptr inbounds [10 x i32], [10 x i32]* %t136, i32 0, i32 %t298
  store i32 %t145, i32* %t296, align 4
  ret i32 %t118
B284:                               	; preds = %B269
  br label %B281
B281:                               	; preds = %B284
  %t149 = add i32 %t351, 1
  %t300 = load i32, i32* %t233, align 4
  %t301 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t300
  %t303 = load i32, i32* %t301, align 4
  %t371 = add i32 %t118, 0
  %t363 = add i32 %t361, 0
  %t351 = add i32 %t149, 0
  %t302 = icmp slt i32 %t149, %t303
  br i1 %t302, label %B243, label %B306
B306:                               	; preds = %B281
  %t372 = add i32 %t118, 0
  %t364 = add i32 %t361, 0
  %t352 = add i32 %t149, 0
  br label %B244
}
define i32 @max_flow(i32 %t150, i32 %t152) {
B307:
  %t308 = alloca i32, align 4
  %t309 = alloca i32, align 4
  store i32 %t150, i32* %t308, align 4
  store i32 %t152, i32* %t309, align 4
  br label %B311
B311:                               	; preds = %B307
  %t385 = add i32 0, 0
  %t379 = add i32 0, 0
  %t155 = icmp ne i32 1, 0
  br i1 %t155, label %B312, label %B315
B312:                               	; preds = %B311, %B319
  %t156 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 0
  call void @my_memset(i32* %t156, i32 0, i32 10)
  %t157 = load i32, i32* %t308, align 4
  %t158 = load i32, i32* %t309, align 4
  %t159 = load i32, i32* @INF, align 4
  %t160 = call i32 @dfs(i32 %t157, i32 %t158, i32 %t159)
  %t163 = icmp eq i32 %t160, 0
  br i1 %t163, label %B318, label %B322
B315:                               	; preds = %B311
  %t384 = add i32 0, 0
  %t378 = add i32 0, 0
  br label %B313
B318:                               	; preds = %B312
  ret i32 %t379
B322:                               	; preds = %B312
  br label %B319
B313:                               	; preds = %B315, %B325
  ret i32 0
B319:                               	; preds = %B322
  %t168 = add i32 %t379, %t160
  %t385 = add i32 %t160, 0
  %t379 = add i32 %t168, 0
  %t323 = icmp ne i32 1, 0
  br i1 %t323, label %B312, label %B325
B325:                               	; preds = %B319
  %t384 = add i32 %t160, 0
  %t378 = add i32 %t168, 0
  br label %B313
}
define i32 @main() {
B327:
  %t172 = call i32 @getint()
  %t174 = call i32 @getint()
  %t175 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 0
  call void @my_memset(i32* %t175, i32 0, i32 10)
  br label %B330
B330:                               	; preds = %B327
  %t407 = add i32 0, 0
  %t402 = add i32 0, 0
  %t397 = add i32 0, 0
  %t391 = add i32 %t174, 0
  %t177 = icmp sgt i32 %t174, 0
  br i1 %t177, label %B331, label %B335
B331:                               	; preds = %B330, %B431
  %t181 = call i32 @getint()
  %t183 = call i32 @getint()
  %t184 = call i32 @getint()
  call void @add_node(i32 %t181, i32 %t183, i32 %t184)
  %t191 = sub i32 %t391, 1
  %t340 = icmp sgt i32 %t191, 0
  br i1 %t340, label %B431, label %B343
B335:                               	; preds = %B330
  %t406 = add i32 0, 0
  %t401 = add i32 0, 0
  %t396 = add i32 0, 0
  %t390 = add i32 %t174, 0
  br label %B332
B343:                               	; preds = %B331
  %t406 = add i32 %t184, 0
  %t401 = add i32 %t183, 0
  %t396 = add i32 %t181, 0
  %t390 = add i32 %t191, 0
  br label %B332
B431:                               	; preds = %B331
  %t407 = add i32 %t184, 0
  %t402 = add i32 %t183, 0
  %t397 = add i32 %t181, 0
  %t391 = add i32 %t191, 0
  br label %B331
B332:                               	; preds = %B335, %B343
  %t193 = call i32 @max_flow(i32 1, i32 %t172)
  call void @putint(i32 %t193)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
