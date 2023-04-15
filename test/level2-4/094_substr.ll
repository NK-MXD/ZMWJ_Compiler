define i32 @MAX(i32 %t0, i32 %t2) {
B111:
  %t112 = alloca i32, align 4
  %t113 = alloca i32, align 4
  store i32 %t0, i32* %t112, align 4
  store i32 %t2, i32* %t113, align 4
  %t4 = load i32, i32* %t112, align 4
  %t5 = load i32, i32* %t113, align 4
  %t6 = icmp eq i32 %t4, %t5
  br i1 %t6, label %B114, label %B119
B114:                               	; preds = %B111
  %t7 = load i32, i32* %t112, align 4
  ret i32 %t7
B119:                               	; preds = %B111
  br label %B115
B115:                               	; preds = %B119
  %t8 = load i32, i32* %t112, align 4
  %t9 = load i32, i32* %t113, align 4
  %t10 = icmp sgt i32 %t8, %t9
  br i1 %t10, label %B120, label %B125
B120:                               	; preds = %B115
  %t11 = load i32, i32* %t112, align 4
  ret i32 %t11
B125:                               	; preds = %B115
  br label %B121
B121:                               	; preds = %B125
  %t12 = load i32, i32* %t113, align 4
  ret i32 %t12
}
define i32 @max_sum_nonadjacent(i32* %t13, i32 %t15) {
B126:
  %t127 = alloca i32*, align 4
  %t128 = alloca i32, align 4
  %t129 = alloca [16 x i32], align 4
  %t137 = alloca i32, align 4
  store i32* %t13, i32** %t127, align 4
  store i32 %t15, i32* %t128, align 4
  %t130 = bitcast [16 x i32]* %t129 to i8*
  call void @llvm.memset.p0.i32(i8* %t130, i8 0, i32 64, i1 0)
  %t131 = load i32*, i32** %t127, align 4
  %t19 = getelementptr inbounds i32, i32* %t131, i32 0
  %t132 = load i32, i32* %t19, align 4
  %t18 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 0
  store i32 %t132, i32* %t18, align 4
  %t133 = load i32*, i32** %t127, align 4
  %t21 = getelementptr inbounds i32, i32* %t133, i32 0
  %t134 = load i32, i32* %t21, align 4
  %t135 = load i32*, i32** %t127, align 4
  %t22 = getelementptr inbounds i32, i32* %t135, i32 1
  %t136 = load i32, i32* %t22, align 4
  %t23 = call i32 @MAX(i32 %t134, i32 %t136)
  %t20 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 1
  store i32 %t23, i32* %t20, align 4
  store i32 2, i32* %t137, align 4
  br label %B138
B138:                               	; preds = %B126
  %t25 = load i32, i32* %t137, align 4
  %t26 = load i32, i32* %t128, align 4
  %t27 = icmp slt i32 %t25, %t26
  br i1 %t27, label %B139, label %B143
B139:                               	; preds = %B138, %B139
  %t30 = load i32, i32* %t137, align 4
  %t31 = sub i32 %t30, 2
  %t32 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 %t31
  %t144 = load i32, i32* %t32, align 4
  %t145 = load i32*, i32** %t127, align 4
  %t33 = load i32, i32* %t137, align 4
  %t34 = getelementptr inbounds i32, i32* %t145, i32 %t33
  %t146 = load i32, i32* %t34, align 4
  %t35 = add i32 %t144, %t146
  %t36 = load i32, i32* %t137, align 4
  %t37 = sub i32 %t36, 1
  %t38 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 %t37
  %t147 = load i32, i32* %t38, align 4
  %t39 = call i32 @MAX(i32 %t35, i32 %t147)
  %t28 = load i32, i32* %t137, align 4
  %t29 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 %t28
  store i32 %t39, i32* %t29, align 4
  %t41 = load i32, i32* %t137, align 4
  %t42 = add i32 %t41, 1
  store i32 %t42, i32* %t137, align 4
  %t148 = load i32, i32* %t137, align 4
  %t149 = load i32, i32* %t128, align 4
  %t150 = icmp slt i32 %t148, %t149
  br i1 %t150, label %B139, label %B153
B143:                               	; preds = %B138
  br label %B140
B153:                               	; preds = %B139
  br label %B140
B140:                               	; preds = %B143, %B153
  %t43 = load i32, i32* %t128, align 4
  %t44 = sub i32 %t43, 1
  %t45 = getelementptr inbounds [16 x i32], [16 x i32]* %t129, i32 0, i32 %t44
  %t154 = load i32, i32* %t45, align 4
  ret i32 %t154
}
define i32 @longest_common_subseq(i32* %t46, i32 %t48, i32* %t50, i32 %t52) {
B155:
  %t156 = alloca i32*, align 4
  %t157 = alloca i32, align 4
  %t158 = alloca i32*, align 4
  %t159 = alloca i32, align 4
  %t160 = alloca [16 x [16 x i32]], align 4
  %t162 = alloca i32, align 4
  %t163 = alloca i32, align 4
  store i32* %t46, i32** %t156, align 4
  store i32 %t48, i32* %t157, align 4
  store i32* %t50, i32** %t158, align 4
  store i32 %t52, i32* %t159, align 4
  %t161 = bitcast [16 x [16 x i32]]* %t160 to i8*
  call void @llvm.memset.p0.i32(i8* %t161, i8 0, i32 1024, i1 0)
  store i32 1, i32* %t162, align 4
  br label %B164
B164:                               	; preds = %B155
  %t58 = load i32, i32* %t162, align 4
  %t59 = load i32, i32* %t157, align 4
  %t60 = icmp sle i32 %t58, %t59
  br i1 %t60, label %B165, label %B169
B165:                               	; preds = %B164, %B172
  store i32 1, i32* %t163, align 4
  br label %B170
B169:                               	; preds = %B164
  br label %B166
B170:                               	; preds = %B165
  %t62 = load i32, i32* %t163, align 4
  %t63 = load i32, i32* %t159, align 4
  %t64 = icmp sle i32 %t62, %t63
  br i1 %t64, label %B171, label %B175
B166:                               	; preds = %B169, %B205
  %t99 = load i32, i32* %t157, align 4
  %t101 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t99
  %t100 = load i32, i32* %t159, align 4
  %t206 = getelementptr inbounds [16 x i32], [16 x i32]* %t101, i32 0, i32 %t100
  %t207 = load i32, i32* %t206, align 4
  ret i32 %t207
B171:                               	; preds = %B170, %B178
  %t179 = load i32*, i32** %t156, align 4
  %t65 = load i32, i32* %t162, align 4
  %t66 = sub i32 %t65, 1
  %t67 = getelementptr inbounds i32, i32* %t179, i32 %t66
  %t180 = load i32, i32* %t67, align 4
  %t181 = load i32*, i32** %t158, align 4
  %t68 = load i32, i32* %t163, align 4
  %t69 = sub i32 %t68, 1
  %t70 = getelementptr inbounds i32, i32* %t181, i32 %t69
  %t182 = load i32, i32* %t70, align 4
  %t71 = icmp eq i32 %t180, %t182
  br i1 %t71, label %B176, label %B185
B175:                               	; preds = %B170
  br label %B172
B176:                               	; preds = %B171
  %t75 = load i32, i32* %t162, align 4
  %t76 = sub i32 %t75, 1
  %t79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t76
  %t77 = load i32, i32* %t163, align 4
  %t78 = sub i32 %t77, 1
  %t186 = getelementptr inbounds [16 x i32], [16 x i32]* %t79, i32 0, i32 %t78
  %t187 = load i32, i32* %t186, align 4
  %t80 = add i32 %t187, 1
  %t72 = load i32, i32* %t162, align 4
  %t74 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t72
  %t73 = load i32, i32* %t163, align 4
  %t188 = getelementptr inbounds [16 x i32], [16 x i32]* %t74, i32 0, i32 %t73
  store i32 %t80, i32* %t188, align 4
  br label %B178
B185:                               	; preds = %B171
  br label %B177
B172:                               	; preds = %B175, %B199
  %t97 = load i32, i32* %t162, align 4
  %t98 = add i32 %t97, 1
  store i32 %t98, i32* %t162, align 4
  %t200 = load i32, i32* %t162, align 4
  %t201 = load i32, i32* %t157, align 4
  %t202 = icmp sle i32 %t200, %t201
  br i1 %t202, label %B165, label %B205
B178:                               	; preds = %B176, %B177
  %t94 = load i32, i32* %t163, align 4
  %t95 = add i32 %t94, 1
  store i32 %t95, i32* %t163, align 4
  %t194 = load i32, i32* %t163, align 4
  %t195 = load i32, i32* %t159, align 4
  %t196 = icmp sle i32 %t194, %t195
  br i1 %t196, label %B171, label %B199
B177:                               	; preds = %B185
  %t84 = load i32, i32* %t162, align 4
  %t85 = sub i32 %t84, 1
  %t87 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t85
  %t86 = load i32, i32* %t163, align 4
  %t189 = getelementptr inbounds [16 x i32], [16 x i32]* %t87, i32 0, i32 %t86
  %t190 = load i32, i32* %t189, align 4
  %t88 = load i32, i32* %t162, align 4
  %t91 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t88
  %t89 = load i32, i32* %t163, align 4
  %t90 = sub i32 %t89, 1
  %t191 = getelementptr inbounds [16 x i32], [16 x i32]* %t91, i32 0, i32 %t90
  %t192 = load i32, i32* %t191, align 4
  %t92 = call i32 @MAX(i32 %t190, i32 %t192)
  %t81 = load i32, i32* %t162, align 4
  %t83 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %t160, i32 0, i32 %t81
  %t82 = load i32, i32* %t163, align 4
  %t193 = getelementptr inbounds [16 x i32], [16 x i32]* %t83, i32 0, i32 %t82
  store i32 %t92, i32* %t193, align 4
  br label %B178
B205:                               	; preds = %B172
  br label %B166
B199:                               	; preds = %B178
  br label %B172
}
define i32 @main() {
B208:
  %t209 = alloca [15 x i32], align 4
  %t225 = alloca [13 x i32], align 4
  %t239 = alloca i32, align 4
  %t240 = alloca i32, align 4
  %t210 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 0
  store i32 8, i32* %t210, align 4
  %t211 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 1
  store i32 7, i32* %t211, align 4
  %t212 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 2
  store i32 4, i32* %t212, align 4
  %t213 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 3
  store i32 1, i32* %t213, align 4
  %t214 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 4
  store i32 2, i32* %t214, align 4
  %t215 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 5
  store i32 7, i32* %t215, align 4
  %t216 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 6
  store i32 0, i32* %t216, align 4
  %t217 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 7
  store i32 1, i32* %t217, align 4
  %t218 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 8
  store i32 9, i32* %t218, align 4
  %t219 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 9
  store i32 3, i32* %t219, align 4
  %t220 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 10
  store i32 4, i32* %t220, align 4
  %t221 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 11
  store i32 8, i32* %t221, align 4
  %t222 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 12
  store i32 3, i32* %t222, align 4
  %t223 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 13
  store i32 7, i32* %t223, align 4
  %t224 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 14
  store i32 0, i32* %t224, align 4
  %t226 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 0
  store i32 3, i32* %t226, align 4
  %t227 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 1
  store i32 9, i32* %t227, align 4
  %t228 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 2
  store i32 7, i32* %t228, align 4
  %t229 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 3
  store i32 1, i32* %t229, align 4
  %t230 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 4
  store i32 4, i32* %t230, align 4
  %t231 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 5
  store i32 2, i32* %t231, align 4
  %t232 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 6
  store i32 4, i32* %t232, align 4
  %t233 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 7
  store i32 3, i32* %t233, align 4
  %t234 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 8
  store i32 6, i32* %t234, align 4
  %t235 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 9
  store i32 8, i32* %t235, align 4
  %t236 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 10
  store i32 0, i32* %t236, align 4
  %t237 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 11
  store i32 1, i32* %t237, align 4
  %t238 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 12
  store i32 5, i32* %t238, align 4
  %t106 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 0
  %t107 = call i32 @max_sum_nonadjacent(i32* %t106, i32 15)
  call void @putint(i32 %t107)
  call void @putch(i32 10)
  %t108 = getelementptr inbounds [15 x i32], [15 x i32]* %t209, i32 0, i32 0
  %t109 = getelementptr inbounds [13 x i32], [13 x i32]* %t225, i32 0, i32 0
  %t110 = call i32 @longest_common_subseq(i32* %t108, i32 15, i32* %t109, i32 13)
  call void @putint(i32 %t110)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
