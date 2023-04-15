define i32 @FourWhile() {
B45:
  %t46 = alloca i32, align 4
  %t47 = alloca i32, align 4
  %t48 = alloca i32, align 4
  %t49 = alloca i32, align 4
  store i32 5, i32* %t46, align 4
  store i32 6, i32* %t47, align 4
  store i32 7, i32* %t48, align 4
  store i32 10, i32* %t49, align 4
  br label %B50
B50:                               	; preds = %B45
  %t8 = load i32, i32* %t46, align 4
  %t9 = icmp slt i32 %t8, 20
  br i1 %t9, label %B51, label %B55
B51:                               	; preds = %B50, %B58
  %t11 = load i32, i32* %t46, align 4
  %t12 = add i32 %t11, 3
  store i32 %t12, i32* %t46, align 4
  br label %B56
B55:                               	; preds = %B50
  br label %B52
B56:                               	; preds = %B51
  %t13 = load i32, i32* %t47, align 4
  %t14 = icmp slt i32 %t13, 10
  br i1 %t14, label %B57, label %B61
B52:                               	; preds = %B55, %B93
  %t37 = load i32, i32* %t46, align 4
  %t38 = load i32, i32* %t47, align 4
  %t39 = load i32, i32* %t49, align 4
  %t40 = add i32 %t38, %t39
  %t41 = add i32 %t37, %t40
  %t42 = load i32, i32* %t48, align 4
  %t43 = add i32 %t41, %t42
  ret i32 %t43
B57:                               	; preds = %B56, %B64
  %t16 = load i32, i32* %t47, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t47, align 4
  br label %B62
B61:                               	; preds = %B56
  br label %B58
B62:                               	; preds = %B57
  %t18 = load i32, i32* %t48, align 4
  %t19 = icmp eq i32 %t18, 7
  br i1 %t19, label %B63, label %B67
B58:                               	; preds = %B61, %B88
  %t35 = load i32, i32* %t47, align 4
  %t36 = sub i32 %t35, 2
  store i32 %t36, i32* %t47, align 4
  %t89 = load i32, i32* %t46, align 4
  %t90 = icmp slt i32 %t89, 20
  br i1 %t90, label %B51, label %B93
B63:                               	; preds = %B62, %B70
  %t21 = load i32, i32* %t48, align 4
  %t22 = sub i32 %t21, 1
  store i32 %t22, i32* %t48, align 4
  br label %B68
B67:                               	; preds = %B62
  br label %B64
B93:                               	; preds = %B58
  br label %B52
B68:                               	; preds = %B63
  %t23 = load i32, i32* %t49, align 4
  %t24 = icmp slt i32 %t23, 20
  br i1 %t24, label %B69, label %B73
B64:                               	; preds = %B67, %B83
  %t32 = load i32, i32* %t48, align 4
  %t33 = add i32 %t32, 1
  store i32 %t33, i32* %t48, align 4
  %t84 = load i32, i32* %t47, align 4
  %t85 = icmp slt i32 %t84, 10
  br i1 %t85, label %B57, label %B88
B69:                               	; preds = %B68, %B69
  %t26 = load i32, i32* %t49, align 4
  %t27 = add i32 %t26, 3
  store i32 %t27, i32* %t49, align 4
  %t74 = load i32, i32* %t49, align 4
  %t75 = icmp slt i32 %t74, 20
  br i1 %t75, label %B69, label %B78
B73:                               	; preds = %B68
  br label %B70
B88:                               	; preds = %B64
  br label %B58
B78:                               	; preds = %B69
  br label %B70
B70:                               	; preds = %B73, %B78
  %t29 = load i32, i32* %t49, align 4
  %t30 = sub i32 %t29, 1
  store i32 %t30, i32* %t49, align 4
  %t79 = load i32, i32* %t48, align 4
  %t80 = icmp eq i32 %t79, 7
  br i1 %t80, label %B63, label %B83
B83:                               	; preds = %B70
  br label %B64
}
define i32 @main() {
B94:
  %t44 = call i32 @FourWhile()
  ret i32 %t44
}
