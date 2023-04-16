define i32 @main() {
B14:
  %t19 = icmp ne i32 10, 0
  %t3 = xor i1 %t19, true
  %t20 = icmp ne i1 %t3, 0
  %t4 = xor i1 %t20, true
  %t21 = icmp ne i1 %t4, 0
  %t5 = xor i1 %t21, true
  %t22 = zext i1 %t5 to i32
  %t6 = sub i32 0, %t22
  %t12 = icmp ne i32 %t6, 0
  br i1 %t12, label %B16, label %B24
B16:                               	; preds = %B14
  %t8 = sub i32 0, 1
  %t9 = sub i32 0, %t8
  %t10 = sub i32 0, %t9
  %t27 = add i32 %t10, 0
  br label %B18
B24:                               	; preds = %B14
  br label %B17
B18:                               	; preds = %B16, %B17
  ret i32 %t27
B17:                               	; preds = %B24
  %t27 = add i32 0, 0
  br label %B18
}
