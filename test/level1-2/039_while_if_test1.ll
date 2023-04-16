define i32 @whileIf() {
B20:
  br label %B23
B23:                               	; preds = %B20
  %t58 = add i32 0, 0
  %t48 = add i32 0, 0
  %t5 = icmp slt i32 0, 100
  br i1 %t5, label %B24, label %B28
B24:                               	; preds = %B23, %B31
  %t7 = icmp eq i32 %t48, 5
  br i1 %t7, label %B29, label %B34
B28:                               	; preds = %B23
  %t59 = add i32 0, 0
  %t49 = add i32 0, 0
  br label %B25
B29:                               	; preds = %B24
  %t56 = add i32 25, 0
  br label %B31
B34:                               	; preds = %B24
  br label %B30
B25:                               	; preds = %B28, %B45
  ret i32 %t59
B31:                               	; preds = %B29, %B37
  %t17 = add i32 %t48, 1
  %t58 = add i32 %t56, 0
  %t48 = add i32 %t17, 0
  %t42 = icmp slt i32 %t17, 100
  br i1 %t42, label %B24, label %B45
B30:                               	; preds = %B34
  %t10 = icmp eq i32 %t48, 10
  br i1 %t10, label %B35, label %B40
B45:                               	; preds = %B31
  %t59 = add i32 %t56, 0
  %t49 = add i32 %t17, 0
  br label %B25
B35:                               	; preds = %B30
  %t54 = add i32 42, 0
  br label %B37
B40:                               	; preds = %B30
  br label %B36
B37:                               	; preds = %B35, %B36
  %t56 = add i32 %t54, 0
  br label %B31
B36:                               	; preds = %B40
  %t14 = mul i32 %t48, 2
  %t54 = add i32 %t14, 0
  br label %B37
}
define i32 @main() {
B46:
  %t19 = call i32 @whileIf()
  ret i32 %t19
}
