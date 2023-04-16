define i32 @main() {
B42:
  %t9 = sub i32 0, 2
  %t12 = mul i32 %t9, 1
  %t13 = sdiv i32 %t12, 2
  %t14 = icmp slt i32 %t13, 0
  br i1 %t14, label %B48, label %B53
B48:                               	; preds = %B42, %B54
  call void @putint(i32 2)
  br label %B49
B53:                               	; preds = %B42
  br label %B50
B49:                               	; preds = %B48, %B57, %B60
  %t27 = srem i32 %t9, 2
  %t28 = add i32 %t27, 67
  %t29 = icmp slt i32 %t28, 0
  br i1 %t29, label %B61, label %B66
B50:                               	; preds = %B53
  %t17 = sub i32 5, 5
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %B54, label %B57
B61:                               	; preds = %B49, %B67
  call void @putint(i32 4)
  %t79 = add i32 4, 0
  br label %B62
B66:                               	; preds = %B49
  br label %B63
B54:                               	; preds = %B50
  %t20 = add i32 1, 3
  %t21 = srem i32 %t20, 2
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %B48, label %B60
B57:                               	; preds = %B50
  br label %B49
B62:                               	; preds = %B61, %B70, %B73
  ret i32 0
B63:                               	; preds = %B66
  %t32 = sub i32 5, 5
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %B67, label %B70
B60:                               	; preds = %B54
  br label %B49
B67:                               	; preds = %B63
  %t35 = add i32 1, 2
  %t36 = srem i32 %t35, 2
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %B61, label %B73
B70:                               	; preds = %B63
  %t79 = add i32 2, 0
  br label %B62
B73:                               	; preds = %B67
  %t79 = add i32 2, 0
  br label %B62
}
declare void @putint(i32)
