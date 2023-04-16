@V = global [200 x [200 x i32]] zeroinitializer, align 4
define i32 @KnapSack(i32 %t1, i32* %t3, i32* %t5, i32* %t7, i32 %t9) {
B109:
  %t110 = alloca i32, align 4
  %t111 = alloca i32*, align 4
  %t112 = alloca i32*, align 4
  %t113 = alloca i32*, align 4
  %t114 = alloca i32, align 4
  store i32 %t1, i32* %t110, align 4
  store i32* %t3, i32** %t111, align 4
  store i32* %t5, i32** %t112, align 4
  store i32* %t7, i32** %t113, align 4
  store i32 %t9, i32* %t114, align 4
  br label %B117
B117:                               	; preds = %B109
  %t15 = load i32, i32* %t110, align 4
  %t264 = add i32 0, 0
  %t253 = add i32 0, 0
  %t240 = add i32 0, 0
  %t223 = add i32 1, 0
  %t16 = icmp sle i32 1, %t15
  br i1 %t16, label %B118, label %B122
B118:                               	; preds = %B117, %B125
  br label %B123
B122:                               	; preds = %B117
  %t265 = add i32 0, 0
  %t254 = add i32 0, 0
  %t241 = add i32 0, 0
  %t224 = add i32 1, 0
  br label %B119
B123:                               	; preds = %B118
  %t19 = load i32, i32* %t114, align 4
  %t20 = add i32 %t19, 1
  %t261 = add i32 %t264, 0
  %t250 = add i32 %t253, 0
  %t237 = add i32 0, 0
  %t21 = icmp slt i32 0, %t20
  br i1 %t21, label %B124, label %B128
B119:                               	; preds = %B122, %B170
  %t67 = load i32, i32* %t114, align 4
  %t69 = load i32, i32* %t110, align 4
  br label %B171
B124:                               	; preds = %B123, %B131
  %t132 = load i32*, i32** %t111, align 4
  %t24 = getelementptr inbounds i32, i32* %t132, i32 %t223
  %t133 = load i32, i32* %t24, align 4
  %t25 = icmp slt i32 %t237, %t133
  br i1 %t25, label %B129, label %B136
B128:                               	; preds = %B123
  %t262 = add i32 %t264, 0
  %t251 = add i32 %t253, 0
  %t238 = add i32 0, 0
  br label %B125
B171:                               	; preds = %B119
  %t232 = add i32 %t67, 0
  %t218 = add i32 %t69, 0
  %t71 = icmp sge i32 %t69, 1
  br i1 %t71, label %B172, label %B176
B129:                               	; preds = %B124
  %t30 = sub i32 %t223, 1
  %t32 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t30
  %t137 = getelementptr inbounds [200 x i32], [200 x i32]* %t32, i32 0, i32 %t237
  %t138 = load i32, i32* %t137, align 4
  %t28 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t223
  %t139 = getelementptr inbounds [200 x i32], [200 x i32]* %t28, i32 0, i32 %t237
  store i32 %t138, i32* %t139, align 4
  %t259 = add i32 %t261, 0
  %t248 = add i32 %t250, 0
  br label %B131
B136:                               	; preds = %B124
  br label %B130
B125:                               	; preds = %B128, %B164
  %t65 = add i32 %t223, 1
  %t166 = load i32, i32* %t110, align 4
  %t264 = add i32 %t262, 0
  %t253 = add i32 %t251, 0
  %t240 = add i32 %t238, 0
  %t223 = add i32 %t65, 0
  %t167 = icmp sle i32 %t65, %t166
  br i1 %t167, label %B118, label %B170
B172:                               	; preds = %B171, %B179
  %t74 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t218
  %t180 = getelementptr inbounds [200 x i32], [200 x i32]* %t74, i32 0, i32 %t232
  %t181 = load i32, i32* %t180, align 4
  %t76 = sub i32 %t218, 1
  %t78 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t76
  %t182 = getelementptr inbounds [200 x i32], [200 x i32]* %t78, i32 0, i32 %t232
  %t183 = load i32, i32* %t182, align 4
  %t79 = icmp sgt i32 %t181, %t183
  br i1 %t79, label %B177, label %B186
B176:                               	; preds = %B171
  %t233 = add i32 %t67, 0
  %t219 = add i32 %t69, 0
  br label %B173
B131:                               	; preds = %B129, %B152
  %t62 = add i32 %t237, 1
  %t159 = load i32, i32* %t114, align 4
  %t160 = add i32 %t159, 1
  %t261 = add i32 %t259, 0
  %t250 = add i32 %t248, 0
  %t237 = add i32 %t62, 0
  %t161 = icmp slt i32 %t62, %t160
  br i1 %t161, label %B124, label %B164
B130:                               	; preds = %B136
  %t34 = sub i32 %t223, 1
  %t36 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t34
  %t141 = getelementptr inbounds [200 x i32], [200 x i32]* %t36, i32 0, i32 %t237
  %t142 = load i32, i32* %t141, align 4
  %t145 = load i32*, i32** %t111, align 4
  %t42 = getelementptr inbounds i32, i32* %t145, i32 %t223
  %t146 = load i32, i32* %t42, align 4
  %t43 = sub i32 %t237, %t146
  %t144 = getelementptr inbounds [200 x i32], [200 x i32]* %t36, i32 0, i32 %t43
  %t147 = load i32, i32* %t144, align 4
  %t148 = load i32*, i32** %t112, align 4
  %t46 = getelementptr inbounds i32, i32* %t148, i32 %t223
  %t149 = load i32, i32* %t46, align 4
  %t47 = add i32 %t147, %t149
  %t51 = icmp sgt i32 %t142, %t47
  br i1 %t51, label %B150, label %B155
B170:                               	; preds = %B125
  %t265 = add i32 %t262, 0
  %t254 = add i32 %t251, 0
  %t241 = add i32 %t238, 0
  %t224 = add i32 %t65, 0
  br label %B119
B177:                               	; preds = %B172
  %t187 = load i32*, i32** %t113, align 4
  %t81 = getelementptr inbounds i32, i32* %t187, i32 %t218
  store i32 1, i32* %t81, align 4
  %t188 = load i32*, i32** %t111, align 4
  %t85 = getelementptr inbounds i32, i32* %t188, i32 %t218
  %t189 = load i32, i32* %t85, align 4
  %t86 = sub i32 %t232, %t189
  %t230 = add i32 %t86, 0
  br label %B179
B186:                               	; preds = %B172
  br label %B178
B173:                               	; preds = %B176, %B195
  %t92 = load i32, i32* %t110, align 4
  %t94 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t92
  %t93 = load i32, i32* %t114, align 4
  %t196 = getelementptr inbounds [200 x i32], [200 x i32]* %t94, i32 0, i32 %t93
  %t197 = load i32, i32* %t196, align 4
  ret i32 %t197
B164:                               	; preds = %B131
  %t262 = add i32 %t259, 0
  %t251 = add i32 %t248, 0
  %t238 = add i32 %t62, 0
  br label %B125
B150:                               	; preds = %B130
  %t54 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t223
  %t156 = getelementptr inbounds [200 x i32], [200 x i32]* %t54, i32 0, i32 %t237
  store i32 %t142, i32* %t156, align 4
  br label %B152
B155:                               	; preds = %B130
  br label %B151
B179:                               	; preds = %B177, %B178
  %t91 = sub i32 %t218, 1
  %t232 = add i32 %t230, 0
  %t218 = add i32 %t91, 0
  %t192 = icmp sge i32 %t91, 1
  br i1 %t192, label %B172, label %B195
B178:                               	; preds = %B186
  %t190 = load i32*, i32** %t113, align 4
  %t88 = getelementptr inbounds i32, i32* %t190, i32 %t218
  store i32 0, i32* %t88, align 4
  %t230 = add i32 %t232, 0
  br label %B179
B152:                               	; preds = %B150, %B151
  %t259 = add i32 %t47, 0
  %t248 = add i32 %t142, 0
  br label %B131
B151:                               	; preds = %B155
  %t58 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t223
  %t157 = getelementptr inbounds [200 x i32], [200 x i32]* %t58, i32 0, i32 %t237
  store i32 %t47, i32* %t157, align 4
  br label %B152
B195:                               	; preds = %B179
  %t233 = add i32 %t230, 0
  %t219 = add i32 %t91, 0
  br label %B173
}
define i32 @main() {
B198:
  %t200 = alloca [6 x i32], align 4
  %t207 = alloca [6 x i32], align 4
  %t214 = alloca [6 x i32], align 4
  %t201 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 0
  store i32 0, i32* %t201, align 4
  %t202 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 1
  store i32 2, i32* %t202, align 4
  %t203 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 2
  store i32 2, i32* %t203, align 4
  %t204 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 3
  store i32 6, i32* %t204, align 4
  %t205 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 4
  store i32 5, i32* %t205, align 4
  %t206 = getelementptr inbounds [6 x i32], [6 x i32]* %t200, i32 0, i32 5
  store i32 4, i32* %t206, align 4
  %t208 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 0
  store i32 0, i32* %t208, align 4
  %t209 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 1
  store i32 6, i32* %t209, align 4
  %t210 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 2
  store i32 3, i32* %t210, align 4
  %t211 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 3
  store i32 5, i32* %t211, align 4
  %t212 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 4
  store i32 4, i32* %t212, align 4
  %t213 = getelementptr inbounds [6 x i32], [6 x i32]* %t207, i32 0, i32 5
  store i32 6, i32* %t213, align 4
  %t105 = getelementptr inbounds [6 x i32], [6 x i32]* %t214, i32 0, i32 0
  %t107 = call i32 @KnapSack(i32 5, i32* %t201, i32* %t208, i32* %t105, i32 10)
  call void @putint(i32 %t107)
  ret i32 0
}
declare void @putint(i32)
