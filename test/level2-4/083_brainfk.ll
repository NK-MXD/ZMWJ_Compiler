@TAPE_LEN = global i32 65536, align 4
@BUFFER_LEN = global i32 32768, align 4
@tape = global [65536 x i32] zeroinitializer, align 4
@program = global [32768 x i32] zeroinitializer, align 4
@ptr = global i32 0, align 4
define void @read_program() {
B94:
  %t95 = alloca i32, align 4
  %t96 = alloca i32, align 4
  store i32 0, i32* %t95, align 4
  %t8 = call i32 @getint()
  store i32 %t8, i32* %t96, align 4
  br label %B97
B97:                               	; preds = %B94
  %t10 = load i32, i32* %t95, align 4
  %t11 = load i32, i32* %t96, align 4
  %t12 = icmp slt i32 %t10, %t11
  br i1 %t12, label %B98, label %B102
B98:                               	; preds = %B97, %B98
  %t15 = call i32 @getch()
  %t13 = load i32, i32* %t95, align 4
  %t14 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t13
  store i32 %t15, i32* %t14, align 4
  %t17 = load i32, i32* %t95, align 4
  %t18 = add i32 %t17, 1
  store i32 %t18, i32* %t95, align 4
  %t103 = load i32, i32* %t95, align 4
  %t104 = load i32, i32* %t96, align 4
  %t105 = icmp slt i32 %t103, %t104
  br i1 %t105, label %B98, label %B108
B102:                               	; preds = %B97
  br label %B99
B108:                               	; preds = %B98
  br label %B99
B99:                               	; preds = %B102, %B108
  %t19 = load i32, i32* %t95, align 4
  %t20 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t19
  store i32 0, i32* %t20, align 4
  ret void
}
define void @interpret(i32* %t21) {
B109:
  %t110 = alloca i32*, align 4
  %t111 = alloca i32, align 4
  %t112 = alloca i32, align 4
  %t113 = alloca i32, align 4
  store i32* %t21, i32** %t110, align 4
  store i32 0, i32* %t113, align 4
  br label %B114
B114:                               	; preds = %B109
  %t117 = load i32*, i32** %t110, align 4
  %t26 = load i32, i32* %t113, align 4
  %t27 = getelementptr inbounds i32, i32* %t117, i32 %t26
  %t118 = load i32, i32* %t27, align 4
  %t28 = icmp ne i32 %t118, 0
  br i1 %t28, label %B115, label %B120
B115:                               	; preds = %B114, %B126
  %t122 = load i32*, i32** %t110, align 4
  %t30 = load i32, i32* %t113, align 4
  %t31 = getelementptr inbounds i32, i32* %t122, i32 %t30
  %t123 = load i32, i32* %t31, align 4
  store i32 %t123, i32* %t111, align 4
  %t32 = load i32, i32* %t111, align 4
  %t33 = icmp eq i32 %t32, 62
  br i1 %t33, label %B124, label %B129
B120:                               	; preds = %B114
  br label %B116
B124:                               	; preds = %B115
  %t35 = load i32, i32* @ptr, align 4
  %t36 = add i32 %t35, 1
  store i32 %t36, i32* @ptr, align 4
  br label %B126
B129:                               	; preds = %B115
  br label %B125
B116:                               	; preds = %B120, %B203
  ret void
B126:                               	; preds = %B124, %B132
  %t91 = load i32, i32* %t113, align 4
  %t92 = add i32 %t91, 1
  store i32 %t92, i32* %t113, align 4
  %t200 = load i32*, i32** %t110, align 4
  %t197 = load i32, i32* %t113, align 4
  %t198 = getelementptr inbounds i32, i32* %t200, i32 %t197
  %t201 = load i32, i32* %t198, align 4
  %t199 = icmp ne i32 %t201, 0
  br i1 %t199, label %B115, label %B203
B125:                               	; preds = %B129
  %t37 = load i32, i32* %t111, align 4
  %t38 = icmp eq i32 %t37, 60
  br i1 %t38, label %B130, label %B135
B203:                               	; preds = %B126
  br label %B116
B130:                               	; preds = %B125
  %t40 = load i32, i32* @ptr, align 4
  %t41 = sub i32 %t40, 1
  store i32 %t41, i32* @ptr, align 4
  br label %B132
B135:                               	; preds = %B125
  br label %B131
B132:                               	; preds = %B130, %B138
  br label %B126
B131:                               	; preds = %B135
  %t42 = load i32, i32* %t111, align 4
  %t43 = icmp eq i32 %t42, 43
  br i1 %t43, label %B136, label %B141
B136:                               	; preds = %B131
  %t46 = load i32, i32* @ptr, align 4
  %t47 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t46
  %t142 = load i32, i32* %t47, align 4
  %t48 = add i32 %t142, 1
  %t44 = load i32, i32* @ptr, align 4
  %t45 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t44
  store i32 %t48, i32* %t45, align 4
  br label %B138
B141:                               	; preds = %B131
  br label %B137
B138:                               	; preds = %B136, %B145
  br label %B132
B137:                               	; preds = %B141
  %t49 = load i32, i32* %t111, align 4
  %t50 = icmp eq i32 %t49, 45
  br i1 %t50, label %B143, label %B148
B143:                               	; preds = %B137
  %t53 = load i32, i32* @ptr, align 4
  %t54 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t53
  %t149 = load i32, i32* %t54, align 4
  %t55 = sub i32 %t149, 1
  %t51 = load i32, i32* @ptr, align 4
  %t52 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t51
  store i32 %t55, i32* %t52, align 4
  br label %B145
B148:                               	; preds = %B137
  br label %B144
B145:                               	; preds = %B143, %B152
  br label %B138
B144:                               	; preds = %B148
  %t56 = load i32, i32* %t111, align 4
  %t57 = icmp eq i32 %t56, 46
  br i1 %t57, label %B150, label %B155
B150:                               	; preds = %B144
  %t58 = load i32, i32* @ptr, align 4
  %t59 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t58
  %t156 = load i32, i32* %t59, align 4
  call void @putch(i32 %t156)
  br label %B152
B155:                               	; preds = %B144
  br label %B151
B152:                               	; preds = %B150, %B159
  br label %B145
B151:                               	; preds = %B155
  %t60 = load i32, i32* %t111, align 4
  %t61 = icmp eq i32 %t60, 44
  br i1 %t61, label %B157, label %B162
B157:                               	; preds = %B151
  %t64 = call i32 @getch()
  %t62 = load i32, i32* @ptr, align 4
  %t63 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t62
  store i32 %t64, i32* %t63, align 4
  br label %B159
B162:                               	; preds = %B151
  br label %B158
B159:                               	; preds = %B157, %B164
  br label %B152
B158:                               	; preds = %B162
  %t65 = load i32, i32* %t111, align 4
  %t66 = icmp eq i32 %t65, 93
  br i1 %t66, label %B165, label %B168
B165:                               	; preds = %B158
  %t67 = load i32, i32* @ptr, align 4
  %t68 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t67
  %t169 = load i32, i32* %t68, align 4
  %t70 = icmp ne i32 %t169, 0
  br i1 %t70, label %B163, label %B171
B168:                               	; preds = %B158
  br label %B164
B163:                               	; preds = %B165
  store i32 1, i32* %t112, align 4
  br label %B173
B171:                               	; preds = %B165
  br label %B164
B164:                               	; preds = %B168, %B171, %B175
  br label %B159
B173:                               	; preds = %B163
  %t72 = load i32, i32* %t112, align 4
  %t73 = icmp sgt i32 %t72, 0
  br i1 %t73, label %B174, label %B178
B174:                               	; preds = %B173, %B183
  %t75 = load i32, i32* %t113, align 4
  %t76 = sub i32 %t75, 1
  store i32 %t76, i32* %t113, align 4
  %t179 = load i32*, i32** %t110, align 4
  %t78 = load i32, i32* %t113, align 4
  %t79 = getelementptr inbounds i32, i32* %t179, i32 %t78
  %t180 = load i32, i32* %t79, align 4
  store i32 %t180, i32* %t111, align 4
  %t80 = load i32, i32* %t111, align 4
  %t81 = icmp eq i32 %t80, 91
  br i1 %t81, label %B181, label %B186
B178:                               	; preds = %B173
  br label %B175
B181:                               	; preds = %B174
  %t83 = load i32, i32* %t112, align 4
  %t84 = sub i32 %t83, 1
  store i32 %t84, i32* %t112, align 4
  br label %B183
B186:                               	; preds = %B174
  br label %B182
B175:                               	; preds = %B178, %B196
  br label %B164
B183:                               	; preds = %B181, %B188
  %t192 = load i32, i32* %t112, align 4
  %t193 = icmp sgt i32 %t192, 0
  br i1 %t193, label %B174, label %B196
B182:                               	; preds = %B186
  %t85 = load i32, i32* %t111, align 4
  %t86 = icmp eq i32 %t85, 93
  br i1 %t86, label %B187, label %B191
B196:                               	; preds = %B183
  br label %B175
B187:                               	; preds = %B182
  %t88 = load i32, i32* %t112, align 4
  %t89 = add i32 %t88, 1
  store i32 %t89, i32* %t112, align 4
  br label %B188
B191:                               	; preds = %B182
  br label %B188
B188:                               	; preds = %B187, %B191
  br label %B183
}
define i32 @main() {
B205:
  call void @read_program()
  %t93 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 0
  call void @interpret(i32* %t93)
  ret i32 0
}
declare i32 @getint()
declare i32 @getch()
declare void @putch(i32)
