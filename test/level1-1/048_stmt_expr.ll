@k = global i32 0, align 4
@n = global i32 10, align 4
define i32 @main() {
B19:
  store i32 1, i32* @k, align 4
  br label %B21
B21:                               	; preds = %B19
  %t5 = load i32, i32* @n, align 4
  %t6 = sub i32 %t5, 1
  %t35 = add i32 0, 0
  %t7 = icmp sle i32 0, %t6
  br i1 %t7, label %B22, label %B26
B22:                               	; preds = %B21, %B41
  %t10 = add i32 %t35, 1
  %t11 = load i32, i32* @k, align 4
  %t12 = add i32 %t11, 1
  %t14 = load i32, i32* @k, align 4
  %t15 = load i32, i32* @k, align 4
  %t16 = add i32 %t14, %t15
  store i32 %t16, i32* @k, align 4
  %t28 = load i32, i32* @n, align 4
  %t29 = sub i32 %t28, 1
  %t30 = icmp sle i32 %t10, %t29
  br i1 %t30, label %B41, label %B33
B26:                               	; preds = %B21
  %t36 = add i32 0, 0
  br label %B23
B33:                               	; preds = %B22
  %t36 = add i32 %t10, 0
  br label %B23
B41:                               	; preds = %B22
  %t35 = add i32 %t10, 0
  br label %B22
B23:                               	; preds = %B26, %B33
  %t17 = load i32, i32* @k, align 4
  call void @putint(i32 %t17)
  %t18 = load i32, i32* @k, align 4
  ret i32 %t18
}
declare void @putint(i32)
