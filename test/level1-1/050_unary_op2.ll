define i32 @main() {
B24:
  %t6 = sub i32 0, 4
  %t7 = sub i32 56, %t6
  %t9 = add i32 %t7, 4
  %t30 = icmp ne i32 %t9, 0
  %t11 = xor i1 %t30, true
  %t31 = icmp ne i1 %t11, 0
  %t12 = xor i1 %t31, true
  %t32 = icmp ne i1 %t12, 0
  %t13 = xor i1 %t32, true
  %t33 = zext i1 %t13 to i32
  %t14 = sub i32 0, %t33
  %t22 = icmp ne i32 %t14, 0
  br i1 %t22, label %B27, label %B35
B27:                               	; preds = %B24
  %t16 = sub i32 0, 1
  %t17 = sub i32 0, %t16
  %t18 = sub i32 0, %t17
  %t38 = add i32 %t18, 0
  br label %B29
B35:                               	; preds = %B24
  br label %B28
B29:                               	; preds = %B27, %B28
  call void @putint(i32 %t38)
  ret i32 0
B28:                               	; preds = %B35
  %t21 = add i32 0, 4
  %t38 = add i32 %t21, 0
  br label %B29
}
declare void @putint(i32)
