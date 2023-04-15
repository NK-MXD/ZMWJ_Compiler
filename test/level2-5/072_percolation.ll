@array = global [110 x i32] zeroinitializer, align 4
@n = global i32 0, align 4
define void @init(i32 %t2) {
B174:
  %t175 = alloca i32, align 4
  %t176 = alloca i32, align 4
  store i32 %t2, i32* %t175, align 4
  store i32 1, i32* %t176, align 4
  br label %B177
B177:                               	; preds = %B174
  %t5 = load i32, i32* %t176, align 4
  %t6 = load i32, i32* %t175, align 4
  %t7 = load i32, i32* %t175, align 4
  %t8 = mul i32 %t6, %t7
  %t9 = add i32 %t8, 1
  %t10 = icmp sle i32 %t5, %t9
  br i1 %t10, label %B178, label %B182
B178:                               	; preds = %B177, %B178
  %t13 = sub i32 0, 1
  %t11 = load i32, i32* %t176, align 4
  %t12 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t11
  store i32 %t13, i32* %t12, align 4
  %t15 = load i32, i32* %t176, align 4
  %t16 = add i32 %t15, 1
  store i32 %t16, i32* %t176, align 4
  %t183 = load i32, i32* %t176, align 4
  %t184 = load i32, i32* %t175, align 4
  %t185 = load i32, i32* %t175, align 4
  %t186 = mul i32 %t184, %t185
  %t187 = add i32 %t186, 1
  %t188 = icmp sle i32 %t183, %t187
  br i1 %t188, label %B178, label %B191
B182:                               	; preds = %B177
  br label %B179
B191:                               	; preds = %B178
  br label %B179
B179:                               	; preds = %B182, %B191
  ret void
}
define i32 @findfa(i32 %t17) {
B192:
  %t193 = alloca i32, align 4
  store i32 %t17, i32* %t193, align 4
  %t19 = load i32, i32* %t193, align 4
  %t20 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t19
  %t197 = load i32, i32* %t20, align 4
  %t21 = load i32, i32* %t193, align 4
  %t22 = icmp eq i32 %t197, %t21
  br i1 %t22, label %B194, label %B200
B194:                               	; preds = %B192
  %t23 = load i32, i32* %t193, align 4
  ret i32 %t23
B200:                               	; preds = %B192
  br label %B195
B195:                               	; preds = %B200
  %t26 = load i32, i32* %t193, align 4
  %t27 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t26
  %t201 = load i32, i32* %t27, align 4
  %t28 = call i32 @findfa(i32 %t201)
  %t24 = load i32, i32* %t193, align 4
  %t25 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t24
  store i32 %t28, i32* %t25, align 4
  %t29 = load i32, i32* %t193, align 4
  %t30 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t29
  %t202 = load i32, i32* %t30, align 4
  ret i32 %t202
}
define void @mmerge(i32 %t31, i32 %t33) {
B203:
  %t204 = alloca i32, align 4
  %t205 = alloca i32, align 4
  %t206 = alloca i32, align 4
  %t207 = alloca i32, align 4
  store i32 %t31, i32* %t204, align 4
  store i32 %t33, i32* %t205, align 4
  %t35 = load i32, i32* %t204, align 4
  %t36 = call i32 @findfa(i32 %t35)
  store i32 %t36, i32* %t206, align 4
  %t38 = load i32, i32* %t205, align 4
  %t39 = call i32 @findfa(i32 %t38)
  store i32 %t39, i32* %t207, align 4
  %t41 = load i32, i32* %t206, align 4
  %t42 = load i32, i32* %t207, align 4
  %t43 = icmp ne i32 %t41, %t42
  br i1 %t43, label %B208, label %B212
B208:                               	; preds = %B203
  %t46 = load i32, i32* %t207, align 4
  %t44 = load i32, i32* %t206, align 4
  %t45 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t44
  store i32 %t46, i32* %t45, align 4
  br label %B209
B212:                               	; preds = %B203
  br label %B209
B209:                               	; preds = %B208, %B212
  ret void
}
define i32 @main() {
B213:
  %t214 = alloca i32, align 4
  %t215 = alloca i32, align 4
  %t216 = alloca i32, align 4
  %t217 = alloca i32, align 4
  %t224 = alloca i32, align 4
  %t225 = alloca i32, align 4
  %t226 = alloca i32, align 4
  %t239 = alloca i32, align 4
  %t305 = alloca i32, align 4
  store i32 1, i32* %t214, align 4
  br label %B218
B218:                               	; preds = %B213
  %t52 = load i32, i32* %t214, align 4
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %B219, label %B222
B219:                               	; preds = %B218, %B313
  %t55 = load i32, i32* %t214, align 4
  %t56 = sub i32 %t55, 1
  store i32 %t56, i32* %t214, align 4
  store i32 4, i32* @n, align 4
  store i32 10, i32* %t215, align 4
  store i32 0, i32* %t224, align 4
  store i32 0, i32* %t225, align 4
  %t61 = load i32, i32* @n, align 4
  call void @init(i32 %t61)
  %t62 = load i32, i32* @n, align 4
  %t63 = load i32, i32* @n, align 4
  %t64 = mul i32 %t62, %t63
  %t65 = add i32 %t64, 1
  store i32 %t65, i32* %t226, align 4
  br label %B227
B222:                               	; preds = %B218
  br label %B220
B227:                               	; preds = %B219
  %t67 = load i32, i32* %t224, align 4
  %t68 = load i32, i32* %t215, align 4
  %t69 = icmp slt i32 %t67, %t68
  br i1 %t69, label %B228, label %B232
B220:                               	; preds = %B222, %B321
  ret i32 0
B228:                               	; preds = %B227, %B234
  %t71 = call i32 @getint()
  store i32 %t71, i32* %t216, align 4
  %t73 = call i32 @getint()
  store i32 %t73, i32* %t217, align 4
  %t74 = load i32, i32* %t225, align 4
  %t235 = icmp ne i32 %t74, 0
  %t75 = xor i1 %t235, true
  %t166 = icmp ne i1 %t75, 0
  br i1 %t166, label %B233, label %B237
B232:                               	; preds = %B227
  br label %B229
B233:                               	; preds = %B228
  %t76 = load i32, i32* @n, align 4
  %t77 = load i32, i32* %t216, align 4
  %t78 = sub i32 %t77, 1
  %t79 = mul i32 %t76, %t78
  %t80 = load i32, i32* %t217, align 4
  %t81 = add i32 %t79, %t80
  store i32 %t81, i32* %t239, align 4
  %t85 = load i32, i32* %t239, align 4
  %t83 = load i32, i32* %t239, align 4
  %t84 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t83
  store i32 %t85, i32* %t84, align 4
  %t86 = load i32, i32* %t216, align 4
  %t87 = icmp eq i32 %t86, 1
  br i1 %t87, label %B240, label %B244
B237:                               	; preds = %B228
  br label %B234
B229:                               	; preds = %B232, %B311
  %t170 = load i32, i32* %t225, align 4
  %t314 = icmp ne i32 %t170, 0
  %t171 = xor i1 %t314, true
  %t173 = icmp ne i1 %t171, 0
  br i1 %t173, label %B312, label %B316
B240:                               	; preds = %B233
  %t88 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 0
  store i32 0, i32* %t88, align 4
  %t89 = load i32, i32* %t239, align 4
  call void @mmerge(i32 %t89, i32 0)
  br label %B241
B244:                               	; preds = %B233
  br label %B241
B234:                               	; preds = %B237, %B291
  %t168 = load i32, i32* %t224, align 4
  %t169 = add i32 %t168, 1
  store i32 %t169, i32* %t224, align 4
  %t306 = load i32, i32* %t224, align 4
  %t307 = load i32, i32* %t215, align 4
  %t308 = icmp slt i32 %t306, %t307
  br i1 %t308, label %B228, label %B311
B312:                               	; preds = %B229
  %t172 = sub i32 0, 1
  call void @putint(i32 %t172)
  call void @putch(i32 10)
  br label %B313
B316:                               	; preds = %B229
  br label %B313
B241:                               	; preds = %B240, %B244
  %t90 = load i32, i32* %t216, align 4
  %t91 = load i32, i32* @n, align 4
  %t92 = icmp eq i32 %t90, %t91
  br i1 %t92, label %B245, label %B249
B311:                               	; preds = %B234
  br label %B229
B313:                               	; preds = %B312, %B316
  %t318 = load i32, i32* %t214, align 4
  %t319 = icmp ne i32 %t318, 0
  br i1 %t319, label %B219, label %B321
B245:                               	; preds = %B241
  %t95 = load i32, i32* %t226, align 4
  %t93 = load i32, i32* %t226, align 4
  %t94 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t93
  store i32 %t95, i32* %t94, align 4
  %t96 = load i32, i32* %t239, align 4
  %t97 = load i32, i32* %t226, align 4
  call void @mmerge(i32 %t96, i32 %t97)
  br label %B246
B249:                               	; preds = %B241
  br label %B246
B321:                               	; preds = %B313
  br label %B220
B246:                               	; preds = %B245, %B249
  %t98 = load i32, i32* %t217, align 4
  %t99 = load i32, i32* @n, align 4
  %t100 = icmp slt i32 %t98, %t99
  br i1 %t100, label %B252, label %B255
B252:                               	; preds = %B246
  %t101 = load i32, i32* %t239, align 4
  %t102 = add i32 %t101, 1
  %t103 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t102
  %t256 = load i32, i32* %t103, align 4
  %t104 = sub i32 0, 1
  %t105 = icmp ne i32 %t256, %t104
  br i1 %t105, label %B250, label %B259
B255:                               	; preds = %B246
  br label %B251
B250:                               	; preds = %B252
  %t107 = load i32, i32* %t239, align 4
  %t108 = load i32, i32* %t239, align 4
  %t109 = add i32 %t108, 1
  call void @mmerge(i32 %t107, i32 %t109)
  br label %B251
B259:                               	; preds = %B252
  br label %B251
B251:                               	; preds = %B250, %B255, %B259
  %t110 = load i32, i32* %t217, align 4
  %t111 = icmp sgt i32 %t110, 1
  br i1 %t111, label %B262, label %B265
B262:                               	; preds = %B251
  %t112 = load i32, i32* %t239, align 4
  %t113 = sub i32 %t112, 1
  %t114 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t113
  %t266 = load i32, i32* %t114, align 4
  %t115 = sub i32 0, 1
  %t116 = icmp ne i32 %t266, %t115
  br i1 %t116, label %B260, label %B269
B265:                               	; preds = %B251
  br label %B261
B260:                               	; preds = %B262
  %t118 = load i32, i32* %t239, align 4
  %t119 = load i32, i32* %t239, align 4
  %t120 = sub i32 %t119, 1
  call void @mmerge(i32 %t118, i32 %t120)
  br label %B261
B269:                               	; preds = %B262
  br label %B261
B261:                               	; preds = %B260, %B265, %B269
  %t121 = load i32, i32* %t216, align 4
  %t122 = load i32, i32* @n, align 4
  %t123 = icmp slt i32 %t121, %t122
  br i1 %t123, label %B272, label %B275
B272:                               	; preds = %B261
  %t124 = load i32, i32* %t239, align 4
  %t125 = load i32, i32* @n, align 4
  %t126 = add i32 %t124, %t125
  %t127 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t126
  %t276 = load i32, i32* %t127, align 4
  %t128 = sub i32 0, 1
  %t129 = icmp ne i32 %t276, %t128
  br i1 %t129, label %B270, label %B279
B275:                               	; preds = %B261
  br label %B271
B270:                               	; preds = %B272
  %t131 = load i32, i32* %t239, align 4
  %t132 = load i32, i32* %t239, align 4
  %t133 = load i32, i32* @n, align 4
  %t134 = add i32 %t132, %t133
  call void @mmerge(i32 %t131, i32 %t134)
  br label %B271
B279:                               	; preds = %B272
  br label %B271
B271:                               	; preds = %B270, %B275, %B279
  %t135 = load i32, i32* %t216, align 4
  %t136 = icmp sgt i32 %t135, 1
  br i1 %t136, label %B282, label %B285
B282:                               	; preds = %B271
  %t137 = load i32, i32* %t239, align 4
  %t138 = load i32, i32* @n, align 4
  %t139 = sub i32 %t137, %t138
  %t140 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t139
  %t286 = load i32, i32* %t140, align 4
  %t141 = sub i32 0, 1
  %t142 = icmp ne i32 %t286, %t141
  br i1 %t142, label %B280, label %B289
B285:                               	; preds = %B271
  br label %B281
B280:                               	; preds = %B282
  %t144 = load i32, i32* %t239, align 4
  %t145 = load i32, i32* %t239, align 4
  %t146 = load i32, i32* @n, align 4
  %t147 = sub i32 %t145, %t146
  call void @mmerge(i32 %t144, i32 %t147)
  br label %B281
B289:                               	; preds = %B282
  br label %B281
B281:                               	; preds = %B280, %B285, %B289
  %t148 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 0
  %t294 = load i32, i32* %t148, align 4
  %t149 = sub i32 0, 1
  %t150 = icmp ne i32 %t294, %t149
  br i1 %t150, label %B293, label %B297
B293:                               	; preds = %B281
  %t151 = load i32, i32* %t226, align 4
  %t152 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i3