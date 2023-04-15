define void @reverse(i32 %t0) {
B15:
  %t4 = icmp sle i32 %t0, 1
  br i1 %t4, label %B18, label %B23
B18:                               	; preds = %B15
  %t6 = call i32 @getint()
  call void @putint(i32 %t6)
  br label %B20
B23:                               	; preds = %B15
  br label %B19
B20:                               	; preds = %B18, %B19
  %t28 = phi i32[ %t6 , %B18 ], [ %t9 , %B19 ]
  ret void
B19:                               	; preds = %B23
  %t9 = call i32 @getint()
  %t11 = sub i32 %t0, 1
  call void @reverse(i32 %t11)
  call void @putint(i32 %t9)
  br label %B20
}
define i32 @main() {
B24:
  call void @reverse(i32 200)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
