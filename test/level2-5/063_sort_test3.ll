@n = global i32 0, align 4
define i32 @QuickSort(i32* %t1, i32 %t3, i32 %t5) {
B120:
  %t121 = alloca i32*, align 4
  %t122 = alloca i32, align 4
  %t123 = alloca i32, align 4
  store i32* %t1, i32** %t121, align 4
  store i32 %t3, i32* %t122, align 4
  store i32 %t5, i32* %t123, align 4
  %t7 = load i32, i32* %t122, align 4
  %t8 = load i32, i32* %t123, align 4
  %t9 = icmp slt i32 %t7, %t8
  br i1 %t9, label %B124, label %B128
B124:                               	; preds = %B120
  %t12 = load i32, i32* %t122, align 4
  %t15 = load i32, i32* %t123, align 4
  %t132 = load i32*, i32** %t121, align 4
  %t18 = load i32, i32* %t122, align 4
  %t19 = getelementptr inbounds i32, i32* %t132, i32 %t18
  %t133 = load i32, i32* %t19, align 4
  br label %B134
B128:                               	; preds = %B120
  %t277 = add i32 0, 0
  %t274 = add i32 0, 0
  %t264 = add i32 0, 0
  %t251 = add i32 0, 0
  br label %B125
B134:                               	; preds = %B124
  %t261 = add i32 %t15, 0
  %t248 = add i32 %t12, 0
  %t22 = icmp slt i32 %t12, %t15
  br i1 %t22, label %B135, label %B139
B125:                               	; preds = %B128, %B136
  ret i32 0
B135:                               	; preds = %B134, %B208
  br label %B140
B139:                               	; preds = %B134
  %t262 = add i32 %t15, 0
  %t249 = add i32 %t12, 0
  br label %B136
B140:                               	; preds = %B135
  %t269 = add i32 %t261, 0
  %t25 = icmp slt i32 %t248, %t261
  br i1 %t25, label %B161, label %B146
B136:                               	; preds = %B139, %B220
  %t221 = load i32*, i32** %t121, align 4
  %t67 = getelementptr inbounds i32, i32* %t221, i32 %t249
  store i32 %t133, i32* %t67, align 4
  %t72 = sub i32 %t249, 1
  %t223 = load i32*, i32** %t121, align 4
  %t75 = load i32, i32* %t122, align 4
  %t77 = call i32 @QuickSort(i32* %t223, i32 %t75, i32 %t72)
  %t80 = add i32 %t249, 1
  %t224 = load i32*, i32** %t121, align 4
  %t84 = load i32, i32* %t123, align 4
  %t85 = call i32 @QuickSort(i32* %t224, i32 %t80, i32 %t84)
  %t277 = add i32 %t85, 0
  %t274 = add i32 %t133, 0
  %t264 = add i32 %t262, 0
  %t251 = add i32 %t249, 0
  br label %B125
B161:                               	; preds = %B140, %B141
  %t165 = load i32*, i32** %t121, align 4
  %t156 = getelementptr inbounds i32, i32* %t165, i32 %t269
  %t166 = load i32, i32* %t156, align 4
  %t158 = sub i32 %t133, 1
  %t159 = icmp sgt i32 %t166, %t158
  br i1 %t159, label %B141, label %B169
B146:                               	; preds = %B140
  %t268 = add i32 %t261, 0
  br label %B142
B141:                               	; preds = %B161
  %t34 = sub i32 %t269, 1
  %t269 = add i32 %t34, 0
  %t154 = icmp slt i32 %t248, %t34
  br i1 %t154, label %B161, label %B164
B169:                               	; preds = %B161
  %t268 = add i32 %t269, 0
  br label %B142
B142:                               	; preds = %B146, %B164, %B169
  %t37 = icmp slt i32 %t248, %t268
  br i1 %t37, label %B170, label %B174
B164:                               	; preds = %B141
  %t268 = add i32 %t34, 0
  br label %B142
B170:                               	; preds = %B142
  %t175 = load i32*, i32** %t121, align 4
  %t41 = getelementptr inbounds i32, i32* %t175, i32 %t268
  %t176 = load i32, i32* %t41, align 4
  %t39 = getelementptr inbounds i32, i32* %t175, i32 %t248
  store i32 %t176, i32* %t39, align 4
  %t44 = add i32 %t248, 1
  %t255 = add i32 %t44, 0
  br label %B171
B174:                               	; preds = %B142
  %t255 = add i32 %t248, 0
  br label %B171
B171:                               	; preds = %B170, %B174
  br label %B178
B178:                               	; preds = %B171
  %t245 = add i32 %t255, 0
  %t47 = icmp slt i32 %t255, %t268
  br i1 %t47, label %B198, label %B184
B198:                               	; preds = %B178, %B179
  %t202 = load i32*, i32** %t121, align 4
  %t194 = getelementptr inbounds i32, i32* %t202, i32 %t245
  %t203 = load i32, i32* %t194, align 4
  %t196 = icmp slt i32 %t203, %t133
  br i1 %t196, label %B179, label %B206
B184:                               	; preds = %B178
  %t244 = add i32 %t255, 0
  br label %B180
B179:                               	; preds = %B198
  %t55 = add i32 %t245, 1
  %t245 = add i32 %t55, 0
  %t192 = icmp slt i32 %t55, %t268
  br i1 %t192, label %B198, label %B201
B206:                               	; preds = %B198
  %t244 = add i32 %t245, 0
  br label %B180
B180:                               	; preds = %B184, %B201, %B206
  %t58 = icmp slt i32 %t244, %t268
  br i1 %t58, label %B207, label %B211
B201:                               	; preds = %B179
  %t244 = add i32 %t55, 0
  br label %B180
B207:                               	; preds = %B180
  %t212 = load i32*, i32** %t121, align 4
  %t62 = getelementptr inbounds i32, i32* %t212, i32 %t244
  %t213 = load i32, i32* %t62, align 4
  %t60 = getelementptr inbounds i32, i32* %t212, i32 %t268
  store i32 %t213, i32* %t60, align 4
  %t65 = sub i32 %t268, 1
  %t259 = add i32 %t65, 0
  br label %B208
B211:                               	; preds = %B180
  %t259 = add i32 %t268, 0
  br label %B208
B208:                               	; preds = %B207, %B211
  %t261 = add i32 %t259, 0
  %t248 = add i32 %t244, 0
  %t217 = icmp slt i32 %t244, %t259
  br i1 %t217, label %B135, label %B220
B220:                               	; preds = %B208
  %t262 = add i32 %t259, 0
  %t249 = add i32 %t244, 0
  br label %B136
}
define i32 @main() {
B225:
  %t226 = alloca [10 x i32], align 4
  store i32 10, i32* @n, align 4
  %t88 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 0
  store i32 4, i32* %t88, align 4
  %t89 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 1
  store i32 3, i32* %t89, align 4
  %t90 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 2
  store i32 9, i32* %t90, align 4
  %t91 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 3
  store i32 2, i32* %t91, align 4
  %t92 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 4
  store i32 0, i32* %t92, align 4
  %t93 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 5
  store i32 1, i32* %t93, align 4
  %t94 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 6
  store i32 6, i32* %t94, align 4
  %t95 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 7
  store i32 5, i32* %t95, align 4
  %t96 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 8
  store i32 7, i32* %t96, align 4
  %t97 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 9
  store i32 8, i32* %t97, align 4
  %t106 = call i32 @QuickSort(i32* %t88, i32 0, i32 9)
  br label %B229
B229:                               	; preds = %B225
  %t108 = load i32, i32* @n, align 4
  %t292 = add i32 0, 0
  %t284 = add i32 %t106, 0
  %t109 = icmp slt i32 %t106, %t108
  br i1 %t109, label %B230, label %B234
B230:                               	; preds = %B229, %B312
  %t113 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 %t284
  %t236 = load i32, i32* %t113, align 4
  call void @putint(i32 %t236)
  call void @putch(i32 10)
  %t119 = add i32 %t284, 1
  %t238 = load i32, i32* @n, align 4
  %t239 = icmp slt i32 %t119, %t238
  br i1 %t239, label %B312, label %B242
B234:                               	; preds = %B229
  %t291 = add i32 0, 0
  %t283 = add i32 %t106, 0
  br label %B231
B242:                               	; preds = %B230
  %t291 = add i32 10, 0
  %t283 = add i32 %t119, 0
  br label %B231
B312:                               	; preds = %B230
  %t292 = add i32 10, 0
  %t284 = add i32 %t119, 0
  br label %B230
B231:                               	; preds = %B234, %B242
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
