@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @split(i32 %t2, i32* %t4) {
B45:
  %t46 = alloca i32, align 4
  %t47 = alloca i32*, align 4
  store i32 %t2, i32* %t46, align 4
  store i32* %t4, i32** %t47, align 4
  %t8 = load i32, i32* @N, align 4
  %t9 = sub i32 %t8, 1
  br label %B49
B49:                               	; preds = %B45
  %t11 = sub i32 0, 1
  %t80 = add i32 %t9, 0
  %t12 = icmp ne i32 %t9, %t11
  br i1 %t12, label %B50, label %B54
B50:                               	; preds = %B49, %B99
  %t15 = load i32, i32* %t46, align 4
  %t16 = srem i32 %t15, 10
  %t55 = load i32*, i32** %t47, align 4
  %t14 = getelementptr inbounds i32, i32* %t55, i32 %t80
  store i32 %t16, i32* %t14, align 4
  %t18 = load i32, i32* %t46, align 4
  %t19 = sdiv i32 %t18, 10
  store i32 %t19, i32* %t46, align 4
  %t22 = sub i32 %t80, 1
  %t57 = sub i32 0, 1
  %t58 = icmp ne i32 %t22, %t57
  br i1 %t58, label %B99, label %B61
B54:                               	; preds = %B49
  %t81 = add i32 %t9, 0
  br label %B51
B61:                               	; preds = %B50
  %t81 = add i32 %t22, 0
  br label %B51
B99:                               	; preds = %B50
  %t80 = add i32 %t22, 0
  br label %B50
B51:                               	; preds = %B54, %B61
  ret i32 0
}
define i32 @main() {
B62:
  %t65 = alloca [4 x i32], align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  %t31 = getelementptr inbounds [4 x i32], [4 x i32]* %t65, i32 0, i32 0
  %t32 = call i32 @split(i32 1478, i32* %t31)
  br label %B67
B67:                               	; preds = %B62
  %t95 = add i32 0, 0
  %t87 = add i32 0, 0
  %t36 = icmp slt i32 0, 4
  br i1 %t36, label %B68, label %B72
B68:                               	; preds = %B67, %B103
  %t39 = getelementptr inbounds [4 x i32], [4 x i32]* %t65, i32 0, i32 %t87
  %t73 = load i32, i32* %t39, align 4
  call void @putint(i32 %t73)
  %t41 = load i32, i32* @newline, align 4
  call void @putch(i32 %t41)
  %t44 = add i32 %t87, 1
  %t75 = icmp slt i32 %t44, 4
  br i1 %t75, label %B103, label %B78
B72:                               	; preds = %B67
  %t94 = add i32 0, 0
  %t86 = add i32 0, 0
  br label %B69
B78:                               	; preds = %B68
  %t94 = add i32 %t73, 0
  %t86 = add i32 %t44, 0
  br label %B69
B103:                               	; preds = %B68
  %t95 = add i32 %t73, 0
  %t87 = add i32 %t44, 0
  br label %B68
B69:                               	; preds = %B72, %B78
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
