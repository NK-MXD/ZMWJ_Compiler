define i32 @get_one(i32 %t0) {
B40:
  %t41 = alloca i32, align 4
  store i32 %t0, i32* %t41, align 4
  ret i32 1
}
define i32 @deepWhileBr(i32 %t2, i32 %t4) {
B42:
  %t43 = alloca i32, align 4
  %t44 = alloca i32, align 4
  store i32 %t2, i32* %t43, align 4
  store i32 %t4, i32* %t44, align 4
  %t8 = load i32, i32* %t43, align 4
  %t9 = load i32, i32* %t44, align 4
  %t10 = add i32 %t8, %t9
  br label %B46
B46:                               	; preds = %B42
  %t99 = add i32 0, 0
  %t90 = add i32 0, 0
  %t83 = add i32 %t10, 0
  %t12 = icmp slt i32 %t10, 75
  br i1 %t12, label %B47, label %B51
B47:                               	; preds = %B46, %B54
  %t16 = icmp slt i32 %t83, 100
  br i1 %t16, label %B53, label %B57
B51:                               	; preds = %B46
  %t100 = add i32 0, 0
  %t91 = add i32 0, 0
  %t84 = add i32 %t10, 0
  br label %B48
B53:                               	; preds = %B47
  %t20 = add i32 %t83, 42
  %t22 = icmp sgt i32 %t20, 99
  br i1 %t22, label %B58, label %B62
B57:                               	; preds = %B47
  %t97 = add i32 %t99, 0
  %t81 = add i32 %t83, 0
  br label %B54
B48:                               	; preds = %B51, %B73
  ret i32 %t84
B58:                               	; preds = %B53
  %t26 = mul i32 42, 2
  %t27 = call i32 @get_one(i32 0)
  %t28 = icmp eq i32 %t27, 1
  br i1 %t28, label %B64, label %B68
B62:                               	; preds = %B53
  %t95 = add i32 %t99, 0
  %t79 = add i32 %t20, 0
  br label %B59
B54:                               	; preds = %B57, %B59
  %t99 = add i32 %t97, 0
  %t90 = add i32 42, 0
  %t83 = add i32 %t81, 0
  %t70 = icmp slt i32 %t81, 75
  br i1 %t70, label %B47, label %B73
B64:                               	; preds = %B58
  %t31 = mul i32 %t26, 2
  %t77 = add i32 %t31, 0
  br label %B65
B68:                               	; preds = %B58
  %t77 = add i32 %t20, 0
  br label %B65
B59:                               	; preds = %B62, %B65
  %t97 = add i32 %t95, 0
  %t81 = add i32 %t79, 0
  br label %B54
B73:                               	; preds = %B54
  %t100 = add i32 %t97, 0
  %t91 = add i32 42, 0
  %t84 = add i32 %t81, 0
  br label %B48
B65:                               	; preds = %B64, %B68
  %t95 = add i32 %t26, 0
  %t79 = add i32 %t77, 0
  br label %B59
}
define i32 @main() {
B74:
  %t38 = call i32 @deepWhileBr(i32 2, i32 2)
  call void @putint(i32 %t38)
  ret i32 0
}
declare void @putint(i32)
