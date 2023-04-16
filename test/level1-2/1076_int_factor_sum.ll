@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @factor(i32 %t2) {
B32:
  %t33 = alloca i32, align 4
  store i32 %t2, i32* %t33, align 4
  br label %B36
B36:                               	; preds = %B32
  %t9 = load i32, i32* %t33, align 4
  %t10 = add i32 %t9, 1
  %t67 = add i32 0, 0
  %t59 = add i32 1, 0
  %t11 = icmp slt i32 1, %t10
  br i1 %t11, label %B37, label %B41
B37:                               	; preds = %B36, %B43
  %t12 = load i32, i32* %t33, align 4
  %t14 = srem i32 %t12, %t59
  %t15 = icmp eq i32 %t14, 0
  br i1 %t15, label %B42, label %B46
B41:                               	; preds = %B36
  %t68 = add i32 0, 0
  %t60 = add i32 1, 0
  br label %B38
B42:                               	; preds = %B37
  %t19 = add i32 %t67, %t59
  %t65 = add i32 %t19, 0
  br label %B43
B46:                               	; preds = %B37
  %t65 = add i32 %t67, 0
  br label %B43
B38:                               	; preds = %B41, %B53
  ret i32 %t68
B43:                               	; preds = %B42, %B46
  %t22 = add i32 %t59, 1
  %t48 = load i32, i32* %t33, align 4
  %t49 = add i32 %t48, 1
  %t67 = add i32 %t65, 0
  %t59 = add i32 %t22, 0
  %t50 = icmp slt i32 %t22, %t49
  br i1 %t50, label %B37, label %B53
B53:                               	; preds = %B43
  %t68 = add i32 %t65, 0
  %t60 = add i32 %t22, 0
  br label %B38
}
define i32 @main() {
B54:
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  %t31 = call i32 @factor(i32 1478)
  ret i32 %t31
}
