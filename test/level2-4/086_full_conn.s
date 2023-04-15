	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L933:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #127
	movgt r0, #1
	movle r0, #0
	bgt .L935
	b .L939
.L935:
	mov r0, #127
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L936:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L940
	b .L944
.L939:
	b .L936
.L940:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L941:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L944:
	b .L941

	.global model
	.type model , %function
model:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L945:
	str r0, [fp, #-4]
	mov r2, r0
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =85
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =23
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #82
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #103
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #123
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #120
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =50
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #59
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #111
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #106
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #75
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #102
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =34
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #39
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #6
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =113
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =110
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #4
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =80
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =46
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =39
	mul r4, r1, r0
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #106
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =126
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #18
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #31
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #8
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #4
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #94
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #121
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #3
	sub r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #21
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #60
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #43
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =105
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #42
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =87
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =29
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #106
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #31
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #110
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	b .B0
.LTORG
.B0:
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #100
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #22
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #75
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #125
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =77
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =26
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =76
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #70
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =29
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #95
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =96
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =52
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #68
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #5
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =34
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #34
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =102
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =6
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #38
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =27
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =110
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =116
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =39
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #63
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #99
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #6
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =120
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #39
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #6
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =94
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	lsl r0, r1, #7
	sub r0, r0, r1
	add r4, r4, r0
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #23
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #63
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =49
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =50
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =72
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =85
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #30
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =12
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =125
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #117
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #65
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =125
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =110
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #31
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #123
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =83
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =122
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	b .B1
.LTORG
.B1:
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =11
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #23
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #32
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #117
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =95
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =118
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #106
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	lsl r0, r0, #3
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =82
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #104
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =101
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #116
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #63
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #16
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #70
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =125
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =75
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =66
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #96
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #101
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #114
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =59
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =12
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #2
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #95
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =116
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #93
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #4
	sub r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =79
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =3
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =49
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #124
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #3
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =81
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =68
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #102
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #74
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =121
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #15
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =55
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =101
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #13
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #62
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =114
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =38
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #21
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =112
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	b .B2
.LTORG
.B2:
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =114
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =112
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #10
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #16
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #50
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #112
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #116
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #54
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =82
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #72
	mla r0, r2, r1, r0
	bl relu_reg
	lsl r0, r0, #5
	add r4, r4, r0
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	lsl r0, r1, #4
	sub r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #77
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =66
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #90
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #6
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #30
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #8
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =81
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r1, r1, r1
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #110
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #95
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =59
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =52
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #4
	sub r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =55
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #33
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =14
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =58
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =86
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #79
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =48
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #13
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #15
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =66
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #95
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	lsl r0, r1, #5
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =82
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =30
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #2
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #6
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =120
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #13
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =18
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #2
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =104
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #119
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	b .B3
.LTORG
.B3:
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #7
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =71
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =107
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =24
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =82
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #96
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #104
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #121
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #6
	add r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =97
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =83
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =46
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #84
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #50
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #29
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	lsl r1, r2, #3
	sub r1, r1, r2
	add r0, r0, r1
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #70
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =38
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #90
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #15
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #32
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =37
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =36
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #62
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #125
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #46
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #70
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =37
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #73
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #34
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #87
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #75
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =71
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #77
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =53
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =37
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #103
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #13
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #114
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #23
	mla r4, r1, r0, r4
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =67
	mul r0, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =42
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =41
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #123
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #92
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =10
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #77
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =75
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	b .B4
.LTORG
.B4:
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =96
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #51
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =109
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #74
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #7
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #122
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =67
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =47
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =22
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #68
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =38
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #3
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =29
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =115
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #121
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =36
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #3
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #49
	mla r0, r2, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #4
	mov r1, #20
	mla r3, r2, r1, r3
	mov r2, #4
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =85
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, =46
	mla r0, r1, r0, r4
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L947
	b .L1701
	b .F5
.LTORG
.F5:
.L947:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L948:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L1701:
	b .L948

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L1702:
	bl getint
	str r0, [fp, #-4]
	b .L1705
.L1705:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L1706
	b .L1710
.L1706:
	ldr r0, =0
	str r0, [fp, #-108]
	b .L1712
.L1707:
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, fp, lr}
	bx lr
.L1710:
	b .L1707
.L1712:
	ldr r0, [fp, #-108]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1713
	b .L1717
.L1713:
	ldr r0, =0
	str r0, [fp, #-112]
	b .L1719
.L1714:
	mov r1, #0
	mov r2, #-104
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl model
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L1736
	b .L1740
.L1717:
	b .L1714
.L1719:
	ldr r0, [fp, #-112]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1720
	b .L1724
.L1720:
	bl getint
	ldr r2, [fp, #-108]
	mov r3, #-104
	mov r1, #20
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r2, [fp, #-112]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	ldr r0, [fp, #-112]
	add r0, r0, #1
	str r0, [fp, #-112]
	mov r0, r0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1720
	b .L1730
.L1721:
	ldr r0, [fp, #-108]
	add r0, r0, #1
	str r0, [fp, #-108]
	mov r0, r0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1713
	b .L1735
.L1724:
	b .L1721
.L1730:
	b .L1721
.L1735:
	b .L1714
.L1736:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1738
.L1737:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1738
.L1738:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L1706
	b .L1746
.L1740:
	b .L1737
.L1746:
	b .L1707

	.ident "ZWJM"
