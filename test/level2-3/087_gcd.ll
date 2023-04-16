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
  %t12 = call i32 @getint()
  br label %B36
B36:                               	; preds = %B34
  %t61 = add i32 0, 0
  %t56 = add i32 0, 0
  %t50 = add i32 %t12, 0
  %t15 = icmp sgt i32 %t12, 0
  br i1 %t15, label %B37, label %B41
B37:                               	; preds = %B36, %B68
  %t16 = call i32 @getint()
  %t18 = call i32 @getint()
  %t22 = call i32 @gcd(i32 %t16, i32 %t18)
  call void @putint(i32 %t22)
  call void @putch(i32 10)
  %t25 = sub i32 %t50, 1
  %t45 = icmp sgt i32 %t25, 0
  br i1 %t45, label %B68, label %B48
B41:                               	; preds = %B36
  %t62 = add i32 0, 0
  %t57 = add i32 0, 0
  %t51 = add i32 %t12, 0
  br label %B38
B48:                               	; preds = %B37
  %t62 = add i32 %t18, 0
  %t57 = add i32 %t16, 0
  %t51 = add i32 %t25, 0
  br label %B38
B68:                               	; preds = %B37
  %t61 = add i32 %t18, 0
  %t56 = add i32 %t16, 0
  %t50 = add i32 %t25, 0
  br label %B37
B38:                               	; preds = %B41, %B48
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
