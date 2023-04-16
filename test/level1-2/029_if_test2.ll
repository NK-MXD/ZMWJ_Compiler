define i32 @ifElseIf() {
B30:
  %t5 = icmp eq i32 5, 6
  br i1 %t5, label %B33, label %B39
B33:                               	; preds = %B30, %B36
  ret i32 5
B39:                               	; preds = %B30
  br label %B36
B36:                               	; preds = %B39
  %t7 = icmp eq i32 10, 11
  br i1 %t7, label %B33, label %B42
B42:                               	; preds = %B36
  br label %B34
B34:                               	; preds = %B42
  %t11 = icmp eq i32 10, 10
  br i1 %t11, label %B46, label %B49
B46:                               	; preds = %B34
  %t13 = icmp eq i32 5, 1
  br i1 %t13, label %B43, label %B52
B49:                               	; preds = %B34
  br label %B44
B43:                               	; preds = %B46
  %t67 = add i32 25, 0
  br label %B45
B52:                               	; preds = %B46
  br label %B44
B44:                               	; preds = %B49, %B52
  %t17 = icmp eq i32 10, 10
  br i1 %t17, label %B56, label %B59
B45:                               	; preds = %B43, %B55
  br label %B35
B56:                               	; preds = %B44
  %t19 = sub i32 0, 5
  %t20 = icmp eq i32 5, %t19
  br i1 %t20, label %B53, label %B62
B59:                               	; preds = %B44
  br label %B54
B35:                               	; preds = %B45
  ret i32 %t67
B53:                               	; preds = %B56
  %t24 = add i32 5, 15
  %t65 = add i32 %t24, 0
  br label %B55
B62:                               	; preds = %B56
  br label %B54
B54:                               	; preds = %B59, %B62
  %t27 = sub i32 0, 5
  %t65 = add i32 %t27, 0
  br label %B55
B55:                               	; preds = %B53, %B54
  %t67 = add i32 %t65, 0
  br label %B45
}
define i32 @main() {
B63:
  %t29 = call i32 @ifElseIf()
  call void @putint(i32 %t29)
  ret i32 0
}
declare void @putint(i32)
