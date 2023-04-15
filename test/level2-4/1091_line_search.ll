define i32 @main() {
B58:
  %t59 = alloca i32, align 4
  %t60 = alloca i32, align 4
  %t61 = alloca [10 x i32], align 4
  %t73 = alloca i32, align 4
  %t74 = alloca i32, align 4
  %t75 = alloca i32, align 4
  %t76 = alloca i32, align 4
  %t77 = alloca i32, align 4
  %t78 = alloca i32, align 4
  %t79 = alloca i32, align 4
  store i32 0, i32* %t60, align 4
  store i32 0, i32* %t59, align 4
  br label %B62
B62:                               	; preds = %B58
  %t5 = load i32, i32* %t59, align 4
  %t6 = icmp slt i32 %t5, 10
  br i1 %t6, label %B63, label %B67
B63:                               	; preds = %B62, %B63
  %t9 = load i32, i32* %t59, align 4
  %t10 = add i32 %t9, 1
  %t7 = load i32, i32* %t59, align 4
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t7
  store i32 %t10, i32* %t8, align 4
  %t12 = load i32, i32* %t59, align 4
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t59, align 4
  %t68 = load i32, i32* %t59, align 4
  %t69 = icmp slt i32 %t68, 10
  br i1 %t69, label %B63, label %B72
B67:                               	; preds = %B62
  br label %B64
B72:                               	; preds = %B63
  br label %B64
B64:                               	; preds = %B67, %B72
  store i32 10, i32* %t77, align 4
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t73, align 4
  %t23 = load i32, i32* %t77, align 4
  %t24 = sub i32 %t23, 1
  store i32 %t24, i32* %t74, align 4
  store i32 0, i32* %t75, align 4
  %t27 = load i32, i32* %t74, align 4
  %t28 = load i32, i32* %t75, align 4
  %t29 = add i32 %t27, %t28
  %t30 = sdiv i32 %t29, 2
  store i32 %t30, i32* %t76, align 4
  store i32 0, i32* %t78, align 4
  store i32 0, i32* %t59, align 4
  store i32 0, i32* %t79, align 4
  br label %B80
B80:                               	; preds = %B64
  %t36 = load i32, i32* %t59, align 4
  %t37 = icmp slt i32 %t36, 10
  br i1 %t37, label %B101, label %B86
B101:                               	; preds = %B80, %B91
  %t98 = load i32, i32* %t78, align 4
  %t99 = icmp eq i32 %t98, 0
  br i1 %t99, label %B81, label %B107
B86:                               	; preds = %B80
  br label %B82
B81:                               	; preds = %B101
  %t41 = load i32, i32* %t59, align 4
  %t42 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t41
  %t92 = load i32, i32* %t42, align 4
  %t43 = load i32, i32* %t73, align 4
  %t44 = icmp eq i32 %t92, %t43
  br i1 %t44, label %B90, label %B95
B107:                               	; preds = %B101
  br label %B82
B82:                               	; preds = %B86, %B104, %B107
  %t51 = load i32, i32* %t78, align 4
  %t52 = icmp eq i32 %t51, 1
  br i1 %t52, label %B108, label %B113
B90:                               	; preds = %B81
  store i32 1, i32* %t78, align 4
  %t47 = load i32, i32* %t59, align 4
  store i32 %t47, i32* %t79, align 4
  br label %B91
B95:                               	; preds = %B81
  br label %B91
B108:                               	; preds = %B82
  %t53 = load i32, i32* %t79, align 4
  call void @putint(i32 %t53)
  br label %B110
B113:                               	; preds = %B82
  br label %B109
B91:                               	; preds = %B90, %B95
  %t49 = load i32, i32* %t59, align 4
  %t50 = add i32 %t49, 1
  store i32 %t50, i32* %t59, align 4
  %t96 = load i32, i32* %t59, align 4
  %t97 = icmp slt i32 %t96, 10
  br i1 %t97, label %B101, label %B104
B110:                               	; preds = %B108, %B109
  store i32 10, i32* %t73, align 4
  %t57 = load i32, i32* %t73, align 4
  call void @putch(i32 %t57)
  ret i32 0
B109:                               	; preds = %B113
  store i32 0, i32* %t73, align 4
  %t55 = load i32, i32* %t73, align 4
  call void @putint(i32 %t55)
  br label %B110
B104:                               	; preds = %B91
  br label %B82
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
