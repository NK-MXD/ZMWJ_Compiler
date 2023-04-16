@ascii_0 = global i32 48, align 4
define i32 @my_getint() {
B66:
  %t166 = add i32 0, 0
  br label %B69
B69:                               	; preds = %B66, %B75
  %t3 = icmp ne i32 1, 0
  br i1 %t3, label %B70, label %B73
B70:                               	; preds = %B69
  %t5 = call i32 @getch()
  %t6 = load i32, i32* @ascii_0, align 4
  %t7 = sub i32 %t5, %t6
  %t9 = icmp slt i32 %t7, 0
  br i1 %t9, label %B75, label %B81
B73:                               	; preds = %B69
  %t167 = add i32 %t166, 0
  br label %B71
B75:                               	; preds = %B70, %B78
  %t166 = add i32 %t7, 0
  br label %B69
B81:                               	; preds = %B70
  br label %B78
B71:                               	; preds = %B73, %B76
  br label %B91
B78:                               	; preds = %B81
  %t11 = icmp sgt i32 %t7, 9
  br i1 %t11, label %B75, label %B84
B91:                               	; preds = %B71
  %t161 = add i32 %t167, 0
  %t154 = add i32 %t167, 0
  %t15 = icmp ne i32 1, 0
  br i1 %t15, label %B92, label %B95
B84:                               	; preds = %B78
  br label %B76
B92:                               	; preds = %B91, %B99
  %t17 = call i32 @getch()
  %t18 = load i32, i32* @ascii_0, align 4
  %t19 = sub i32 %t17, %t18
  %t21 = icmp sge i32 %t19, 0
  br i1 %t21, label %B100, label %B103
B95:                               	; preds = %B91
  %t162 = add i32 %t167, 0
  %t155 = add i32 %t167, 0
  br label %B93
B76:                               	; preds = %B84
  %t167 = add i32 %t7, 0
  br label %B71
B100:                               	; preds = %B92
  %t23 = icmp sle i32 %t19, 9
  br i1 %t23, label %B97, label %B106
B103:                               	; preds = %B92
  br label %B98
B93:                               	; preds = %B95, %B98, %B110
  ret i32 %t155
B97:                               	; preds = %B100
  %t27 = mul i32 %t154, 10
  %t29 = add i32 %t27, %t19
  br label %B99
B106:                               	; preds = %B100
  br label %B98
B98:                               	; preds = %B103, %B106
  %t162 = add i32 %t19, 0
  %t155 = add i32 %t154, 0
  br label %B93
B99:                               	; preds = %B97
  %t161 = add i32 %t19, 0
  %t154 = add i32 %t29, 0
  %t108 = icmp ne i32 1, 0
  br i1 %t108, label %B92, label %B110
B110:                               	; preds = %B99
  %t162 = add i32 %t19, 0
  %t155 = add i32 %t29, 0
  br label %B93
}
define void @my_putint(i32 %t31) {
B112:
  %t113 = alloca i32, align 4
  %t114 = alloca [16 x i32], align 4
  store i32 %t31, i32* %t113, align 4
  br label %B116
B116:                               	; preds = %B112
  %t35 = load i32, i32* %t113, align 4
  %t177 = add i32 0, 0
  %t36 = icmp sgt i32 %t35, 0
  br i1 %t36, label %B117, label %B121
B117:                               	; preds = %B116, %B199
  %t39 = load i32, i32* %t113, align 4
  %t40 = srem i32 %t39, 10
  %t41 = load i32, i32* @ascii_0, align 4
  %t42 = add i32 %t40, %t41
  %t38 = getelementptr inbounds [16 x i32], [16 x i32]* %t114, i32 0, i32 %t177
  store i32 %t42, i32* %t38, align 4
  %t44 = load i32, i32* %t113, align 4
  %t45 = sdiv i32 %t44, 10
  store i32 %t45, i32* %t113, align 4
  %t48 = add i32 %t177, 1
  %t122 = load i32, i32* %t113, align 4
  %t123 = icmp sgt i32 %t122, 0
  br i1 %t123, label %B199, label %B126
B121:                               	; preds = %B116
  %t176 = add i32 0, 0
  br label %B118
B126:                               	; preds = %B117
  %t176 = add i32 %t48, 0
  br label %B118
B199:                               	; preds = %B117
  %t177 = add i32 %t48, 0
  br label %B117
B118:                               	; preds = %B121, %B126
  br label %B127
B127:                               	; preds = %B118
  %t171 = add i32 %t176, 0
  %t50 = icmp sgt i32 %t176, 0
  br i1 %t50, label %B128, label %B132
B128:                               	; preds = %B127, %B202
  %t53 = sub i32 %t171, 1
  %t55 = getelementptr inbounds [16 x i32], [16 x i32]* %t114, i32 0, i32 %t53
  %t133 = load i32, i32* %t55, align 4
  call void @putch(i32 %t133)
  %t135 = icmp sgt i32 %t53, 0
  br i1 %t135, label %B202, label %B138
B132:                               	; preds = %B127
  %t172 = add i32 %t176, 0
  br label %B129
B138:                               	; preds = %B128
  %t172 = add i32 %t53, 0
  br label %B129
B202:                               	; preds = %B128
  %t171 = add i32 %t53, 0
  br label %B128
B129:                               	; preds = %B132, %B138
  ret void
}
define i32 @main() {
B139:
  %t56 = call i32 @my_getint()
  br label %B141
B141:                               	; preds = %B139
  %t189 = add i32 0, 0
  %t183 = add i32 %t56, 0
  %t59 = icmp sgt i32 %t56, 0
  br i1 %t59, label %B142, label %B146
B142:                               	; preds = %B141, %B206
  %t60 = call i32 @my_getint()
  call void @my_putint(i32 %t60)
  call void @putch(i32 10)
  %t65 = sub i32 %t183, 1
  %t149 = icmp sgt i32 %t65, 0
  br i1 %t149, label %B206, label %B152
B146:                               	; preds = %B141
  %t188 = add i32 0, 0
  %t182 = add i32 %t56, 0
  br label %B143
B152:                               	; preds = %B142
  %t188 = add i32 %t60, 0
  %t182 = add i32 %t65, 0
  br label %B143
B206:                               	; preds = %B142
  %t189 = add i32 %t60, 0
  %t183 = add i32 %t65, 0
  br label %B142
B143:                               	; preds = %B146, %B152
  ret i32 0
}
declare i32 @getch()
declare void @putch(i32)
