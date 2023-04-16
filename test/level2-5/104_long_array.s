	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global N
	.align 4
	.size N, 4
N:
	.word 10000
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =120008
	sub sp, sp, r4
.L136:
	str r0, [fp, #-4]
	b .L142
.L142:
	ldr r0, addr_N0
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L143
	b .L147
.L143:
	mul r3, r0, r0
	ldr r2, =10
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r4, r3, r1
	ldr r3, =-40004
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r4, [r1]
	add r1, r0, #1
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L339
	b .L153
.L144:
	b .L154
.L147:
	ldr r0, =0
	b .L144
.L153:
	b .L144
.L154:
	ldr r0, addr_N0
	ldr r2, [r0]
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r2
	movlt r0, #1
	movge r0, #0
	blt .L155
	b .L159
.L155:
	ldr r3, =-40004
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r0, [r0]
	ldr r4, =-40004
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	mul r3, r0, r2
	ldr r2, =10
	sdiv r0, r3, r2
	mul r0, r0, r2
	sub r4, r3, r0
	ldr r3, =-80004
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	str r4, [r0]
	add r1, r1, #1
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L342
	b .L167
.L156:
	b .L168
.L159:
	ldr r0, =0
	b .L156
.L167:
	b .L156
.L168:
	ldr r0, addr_N0
	ldr r2, [r0]
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r2
	movlt r0, #1
	movge r0, #0
	blt .L169
	b .L173
.L169:
	ldr r3, =-80004
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r0, [r0]
	ldr r4, =-80004
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	mul r3, r0, r2
	ldr r2, =100
	sdiv r0, r3, r2
	mul r0, r0, r2
	sub r0, r3, r0
	ldr r4, =-40004
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	add r4, r0, r2
	ldr r3, =-120004
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	str r4, [r0]
	add r1, r1, #1
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L345
	b .L182
.L170:
	b .L184
.L173:
	ldr r0, =0
	b .L170
.L182:
	b .L170
.L184:
	ldr r0, addr_N0
	ldr r1, [r0]
	ldr r0, =0
	mov r6, r0
	ldr r0, =0
	mov r7, r0
	ldr r0, =0
	ldr r2, =0
	mov r4, r2
	ldr r2, =0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L185
	b .L189
.L185:
	cmp r4, #10
	movlt r1, #1
	movge r1, #0
	blt .L190
	b .L195
.L186:
	mov r0, r1
	ldr r1, =120008
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L189:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L186
.L190:
	ldr r3, =-120004
	mov r1, #4
	mul r2, r4, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r2, r0, r1
	ldr r1, =1333
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r5, r2, r0
	mov r0, r5
	bl putint
	mov r0, r6
	mov r3, r5
	b .L192
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L191:
	cmp r4, #20
	movlt r1, #1
	movge r1, #0
	blt .L197
	b .L202
.L192:
	add r1, r4, #1
	ldr r2, addr_N1
	ldr r2, [r2]
	mov r6, r0
	mov r0, r3
	mov r4, r1
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L185
	b .L253
.L195:
	b .L191
.L197:
	ldr r1, addr_N1
	ldr r2, [r1]
	ldr r1, =2
	sdiv r3, r2, r1
	b .L204
.L198:
	cmp r4, #30
	movlt r1, #1
	movge r1, #0
	blt .L218
	b .L223
.L199:
	mov r7, r2
	mov r3, r1
	b .L192
.L202:
	b .L198
.L204:
	ldr r1, addr_N1
	ldr r5, [r1]
	mov r2, r3
	mov r1, r0
	cmp r3, r5
	movlt r5, #1
	movge r5, #0
	blt .L205
	b .L209
.L205:
	ldr r5, =-120004
	mov r0, #4
	mul r3, r4, r0
	add r0, fp, r5
	add r0, r0, r3
	ldr r0, [r0]
	add r0, r1, r0
	ldr r5, =-40004
	mov r1, #4
	mul r3, r2, r1
	add r1, fp, r5
	add r1, r1, r3
	ldr r1, [r1]
	sub r0, r0, r1
	add r2, r2, #1
	ldr r1, addr_N1
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L363
	b .L217
.L206:
	mov r0, r5
	bl putint
	mov r0, r6
	mov r2, r7
	mov r1, r5
	b .L199
.L209:
	mov r7, r3
	mov r5, r0
	b .L206
.L217:
	mov r7, r2
	mov r5, r0
	b .L206
.L218:
	ldr r1, addr_N1
	ldr r2, [r1]
	ldr r1, =2
	sdiv r2, r2, r1
	b .L225
.L219:
	ldr r3, =-120004
	mov r1, #4
	mul r2, r4, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, [fp, #-4]
	mla r2, r2, r1, r0
	ldr r1, =99988
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	mov r0, r6
	b .L220
.L220:
	mov r2, r7
	b .L199
.L223:
	b .L219
.L225:
	ldr r1, addr_N1
	ldr r5, [r1]
	mov r1, r2
	mov r3, r0
	cmp r2, r5
	movlt r5, #1
	movge r5, #0
	blt .L226
	b .L230
.L226:
	ldr r0, =2233
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L231
	b .L236
.L227:
	mov r0, r5
	bl putint
	mov r0, r6
	mov r1, r5
	b .L220
.L230:
	mov r6, r2
	mov r5, r0
	b .L227
.L231:
	ldr r5, =-80004
	mov r0, #4
	mul r2, r4, r0
	add r0, fp, r5
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r3, r0
	ldr r5, =-40004
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r5
	add r2, r2, r3
	ldr r2, [r2]
	sub r3, r0, r2
	add r0, r1, #1
	mov r2, r0
	mov r0, r3
	b .L233
.L232:
	ldr r5, =-40004
	mov r0, #4
	mul r2, r4, r0
	add r0, fp, r5
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r3, r0
	ldr r5, =-120004
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r5
	add r2, r2, r3
	ldr r2, [r2]
	add r3, r0, r2
	ldr r2, =13333
	sdiv r0, r3, r2
	mul r0, r0, r2
	sub r3, r3, r0
	add r0, r1, #2
	mov r2, r0
	mov r0, r3
	b .L233
.L233:
	ldr r1, addr_N1
	ldr r5, [r1]
	mov r1, r2
	mov r3, r0
	cmp r2, r5
	movlt r5, #1
	movge r5, #0
	blt .L226
	b .L246
	b .F1
.LTORG
addr_N1:
	.word N
.F1:
.L236:
	b .L232
.L246:
	mov r6, r2
	mov r5, r0
	b .L227
.L253:
	mov r1, r3
	b .L186
.L339:
	mov r0, r1
	b .L143
.L342:
	b .L155
.L345:
	b .L169
.L363:
	mov r1, r0
	b .L205

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L254:
	mov r0, #9
	bl long_array
	pop {r3, r4, fp, lr}
	bx lr

addr_N2:
	.word N
	.ident "ZWJM"
