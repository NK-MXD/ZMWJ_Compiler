	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global removeElement
	.type removeElement , %function
removeElement:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L48:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	b .L53
.L53:
	ldr r2, [fp, #-8]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L54
	b .L58
.L54:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	ldr r2, [r1]
	ldr r1, [fp, #-12]
	cmp r2, r1
	moveq r1, #1
	movne r1, #0
	beq .L59
	b .L66
.L55:
	ldr r0, [fp, #-8]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L58:
	ldr r0, =0
	b .L55
.L59:
	ldr r4, [fp, #-4]
	ldr r1, [fp, #-8]
	sub r3, r1, #1
	mov r1, #4
	mla r1, r3, r1, r4
	ldr r2, [r1]
	mov r1, #4
	mla r1, r0, r1, r4
	str r2, [r1]
	ldr r1, [fp, #-8]
	str r3, [fp, #-8]
	mov r2, r0
	b .L61
.L60:
	add r0, r0, #1
	mov r2, r0
	b .L61
.L61:
	ldr r1, [fp, #-8]
	mov r0, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L54
	b .L75
.L66:
	b .L60
.L75:
	b .L55

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L76:
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =3
	str r1, [r0]
	mov r2, #1
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =3
	str r1, [r2]
	mov r2, #2
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =9
	str r1, [r2]
	mov r2, #3
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r2, #4
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r2, #5
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #6
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #7
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =5
	str r1, [r2]
	mov r1, #8
	mov r3, #-40
	mov r2, #4
	mul r1, r1, r2
	add r2, fp, r3
	add r1, r2, r1
	ldr r2, =7
	str r2, [r1]
	mov r2, #9
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =8
	str r1, [r2]
	mov r1, #10
	mov r2, #3
	bl removeElement
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
