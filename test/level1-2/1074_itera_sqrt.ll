define i32 @fsqrt(i32 %t0) {
B32:
  %t33 = alloca i32, align 4
  store i32 %t0, i32* %t33, align 4
  %t5 = load i32, i32* %t33, align 4
  %t6 = sdiv i32 %t5, 2
  br label %B36
B36:                               	; preds = %B32
  %t9 = sub i32 0, %t6
  %t53 = add i32 0, 0
  %t59 = add i32 %t6, 0
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %B37, label %B41
B37:                               	; preds = %B36, %B70
  %t15 = load i32, i32* %t33, align 4
  %t17 = sdiv i32 %t15, %t59
  %t18 = add i32 %t59, %t17
  %t21 = sdiv i32 %t18, 2
  %t44 = sub i32 %t59, %t21
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %B70, label %B48
B41:                               	; preds = %B36
  %t60 = add i32 %t6, 0
  %t54 = add i32 0, 0
  br label %B38
B48:                               	; preds = %B37
  %t60 = add i32 %t21, 0
  %t54 = add i32 %t59, 0
  br label %B38
B70:                               	; preds = %B37
  %t53 = add i32 %t59, 0
  %t59 = add i32 %t21, 0
  br label %B37
B38:                               	; preds = %B41, %B48
  ret i32 %t60
}
define i32 @main() {
B49:
  %t28 = call i32 @fsqrt(i32 400)
  call void @putint(i32 %t28)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
