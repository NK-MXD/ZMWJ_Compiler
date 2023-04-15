@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @factor(i32 %t2) {
B32:
  %t33 = alloca i32, align 4
  %t34 = alloca i32, align 4
  %t35 = alloca i32, align 4
  store i32 %t2, i32* %t33, align 4
  store i32 0, i32* %t35, align 4
  store i32 1, i32* %t34, align 4
  br label %B36
B36:                               	; preds = %B32
  %t8 = load i32, i32* %t34, align 4
  %t9 = load i32, i32* %t33, align 4
  %t10 = add i32 %t9, 1
  %t11 = icmp slt i32 %t8, %t10
  br i1 %t11, label %B37, label %B41
B37:                               	; preds = %B36, %B43
  %t12 = load i32, i32* %t33, align 4
  %t13 = load i32, i32* %t34, align 4
  %t14 = srem i32 %t12, %t13
  %t15 = icmp eq i32 %t14, 0
  br i1 %t15, label %B42, label %B46
B41:                               	; preds = %B36
  br label %B38
B42:                               	; preds = %B37
  %t17 = load i32, i32* %t35, align 4
  %t18 = load i32, i32* %t34, align 4
  %t19 = add i32 %t17, %t18
  store i32 %t19, i32* %t35, align 4
  br label %B43
B46:                               	; preds = %B37
  br label %B43
B38:                               	; preds = %B41, %B53
  %t23 = load i32, i32* %t35, align 4
  ret i32 %t23
B43:                               	; preds = %B42, %B46
  %t21 = load i32, i32* %t34, align 4
  %t22 = add i32 %t21, 1
  store i32 %t22, i32* %t34, align 4
  %t47 = load i32, i32* %t34, align 4
  %t48 = load i32, i32* %t33, align 4
  %t49 = add i32 %t48, 1
  %t50 = icmp slt i32 %t47, %t49
  br i1 %t50, label %B37, label %B53
B53:                               	; preds = %B43
  br label %B38
}
define i32 @main() {
B54:
  %t55 = alloca i32, align 4
  %t56 = alloca i32, align 4
  %t57 = alloca i32, align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  store i32 1478, i32* %t56, align 4
  %t30 = load i32, i32* %t56, align 4
  %t31 = call i32 @factor(i32 %t30)
  ret i32 %t31
}
