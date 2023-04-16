@map = global [10 x [10 x i32]] zeroinitializer, align 4
@indegree = global [10 x i32] zeroinitializer, align 4
@queue = global [10 x i32] zeroinitializer, align 4
define void @topo(i32 %t3) {
B88:
  %t89 = alloca i32, align 4
  store i32 %t3, i32* %t89, align 4
  br label %B94
B94:                               	; preds = %B88
  %t12 = load i32, i32* %t89, align 4
  %t217 = add i32 1, 0
  %t207 = add i32 1, 0
  %t196 = add i32 0, 0
  %t190 = add i32 0, 0
  %t13 = icmp sle i32 1, %t12
  br i1 %t13, label %B95, label %B99
B95:                               	; preds = %B94, %B121
  br label %B100
B99:                               	; preds = %B94
  %t218 = add i32 1, 0
  %t208 = add i32 1, 0
  %t197 = add i32 0, 0
  %t191 = add i32 0, 0
  br label %B96
B100:                               	; preds = %B95
  %t16 = load i32, i32* %t89, align 4
  %t223 = add i32 1, 0
  %t17 = icmp sle i32 1, %t16
  br i1 %t17, label %B101, label %B105
B96:                               	; preds = %B99, %B144
  br label %B145
B101:                               	; preds = %B100, %B107
  %t19 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t223
  %t108 = load i32, i32* %t19, align 4
  %t20 = icmp eq i32 %t108, 0
  br i1 %t20, label %B106, label %B111
B105:                               	; preds = %B100
  %t224 = add i32 1, 0
  %t188 = add i32 %t190, 0
  br label %B102
B145:                               	; preds = %B96
  %t56 = load i32, i32* %t89, align 4
  %t202 = add i32 0, 0
  %t57 = icmp slt i32 0, %t56
  br i1 %t57, label %B146, label %B150
B106:                               	; preds = %B101
  %t224 = add i32 %t223, 0
  %t188 = add i32 %t223, 0
  br label %B102
B111:                               	; preds = %B101
  br label %B107
B102:                               	; preds = %B105, %B106, %B118
  %t27 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t196
  store i32 %t188, i32* %t27, align 4
  %t31 = add i32 %t196, 1
  %t34 = sub i32 0, 1
  %t33 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t188
  store i32 %t34, i32* %t33, align 4
  br label %B119
B146:                               	; preds = %B145, %B261
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t202
  %t151 = load i32, i32* %t59, align 4
  call void @putint(i32 %t151)
  call void @putch(i32 10)
  %t62 = add i32 %t202, 1
  %t153 = load i32, i32* %t89, align 4
  %t154 = icmp slt i32 %t62, %t153
  br i1 %t154, label %B261, label %B157
B150:                               	; preds = %B145
  %t203 = add i32 0, 0
  br label %B147
B107:                               	; preds = %B111
  %t25 = add i32 %t223, 1
  %t114 = load i32, i32* %t89, align 4
  %t223 = add i32 %t25, 0
  %t115 = icmp sle i32 %t25, %t114
  br i1 %t115, label %B101, label %B118
B119:                               	; preds = %B102
  %t37 = load i32, i32* %t89, align 4
  %t214 = add i32 1, 0
  %t38 = icmp sle i32 1, %t37
  br i1 %t38, label %B120, label %B124
B157:                               	; preds = %B146
  %t203 = add i32 %t62, 0
  br label %B147
B261:                               	; preds = %B146
  %t202 = add i32 %t62, 0
  br label %B146
B147:                               	; preds = %B150, %B157
  ret void
B118:                               	; preds = %B107
  %t224 = add i32 %t25, 0
  %t188 = add i32 %t190, 0
  br label %B102
B120:                               	; preds = %B119, %B126
  %t41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t188
  %t127 = getelementptr inbounds [10 x i32], [10 x i32]* %t41, i32 0, i32 %t214
  %t128 = load i32, i32* %t127, align 4
  %t47 = icmp ne i32 %t128, 0
  br i1 %t47, label %B125, label %B130
B124:                               	; preds = %B119
  %t215 = add i32 1, 0
  br label %B121
B125:                               	; preds = %B120
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t214
  %t132 = load i32, i32* %t45, align 4
  %t46 = sub i32 %t132, 1
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t214
  store i32 %t46, i32* %t43, align 4
  br label %B126
B130:                               	; preds = %B120
  br label %B126
B121:                               	; preds = %B124, %B138
  %t53 = add i32 %t207, 1
  %t140 = load i32, i32* %t89, align 4
  %t217 = add i32 %t215, 0
  %t207 = add i32 %t53, 0
  %t196 = add i32 %t31, 0
  %t190 = add i32 %t188, 0
  %t141 = icmp sle i32 %t53, %t140
  br i1 %t141, label %B95, label %B144
B126:                               	; preds = %B125, %B130
  %t50 = add i32 %t214, 1
  %t134 = load i32, i32* %t89, align 4
  %t214 = add i32 %t50, 0
  %t135 = icmp sle i32 %t50, %t134
  br i1 %t135, label %B120, label %B138
B144:                               	; preds = %B121
  %t218 = add i32 %t215, 0
  %t208 = add i32 %t53, 0
  %t197 = add i32 %t31, 0
  %t191 = add i32 %t188, 0
  br label %B96
B138:                               	; preds = %B126
  %t215 = add i32 %t50, 0
  br label %B121
}
define i32 @main() {
B158:
  br label %B162
B162:                               	; preds = %B158
  %t243 = add i32 1, 0
  %t237 = add i32 0, 0
  %t69 = icmp sle i32 1, 5
  br i1 %t69, label %B163, label %B167
B163:                               	; preds = %B162, %B170
  %t71 = call i32 @getint()
  br label %B168
B167:                               	; preds = %B162
  %t242 = add i32 1, 0
  %t236 = add i32 0, 0
  br label %B164
B168:                               	; preds = %B163
  %t233 = add i32 %t71, 0
  %t73 = icmp ne i32 %t71, 0
  br i1 %t73, label %B169, label %B173
B164:                               	; preds = %B167, %B186
  call void @topo(i32 5)
  ret i32 0
B169:                               	; preds = %B168, %B268
  %t76 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t243
  %t174 = getelementptr inbounds [10 x i32], [10 x i32]* %t76, i32 0, i32 %t233
  store i32 1, i32* %t174, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t233
  %t175 = load i32, i32* %t80, align 4
  %t81 = add i32 %t175, 1
  %t78 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t233
  store i32 %t81, i32* %t78, align 4
  %t83 = call i32 @getint()
  %t177 = icmp ne i32 %t83, 0
  br i1 %t177, label %B268, label %B180
B173:                               	; preds = %B168
  %t232 = add i32 %t71, 0
  br label %B170
B180:                               	; preds = %B169
  %t232 = add i32 %t83, 0
  br label %B170
B268:                               	; preds = %B169
  %t233 = add i32 %t83, 0
  br label %B169
B170:                               	; preds = %B173, %B180
  %t86 = add i32 %t243, 1
  %t243 = add i32 %t86, 0
  %t237 = add i32 %t232, 0
  %t183 = icmp sle i32 %t86, 5
  br i1 %t183, label %B163, label %B186
B186:                               	; preds = %B170
  %t242 = add i32 %t86, 0
  %t236 = add i32 %t232, 0
  br label %B164
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
