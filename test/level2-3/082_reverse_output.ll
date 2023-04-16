define void @reverse(i32 %t0) {
B15:
  %t16 = alloca i32, align 4
  store i32 %t0, i32* %t16, align 4
  %t3 = load i32, i32* %t16, align 4
  %t4 = icmp sle i32 %t3, 1
  br i1 %t4, label %B18, label %B23
B18:                               	; preds = %B15
  %t6 = call i32 @getint()
  call void @putint(i32 %t6)
  %t27 = add i32 %t6, 0
  br label %B20
B23:                               	; preds = %B15
  br label %B19
B20:                               	; preds = %B18, %B19
  ret void
B19:                               	; preds = %B23
  %t9 = call i32 @getint()
  %t10 = load i32, i32* %t16, align 4
  %t11 = sub i32 %t10, 1
  call void @reverse(i32 %t11)
  call void @putint(i32 %t9)
  %t27 = add i32 %t9, 0
  br label %B20
}
define i32 @main() {
B24:
  call void @reverse(i32 200)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
