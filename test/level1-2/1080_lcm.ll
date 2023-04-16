@n = global i32 0, align 4
define i32 @gcd(i32 %t1, i32 %t3) {
B50:
  %t51 = alloca i32, align 4
  %t52 = alloca i32, align 4
  store i32 %t1, i32* %t51, align 4
  store i32 %t3, i32* %t52, align 4
  %t8 = load i32, i32* %t51, align 4
  %t10 = load i32, i32* %t52, align 4
  %t13 = load i32, i32* %t51, align 4
  %t14 = load i32, i32* %t52, align 4
  %t15 = icmp slt i32 %t13, %t14
  br i1 %t15, label %B57, label %B61
B57:                               	; preds = %B50
  %t17 = load i32, i32* %t51, align 4
  %t19 = load i32, i32* %t52, align 4
  store i32 %t19, i32* %t51, align 4
  store i32 %t17, i32* %t52, align 4
  %t79 = add i32 %t17, 0
  br label %B58
B61:                               	; preds = %B50
  %t79 = add i32 0, 0
  br label %B58
B58:                               	; preds = %B57, %B61
  %t23 = load i32, i32* %t51, align 4
  %t24 = load i32, i32* %t52, align 4
  %t25 = srem i32 %t23, %t24
  br label %B62
B62:                               	; preds = %B58
  %t82 = add i32 %t25, 0
  %t27 = icmp ne i32 %t25, 0
  br i1 %t27, label %B63, label %B67
B63:                               	; preds = %B62, %B91
  %t29 = load i32, i32* %t52, align 4
  store i32 %t29, i32* %t51, align 4
  store i32 %t82, i32* %t52, align 4
  %t33 = load i32, i32* %t51, align 4
  %t34 = load i32, i32* %t52, align 4
  %t35 = srem i32 %t33, %t34
  %t69 = icmp ne i32 %t35, 0
  br i1 %t69, label %B91, label %B72
B67:                               	; preds = %B62
  %t83 = add i32 %t25, 0
  br label %B64
B72:                               	; preds = %B63
  %t83 = add i32 %t35, 0
  br label %B64
B91:                               	; preds = %B63
  %t82 = add i32 %t35, 0
  br label %B63
B64:                               	; preds = %B67, %B72
  %t38 = mul i32 %t8, %t10
  %t39 = load i32, i32* %t52, align 4
  %t40 = sdiv i32 %t38, %t39
  ret i32 %t40
}
define i32 @main() {
B73:
  %t44 = call i32 @getint()
  %t46 = call i32 @getint()
  %t49 = call i32 @gcd(i32 %t44, i32 %t46)
  ret i32 %t49
}
declare i32 @getint()
