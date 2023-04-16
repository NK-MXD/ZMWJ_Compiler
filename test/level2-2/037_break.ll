define i32 @main() {
B16:
  br label %B19
B19:                               	; preds = %B16
  %t43 = add i32 0, 0
  %t37 = add i32 0, 0
  %t5 = icmp slt i32 0, 100
  br i1 %t5, label %B20, label %B24
B20:                               	; preds = %B19, %B26
  %t7 = icmp eq i32 %t37, 50
  br i1 %t7, label %B25, label %B29
B24:                               	; preds = %B19
  %t44 = add i32 0, 0
  %t38 = add i32 0, 0
  br label %B21
B25:                               	; preds = %B20
  %t44 = add i32 %t43, 0
  %t38 = add i32 %t37, 0
  br label %B21
B29:                               	; preds = %B20
  br label %B26
B21:                               	; preds = %B24, %B25, %B35
  ret i32 %t44
B26:                               	; preds = %B29
  %t11 = add i32 %t43, %t37
  %t14 = add i32 %t37, 1
  %t43 = add i32 %t11, 0
  %t37 = add i32 %t14, 0
  %t32 = icmp slt i32 %t14, 100
  br i1 %t32, label %B20, label %B35
B35:                               	; preds = %B26
  %t44 = add i32 %t11, 0
  %t38 = add i32 %t14, 0
  br label %B21
}
