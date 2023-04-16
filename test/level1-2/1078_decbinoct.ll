define i32 @dec2bin(i32 %t0) {
B37:
  %t38 = alloca i32, align 4
  store i32 %t0, i32* %t38, align 4
  %t9 = load i32, i32* %t38, align 4
  br label %B43
B43:                               	; preds = %B37
  %t75 = add i32 %t9, 0
  %t70 = add i32 0, 0
  %t64 = add i32 1, 0
  %t58 = add i32 0, 0
  %t11 = icmp ne i32 %t9, 0
  br i1 %t11, label %B44, label %B48
B44:                               	; preds = %B43, %B87
  %t14 = srem i32 %t75, 2
  %t18 = mul i32 %t64, %t14
  %t20 = add i32 %t18, %t58
  %t23 = mul i32 %t64, 10
  %t26 = sdiv i32 %t75, 2
  %t50 = icmp ne i32 %t26, 0
  br i1 %t50, label %B87, label %B53
B48:                               	; preds = %B43
  %t76 = add i32 %t9, 0
  %t71 = add i32 0, 0
  %t65 = add i32 1, 0
  %t59 = add i32 0, 0
  br label %B45
B53:                               	; preds = %B44
  %t76 = add i32 %t26, 0
  %t71 = add i32 %t14, 0
  %t65 = add i32 %t23, 0
  %t59 = add i32 %t20, 0
  br label %B45
B87:                               	; preds = %B44
  %t75 = add i32 %t26, 0
  %t70 = add i32 %t14, 0
  %t64 = add i32 %t23, 0
  %t58 = add i32 %t20, 0
  br label %B44
B45:                               	; preds = %B48, %B53
  ret i32 %t59
}
define i32 @main() {
B54:
  %t33 = call i32 @dec2bin(i32 400)
  call void @putint(i32 %t33)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
