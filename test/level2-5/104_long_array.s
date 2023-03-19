	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =120020
	sub sp, sp, r4
.L136:
	str r0, [fp, #-4]
	ldr r4, =0
	ldr r5, =-120008
	str r4, [fp, r5]
	b .L142
.L142:
	ldr r4, =-120008
	ldr r5, [fp, r4]
	ldr r4, addr_N0
	ldr r6, [r4]
	cmp r5, r6
	movlt r4, #1
	movge r4, #0
	blt .L143
	b .L147
.L143:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	mul r6, r4, r5
	ldr r4, =10
	sdiv r5, r6, r4
	mul r7, r5, r4
	sub r4, r6, r7
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-120008
	str r5, [fp, r4]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L143
	b .L153
.L144:
	ldr r4, =0
	ldr r5, =-120008
	str r4, [fp, r5]
	b .L154
.L147:
	b .L144
.L153:
	b .L144
.L154:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L155
	b .L159
.L155:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, =-40004
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, =10
	sdiv r5, r6, r4
	mul r7, r5, r4
	sub r4, r6, r7
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-80004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-120008
	str r5, [fp, r4]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L155
	b .L167
.L156:
	ldr r4, =0
	ldr r5, =-120008
	str r4, [fp, r5]
	b .L168
.L159:
	b .L156
.L167:
	b .L156
.L168:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L169
	b .L173
.L169:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, =-80004
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-80004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	mul r6, r4, r5
	ldr r4, =100
	sdiv r5, r6, r4
	mul r7, r5, r4
	sub r4, r6, r7
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, =-120004
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	str r6, [r5]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-120008
	str r5, [fp, r4]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L169
	b .L182
	b .F0
.LTORG
addr_N0:
	.word N
.F0:
.L170:
	ldr r4, =0
	ldr r5, =-120012
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-120008
	str r4, [fp, r5]
	b .L184
.L173:
	b .L170
.L182:
	b .L170
.L184:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L185
	b .L189
.L185:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L190
	b .L195
.L186:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	mov r0, r4
	ldr r1, =120020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L189:
	b .L186
.L190:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-120004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, =1333
	sdiv r5, r6, r4
	mul r7, r5, r4
	sub r4, r6, r7
	ldr r5, =-120012
	str r4, [fp, r5]
	ldr r5, =-120012
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	b .L192
.L191:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L197
	b .L202
.L192:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-120008
	str r5, [fp, r4]
	ldr r5, =-120008
	ldr r4, [fp, r5]
	ldr r5, addr_N1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L185
	b .L253
.L195:
	b .L191
.L197:
	ldr r4, addr_N1
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	ldr r4, =-120016
	str r6, [fp, r4]
	b .L204
.L198:
	ldr r5, =-120008
	ldr r4, [fp, r5]
	cmp r4, #30
	movlt r4, #1
	movge r4, #0
	blt .L218
	b .L223
.L199:
	b .L192
.L202:
	b .L198
.L204:
	ldr r5, =-120016
	ldr r4, [fp, r5]
	ldr r5, addr_N1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L205
	b .L209
.L205:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-120004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, =-120016
	ldr r5, [fp, r4]
	ldr r4, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	sub r4, r6, r5
	ldr r5, =-120012
	str r4, [fp, r5]
	ldr r5, =-120016
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-120016
	str r5, [fp, r4]
	ldr r5, =-120016
	ldr r4, [fp, r5]
	ldr r5, addr_N1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L205
	b .L217
.L206:
	ldr r4, =-120012
	ldr r5, [fp, r4]
	mov r0, r5
	bl putint
	b .L199
.L209:
	b .L206
.L217:
	b .L206
.L218:
	ldr r4, addr_N1
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	ldr r4, =-120020
	str r6, [fp, r4]
	b .L225
.L219:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-120004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	ldr r6, [fp, #-4]
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =99988
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	ldr r5, =-120012
	str r4, [fp, r5]
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
	ldr r5, =-120020
	ldr r4, [fp, r5]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L226
	b .L230
.L226:
	ldr r5, =-120020
	ldr r4, [fp, r5]
	ldr r5, =2233
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L231
	b .L236
.L227:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	b .L220
.L230:
	b .L227
.L231:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-80004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, =-120020
	ldr r5, [fp, r4]
	ldr r4, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	sub r4, r6, r5
	ldr r5, =-120012
	str r4, [fp, r5]
	ldr r4, =-120020
	ldr r5, [fp, r4]
	add r4, r5, #1
	ldr r5, =-120020
	str r4, [fp, r5]
	b .L233
.L232:
	ldr r5, =-120012
	ldr r4, [fp, r5]
	ldr r6, =-120008
	ldr r5, [fp, r6]
	ldr r6, =-40004
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r5, =-120020
	ldr r4, [fp, r5]
	ldr r5, =-120004
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	ldr r4, =13333
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	ldr r5, =-120012
	str r4, [fp, r5]
	ldr r5, =-120020
	ldr r4, [fp, r5]
	add r5, r4, #2
	ldr r4, =-120020
	str r5, [fp, r4]
	b .L233
.L233:
	ldr r5, =-120020
	ldr r4, [fp, r5]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
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
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L254:
	mov r0, #9
	bl long_array
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

addr_N2:
	.word N
