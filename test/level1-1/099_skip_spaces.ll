define i32 @main() {
B23:
  %t24 = alloca [100 x i32], align 4
  %t25 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 0, i32* %t25, align 4
  store i32 0, i32* %t26, align 4
  br label %B27
B27:                               	; preds = %B23
  %t3 = call i32 @getint()
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %B28, label %B31
B28:                               	; preds = %B27, %B28
  %t7 = call i32 @getint()
  %t5 = load i32, i32* %t25, align 4
  %t6 = getelementptr inbounds [100 x i32], [100 x i32]* %t24, i32 0, i32 %t5
  store i32 %t7, i32* %t6, align 4
  %t9 = load i32, i32* %t25, align 4
  %t10 = add i32 %t9, 1
  store i32 %t10, i32* %t25, align 4
  %t33 = call i32 @getint()
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %B28, label %B36
B31:                               	; preds = %B27
  br label %B29
B36:                               	; preds = %B28
  br label %B29
B29:                               	; preds = %B31, %B36
  br label %B38
B38:                               	; preds = %B29
  %t11 = load i32, i32* %t25, align 4
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %B39, label %B42
B39:                               	; preds = %B38, %B39
  %t14 = load i32, i32* %t25, align 4
  %t15 = sub i32 %t14, 1
  store i32 %t15, i32* %t25, align 4
  %t17 = load i32, i32* %t26, align 4
  %t18 = load i32, i32* %t25, align 4
  %t19 = getelementptr inbounds [100 x i32], [100 x i32]* %t24, i32 0, i32 %t18
  %t44 = load i32, i32* %t19, align 4
  %t20 = add i32 %t17, %t44
  store i32 %t20, i32* %t26, align 4
  %t45 = load i32, i32* %t25, align 4
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %B39, label %B48
B42:                               	; preds = %B38
  br label %B40
B48:                               	; preds = %B39
  br label %B40
B40:                               	; preds = %B42, %B48
  %t21 = load i32, i32* %t26, align 4
  %t22 = srem i32 %t21, 79
  ret i32 %t22
}
declare i32 @getint()
