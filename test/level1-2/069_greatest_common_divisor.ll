define i32 @fun(i32 %t0, i32 %t2) {
B28:
  %t29 = alloca i32, align 4
  %t30 = alloca i32, align 4
  store i32 %t0, i32* %t29, align 4
  store i32 %t2, i32* %t30, align 4
  br label %B32
B32:                               	; preds = %B28
  %t5 = load i32, i32* %t30, align 4
  %t48 = add i32 0, 0
  %t6 = icmp sgt i32 %t5, 0
  br i1 %t6, label %B33, label %B37
B33:                               	; preds = %B32, %B56
  %t8 = load i32, i32* %t29, align 4
  %t9 = load i32, i32* %t30, align 4
  %t10 = srem i32 %t8, %t9
  %t12 = load i32, i32* %t30, align 4
  store i32 %t12, i32* %t29, align 4
  store i32 %t10, i32* %t30, align 4
  %t38 = load i32, i32* %t30, align 4
  %t39 = icmp sgt i32 %t38, 0
  br i1 %t39, label %B56, label %B42
B37:                               	; preds = %B32
  %t49 = add i32 0, 0
  br label %B34
B42:                               	; preds = %B33
  %t49 = add i32 %t10, 0
  br label %B34
B56:                               	; preds = %B33
  %t48 = add i32 %t10, 0
  br label %B33
B34:                               	; preds = %B37, %B42
  %t15 = load i32, i32* %t29, align 4
  ret i32 %t15
}
define i32 @main() {
B43:
  %t20 = call i32 @getint()
  %t22 = call i32 @getint()
  %t26 = call i32 @fun(i32 %t20, i32 %t22)
  call void @putint(i32 %t26)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
