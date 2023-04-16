@RADIUS = global float 0x4016000000000000, align 4
@PI = global float 0x400921FB60000000, align 4
@EPS = global float 0x3EB0C6F7A0000000, align 4
@PI_HEX = global float 0x400921FB60000000, align 4
@HEX2 = global float 0x3FB4000000000000, align 4
@FACT = global float 0xC0E01D0000000000, align 4
@EVAL1 = global float 0x4057C21FC0000000, align 4
@EVAL2 = global float 0x4041475CE0000000, align 4
@EVAL3 = global float 0x4041475CE0000000, align 4
@CONV1 = global float 0x406D200000000000, align 4
@CONV2 = global float 0x40AFFE0000000000, align 4
@MAX = global i32 1000000000, align 4
@TWO = global i32 2, align 4
@THREE = global i32 3, align 4
@FIVE = global i32 5, align 4
define float @float_abs(float %t39) {
B160:
  %t161 = alloca float, align 4
  store float %t39, float* %t161, align 4
  %t41 = load float, float* %t161, align 4
  %t43 = sitofp i32 0 to float
  %t42 = icmp slt float %t41, %t43
  br i1 %t42, label %B162, label %B166
B162:                               	; preds = %B160
  %t44 = load float, float* %t161, align 4
  %t45 = fsub float 0.000000, %t44
  ret float %t45
B166:                               	; preds = %B160
  br label %B163
B163:                               	; preds = %B166
  %t46 = load float, float* %t161, align 4
  ret float %t46
}
define float @circle_area(i32 %t47) {
B167:
  %t168 = alloca i32, align 4
  store i32 %t47, i32* %t168, align 4
  %t49 = load float, float* @PI, align 4
  %t50 = load i32, i32* %t168, align 4
  %t52 = sitofp i32 %t50 to float
  %t51 = fmul float %t49, %t52
  %t53 = load i32, i32* %t168, align 4
  %t54 = fmul float %t51, %t52
  %t56 = load i32, i32* %t168, align 4
  %t57 = load i32, i32* %t168, align 4
  %t58 = mul i32 %t56, %t57
  %t61 = sitofp i32 %t58 to float
  %t59 = load float, float* @PI, align 4
  %t60 = fmul float %t61, %t59
  %t62 = fadd float %t54, %t60
  %t64 = sitofp i32 2 to float
  %t63 = fdiv float %t62, %t64
  ret float %t63
}
define i32 @float_eq(float %t65, float %t67) {
B169:
  %t170 = alloca float, align 4
  %t171 = alloca float, align 4
  store float %t65, float* %t170, align 4
  store float %t67, float* %t171, align 4
  %t69 = load float, float* %t170, align 4
  %t70 = load float, float* %t171, align 4
  %t71 = fsub float %t69, %t70
  %t72 = call float @float_abs(float %t71)
  %t73 = load float, float* @EPS, align 4
  %t74 = icmp slt float %t72, %t73
  br i1 %t74, label %B172, label %B177
B172:                               	; preds = %B169
  %t76 = sitofp i32 1 to float
  %t75 = fmul float %t76, 2.000000
  %t78 = sitofp i32 2 to float
  %t77 = fdiv float %t75, %t78
  %t79 = fptosi float %t77 to i32
  ret i32 %t79
B177:                               	; preds = %B169
  br label %B173
B173:                               	; preds = %B177
  ret i32 0
}
define void @error() {
B178:
  call void @putch(i32 101)
  call void @putch(i32 114)
  call void @putch(i32 114)
  call void @putch(i32 111)
  call void @putch(i32 114)
  call void @putch(i32 10)
  ret void
}
define void @ok() {
B179:
  call void @putch(i32 111)
  call void @putch(i32 107)
  call void @putch(i32 10)
  ret void
}
define void @assert(i32 %t80) {
B180:
  %t181 = alloca i32, align 4
  store i32 %t80, i32* %t181, align 4
  %t82 = load i32, i32* %t181, align 4
  %t185 = icmp ne i32 %t82, 0
  %t83 = xor i1 %t185, true
  %t84 = icmp ne i1 %t83, 0
  br i1 %t84, label %B182, label %B187
B182:                               	; preds = %B180
  call void @error()
  br label %B184
B187:                               	; preds = %B180
  br label %B183
B184:                               	; preds = %B182, %B183
  ret void
B183:                               	; preds = %B187
  call void @ok()
  br label %B184
}
define i32 @main() {
B189:
  %t228 = alloca [10 x float], align 4
  %t247 = alloca float, align 4
  %t248 = alloca float, align 4
  %t249 = alloca float, align 4
  %t85 = load float, float* @HEX2, align 4
  %t86 = load float, float* @FACT, align 4
  %t87 = call i32 @float_eq(float %t85, float %t86)
  %t190 = icmp ne i32 %t87, 0
  %t88 = xor i1 %t190, true
  call void @assert(i1 %t88)
  %t89 = load float, float* @EVAL1, align 4
  %t90 = load float, float* @EVAL2, align 4
  %t91 = call i32 @float_eq(float %t89, float %t90)
  %t191 = icmp ne i32 %t91, 0
  %t92 = xor i1 %t191, true
  call void @assert(i1 %t92)
  %t93 = load float, float* @EVAL2, align 4
  %t94 = load float, float* @EVAL3, align 4
  %t95 = call i32 @float_eq(float %t93, float %t94)
  call void @assert(i32 %t95)
  %t96 = load float, float* @RADIUS, align 4
  %t98 = fptosi float %t96 to i32
  %t97 = call float @circle_area(i32 %t98)
  %t99 = load i32, i32* @FIVE, align 4
  %t100 = call float @circle_area(i32 %t99)
  %t101 = call i32 @float_eq(float %t97, float %t100)
  call void @assert(i32 %t101)
  %t102 = load float, float* @CONV1, align 4
  %t103 = load float, float* @CONV2, align 4
  %t104 = call i32 @float_eq(float %t102, float %t103)
  %t192 = icmp ne i32 %t104, 0
  %t105 = xor i1 %t192, true
  call void @assert(i1 %t105)
  %t106 = icmp ne float 1.500000, 0.000000
  br i1 %t106, label %B193, label %B197
B193:                               	; preds = %B189
  call void @ok()
  br label %B194
B197:                               	; preds = %B189
  br label %B194
B194:                               	; preds = %B193, %B197
  %t108 = icmp ne float 3.300000, 0.000000
  %t203 = icmp ne i1 %t108, 0
  %t107 = xor i1 %t203, true
  %t204 = icmp ne i1 %t107, 0
  %t109 = xor i1 %t204, true
  %t110 = icmp ne i1 %t109, 0
  br i1 %t110, label %B198, label %B206
B198:                               	; preds = %B194
  call void @ok()
  br label %B199
B206:                               	; preds = %B194
  br label %B199
B199:                               	; preds = %B198, %B206
  %t112 = icmp ne float 0.000000, 0.000000
  br i1 %t112, label %B210, label %B213
B210:                               	; preds = %B199
  %t113 = icmp ne i32 3, 0
  br i1 %t113, label %B208, label %B215
B213:                               	; preds = %B199
  br label %B209
B208:                               	; preds = %B210
  call void @error()
  br label %B209
B215:                               	; preds = %B210
  br label %B209
B209:                               	; preds = %B208, %B213, %B215
  %t115 = icmp ne i32 0, 0
  br i1 %t115, label %B217, label %B221
B217:                               	; preds = %B209, %B219
  call void @ok()
  br label %B218
B221:                               	; preds = %B209
  br label %B219
B218:                               	; preds = %B217, %B225
  %t229 = bitcast [10 x float]* %t228 to i8*
  call void @llvm.memset.p0.i32(i8* %t229, i8 0, i32 40, i1 0)
  %t230 = getelementptr inbounds [10 x float], [10 x float]* %t228, i32 0, i32 0
  store float 1.000000, float* %t230, align 4
  %t119 = sitofp i32 2 to float
  %t231 = getelementptr inbounds [10 x float], [10 x float]* %t228, i32 0, i32 1
  store float %t119, float* %t231, align 4
  %t122 = call i32 @getfarray(float* %t230)
  br label %B241
B219:                               	; preds = %B221
  %t116 = icmp ne float 0.300000, 0.000000
  br i1 %t116, label %B217, label %B225
B241:                               	; preds = %B218
  %t125 = load i32, i32* @MAX, align 4
  %t264 = add i32 0, 0
  %t258 = add i32 1, 0
  %t126 = icmp slt i32 1, %t125
  br i1 %t126, label %B242, label %B246
B225:                               	; preds = %B219
  br label %B218
B242:                               	; preds = %B241, %B272
  %t127 = call float @getfloat()
  store float %t127, float* %t247, align 4
  %t129 = load float, float* @PI, align 4
  %t130 = load float, float* %t247, align 4
  %t131 = fmul float %t129, %t130
  %t132 = load float, float* %t247, align 4
  %t133 = fmul float %t131, %t132
  store float %t133, float* %t248, align 4
  %t135 = load float, float* %t247, align 4
  %t137 = fptosi float %t135 to i32
  %t136 = call float @circle_area(i32 %t137)
  store float %t136, float* %t249, align 4
  %t142 = getelementptr inbounds [10 x float], [10 x float]* %t228, i32 0, i32 %t264
  %t250 = load float, float* %t142, align 4
  %t143 = load float, float* %t247, align 4
  %t144 = fadd float %t250, %t143
  %t140 = getelementptr inbounds [10 x float], [10 x float]* %t228, i32 0, i32 %t264
  store float %t144, float* %t140, align 4
  %t145 = load float, float* %t248, align 4
  call void @putfloat(float %t145)
  call void @putch(i32 32)
  %t146 = load float, float* %t249, align 4
  %t147 = fptosi float %t146 to i32
  call void @putint(i32 %t147)
  call void @putch(i32 10)
  %t153 = sitofp i32 %t258 to float
  %t150 = fsub float 0.000000, 10.000000
  %t151 = fsub float 0.000000, %t150
  %t152 = fmul float %t153, %t151
  %t154 = fptosi float %t152 to i32
  %t157 = add i32 %t264, 1
  %t252 = load i32, i32* @MAX, align 4
  %t253 = icmp slt i32 %t154, %t252
  br i1 %t253, label %B272, label %B256
B246:                               	; preds = %B241
  %t265 = add i32 0, 0
  %t259 = add i32 1, 0
  br label %B243
B256:                               	; preds = %B242
  %t265 = add i32 %t157, 0
  %t259 = add i32 %t154, 0
  br label %B243
B272:                               	; preds = %B242
  %t264 = add i32 %t157, 0
  %t258 = add i32 %t154, 0
  br label %B242
B243:                               	; preds = %B246, %B256
  %t159 = getelementptr inbounds [10 x float], [10 x float]* %t228, i32 0, i32 0
  call void @putfarray(i32 %t122, float* %t159)
  ret i32 0
}
declare void @putch(i32)
declare i32 @getfarray(float*)
declare float @getfloat()
declare void @putfloat(float)
declare void @putint(i32)
declare void @putfarray(i32, float*)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
