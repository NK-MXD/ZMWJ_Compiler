define i32 @uniquePaths(i32 %t0, i32 %t2) {
B83:
  %t84 = alloca i32, align 4
  %t85 = alloca i32, align 4
  %t95 = alloca [9 x i32], align 4
  store i32 %t0, i32* %t84, align 4
  store i32 %t2, i32* %t85, align 4
  %t4 = load i32, i32* %t84, align 4
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %B86, label %B91
B86:                               	; preds = %B83, %B88
  ret i32 1
B91:                               	; preds = %B83
  br label %B88
B88:                               	; preds = %B91
  %t6 = load i32, i32* %t85, align 4
  %t7 = icmp eq i32 %t6, 1
  br i1 %t7, label %B86, label %B94
B94:                               	; preds = %B88
  br label %B87
B87:                               	; preds = %B94
  br label %B98
B98:                               	; preds = %B87
  %t14 = load i32, i32* %t84, align 4
  %t165 = add i32 0, 0
  %t15 = icmp slt i32 0, %t14
  br i1 %t15, label %B99, label %B103
B99:                               	; preds = %B98, %B183
  %t17 = mul i32 %t165, 3
  %t18 = load i32, i32* %t85, align 4
  %t19 = add i32 %t17, %t18
  %t20 = sub i32 %t19, 1
  %t21 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t20
  store i32 1, i32* %t21, align 4
  %t24 = add i32 %t165, 1
  %t105 = load i32, i32* %t84, align 4
  %t106 = icmp slt i32 %t24, %t105
  br i1 %t106, label %B183, label %B109
B103:                               	; preds = %B98
  %t166 = add i32 0, 0
  br label %B100
B109:                               	; preds = %B99
  %t166 = add i32 %t24, 0
  br label %B100
B183:                               	; preds = %B99
  %t165 = add i32 %t24, 0
  br label %B99
B100:                               	; preds = %B103, %B109
  br label %B110
B110:                               	; preds = %B100
  %t27 = load i32, i32* %t85, align 4
  %t159 = add i32 0, 0
  %t28 = icmp slt i32 0, %t27
  br i1 %t28, label %B111, label %B115
B111:                               	; preds = %B110, %B186
  %t29 = load i32, i32* %t84, align 4
  %t30 = sub i32 %t29, 1
  %t31 = mul i32 %t30, 3
  %t33 = add i32 %t31, %t159
  %t34 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t33
  store i32 1, i32* %t34, align 4
  %t37 = add i32 %t159, 1
  %t117 = load i32, i32* %t85, align 4
  %t118 = icmp slt i32 %t37, %t117
  br i1 %t118, label %B186, label %B121
B115:                               	; preds = %B110
  %t160 = add i32 0, 0
  br label %B112
B121:                               	; preds = %B111
  %t160 = add i32 %t37, 0
  br label %B112
B186:                               	; preds = %B111
  %t159 = add i32 %t37, 0
  br label %B111
B112:                               	; preds = %B115, %B121
  %t39 = load i32, i32* %t84, align 4
  %t40 = sub i32 %t39, 2
  br label %B122
B122:                               	; preds = %B112
  %t42 = sub i32 0, 1
  %t174 = add i32 0, 0
  %t153 = add i32 %t40, 0
  %t43 = icmp sgt i32 %t40, %t42
  br i1 %t43, label %B123, label %B127
B123:                               	; preds = %B122, %B130
  %t45 = load i32, i32* %t85, align 4
  %t46 = sub i32 %t45, 2
  br label %B128
B127:                               	; preds = %B122
  %t175 = add i32 0, 0
  %t154 = add i32 %t40, 0
  br label %B124
B128:                               	; preds = %B123
  %t48 = sub i32 0, 1
  %t171 = add i32 %t46, 0
  %t49 = icmp sgt i32 %t46, %t48
  br i1 %t49, label %B129, label %B133
B124:                               	; preds = %B127, %B147
  %t74 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 0
  %t148 = load i32, i32* %t74, align 4
  ret i32 %t148
B129:                               	; preds = %B128, %B193
  %t56 = add i32 %t153, 1
  %t57 = mul i32 %t56, 3
  %t59 = add i32 %t57, %t171
  %t60 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t59
  %t134 = load i32, i32* %t60, align 4
  %t62 = mul i32 %t153, 3
  %t64 = add i32 %t62, %t171
  %t65 = add i32 %t64, 1
  %t66 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t65
  %t135 = load i32, i32* %t66, align 4
  %t67 = add i32 %t134, %t135
  %t54 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t64
  store i32 %t67, i32* %t54, align 4
  %t70 = sub i32 %t171, 1
  %t137 = sub i32 0, 1
  %t138 = icmp sgt i32 %t70, %t137
  br i1 %t138, label %B193, label %B141
B133:                               	; preds = %B128
  %t172 = add i32 %t46, 0
  br label %B130
B141:                               	; preds = %B129
  %t172 = add i32 %t70, 0
  br label %B130
B193:                               	; preds = %B129
  %t171 = add i32 %t70, 0
  br label %B129
B130:                               	; preds = %B133, %B141
  %t73 = sub i32 %t153, 1
  %t143 = sub i32 0, 1
  %t174 = add i32 %t172, 0
  %t153 = add i32 %t73, 0
  %t144 = icmp sgt i32 %t73, %t143
  br i1 %t144, label %B123, label %B147
B147:                               	; preds = %B130
  %t175 = add i32 %t172, 0
  %t154 = add i32 %t73, 0
  br label %B124
}
define i32 @main() {
B149:
  %t81 = call i32 @uniquePaths(i32 3, i32 3)
  ret i32 %t81
}
