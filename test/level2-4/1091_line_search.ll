define i32 @main() {
B58:
  %t61 = alloca [10 x i32], align 4
  br label %B62
B62:                               	; preds = %B58
  %t121 = add i32 0, 0
  %t6 = icmp slt i32 0, 10
  br i1 %t6, label %B63, label %B67
B63:                               	; preds = %B62, %B153
  %t10 = add i32 %t121, 1
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t121
  store i32 %t10, i32* %t8, align 4
  %t69 = icmp slt i32 %t10, 10
  br i1 %t69, label %B153, label %B72
B67:                               	; preds = %B62
  %t122 = add i32 0, 0
  br label %B64
B72:                               	; preds = %B63
  %t122 = add i32 %t10, 0
  br label %B64
B153:                               	; preds = %B63
  %t121 = add i32 %t10, 0
  br label %B63
B64:                               	; preds = %B67, %B72
  %t21 = call i32 @getint()
  %t24 = sub i32 10, 1
  %t29 = add i32 %t24, 0
  %t30 = sdiv i32 %t29, 2
  br label %B80
B80:                               	; preds = %B64
  %t148 = add i32 0, 0
  %t140 = add i32 0, 0
  %t116 = add i32 0, 0
  %t37 = icmp slt i32 0, 10
  br i1 %t37, label %B101, label %B86
B101:                               	; preds = %B80, %B91
  %t99 = icmp eq i32 %t140, 0
  br i1 %t99, label %B81, label %B107
B86:                               	; preds = %B80
  %t147 = add i32 0, 0
  %t139 = add i32 0, 0
  %t115 = add i32 0, 0
  br label %B82
B81:                               	; preds = %B101
  %t42 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t116
  %t92 = load i32, i32* %t42, align 4
  %t44 = icmp eq i32 %t92, %t21
  br i1 %t44, label %B90, label %B95
B107:                               	; preds = %B101
  %t147 = add i32 %t148, 0
  %t139 = add i32 %t140, 0
  %t115 = add i32 %t116, 0
  br label %B82
B82:                               	; preds = %B86, %B104, %B107
  %t52 = icmp eq i32 %t139, 1
  br i1 %t52, label %B108, label %B113
B90:                               	; preds = %B81
  %t145 = add i32 %t116, 0
  %t137 = add i32 1, 0
  br label %B91
B95:                               	; preds = %B81
  %t145 = add i32 %t148, 0
  %t137 = add i32 %t140, 0
  br label %B91
B108:                               	; preds = %B82
  call void @putint(i32 %t147)
  %t129 = add i32 %t21, 0
  br label %B110
B113:                               	; preds = %B82
  br label %B109
B91:                               	; preds = %B90, %B95
  %t50 = add i32 %t116, 1
  %t148 = add i32 %t145, 0
  %t140 = add i32 %t137, 0
  %t116 = add i32 %t50, 0
  %t97 = icmp slt i32 %t50, 10
  br i1 %t97, label %B101, label %B104
B110:                               	; preds = %B108, %B109
  call void @putch(i32 10)
  ret i32 0
B109:                               	; preds = %B113
  call void @putint(i32 0)
  %t129 = add i32 0, 0
  br label %B110
B104:                               	; preds = %B91
  %t147 = add i32 %t145, 0
  %t139 = add i32 %t137, 0
  %t115 = add i32 %t50, 0
  br label %B82
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
