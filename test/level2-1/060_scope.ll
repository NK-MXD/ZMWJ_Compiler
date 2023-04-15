@a = global i32 7, align 4
define i32 @func() {
B24:
  %t25 = alloca i32, align 4
  %t26 = alloca i32, align 4
  %t1 = load i32, i32* @a, align 4
  store i32 %t1, i32* %t25, align 4
  store i32 1, i32* %t26, align 4
  %t4 = load i32, i32* %t26, align 4
  %t5 = load i32, i32* %t25, align 4
  %t6 = icmp eq i32 %t4, %t5
  br i1 %t6, label %B27, label %B32
B27:                               	; preds = %B24
  %t8 = load i32, i32* %t26, align 4
  %t9 = add i32 %t8, 1
  store i32 %t9, i32* %t26, align 4
  ret i32 1
B32:                               	; preds = %B24
  br label %B28
B28:                               	; preds = %B32
  ret i32 0
}
define i32 @main() {
B33:
  %t34 = alloca i32, align 4
  %t35 = alloca i32, align 4
  store i32 0, i32* %t34, align 4
  store i32 0, i32* %t35, align 4
  br label %B36
B36:                               	; preds = %B33
  %t12 = load i32, i32* %t35, align 4
  %t13 = icmp slt i32 %t12, 100
  br i1 %t13, label %B37, label %B41
B37:                               	; preds = %B36, %B43
  %t14 = call i32 @func()
  %t15 = icmp eq i32 %t14, 1
  br i1 %t15, label %B42, label %B46
B41:                               	; preds = %B36
  br label %B38
B42:                               	; preds = %B37
  %t17 = load i32, i32* %t34, align 4
  %t18 = add i32 %t17, 1
  store i32 %t18, i32* %t34, align 4
  br label %B43
B46:                               	; preds = %B37
  br label %B43
B38:                               	; preds = %B41, %B51
  %t22 = load i32, i32* %t34, align 4
  %t23 = icmp slt i32 %t22, 100
  br i1 %t23, label %B52, label %B57
B43:                               	; preds = %B42, %B46
  %t20 = load i32, i32* %t35, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t35, align 4
  %t47 = load i32, i32* %t35, align 4
  %t48 = icmp slt i32 %t47, 100
  br i1 %t48, label %B37, label %B51
B52:                               	; preds = %B38
  call void @putint(i32 1)
  br label %B54
B57:                               	; preds = %B38
  br label %B53
B51:                               	; preds = %B43
  br label %B38
B54:                               	; preds = %B52, %B53
  ret i32 0
B53:                               	; preds = %B57
  call void @putint(i32 0)
  br label %B54
}
declare void @putint(i32)
