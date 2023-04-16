@buf = global [2 x [100 x i32]] zeroinitializer, align 4
define void @merge_sort(i32 %t1, i32 %t3) {
B95:
  %t96 = alloca i32, align 4
  %t97 = alloca i32, align 4
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
  %t14 = load i32, i32* %t96, align 4
  call void @merge_sort(i32 %t14, i32 %t12)
  %t17 = load i32, i32* %t97, align 4
  call void @merge_sort(i32 %t12, i32 %t17)
  %t18 = load i32, i32* %t96, align 4
  %t22 = load i32, i32* %t96, align 4
  br label %B107
B107:                               	; preds = %B99
  %t237 = add i32 %t22, 0
  %t221 = add i32 %t12, 0
  %t208 = add i32 %t18, 0
  %t26 = icmp slt i32 %t18, %t12
  br i1 %t26, label %B140, label %B113
B140:                               	; preds = %B107, %B119
  %t137 = load i32, i32* %t97, align 4
  %t138 = icmp slt i32 %t221, %t137
  br i1 %t138, label %B108, label %B146
B113:                               	; preds = %B107
  %t236 = add i32 %t22, 0
  %t220 = add i32 %t12, 0
  %t207 = add i32 %t18, 0
  br label %B109
B108:                               	; preds = %B140
  %t32 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t120 = getelementptr inbounds [100 x i32], [100 x i32]* %t32, i32 0, i32 %t208
  %t121 = load i32, i32* %t120, align 4
  %t122 = getelementptr inbounds [100 x i32], [100 x i32]* %t32, i32 0, i32 %t221
  %t123 = load i32, i32* %t122, align 4
  %t35 = icmp slt i32 %t121, %t123
  br i1 %t35, label %B117, label %B126
B146:                               	; preds = %B140
  %t236 = add i32 %t237, 0
  %t220 = add i32 %t221, 0
  %t207 = add i32 %t208, 0
  br label %B109
B109:                               	; preds = %B113, %B143, %B146
  br label %B147
B117:                               	; preds = %B108
  %t39 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t127 = getelementptr inbounds [100 x i32], [100 x i32]* %t39, i32 0, i32 %t208
  %t128 = load i32, i32* %t127, align 4
  %t37 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t129 = getelementptr inbounds [100 x i32], [100 x i32]* %t37, i32 0, i32 %t237
  store i32 %t128, i32* %t129, align 4
  %t42 = add i32 %t208, 1
  %t218 = add i32 %t221, 0
  %t205 = add i32 %t42, 0
  br label %B119
B126:                               	; preds = %B108
  br label %B118
B147:                               	; preds = %B109
  %t231 = add i32 %t236, 0
  %t200 = add i32 %t207, 0
  %t55 = icmp slt i32 %t207, %t12
  br i1 %t55, label %B148, label %B152
B119:                               	; preds = %B117, %B118
  %t52 = add i32 %t237, 1
  %t237 = add i32 %t52, 0
  %t221 = add i32 %t218, 0
  %t208 = add i32 %t205, 0
  %t135 = icmp slt i32 %t205, %t12
  br i1 %t135, label %B140, label %B143
B118:                               	; preds = %B126
  %t46 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t130 = getelementptr inbounds [100 x i32], [100 x i32]* %t46, i32 0, i32 %t221
  %t131 = load i32, i32* %t130, align 4
  %t44 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t132 = getelementptr inbounds [100 x i32], [100 x i32]* %t44, i32 0, i32 %t237
  store i32 %t131, i32* %t132, align 4
  %t49 = add i32 %t221, 1
  %t218 = add i32 %t49, 0
  %t205 = add i32 %t208, 0
  br label %B119
B148:                               	; preds = %B147, %B252
  %t59 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t153 = getelementptr inbounds [100 x i32], [100 x i32]* %t59, i32 0, i32 %t200
  %t154 = load i32, i32* %t153, align 4
  %t57 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t155 = getelementptr inbounds [100 x i32], [100 x i32]* %t57, i32 0, i32 %t231
  store i32 %t154, i32* %t155, align 4
  %t62 = add i32 %t200, 1
  %t65 = add i32 %t231, 1
  %t158 = icmp slt i32 %t62, %t12
  br i1 %t158, label %B252, label %B161
B152:                               	; preds = %B147
  %t232 = add i32 %t236, 0
  %t201 = add i32 %t207, 0
  br label %B149
B143:                               	; preds = %B119
  %t236 = add i32 %t52, 0
  %t220 = add i32 %t218, 0
  %t207 = add i32 %t205, 0
  br label %B109
B161:                               	; preds = %B148
  %t232 = add i32 %t65, 0
  %t201 = add i32 %t62, 0
  br label %B149
B252:                               	; preds = %B148
  %t231 = add i32 %t65, 0
  %t200 = add i32 %t62, 0
  br label %B148
B149:                               	; preds = %B152, %B161
  br label %B162
B162:                               	; preds = %B149
  %t67 = load i32, i32* %t97, align 4
  %t226 = add i32 %t232, 0
  %t213 = add i32 %t220, 0
  %t68 = icmp slt i32 %t220, %t67
  br i1 %t68, label %B163, label %B167
B163:                               	; preds = %B162, %B257
  %t72 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t168 = getelementptr inbounds [100 x i32], [100 x i32]* %t72, i32 0, i32 %t213
  %t169 = load i32, i32* %t168, align 4
  %t70 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1
  %t170 = getelementptr inbounds [100 x i32], [100 x i32]* %t70, i32 0, i32 %t226
  store i32 %t169, i32* %t170, align 4
  %t75 = add i32 %t213, 1
  %t78 = add i32 %t226, 1
  %t172 = load i32, i32* %t97, align 4
  %t173 = icmp slt i32 %t75, %t172
  br i1 %t173, label %B257, label %B176
B167:                               	; preds = %B162
  %t227 = add i32 %t232, 0
  %t214 = add i32 %t220, 0
  br label %B164
B176:                               	; preds = %B163
  %t227 = add i32 %t78, 0
  %t214 = add i32 %t75, 0
  br label %B164
B257:                               	; preds = %B163
  %t226 = add i32 %t78, 0
  %t213 = add i32 %t75, 0
  br label %B163
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
B191:                               	; preds = %B178
  br label %B179
B179:                               	; preds = %B182, %B191
  ret void
}
define i32 @main() {
B192:
  %t89 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %t195 = getelementptr inbounds [100 x i32], [100 x i32]* %t89, i32 0, i32 0
  %t90 = call i32 @getarray(i32* %t195)
  call void @merge_sort(i32 0, i32 %t90)
  call void @putarray(i32 %t90, i32* %t195)
  ret i32 0
}
declare i32 @getarray(i32*)
declare void @putarray(i32, i32*)
