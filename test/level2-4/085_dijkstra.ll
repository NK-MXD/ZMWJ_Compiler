@INF = global i32 65535, align 4
@e = global [16 x [16 x i32]] zeroinitializer, align 4
@book = global [16 x i32] zeroinitializer, align 4
@dis = global [16 x i32] zeroinitializer, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@v1 = global i32 0, align 4
@v2 = global i32 0, align 4
@w = global i32 0, align 4
define void @Dijkstra() {
B140:
  br label %B143
B143:                               	; preds = %B140
  %t13 = load i32, i32* @n, align 4
  %t299 = add i32 1, 0
  %t14 = icmp sle i32 1, %t13
  br i1 %t14, label %B144, label %B148
B144:                               	; preds = %B143, %B387
  %t18 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 1
  %t149 = getelementptr inbounds [16 x i32], [16 x i32]* %t18, i32 0, i32 %t299
  %t150 = load i32, i32* %t149, align 4
  %t16 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t299
  store i32 %t150, i32* %t16, align 4
  %t20 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t299
  store i32 0, i32* %t20, align 4
  %t23 = add i32 %t299, 1
  %t152 = load i32, i32* @n, align 4
  %t153 = icmp sle i32 %t23, %t152
  br i1 %t153, label %B387, label %B156
B148:                               	; preds = %B143
  %t300 = add i32 1, 0
  br label %B145
B156:                               	; preds = %B144
  %t300 = add i32 %t23, 0
  br label %B145
B387:                               	; preds = %B144
  %t299 = add i32 %t23, 0
  br label %B144
B145:                               	; preds = %B148, %B156
  %t24 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 1
  store i32 1, i32* %t24, align 4
  br label %B157
B157:                               	; preds = %B145
  %t27 = load i32, i32* @n, align 4
  %t28 = sub i32 %t27, 1
  %t342 = add i32 0, 0
  %t332 = add i32 0, 0
  %t322 = add i32 0, 0
  %t310 = add i32 0, 0
  %t293 = add i32 1, 0
  %t29 = icmp sle i32 1, %t28
  br i1 %t29, label %B158, label %B162
B158:                               	; preds = %B157, %B193
  %t30 = load i32, i32* @INF, align 4
  br label %B166
B162:                               	; preds = %B157
  %t343 = add i32 0, 0
  %t333 = add i32 0, 0
  %t323 = add i32 0, 0
  %t311 = add i32 0, 0
  %t294 = add i32 1, 0
  br label %B159
B166:                               	; preds = %B158
  %t35 = load i32, i32* @n, align 4
  %t329 = add i32 1, 0
  %t319 = add i32 0, 0
  %t307 = add i32 %t30, 0
  %t36 = icmp sle i32 1, %t35
  br i1 %t36, label %B167, label %B171
B159:                               	; preds = %B162, %B228
  ret void
B167:                               	; preds = %B166, %B173
  %t39 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t329
  %t175 = load i32, i32* %t39, align 4
  %t40 = icmp sgt i32 %t307, %t175
  br i1 %t40, label %B174, label %B178
B171:                               	; preds = %B166
  %t330 = add i32 1, 0
  %t320 = add i32 0, 0
  %t308 = add i32 %t30, 0
  br label %B168
B174:                               	; preds = %B167
  %t42 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t329
  %t179 = load i32, i32* %t42, align 4
  %t43 = icmp eq i32 %t179, 0
  br i1 %t43, label %B172, label %B182
B178:                               	; preds = %B167
  %t317 = add i32 %t319, 0
  %t305 = add i32 %t307, 0
  br label %B173
B168:                               	; preds = %B171, %B189
  %t54 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t320
  store i32 1, i32* %t54, align 4
  br label %B191
B172:                               	; preds = %B174
  %t47 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t329
  %t183 = load i32, i32* %t47, align 4
  %t317 = add i32 %t329, 0
  %t305 = add i32 %t183, 0
  br label %B173
B182:                               	; preds = %B174
  %t317 = add i32 %t319, 0
  %t305 = add i32 %t307, 0
  br label %B173
B173:                               	; preds = %B172, %B178, %B182
  %t52 = add i32 %t329, 1
  %t185 = load i32, i32* @n, align 4
  %t329 = add i32 %t52, 0
  %t319 = add i32 %t317, 0
  %t307 = add i32 %t305, 0
  %t186 = icmp sle i32 %t52, %t185
  br i1 %t186, label %B167, label %B189
B191:                               	; preds = %B168
  %t57 = load i32, i32* @n, align 4
  %t339 = add i32 1, 0
  %t58 = icmp sle i32 1, %t57
  br i1 %t58, label %B192, label %B196
B189:                               	; preds = %B173
  %t330 = add i32 %t52, 0
  %t320 = add i32 %t317, 0
  %t308 = add i32 %t305, 0
  br label %B168
B192:                               	; preds = %B191, %B198
  %t61 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t320
  %t199 = getelementptr inbounds [16 x i32], [16 x i32]* %t61, i32 0, i32 %t339
  %t200 = load i32, i32* %t199, align 4
  %t62 = load i32, i32* @INF, align 4
  %t63 = icmp slt i32 %t200, %t62
  br i1 %t63, label %B197, label %B203
B196:                               	; preds = %B191
  %t340 = add i32 1, 0
  br label %B193
B197:                               	; preds = %B192
  %t65 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t339
  %t206 = load i32, i32* %t65, align 4
  %t67 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t320
  %t207 = load i32, i32* %t67, align 4
  %t70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t320
  %t208 = getelementptr inbounds [16 x i32], [16 x i32]* %t70, i32 0, i32 %t339
  %t209 = load i32, i32* %t208, align 4
  %t71 = add i32 %t207, %t209
  %t72 = icmp sgt i32 %t206, %t71
  br i1 %t72, label %B204, label %B212
B203:                               	; preds = %B192
  br label %B198
B193:                               	; preds = %B196, %B221
  %t86 = add i32 %t293, 1
  %t223 = load i32, i32* @n, align 4
  %t224 = sub i32 %t223, 1
  %t342 = add i32 %t340, 0
  %t332 = add i32 %t330, 0
  %t322 = add i32 %t320, 0
  %t310 = add i32 %t308, 0
  %t293 = add i32 %t86, 0
  %t225 = icmp sle i32 %t86, %t224
  br i1 %t225, label %B158, label %B228
B204:                               	; preds = %B197
  %t76 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t320
  %t213 = load i32, i32* %t76, align 4
  %t79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t320
  %t214 = getelementptr inbounds [16 x i32], [16 x i32]* %t79, i32 0, i32 %t339
  %t215 = load i32, i32* %t214, align 4
  %t80 = add i32 %t213, %t215
  %t74 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t339
  store i32 %t80, i32* %t74, align 4
  br label %B205
B212:                               	; preds = %B197
  br label %B205
B198:                               	; preds = %B203, %B205
  %t83 = add i32 %t339, 1
  %t217 = load i32, i32* @n, align 4
  %t339 = add i32 %t83, 0
  %t218 = icmp sle i32 %t83, %t217
  br i1 %t218, label %B192, label %B221
B228:                               	; preds = %B193
  %t343 = add i32 %t340, 0
  %t333 = add i32 %t330, 0
  %t323 = add i32 %t320, 0
  %t311 = add i32 %t308, 0
  %t294 = add i32 %t86, 0
  br label %B159
B205:                               	; preds = %B204, %B212
  br label %B198
B221:                               	; preds = %B198
  %t340 = add i32 %t83, 0
  br label %B193
}
define i32 @main() {
B229:
  %t89 = call i32 @getint()
  store i32 %t89, i32* @n, align 4
  %t91 = call i32 @getint()
  store i32 %t91, i32* @m, align 4
  br label %B231
B231:                               	; preds = %B229
  %t94 = load i32, i32* @n, align 4
  %t372 = add i32 0, 0
  %t361 = add i32 1, 0
  %t95 = icmp sle i32 1, %t94
  br i1 %t95, label %B232, label %B236
B232:                               	; preds = %B231, %B240
  br label %B238
B236:                               	; preds = %B231
  %t371 = add i32 0, 0
  %t360 = add i32 1, 0
  br label %B233
B238:                               	; preds = %B232
  %t98 = load i32, i32* @n, align 4
  %t368 = add i32 1, 0
  %t99 = icmp sle i32 1, %t98
  br i1 %t99, label %B239, label %B243
B233:                               	; preds = %B236, %B263
  br label %B264
B239:                               	; preds = %B238, %B246
  %t102 = icmp eq i32 %t361, %t368
  br i1 %t102, label %B244, label %B249
B243:                               	; preds = %B238
  %t367 = add i32 1, 0
  br label %B240
B264:                               	; preds = %B233
  %t118 = load i32, i32* @m, align 4
  %t382 = add i32 0, 0
  %t377 = add i32 0, 0
  %t355 = add i32 1, 0
  %t119 = icmp sle i32 1, %t118
  br i1 %t119, label %B265, label %B269
B244:                               	; preds = %B239
  %t105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t361
  %t250 = getelementptr inbounds [16 x i32], [16 x i32]* %t105, i32 0, i32 %t368
  store i32 0, i32* %t250, align 4
  br label %B246
B249:                               	; preds = %B239
  br label %B245
B240:                               	; preds = %B243, %B257
  %t115 = add i32 %t361, 1
  %t259 = load i32, i32* @n, align 4
  %t372 = add i32 %t367, 0
  %t361 = add i32 %t115, 0
  %t260 = icmp sle i32 %t115, %t259
  br i1 %t260, label %B232, label %B263
B265:                               	; preds = %B264, %B418
  %t120 = call i32 @getint()
  %t122 = call i32 @getint()
  %t127 = call i32 @getint()
  %t126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t120
  %t272 = getelementptr inbounds [16 x i32], [16 x i32]* %t126, i32 0, i32 %t122
  store i32 %t127, i32* %t272, align 4
  %t130 = add i32 %t355, 1
  %t274 = load i32, i32* @m, align 4
  %t275 = icmp sle i32 %t130, %t274
  br i1 %t275, label %B418, label %B278
B269:                               	; preds = %B264
  %t383 = add i32 0, 0
  %t378 = add i32 0, 0
  %t356 = add i32 1, 0
  br label %B266
B246:                               	; preds = %B244, %B245
  %t112 = add i32 %t368, 1
  %t253 = load i32, i32* @n, align 4
  %t368 = add i32 %t112, 0
  %t254 = icmp sle i32 %t112, %t253
  br i1 %t254, label %B239, label %B257
B245:                               	; preds = %B249
  %t109 = load i32, i32* @INF, align 4
  %t108 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t361
  %t251 = getelementptr inbounds [16 x i32], [16 x i32]* %t108, i32 0, i32 %t368
  store i32 %t109, i32* %t251, align 4
  br label %B246
B263:                               	; preds = %B240
  %t371 = add i32 %t367, 0
  %t360 = add i32 %t115, 0
  br label %B233
B278:                               	; preds = %B265
  %t383 = add i32 %t122, 0
  %t378 = add i32 %t120, 0
  %t356 = add i32 %t130, 0
  br label %B266
B418:                               	; preds = %B265
  %t382 = add i32 %t122, 0
  %t377 = add i32 %t120, 0
  %t355 = add i32 %t130, 0
  br label %B265
B266:                               	; preds = %B269, %B278
  call void @Dijkstra()
  br label %B279
B257:                               	; preds = %B246
  %t367 = add i32 %t112, 0
  br label %B240
B279:                               	; preds = %B266
  %t133 = load i32, i32* @n, align 4
  %t349 = add i32 1, 0
  %t134 = icmp sle i32 1, %t133
  br i1 %t134, label %B280, label %B284
B280:                               	; preds = %B279, %B423
  %t136 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t349
  %t285 = load i32, i32* %t136, align 4
  call void @putint(i32 %t285)
  call void @putch(i32 32)
  %t139 = add i32 %t349, 1
  %t287 = load i32, i32* @n, align 4
  %t288 = icmp sle i32 %t139, %t287
  br i1 %t288, label %B423, label %B291
B284:                               	; preds = %B279
  %t350 = add i32 1, 0
  br label %B281
B291:                               	; preds = %B280
  %t350 = add i32 %t139, 0
  br label %B281
B423:                               	; preds = %B280
  %t349 = add i32 %t139, 0
  br label %B280
B281:                               	; preds = %B284, %B291
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
