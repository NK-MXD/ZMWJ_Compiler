define i32 @main() {
B14:
  br label %B17
B17:                               	; preds = %B14
  %t35 = add i32 0, 0
  %t29 = add i32 0, 0
  %t5 = icmp slt i32 0, 21
  br i1 %t5, label %B18, label %B22
B18:                               	; preds = %B17, %B42
  %t9 = mul i32 %t35, %t29
  %t12 = add i32 %t29, 1
  %t24 = icmp slt i32 %t12, 21
  br i1 %t24, label %B42, label %B27
B22:                               	; preds = %B17
  %t36 = add i32 0, 0
  %t30 = add i32 0, 0
  br label %B19
B27:                               	; preds = %B18
  %t36 = add i32 %t9, 0
  %t30 = add i32 %t12, 0
  br label %B19
B42:                               	; preds = %B18
  %t35 = add i32 %t9, 0
  %t29 = add i32 %t12, 0
  br label %B18
B19:                               	; preds = %B22, %B27
  call void @putint(i32 %t36)
  ret i32 0
}
declare void @putint(i32)
