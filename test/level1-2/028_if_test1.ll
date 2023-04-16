define i32 @ifElse() {
B10:
  %t3 = icmp eq i32 5, 5
  br i1 %t3, label %B12, label %B17
B12:                               	; preds = %B10
  %t20 = add i32 25, 0
  br label %B14
B17:                               	; preds = %B10
  br label %B13
B14:                               	; preds = %B12, %B13
  ret i32 %t20
B13:                               	; preds = %B17
  %t7 = mul i32 5, 2
  %t20 = add i32 %t7, 0
  br label %B14
}
define i32 @main() {
B18:
  %t9 = call i32 @ifElse()
  ret i32 %t9
}
