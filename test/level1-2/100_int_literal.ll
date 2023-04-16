@s = global i32 0, align 4
define i32 @get_ans_se(i32 %t1, i32 %t3, i32 %t5) {
B190:
  %t191 = alloca i32, align 4
  %t192 = alloca i32, align 4
  %t193 = alloca i32, align 4
  store i32 %t1, i32* %t191, align 4
  store i32 %t3, i32* %t192, align 4
  store i32 %t5, i32* %t193, align 4
  %t8 = load i32, i32* %t192, align 4
  %t9 = load i32, i32* %t193, align 4
  %t10 = icmp eq i32 %t8, %t9
  br i1 %t10, label %B195, label %B199
B195:                               	; preds = %B190
  %t221 = add i32 1, 0
  br label %B196
B199:                               	; preds = %B190
  %t221 = add i32 0, 0
  br label %B196
B196:                               	; preds = %B195, %B199
  %t13 = load i32, i32* %t191, align 4
  %t14 = mul i32 %t13, 2
  store i32 %t14, i32* %t191, align 4
  %t16 = load i32, i32* %t191, align 4
  %t18 = add i32 %t16, %t221
  store i32 %t18, i32* %t191, align 4
  %t20 = load i32, i32* @s, align 4
  %t21 = load i32, i32* %t191, align 4
  %t22 = add i32 %t20, %t21
  store i32 %t22, i32* @s, align 4
  %t23 = load i32, i32* %t191, align 4
  ret i32 %t23
}
define i32 @get_ans(i32 %t24, i32 %t26, i32 %t28) {
B200:
  %t201 = alloca i32, align 4
  %t202 = alloca i32, align 4
  %t203 = alloca i32, align 4
  store i32 %t24, i32* %t201, align 4
  store i32 %t26, i32* %t202, align 4
  store i32 %t28, i32* %t203, align 4
  %t31 = load i32, i32* %t202, align 4
  %t32 = load i32, i32* %t203, align 4
  %t33 = icmp eq i32 %t31, %t32
  br i1 %t33, label %B205, label %B209
B205:                               	; preds = %B200
  %t225 = add i32 1, 0
  br label %B206
B209:                               	; preds = %B200
  %t225 = add i32 0, 0
  br label %B206
B206:                               	; preds = %B205, %B209
  %t36 = load i32, i32* %t201, align 4
  %t37 = mul i32 %t36, 2
  store i32 %t37, i32* %t201, align 4
  %t39 = load i32, i32* %t201, align 4
  %t41 = add i32 %t39, %t225
  store i32 %t41, i32* %t201, align 4
  %t42 = load i32, i32* %t201, align 4
  ret i32 %t42
}
define i32 @main() {
B210:
  %t43 = sub i32 0, -2147483648
  %t46 = add i32 -2147483648, 1
  %t49 = sub i32 2147483647, 1
  %t58 = call i32 @get_ans(i32 0, i32 %t43, i32 -2147483648)
  %t62 = add i32 %t43, 1
  %t64 = call i32 @get_ans(i32 %t58, i32 %t62, i32 %t46)
  %t69 = sub i32 0, 2147483647
  %t70 = sub i32 %t69, 1
  %t71 = call i32 @get_ans(i32 %t64, i32 %t43, i32 %t70)
  %t76 = add i32 %t49, 1
  %t77 = call i32 @get_ans(i32 %t71, i32 %t43, i32 %t76)
  %t81 = sdiv i32 -2147483648, 2
  %t83 = sdiv i32 %t46, 2
  %t84 = call i32 @get_ans(i32 %t77, i32 %t81, i32 %t83)
  %t91 = call i32 @get_ans(i32 %t84, i32 -2147483648, i32 %t70)
  %t97 = call i32 @get_ans(i32 %t91, i32 -2147483648, i32 %t76)
  %t101 = call i32 @get_ans(i32 0, i32 %t46, i32 2147483647)
  %t106 = call i32 @get_ans(i32 %t101, i32 %t46, i32 %t49)
  %t111 = call i32 @get_ans(i32 %t106, i32 2147483647, i32 %t49)
  %t115 = sdiv i32 %t43, 2
  %t118 = call i32 @get_ans(i32 %t111, i32 %t115, i32 %t81)
  %t122 = call i32 @get_ans_se(i32 0, i32 %t43, i32 -2147483648)
  %t128 = call i32 @get_ans_se(i32 %t122, i32 %t62, i32 %t46)
  %t135 = call i32 @get_ans_se(i32 %t128, i32 %t43, i32 %t70)
  %t141 = call i32 @get_ans_se(i32 %t135, i32 %t43, i32 %t76)
  %t148 = call i32 @get_ans_se(i32 %t141, i32 %t81, i32 %t83)
  %t155 = call i32 @get_ans_se(i32 %t148, i32 -2147483648, i32 %t70)
  %t161 = call i32 @get_ans_se(i32 %t155, i32 -2147483648, i32 %t76)
  %t165 = call i32 @get_ans_se(i32 0, i32 %t46, i32 2147483647)
  %t170 = call i32 @get_ans_se(i32 %t165, i32 %t46, i32 %t49)
  %t175 = call i32 @get_ans_se(i32 %t170, i32 2147483647, i32 %t49)
  %t182 = call i32 @get_ans_se(i32 %t175, i32 %t115, i32 %t81)
  %t185 = add i32 %t97, %t118
  %t187 = add i32 %t185, %t161
  %t189 = add i32 %t187, %t182
  ret i32 %t189
}
