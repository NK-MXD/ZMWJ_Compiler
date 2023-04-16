@N = global i32 10000, align 4
define i32 @long_array(i32 %t1) {
B136:
  %t137 = alloca i32, align 4
  %t138 = alloca [10000 x i32], align 4
  %t139 = alloca [10000 x i32], align 4
  %t140 = alloca [10000 x i32], align 4
  store i32 %t1, i32* %t137, align 4
  br label %B142
B142:                               	; preds = %B136
  %t11 = load i32, i32* @N, align 4
  %t274 = add i32 0, 0
  %t12 = icmp slt i32 0, %t11
  br i1 %t12, label %B143, label %B147
B143:                               	; preds = %B142, %B339
  %t17 = mul i32 %t274, %t274
  %t18 = srem i32 %t17, 10
  %t14 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t274
  store i32 %t18, i32* %t14, align 4
  %t21 = add i32 %t274, 1
  %t149 = load i32, i32* @N, align 4
  %t150 = icmp slt i32 %t21, %t149
  br i1 %t150, label %B339, label %B153
B147:                               	; preds = %B142
  %t275 = add i32 0, 0
  br label %B144
B153:                               	; preds = %B143
  %t275 = add i32 %t21, 0
  br label %B144
B339:                               	; preds = %B143
  %t274 = add i32 %t21, 0
  br label %B143
B144:                               	; preds = %B147, %B153
  br label %B154
B154:                               	; preds = %B144
  %t24 = load i32, i32* @N, align 4
  %t268 = add i32 0, 0
  %t25 = icmp slt i32 0, %t24
  br i1 %t25, label %B155, label %B159
B155:                               	; preds = %B154, %B342
  %t29 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t268
  %t160 = load i32, i32* %t29, align 4
  %t31 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t268
  %t161 = load i32, i32* %t31, align 4
  %t32 = mul i32 %t160, %t161
  %t33 = srem i32 %t32, 10
  %t27 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t268
  store i32 %t33, i32* %t27, align 4
  %t36 = add i32 %t268, 1
  %t163 = load i32, i32* @N, align 4
  %t164 = icmp slt i32 %t36, %t163
  br i1 %t164, label %B342, label %B167
B159:                               	; preds = %B154
  %t269 = add i32 0, 0
  br label %B156
B167:                               	; preds = %B155
  %t269 = add i32 %t36, 0
  br label %B156
B342:                               	; preds = %B155
  %t268 = add i32 %t36, 0
  br label %B155
B156:                               	; preds = %B159, %B167
  br label %B168
B168:                               	; preds = %B156
  %t39 = load i32, i32* @N, align 4
  %t262 = add i32 0, 0
  %t40 = icmp slt i32 0, %t39
  br i1 %t40, label %B169, label %B173
B169:                               	; preds = %B168, %B345
  %t44 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t262
  %t174 = load i32, i32* %t44, align 4
  %t46 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t262
  %t175 = load i32, i32* %t46, align 4
  %t47 = mul i32 %t174, %t175
  %t48 = srem i32 %t47, 100
  %t50 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t262
  %t176 = load i32, i32* %t50, align 4
  %t51 = add i32 %t48, %t176
  %t42 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t262
  store i32 %t51, i32* %t42, align 4
  %t54 = add i32 %t262, 1
  %t178 = load i32, i32* @N, align 4
  %t179 = icmp slt i32 %t54, %t178
  br i1 %t179, label %B345, label %B182
B173:                               	; preds = %B168
  %t263 = add i32 0, 0
  br label %B170
B182:                               	; preds = %B169
  %t263 = add i32 %t54, 0
  br label %B170
B345:                               	; preds = %B169
  %t262 = add i32 %t54, 0
  br label %B169
B170:                               	; preds = %B173, %B182
  br label %B184
B184:                               	; preds = %B170
  %t58 = load i32, i32* @N, align 4
  %t331 = add i32 0, 0
  %t313 = add i32 0, 0
  %t291 = add i32 0, 0
  %t256 = add i32 0, 0
  %t59 = icmp slt i32 0, %t58
  br i1 %t59, label %B185, label %B189
B185:                               	; preds = %B184, %B192
  %t61 = icmp slt i32 %t256, 10
  br i1 %t61, label %B190, label %B195
B189:                               	; preds = %B184
  %t332 = add i32 0, 0
  %t314 = add i32 0, 0
  %t292 = add i32 0, 0
  %t257 = add i32 0, 0
  br label %B186
B190:                               	; preds = %B185
  %t65 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t256
  %t196 = load i32, i32* %t65, align 4
  %t66 = add i32 %t291, %t196
  %t67 = srem i32 %t66, 1333
  call void @putint(i32 %t67)
  %t329 = add i32 %t331, 0
  %t311 = add i32 %t313, 0
  %t289 = add i32 %t67, 0
  br label %B192
B195:                               	; preds = %B185
  br label %B191
B186:                               	; preds = %B189, %B253
  ret i32 %t292
B192:                               	; preds = %B190, %B199
  %t133 = add i32 %t256, 1
  %t249 = load i32, i32* @N, align 4
  %t331 = add i32 %t329, 0
  %t313 = add i32 %t311, 0
  %t291 = add i32 %t289, 0
  %t256 = add i32 %t133, 0
  %t250 = icmp slt i32 %t133, %t249
  br i1 %t250, label %B185, label %B253
B191:                               	; preds = %B195
  %t70 = icmp slt i32 %t256, 20
  br i1 %t70, label %B197, label %B202
B253:                               	; preds = %B192
  %t332 = add i32 %t329, 0
  %t314 = add i32 %t311, 0
  %t292 = add i32 %t289, 0
  %t257 = add i32 %t133, 0
  br label %B186
B197:                               	; preds = %B191
  %t71 = load i32, i32* @N, align 4
  %t72 = sdiv i32 %t71, 2
  br label %B204
B202:                               	; preds = %B191
  br label %B198
B204:                               	; preds = %B197
  %t75 = load i32, i32* @N, align 4
  %t306 = add i32 %t72, 0
  %t299 = add i32 %t291, 0
  %t76 = icmp slt i32 %t72, %t75
  br i1 %t76, label %B205, label %B209
B198:                               	; preds = %B202
  %t90 = icmp slt i32 %t256, 30
  br i1 %t90, label %B218, label %B223
B205:                               	; preds = %B204, %B363
  %t80 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t256
  %t210 = load i32, i32* %t80, align 4
  %t81 = add i32 %t299, %t210
  %t83 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t306
  %t211 = load i32, i32* %t83, align 4
  %t84 = sub i32 %t81, %t211
  %t87 = add i32 %t306, 1
  %t213 = load i32, i32* @N, align 4
  %t214 = icmp slt i32 %t87, %t213
  br i1 %t214, label %B363, label %B217
B209:                               	; preds = %B204
  %t307 = add i32 %t72, 0
  %t300 = add i32 %t291, 0
  br label %B206
B218:                               	; preds = %B198
  %t91 = load i32, i32* @N, align 4
  %t92 = sdiv i32 %t91, 2
  br label %B225
B223:                               	; preds = %B198
  br label %B219
B217:                               	; preds = %B205
  %t307 = add i32 %t87, 0
  %t300 = add i32 %t84, 0
  br label %B206
B363:                               	; preds = %B205
  %t306 = add i32 %t87, 0
  %t299 = add i32 %t84, 0
  br label %B205
B206:                               	; preds = %B209, %B217
  call void @putint(i32 %t300)
  %t327 = add i32 %t331, 0
  %t309 = add i32 %t307, 0
  %t287 = add i32 %t300, 0
  br label %B199
B225:                               	; preds = %B218
  %t95 = load i32, i32* @N, align 4
  %t322 = add i32 %t92, 0
  %t282 = add i32 %t291, 0
  %t96 = icmp slt i32 %t92, %t95
  br i1 %t96, label %B226, label %B230
B219:                               	; preds = %B223
  %t126 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t256
  %t247 = load i32, i32* %t126, align 4
  %t127 = load i32, i32* %t137, align 4
  %t128 = mul i32 %t247, %t127
  %t129 = add i32 %t291, %t128
  %t130 = srem i32 %t129, 99988
  %t325 = add i32 %t331, 0
  %t285 = add i32 %t130, 0
  br label %B220
B199:                               	; preds = %B206, %B220
  %t329 = add i32 %t327, 0
  %t311 = add i32 %t309, 0
  %t289 = add i32 %t287, 0
  br label %B192
B226:                               	; preds = %B225, %B233
  %t98 = icmp sgt i32 %t322, 2233
  br i1 %t98, label %B231, label %B236
B230:                               	; preds = %B225
  %t323 = add i32 %t92, 0
  %t283 = add i32 %t291, 0
  br label %B227
B220:                               	; preds = %B219, %B227
  %t327 = add i32 %t325, 0
  %t309 = add i32 %t313, 0
  %t287 = add i32 %t285, 0
  br label %B199
B231:                               	; preds = %B226
  %t102 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t256
  %t237 = load i32, i32* %t102, align 4
  %t103 = add i32 %t282, %t237
  %t105 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t322
  %t238 = load i32, i32* %t105, align 4
  %t106 = sub i32 %t103, %t238
  %t109 = add i32 %t322, 1
  %t320 = add i32 %t109, 0
  %t280 = add i32 %t106, 0
  br label %B233
B236:                               	; preds = %B226
  br label %B232
B227:                               	; preds = %B230, %B246
  call void @putint(i32 %t283)
  %t325 = add i32 %t323, 0
  %t285 = add i32 %t283, 0
  br label %B220
B233:                               	; preds = %B231, %B232
  %t242 = load i32, i32* @N, align 4
  %t322 = add i32 %t320, 0
  %t282 = add i32 %t280, 0
  %t243 = icmp slt i32 %t320, %t242
  br i1 %t243, label %B226, label %B246
B232:                               	; preds = %B236
  %t113 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t256
  %t239 = load i32, i32* %t113, align 4
  %t114 = add i32 %t282, %t239
  %t116 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t322
  %t240 = load i32, i32* %t116, align 4
  %t117 = add i32 %t114, %t240
  %t118 = srem i32 %t117, 13333
  %t121 = add i32 %t322, 2
  %t320 = add i32 %t121, 0
  %t280 = add i32 %t118, 0
  br label %B233
B246:                               	; preds = %B233
  %t323 = add i32 %t320, 0
  %t283 = add i32 %t280, 0
  br label %B227
}
define i32 @main() {
B254:
  %t135 = call i32 @long_array(i32 9)
  ret i32 %t135
}
declare void @putint(i32)
