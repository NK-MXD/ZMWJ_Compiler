@TAPE_LEN = global i32 65536, align 4
@BUFFER_LEN = global i32 32768, align 4
@tape = global [65536 x i32] zeroinitializer, align 4
@program = global [32768 x i32] zeroinitializer, align 4
@ptr = global i32 0, align 4
define void @read_program() {
B94:
  %t8 = call i32 @getint()
  br label %B97
B97:                               	; preds = %B94
  %t207 = add i32 0, 0
  %t12 = icmp slt i32 0, %t8
  br i1 %t12, label %B98, label %B102
B98:                               	; preds = %B97, %B292
  %t15 = call i32 @getch()
  %t14 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t207
  store i32 %t15, i32* %t14, align 4
  %t18 = add i32 %t207, 1
  %t105 = icmp slt i32 %t18, %t8
  br i1 %t105, label %B292, label %B108
B102:                               	; preds = %B97
  %t208 = add i32 0, 0
  br label %B99
B108:                               	; preds = %B98
  %t208 = add i32 %t18, 0
  br label %B99
B292:                               	; preds = %B98
  %t207 = add i32 %t18, 0
  br label %B98
B99:                               	; preds = %B102, %B108
  %t20 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t208
  store i32 0, i32* %t20, align 4
  ret void
}
define void @interpret(i32* %t21) {
B109:
  %t110 = alloca i32*, align 4
  store i32* %t21, i32** %t110, align 4
  br label %B114
B114:                               	; preds = %B109
  %t117 = load i32*, i32** %t110, align 4
  %t27 = getelementptr inbounds i32, i32* %t117, i32 0
  %t118 = load i32, i32* %t27, align 4
  %t285 = add i32 0, 0
  %t260 = add i32 0, 0
  %t232 = add i32 0, 0
  %t28 = icmp ne i32 %t118, 0
  br i1 %t28, label %B115, label %B120
B115:                               	; preds = %B114, %B126
  %t122 = load i32*, i32** %t110, align 4
  %t31 = getelementptr inbounds i32, i32* %t122, i32 %t285
  %t123 = load i32, i32* %t31, align 4
  %t33 = icmp eq i32 %t123, 62
  br i1 %t33, label %B124, label %B129
B120:                               	; preds = %B114
  %t284 = add i32 0, 0
  %t259 = add i32 0, 0
  %t231 = add i32 0, 0
  br label %B116
B124:                               	; preds = %B115
  %t35 = load i32, i32* @ptr, align 4
  %t36 = add i32 %t35, 1
  store i32 %t36, i32* @ptr, align 4
  %t282 = add i32 %t285, 0
  %t257 = add i32 %t260, 0
  %t229 = add i32 %t123, 0
  br label %B126
B129:                               	; preds = %B115
  br label %B125
B116:                               	; preds = %B120, %B203
  ret void
B126:                               	; preds = %B124, %B132
  %t92 = add i32 %t282, 1
  %t200 = load i32*, i32** %t110, align 4
  %t198 = getelementptr inbounds i32, i32* %t200, i32 %t92
  %t201 = load i32, i32* %t198, align 4
  %t285 = add i32 %t92, 0
  %t260 = add i32 %t257, 0
  %t232 = add i32 %t229, 0
  %t199 = icmp ne i32 %t201, 0
  br i1 %t199, label %B115, label %B203
B125:                               	; preds = %B129
  %t38 = icmp eq i32 %t123, 60
  br i1 %t38, label %B130, label %B135
B203:                               	; preds = %B126
  %t284 = add i32 %t92, 0
  %t259 = add i32 %t257, 0
  %t231 = add i32 %t229, 0
  br label %B116
B130:                               	; preds = %B125
  %t40 = load i32, i32* @ptr, align 4
  %t41 = sub i32 %t40, 1
  store i32 %t41, i32* @ptr, align 4
  %t280 = add i32 %t285, 0
  %t255 = add i32 %t260, 0
  %t227 = add i32 %t123, 0
  br label %B132
B135:                               	; preds = %B125
  br label %B131
B132:                               	; preds = %B130, %B138
  %t282 = add i32 %t280, 0
  %t257 = add i32 %t255, 0
  %t229 = add i32 %t227, 0
  br label %B126
B131:                               	; preds = %B135
  %t43 = icmp eq i32 %t123, 43
  br i1 %t43, label %B136, label %B141
B136:                               	; preds = %B131
  %t46 = load i32, i32* @ptr, align 4
  %t47 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t46
  %t142 = load i32, i32* %t47, align 4
  %t48 = add i32 %t142, 1
  %t44 = load i32, i32* @ptr, align 4
  %t45 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t44
  store i32 %t48, i32* %t45, align 4
  %t278 = add i32 %t285, 0
  %t253 = add i32 %t260, 0
  %t225 = add i32 %t123, 0
  br label %B138
B141:                               	; preds = %B131
  br label %B137
B138:                               	; preds = %B136, %B145
  %t280 = add i32 %t278, 0
  %t255 = add i32 %t253, 0
  %t227 = add i32 %t225, 0
  br label %B132
B137:                               	; preds = %B141
  %t50 = icmp eq i32 %t123, 45
  br i1 %t50, label %B143, label %B148
B143:                               	; preds = %B137
  %t53 = load i32, i32* @ptr, align 4
  %t54 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t53
  %t149 = load i32, i32* %t54, align 4
  %t55 = sub i32 %t149, 1
  %t51 = load i32, i32* @ptr, align 4
  %t52 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t51
  store i32 %t55, i32* %t52, align 4
  %t276 = add i32 %t285, 0
  %t251 = add i32 %t260, 0
  %t223 = add i32 %t123, 0
  br label %B145
B148:                               	; preds = %B137
  br label %B144
B145:                               	; preds = %B143, %B152
  %t278 = add i32 %t276, 0
  %t253 = add i32 %t251, 0
  %t225 = add i32 %t223, 0
  br label %B138
B144:                               	; preds = %B148
  %t57 = icmp eq i32 %t123, 46
  br i1 %t57, label %B150, label %B155
B150:                               	; preds = %B144
  %t58 = load i32, i32* @ptr, align 4
  %t59 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t58
  %t156 = load i32, i32* %t59, align 4
  call void @putch(i32 %t156)
  %t274 = add i32 %t285, 0
  %t249 = add i32 %t260, 0
  %t221 = add i32 %t123, 0
  br label %B152
B155:                               	; preds = %B144
  br label %B151
B152:                               	; preds = %B150, %B159
  %t276 = add i32 %t274, 0
  %t251 = add i32 %t249, 0
  %t223 = add i32 %t221, 0
  br label %B145
B151:                               	; preds = %B155
  %t61 = icmp eq i32 %t123, 44
  br i1 %t61, label %B157, label %B162
B157:                               	; preds = %B151
  %t64 = call i32 @getch()
  %t62 = load i32, i32* @ptr, align 4
  %t63 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t62
  store i32 %t64, i32* %t63, align 4
  %t272 = add i32 %t285, 0
  %t247 = add i32 %t260, 0
  %t219 = add i32 %t123, 0
  br label %B159
B162:                               	; preds = %B151
  br label %B158
B159:                               	; preds = %B157, %B164
  %t274 = add i32 %t272, 0
  %t249 = add i32 %t247, 0
  %t221 = add i32 %t219, 0
  br label %B152
B158:                               	; preds = %B162
  %t66 = icmp eq i32 %t123, 93
  br i1 %t66, label %B165, label %B168
B165:                               	; preds = %B158
  %t67 = load i32, i32* @ptr, align 4
  %t68 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t67
  %t169 = load i32, i32* %t68, align 4
  %t70 = icmp ne i32 %t169, 0
  br i1 %t70, label %B163, label %B171
B168:                               	; preds = %B158
  %t270 = add i32 %t285, 0
  %t245 = add i32 %t260, 0
  %t217 = add i32 %t123, 0
  br label %B164
B163:                               	; preds = %B165
  br label %B173
B171:                               	; preds = %B165
  %t270 = add i32 %t285, 0
  %t245 = add i32 %t260, 0
  %t217 = add i32 %t123, 0
  br label %B164
B164:                               	; preds = %B168, %B171, %B175
  %t272 = add i32 %t270, 0
  %t247 = add i32 %t245, 0
  %t219 = add i32 %t217, 0
  br label %B159
B173:                               	; preds = %B163
  %t267 = add i32 %t285, 0
  %t242 = add i32 1, 0
  %t214 = add i32 %t123, 0
  %t73 = icmp sgt i32 1, 0
  br i1 %t73, label %B174, label %B178
B174:                               	; preds = %B173, %B183
  %t76 = sub i32 %t267, 1
  %t179 = load i32*, i32** %t110, align 4
  %t79 = getelementptr inbounds i32, i32* %t179, i32 %t76
  %t180 = load i32, i32* %t79, align 4
  %t81 = icmp eq i32 %t180, 91
  br i1 %t81, label %B181, label %B186
B178:                               	; preds = %B173
  %t268 = add i32 %t285, 0
  %t243 = add i32 1, 0
  %t215 = add i32 %t123, 0
  br label %B175
B181:                               	; preds = %B174
  %t84 = sub i32 %t242, 1
  %t240 = add i32 %t84, 0
  br label %B183
B186:                               	; preds = %B174
  br label %B182
B175:                               	; preds = %B178, %B196
  %t270 = add i32 %t268, 0
  %t245 = add i32 %t243, 0
  %t217 = add i32 %t215, 0
  br label %B164
B183:                               	; preds = %B181, %B188
  %t267 = add i32 %t76, 0
  %t242 = add i32 %t240, 0
  %t214 = add i32 %t180, 0
  %t193 = icmp sgt i32 %t240, 0
  br i1 %t193, label %B174, label %B196
B182:                               	; preds = %B186
  %t86 = icmp eq i32 %t180, 93
  br i1 %t86, label %B187, label %B191
B196:                               	; preds = %B183
  %t268 = add i32 %t76, 0
  %t243 = add i32 %t240, 0
  %t215 = add i32 %t180, 0
  br label %B175
B187:                               	; preds = %B182
  %t89 = add i32 %t242, 1
  %t238 = add i32 %t89, 0
  br label %B188
B191:                               	; preds = %B182
  %t238 = add i32 %t242, 0
  br label %B188
B188:                               	; preds = %B187, %B191
  %t240 = add i32 %t238, 0
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
