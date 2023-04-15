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
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =120024
	sub sp, sp, r4
.L136:
	str r0, [fp, #-4]
	ldr r1, =0
	ldr r0, =-120008
	str r1, [fp, r0]
	b .L142
.L142:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L143
	b .L147
.L143:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, =-120008
	ldr r0, [fp, r0]
	mul r2, r1, r0
	ldr r1, =10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r0, =-120008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120008
	str r1, [fp, r0]
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L143
	b .L153
.L144:
	ldr r1, =0
	ldr r0, =-120008
	str r1, [fp, r0]
	b .L154
.L147:
	b .L144
.L153:
	b .L144
.L154:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L155
	b .L159
.L155:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r2, =-40004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	mul r2, r0, r1
	ldr r1, =10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-80004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r0, =-120008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120008
	str r1, [fp, r0]
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L155
	b .L167
.L156:
	ldr r1, =0
	ldr r0, =-120008
	str r1, [fp, r0]
	b .L168
.L159:
	b .L156
.L167:
	b .L156
.L168:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L169
	b .L173
.L169:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r2, =-80004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-80004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	mul r2, r0, r1
	ldr r1, =100
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r0, r0, r1
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-120004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r0, =-120008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120008
	str r1, [fp, r0]
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L169
	b .L182
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L170:
	ldr r1, =0
	ldr r0, =-120012
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-120008
	str r1, [fp, r0]
	b .L184
.L173:
	b .L170
.L182:
	b .L170
.L184:
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L185
	b .L189
.L185:
	ldr r0, =-120008
	ldr r0, [fp, r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L190
	b .L195
.L186:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =120024
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L189:
	b .L186
.L190:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-120004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r2, r0, r1
	ldr r1, =1333
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, =-120012
	str r1, [fp, r0]
	ldr r0, =-120012
	ldr r0, [fp, r0]
	bl putint
	b .L192
.L191:
	ldr r0, =-120008
	ldr r0, [fp, r0]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L197
	b .L202
.L192:
	ldr r0, =-120008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120008
	str r1, [fp, r0]
	ldr r0, =-120008
	ldr r1, [fp, r0]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L185
	b .L253
.L195:
	b .L191
.L197:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r1, r1, r0
	ldr r0, =-120016
	str r1, [fp, r0]
	b .L204
.L198:
	ldr r0, =-120008
	ldr r0, [fp, r0]
	cmp r0, #30
	movlt r0, #1
	movge r0, #0
	blt .L218
	b .L223
.L199:
	b .L192
.L202:
	b .L198
.L204:
	ldr r0, =-120016
	ldr r1, [fp, r0]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L205
	b .L209
.L205:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-120004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r0, r0, r1
	ldr r1, =-120016
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	sub r1, r0, r1
	ldr r0, =-120012
	str r1, [fp, r0]
	ldr r0, =-120016
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120016
	str r1, [fp, r0]
	ldr r0, =-120016
	ldr r1, [fp, r0]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L205
	b .L217
.L206:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	bl putint
	b .L199
.L209:
	b .L206
.L217:
	b .L206
.L218:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r1, r1, r0
	ldr r0, =-120020
	str r1, [fp, r0]
	b .L225
.L219:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-120004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, [fp, #-4]
	mla r2, r2, r1, r0
	ldr r1, =99988
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, =-120012
	str r1, [fp, r0]
	b .L220
	b .F1
.LTORG
addr_N1:
	.word N
.F1:
.L220:
	b .L199
.L223:
	b .L219
.L225:
	ldr r0, =-120020
	ldr r1, [fp, r0]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L226
	b .L230
.L226:
	ldr r0, =-120020
	ldr r1, [fp, r0]
	ldr r0, =2233
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L231
	b .L236
.L227:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	bl putint
	b .L220
.L230:
	b .L227
.L231:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-80004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r0, r0, r1
	ldr r1, =-120020
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	sub r1, r0, r1
	ldr r0, =-120012
	str r1, [fp, r0]
	ldr r0, =-120020
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-120020
	str r1, [fp, r0]
	b .L233
.L232:
	ldr r0, =-120012
	ldr r0, [fp, r0]
	ldr r1, =-120008
	ldr r2, [fp, r1]
	ldr r3, =-40004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r0, r0, r1
	ldr r1, =-120020
	ldr r2, [fp, r1]
	ldr r3, =-120004
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r2, r0, r1
	ldr r1, =13333
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, =-120012
	str r1, [fp, r0]
	ldr r0, =-120020
	ldr r0, [fp, r0]
	add r1, r0, #2
	ldr r0, =-120020
	str r1, [fp, r0]
	b .L233
.L233:
	ldr r0, =-120020
	ldr r1, [fp, r0]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L226
	b .L246
.L236:
	b .L232
.L246:
	b .L227
.L253:
	b .L186

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
