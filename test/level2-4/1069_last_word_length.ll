define i32 @lengthOfLastWord(i32* %t0, i32 %t2) {
B68:
  %t69 = alloca i32*, align 4
  %t70 = alloca i32, align 4
  store i32* %t0, i32** %t69, align 4
  store i32 %t2, i32* %t70, align 4
  %t4 = load i32, i32* %t70, align 4
  %t5 = icmp eq i32 %t4, 0
  br i1 %t5, label %B71, label %B75
B71:                               	; preds = %B68
  ret i32 0
B75:                               	; preds = %B68
  br label %B72
B72:                               	; preds = %B75
  %t8 = load i32, i32* %t70, align 4
  %t9 = sub i32 %t8, 1
  br label %B77
B77:                               	; preds = %B72
  %t11 = sub i32 0, 1
  %t135 = add i32 %t9, 0
  %t12 = icmp sgt i32 %t9, %t11
  br i1 %t12, label %B96, label %B83
B96:                               	; preds = %B77, %B78
  %t100 = load i32*, i32** %t69, align 4
  %t93 = getelementptr inbounds i32, i32* %t100, i32 %t135
  %t101 = load i32, i32* %t93, align 4
  %t94 = icmp eq i32 %t101, 0
  br i1 %t94, label %B78, label %B104
B83:                               	; preds = %B77
  %t134 = add i32 %t9, 0
  br label %B79
B78:                               	; preds = %B96
  %t19 = sub i32 %t135, 1
  %t90 = sub i32 0, 1
  %t135 = add i32 %t19, 0
  %t91 = icmp sgt i32 %t19, %t90
  br i1 %t91, label %B96, label %B99
B104:                               	; preds = %B96
  %t134 = add i32 %t135, 0
  br label %B79
B79:                               	; preds = %B83, %B99, %B104
  %t21 = sub i32 0, 1
  %t22 = icmp eq i32 %t134, %t21
  br i1 %t22, label %B105, label %B109
B99:                               	; preds = %B78
  %t134 = add i32 %t19, 0
  br label %B79
B105:                               	; preds = %B79
  ret i32 0
B109:                               	; preds = %B79
  br label %B106
B106:                               	; preds = %B109
  br label %B111
B111:                               	; preds = %B106
  %t27 = sub i32 0, 1
  %t140 = add i32 %t134, 0
  %t28 = icmp sgt i32 %t134, %t27
  br i1 %t28, label %B112, label %B116
B112:                               	; preds = %B111, %B118
  %t119 = load i32*, i32** %t69, align 4
  %t30 = getelementptr inbounds i32, i32* %t119, i32 %t140
  %t120 = load i32, i32* %t30, align 4
  %t31 = icmp eq i32 %t120, 0
  br i1 %t31, label %B117, label %B123
B116:                               	; preds = %B111
  %t141 = add i32 %t134, 0
  br label %B113
B117:                               	; preds = %B112
  %t32 = load i32, i32* %t70, align 4
  %t34 = sub i32 %t32, %t140
  %t35 = sub i32 %t34, 1
  %t36 = load i32, i32* %t70, align 4
  %t37 = sub i32 %t36, 1
  %t39 = sub i32 %t37, %t134
  %t40 = sub i32 %t35, %t39
  ret i32 %t40
B123:                               	; preds = %B112
  br label %B118
B113:                               	; preds = %B116, %B129
  %t46 = sub i32 %t134, %t141
  ret i32 %t46
B118:                               	; preds = %B123
  %t43 = sub i32 %t140, 1
  %t125 = sub i32 0, 1
  %t140 = add i32 %t43, 0
  %t126 = icmp sgt i32 %t43, %t125
  br i1 %t126, label %B112, label %B129
B129:                               	; preds = %B118
  %t141 = add i32 %t43, 0
  br label %B113
}
define i32 @main() {
B130:
  %t132 = alloca [10 x i32], align 4
  %t50 = sub i32 0, 4
  %t49 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 0
  store i32 %t50, i32* %t49, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 1
  store i32 3, i32* %t51, align 4
  %t52 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 2
  store i32 9, i32* %t52, align 4
  %t54 = sub i32 0, 2
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 3
  store i32 %t54, i32* %t53, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 4
  store i32 0, i32* %t55, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 5
  store i32 1, i32* %t56, align 4
  %t58 = sub i32 0, 6
  %t57 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 6
  store i32 %t58, i32* %t57, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 7
  store i32 5, i32* %t59, align 4
  %t60 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 8
  store i32 7, i32* %t60, align 4
  %t61 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 9
  store i32 8, i32* %t61, align 4
  %t66 = call i32 @lengthOfLastWord(i32* %t49, i32 10)
  ret i32 %t66
}
