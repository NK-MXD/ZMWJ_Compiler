define i32 @concat(i32* %t0, i32* %t2, i32* %t4) {
B82:
  %t83 = alloca i32*, align 4
  %t84 = alloca i32*, align 4
  %t85 = alloca i32*, align 4
  %t86 = alloca i32, align 4
  %t101 = alloca i32, align 4
  store i32* %t0, i32** %t83, align 4
  store i32* %t2, i32** %t84, align 4
  store i32* %t4, i32** %t85, align 4
  store i32 0, i32* %t86, align 4
  br label %B87
B87:                               	; preds = %B82
  %t8 = load i32, i32* %t86, align 4
  %t9 = icmp slt i32 %t8, 3
  br i1 %t9, label %B88, label %B92
B88:                               	; preds = %B87, %B88
  %t93 = load i32*, i32** %t83, align 4
  %t12 = load i32, i32* %t86, align 4
  %t13 = getelementptr inbounds i32, i32* %t93, i32 %t12
  %t94 = load i32, i32* %t13, align 4
  %t95 = load i32*, i32** %t85, align 4
  %t10 = load i32, i32* %t86, align 4
  %t11 = getelementptr inbounds i32, i32* %t95, i32 %t10
  store i32 %t94, i32* %t11, align 4
  %t15 = load i32, i32* %t86, align 4
  %t16 = add i32 %t15, 1
  store i32 %t16, i32* %t86, align 4
  %t96 = load i32, i32* %t86, align 4
  %t97 = icmp slt i32 %t96, 3
  br i1 %t97, label %B88, label %B100
B92:                               	; preds = %B87
  br label %B89
B100:                               	; preds = %B88
  br label %B89
B89:                               	; preds = %B92, %B100
  store i32 0, i32* %t101, align 4
  br label %B102
B102:                               	; preds = %B89
  %t19 = load i32, i32* %t101, align 4
  %t20 = icmp slt i32 %t19, 3
  br i1 %t20, label %B103, label %B107
B103:                               	; preds = %B102, %B103
  %t108 = load i32*, i32** %t84, align 4
  %t23 = load i32, i32* %t101, align 4
  %t24 = getelementptr inbounds i32, i32* %t108, i32 %t23
  %t109 = load i32, i32* %t24, align 4
  %t110 = load i32*, i32** %t85, align 4
  %t21 = load i32, i32* %t86, align 4
  %t22 = getelementptr inbounds i32, i32* %t110, i32 %t21
  store i32 %t109, i32* %t22, align 4
  %t26 = load i32, i32* %t86, align 4
  %t27 = add i32 %t26, 1
  store i32 %t27, i32* %t86, align 4
  %t29 = load i32, i32* %t101, align 4
  %t30 = add i32 %t29, 1
  store i32 %t30, i32* %t101, align 4
  %t111 = load i32, i32* %t101, align 4
  %t112 = icmp slt i32 %t111, 3
  br i1 %t112, label %B103, label %B115
B107:                               	; preds = %B102
  br label %B104
B115:                               	; preds = %B103
  br label %B104
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
  %t126 = alloca i32, align 4
  %t138 = alloca i32, align 4
  store i32 0, i32* %t126, align 4
  br label %B127
B127:                               	; preds = %B116
  %t42 = load i32, i32* %t126, align 4
  %t43 = icmp slt i32 %t42, 3
  br i1 %t43, label %B128, label %B132
B128:                               	; preds = %B127, %B128
  %t46 = load i32, i32* %t126, align 4
  %t44 = load i32, i32* %t126, align 4
  %t45 = getelementptr inbounds [3 x i32], [3 x i32]* %t117, i32 0, i32 %t44
  store i32 %t46, i32* %t45, align 4
  %t49 = load i32, i32* %t126, align 4
  %t47 = load i32, i32* %t126, align 4
  %t48 = getelementptr inbounds [3 x i32], [3 x i32]* %t118, i32 0, i32 %t47
  store i32 %t49, i32* %t48, align 4
  %t52 = load i32, i32* %t126, align 4
  %t50 = load i32, i32* %t126, align 4
  %t51 = getelementptr inbounds [3 x i32], [3 x i32]* %t119, i32 0, i32 %t50
  store i32 %t52, i32* %t51, align 4
  %t55 = load i32, i32* %t126, align 4
  %t53 = load i32, i32* %t126, align 4
  %t54 = getelementptr inbounds [3 x i32], [3 x i32]* %t120, i32 0, i32 %t53
  store i32 %t55, i32* %t54, align 4
  %t58 = load i32, i32* %t126, align 4
  %t56 = load i32, i32* %t126, align 4
  %t57 = getelementptr inbounds [3 x i32], [3 x i32]* %t121, i32 0, i32 %t56
  store i32 %t58, i32* %t57, align 4
  %t61 = load i32, i32* %t126, align 4
  %t59 = load i32, i32* %t126, align 4
  %t60 = getelementptr inbounds [3 x i32], [3 x i32]* %t122, i32 0, i32 %t59
  store i32 %t61, i32* %t60, align 4
  %t63 = load i32, i32* %t126, align 4
  %t64 = add i32 %t63, 1
  store i32 %t64, i32* %t126, align 4
  %t133 = load i32, i32* %t126, align 4
  %t134 = icmp slt i32 %t133, 3
  br i1 %t134, label %B128, label %B137
B132:                               	; preds = %B127
  br label %B129
B137:                               	; preds = %B128
  br label %B129
B129:                               	; preds = %B132, %B137
  %t66 = getelementptr inbounds [3 x i32], [3 x i32]* %t117, i32 0, i32 0
  %t67 = getelementptr inbounds [3 x i32], [3 x i32]* %t120, i32 0, i32 0
  %t68 = getelementptr inbounds [6 x i32], [6 x i32]* %t123, i32 0, i32 0
  %t69 = call i32 @concat(i32* %t66, i32* %t67, i32* %t68)
  store i32 %t69, i32* %t126, align 4
  br label %B139
B139:                               	; preds = %B129
  %t71 = load i32, i32* %t126, align 4
  %t72 = icmp slt i32 %t71, 6
  br i1 %t72, label %B140, label %B144
B140:                               	; preds = %B139, %B140
  %t74 = load i32, i32* %t126, align 4
  %t75 = getelementptr inbounds [6 x i32], [6 x i32]* %t123, i32 0, i32 %t74
  %t145 = load i32, i32* %t75, align 4
  store i32 %t145, i32* %t138, align 4
  %t76 = load i32, i32* %t138, align 4
  call void @putint(i32 %t76)
  %t78 = load i32, i32* %t126, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t126, align 4
  %t146 = load i32, i32* %t126, align 4
  %t147 = icmp slt i32 %t146, 6
  br i1 %t147, label %B140, label %B150
B144:                               	; preds = %B139
  br label %B141
B150:                               	; preds = %B140
  br label %B141
B141:                               	; preds = %B144, %B150
  store i32 10, i32* %t138, align 4
  %t81 = load i32, i32* %t138, align 4
  call void @putch(i32 %t81)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
