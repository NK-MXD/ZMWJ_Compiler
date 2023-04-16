define i32 @f(i32 %t0, i32 %t2) {
B28:
  %t29 = alloca i32, align 4
  %t30 = alloca i32, align 4
  store i32 %t0, i32* %t29, align 4
  store i32 %t2, i32* %t30, align 4
  %t4 = load i32, i32* %t29, align 4
  %t5 = load i32, i32* %t30, align 4
  %t6 = mul i32 %t4, %t5
  ret i32 %t6
}
define i32 @g(i32 %t7, i32 %t9) {
B31:
  %t32 = alloca i32, align 4
  %t33 = alloca i32, align 4
  store i32 %t7, i32* %t32, align 4
  store i32 %t9, i32* %t33, align 4
  %t11 = load i32, i32* %t32, align 4
  %t12 = load i32, i32* %t33, align 4
  %t13 = srem i32 %t11, %t12
  ret i32 %t13
}
define i32 @h(i32 %t14, i32 %t16) {
B34:
  %t35 = alloca i32, align 4
  %t36 = alloca i32, align 4
  store i32 %t14, i32* %t35, align 4
  store i32 %t16, i32* %t36, align 4
  %t18 = load i32, i32* %t35, align 4
  %t19 = load i32, i32* %t36, align 4
  %t20 = call i32 @g(i32 %t18, i32 %t19)
  %t21 = call i32 @f(i32 2, i32 %t20)
  %t22 = load i32, i32* %t35, align 4
  %t23 = load i32, i32* %t36, align 4
  %t24 = call i32 @f(i32 %t22, i32 %t23)
  %t25 = call i32 @g(i32 %t24, i32 4)
  %t26 = call i32 @f(i32 %t21, i32 %t25)
  ret i32 %t26
}
define i32 @main() {
B37:
  %t27 = call i32 @h(i32 11, i32 3)
  call void @putint(i32 %t27)
  ret i32 0
}
declare void @putint(i32)
