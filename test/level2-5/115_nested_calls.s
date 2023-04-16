	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func1
	.type func1 , %function
func1:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L150:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	mov r0, r2
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L154
	b .L159
.L154:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L155:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r1, r1, r0
	mov r0, r2
	mov r2, #0
	bl func1
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L159:
	b .L155

	.global func2
	.type func2 , %function
func2:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L160:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L163
	b .L167
.L163:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	mov r1, #0
	bl func2
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L164:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L167:
	b .L164

	.global func3
	.type func3 , %function
func3:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L169:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L172
	b .L177
.L172:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L173:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	mov r1, #0
	bl func3
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L177:
	b .L173

	.global func4
	.type func4 , %function
func4:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L178:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L182
	b .L186
.L182:
	ldr r0, [fp, #-8]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L183:
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L186:
	b .L183

	.global func5
	.type func5 , %function
func5:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L188:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, =0
	sub r0, r0, r1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global func6
	.type func6 , %function
func6:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L190:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L196
	b .L198
.L193:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L194:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L196:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L193
	b .L201
.L198:
	b .L194
.L201:
	b .L194

	.global func7
	.type func7 , %function
func7:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L203:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L205
	b .L210
.L205:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L206:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L210:
	b .L206

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #96
.L212:
	bl getint
	str r0, [fp, #-44]
	bl getint
	str r0, [fp, #-48]
	bl getint
	str r0, [fp, #-52]
	bl getint
	str r0, [fp, #-56]
	b .L219
.L219:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L220
	b .L224
.L220:
	bl getint
	mov r3, r0
	mov r2, #-40
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	add r1, r4, #1
	cmp r1, #10
	movlt r0, #1
	movge r0, #0
	blt .L263
	b .L229
.L221:
	ldr r0, [fp, #-44]
	bl func7
	mov r4, r0
	ldr r0, [fp, #-48]
	bl func5
	mov r1, r0
	mov r0, r4
	bl func6
	ldr r1, [fp, #-52]
	bl func2
	ldr r1, [fp, #-56]
	bl func3
	bl func5
	str r0, [fp, #-60]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-64]
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-68]
	mov r1, #1
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-72]
	mov r0, r0
	ldr r0, [r0]
	bl func5
	mov r6, r0
	mov r1, #2
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-76]
	mov r0, r0
	ldr r4, [r0]
	mov r1, #3
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-80]
	mov r0, r0
	ldr r0, [r0]
	bl func7
	mov r1, r0
	mov r0, r4
	bl func6
	mov r5, r0
	mov r1, #4
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-84]
	mov r0, r0
	ldr r4, [r0]
	mov r1, #5
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r9, r0, r1
	ldr r0, [r9]
	bl func7
	mov r1, r0
	mov r0, r4
	bl func2
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl func4
	mov r2, #6
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r6, r1, r2
	ldr r1, [r6]
	bl func3
	mov r2, #7
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r8, r1, r2
	ldr r1, [r8]
	bl func2
	mov r5, r0
	mov r1, #8
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r7, r0, r1
	ldr r4, [r7]
	mov r1, #9
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r10, r0, r1
	ldr r0, [r10]
	bl func7
	mov r1, r0
	mov r0, r4
	bl func3
	mov r1, r0
	mov r0, r5
	ldr r2, [fp, #-44]
	bl func1
	mov r2, r0
	ldr r0, [fp, #-60]
	ldr r1, [fp, #-68]
	bl func4
	mov r4, r0
	ldr r0, [fp, #-52]
	bl func7
	ldr r1, [fp, #-56]
	bl func3
	mov r1, r0
	ldr r0, [fp, #-48]
	bl func2
	mov r1, r0
	mov r0, r4
	bl func3
	mov r3, r0
	ldr r0, [fp, #-64]
	ldr r1, [r0]
	ldr r0, [fp, #-72]
	ldr r2, [r0]
	mov r0, r3
	bl func1
	ldr r1, [fp, #-76]
	ldr r1, [r1]
	bl func2
	str r0, [fp, #-88]
	ldr r0, [fp, #-80]
	ldr r0, [r0]
	str r0, [fp, #-92]
	ldr r0, [fp, #-84]
	ldr r4, [r0]
	ldr r0, [r9]
	bl func5
	mov r1, r0
	mov r0, r4
	bl func3
	mov r4, r0
	ldr r0, [r6]
	bl func5
	mov r1, r0
	mov r0, r4
	bl func2
	mov r5, r0
	ldr r4, [r8]
	ldr r0, [r7]
	bl func7
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl func1
	mov r4, r0
	ldr r0, [r10]
	bl func5
	mov r1, r0
	mov r0, r4
	bl func2
	ldr r1, [fp, #-44]
	bl func3
	mov r2, r0
	ldr r0, [fp, #-88]
	ldr r1, [fp, #-92]
	bl func1
	add sp, sp, #96
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L224:
	ldr r0, =0
	b .L221
.L229:
	b .L221
.L263:
	mov r4, r1
	b .L220

	.ident "ZWJM"
