@a = global i32 7, align 4
define i32 @func() {
B24:
  %t1 = load i32, i32* @a, align 4
  %t6 = icmp eq i32 1, %t1
  br i1 %t6, label %B27, label %B32
B27:                               	; preds = %B24
  %t9 = add i32 1, 1
  ret i32 1
B32:                               	; preds = %B24
  br label %B28
B28:                               	; preds = %B32
  ret i32 0
}
define i32 @main() {
B33:
  br label %B36
B36:                               	; preds = %B33
  %t70 = add i32 0, 0
  %t64 = add i32 0, 0
  %t13 = icmp slt i32 0, 100
  br i1 %t13, label %B37, label %B41
B37:                               	; preds = %B36, %B43
  %t14 = call i32 @func()
  %t15 = icmp eq i32 %t14, 1
  br i1 %t15, label %B42, label %B46
B41:                               	; preds = %B36
  %t71 = add i32 0, 0
  %t65 = add i32 0, 0
  br label %B38
B42:                               	; preds = %B37
  %t18 = add i32 %t64, 1
  %t62 = add i32 %t18, 0
  br label %B43
B46:                               	; preds = %B37
  %t62 = add i32 %t64, 0
  br label %B43
B38:                               	; preds = %B41, %B51
  %t23 = icmp slt i32 %t65, 100
  br i1 %t23, label %B52, label %B57
B43:                               	; preds = %B42, %B46
  %t21 = add i32 %t70, 1
  %t70 = add i32 %t21, 0
  %t64 = add i32 %t62, 0
  %t48 = icmp slt i32 %t21, 100
  br i1 %t48, label %B37, label %B51
B52:                               	; preds = %B38
  call void @putint(i32 1)
  br label %B54
B57:                               	; preds = %B38
  br label %B53
B51:                               	; preds = %B43
  %t71 = add i32 %t21, 0
  %t65 = add i32 %t62, 0
  br label %B38
B54:                               	; preds = %B52, %B53
  ret i32 0
B53:                               	; preds = %B57
  call void @putint(i32 0)
  br label %B54
}
declare void @putint(i32)
