define void @move(i32 %t0, i32 %t2) {
B38:
  %t39 = alloca i32, align 4
  %t40 = alloca i32, align 4
  store i32 %t0, i32* %t39, align 4
  store i32 %t2, i32* %t40, align 4
  %t4 = load i32, i32* %t39, align 4
  call void @putint(i32 %t4)
  call void @putch(i32 32)
  %t5 = load i32, i32* %t40, align 4
  call void @putint(i32 %t5)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}
define void @hanoi(i32 %t6, i32 %t8, i32 %t10, i32 %t12) {
B41:
  %t42 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t45 = alloca i32, align 4
  store i32 %t6, i32* %t42, align 4
  store i32 %t8, i32* %t43, align 4
  store i32 %t10, i32* %t44, align 4
  store i32 %t12, i32* %t45, align 4
  %t14 = load i32, i32* %t42, align 4
  %t15 = icmp eq i32 %t14, 1
  br i1 %t15, label %B46, label %B51
B46:                               	; preds = %B41
  %t16 = load i32, i32* %t43, align 4
  %t17 = load i32, i32* %t45, align 4
  call void @move(i32 %t16, i32 %t17)
  br label %B48
B51:                               	; preds = %B41
  br label %B47
B48:                               	; preds = %B46, %B47
  ret void
B47:                               	; preds = %B51
  %t18 = load i32, i32* %t42, align 4
  %t19 = sub i32 %t18, 1
  %t20 = load i32, i32* %t43, align 4
  %t21 = load i32, i32* %t45, align 4
  %t22 = load i32, i32* %t44, align 4
  call void @hanoi(i32 %t19, i32 %t20, i32 %t21, i32 %t22)
  %t23 = load i32, i32* %t43, align 4
  %t24 = load i32, i32* %t45, align 4
  call void @move(i32 %t23, i32 %t24)
  %t25 = load i32, i32* %t42, align 4
  %t26 = sub i32 %t25, 1
  %t27 = load i32, i32* %t44, align 4
  %t28 = load i32, i32* %t43, align 4
  %t29 = load i32, i32* %t45, align 4
  call void @hanoi(i32 %t26, i32 %t27, i32 %t28, i32 %t29)
  br label %B48
}
define i32 @main() {
B52:
  %t53 = alloca i32, align 4
  %t30 = call i32 @getint()
  store i32 %t30, i32* %t53, align 4
  br label %B54
B54:                               	; preds = %B52
  %t32 = load i32, i32* %t53, align 4
  %t33 = icmp sgt i32 %t32, 0
  br i1 %t33, label %B55, label %B59
B55:                               	; preds = %B54, %B55
  %t34 = call i32 @getint()
  call void @hanoi(i32 %t34, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %t36 = load i32, i32* %t53, align 4
  %t37 = sub i32 %t36, 1
  store i32 %t37, i32* %t53, align 4
  %t60 = load i32, i32* %t53, align 4
  %t61 = icmp sgt i32 %t60, 0
  br i1 %t61, label %B55, label %B64
B59:                               	; preds = %B54
  br label %B56
B64:                               	; preds = %B55
  br label %B56
B56:                               	; preds = %B59, %B64
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
