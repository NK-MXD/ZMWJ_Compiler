@TOKEN_NUM = global i32 0, align 4
@TOKEN_OTHER = global i32 1, align 4
@last_char = global i32 32, align 4
@num = global i32 0, align 4
@other = global i32 0, align 4
@cur_token = global i32 0, align 4
define i32 @next_char() {
B205:
  %t7 = call i32 @getch()
  store i32 %t7, i32* @last_char, align 4
  %t8 = load i32, i32* @last_char, align 4
  ret i32 %t8
}
define i32 @is_space(i32 %t9) {
B206:
  %t207 = alloca i32, align 4
  store i32 %t9, i32* %t207, align 4
  %t11 = load i32, i32* %t207, align 4
  %t12 = icmp eq i32 %t11, 32
  br i1 %t12, label %B208, label %B214
B208:                               	; preds = %B206, %B211
  ret i32 1
B214:                               	; preds = %B206
  br label %B211
B211:                               	; preds = %B214
  %t13 = load i32, i32* %t207, align 4
  %t14 = icmp eq i32 %t13, 10
  br i1 %t14, label %B208, label %B217
B217:                               	; preds = %B211
  br label %B209
B209:                               	; preds = %B217
  ret i32 0
}
define i32 @is_num(i32 %t16) {
B218:
  %t219 = alloca i32, align 4
  store i32 %t16, i32* %t219, align 4
  %t18 = load i32, i32* %t219, align 4
  %t19 = icmp sge i32 %t18, 48
  br i1 %t19, label %B223, label %B226
B223:                               	; preds = %B218
  %t20 = load i32, i32* %t219, align 4
  %t21 = icmp sle i32 %t20, 57
  br i1 %t21, label %B220, label %B229
B226:                               	; preds = %B218
  br label %B221
B220:                               	; preds = %B223
  ret i32 1
B229:                               	; preds = %B223
  br label %B221
B221:                               	; preds = %B226, %B229
  ret i32 0
}
define i32 @next_token() {
B230:
  br label %B231
B231:                               	; preds = %B230
  %t23 = load i32, i32* @last_char, align 4
  %t24 = call i32 @is_space(i32 %t23)
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %B232, label %B235
B232:                               	; preds = %B231, %B232
  %t26 = call i32 @next_char()
  %t237 = load i32, i32* @last_char, align 4
  %t238 = call i32 @is_space(i32 %t237)
  %t239 = icmp ne i32 %t238, 0
  br i1 %t239, label %B232, label %B241
B235:                               	; preds = %B231
  br label %B233
B241:                               	; preds = %B232
  br label %B233
B233:                               	; preds = %B235, %B241
  %t27 = load i32, i32* @last_char, align 4
  %t28 = call i32 @is_num(i32 %t27)
  %t48 = icmp ne i32 %t28, 0
  br i1 %t48, label %B243, label %B247
B243:                               	; preds = %B233
  %t30 = load i32, i32* @last_char, align 4
  %t31 = sub i32 %t30, 48
  store i32 %t31, i32* @num, align 4
  br label %B249
B247:                               	; preds = %B233
  br label %B244
B249:                               	; preds = %B243
  %t32 = call i32 @next_char()
  %t33 = call i32 @is_num(i32 %t32)
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %B250, label %B253
B244:                               	; preds = %B247
  %t44 = load i32, i32* @last_char, align 4
  store i32 %t44, i32* @other, align 4
  %t45 = call i32 @next_char()
  %t47 = load i32, i32* @TOKEN_OTHER, align 4
  store i32 %t47, i32* @cur_token, align 4
  br label %B245
B250:                               	; preds = %B249, %B250
  %t36 = load i32, i32* @num, align 4
  %t37 = mul i32 %t36, 10
  %t38 = load i32, i32* @last_char, align 4
  %t39 = add i32 %t37, %t38
  %t40 = sub i32 %t39, 48
  store i32 %t40, i32* @num, align 4
  %t255 = call i32 @next_char()
  %t256 = call i32 @is_num(i32 %t255)
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %B250, label %B259
B253:                               	; preds = %B249
  br label %B251
B245:                               	; preds = %B244, %B251
  %t49 = load i32, i32* @cur_token, align 4
  ret i32 %t49
B259:                               	; preds = %B250
  br label %B251
B251:                               	; preds = %B253, %B259
  %t42 = load i32, i32* @TOKEN_NUM, align 4
  store i32 %t42, i32* @cur_token, align 4
  br label %B245
}
define i32 @panic() {
B261:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %t50 = sub i32 0, 1
  ret i32 %t50
}
define i32 @get_op_prec(i32 %t51) {
B262:
  %t263 = alloca i32, align 4
  store i32 %t51, i32* %t263, align 4
  %t53 = load i32, i32* %t263, align 4
  %t54 = icmp eq i32 %t53, 43
  br i1 %t54, label %B264, label %B269
B264:                               	; preds = %B262, %B266
  ret i32 10
B269:                               	; preds = %B262
  br label %B266
B266:                               	; preds = %B269
  %t55 = load i32, i32* %t263, align 4
  %t56 = icmp eq i32 %t55, 45
  br i1 %t56, label %B264, label %B272
B272:                               	; preds = %B266
  br label %B265
B265:                               	; preds = %B272
  %t58 = load i32, i32* %t263, align 4
  %t59 = icmp eq i32 %t58, 42
  br i1 %t59, label %B273, label %B279
B273:                               	; preds = %B265, %B275, %B276
  ret i32 20
B279:                               	; preds = %B265
  br label %B276
B276:                               	; preds = %B279
  %t60 = load i32, i32* %t263, align 4
  %t61 = icmp eq i32 %t60, 47
  br i1 %t61, label %B273, label %B282
B282:                               	; preds = %B276
  br label %B275
B275:                               	; preds = %B282
  %t63 = load i32, i32* %t263, align 4
  %t64 = icmp eq i32 %t63, 37
  br i1 %t64, label %B273, label %B285
B285:                               	; preds = %B275
  br label %B274
B274:                               	; preds = %B285
  ret i32 0
}
define void @stack_push(i32* %t66, i32 %t68) {
B286:
  %t287 = alloca i32*, align 4
  %t288 = alloca i32, align 4
  store i32* %t66, i32** %t287, align 4
  store i32 %t68, i32* %t288, align 4
  %t289 = load i32*, i32** %t287, align 4
  %t71 = getelementptr inbounds i32, i32* %t289, i32 0
  %t290 = load i32, i32* %t71, align 4
  %t72 = add i32 %t290, 1
  %t70 = getelementptr inbounds i32, i32* %t289, i32 0
  store i32 %t72, i32* %t70, align 4
  %t75 = load i32, i32* %t288, align 4
  %t294 = load i32, i32* %t70, align 4
  %t74 = getelementptr inbounds i32, i32* %t289, i32 %t294
  store i32 %t75, i32* %t74, align 4
  ret void
}
define i32 @stack_pop(i32* %t76) {
B295:
  %t296 = alloca i32*, align 4
  store i32* %t76, i32** %t296, align 4
  %t298 = load i32*, i32** %t296, align 4
  %t78 = getelementptr inbounds i32, i32* %t298, i32 0
  %t300 = load i32, i32* %t78, align 4
  %t79 = getelementptr inbounds i32, i32* %t298, i32 %t300
  %t301 = load i32, i32* %t79, align 4
  %t303 = load i32, i32* %t78, align 4
  %t83 = sub i32 %t303, 1
  store i32 %t83, i32* %t78, align 4
  ret i32 %t301
}
define i32 @stack_peek(i32* %t85) {
B305:
  %t306 = alloca i32*, align 4
  store i32* %t85, i32** %t306, align 4
  %t307 = load i32*, i32** %t306, align 4
  %t87 = getelementptr inbounds i32, i32* %t307, i32 0
  %t309 = load i32, i32* %t87, align 4
  %t88 = getelementptr inbounds i32, i32* %t307, i32 %t309
  %t310 = load i32, i32* %t88, align 4
  ret i32 %t310
}
define i32 @stack_size(i32* %t89) {
B311:
  %t312 = alloca i32*, align 4
  store i32* %t89, i32** %t312, align 4
  %t313 = load i32*, i32** %t312, align 4
  %t91 = getelementptr inbounds i32, i32* %t313, i32 0
  %t314 = load i32, i32* %t91, align 4
  ret i32 %t314
}
define i32 @eval_op(i32 %t92, i32 %t94, i32 %t96) {
B315:
  %t316 = alloca i32, align 4
  %t317 = alloca i32, align 4
  %t318 = alloca i32, align 4
  store i32 %t92, i32* %t316, align 4
  store i32 %t94, i32* %t317, align 4
  store i32 %t96, i32* %t318, align 4
  %t98 = load i32, i32* %t316, align 4
  %t99 = icmp eq i32 %t98, 43
  br i1 %t99, label %B319, label %B323
B319:                               	; preds = %B315
  %t100 = load i32, i32* %t317, align 4
  %t101 = load i32, i32* %t318, align 4
  %t102 = add i32 %t100, %t101
  ret i32 %t102
B323:                               	; preds = %B315
  br label %B320
B320:                               	; preds = %B323
  %t103 = load i32, i32* %t316, align 4
  %t104 = icmp eq i32 %t103, 45
  br i1 %t104, label %B324, label %B328
B324:                               	; preds = %B320
  %t105 = load i32, i32* %t317, align 4
  %t106 = load i32, i32* %t318, align 4
  %t107 = sub i32 %t105, %t106
  ret i32 %t107
B328:                               	; preds = %B320
  br label %B325
B325:                               	; preds = %B328
  %t108 = load i32, i32* %t316, align 4
  %t109 = icmp eq i32 %t108, 42
  br i1 %t109, label %B329, label %B333
B329:                               	; preds = %B325
  %t110 = load i32, i32* %t317, align 4
  %t111 = load i32, i32* %t318, align 4
  %t112 = mul i32 %t110, %t111
  ret i32 %t112
B333:                               	; preds = %B325
  br label %B330
B330:                               	; preds = %B333
  %t113 = load i32, i32* %t316, align 4
  %t114 = icmp eq i32 %t113, 47
  br i1 %t114, label %B334, label %B338
B334:                               	; preds = %B330
  %t115 = load i32, i32* %t317, align 4
  %t116 = load i32, i32* %t318, align 4
  %t117 = sdiv i32 %t115, %t116
  ret i32 %t117
B338:                               	; preds = %B330
  br label %B335
B335:                               	; preds = %B338
  %t118 = load i32, i32* %t316, align 4
  %t119 = icmp eq i32 %t118, 37
  br i1 %t119, label %B339, label %B343
B339:                               	; preds = %B335
  %t120 = load i32, i32* %t317, align 4
  %t121 = load i32, i32* %t318, align 4
  %t122 = srem i32 %t120, %t121
  ret i32 %t122
B343:                               	; preds = %B335
  br label %B340
B340:                               	; preds = %B343
  ret i32 0
}
define i32 @eval() {
B344:
  %t345 = alloca [256 x i32], align 4
  %t347 = alloca [256 x i32], align 4
  %t346 = bitcast [256 x i32]* %t345 to i8*
  call void @llvm.memset.p0.i32(i8* %t346, i8 0, i32 1024, i1 0)
  %t348 = bitcast [256 x i32]* %t347 to i8*
  call void @llvm.memset.p0.i32(i8* %t348, i8 0, i32 1024, i1 0)
  %t125 = load i32, i32* @cur_token, align 4
  %t126 = load i32, i32* @TOKEN_NUM, align 4
  %t127 = icmp ne i32 %t125, %t126
  br i1 %t127, label %B349, label %B353
B349:                               	; preds = %B344
  %t128 = call i32 @panic()
  ret i32 %t128
B353:                               	; preds = %B344
  br label %B350
B350:                               	; preds = %B353
  %t129 = getelementptr inbounds [256 x i32], [256 x i32]* %t345, i32 0, i32 0
  %t130 = load i32, i32* @num, align 4
  call void @stack_push(i32* %t129, i32 %t130)
  %t131 = call i32 @next_token()
  br label %B354
B354:                               	; preds = %B350
  %t132 = load i32, i32* @cur_token, align 4
  %t133 = load i32, i32* @TOKEN_OTHER, align 4
  %t466 = add i32 0, 0
  %t457 = add i32 0, 0
  %t448 = add i32 0, 0
  %t439 = add i32 0, 0
  %t134 = icmp eq i32 %t132, %t133
  br i1 %t134, label %B355, label %B359
B355:                               	; preds = %B354, %B399
  %t135 = load i32, i32* @other, align 4
  %t138 = call i32 @get_op_prec(i32 %t135)
  %t363 = icmp ne i32 %t138, 0
  %t139 = xor i1 %t363, true
  %t140 = icmp ne i1 %t139, 0
  br i1 %t140, label %B361, label %B365
B359:                               	; preds = %B354
  %t467 = add i32 0, 0
  %t458 = add i32 0, 0
  %t449 = add i32 0, 0
  %t440 = add i32 0, 0
  br label %B356
B361:                               	; preds = %B355
  %t467 = add i32 %t466, 0
  %t458 = add i32 %t457, 0
  %t449 = add i32 %t448, 0
  %t440 = add i32 %t135, 0
  br label %B356
B365:                               	; preds = %B355
  br label %B362
B356:                               	; preds = %B359, %B361, %B408
  %t175 = call i32 @next_token()
  br label %B409
B362:                               	; preds = %B365
  %t141 = call i32 @next_token()
  br label %B368
B409:                               	; preds = %B356
  %t176 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  %t177 = call i32 @stack_size(i32* %t176)
  %t481 = add i32 0, 0
  %t476 = add i32 0, 0
  %t471 = add i32 0, 0
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %B410, label %B413
B368:                               	; preds = %B362
  %t142 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  %t143 = call i32 @stack_size(i32* %t142)
  %t463 = add i32 %t466, 0
  %t454 = add i32 %t457, 0
  %t445 = add i32 %t448, 0
  %t151 = icmp ne i32 %t143, 0
  br i1 %t151, label %B391, label %B373
B410:                               	; preds = %B409, %B508
  %t179 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  %t180 = call i32 @stack_pop(i32* %t179)
  %t182 = getelementptr inbounds [256 x i32], [256 x i32]* %t345, i32 0, i32 0
  %t183 = call i32 @stack_pop(i32* %t182)
  %t186 = call i32 @stack_pop(i32* %t182)
  %t192 = call i32 @eval_op(i32 %t180, i32 %t186, i32 %t183)
  call void @stack_push(i32* %t182, i32 %t192)
  %t419 = call i32 @stack_size(i32* %t179)
  %t420 = icmp ne i32 %t419, 0
  br i1 %t420, label %B508, label %B422
B413:                               	; preds = %B409
  %t482 = add i32 0, 0
  %t477 = add i32 0, 0
  %t472 = add i32 0, 0
  br label %B411
B391:                               	; preds = %B368, %B369
  %t384 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  %t385 = call i32 @stack_peek(i32* %t384)
  %t386 = call i32 @get_op_prec(i32 %t385)
  %t388 = call i32 @get_op_prec(i32 %t135)
  %t389 = icmp sge i32 %t386, %t388
  br i1 %t389, label %B369, label %B397
B373:                               	; preds = %B368
  %t462 = add i32 %t466, 0
  %t453 = add i32 %t457, 0
  %t444 = add i32 %t448, 0
  br label %B370
B422:                               	; preds = %B410
  %t482 = add i32 %t186, 0
  %t477 = add i32 %t183, 0
  %t472 = add i32 %t180, 0
  br label %B411
B508:                               	; preds = %B410
  %t481 = add i32 %t186, 0
  %t476 = add i32 %t183, 0
  %t471 = add i32 %t180, 0
  br label %B410
B411:                               	; preds = %B413, %B422
  %t193 = getelementptr inbounds [256 x i32], [256 x i32]* %t345, i32 0, i32 0
  %t194 = call i32 @stack_peek(i32* %t193)
  ret i32 %t194
B369:                               	; preds = %B391
  %t152 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  %t153 = call i32 @stack_pop(i32* %t152)
  %t155 = getelementptr inbounds [256 x i32], [256 x i32]* %t345, i32 0, i32 0
  %t156 = call i32 @stack_pop(i32* %t155)
  %t159 = call i32 @stack_pop(i32* %t155)
  %t165 = call i32 @eval_op(i32 %t153, i32 %t159, i32 %t156)
  call void @stack_push(i32* %t155, i32 %t165)
  %t382 = call i32 @stack_size(i32* %t152)
  %t463 = add i32 %t159, 0
  %t454 = add i32 %t156, 0
  %t445 = add i32 %t153, 0
  %t383 = icmp ne i32 %t382, 0
  br i1 %t383, label %B391, label %B393
B397:                               	; preds = %B391
  %t462 = add i32 %t463, 0
  %t453 = add i32 %t454, 0
  %t444 = add i32 %t445, 0
  br label %B370
B370:                               	; preds = %B373, %B393, %B397
  %t166 = getelementptr inbounds [256 x i32], [256 x i32]* %t347, i32 0, i32 0
  call void @stack_push(i32* %t166, i32 %t135)
  %t168 = load i32, i32* @cur_token, align 4
  %t169 = load i32, i32* @TOKEN_NUM, align 4
  %t170 = icmp ne i32 %t168, %t169
  br i1 %t170, label %B398, label %B402
B393:                               	; preds = %B369
  %t462 = add i32 %t159, 0
  %t453 = add i32 %t156, 0
  %t444 = add i32 %t153, 0
  br label %B370
B398:                               	; preds = %B370
  %t171 = call i32 @panic()
  ret i32 %t171
B402:                               	; preds = %B370
  br label %B399
B399:                               	; preds = %B402
  %t172 = getelementptr inbounds [256 x i32], [256 x i32]* %t345, i32 0, i32 0
  %t173 = load i32, i32* @num, align 4
  call void @stack_push(i32* %t172, i32 %t173)
  %t174 = call i32 @next_token()
  %t403 = load i32, i32* @cur_token, align 4
  %t404 = load i32, i32* @TOKEN_OTHER, align 4
  %t466 = add i32 %t462, 0
  %t457 = add i32 %t453, 0
  %t448 = add i32 %t444, 0
  %t439 = add i32 %t135, 0
  %t405 = icmp eq i32 %t403, %t404
  br i1 %t405, label %B355, label %B408
B408:                               	; preds = %B399
  %t467 = add i32 %t462, 0
  %t458 = add i32 %t453, 0
  %t449 = add i32 %t444, 0
  %t440 = add i32 %t135, 0
  br label %B356
}
define i32 @main() {
B424:
  %t195 = call i32 @getint()
  %t197 = call i32 @getch()
  %t198 = call i32 @next_token()
  br label %B426
B426:                               	; preds = %B424
  %t487 = add i32 %t195, 0
  %t200 = icmp ne i32 %t195, 0
  br i1 %t200, label %B427, label %B430
B427:                               	; preds = %B426, %B513
  %t201 = call i32 @eval()
  call void @putint(i32 %t201)
  call void @putch(i32 10)
  %t204 = sub i32 %t487, 1
  %t433 = icmp ne i32 %t204, 0
  br i1 %t433, label %B513, label %B435
B430:                               	; preds = %B426
  %t486 = add i32 %t195, 0
  br label %B428
B435:                               	; preds = %B427
  %t486 = add i32 %t204, 0
  br label %B428
B513:                               	; preds = %B427
  %t487 = add i32 %t204, 0
  br label %B427
B428:                               	; preds = %B430, %B435
  ret i32 0
}
declare i32 @getch()
declare void @putch(i32)
declare i32 @getint()
declare void @putint(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
