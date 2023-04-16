define i32 @maxArea(i32* %t0, i32 %t2) {
B71:
  %t72 = alloca i32*, align 4
  %t73 = alloca i32, align 4
  store i32* %t0, i32** %t72, align 4
  store i32 %t2, i32* %t73, align 4
  %t8 = load i32, i32* %t73, align 4
  %t9 = sub i32 %t8, 1
  %t12 = sub i32 0, 1
  br label %B77
B77:                               	; preds = %B71
  %t149 = add i32 0, 0
  %t141 = add i32 %t12, 0
  %t133 = add i32 %t9, 0
  %t125 = add i32 0, 0
  %t15 = icmp slt i32 0, %t9
  br i1 %t15, label %B78, label %B82
B78:                               	; preds = %B77, %B105
  %t87 = load i32*, i32** %t72, align 4
  %t18 = getelementptr inbounds i32, i32* %t87, i32 %t125
  %t88 = load i32, i32* %t18, align 4
  %t20 = getelementptr inbounds i32, i32* %t87, i32 %t133
  %t90 = load i32, i32* %t20, align 4
  %t21 = icmp slt i32 %t88, %t90
  br i1 %t21, label %B84, label %B93
B82:                               	; preds = %B77
  %t150 = add i32 0, 0
  %t142 = add i32 %t12, 0
  %t134 = add i32 %t9, 0
  %t126 = add i32 0, 0
  br label %B79
B84:                               	; preds = %B78
  %t25 = sub i32 %t133, %t125
  %t94 = load i32*, i32** %t72, align 4
  %t27 = getelementptr inbounds i32, i32* %t94, i32 %t125
  %t95 = load i32, i32* %t27, align 4
  %t28 = mul i32 %t25, %t95
  %t147 = add i32 %t28, 0
  br label %B86
B93:                               	; preds = %B78
  br label %B85
B79:                               	; preds = %B82, %B118
  ret i32 %t142
B86:                               	; preds = %B84, %B85
  %t38 = icmp sgt i32 %t147, %t141
  br i1 %t38, label %B98, label %B102
B85:                               	; preds = %B93
  %t32 = sub i32 %t133, %t125
  %t96 = load i32*, i32** %t72, align 4
  %t34 = getelementptr inbounds i32, i32* %t96, i32 %t133
  %t97 = load i32, i32* %t34, align 4
  %t35 = mul i32 %t32, %t97
  %t147 = add i32 %t35, 0
  br label %B86
B98:                               	; preds = %B86
  %t139 = add i32 %t147, 0
  br label %B99
B102:                               	; preds = %B86
  %t139 = add i32 %t141, 0
  br label %B99
B99:                               	; preds = %B98, %B102
  %t106 = load i32*, i32** %t72, align 4
  %t42 = getelementptr inbounds i32, i32* %t106, i32 %t125
  %t107 = load i32, i32* %t42, align 4
  %t44 = getelementptr inbounds i32, i32* %t106, i32 %t133
  %t109 = load i32, i32* %t44, align 4
  %t45 = icmp sgt i32 %t107, %t109
  br i1 %t45, label %B103, label %B112
B103:                               	; preds = %B99
  %t48 = sub i32 %t133, 1
  %t131 = add i32 %t48, 0
  %t123 = add i32 %t125, 0
  br label %B105
B112:                               	; preds = %B99
  br label %B104
B105:                               	; preds = %B103, %B104
  %t149 = add i32 %t147, 0
  %t141 = add i32 %t139, 0
  %t133 = add i32 %t131, 0
  %t125 = add i32 %t123, 0
  %t115 = icmp slt i32 %t123, %t131
  br i1 %t115, label %B78, label %B118
B104:                               	; preds = %B112
  %t51 = add i32 %t125, 1
  %t131 = add i32 %t133, 0
  %t123 = add i32 %t51, 0
  br label %B105
B118:                               	; preds = %B105
  %t150 = add i32 %t147, 0
  %t142 = add i32 %t139, 0
  %t134 = add i32 %t131, 0
  %t126 = add i32 %t123, 0
  br label %B79
}
define i32 @main() {
B119:
  %t121 = alloca [10 x i32], align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 0
  store i32 3, i32* %t55, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 1
  store i32 3, i32* %t56, align 4
  %t57 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 2
  store i32 9, i32* %t57, align 4
  %t58 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 3
  store i32 0, i32* %t58, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 4
  store i32 0, i32* %t59, align 4
  %t60 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 5
  store i32 1, i32* %t60, align 4
  %t61 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 6
  store i32 1, i32* %t61, align 4
  %t62 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 7
  store i32 5, i32* %t62, align 4
  %t63 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 8
  store i32 7, i32* %t63, align 4
  %t64 = getelementptr inbounds [10 x i32], [10 x i32]* %t121, i32 0, i32 9
  store i32 8, i32* %t64, align 4
  %t69 = call i32 @maxArea(i32* %t55, i32 10)
  ret i32 %t69
}
