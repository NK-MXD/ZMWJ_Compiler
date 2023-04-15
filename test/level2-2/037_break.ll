define i32 @main() {
B16:
  %t17 = alloca i32, align 4
  %t18 = alloca i32, align 4
  store i32 0, i32* %t17, align 4
  store i32 0, i32* %t18, align 4
  br label %B19
B19:                               	; preds = %B16
  %t4 = load i32, i32* %t17, align 4
  %t5 = icmp slt i32 %t4, 100
  br i1 %t5, label %B20, label %B24
B20:                               	; preds = %B19, %B26
  %t6 = load i32, i32* %t17, align 4
  %t7 = icmp eq i32 %t6, 50
  br i1 %t7, label %B25, label %B29
B24:                               	; preds = %B19
  br label %B21
B25:                               	; preds = %B20
  br label %B21
B29:                               	; preds = %B20
  br label %B26
B21:                               	; preds = %B24, %B25, %B35
  %t15 = load i32, i32* %t18, align 4
  ret i32 %t15
B26:                               	; preds = %B29
  %t9 = load i32, i32* %t18, align 4
  %t10 = load i32, i32* %t17, align 4
  %t11 = add i32 %t9, %t10
  store i32 %t11, i32* %t18, align 4
  %t13 = load i32, i32* %t17, align 4
  %t14 = add i32 %t13, 1
  store i32 %t14, i32* %t17, align 4
  %t31 = load i32, i32* %t17, align 4
  %t32 = icmp slt i32 %t31, 100
  br i1 %t32, label %B20, label %B35
B35:                               	; preds = %B26
  br label %B21
}
