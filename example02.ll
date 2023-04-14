define i32 @fun(i32 %t0, i32 %t2) {
B34:
  br label %B38
B38:                               	; preds = %B34
  %t6 = icmp sgt i32 %t2, 0
  %t66 = add i32 0, 0
  %t60 = add i32 %t2, 0
  %t54 = add i32 %t0, 0
  br i1 %t6, label %B39, label %B43
B39:                               	; preds = %B38, %B39
  %t10 = srem i32 %t54, %t60
  call void @putint(i32 %t10)
  call void @putint(i32 %t10)
  call void @putint(i32 %t60)
  call void @putch(i32 32)
  %t45 = icmp sgt i32 %t10, 0
  %t66 = add i32 %t10, 0
  %t60 = add i32 %t10, 0
  %t54 = add i32 %t60, 0
  br i1 %t45, label %B39, label %B48
B43:                               	; preds = %B38
  %t67 = add i32 0, 0
  %t61 = add i32 %t2, 0
  %t55 = add i32 %t0, 0
  br label %B40
B48:                               	; preds = %B39
  %t67 = add i32 %t10, 0
  %t61 = add i32 %t10, 0
  %t55 = add i32 %t60, 0
  br label %B40
B40:                               	; preds = %B43, %B48
  call void @putint(i32 %t67)
  call void @putch(i32 32)
  call void @putint(i32 %t61)
  call void @putch(i32 32)
  call void @putint(i32 %t55)
  call void @putch(i32 32)
  ret i32 %t55
}
define i32 @main() {
B49:
  %t26 = call i32 @getint()
  %t28 = call i32 @getint()
  %t32 = call i32 @fun(i32 %t26, i32 %t28)
  call void @putint(i32 %t32)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
