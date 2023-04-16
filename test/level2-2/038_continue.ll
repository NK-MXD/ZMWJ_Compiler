define i32 @main() {
B19:
  %t53 = add i32 0, 0
  %t44 = add i32 0, 0
  br label %B22
B22:                               	; preds = %B19, %B28
  %t49 = add i32 %t53, 0
  %t40 = add i32 %t44, 0
  %t5 = icmp slt i32 %t44, 100
  br i1 %t5, label %B23, label %B27
B23:                               	; preds = %B22, %B29
  %t7 = icmp eq i32 %t40, 50
  br i1 %t7, label %B28, label %B32
B27:                               	; preds = %B22
  %t50 = add i32 %t53, 0
  %t41 = add i32 %t44, 0
  br label %B24
B28:                               	; preds = %B23
  %t10 = add i32 %t40, 1
  %t53 = add i32 %t49, 0
  %t44 = add i32 %t10, 0
  br label %B22
B32:                               	; preds = %B23
  br label %B29
B24:                               	; preds = %B27, %B38
  ret i32 %t50
B29:                               	; preds = %B32
  %t14 = add i32 %t49, %t40
  %t17 = add i32 %t40, 1
  %t49 = add i32 %t14, 0
  %t40 = add i32 %t17, 0
  %t35 = icmp slt i32 %t17, 100
  br i1 %t35, label %B23, label %B38
B38:                               	; preds = %B29
  %t50 = add i32 %t14, 0
  %t41 = add i32 %t17, 0
  br label %B24
}
