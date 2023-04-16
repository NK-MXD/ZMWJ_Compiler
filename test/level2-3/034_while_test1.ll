define i32 @doubleWhile() {
B19:
  br label %B22
B22:                               	; preds = %B19
  %t52 = add i32 7, 0
  %t46 = add i32 5, 0
  %t5 = icmp slt i32 5, 100
  br i1 %t5, label %B23, label %B27
B23:                               	; preds = %B22, %B30
  %t8 = add i32 %t46, 30
  br label %B28
B27:                               	; preds = %B22
  %t53 = add i32 7, 0
  %t47 = add i32 5, 0
  br label %B24
B28:                               	; preds = %B23
  %t57 = add i32 %t52, 0
  %t10 = icmp slt i32 %t52, 100
  br i1 %t10, label %B29, label %B33
B24:                               	; preds = %B27, %B43
  ret i32 %t53
B29:                               	; preds = %B28, %B67
  %t13 = add i32 %t57, 6
  %t35 = icmp slt i32 %t13, 100
  br i1 %t35, label %B67, label %B38
B33:                               	; preds = %B28
  %t58 = add i32 %t52, 0
  br label %B30
B38:                               	; preds = %B29
  %t58 = add i32 %t13, 0
  br label %B30
B67:                               	; preds = %B29
  %t57 = add i32 %t13, 0
  br label %B29
B30:                               	; preds = %B33, %B38
  %t16 = sub i32 %t58, 100
  %t52 = add i32 %t16, 0
  %t46 = add i32 %t8, 0
  %t40 = icmp slt i32 %t8, 100
  br i1 %t40, label %B23, label %B43
B43:                               	; preds = %B30
  %t53 = add i32 %t16, 0
  %t47 = add i32 %t8, 0
  br label %B24
}
define i32 @main() {
B44:
  %t18 = call i32 @doubleWhile()
  ret i32 %t18
}
