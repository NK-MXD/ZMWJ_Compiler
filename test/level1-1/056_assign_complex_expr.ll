define i32 @main() {
B42:
  %t9 = sub i32 0, 2
  %t12 = mul i32 %t9, 1
  %t13 = sdiv i32 %t12, 2
  %t16 = sub i32 5, 5
  %t17 = add i32 %t13, %t16
  %t19 = add i32 1, 3
  %t20 = sub i32 0, %t19
  %t21 = srem i32 %t20, 2
  %t22 = sub i32 %t17, %t21
  call void @putint(i32 %t22)
  %t26 = srem i32 %t9, 2
  %t27 = add i32 %t26, 67
  %t31 = sub i32 0, %t16
  %t32 = add i32 %t27, %t31
  %t34 = add i32 1, 2
  %t35 = srem i32 %t34, 2
  %t36 = sub i32 0, %t35
  %t37 = sub i32 %t32, %t36
  %t40 = add i32 %t37, 3
  call void @putint(i32 %t40)
  ret i32 0
}
declare void @putint(i32)
