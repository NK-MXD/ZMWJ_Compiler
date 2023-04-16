define i32 @FourWhile() {
B45:
  br label %B50
B50:                               	; preds = %B45
  %t134 = add i32 10, 0
  %t116 = add i32 7, 0
  %t102 = add i32 6, 0
  %t96 = add i32 5, 0
  %t9 = icmp slt i32 5, 20
  br i1 %t9, label %B51, label %B55
B51:                               	; preds = %B50, %B58
  %t12 = add i32 %t96, 3
  br label %B56
B55:                               	; preds = %B50
  %t135 = add i32 10, 0
  %t117 = add i32 7, 0
  %t103 = add i32 6, 0
  %t97 = add i32 5, 0
  br label %B52
B56:                               	; preds = %B51
  %t131 = add i32 %t134, 0
  %t113 = add i32 %t116, 0
  %t107 = add i32 %t102, 0
  %t14 = icmp slt i32 %t102, 10
  br i1 %t14, label %B57, label %B61
B52:                               	; preds = %B55, %B93
  %t40 = add i32 %t103, %t135
  %t41 = add i32 %t97, %t40
  %t43 = add i32 %t41, %t117
  ret i32 %t43
B57:                               	; preds = %B56, %B64
  %t17 = add i32 %t107, 1
  br label %B62
B61:                               	; preds = %B56
  %t132 = add i32 %t134, 0
  %t114 = add i32 %t116, 0
  %t108 = add i32 %t102, 0
  br label %B58
B62:                               	; preds = %B57
  %t128 = add i32 %t131, 0
  %t122 = add i32 %t113, 0
  %t19 = icmp eq i32 %t113, 7
  br i1 %t19, label %B63, label %B67
B58:                               	; preds = %B61, %B88
  %t36 = sub i32 %t108, 2
  %t134 = add i32 %t132, 0
  %t116 = add i32 %t114, 0
  %t102 = add i32 %t36, 0
  %t96 = add i32 %t12, 0
  %t90 = icmp slt i32 %t12, 20
  br i1 %t90, label %B51, label %B93
B63:                               	; preds = %B62, %B70
  %t22 = sub i32 %t122, 1
  br label %B68
B67:                               	; preds = %B62
  %t129 = add i32 %t131, 0
  %t123 = add i32 %t113, 0
  br label %B64
B93:                               	; preds = %B58
  %t135 = add i32 %t132, 0
  %t117 = add i32 %t114, 0
  %t103 = add i32 %t36, 0
  %t97 = add i32 %t12, 0
  br label %B52
B68:                               	; preds = %B63
  %t141 = add i32 %t128, 0
  %t24 = icmp slt i32 %t128, 20
  br i1 %t24, label %B69, label %B73
B64:                               	; preds = %B67, %B83
  %t33 = add i32 %t123, 1
  %t131 = add i32 %t129, 0
  %t113 = add i32 %t33, 0
  %t107 = add i32 %t17, 0
  %t85 = icmp slt i32 %t17, 10
  br i1 %t85, label %B57, label %B88
B69:                               	; preds = %B68, %B165
  %t27 = add i32 %t141, 3
  %t75 = icmp slt i32 %t27, 20
  br i1 %t75, label %B165, label %B78
B73:                               	; preds = %B68
  %t142 = add i32 %t128, 0
  br label %B70
B88:                               	; preds = %B64
  %t132 = add i32 %t129, 0
  %t114 = add i32 %t33, 0
  %t108 = add i32 %t17, 0
  br label %B58
B78:                               	; preds = %B69
  %t142 = add i32 %t27, 0
  br label %B70
B165:                               	; preds = %B69
  %t141 = add i32 %t27, 0
  br label %B69
B70:                               	; preds = %B73, %B78
  %t30 = sub i32 %t142, 1
  %t128 = add i32 %t30, 0
  %t122 = add i32 %t22, 0
  %t80 = icmp eq i32 %t22, 7
  br i1 %t80, label %B63, label %B83
B83:                               	; preds = %B70
  %t129 = add i32 %t30, 0
  %t123 = add i32 %t22, 0
  br label %B64
}
define i32 @main() {
B94:
  %t44 = call i32 @FourWhile()
  ret i32 %t44
}
