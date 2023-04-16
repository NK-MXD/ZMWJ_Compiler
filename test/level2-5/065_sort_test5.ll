@n = global i32 0, align 4
define i32 @swap(i32* %t1, i32 %t3, i32 %t5) {
B143:
  %t144 = alloca i32*, align 4
  %t145 = alloca i32, align 4
  %t146 = alloca i32, align 4
  store i32* %t1, i32** %t144, align 4
  store i32 %t3, i32* %t145, align 4
  store i32 %t5, i32* %t146, align 4
  %t148 = load i32*, i32** %t144, align 4
  %t9 = load i32, i32* %t145, align 4
  %t10 = getelementptr inbounds i32, i32* %t148, i32 %t9
  %t149 = load i32, i32* %t10, align 4
  %t13 = load i32, i32* %t146, align 4
  %t14 = getelementptr inbounds i32, i32* %t148, i32 %t13
  %t151 = load i32, i32* %t14, align 4
  %t11 = load i32, i32* %t145, align 4
  %t12 = getelementptr inbounds i32, i32* %t148, i32 %t11
  store i32 %t151, i32* %t12, align 4
  %t15 = load i32, i32* %t146, align 4
  %t16 = getelementptr inbounds i32, i32* %t148, i32 %t15
  store i32 %t149, i32* %t16, align 4
  ret i32 0
}
define i32 @heap_ajust(i32* %t18, i32 %t20, i32 %t22) {
B154:
  %t155 = alloca i32*, align 4
  %t156 = alloca i32, align 4
  %t157 = alloca i32, align 4
  store i32* %t18, i32** %t155, align 4
  store i32 %t20, i32* %t156, align 4
  store i32 %t22, i32* %t157, align 4
  %t26 = load i32, i32* %t156, align 4
  %t30 = mul i32 %t26, 2
  %t31 = add i32 %t30, 1
  br label %B160
B160:                               	; preds = %B154
  %t33 = load i32, i32* %t157, align 4
  %t34 = add i32 %t33, 1
  %t255 = add i32 %t31, 0
  %t248 = add i32 %t26, 0
  %t35 = icmp slt i32 %t31, %t34
  br i1 %t35, label %B161, label %B165
B161:                               	; preds = %B160, %B181
  %t37 = load i32, i32* %t157, align 4
  %t38 = icmp slt i32 %t255, %t37
  br i1 %t38, label %B168, label %B171
B165:                               	; preds = %B160
  %t256 = add i32 %t31, 0
  %t249 = add i32 %t26, 0
  br label %B162
B168:                               	; preds = %B161
  %t172 = load i32*, i32** %t155, align 4
  %t40 = getelementptr inbounds i32, i32* %t172, i32 %t255
  %t173 = load i32, i32* %t40, align 4
  %t42 = add i32 %t255, 1
  %t43 = getelementptr inbounds i32, i32* %t172, i32 %t42
  %t175 = load i32, i32* %t43, align 4
  %t44 = icmp slt i32 %t173, %t175
  br i1 %t44, label %B166, label %B178
B171:                               	; preds = %B161
  %t260 = add i32 %t255, 0
  br label %B167
B162:                               	; preds = %B165, %B196
  ret i32 0
B166:                               	; preds = %B168
  %t48 = add i32 %t255, 1
  %t260 = add i32 %t48, 0
  br label %B167
B178:                               	; preds = %B168
  %t260 = add i32 %t255, 0
  br label %B167
B167:                               	; preds = %B166, %B171, %B178
  %t182 = load i32*, i32** %t155, align 4
  %t50 = getelementptr inbounds i32, i32* %t182, i32 %t248
  %t183 = load i32, i32* %t50, align 4
  %t52 = getelementptr inbounds i32, i32* %t182, i32 %t260
  %t185 = load i32, i32* %t52, align 4
  %t53 = icmp sgt i32 %t183, %t185
  br i1 %t53, label %B179, label %B188
B179:                               	; preds = %B167
  ret i32 0
B188:                               	; preds = %B167
  br label %B180
B180:                               	; preds = %B188
  %t189 = load i32*, i32** %t155, align 4
  %t58 = call i32 @swap(i32* %t189, i32 %t248, i32 %t260)
  %t63 = mul i32 %t260, 2
  %t64 = add i32 %t63, 1
  br label %B181
B181:                               	; preds = %B180
  %t191 = load i32, i32* %t157, align 4
  %t192 = add i32 %t191, 1
  %t255 = add i32 %t64, 0
  %t248 = add i32 %t260, 0
  %t193 = icmp slt i32 %t64, %t192
  br i1 %t193, label %B161, label %B196
B196:                               	; preds = %B181
  %t256 = add i32 %t64, 0
  %t249 = add i32 %t260, 0
  br label %B162
}
define i32 @heap_sort(i32* %t65, i32 %t67) {
B197:
  %t198 = alloca i32*, align 4
  %t199 = alloca i32, align 4
  store i32* %t65, i32** %t198, align 4
  store i32 %t67, i32* %t199, align 4
  %t72 = load i32, i32* %t199, align 4
  %t73 = sdiv i32 %t72, 2
  %t74 = sub i32 %t73, 1
  br label %B202
B202:                               	; preds = %B197
  %t76 = sub i32 0, 1
  %t284 = add i32 0, 0
  %t271 = add i32 %t74, 0
  %t77 = icmp sgt i32 %t74, %t76
  br i1 %t77, label %B203, label %B207
B203:                               	; preds = %B202, %B313
  %t79 = load i32, i32* %t199, align 4
  %t80 = sub i32 %t79, 1
  %t208 = load i32*, i32** %t198, align 4
  %t85 = call i32 @heap_ajust(i32* %t208, i32 %t271, i32 %t80)
  %t88 = sub i32 %t271, 1
  %t210 = sub i32 0, 1
  %t211 = icmp sgt i32 %t88, %t210
  br i1 %t211, label %B313, label %B214
B207:                               	; preds = %B202
  %t283 = add i32 0, 0
  %t270 = add i32 %t74, 0
  br label %B204
B214:                               	; preds = %B203
  %t283 = add i32 %t85, 0
  %t270 = add i32 %t88, 0
  br label %B204
B313:                               	; preds = %B203
  %t284 = add i32 %t85, 0
  %t271 = add i32 %t88, 0
  br label %B203
B204:                               	; preds = %B207, %B214
  %t90 = load i32, i32* %t199, align 4
  %t91 = sub i32 %t90, 1
  br label %B215
B215:                               	; preds = %B204
  %t289 = add i32 0, 0
  %t276 = add i32 %t283, 0
  %t264 = add i32 %t91, 0
  %t93 = icmp sgt i32 %t91, 0
  br i1 %t93, label %B216, label %B220
B216:                               	; preds = %B215, %B319
  %t222 = load i32*, i32** %t198, align 4
  %t100 = call i32 @swap(i32* %t222, i32 0, i32 %t264)
  %t103 = sub i32 %t264, 1
  %t223 = load i32*, i32** %t198, align 4
  %t108 = call i32 @heap_ajust(i32* %t223, i32 0, i32 %t103)
  %t225 = icmp sgt i32 %t103, 0
  br i1 %t225, label %B319, label %B228
B220:                               	; preds = %B215
  %t290 = add i32 0, 0
  %t277 = add i32 %t283, 0
  %t265 = add i32 %t91, 0
  br label %B217
B228:                               	; preds = %B216
  %t290 = add i32 0, 0
  %t277 = add i32 %t108, 0
  %t265 = add i32 %t103, 0
  br label %B217
B319:                               	; preds = %B216
  %t289 = add i32 0, 0
  %t276 = add i32 %t108, 0
  %t264 = add i32 %t103, 0
  br label %B216
B217:                               	; preds = %B220, %B228
  ret i32 0
}
define i32 @main() {
B229:
  %t230 = alloca [10 x i32], align 4
  store i32 10, i32* @n, align 4
  %t114 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 0
  store i32 4, i32* %t114, align 4
  %t115 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 1
  store i32 3, i32* %t115, align 4
  %t116 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 2
  store i32 9, i32* %t116, align 4
  %t117 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 3
  store i32 2, i32* %t117, align 4
  %t118 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 4
  store i32 0, i32* %t118, align 4
  %t119 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 5
  store i32 1, i32* %t119, align 4
  %t120 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 6
  store i32 6, i32* %t120, align 4
  %t121 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 7
  store i32 5, i32* %t121, align 4
  %t122 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 8
  store i32 7, i32* %t122, align 4
  %t123 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 9
  store i32 8, i32* %t123, align 4
  %t128 = load i32, i32* @n, align 4
  %t129 = call i32 @heap_sort(i32* %t114, i32 %t128)
  br label %B232
B232:                               	; preds = %B229
  %t131 = load i32, i32* @n, align 4
  %t302 = add i32 0, 0
  %t295 = add i32 %t129, 0
  %t132 = icmp slt i32 %t129, %t131
  br i1 %t132, label %B233, label %B237
B233:                               	; preds = %B232, %B325
  %t136 = getelementptr inbounds [10 x i32], [10 x i32]* %t230, i32 0, i32 %t295
  %t239 = load i32, i32* %t136, align 4
  call void @putint(i32 %t239)
  call void @putch(i32 10)
  %t142 = add i32 %t295, 1
  %t241 = load i32, i32* @n, align 4
  %t242 = icmp slt i32 %t142, %t241
  br i1 %t242, label %B325, label %B245
B237:                               	; preds = %B232
  %t301 = add i32 0, 0
  %t294 = add i32 %t129, 0
  br label %B234
B245:                               	; preds = %B233
  %t301 = add i32 10, 0
  %t294 = add i32 %t142, 0
  br label %B234
B325:                               	; preds = %B233
  %t302 = add i32 10, 0
  %t295 = add i32 %t142, 0
  br label %B233
B234:                               	; preds = %B237, %B245
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
