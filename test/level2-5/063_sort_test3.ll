@n = global i32 0, align 4
define i32 @QuickSort(i32* %t1, i32 %t3, i32 %t5) {
B120:
  %t121 = alloca i32*, align 4
  %t122 = alloca i32, align 4
  %t123 = alloca i32, align 4
  %t129 = alloca i32, align 4
  %t130 = alloca i32, align 4
  %t131 = alloca i32, align 4
  %t222 = alloca i32, align 4
  store i32* %t1, i32** %t121, align 4
  store i32 %t3, i32* %t122, align 4
  store i32 %t5, i32* %t123, align 4
  %t7 = load i32, i32* %t122, align 4
  %t8 = load i32, i32* %t123, align 4
  %t9 = icmp slt i32 %t7, %t8
  br i1 %t9, label %B124, label %B128
B124:                               	; preds = %B120
  %t12 = load i32, i32* %t122, align 4
  store i32 %t12, i32* %t129, align 4
  %t15 = load i32, i32* %t123, align 4
  store i32 %t15, i32* %t130, align 4
  %t132 = load i32*, i32** %t121, align 4
  %t18 = load i32, i32* %t122, align 4
  %t19 = getelementptr inbounds i32, i32* %t132, i32 %t18
  %t133 = load i32, i32* %t19, align 4
  store i32 %t133, i32* %t131, align 4
  br label %B134
B128:                               	; preds = %B120
  br label %B125
B134:                               	; preds = %B124
  %t20 = load i32, i32* %t129, align 4
  %t21 = load i32, i32* %t130, align 4
  %t22 = icmp slt i32 %t20, %t21
  br i1 %t22, label %B135, label %B139
B125:                               	; preds = %B128, %B136
  ret i32 0
B135:                               	; preds = %B134, %B208
  br label %B140
B139:                               	; preds = %B134
  br label %B136
B140:                               	; preds = %B135
  %t23 = load i32, i32* %t129, align 4
  %t24 = load i32, i32* %t130, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B161, label %B146
B136:                               	; preds = %B139, %B220
  %t68 = load i32, i32* %t131, align 4
  %t221 = load i32*, i32** %t121, align 4
  %t66 = load i32, i32* %t129, align 4
  %t67 = getelementptr inbounds i32, i32* %t221, i32 %t66
  store i32 %t68, i32* %t67, align 4
  %t71 = load i32, i32* %t129, align 4
  %t72 = sub i32 %t71, 1
  store i32 %t72, i32* %t222, align 4
  %t223 = load i32*, i32** %t121, align 4
  %t75 = load i32, i32* %t122, align 4
  %t76 = load i32, i32* %t222, align 4
  %t77 = call i32 @QuickSort(i32* %t223, i32 %t75, i32 %t76)
  store i32 %t77, i32* %t222, align 4
  %t79 = load i32, i32* %t129, align 4
  %t80 = add i32 %t79, 1
  store i32 %t80, i32* %t222, align 4
  %t224 = load i32*, i32** %t121, align 4
  %t83 = load i32, i32* %t222, align 4
  %t84 = load i32, i32* %t123, align 4
  %t85 = call i32 @QuickSort(i32* %t224, i32 %t83, i32 %t84)
  store i32 %t85, i32* %t222, align 4
  br label %B125
B161:                               	; preds = %B140, %B141
  %t165 = load i32*, i32** %t121, align 4
  %t155 = load i32, i32* %t130, align 4
  %t156 = getelementptr inbounds i32, i32* %t165, i32 %t155
  %t166 = load i32, i32* %t156, align 4
  %t157 = load i32, i32* %t131, align 4
  %t158 = sub i32 %t157, 1
  %t159 = icmp sgt i32 %t166, %t158
  br i1 %t159, label %B141, label %B169
B146:                               	; preds = %B140
  br label %B142
B141:                               	; preds = %B161
  %t33 = load i32, i32* %t130, align 4
  %t34 = sub i32 %t33, 1
  store i32 %t34, i32* %t130, align 4
  %t152 = load i32, i32* %t129, align 4
  %t153 = load i32, i32* %t130, align 4
  %t154 = icmp slt i32 %t152, %t153
  br i1 %t154, label %B161, label %B164
B169:                               	; preds = %B161
  br label %B142
B142:                               	; preds = %B146, %B164, %B169
  %t35 = load i32, i32* %t129, align 4
  %t36 = load i32, i32* %t130, align 4
  %t37 = icmp slt i32 %t35, %t36
  br i1 %t37, label %B170, label %B174
B164:                               	; preds = %B141
  br label %B142
B170:                               	; preds = %B142
  %t175 = load i32*, i32** %t121, align 4
  %t40 = load i32, i32* %t130, align 4
  %t41 = getelementptr inbounds i32, i32* %t175, i32 %t40
  %t176 = load i32, i32* %t41, align 4
  %t177 = load i32*, i32** %t121, align 4
  %t38 = load i32, i32* %t129, align 4
  %t39 = getelementptr inbounds i32, i32* %t177, i32 %t38
  store i32 %t176, i32* %t39, align 4
  %t43 = load i32, i32* %t129, align 4
  %t44 = add i32 %t43, 1
  store i32 %t44, i32* %t129, align 4
  br label %B171
B174:                               	; preds = %B142
  br label %B171
B171:                               	; preds = %B170, %B174
  br label %B178
B178:                               	; preds = %B171
  %t45 = load i32, i32* %t129, align 4
  %t46 = load i32, i32* %t130, align 4
  %t47 = icmp slt i32 %t45, %t46
  br i1 %t47, label %B198, label %B184
B198:                               	; preds = %B178, %B179
  %t202 = load i32*, i32** %t121, align 4
  %t193 = load i32, i32* %t129, align 4
  %t194 = getelementptr inbounds i32, i32* %t202, i32 %t193
  %t203 = load i32, i32* %t194, align 4
  %t195 = load i32, i32* %t131, align 4
  %t196 = icmp slt i32 %t203, %t195
  br i1 %t196, label %B179, label %B206
B184:                               	; preds = %B178
  br label %B180
B179:                               	; preds = %B198
  %t54 = load i32, i32* %t129, align 4
  %t55 = add i32 %t54, 1
  store i32 %t55, i32* %t129, align 4
  %t190 = load i32, i32* %t129, align 4
  %t191 = load i32, i32* %t130, align 4
  %t192 = icmp slt i32 %t190, %t191
  br i1 %t192, label %B198, label %B201
B206:                               	; preds = %B198
  br label %B180
B180:                               	; preds = %B184, %B201, %B206
  %t56 = load i32, i32* %t129, align 4
  %t57 = load i32, i32* %t130, align 4
  %t58 = icmp slt i32 %t56, %t57
  br i1 %t58, label %B207, label %B211
B201:                               	; preds = %B179
  br label %B180
B207:                               	; preds = %B180
  %t212 = load i32*, i32** %t121, align 4
  %t61 = load i32, i32* %t129, align 4
  %t62 = getelementptr inbounds i32, i32* %t212, i32 %t61
  %t213 = load i32, i32* %t62, align 4
  %t214 = load i32*, i32** %t121, align 4
  %t59 = load i32, i32* %t130, align 4
  %t60 = getelementptr inbounds i32, i32* %t214, i32 %t59
  store i32 %t213, i32* %t60, align 4
  %t64 = load i32, i32* %t130, align 4
  %t65 = sub i32 %t64, 1
  store i32 %t65, i32* %t130, align 4
  br label %B208
B211:                               	; preds = %B180
  br label %B208
B208:                               	; preds = %B207, %B211
  %t215 = load i32, i32* %t129, align 4
  %t216 = load i32, i32* %t130, align 4
  %t217 = icmp slt i32 %t215, %t216
  br i1 %t217, label %B135, label %B220
B220:                               	; preds = %B208
  br label %B136
}
define i32 @main() {
B225:
  %t226 = alloca [10 x i32], align 4
  %t227 = alloca i32, align 4
  %t228 = alloca i32, align 4
  %t235 = alloca i32, align 4
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
  store i32 0, i32* %t227, align 4
  store i32 9, i32* %t228, align 4
  %t103 = getelementptr inbounds [10 x i32], [10 x i32]* %t226, i32 0, i32 0
  %t104 = load i32, i32* %t227, align 4
  %t105 = load i32, i32* %t228, align 4
  %t106 = call i32 @QuickSort(i32* %t103, i32 %t104, i32 %t105)
  store i3