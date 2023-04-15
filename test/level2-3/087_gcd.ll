define i32 @gcd(i32 %t0, i32 %t2) {
B26:
  %t27 = alloca i32, align 4
  %t28 = alloca i32, align 4
  store i32 %t0, i32* %t27, align 4
  store i32 %t2, i32* %t28, align 4
  %t4 = load i32, i32* %t28, align 4
  %t5 = icmp eq i32 %t4, 0
  br i1 %t5, label %B29, label %B33
B29:                               	; preds = %B26
  %t6 = load i32, i32* %t27, align 4
  ret i32 %t6
B33:                               	; preds = %B26
  br label %B30
B30:                               	; preds = %B33
  %t7 = load i32, i32* %t28, align 4
  %t8 = load i32, i32* %t27, align 4
  %t9 = load i32, i32* %t28, align 4
  %t10 = srem i32 %t8, %t9
  %t11 = call i32 @gcd(i32 %t7, i32 %t10)
  ret i32 %t11
}
define i32 @main() {
B34:
  %t35 = alloca i32, align 4
  %t42 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t12 = call i32 @getint()
  store i32 %t12, i32* %t35, align 4
  br label %B36
B36:                               	; preds = %B34
  %t14 = load i32, i32* %t35, align 4
  %t15 = icmp sgt i32 %t14, 0
  br i1 %t15, label %B37, label %B41
B37:                               	; preds = %B36, %B37
  %t16 = call i32 @getint()
  store i32 %t16, i32* %t42, align 4
  %t18 = call i32 @getint()
  store i32 %t18, i32* %t43, align 4
  %t20 = load i32, i32* %t42, align 4
  %t21 = load i32, i32* %t43, align 4
  %t22 = call i32 @gcd(i32 %t20, i32 %t21)
  call void @putint(i32 %t22)
  call void @putch(i32 10)
  %t24 = load i32, i32* %t35, align 4
  %t25 = sub i32 %t24, 1
  store i32 %t25, i32* %t35, align 4
  %t44 = load i32, i32* %t35, align 4
  %t45 = icmp sgt i32 %t44, 0
  br i1 %t45, label %B37, label %B48
B41:                               	; preds = %B36
  br label %B38
B48:                               	; preds = %B37
  br label %B38
B38:                               	; preds = %B41, %B48
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
