@g = global i32 0, align 4
define i32 @func(i32 %t1) {
B58:
  %t59 = alloca i32, align 4
  store i32 %t1, i32* %t59, align 4
  %t4 = load i32, i32* @g, align 4
  %t5 = load i32, i32* %t59, align 4
  %t6 = add i32 %t4, %t5
  store i32 %t6, i32* @g, align 4
  %t7 = load i32, i32* @g, align 4
  call void @putint(i32 %t7)
  %t8 = load i32, i32* @g, align 4
  ret i32 %t8
}
define i32 @main() {
B60:
  %t61 = alloca i32, align 4
  %t11 = call i32 @getint()
  store i32 %t11, i32* %t61, align 4
  %t12 = load i32, i32* %t61, align 4
  %t13 = icmp sgt i32 %t12, 10
  br i1 %t13, label %B65, label %B68
B65:                               	; preds = %B60
  %t14 = load i32, i32* %t61, align 4
  %t15 = call i32 @func(i32 %t14)
  %t17 = icmp ne i32 %t15, 0
  br i1 %t17, label %B62, label %B70
B68:                               	; preds = %B60
  br label %B63
B62:                               	; preds = %B65
  store i32 1, i32* %t61, align 4
  br label %B64
B70:                               	; preds = %B65
  br label %B63
B63:                               	; preds = %B68, %B70
  store i32 0, i32* %t61, align 4
  br label %B64
B64:                               	; preds = %B62, %B63
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t61, align 4
  %t22 = load i32, i32* %t61, align 4
  %t23 = icmp sgt i32 %t22, 11
  br i1 %t23, label %B75, label %B78
B75:                               	; preds = %B64
  %t24 = load i32, i32* %t61, align 4
  %t25 = call i32 @func(i32 %t24)
  %t27 = icmp ne i32 %t25, 0
  br i1 %t27, label %B72, label %B80
B78:                               	; preds = %B64
  br label %B73
B72:                               	; preds = %B75
  store i32 1, i32* %t61, align 4
  br label %B74
B80:                               	; preds = %B75
  br label %B73
B73:                               	; preds = %B78, %B80
  store i32 0, i32* %t61, align 4
  br label %B74
B74:                               	; preds = %B72, %B73
  %t31 = call i32 @getint()
  store i32 %t31, i32* %t61, align 4
  %t32 = load i32, i32* %t61, align 4
  %t33 = icmp sle i32 %t32, 99
  br i1 %t33, label %B82, label %B88
B82:                               	; preds = %B74, %B85
  store i32 1, i32* %t61, align 4
  br label %B84
B88:                               	; preds = %B74
  br label %B85
B84:                               	; preds = %B82, %B83
  %t41 = call i32 @getint()
  store i32 %t41, i32* %t61, align 4
  %t42 = load i32, i32* %t61, align 4
  %t43 = icmp sle i32 %t42, 100
  br i1 %t43, label %B92, label %B98
B85:                               	; preds = %B88
  %t34 = load i32, i32* %t61, align 4
  %t35 = call i32 @func(i32 %t34)
  %t37 = icmp ne i32 %t35, 0
  br i1 %t37, label %B82, label %B90
B92:                               	; preds = %B84, %B95
  store i32 1, i32* %t61, align 4
  br label %B94
B98:                               	; preds = %B84
  br label %B95
B90:                               	; preds = %B85
  br label %B83
B94:                               	; preds = %B92, %B93
  %t50 = call i32 @func(i32 99)
  %t106 = icmp ne i32 %t50, 0
  %t51 = xor i1 %t106, true
  %t54 = icmp ne i1 %t51, 0
  br i1 %t54, label %B105, label %B108
B95:                               	; preds = %B98
  %t44 = load i32, i32* %t61, align 4
  %t45 = call i32 @func(i32 %t44)
  %t47 = icmp ne i32 %t45, 0
  br i1 %t47, label %B92, label %B100
B83:                               	; preds = %B90
  store i32 0, i32* %t61, align 4
  br label %B84
B105:                               	; preds = %B94
  %t52 = call i32 @func(i32 100)
  %t55 = icmp ne i32 %t52, 0
  br i1 %t55, label %B102, label %B111
B108:                               	; preds = %B94
  br label %B103
B100:                               	; preds = %B95
  br label %B93
B102:                               	; preds = %B105
  store i32 1, i32* %t61, align 4
  br label %B104
B111:                               	; preds = %B105
  br label %B103
B103:                               	; preds = %B108, %B111
  store i32 0, i32* %t61, align 4
  br label %B104
B93:                               	; preds = %B100
  store i32 0, i32* %t61, align 4
  br label %B94
B104:                               	; preds = %B102, %B103
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
