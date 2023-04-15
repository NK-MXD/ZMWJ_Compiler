define i32 @main() {
B19:
  %t20 = alloca i32, align 4
  %t21 = alloca i32, align 4
  store i32 0, i32* %t20, align 4
  store i32 0, i32* %t21, align 4
  br label %B22
B22:                               	; preds = %B19, %B28
  %t4 = load i32, i32* %t20, align 4
  %t5 = icmp slt i32 %t4, 100
  br i1 %t5, label %B23, label %B27
B23:                               	; preds = %B22, %B29
  %t6 = load i32, i32* %t20, align 4
  %t7 = icmp eq i32 %t6, 50
  br i1 %t7, label %B28, label %B32
B27:                               	; preds = %B22
  br label %B24
B28:                               	; preds = %B23
  %t9 = load i32, i32* %t20, align 4
  %t10 = add i32 %t9, 1
  store i32 %t10, i32* %t20, align 4
  br label %B22
B32:                               	; preds = %B23
  br label %B29
B24:                               	; preds = %B27, %B38
  %t18 = load i32, i32* %t21, align 4
  ret i32 %t18
B29:                               	; preds = %B32
  %t12 = load i32, i32* %t21, align 4
  %t13 = load i32, i32* %t20, align 4
  %t14 = add i32 %t12, %t13
  store i32 %t14, i32* %t21, align 4
  %t16 = load i32, i32* %t20, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t20, align 4
  %t34 = load i32, i32* %t20, align 4
  %t35 = icmp slt i32 %t34, 100
  br i1 %t35, label %B23, label %B38
B38:                               	; preds = %B29
  br label %B24
}
