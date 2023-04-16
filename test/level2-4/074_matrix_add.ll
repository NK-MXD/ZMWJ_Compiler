@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @add(i32* %t3, i32* %t5, i32* %t7, i32* %t9, i32* %t11, i32* %t13, i32* %t15, i32* %t17, i32* %t19) {
B138:
  %t139 = alloca i32*, align 4
  %t140 = alloca i32*, align 4
  %t141 = alloca i32*, align 4
  %t142 = alloca i32*, align 4
  %t143 = alloca i32*, align 4
  %t144 = alloca i32*, align 4
  %t145 = alloca i32*, align 4
  %t146 = alloca i32*, align 4
  %t147 = alloca i32*, align 4
  store i32* %t3, i32** %t139, align 4
  store i32* %t5, i32** %t140, align 4
  store i32* %t7, i32** %t141, align 4
  store i32* %t9, i32** %t142, align 4
  store i32* %t11, i32** %t143, align 4
  store i32* %t13, i32** %t144, align 4
  store i32* %t15, i32** %t145, align 4
  store i32* %t17, i32** %t146, align 4
  store i32* %t19, i32** %t147, align 4
  br label %B149
B149:                               	; preds = %B138
  %t24 = load i32, i32* @M, align 4
  %t240 = add i32 0, 0
  %t25 = icmp slt i32 0, %t24
  br i1 %t25, label %B150, label %B154
B150:                               	; preds = %B149, %B288
  %t155 = load i32*, i32** %t139, align 4
  %t29 = getelementptr inbounds i32, i32* %t155, i32 %t240
  %t156 = load i32, i32* %t29, align 4
  %t157 = load i32*, i32** %t142, align 4
  %t31 = getelementptr inbounds i32, i32* %t157, i32 %t240
  %t158 = load i32, i32* %t31, align 4
  %t32 = add i32 %t156, %t158
  %t159 = load i32*, i32** %t145, align 4
  %t27 = getelementptr inbounds i32, i32* %t159, i32 %t240
  store i32 %t32, i32* %t27, align 4
  %t160 = load i32*, i32** %t140, align 4
  %t36 = getelementptr inbounds i32, i32* %t160, i32 %t240
  %t161 = load i32, i32* %t36, align 4
  %t162 = load i32*, i32** %t143, align 4
  %t38 = getelementptr inbounds i32, i32* %t162, i32 %t240
  %t163 = load i32, i32* %t38, align 4
  %t39 = add i32 %t161, %t163
  %t164 = load i32*, i32** %t146, align 4
  %t34 = getelementptr inbounds i32, i32* %t164, i32 %t240
  store i32 %t39, i32* %t34, align 4
  %t165 = load i32*, i32** %t141, align 4
  %t43 = getelementptr inbounds i32, i32* %t165, i32 %t240
  %t166 = load i32, i32* %t43, align 4
  %t167 = load i32*, i32** %t144, align 4
  %t45 = getelementptr inbounds i32, i32* %t167, i32 %t240
  %t168 = load i32, i32* %t45, align 4
  %t46 = add i32 %t166, %t168
  %t169 = load i32*, i32** %t147, align 4
  %t41 = getelementptr inbounds i32, i32* %t169, i32 %t240
  store i32 %t46, i32* %t41, align 4
  %t49 = add i32 %t240, 1
  %t171 = load i32, i32* @M, align 4
  %t172 = icmp slt i32 %t49, %t171
  br i1 %t172, label %B288, label %B175
B154:                               	; preds = %B149
  %t241 = add i32 0, 0
  br label %B151
B175:                               	; preds = %B150
  %t241 = add i32 %t49, 0
  br label %B151
B288:                               	; preds = %B150
  %t240 = add i32 %t49, 0
  br label %B150
B151:                               	; preds = %B154, %B175
  ret i32 0
}
define i32 @main() {
B176:
  %t177 = alloca [3 x i32], align 4
  %t178 = alloca [3 x i32], align 4
  %t179 = alloca [3 x i32], align 4
  %t180 = alloca [3 x i32], align 4
  %t181 = alloca [3 x i32], align 4
  %t182 = alloca [3 x i32], align 4
  %t183 = alloca [6 x i32], align 4
  %t184 = alloca [3 x i32], align 4
  %t185 = alloca [3 x i32], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  br label %B187
B187:                               	; preds = %B176
  %t65 = load i32, i32* @M, align 4
  %t265 = add i32 0, 0
  %t66 = icmp slt i32 0, %t65
  br i1 %t66, label %B188, label %B192
B188:                               	; preds = %B187, %B291
  %t68 = getelementptr inbounds [3 x i32], [3 x i32]* %t177, i32 0, i32 %t265
  store i32 %t265, i32* %t68, align 4
  %t71 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 %t265
  store i32 %t265, i32* %t71, align 4
  %t74 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 %t265
  store i32 %t265, i32* %t74, align 4
  %t77 = getelementptr inbounds [3 x i32], [3 x i32]* %t180, i32 0, i32 %t265
  store i32 %t265, i32* %t77, align 4
  %t80 = getelementptr inbounds [3 x i32], [3 x i32]* %t181, i32 0, i32 %t265
  store i32 %t265, i32* %t80, align 4
  %t83 = getelementptr inbounds [3 x i32], [3 x i32]* %t182, i32 0, i32 %t265
  store i32 %t265, i32* %t83, align 4
  %t87 = add i32 %t265, 1
  %t194 = load i32, i32* @M, align 4
  %t195 = icmp slt i32 %t87, %t194
  br i1 %t195, label %B291, label %B198
B192:                               	; preds = %B187
  %t264 = add i32 0, 0
  br label %B189
B198:                               	; preds = %B188
  %t264 = add i32 %t87, 0
  br label %B189
B291:                               	; preds = %B188
  %t265 = add i32 %t87, 0
  br label %B188
B189:                               	; preds = %B192, %B198
  %t89 = getelementptr inbounds [3 x i32], [3 x i32]* %t177, i32 0, i32 0
  %t90 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 0
  %t91 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 0
  %t92 = getelementptr inbounds [3 x i32], [3 x i32]* %t180, i32 0, i32 0
  %t93 = getelementptr inbounds [3 x i32], [3 x i32]* %t181, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x i32], [3 x i32]* %t182, i32 0, i32 0
  %t95 = getelementptr inbounds [6 x i32], [6 x i32]* %t183, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x i32], [3 x i32]* %t184, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x i32], [3 x i32]* %t185, i32 0, i32 0
  %t98 = call i32 @add(i32* %t89, i32* %t90, i32* %t91, i32* %t92, i32* %t93, i32* %t94, i32* %t95, i32* %t96, i32* %t97)
  br label %B200
B200:                               	; preds = %B189
  %t101 = load i32, i32* @N, align 4
  %t283 = add i32 0, 0
  %t258 = add i32 %t98, 0
  %t102 = icmp slt i32 %t98, %t101
  br i1 %t102, label %B201, label %B205
B201:                               	; preds = %B200, %B295
  %t105 = getelementptr inbounds [6 x i32], [6 x i32]* %t183, i32 0, i32 %t258
  %t206 = load i32, i32* %t105, align 4
  call void @putint(i32 %t206)
  %t109 = add i32 %t258, 1
  %t208 = load i32, i32* @N, align 4
  %t209 = icmp slt i32 %t109, %t208
  br i1 %t209, label %B295, label %B212
B205:                               	; preds = %B200
  %t284 = add i32 0, 0
  %t259 = add i32 %t98, 0
  br label %B202
B212:                               	; preds = %B201
  %t284 = add i32 %t206, 0
  %t259 = add i32 %t109, 0
  br label %B202
B295:                               	; preds = %B201
  %t283 = add i32 %t206, 0
  %t258 = add i32 %t109, 0
  br label %B201
B202:                               	; preds = %B205, %B212
  call void @putch(i32 10)
  br label %B213
B213:                               	; preds = %B202
  %t114 = load i32, i32* @N, align 4
  %t277 = add i32 10, 0
  %t252 = add i32 0, 0
  %t115 = icmp slt i32 0, %t114
  br i1 %t115, label %B214, label %B218
B214:                               	; preds = %B213, %B300
  %t118 = getelementptr inbounds [3 x i32], [3 x i32]* %t184, i32 0, i32 %t252
  %t219 = load i32, i32* %t118, align 4
  call void @putint(i32 %t219)
  %t122 = add i32 %t252, 1
  %t221 = load i32, i32* @N, align 4
  %t222 = icmp slt i32 %t122, %t221
  br i1 %t222, label %B300, label %B225
B218:                               	; preds = %B213
  %t278 = add i32 10, 0
  %t253 = add i32 0, 0
  br label %B215
B225:                               	; preds = %B214
  %t278 = add i32 %t219, 0
  %t253 = add i32 %t122, 0
  br label %B215
B300:                               	; preds = %B214
  %t277 = add i32 %t219, 0
  %t252 = add i32 %t122, 0
  br label %B214
B215:                               	; preds = %B218, %B225
  call void @putch(i32 10)
  br label %B226
B226:                               	; preds = %B215
  %t127 = load i32, i32* @N, align 4
  %t271 = add i32 10, 0
  %t246 = add i32 0, 0
  %t128 = icmp slt i32 0, %t127
  br i1 %t128, label %B227, label %B231
B227:                               	; preds = %B226, %B305
  %t131 = getelementptr inbounds [3 x i32], [3 x i32]* %t185, i32 0, i32 %t246
  %t232 = load i32, i32* %t131, align 4
  call void @putint(i32 %t232)
  %t135 = add i32 %t246, 1
  %t234 = load i32, i32* @N, align 4
  %t235 = icmp slt i32 %t135, %t234
  br i1 %t235, label %B305, label %B238
B231:                               	; preds = %B226
  %t272 = add i32 10, 0
  %t247 = add i32 0, 0
  br label %B228
B238:                               	; preds = %B227
  %t272 = add i32 %t232, 0
  %t247 = add i32 %t135, 0
  br label %B228
B305:                               	; preds = %B227
  %t271 = add i32 %t232, 0
  %t246 = add i32 %t135, 0
  br label %B227
B228:                               	; preds = %B231, %B238
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
