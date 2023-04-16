define i32 @canJump(i32* %t0, i32 %t2) {
B82:
  %t83 = alloca i32*, align 4
  %t84 = alloca i32, align 4
  %t97 = alloca [10 x i32], align 4
  store i32* %t0, i32** %t83, align 4
  store i32 %t2, i32* %t84, align 4
  %t4 = load i32, i32* %t84, align 4
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %B85, label %B89
B85:                               	; preds = %B82
  ret i32 1
B89:                               	; preds = %B82
  br label %B86
B86:                               	; preds = %B89
  %t92 = load i32*, i32** %t83, align 4
  %t6 = getelementptr inbounds i32, i32* %t92, i32 0
  %t93 = load i32, i32* %t6, align 4
  %t7 = load i32, i32* %t84, align 4
  %t8 = sub i32 %t7, 2
  %t9 = icmp sgt i32 %t93, %t8
  br i1 %t9, label %B90, label %B96
B90:                               	; preds = %B86
  ret i32 1
B96:                               	; preds = %B86
  br label %B91
B91:                               	; preds = %B96
  br label %B99
B99:                               	; preds = %B91
  %t14 = load i32, i32* %t84, align 4
  %t15 = sub i32 %t14, 1
  %t164 = add i32 0, 0
  %t16 = icmp slt i32 0, %t15
  br i1 %t16, label %B100, label %B104
B100:                               	; preds = %B99, %B185
  %t18 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t164
  store i32 0, i32* %t18, align 4
  %t21 = add i32 %t164, 1
  %t106 = load i32, i32* %t84, align 4
  %t107 = sub i32 %t106, 1
  %t108 = icmp slt i32 %t21, %t107
  br i1 %t108, label %B185, label %B111
B104:                               	; preds = %B99
  %t165 = add i32 0, 0
  br label %B101
B111:                               	; preds = %B100
  %t165 = add i32 %t21, 0
  br label %B101
B185:                               	; preds = %B100
  %t164 = add i32 %t21, 0
  br label %B100
B101:                               	; preds = %B104, %B111
  %t22 = load i32, i32* %t84, align 4
  %t23 = sub i32 %t22, 1
  %t24 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t23
  store i32 1, i32* %t24, align 4
  %t26 = load i32, i32* %t84, align 4
  %t27 = sub i32 %t26, 2
  br label %B112
B112:                               	; preds = %B101
  %t29 = sub i32 0, 1
  %t173 = add i32 0, 0
  %t158 = add i32 %t27, 0
  %t30 = icmp sgt i32 %t27, %t29
  br i1 %t30, label %B113, label %B117
B113:                               	; preds = %B112, %B131
  %t122 = load i32*, i32** %t83, align 4
  %t33 = getelementptr inbounds i32, i32* %t122, i32 %t158
  %t123 = load i32, i32* %t33, align 4
  %t34 = load i32, i32* %t84, align 4
  %t35 = sub i32 %t34, 1
  %t37 = sub i32 %t35, %t158
  %t38 = icmp slt i32 %t123, %t37
  br i1 %t38, label %B119, label %B126
B117:                               	; preds = %B112
  %t174 = add i32 0, 0
  %t159 = add i32 %t27, 0
  br label %B114
B119:                               	; preds = %B113
  %t127 = load i32*, i32** %t83, align 4
  %t41 = getelementptr inbounds i32, i32* %t127, i32 %t158
  %t128 = load i32, i32* %t41, align 4
  %t179 = add i32 %t128, 0
  br label %B121
B126:                               	; preds = %B113
  br label %B120
B114:                               	; preds = %B117, %B152
  %t63 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 0
  %t153 = load i32, i32* %t63, align 4
  ret i32 %t153
B121:                               	; preds = %B119, %B120
  br label %B129
B120:                               	; preds = %B126
  %t43 = load i32, i32* %t84, align 4
  %t44 = sub i32 %t43, 1
  %t46 = sub i32 %t44, %t158
  %t179 = add i32 %t46, 0
  br label %B121
B129:                               	; preds = %B121
  %t48 = sub i32 0, 1
  %t170 = add i32 %t179, 0
  %t49 = icmp sgt i32 %t179, %t48
  br i1 %t49, label %B130, label %B134
B130:                               	; preds = %B129, %B136
  %t52 = add i32 %t158, %t170
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t52
  %t137 = load i32, i32* %t53, align 4
  %t54 = icmp ne i32 %t137, 0
  br i1 %t54, label %B135, label %B140
B134:                               	; preds = %B129
  %t171 = add i32 %t179, 0
  br label %B131
B135:                               	; preds = %B130
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t158
  store i32 1, i32* %t56, align 4
  br label %B136
B140:                               	; preds = %B130
  br label %B136
B131:                               	; preds = %B134, %B146
  %t62 = sub i32 %t158, 1
  %t148 = sub i32 0, 1
  %t173 = add i32 %t171, 0
  %t158 = add i32 %t62, 0
  %t149 = icmp sgt i32 %t62, %t148
  br i1 %t149, label %B113, label %B152
B136:                               	; preds = %B135, %B140
  %t59 = sub i32 %t170, 1
  %t142 = sub i32 0, 1
  %t170 = add i32 %t59, 0
  %t143 = icmp sgt i32 %t59, %t142
  br i1 %t143, label %B130, label %B146
B152:                               	; preds = %B131
  %t174 = add i32 %t171, 0
  %t159 = add i32 %t62, 0
  br label %B114
B146:                               	; preds = %B136
  %t171 = add i32 %t59, 0
  br label %B131
}
define i32 @main() {
B154:
  %t156 = alloca [10 x i32], align 4
  %t66 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 0
  store i32 3, i32* %t66, align 4
  %t67 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 1
  store i32 3, i32* %t67, align 4
  %t68 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 2
  store i32 9, i32* %t68, align 4
  %t69 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 3
  store i32 0, i32* %t69, align 4
  %t70 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 4
  store i32 0, i32* %t70, align 4
  %t71 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 5
  store i32 1, i32* %t71, align 4
  %t72 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 6
  store i32 1, i32* %t72, align 4
  %t73 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 7
  store i32 5, i32* %t73, align 4
  %t74 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 8
  store i32 7, i32* %t74, align 4
  %t75 = getelementptr inbounds [10 x i32], [10 x i32]* %t156, i32 0, i32 9
  store i32 8, i32* %t75, align 4
  %t80 = call i32 @canJump(i32* %t66, i32 10)
  ret i32 %t80
}
