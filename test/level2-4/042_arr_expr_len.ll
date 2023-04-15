@N = global i32 -1, align 4
@arr = global [6 x i32] [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6], align 4
define i32 @main() {
B21:
  %t22 = alloca i32, align 4
  %t23 = alloca i32, align 4
  store i32 0, i32* %t22, align 4
  store i32 0, i32* %t23, align 4
  br label %B24
B24:                               	; preds = %B21
  %t10 = load i32, i32* %t22, align 4
  %t11 = icmp slt i32 %t10, 6
  br i1 %t11, label %B25, label %B29
B25:                               	; preds = %B24, %B25
  %t13 = load i32, i32* %t23, align 4
  %t14 = load i32, i32* %t22, align 4
  %t15 = getelementptr inbounds [6 x i32], [6 x i32]* @arr, i32 0, i32 %t14
  %t30 = load i32, i32* %t15, align 4
  %t16 = add i32 %t13, %t30
  store i32 %t16, i32* %t23, align 4
  %t18 = load i32, i32* %t22, align 4
  %t19 = add i32 %t18, 1
  store i32 %t19, i32* %t22, align 4
  %t31 = load i32, i32* %t22, align 4
  %t32 = icmp slt i32 %t31, 6
  br i1 %t32, label %B25, label %B35
B29:                               	; preds = %B24
  br label %B26
B35:                               	; preds = %B25
  br label %B26
B26:                               	; preds = %B29, %B35
  %t20 = load i32, i32* %t23, align 4
  ret i32 %t20
}
