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
  %t141 = alloca i32, align 4
  %t142 = alloca i32, align 4
  %t163 = alloca i32, align 4
  %t164 = alloca i32, align 4
  %t165 = alloca i32, align 4
  %t190 = alloca i32, align 4
  store i32 1, i32* %t141, align 4
  br label %B143
B143:                               	; preds = %B140
  %t12 = load i32, i32* %t141, align 4
  %t13 = load i32, i32* @n, align 4
  %t14 = icmp sle i32 %t12, %t13
  br i1 %t14, label %B144, label %B148
B144:                               	; preds = %B143, %B144
  %t18 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 1
  %t17 = load i32, i32* %t141, align 4
  %t149 = getelementptr inbounds [16 x i32], [16 x i32]* %t18, i32 0, i32 %t17
  %t150 = load i32, i32* %t149, align 4
  %t15 = load i32, i32* %t141, align 4
  %t16 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t15
  store i32 %t150, i32* %t16, align 4
  %t19 = load i32, i32* %t141, align 4
  %t20 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t19
  store i32 0, i32* %t20, align 4
  %t22 = load i32, i32* %t141, align 4
  %t23 = add i32 %t22, 1
  store i32 %t23, i32* %t141, align 4
  %t151 = load i32, i32* %t141, align 4
  %t152 = load i32, i32* @n, align 4
  %t153 = icmp sle i32 %t151, %t152
  br i1 %t153, label %B144, label %B156
B148:                               	; preds = %B143
  br label %B145
B156:                               	; preds = %B144
  br label %B145
B145:                               	; preds = %B148, %B156
  %t24 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 1
  store i32 1, i32* %t24, align 4
  store i32 1, i32* %t141, align 4
  br label %B157
B157:                               	; preds = %B145
  %t26 = load i32, i32* %t141, align 4
  %t27 = load i32, i32* @n, align 4
  %t28 = sub i32 %t27, 1
  %t29 = icmp sle i32 %t26, %t28
  br i1 %t29, label %B158, label %B162
B158:                               	; preds = %B157, %B193
  %t30 = load i32, i32* @INF, align 4
  store i32 %t30, i32* %t163, align 4
  store i32 0, i32* %t164, align 4
  store i32 1, i32* %t165, align 4
  br label %B166
B162:                               	; preds = %B157
  br label %B159
B166:                               	; preds = %B158
  %t34 = load i32, i32* %t165, align 4
  %t35 = load i32, i32* @n, align 4
  %t36 = icmp sle i32 %t34, %t35
  br i1 %t36, label %B167, label %B171
B159:                               	; preds = %B162, %B228
  ret void
B167:                               	; preds = %B166, %B173
  %t37 = load i32, i32* %t163, align 4
  %t38 = load i32, i32* %t165, align 4
  %t39 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t38
  %t175 = load i32, i32* %t39, align 4
  %t40 = icmp sgt i32 %t37, %t175
  br i1 %t40, label %B174, label %B178
B171:                               	; preds = %B166
  br label %B168
B174:                               	; preds = %B167
  %t41 = load i32, i32* %t165, align 4
  %t42 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t41
  %t179 = load i32, i32* %t42, align 4
  %t43 = icmp eq i32 %t179, 0
  br i1 %t43, label %B172, label %B182
B178:                               	; preds = %B167
  br label %B173
B168:                               	; preds = %B171, %B189
  %t53 = load i32, i32* %t164, align 4
  %t54 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t53
  store i32 1, i32* %t54, align 4
  store i32 1, i32* %t190, align 4
  br label %B191
B172:                               	; preds = %B174
  %t46 = load i32, i32* %t165, align 4
  %t47 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t46
  %t183 = load i32, i32* %t47, align 4
  store i32 %t183, i32* %t163, align 4
  %t49 = load i32, i32* %t165, align 4
  store i32 %t49, i32* %t164, align 4
  br label %B173
B182:                               	; preds = %B174
  br label %B173
B173:                               	; preds = %B172, %B178, %B182
  %t51 = load i32, i32* %t165, align 4
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* %t165, align 4
  %t184 = load i32, i32* %t165, align 4
  %t185 = load i32, i32* @n, align 4
  %t186 = icmp sle i32 %t184, %t185
  br i1 %t186, label %B167, label %B189
B191:                               	; preds = %B168
  %t56 = load i32, i32* %t190, align 4
  %t57 = load i32, i32* @n, align 4
  %t58 = icmp sle i32 %t56, %t57
  br i1 %t58, label %B192, label %B196
B189:                               	; preds = %B173
  br label %B168
B192:                               	; preds = %B191, %B198
  %t59 = load i32, i32* %t164, align 4
  %t61 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t59
  %t60 = load i32, i32* %t190, align 4
  %t199 = getelementptr inbounds [16 x i32], [16 x i32]* %t61, i32 0, i32 %t60
  %t200 = load i32, i32* %t199, align 4
  %t62 = load i32, i32* @INF, align 4
  %t63 = icmp slt i32 %t200, %t62
  br i1 %t63, label %B197, label %B203
B196:                               	; preds = %B191
  br label %B193
B197:                               	; preds = %B192
  %t64 = load i32, i32* %t190, align 4
  %t65 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t64
  %t206 = load i32, i32* %t65, align 4
  %t66 = load i32, i32* %t164, align 4
  %t67 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t66
  %t207 = load i32, i32* %t67, align 4
  %t68 = load i32, i32* %t164, align 4
  %t70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t68
  %t69 = load i32, i32* %t190, align 4
  %t208 = getelementptr inbounds [16 x i32], [16 x i32]* %t70, i32 0, i32 %t69
  %t209 = load i32, i32* %t208, align 4
  %t71 = add i32 %t207, %t209
  %t72 = icmp sgt i32 %t206, %t71
  br i1 %t72, label %B204, label %B212
B203:                               	; preds = %B192
  br label %B198
B193:                               	; preds = %B196, %B221
  %t85 = load i32, i32* %t141, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t141, align 4
  %t222 = load i32, i32* %t141, align 4
  %t223 = load i32, i32* @n, align 4
  %t224 = sub i32 %t223, 1
  %t225 = icmp sle i32 %t222, %t224
  br i1 %t225, label %B158, label %B228
B204:                               	; preds = %B197
  %t75 = load i32, i32* %t164, align 4
  %t76 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t75
  %t213 = load i32, i32* %t76, align 4
  %t77 = load i32, i32* %t164, align 4
  %t79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t77
  %t78 = load i32, i32* %t190, align 4
  %t214 = getelementptr inbounds [16 x i32], [16 x i32]* %t79, i32 0, i32 %t78
  %t215 = load i32, i32* %t214, align 4
  %t80 = add i32 %t213, %t215
  %t73 = load i32, i32* %t190, align 4
  %t74 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t73
  store i32 %t80, i32* %t74, align 4
  br label %B205
B212:                               	; preds = %B197
  br label %B205
B198:                               	; preds = %B203, %B205
  %t82 = load i32, i32* %t190, align 4
  %t83 = add i32 %t82, 1
  store i32 %t83, i32* %t190, align 4
  %t216 = load i32, i32* %t190, align 4
  %t217 = load i32, i32* @n, align 4
  %t218 = icmp sle i32 %t216, %t217
  br i1 %t218, label %B192, label %B221
B228:                               	; preds = %B193
  br label %B159
B205:                               	; preds = %B204, %B212
  br label %B198
B221:                               	; preds = %B198
  br label %B193
}
define i32 @main() {
B229:
  %t230 = alloca i32, align 4
  %t237 = alloca i32, align 4
  %t270 = alloca i32, align 4
  %t271 = alloca i32, align 4
  %t89 = call i32 @getint()
  store i32 %t89, i32* @n, align 4
  %t91 = call i32 @getint()
  store i32 %t91, i32* @m, align 4
  store i32 1, i32* %t230, align 4
  br label %B231
B231:                               	; preds = %B229
  %t93 = load i32, i32* %t230, align 4
  %t94 = load i32, i32* @n, align 4
  %t95 = icmp sle i32 %t93, %t94
  br i1 %t95, label %B232, label %B236
B232:                               	; preds = %B231, %B240
  store i32 1, i32* %t237, align 4
  br label %B238
B236:                               	; preds = %B231
  br label %B233
B238:                               	; preds = %B232
  %t97 = load i32, i32* %t237, align 4
  %t98 = load i32, i32* @n, align 4
  %t99 = icmp sle i32 %t97, %t98
  br i1 %t99, label %B239, label %B243
B233:                               	; preds = %B236, %B263
  store i32 1, i32* %t230, align 4
  br label %B264
B239:                               	; preds = %B238, %B246
  %t100 = load i32, i32* %t230, align 4
  %t101 = load i32, i32* %t237, align 4
  %t102 = icmp eq i32 %t100, %t101
  br i1 %t102, label %B244, label %B249
B243:                               	; preds = %B238
  br label %B240
B264:                               	; preds = %B233
  %t117 = load i32, i32* %t230, align 4
  %t118 = load i32, i32* @m, align 4
  %t119 = icmp sle i32 %t117, %t118
  br i1 %t119, label %B265, label %B269
B244:                               	; preds = %B239
  %t103 = load i32, i32* %t230, align 4
  %t105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t103
  %t104 = load i32, i32* %t237, align 4
  %t250 = getelementptr inbounds [16 x i32], [16 x i32]* %t105, i32 0, i32 %t104
  store i32 0, i32* %t250, align 4
  br label %B246
B249:                               	; preds = %B239
  br label %B245
B240:                               	; preds = %B243, %B257
  %t114 = load i32, i32* %t230, align 4
  %t115 = add i32 %t114, 1
  store i32 %t115, i32* %t230, align 4
  %t258 = load i32, i32* %t230, align 4
  %t259 = load i32, i32* @n, align 4
  %t260 = icmp sle i32 %t258, %t259
  br i1 %t260, label %B232, label %B263
B265:                               	; preds = %B264, %B265
  %t120 = call i32 @getint()
  store i32 %t120, i32* %t270, align 4
  %t122 = call i32 @getint()
  store i32 %t122, i32* %t271, align 4
  %t127 = call i32 @getint()
  %t124 = load i32, i32* %t270, align 4
  %t126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t124
  %t125 = load i32, i32* %t271, align 4
  %t272 = getelementptr inbounds [16 x i32], [16 x i32]* %t126, i32 0, i32 %t125
  store i32 %t127, i32* %t272, align 4
  %t129 = load i32, i32* %t230, align 4
  %t130 = add i32 %t129, 1
  store i32 %t130, i32* %t230, align 4
  %t273 = load i32, i32* %t230, align 4
  %t274 = load i32, i32* @m, align 4
  %t275 = icmp sle i32 %t273, %t274
  br i1 %t275, label %B265, label %B278
B269:                               	; preds = %B264
  br label %B266
B246:                               	; preds = %B244, %B245
  %t111 = load i32, i32* %t237, align 4
  %t112 = add i32 %t111, 1
  store i32 %t112, i32* %t237, align 4
  %t252 = load i32, i32* %t237, align 4
  %t253 = load i32, i32* @n, align 4
  %t254 = icmp sle i32 %t252, %t253
  br i1 %t254, label %B239, label %B257
B245:                               	; preds = %B249
  %t109 = load i32, i32* @INF, align 4
  %t106 = load i32, i32* %t230, align 4
  %t108 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t106
  %t107 = load i32, i32* %t237, align 4
  %t251 = getelementptr inbounds [16 x i32], [16 x i32]* %t108, i32 0, i32 %t107
  store i32 %t109, i32* %t251, align 4
  br label %B246
B263:                               	; preds = %B240
  br label %B233
B278:                               	; preds = %B265
  br label %B266
B266:                               	; preds = %B269, %B278
  call void @Dijkstra()
  store i32 1, i32* %t230, align 4
  br label %B279
B257:                               	; preds = %B246
  br label %B240
B279:                               	; preds = %B266
  %t132 = load i32, i32* %t230, align 4
  %t133 = load i32, i32* @n, align 4
  %t134 = icmp sle i32 %t132, %t133
  br i1 %t134, label %B280, label %B284
B280:                               	; preds = %B279, %B280
  %t135 = load i32, i32* %t230, align 4
  %t136 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t135
  %t285 = load i32, i32* %t136, align 4
  call void @putint(i32 %t285)
  call void @putch(i32 32)
  %t138 = load i32, i32* %t230, align 4
  %t139 = add i32 %t138, 1
  store i32 %t139, i32* %t230, align 4
  %t286 = load i32, i32* %t230, align 4
  %t287 = load i32, i32* @n, align 4
  %t288 = icmp sle i32 %t286, %t287
  br i1 %t288, label %B280, label %B291
B284:                               	; preds = %B279
  br label %B281
B291:                               	; preds = %B280
  br label %B281
B281:                               	; preds = %B284, %B291
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
