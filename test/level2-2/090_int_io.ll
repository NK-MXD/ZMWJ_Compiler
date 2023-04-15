@ascii_0 = global i32 48, align 4
define i32 @my_getint() {
B66:
  %t67 = alloca i32, align 4
  %t68 = alloca i32, align 4
  store i32 0, i32* %t67, align 4
  br label %B69
B69:                               	; preds = %B66, %B75
  %t3 = icmp ne i32 1, 0
  br i1 %t3, label %B70, label %B73
B70:                               	; preds = %B69
  %t5 = call i32 @getch()
  %t6 = load i32, i32* @ascii_0, align 4
  %t7 = sub i32 %t5, %t6
  store i32 %t7, i32* %t68, align 4
  %t8 = load i32, i32* %t68, align 4
  %t9 = icmp slt i32 %t8, 0
  br i1 %t9, label %B75, label %B81
B73:                               	; preds = %B69
  br label %B71
B75:                               	; preds = %B70, %B78
  br label %B69
B81:                               	; preds = %B70
  br label %B78
B71:                               	; preds = %B73, %B76
  %t14 = load i32, i32* %t68, align 4
  store i32 %t14, i32* %t67, align 4
  br label %B91
B78:                               	; preds = %B81
  %t10 = load i32, i32* %t68, align 4
  %t11 = icmp sgt i32 %t10, 9
  br i1 %t11, label %B75, label %B84
B91:                               	; preds = %B71
  %t15 = icmp ne i32 1, 0
  br i1 %t15, label %B92, label %B95
B84:                               	; preds = %B78
  br label %B76
B92:                               	; preds = %B91, %B99
  %t17 = call i32 @getch()
  %t18 = load i32, i32* @ascii_0, align 4
  %t19 = sub i32 %t17, %t18
  store i32 %t19, i32* %t68, align 4
  %t20 = load i32, i32* %t68, align 4
  %t21 = icmp sge i32 %t20, 0
  br i1 %t21, label %B100, label %B103
B95:                               	; preds = %B91
  br label %B93
B76:                               	; preds = %B84
  br label %B71
B100:                               	; preds = %B92
  %t22 = load i32, i32* %t68, align 4
  %t23 = icmp sle i32 %t22, 9
  br i1 %t23, label %B97, label %B106
B103:                               	; preds = %B92
  br label %B98
B93:                               	; preds = %B95, %B98, %B110
  %t30 = load i32, i32* %t67, align 4
  ret i32 %t30
B97:                               	; preds = %B100
  %t26 = load i32, i32* %t67, align 4
  %t27 = mul i32 %t26, 10
  %t28 = load i32, i32* %t68, align 4
  %t29 = add i32 %t27, %t28
  store i32 %t29, i32* %t67, align 4
  br label %B99
B106:                               	; preds = %B100
  br label %B98
B98:                               	; preds = %B103, %B106
  br label %B93
B99:                               	; preds = %B97
  %t108 = icmp ne i32 1, 0
  br i1 %t108, label %B92, label %B110
B110:                               	; preds = %B99
  br label %B93
}
define void @my_putint(i32 %t31) {
B112:
  %t113 = alloca i32, align 4
  %t114 = alloca [16 x i32], align 4
  %t115 = alloca i32, align 4
  store i32 %t31, i32* %t113, align 4
  store i32 0, i32* %t115, align 4
  br label %B116
B116:                               	; preds = %B112
  %t35 = load i32, i32* %t113, align 4
  %t36 = icmp sgt i32 %t35, 0
  br i1 %t36, label %B117, label %B121
B117:                               	; preds = %B116, %B117
  %t39 = load i32, i32* %t113, align 4
  %t40 = srem i32 %t39, 10
  %t41 = load i32, i32* @ascii_0, align 4
  %t42 = add i32 %t40, %t41
  %t37 = load i32, i32* %t115, align 4
  %t38 = getelementptr inbounds [16 x i32], [16 x i32]* %t114, i32 0, i32 %t37
  store i32 %t42, i32* %t38, align 4
  %t44 = load i32, i32* %t113, align 4
  %t45 = sdiv i32 %t44, 10
  store i32 %t45, i32* %t113, align 4
  %t47 = load i32, i32* %t115, align 4
  %t48 = add i32 %t47, 1
  store i32 %t48, i32* %t115, align 4
  %t122 = load i32, i32* %t113, align 4
  %t123 = icmp sgt i32 %t122, 0
  br i1 %t123, label %B117, label %B126
B121:                               	; preds = %B116
  br label %B118
B126:                               	; preds = %B117
  br label %B118
B118:                               	; preds = %B121, %B126
  br label %B127
B127:                               	; preds = %B118
  %t49 = load i32, i32* %t115, align 4
  %t50 = icmp sgt i32 %t49, 0
  br i1 %t50, label %B128, label %B132
B128:                               	; preds = %B127, %B