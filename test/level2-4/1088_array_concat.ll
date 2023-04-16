define i32 @concat(i32* %t0, i32* %t2, i32* %t4) {
B82:
  %t83 = alloca i32*, align 4
  %t84 = alloca i32*, align 4
  %t85 = alloca i32*, align 4
  store i32* %t0, i32** %t83, align 4
  store i32* %t2, i32** %t84, align 4
  store i32* %t4, i32** %t85, align 4
  br label %B87
B87:                               	; preds = %B82
  %t157 = add i32 0, 0
  %t9 = icmp slt i32 0, 3
  br i1 %t9, label %B88, label %B92
B88:                               	; preds = %B87, %B187
  %t93 = load i32*, i32** %t83, align 4
  %t13 = getelementptr inbounds i32, i32* %t93, i32 %t157
  %t94 = load i32, i32* %t13, align 4
  %t95 = load i32*, i32** %t85, align 4
  %t11 = getelementptr inbounds i32, i32* %t95, i32 %t157
  store i32 %t94, i32* %t11, align 4
  %t16 = add i32 %t157, 1
  %t97 = icmp slt i32 %t16, 3
  br i1 %t97, label %B187, label %B100
B92:                               	; preds = %B87
  %t158 = add i32 0, 0
  br label %B89
B100:                               	; preds = %B88
  %t158 = add i32 %t16, 0
  br label %B89
B187:                               	; preds = %B88
  %t157 = add i32 %t16, 0
  br label %B88
B89:                               	; preds = %B92, %B100
  br label %B102
B102:                               	; preds = %B89
  %t163 = add i32 0, 0
  %t152 = add i32 %t158, 0
  %t20 = icmp slt i32 0, 3
  br i1 %t20, label %B103, label %B107
B103:                               	; preds = %B102, %B191
  %t108 = load i32*, i32** %t84, align 4
  %t24 = getelementptr inbounds i32, i32* %t108, i32 %t163
  %t109 = load i32, i32* %t24, align 4
  %t110 = load i32*, i32** %t85, align 4
  %t22 = getelementptr inbounds i32, i32* %t110, i32 %t152
  store i32 %t109, i32* %t22, align 4
  %t27 = add i32 %t152, 1
  %t30 = add i32 %t163, 1
  %t112 = icmp slt i32 %t30, 3
  br i1 %t112, label %B191, label %B115
B107:                               	; preds = %B102
  %t164 = add i32 0, 0
  %t153 = add i32 %t158, 0
  br label %B104
B115:                               	; preds = %B103
  %t164 = add i32 %t30, 0
  %t153 = add i32 %t27, 0
  br label %B104
B191:                               	; preds = %B103
  %t163 = add i32 %t30, 0
  %t152 = add i32 %t27, 0
  br label %B103
B104:                               	; preds = %B107, %B115
  ret i32 0
}
define i32 @main() {
B116:
  %t117 = alloca [3 x i32], align 4
  %t118 = alloca [3 x i32], align 4
  %t119 = alloca [3 x i32], align 4
  %t120 = alloca [3 x i32], align 4
  %t121 = alloca [3 x i32], align 4
  %t122 = alloca [3 x i32], align 4
  %t123 = alloca [6 x i32], align 4
  %t124 = alloca [3 x i32], align 4
  %t125 = alloca [3 x i32], align 4
  br label %B127
B127:                               	; preds = %B116
  %t176 = add i32 0, 0
  %t43 = icmp slt i32 0, 3
  br i1 %t43, label %B128, label %B132
B128:                               	; preds = %B127, %B195
  %t45 = getelementptr inbounds [3 x i32], [3 x i32]* %t117, i32 0, i32 %t176
  store i32 %t176, i32* %t45, align 4
  %t48 = getelementptr inbounds [3 x i32], [3 x i32]* %t118, i32 0, i32 %t176
  store i32 %t176, i32* %t48, align 4
  %t51 = getelementptr inbounds [3 x i32], [3 x i32]* %t119, i32 0, i32 %t176
  store i32 %t176, i32* %t51, align 4
  %t54 = getelementptr inbounds [3 x i32], [3 x i32]* %t120, i32 0, i32 %t176
  store i32 %t176, i32* %t54, align 4
  %t57 = getelementptr inbounds [3 x i32], [3 x i32]* %t121, i32 0, i32 %t176
  store i32 %t176, i32* %t57, align 4
  %t60 = getelementptr inbounds [3 x i32], [3 x i32]* %t122, i32 0, i32 %t176
  store i32 %t176, i32* %t60, align 4
  %t64 = add i32 %t176, 1
  %t134 = icmp slt i32 %t64, 3
  br i1 %t134, label %B195, label %B137
B132:                               	; preds = %B127
  %t175 = add i32 0, 0
  br label %B129
B137:                               	; preds = %B128
  %t175 = add i32 %t64, 0
  br label %B129
B195:                               	; preds = %B128
  %t176 = add i32 %t64, 0
  br label %B128
B129:                               	; preds = %B132, %B137
  %t66 = getelementptr inbounds [3 x i32], [3 x i32]* %t117, i32 0, i32 0
  %t67 = getelementptr inbounds [3 x i32], [3 x i32]* %t120, i32 0, i32 0
  %t68 = getelementptr inbounds [6 x i32], [6 x i32]* %t123, i32 0, i32 0
  %t69 = call i32 @concat(i32* %t66, i32* %t67, i32* %t68)
  br label %B139
B139:                               	; preds = %B129
  %t182 = add i32 0, 0
  %t169 = add i32 %t69, 0
  %t72 = icmp slt i32 %t69, 6
  br i1 %t72, label %B140, label %B144
B140:                               	; preds = %B139, %B199
  %t75 = getelementptr inbounds [6 x i32], [6 x i32]* %t123, i32 0, i32 %t169
  %t145 = load i32, i32* %t75, align 4
  call void @putint(i32 %t145)
  %t79 = add i32 %t169, 1
  %t147 = icmp slt i32 %t79, 6
  br i1 %t147, label %B199, label %B150
B144:                               	; preds = %B139
  %t183 = add i32 0, 0
  %t170 = add i32 %t69, 0
  br label %B141
B150:                               	; preds = %B140
  %t183 = add i32 %t145, 0
  %t170 = add i32 %t79, 0
  br label %B141
B199:                               	; preds = %B140
  %t182 = add i32 %t145, 0
  %t169 = add i32 %t79, 0
  br label %B140
B141:                               	; preds = %B144, %B150
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
