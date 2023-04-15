define i32 @ifWhile() {
B24:
  %t25 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 0, i32* %t25, align 4
  store i32 3, i32* %t26, align 4
  %t4 = load i32, i32* %t25, align 4
  %t5 = icmp eq i32 %t4, 5
  br i1 %t5, label %B27, label %B32
B27:                               	; preds = %B24
  br label %B33
B32:                               	; preds = %B24
  br label %B28
B33:                               	; preds = %B27
  %t6 = load i32, i32* %t26, align 4
  %t7 = icmp eq i32 %t6, 2
  br i1 %t7, label %B34, label %B38
B28:                               	; preds = %B32
  br label %B44
B34:                               	; preds = %B33, %B34
  %t9 = load i32, i32* %t26, align 4
  %t10 = add i32 %t9, 2
  store i32 %t10, i32* %t26, align 4
  %t39 = load i32, i32* %t26, align 4
  %t40 = icmp eq i32 %t39, 2
  br i1 %t40, label %B34, label %B43
B38:                               	; preds = %B33
  br label %B35
B44:                               	; preds = %B28
  %t14 = load i32, i32* %t25, align 4
  %t15 = icmp slt i32 %t14, 5
  br i1 %t15, label %B45, label %B49
B43:                               	; preds = %B34
  br label %B35
B35:                               	; preds = %B38, %B43
  %t12 = load i32, i32* %t26, align 4
  %t13 = add i32 %t12, 25
  store i32 %t13, i32* %t26, align 4
  br label %B29
B45:                               	; preds = %B44, %B45
  %t17 = load i32, i32* %t26, align 4
  %t18 = mul i32 %t17, 2
  store i32 %t18, i32* %t26, align 4
  %t20 = load i32, i32* %t25, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t25, align 4
  %t50 = load i32, i32* %t25, align 4
  %t51 = icmp slt i32 %t50, 5
  br i1 %t51, label %B45, label %B54
B49:                               	; preds = %B44
  br label %B46
B29:                               	; preds = %B35, %B46
  %t22 = load i32, i32* %t26, align 4
  ret i32 %t22
B54:                               	; preds = %B45
  br label %B46
B46:                               	; preds = %B49, %B54
  br label %B29
}
define i32 @main() {
B55:
  %t23 = call i32 @ifWhile()
  ret i32 %t23
}
