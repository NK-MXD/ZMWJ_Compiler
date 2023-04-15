@map = global [10 x [10 x i32]] zeroinitializer, align 4
@indegree = global [10 x i32] zeroinitializer, align 4
@queue = global [10 x i32] zeroinitializer, align 4
define void @topo(i32 %t3) {
B88:
  %t89 = alloca i32, align 4
  %t90 = alloca i32, align 4
  %t91 = alloca i32, align 4
  %t92 = alloca i32, align 4
  %t93 = alloca i32, align 4
  store i32 %t3, i32* %t89, align 4
  store i32 0, i32* %t90, align 4
  store i32 0, i32* %t91, align 4
  store i32 1, i32* %t92, align 4
  store i32 1, i32* %t93, align 4
  br label %B94
B94:                               	; preds = %B88
  %t11 = load i32, i32* %t92, align 4
  %t12 = load i32, i32* %t89, align 4
  %t13 = icmp sle i32 %t11, %t12
  br i1 %t13, label %B95, label %B99
B95:                               	; preds = %B94, %B121
  store i32 1, i32* %t93, align 4
  br label %B100
B99:                               	; preds = %B94
  br label %B96
B100:                               	; preds = %B95
  %t15 = load i32, i32* %t93, align 4
  %t16 = load i32, i32* %t89, align 4
  %t17 = icmp sle i32 %t15, %t16
  br i1 %t17, label %B101, label %B105
B96:                               	; preds = %B99, %B144
  store i32 0, i32* %t92, align 4
  br label %B145
B101:                               	; preds = %B100, %B107
  %t18 = load i32, i32* %t93, align 4
  %t19 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t18
  %t108 = load i32, i32* %t19, align 4
  %t20 = icmp eq i32 %t108, 0
  br i1 %t20, label %B106, label %B111
B105:                               	; preds = %B100
  br label %B102
B145:                               	; preds = %B96
  %t55 = load i32, i32* %t92, align 4
  %t56 = load i32, i32* %t89, align 4
  %t57 = icmp slt i32 %t55, %t56
  br i1 %t57, label %B146, label %B150
B106:                               	; preds = %B101
  %t22 = load i32, i32* %t93, align 4
  store i32 %t22, i32* %t90, align 4
  br label %B102
B111:                               	; preds = %B101
  br label %B107
B102:                               	; preds = %B105, %B106, %B118
  %t28 = load i32, i32* %t90, align 4
  %t26 = load i32, i32* %t91, align 4
  %t27 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t26
  store i32 %t28, i32* %t27, align 4
  %t30 = load i32, i32* %t91, align 4
  %t31 = add i32 %t30, 1
  store i32 %t31, i32* %t91, align 4
  %t34 = sub i32 0, 1
  %t32 = load i32, i32* %t90, align 4
  %t33 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t32
  store i32 %t34, i32* %t33, align 4
  store i32 1, i32* %t93, align 4
  br label %B119
B146:                               	; preds = %B145, %B146
  %t58 = load i32, i32* %t92, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t58
  %t151 = load i32, i32* %t59, align 4
  call void @putint(i32 %t151)
  call void @putch(i32 10)
  %t61 = load i32, i32* %t92, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* %t92, align 4
  %t152 = load i32, i32* %t92, align 4
  %t153 = load i32, i32* %t89, align 4
  %t154 = icmp slt i32 %t152, %t153
  br i1 %t154, label %B146, label %B157
B150:                               	; preds = %B145
  br label %B147
B107:                               	; preds = %B111
  %t24 = load i32, i32* %t93, align 4
  %t25 = add i32 %t24, 1
  store i32 %t25, i32* %t93, align 4
  %t113 = load i32, i32* %t93, align 4
  %t114 = load i32, i32* %t89, align 4
  %t115 = icmp sle i32 %t113, %t114
  br i1 %t115, label %B101, label %B118
B119:                               	; preds = %B102
  %t36 = load i32, i32* %t93, align 4
  %t37 = load i32, i32* %t89, align 4
  %t38 = icmp sle i32 %t36, %t37
  br i1 %t38, label %B120, label %B124
B157:                               	; preds = %B146
  br label %B147
B147:                               	; preds = %B150, %B157
  ret void
B118:                               	; preds = %B107
  br label %B102
B120:                               	; preds = %B119, %B126
  %t39 = load i32, i32* %t90, align 4
  %t41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t39
  %t40 = load i32, i32* %t93, align 4
  %t127 = getelementptr inbounds [10 x i32], [10 x i32]* %t41, i32 0, i32 %t40
  %t128 = load i32, i32* %t127, align 4
  %t47 = icmp ne i32 %t128, 0
  br i1 %t47, label %B125, label %B130
B124:                               	; preds = %B119
  br label %B121
B125:                               	; preds = %B120
  %t44 = load i32, i32* %t93, align 4
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t44
  %t132 = load i32, i32* %t45, align 4
  %t46 = sub i32 %t132, 1
  %t42 = load i32, i32* %t93, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t42
  store i32 %t46, i32* %t43, align 4
  br label %B126
B130:                               	; preds = %B120
  br label %B126
B121:                               	; preds = %B124, %B138
  %t52 = load i32, i32* %t92, align 4
  %t53 = add i32 %t52, 1
  store i32 %t53, i32* %t92, align 4
  %t139 = load i32, i32* %t92, align 4
  %t140 = load i32, i32* %t89, align 4
  %t141 = icmp sle i32 %t139, %t140
  br i1 %t141, label %B95, label %B144
B126:                               	; preds = %B125, %B130
  %t49 = load i32, i32* %t93, align 4
  %t50 = add i32 %t49, 1
  store i32 %t50, i32* %t93, align 4
  %t133 = load i32, i32* %t93, align 4
  %t134 = load i32, i32* %t89, align 4
  %t135 = icmp sle i32 %t133, %t134
  br i1 %t135, label %B120, label %B138
B144:                               	; preds = %B121
  br label %B96
B138:                               	; preds = %B126
  br label %B121
}
define i32 @main() {
B158:
  %t159 = alloca i32, align 4
  %t160 = alloca i32, align 4
  %t161 = alloca i32, align 4
  store i32 1, i32* %t161, align 4
  store i32 5, i32* %t159, align 4
  br label %B162
B162:                               	; preds = %B158
  %t67 = load i32, i32* %t161, align 4
  %t68 = load i32, i32* %t159, align 4
  %t69 = icmp sle i32 %t67, %t68
  br i1 %t69, label %B163, label %B167
B163:                               	; preds = %B162, %B170
  %t71 = call i32 @getint()
  store i32 %t71, i32* %t160, align 4
  br label %B168
B167:                               	; preds = %B162
  br label %B164
B168:                               	; preds = %B163
  %t72 = load i32, i32* %t160, align 4
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %B169, label %B173
B164:                               	; preds = %B167, %B186
  %t87 = load i32, i32* %t159, align 4
  call void @topo(i32 %t87)
  ret i32 0
B169:                               	; preds = %B168, %B169
  %t74 = load i32, i32* %t161, align 4
  %t76 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t74
  %t75 = load i32, i32* %t160, align 4
  %t174 = getelementptr inbounds [10 x i32], [10 x i32]* %t76, i32 0, i32 %t75
  store i32 1, i32* %t174, align 4
  %t79 = load i32, i32* %t160, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t79
  %t175 = load i32, i32* %t80, align 4
  %t81 = add i32 %t175, 1
  %t77 = load i32, i32* %t160, align 4
  %t78 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t77
  store i32 %t81, i32* %t78, align 4
  %t83 = call i32 @getint()
  store i32 %t83, i32* %t160, align 4
  %t176 = load i32, i32* %t160, align 4
  %t177 = icmp ne i32 %t176, 0
  br i1 %t177, label %B169, label %B180
B173:                               	; preds = %B168
  br label %B170
B180:                               	; preds = %B169
  br label %B170
B170:                               	; preds = %B173, %B180
  %t85 = load i32, i32* %t161, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t161, align 4
  %t181 = load i32, i32* %t161, align 4
  %t182 = load i32, i32* %t159, align 4
  %t183 = icmp sle i32 %t181, %t182
  br i1 %t183, label %B163, label %B186
B186:                               	; preds = %B170
  br label %B164
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
