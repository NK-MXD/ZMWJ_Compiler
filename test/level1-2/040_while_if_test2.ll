define i32 @ifWhile() {
B24:
  %t5 = icmp eq i32 0, 5
  br i1 %t5, label %B27, label %B32
B27:                               	; preds = %B24
  br label %B33
B32:                               	; preds = %B24
  br label %B28
B33:                               	; preds = %B27
  %t73 = add i32 3, 0
  %t7 = icmp eq i32 3, 2
  br i1 %t7, label %B34, label %B38
B28:                               	; preds = %B32
  br label %B44
B34:                               	; preds = %B33, %B81
  %t10 = add i32 %t73, 2
  %t40 = icmp eq i32 %t10, 2
  br i1 %t40, label %B81, label %B43
B38:                               	; preds = %B33
  %t74 = add i32 3, 0
  br label %B35
B44:                               	; preds = %B28
  %t65 = add i32 3, 0
  %t57 = add i32 0, 0
  %t15 = icmp slt i32 0, 5
  br i1 %t15, label %B45, label %B49
B43:                               	; preds = %B34
  %t74 = add i32 %t10, 0
  br label %B35
B81:                               	; preds = %B34
  %t73 = add i32 %t10, 0
  br label %B34
B35:                               	; preds = %B38, %B43
  %t13 = add i32 %t74, 25
  %t68 = add i32 %t13, 0
  %t60 = add i32 0, 0
  br label %B29
B45:                               	; preds = %B44, %B85
  %t18 = mul i32 %t65, 2
  %t21 = add i32 %t57, 1
  %t51 = icmp slt i32 %t21, 5
  br i1 %t51, label %B85, label %B54
B49:                               	; preds = %B44
  %t66 = add i32 3, 0
  %t58 = add i32 0, 0
  br label %B46
B29:                               	; preds = %B35, %B46
  ret i32 %t68
B54:                               	; preds = %B45
  %t66 = add i32 %t18, 0
  %t58 = add i32 %t21, 0
  br label %B46
B85:                               	; preds = %B45
  %t65 = add i32 %t18, 0
  %t57 = add i32 %t21, 0
  br label %B45
B46:                               	; preds = %B49, %B54
  %t68 = add i32 %t66, 0
  %t60 = add i32 %t58, 0
  br label %B29
}
define i32 @main() {
B55:
  %t23 = call i32 @ifWhile()
  ret i32 %t23
}
