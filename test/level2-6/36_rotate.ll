@MAX_WIDTH = global i32 1024, align 4
@MAX_HEIGHT = global i32 1024, align 4
@image = global [1048576 x i32] zeroinitializer, align 4
@width = global i32 0, align 4
@height = global i32 0, align 4
@PI = global float 0x400921FB60000000, align 4
@TWO_PI = global float 0x401921FB60000000, align 4
@EPSILON = global float 0x3EB0C6F7A0000000, align 4
define float @my_fabs(float %t11) {
B234:
  %t235 = alloca float, align 4
  store float %t11, float* %t235, align 4
  %t13 = load float, float* %t235, align 4
  %t15 = sitofp i32 0 to float
  %t14 = icmp sgt float %t13, %t15
  br i1 %t14, label %B236, label %B240
B236:                               	; preds = %B234
  %t16 = load float, float* %t235, align 4
  ret float %t16
B240:                               	; preds = %B234
  br label %B237
B237:                               	; preds = %B240
  %t17 = load float, float* %t235, align 4
  %t18 = fsub float 0.000000, %t17
  ret float %t18
}
define float @p(float %t19) {
B241:
  %t242 = alloca float, align 4
  store float %t19, float* %t242, align 4
  %t23 = sitofp i32 3 to float
  %t21 = load float, float* %t242, align 4
  %t22 = fmul float %t23, %t21
  %t26 = sitofp i32 4 to float
  %t24 = load float, float* %t242, align 4
  %t25 = fmul float %t26, %t24
  %t27 = load float, float* %t242, align 4
  %t28 = fmul float %t25, %t27
  %t29 = load float, float* %t242, align 4
  %t30 = fmul float %t28, %t29
  %t31 = fsub float %t22, %t30
  ret float %t31
}
define float @my_sin_impl(float %t32) {
B243:
  %t244 = alloca float, align 4
  store float %t32, float* %t244, align 4
  %t34 = load float, float* %t244, align 4
  %t35 = call float @my_fabs(float %t34)
  %t36 = load float, float* @EPSILON, align 4
  %t37 = icmp sle float %t35, %t36
  br i1 %t37, label %B245, label %B249
B245:                               	; preds = %B243
  %t38 = load float, float* %t244, align 4
  ret float %t38
B249:                               	; preds = %B243
  br label %B246
B246:                               	; preds = %B249
  %t39 = load float, float* %t244, align 4
  %t40 = fdiv float %t39, 3.000000
  %t41 = call float @my_sin_impl(float %t40)
  %t42 = call float @p(float %t41)
  ret float %t42
}
define float @my_sin(float %t43) {
B250:
  %t251 = alloca float, align 4
  store float %t43, float* %t251, align 4
  %t45 = load float, float* %t251, align 4
  %t46 = load float, float* @TWO_PI, align 4
  %t47 = icmp sgt float %t45, %t46
  br i1 %t47, label %B252, label %B257
B252:                               	; preds = %B250, %B254
  %t53 = load float, float* %t251, align 4
  %t54 = load float, float* @TWO_PI, align 4
  %t55 = fdiv float %t53, %t54
  %t57 = fptosi float %t55 to i32
  %t59 = load float, float* %t251, align 4
  %t63 = sitofp i32 %t57 to float
  %t61 = load float, float* @TWO_PI, align 4
  %t62 = fmul float %t63, %t61
  %t64 = fsub float %t59, %t62
  store float %t64, float* %t251, align 4
  %t389 = add i32 %t57, 0
  br label %B253
B257:                               	; preds = %B250
  br label %B254
B253:                               	; preds = %B252, %B260
  %t65 = load float, float* %t251, align 4
  %t66 = load float, float* @PI, align 4
  %t67 = icmp sgt float %t65, %t66
  br i1 %t67, label %B262, label %B266
B254:                               	; preds = %B257
  %t48 = load float, float* %t251, align 4
  %t49 = load float, float* @TWO_PI, align 4
  %t50 = fsub float 0.000000, %t49
  %t51 = icmp slt float %t48, %t50
  br i1 %t51, label %B252, label %B260
B262:                               	; preds = %B253
  %t69 = load float, float* %t251, align 4
  %t70 = load float, float* @TWO_PI, align 4
  %t71 = fsub float %t69, %t70
  store float %t71, float* %t251, align 4
  br label %B263
B266:                               	; preds = %B253
  br label %B263
B260:                               	; preds = %B254
  %t389 = add i32 0, 0
  br label %B253
B263:                               	; preds = %B262, %B266
  %t72 = load float, float* %t251, align 4
  %t73 = load float, float* @PI, align 4
  %t74 = fsub float 0.000000, %t73
  %t75 = icmp slt float %t72, %t74
  br i1 %t75, label %B267, label %B271
B267:                               	; preds = %B263
  %t77 = load float, float* %t251, align 4
  %t78 = load float, float* @TWO_PI, align 4
  %t79 = fadd float %t77, %t78
  store float %t79, float* %t251, align 4
  br label %B268
B271:                               	; preds = %B263
  br label %B268
B268:                               	; preds = %B267, %B271
  %t80 = load float, float* %t251, align 4
  %t81 = call float @my_sin_impl(float %t80)
  ret float %t81
}
define float @my_cos(float %t82) {
B272:
  %t273 = alloca float, align 4
  store float %t82, float* %t273, align 4
  %t84 = load float, float* %t273, align 4
  %t85 = load float, float* @PI, align 4
  %t87 = sitofp i32 2 to float
  %t86 = fdiv float %t85, %t87
  %t88 = fadd float %t84, %t86
  %t89 = call float @my_sin(float %t88)
  ret float %t89
}
define i32 @read_image() {
B274:
  %t90 = call i32 @getch()
  %t91 = icmp ne i32 %t90, 80
  br i1 %t91, label %B275, label %B280
B275:                               	; preds = %B274, %B277
  %t95 = sub i32 0, 1
  ret i32 %t95
B280:                               	; preds = %B274
  br label %B277
B277:                               	; preds = %B280
  %t92 = call i32 @getch()
  %t93 = icmp ne i32 %t92, 50
  br i1 %t93, label %B275, label %B283
B283:                               	; preds = %B277
  br label %B276
B276:                               	; preds = %B283
  %t97 = call i32 @getint()
  store i32 %t97, i32* @width, align 4
  %t99 = call i32 @getint()
  store i32 %t99, i32* @height, align 4
  %t100 = load i32, i32* @width, align 4
  %t101 = load i32, i32* @MAX_WIDTH, align 4
  %t102 = icmp sgt i32 %t100, %t101
  br i1 %t102, label %B284, label %B290
B284:                               	; preds = %B276, %B286, %B287
  %t110 = sub i32 0, 1
  ret i32 %t110
B290:                               	; preds = %B276
  br label %B287
B287:                               	; preds = %B290
  %t103 = load i32, i32* @height, align 4
  %t104 = load i32, i32* @MAX_HEIGHT, align 4
  %t105 = icmp sgt i32 %t103, %t104
  br i1 %t105, label %B284, label %B293
B293:                               	; preds = %B287
  br label %B286
B286:                               	; preds = %B293
  %t107 = call i32 @getint()
  %t108 = icmp ne i32 %t107, 255
  br i1 %t108, label %B284, label %B296
B296:                               	; preds = %B286
  br label %B285
B285:                               	; preds = %B296
  br label %B298
B298:                               	; preds = %B285
  %t113 = load i32, i32* @height, align 4
  %t401 = add i32 0, 0
  %t392 = add i32 0, 0
  %t114 = icmp slt i32 0, %t113
  br i1 %t114, label %B299, label %B303
B299:                               	; preds = %B298, %B307
  br label %B305
B303:                               	; preds = %B298
  %t402 = add i32 0, 0
  %t393 = add i32 0, 0
  br label %B300
B305:                               	; preds = %B299
  %t117 = load i32, i32* @width, align 4
  %t398 = add i32 0, 0
  %t118 = icmp slt i32 0, %t117
  br i1 %t118, label %B306, label %B310
B300:                               	; preds = %B303, %B322
  ret i32 0
B306:                               	; preds = %B305, %B435
  %t125 = call i32 @getint()
  %t120 = load i32, i32* @width, align 4
  %t121 = mul i32 %t392, %t120
  %t123 = add i32 %t121, %t398
  %t124 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @image, i32 0, i32 %t123
  store i32 %t125, i32* %t124, align 4
  %t128 = add i32 %t398, 1
  %t312 = load i32, i32* @width, align 4
  %t313 = icmp slt i32 %t128, %t312
  br i1 %t313, label %B435, label %B316
B310:                               	; preds = %B305
  %t399 = add i32 0, 0
  br label %B307
B316:                               	; preds = %B306
  %t399 = add i32 %t128, 0
  br label %B307
B435:                               	; preds = %B306
  %t398 = add i32 %t128, 0
  br label %B306
B307:                               	; preds = %B310, %B316
  %t131 = add i32 %t392, 1
  %t318 = load i32, i32* @height, align 4
  %t401 = add i32 %t399, 0
  %t392 = add i32 %t131, 0
  %t319 = icmp slt i32 %t131, %t318
  br i1 %t319, label %B299, label %B322
B322:                               	; preds = %B307
  %t402 = add i32 %t399, 0
  %t393 = add i32 %t131, 0
  br label %B300
}
define i32 @rotate(i32 %t132, i32 %t134, float %t136) {
B323:
  %t324 = alloca i32, align 4
  %t325 = alloca i32, align 4
  %t326 = alloca float, align 4
  %t327 = alloca float, align 4
  %t328 = alloca float, align 4
  store i32 %t132, i32* %t324, align 4
  store i32 %t134, i32* %t325, align 4
  store float %t136, float* %t326, align 4
  %t138 = load float, float* %t326, align 4
  %t139 = call float @my_sin(float %t138)
  store float %t139, float* %t327, align 4
  %t141 = load float, float* %t326, align 4
  %t142 = call float @my_cos(float %t141)
  store float %t142, float* %t328, align 4
  %t144 = load i32, i32* @width, align 4
  %t145 = sdiv i32 %t144, 2
  %t147 = load i32, i32* @height, align 4
  %t148 = sdiv i32 %t147, 2
  %t150 = load i32, i32* %t324, align 4
  %t152 = sub i32 %t150, %t145
  %t154 = load i32, i32* %t325, align 4
  %t156 = sub i32 %t154, %t148
  %t161 = sitofp i32 %t152 to float
  %t159 = load float, float* %t328, align 4
  %t160 = fmul float %t161, %t159
  %t165 = sitofp i32 %t156 to float
  %t163 = load float, float* %t327, align 4
  %t164 = fmul float %t165, %t163
  %t166 = fsub float %t160, %t164
  %t169 = sitofp i32 %t145 to float
  %t168 = fadd float %t166, %t169
  %t171 = fptosi float %t168 to i32
  %t173 = load float, float* %t327, align 4
  %t174 = fmul float %t161, %t173
  %t177 = load float, float* %t328, align 4
  %t178 = fmul float %t165, %t177
  %t180 = fadd float %t174, %t178
  %t183 = sitofp i32 %t148 to float
  %t182 = fadd float %t180, %t183
  %t185 = fptosi float %t182 to i32
  %t187 = icmp slt i32 %t171, 0
  br i1 %t187, label %B335, label %B342
B335:                               	; preds = %B323, %B337, %B338, %B339
  ret i32 0
B342:                               	; preds = %B323
  br label %B339
B339:                               	; preds = %B342
  %t189 = load i32, i32* @width, align 4
  %t190 = icmp sge i32 %t171, %t189
  br i1 %t190, label %B335, label %B345
B345:                               	; preds = %B339
  br label %B338
B338:                               	; preds = %B345
  %t193 = icmp slt i32 %t185, 0
  br i1 %t193, label %B335, label %B348
B348:                               	; preds = %B338
  br label %B337
B337:                               	; preds = %B348
  %t196 = load i32, i32* @height, align 4
  %t197 = icmp sge i32 %t185, %t196
  br i1 %t197, label %B335, label %B351
B351:                               	; preds = %B337
  br label %B336
B336:                               	; preds = %B351
  %t200 = load i32, i32* @width, align 4
  %t201 = mul i32 %t185, %t200
  %t203 = add i32 %t201, %t171
  %t204 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @image, i32 0, i32 %t203
  %t352 = load i32, i32* %t204, align 4
  ret i32 %t352
}
define void @write_pgm(float %t205) {
B353:
  %t354 = alloca float, align 4
  store float %t205, float* %t354, align 4
  call void @putch(i32 80)
  call void @putch(i32 50)
  call void @putch(i32 10)
  %t207 = load i32, i32* @width, align 4
  call void @putint(i32 %t207)
  call void @putch(i32 32)
  %t208 = load i32, i32* @height, align 4
  call void @putint(i32 %t208)
  call void @putch(i32 32)
  call void @putint(i32 255)
  call void @putch(i32 10)
  br label %B356
B356:                               	; preds = %B353
  %t211 = load i32, i32* @height, align 4
  %t424 = add i32 0, 0
  %t415 = add i32 0, 0
  %t212 = icmp slt i32 0, %t211
  br i1 %t212, label %B357, label %B361
B357:                               	; preds = %B356, %B365
  br label %B363
B361:                               	; preds = %B356
  %t423 = add i32 0, 0
  %t414 = add i32 0, 0
  br label %B358
B363:                               	; preds = %B357
  %t215 = load i32, i32* @width, align 4
  %t420 = add i32 0, 0
  %t216 = icmp slt i32 0, %t215
  br i1 %t216, label %B364, label %B368
B358:                               	; preds = %B361, %B380
  ret void
B364:                               	; preds = %B363, %B442
  %t219 = load float, float* %t354, align 4
  %t220 = call i32 @rotate(i32 %t420, i32 %t415, float %t219)
  call void @putint(i32 %t220)
  call void @putch(i32 32)
  %t223 = add i32 %t420, 1
  %t370 = load i32, i32* @width, align 4
  %t371 = icmp slt i32 %t223, %t370
  br i1 %t371, label %B442, label %B374
B368:                               	; preds = %B363
  %t421 = add i32 0, 0
  br label %B365
B374:                               	; preds = %B364
  %t421 = add i32 %t223, 0
  br label %B365
B442:                               	; preds = %B364
  %t420 = add i32 %t223, 0
  br label %B364
B365:                               	; preds = %B368, %B374
  call void @putch(i32 10)
  %t226 = add i32 %t415, 1
  %t376 = load i32, i32* @height, align 4
  %t424 = add i32 %t421, 0
  %t415 = add i32 %t226, 0
  %t377 = icmp slt i32 %t226, %t376
  br i1 %t377, label %B357, label %B380
B380:                               	; preds = %B365
  %t423 = add i32 %t421, 0
  %t414 = add i32 %t226, 0
  br label %B358
}
define i32 @main() {
B381:
  %t382 = alloca float, align 4
  %t227 = call float @getfloat()
  store float %t227, float* %t382, align 4
  %t229 = call i32 @getch()
  %t230 = call i32 @read_image()
  %t231 = icmp slt i32 %t230, 0
  br i1 %t231, label %B383, label %B387
B383:                               	; preds = %B381
  %t232 = sub i32 0, 1
  ret i32 %t232
B387:                               	; preds = %B381
  br label %B384
B384:                               	; preds = %B387
  %t233 = load float, float* %t382, align 4
  call void @write_pgm(float %t233)
  ret i32 0
}
declare i32 @getch()
declare i32 @getint()
declare void @putch(i32)
declare void @putint(i32)
declare float @getfloat()
