@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4
define i32 @set_a(i32 %t3) {
B121:
  %t122 = alloca i32, align 4
  store i32 %t3, i32* %t122, align 4
  %t6 = load i32, i32* %t122, align 4
  store i32 %t6, i32* @a, align 4
  %t7 = load i32, i32* @a, align 4
  ret i32 %t7
}
define i32 @set_b(i32 %t8) {
B123:
  %t124 = alloca i32, align 4
  store i32 %t8, i32* %t124, align 4
  %t11 = load i32, i32* %t124, align 4
  store i32 %t11, i32* @b, align 4
  %t12 = load i32, i32* @b, align 4
  ret i32 %t12
}
define i32 @set_d(i32 %t13) {
B125:
  %t126 = alloca i32, align 4
  store i32 %t13, i32* %t126, align 4
  %t16 = load i32, i32* %t126, align 4
  store i32 %t16, i32* @d, align 4
  %t17 = load i32, i32* @d, align 4
  ret i32 %t17
}
define i32 @main() {
B127:
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t20 = call i32 @set_a(i32 0)
  %t23 = icmp ne i32 %t20, 0
  br i1 %t23, label %B130, label %B132
B130:                               	; preds = %B127
  %t21 = call i32 @set_b(i32 1)
  %t24 = icmp ne i32 %t21, 0
  br i1 %t24, label %B128, label %B135
B132:                               	; preds = %B127
  br label %B129
B128:                               	; preds = %B130
  br label %B129
B135:                               	; preds = %B130
  br label %B129
B129:                               	; preds = %B128, %B132, %B135
  %t25 = load i32, i32* @a, align 4
  call void @putint(i32 %t25)
  call void @putch(i32 32)
  %t26 = load i32, i32* @b, align 4
  call void @putint(i32 %t26)
  call void @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t29 = call i32 @set_a(i32 0)
  %t32 = icmp ne i32 %t29, 0
  br i1 %t32, label %B139, label %B141
B139:                               	; preds = %B129
  %t30 = call i32 @set_b(i32 1)
  %t33 = icmp ne i32 %t30, 0
  br i1 %t33, label %B137, label %B144
B141:                               	; preds = %B129
  br label %B138
B137:                               	; preds = %B139
  br label %B138
B144:                               	; preds = %B139
  br label %B138
B138:                               	; preds = %B137, %B141, %B144
  %t34 = load i32, i32* @a, align 4
  call void @putint(i32 %t34)
  call void @putch(i32 32)
  %t35 = load i32, i32* @b, align 4
  call void @putint(i32 %t35)
  call void @putch(i32 10)
  store i32 2, i32* @d, align 4
  %t39 = icmp sge i32 1, 1
  br i1 %t39, label %B149, label %B152
B149:                               	; preds = %B138
  %t40 = call i32 @set_d(i32 3)
  %t42 = icmp ne i32 %t40, 0
  br i1 %t42, label %B147, label %B154
B152:                               	; preds = %B138
  br label %B148
B147:                               	; preds = %B149
  br label %B148
B154:                               	; preds = %B149
  br label %B148
B148:                               	; preds = %B147, %B152, %B154
  %t43 = load i32, i32* @d, align 4
  call void @putint(i32 %t43)
  call void @putch(i32 32)
  %t45 = icmp sle i32 1, 1
  br i1 %t45, label %B156, label %B161
B156:                               	; preds = %B148, %B158
  br label %B157
B161:                               	; preds = %B148
  br label %B158
B157:                               	; preds = %B156, %B163
  %t49 = load i32, i32* @d, align 4
  call void @putint(i32 %t49)
  call void @putch(i32 10)
  %t50 = add i32 2, 1
  %t51 = sub i32 3, %t50
  %t52 = icmp sge i32 16, %t51
  br i1 %t52, label %B165, label %B169
B158:                               	; preds = %B161
  %t46 = call i32 @set_d(i32 4)
  %t48 = icmp ne i32 %t46, 0
  br i1 %t48, label %B156, label %B163
B165:                               	; preds = %B157
  call void @putch(i32 65)
  br label %B166
B169:                               	; preds = %B157
  br label %B166
B163:                               	; preds = %B158
  br label %B157
B166:                               	; preds = %B165, %B169
  %t53 = sub i32 25, 7
  %t54 = mul i32 6, 3
  %t55 = sub i32 36, %t54
  %t56 = icmp ne i32 %t53, %t55
  br i1 %t56, label %B170, label %B174
B170:                               	; preds = %B166
  call void @putch(i32 66)
  br label %B171
B174:                               	; preds = %B166
  br label %B171
B171:                               	; preds = %B170, %B174
  %t57 = icmp slt i32 1, 8
  %t58 = srem i32 7, 2
  %t180 = zext i1 %t57 to i32
  %t59 = icmp ne i32 %t180, %t58
  br i1 %t59, label %B175, label %B183
B175:                               	; preds = %B171
  call void @putch(i32 67)
  br label %B176
B183:                               	; preds = %B171
  br label %B176
B176:                               	; preds = %B175, %B183
  %t60 = icmp sgt i32 3, 4
  %t189 = zext i1 %t60 to i32
  %t61 = icmp eq i32 %t189, 0
  br i1 %t61, label %B184, label %B192
B184:                               	; preds = %B176
  call void @putch(i32 68)
  br label %B185
B192:                               	; preds = %B176
  br label %B185
B185:                               	; preds = %B184, %B192
  %t62 = icmp sle i32 102, 63
  %t198 = zext i1 %t62 to i32
  %t63 = icmp eq i32 1, %t198
  br i1 %t63, label %B193, label %B201
B193:                               	; preds = %B185
  call void @putch(i32 69)
  br label %B194
B201:                               	; preds = %B185
  br label %B194
B194:                               	; preds = %B193, %B201
  %t64 = sub i32 5, 6
  %t204 = icmp ne i32 0, 0
  %t65 = xor i1 %t204, true
  %t205 = zext i1 %t65 to i32
  %t66 = sub i32 0, %t205
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %B202, label %B208
B202:                               	; preds = %B194
  call void @putch(i32 70)
  br label %B203
B208:                               	; preds = %B194
  br label %B203
B203:                               	; preds = %B202, %B208
  call void @putch(i32 10)
  br label %B214
B214:                               	; preds = %B203
  %t76 = icmp ne i32 0, 0
  br i1 %t76, label %B229, label %B219
B229:                               	; preds = %B214, %B215
  %t227 = icmp ne i32 1, 0
  br i1 %t227, label %B215, label %B234
B219:                               	; preds = %B214
  br label %B216
B215:                               	; preds = %B229
  call void @putch(i32 32)
  %t225 = icmp ne i32 0, 0
  br i1 %t225, label %B229, label %B231
B234:                               	; preds = %B229
  br label %B216
B216:                               	; preds = %B219, %B231, %B234
  %t81 = icmp ne i32 0, 0
  br i1 %t81, label %B236, label %B240
B231:                               	; preds = %B215
  br label %B216
B236:                               	; preds = %B216, %B238
  call void @putch(i32 67)
  br label %B237
B240:                               	; preds = %B216
  br label %B238
B237:                               	; preds = %B236, %B243
  %t85 = icmp sge i32 0, 1
  br i1 %t85, label %B245, label %B250
B238:                               	; preds = %B240
  %t82 = icmp ne i32 1, 0
  br i1 %t82, label %B236, label %B243
B245:                               	; preds = %B237, %B247
  call void @putch(i32 72)
  br label %B246
B250:                               	; preds = %B237
  br label %B247
B243:                               	; preds = %B238
  br label %B237
B246:                               	; preds = %B245, %B253
  %t92 = icmp sge i32 2, 1
  br i1 %t92, label %B256, label %B259
B247:                               	; preds = %B250
  %t88 = icmp sle i32 1, 0
  br i1 %t88, label %B245, label %B253
B256:                               	; preds = %B246
  %t95 = icmp ne i32 4, 3
  br i1 %t95, label %B254, label %B262
B259:                               	; preds = %B246
  br label %B255
B253:                               	; preds = %B247
  br label %B246
B254:                               	; preds = %B256
  call void @putch(i32 73)
  br label %B255
B262:                               	; preds = %B256
  br label %B255
B255:                               	; preds = %B254, %B259, %B262
  %t267 = icmp ne i32 1, 0
  %t99 = xor i1 %t267, true
  %t268 = zext i1 %t99 to i32
  %t100 = icmp eq i32 0, %t268
  br i1 %t100, label %B266, label %B271
B266:                               	; preds = %B255
  %t103 = icmp slt i32 3, 3
  br i1 %t103, label %B263, label %B274
B271:                               	; preds = %B255
  br label %B265
B263:                               	; preds = %B265, %B266
  call void @putch(i32 74)
  br label %B264
B274:                               	; preds = %B266
  br label %B265
B265:                               	; preds = %B271, %B274
  %t107 = icmp sge i32 4, 4
  br i1 %t107, label %B263, label %B277
B264:                               	; preds = %B263, %B277
  %t281 = icmp ne i32 1, 0
  %t111 = xor i1 %t281, true
  %t282 = zext i1 %t111 to i32
  %t112 = icmp eq i32 0, %t282
  br i1 %t112, label %B278, label %B285
B277:                               	; preds = %B265
  br label %B264
B278:                               	; preds = %B264, %B286
  call void @putch(i32 75)
  br label %B279
B285:                               	; preds = %B264
  br label %B280
B279:                               	; preds = %B278, %B289, %B292
  call void @putch(i32 10)
  ret i32 0
B280:                               	; preds = %B285
  %t115 = icmp slt i32 3, 3
  br i1 %t115, label %B286, label %B289
B286:                               	; preds = %B280
  %t118 = icmp sge i32 4, 4
  br i1 %t118, label %B278, label %B292
B289:                               	; preds = %B280
  br label %B279
B292:                               	; preds = %B286
  br label %B279
}
declare void @putint(i32)
declare void @putch(i32)
