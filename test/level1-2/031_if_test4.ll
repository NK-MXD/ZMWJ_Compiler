define i32 @if_ifElse_() {
B14:
  %t5 = icmp eq i32 5, 5
  br i1 %t5, label %B17, label %B21
B17:                               	; preds = %B14
  %t7 = icmp eq i32 10, 10
  br i1 %t7, label %B22, label %B27
B21:                               	; preds = %B14
  %t32 = add i32 5, 0
  br label %B18
B22:                               	; preds = %B17
  %t30 = add i32 25, 0
  br label %B24
B27:                               	; preds = %B17
  br label %B23
B18:                               	; preds = %B21, %B24
  ret i32 %t32
B24:                               	; preds = %B22, %B23
  %t32 = add i32 %t30, 0
  br label %B18
B23:                               	; preds = %B27
  %t11 = add i32 5, 15
  %t30 = add i32 %t11, 0
  br label %B24
}
define i32 @main() {
B28:
  %t13 = call i32 @if_ifElse_()
  ret i32 %t13
}
