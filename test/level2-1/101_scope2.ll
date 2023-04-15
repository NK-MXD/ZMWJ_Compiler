@k = global i32 0, align 4
define i32 @main() {
B31:
  %t37 = alloca i32, align 4
  %t49 = alloca i32, align 4
  %t50 = alloca i32, align 4
  %t51 = alloca i32, align 4
  store i32 3389, i32* @k, align 4
  %t2 = load i32, i32* @k, align 4
  %t3 = icmp slt i32 %t2, 10000
  br i1 %t3, label %B32, label %B36
B32:                               	; preds = %B31
  %t5 = load i32, i32* @k, align 4
  %t6 = add i32 %t5, 1
  store i32 %t6, i32* @k, align 4
  store i32 112, i32* %t37, align 4
  br label %B38
B36:                               	; preds = %B31
  br label %B33
B38:                               	; preds = %B32
  %t8 = load i32, i32* %t37, align 4
  %t9 = icmp sgt i32 %t8, 10
  br i1 %t9, label %B39, label %B43
B33:                               	; preds = %B36, %B40
  %t30 = load i32, i32* @k, align 4
  ret i32 %t30
B39:                               	; preds = %B38, %B45
  %t11 = load i32, i32* %t37, align 4
  %t12 = sub i32 %t11, 88
  store i32 %t12, i32* %t37, align 4
  %t13 = load i32, i32* %t37, align 4
  %t14 = icmp slt i32 %t13, 1000
  br i1 %t14, label %B44, label %B48
B43:                               	; preds = %B38
  br label %B40
B44:                               	; preds = %B39
  store i32 9, i32* %t49, align 4
  store i32 11, i32* %t50, align 4
  store i32 10, i32* %t49, align 4
  %t19 = load i32, i32* %t37, align 4
  %t20 = load i32, i32* %t49, align 4
  %t21 = sub i32 %t19, %t20
  store i32 %t21, i32* %t37, align 4
  store i32 11, i32* %t51, align 4
  %t24 = load i32, i32* %t37, align 4
  %t25 = load i32, i32* %t51, align 4
  %t26 = add i32 %t24, %t25
  %t27 = load i32, i32* %t50, align 4
  %t28 = add i32 %t26, %t27
  store i32 %t28, i32* %t37, align 4
  br label %B45
B48:                               	; preds = %B39
  br label %B45
B40:                               	; preds = %B43, %B56
  %t29 = load i32, i32* %t37, align 4
  call void @putint(i32 %t29)
  br label %B33
B45:                               	; preds = %B44, %B48
  %t52 = load i32, i32* %t37, align 4
  %t53 = icmp sgt i32 %t52, 10
  br i1 %t53, label %B39, label %B56
B56:                               	; preds = %B45
  br label %B40
}
declare void @putint(i32)
