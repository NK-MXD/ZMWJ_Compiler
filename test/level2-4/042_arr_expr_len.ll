@N = global i32 -1, align 4
@arr = global [6 x i32] [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6], align 4
define i32 @main() {
B21:
  br label %B24
B24:                               	; preds = %B21
  %t43 = add i32 0, 0
  %t37 = add i32 0, 0
  %t11 = icmp slt i32 0, 6
  br i1 %t11, label %B25, label %B29
B25:                               	; preds = %B24, %B50
  %t15 = getelementptr inbounds [6 x i32], [6 x i32]* @arr, i32 0, i32 %t37
  %t30 = load i32, i32* %t15, align 4
  %t16 = add i32 %t43, %t30
  %t19 = add i32 %t37, 1
  %t32 = icmp slt i32 %t19, 6
  br i1 %t32, label %B50, label %B35
B29:                               	; preds = %B24
  %t44 = add i32 0, 0
  %t38 = add i32 0, 0
  br label %B26
B35:                               	; preds = %B25
  %t44 = add i32 %t16, 0
  %t38 = add i32 %t19, 0
  br label %B26
B50:                               	; preds = %B25
  %t43 = add i32 %t16, 0
  %t37 = add i32 %t19, 0
  br label %B25
B26:                               	; preds = %B29, %B35
  ret i32 %t44
}
