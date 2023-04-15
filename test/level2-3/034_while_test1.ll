define i32 @doubleWhile() {
B19:
  %t20 = alloca i32, align 4
  %t21 = alloca i32, align 4
  store i32 5, i32* %t20, align 4
  store i32 7, i32* %t21, align 4
  br label %B22
B22:                               	; preds = %B19
  %t4 = load i32, i32* %t20, align 4
  %t5 = icmp slt i32 %t4, 100
  br i1 %t5, label %B23, label %B27
B23:                               	; preds = %B22, %B30
  %t7 = load i32, i32* %t20, align 4
  %t8 = add i32 %t7, 30
  store i32 %t8, i32* %t20, align 4
  br label %B28
B27:                               	; preds = %B22
  br label %B24
B28:                               	; preds = %B23
  %t9 = load i32, i32* %t21, align 4
  %t10 = icmp slt i32 %t9, 100
  br i1 %t10, label %B29, label %B33
B24:                               	; preds = %B27, %B43
  %t17 = load i32, i32* %t21, align 4
  ret i32 %t17
B29:                               	; preds = %B28, %B29
  %t12 = load i32, i32* %t21, align 4
  %t13 = add i32 %t12, 6
  store i32 %t13, i32* %t21, align 4
  %t34 = load i32, i32* %t21, align 4
  %t35 = icmp slt i32 %t34, 100
  br i1 %t35, label %B29, label %B38
B33:                               	; preds = %B28
  br label %B30
B38:                               	; preds = %B29
  br label %B30
B30:                               	; preds = %B33, %B38
  %t15 = load i32, i32* %t21, align 4
  %t16 = sub i32 %t15, 100
  store i32 %t16, i32* %t21, align 4
  %t39 = load i32, i32* %t20, align 4
  %t40 = icmp slt i32 %t39, 100
  br i1 %t40, label %B23, label %B43
B43:                               	; preds = %B30
  br label %B24
}
define i32 @main() {
B44:
  %t18 = call i32 @doubleWhile()
  ret i32 %t18
}
