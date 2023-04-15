@buf = global [2 x [100 x i32]] zeroinitializer, align 4
define void @merge_sort(i32 %t1, i32 %t3) {
B95:
  %t96 = alloca i32, align 4
  %t97 = alloca i32, align 4
  %t103 = alloca i32, align 4
  %t104 = alloca i32, align 4
  %t105 = alloca i32, align 4
  %t106 = alloca i32, align 4
  store i32 %t1, i32* %t96, align 4
  store i32 %t3, i32* %t97, align 4
  %t5 = load i32, i32* %t96, align 4
  %t6 = add i32 %t5, 1
  %t7 = load i32, i32* %t97, align 4
  %t8 = icmp sge i32 %t6, %t7
  br i1 %t8, label %B98, label %B102
B98:                               	; preds = %B95
  ret void
B102:                               	; preds = %B95
  br label %B99
B99:                               	; preds = %B102
  %t9 = load i32, i32* %t96, align 4
  %t10 = load i32, i32* %t97, align 4
  %t11 = add i32 %t9, %t10
  %t12 = sdiv i32 %t11, 2
  store i32 %t12, i32* %t103, align 4
  %t14 = load i32, i32* %t96, align 4
  %t15 = load i32, i32* %t103, align 4
  call void @merge_sort(i32 %t14, i32 %t15)
  %t16 = load i32, i32* %t103, align 4
  %t17 = load i32, i32* %t97, align 4
  call void @merge_sort(i32 %t16, i32 %t17)
  %t18 = load i32, i32* %t96, align 4
  store i32 %t18, i32* %t104, align 4
  %t20 = load i32, i32* %t103, align 4
  store i32 %t20, i32* %t105, align 4
  %t22 = load i32, i32* %t96, align 4
  store i32 %t22, i32* %t106, align 4
  br label %B107
B107:                               	; preds = %B99
  %t24 = load i32, i32* %t104, align 4
  %t25 = load i32, i32* %t103, align 4
  %t26 = icmp slt i32 %t24, %t25
  br i1 %t26, label %B140, label %B113
B140:                               	; preds = %B107, %B119
  %t136 = load i32, i32* %t105, align 4
  %t137 = load i32, i32* %t97, align 4
  %t138 = icmp slt i32 %t136, %t137
  br i1 %t138, label %B108, label %B146
B113:                               	; preds = %B107
  br label %B109
B108:                               	; preds = %B140
  %t32 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t31 = load i32, i32* %t104, align 4
  %t120 = getelementptr inbounds [100 x i32], [100 x i32]* %t32, i32 0, i32 %t31
  %t121 = load i32, i32* %t120, align 4
  %t34 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t33 = load i32, i32* %t105, align 4
  %t122 = getelementptr inbounds [100 x i32], [100 x i32]* %t34, i32 0, i32 %t33
  %t123 = load i32, i32* %t122, align 4
  %t35 = icmp slt i32 %t121, %t123
  br i1 %t35, label %B117, label %B126
B146:                               	; preds = %B140
  br label %B109
B109:                               	; preds = %B113, %B143, %B146
  br label %B147
B117:                               	; preds = %B108
  %t39 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t38 = load i32, i32* %t104, align 4
  %t127 = getelementptr inbounds [100 x i32], [100 x i32]* %t39, i32 0, i32 %t38
  %t128 = load i32, i32* %t127, align 4
  %t37 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t36 = load i32, i32* %t106, align 4
  %t129 = getelementptr inbounds [100 x i32], [100 x i32]* %t37, i32 0, i32 %t36
  store i32 %t128, i32* %t129, align 4
  %t41 = load i32, i32* %t104, align 4
  %t42 = add i32 %t41, 1
  store i32 %t42, i32* %t104, align 4
  br label %B119
B126:                               	; preds = %B108
  br label %B118
B147:                               	; preds = %B109
  %t53 = load i32, i32* %t104, align 4
  %t54 = load i32, i32* %t103, align 4
  %t55 = icmp slt i32 %t53, %t54
  br i1 %t55, label %B148, label %B152
B119:                               	; preds = %B117, %B118
  %t51 = load i32, i32* %t106, align 4
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* %t106, align 4
  %t133 = load i32, i32* %t104, align 4
  %t134 = load i32, i32* %t103, align 4
  %t135 = icmp slt i32 %t133, %t134
  br i1 %t135, label %B140, label %B143
B118:                               	; preds = %B126
  %t46 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t45 = load i32, i32* %t105, align 4
  %t130 = getelementptr inbounds [100 x i32], [100 x i32]* %t46, i32 0, i32 %t45
  %t131 = load i32, i32* %t130, align 4
  %t44 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t43 = load i32, i32* %t106, align 4
  %t132 = getelementptr inbounds [100 x i32], [100 x i32]* %t44, i32 0, i32 %t43
  store i32 %t131, i32* %t132, align 4
  %t48 = load i32, i32* %t105, align 4
  %t49 = add i32 %t48, 1
  store i32 %t49, i32* %t105, align 4
  br label %B119
B148:                               	; preds = %B147, %B148
  %t59 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t58 = load i32, i32* %t104, align 4
  %t153 = getelementptr inbounds [100 x i32], [100 x i32]* %t59, i32 0, i32 %t58
  %t154 = load i32, i32* %t153, align 4
  %t57 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t56 = load i32, i32* %t106, align 4
  %t155 = getelementptr inbounds [100 x i32], [100 x i32]* %t57, i32 0, i32 %t56
  store i32 %t154, i32* %t155, align 4
  %t61 = load i32, i32* %t104, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* %t104, align 4
  %t64 = load i32, i32* %t106, align 4
  %t65 = add i32 %t64, 1
  store i32 %t65, i32* %t106, align 4
  %t156 = load i32, i32* %t104, align 4
  %t157 = load i32, i32* %t103, align 4
  %t158 = icmp slt i32 %t156, %t157
  br i1 %t158, label %B148, label %B161
B152:                               	; preds = %B147
  br label %B149
B143:                               	; preds = %B119
  br label %B109
B161:                               	; preds = %B148
  br label %B149
B149:                               	; preds = %B152, %B161
  br label %B162
B162:                               	; preds = %B149
  %t66 = load i32, i32* %t105, align 4
  %t67 = load i32, i32* %t97, align 4
  %t68 = icmp slt i32 %t66, %t67
  br i1 %t68, label %B163, label %B167
B163:                               	; preds = %B162, %B163
  %t72 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t71 = load i32, i32* %t105, align 4
  %t168 = getelementptr inbounds [100 x i32], [100 x i32]* %t72, i32 0, i32 %t71
  %t169 = load i32, i32* %t168, align 4
  %t70 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t69 = load i32, i32* %t106, align 4
  %t170 = getelementptr inbounds [100 x i32], [100 x i32]* %t70, i32 0, i32 %t69
  store i32 %t169, i32* %t170, align 4
  %t74 = load i32, i32* %t105, align 4
  %t75 = add i32 %t74, 1
  store i32 %t75, i32* %t105, align 4
  %t77 = load i32, i32* %t106, align 4
  %t78 = add i32 %t77, 1
  store i32 %t78, i32* %t106, align 4
  %t171 = load i32, i32* %t105, align 4
  %t172 = load i32, i32* %t97, align 4
  %t173 = icmp slt i32 %t171, %t172
  br i1 %t173, label %B163, label %B176
B167:                               	; preds = %B162
  br label %B164
B176:                               	; preds = %B163
  br label %B164
B164:                               	; preds = %B167, %B176
  br label %B177
B177:                               	; preds = %B164
  %t79 = load i32, i32* %t96, align 4
  %t80 = load i32, i32* %t97, align 4
  %t81 = icmp slt i32 %t79, %t80
  br i1 %t81, label %B178, label %B182
B178:                               	; preds = %B177, %B178
  %t85 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t84 = load i32, i32* %t96, align 4
  %t183 = getelementptr inbounds [100 x i32], [100 x i32]* %t85, i32 0, i32 %t84
  %t184 = load i32, i32* %t183, align 4
  %t83 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t82 = load i32, i32* %t96, align 4
  %t185 = getelementptr inbounds [100 x i32], [100 x i32]* %t83, i32 0, i32 %t82
  store i32 %t184, i32* %t185, align 4
  %t87 = load i32, i32* %t96, align 4
  %t88 = add i32 %t87, 1
  store i32 %t88, i32* %t96, align 4
  %t186 = load i32, i32* %t96, align 4
  %t187 = load i32, i32* %t97, align 4
  %t188 = icmp slt i32 %t186, %t187
  br i1 %t188, label %B178, label %B191
B182:                               	; preds = %B177
  br label %B179
B191:                 