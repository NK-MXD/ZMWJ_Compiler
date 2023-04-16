define i32 @func(i32 %t0, [59 x i32]* %t2, i32 %t4, i32* %t6, i32 %t8, i32 %t10, i32* %t12, i32 %t14, i32 %t16) {
B76:
  %t77 = alloca i32, align 4
  %t78 = alloca [59 x i32]*, align 4
  %t79 = alloca i32, align 4
  %t80 = alloca i32*, align 4
  %t81 = alloca i32, align 4
  %t82 = alloca i32, align 4
  %t83 = alloca i32*, align 4
  %t84 = alloca i32, align 4
  %t85 = alloca i32, align 4
  store i32 %t0, i32* %t77, align 4
  store [59 x i32]* %t2, [59 x i32]** %t78, align 4
  store i32 %t4, i32* %t79, align 4
  store i32* %t6, i32** %t80, align 4
  store i32 %t8, i32* %t81, align 4
  store i32 %t10, i32* %t82, align 4
  store i32* %t12, i32** %t83, align 4
  store i32 %t14, i32* %t84, align 4
  store i32 %t16, i32* %t85, align 4
  br label %B87
B87:                               	; preds = %B76
  %t160 = add i32 0, 0
  %t20 = icmp slt i32 0, 10
  br i1 %t20, label %B88, label %B92
B88:                               	; preds = %B87, %B172
  %t93 = load [59 x i32]*, [59 x i32]** %t78, align 4
  %t21 = load i32, i32* %t77, align 4
  %t23 = getelementptr inbounds [59 x i32], [59 x i32]* %t93, i32 %t21
  %t94 = getelementptr inbounds [59 x i32], [59 x i32]* %t23, i32 0, i32 %t160
  %t95 = load i32, i32* %t94, align 4
  call void @putint(i32 %t95)
  %t26 = add i32 %t160, 1
  %t97 = icmp slt i32 %t26, 10
  br i1 %t97, label %B172, label %B100
B92:                               	; preds = %B87
  %t161 = add i32 0, 0
  br label %B89
B100:                               	; preds = %B88
  %t161 = add i32 %t26, 0
  br label %B89
B172:                               	; preds = %B88
  %t160 = add i32 %t26, 0
  br label %B88
B89:                               	; preds = %B92, %B100
  call void @putch(i32 10)
  %t101 = load i32*, i32** %t80, align 4
  %t27 = load i32, i32* %t79, align 4
  %t28 = getelementptr inbounds i32, i32* %t101, i32 %t27
  %t102 = load i32, i32* %t28, align 4
  call void @putint(i32 %t102)
  call void @putch(i32 10)
  br label %B103
B103:                               	; preds = %B89
  %t29 = load i32, i32* %t85, align 4
  %t30 = icmp slt i32 %t29, 10
  br i1 %t30, label %B104, label %B108
B104:                               	; preds = %B103, %B104
  %t33 = load i32, i32* %t84, align 4
  %t34 = mul i32 %t33, 128875
  %t35 = srem i32 %t34, 3724
  %t109 = load i32*, i32** %t83, align 4
  %t31 = load i32, i32* %t85, align 4
  %t32 = getelementptr inbounds i32, i32* %t109, i32 %t31
  store i32 %t35, i32* %t32, align 4
  %t37 = load i32, i32* %t85, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t85, align 4
  %t40 = load i32, i32* %t84, align 4
  %t41 = add i32 %t40, 7
  store i32 %t41, i32* %t84, align 4
  %t110 = load i32, i32* %t85, align 4
  %t111 = icmp slt i32 %t110, 10
  br i1 %t111, label %B104, label %B114
B108:                               	; preds = %B103
  br label %B105
B114:                               	; preds = %B104
  br label %B105
B105:                               	; preds = %B108, %B114
  %t42 = load i32, i32* %t81, align 4
  %t43 = load i32, i32* %t82, align 4
  %t44 = add i32 %t42, %t43
  ret i32 %t44
}
define i32 @main() {
B115:
  %t116 = alloca [61 x [67 x i32]], align 4
  %t118 = alloca [53 x [59 x i32]], align 4
  %t117 = bitcast [61 x [67 x i32]]* %t116 to i8*
  call void @llvm.memset.p0.i32(i8* %t117, i8 0, i32 16348, i1 0)
  %t119 = bitcast [53 x [59 x i32]]* %t118 to i8*
  call void @llvm.memset.p0.i32(i8* %t119, i8 0, i32 12508, i1 0)
  %t47 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t116, i32 0, i32 17
  %t120 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 1
  store i32 6, i32* %t120, align 4
  %t121 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 3
  store i32 7, i32* %t121, align 4
  %t122 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 4
  store i32 4, i32* %t122, align 4
  %t123 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 7
  store i32 9, i32* %t123, align 4
  %t124 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 11
  store i32 11, i32* %t124, align 4
  %t52 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t118, i32 0, i32 6
  %t125 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 1
  store i32 1, i32* %t125, align 4
  %t126 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 2
  store i32 2, i32* %t126, align 4
  %t127 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 3
  store i32 3, i32* %t127, align 4
  %t128 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 9
  store i32 9, i32* %t128, align 4
  %t131 = load i32, i32* %t120, align 4
  %t59 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t118, i32 0, i32 0
  %t133 = load i32, i32* %t121, align 4
  %t135 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 0
  %t137 = load i32, i32* %t127, align 4
  %t138 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 0
  %t139 = load i32, i32* %t138, align 4
  %t65 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t118, i32 0, i32 34
  %t142 = getelementptr inbounds [59 x i32], [59 x i32]* %t65, i32 0, i32 4
  %t143 = load i32, i32* %t142, align 4
  %t66 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t118, i32 0, i32 51
  %t144 = getelementptr inbounds [59 x i32], [59 x i32]* %t66, i32 0, i32 18
  %t145 = load i32, i32* %t144, align 4
  %t67 = call i32 @func(i32 %t131, [59 x i32]* %t59, i32 %t133, i32* %t135, i32 %t137, i32 %t139, i32* %t138, i32 %t143, i32 %t145)
  %t68 = mul i32 %t67, 3
  br label %B146
B146:                               	; preds = %B115
  %t167 = add i32 %t68, 0
  %t70 = icmp sge i32 %t68, 0
  br i1 %t70, label %B147, label %B151
B147:                               	; preds = %B146, %B175
  %t72 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t118, i32 0, i32 6
  %t152 = getelementptr inbounds [59 x i32], [59 x i32]* %t72, i32 0, i32 %t167
  %t153 = load i32, i32* %t152, align 4
  call void @putint(i32 %t153)
  call void @putch(i32 32)
  %t75 = sub i32 %t167, 1
  %t155 = icmp sge i32 %t75, 0
  br i1 %t155, label %B175, label %B158
B151:                               	; preds = %B146
  %t166 = add i32 %t68, 0
  br label %B148
B158:                               	; preds = %B147
  %t166 = add i32 %t75, 0
  br label %B148
B175:                               	; preds = %B147
  %t167 = add i32 %t75, 0
  br label %B147
B148:                               	; preds = %B151, %B158
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
