	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L99:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, =0
	sub r4, r1, #1
	ldr r3, [fp, #-8]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	str r4, [r1]
	ldr r1, =0
	str r1, [fp, #-12]
	ldr r1, =0
	sub r1, r1, #1
	str r1, [fp, #-16]
	b .L105
.L105:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-12]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L106
	b .L111
.L106:
	ldr r2, [fp, #-16]
	ldr r1, =0
	sub r1, r1, #1
	cmp r2, r1
	moveq r1, #1
	movne r1, #0
	beq .L113
	b .L119
.L107:
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L111:
	b .L107
.L113:
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	ldr r1, [fp, #-12]
	add r1, r1, #1
	str r1, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-12]
	mov r1, #4
	mla r1, r2, r1, r3
	str r4, [r1]
	b .L115
.L114:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-16]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	str r1, [fp, #-16]
	b .L115
.L115:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-12]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L106
	b .L136
.L116:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-12]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-16]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r4, r1
	moveq r1, #1
	movne r1, #0
	beq .L113
	b .L126
.L119:
	b .L116
.L126:
	b .L114
.L136:
	b .L107

	.global KMP
	.type KMP , %function
KMP:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =16400
	sub sp, sp, r4
.L138:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r3, [fp, #-4]
	mov r1, #0
	ldr r2, =-16392
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, r3
	bl get_next
	ldr r1, =0
	ldr r0, =-16396
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-16400
	str r1, [fp, r0]
	b .L145
.L145:
	ldr r2, [fp, #-8]
	ldr r0, =-16400
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L146
	b .L151
.L146:
	ldr r2, [fp, #-4]
	ldr r0, =-16396
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-8]
	ldr r0, =-16400
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	moveq r0, #1
	movne r0, #0
	beq .L153
	b .L162
.L147:
	ldr r0, =0
	sub r0, r0, #1
	ldr r1, =16400
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L151:
	b .L147
.L153:
	ldr r0, =-16396
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-16396
	str r1, [fp, r0]
	ldr r0, =-16400
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-16400
	str r1, [fp, r0]
	ldr r2, [fp, #-4]
	ldr r0, =-16396
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L163
	b .L169
.L154:
	ldr r0, =-16396
	ldr r1, [fp, r0]
	ldr r2, =-16392
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-16396
	str r1, [fp, r0]
	ldr r0, =-16396
	ldr r1, [fp, r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L172
	b .L176
.L155:
	ldr r2, [fp, #-8]
	ldr r0, =-16400
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L146
	b .L183
.L162:
	b .L154
.L163:
	ldr r0, =-16400
	ldr r0, [fp, r0]
	ldr r1, =16400
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L164:
	b .L155
.L169:
	b .L164
.L172:
	ldr r0, =-16396
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-16396
	str r1, [fp, r0]
	ldr r0, =-16400
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-16400
	str r1, [fp, r0]
	b .L173
.L173:
	b .L155
.L176:
	b .L173
.L183:
	b .L147

	.global read_str
	.type read_str , %function
read_str:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L185:
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L188
.L188:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L189
	b .L192
.L189:
	bl getch
	mov r3, r0
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L195
	b .L201
.L190:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =0
	str r0, [r1]
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L192:
	b .L190
.L195:
	b .L190
.L196:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L189
	b .L205
.L201:
	b .L196
.L205:
	b .L190

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L208:
	mov r1, #0
	ldr r2, =-16384
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl read_str
	mov r1, #0
	ldr r2, =-32768
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl read_str
	mov r1, #0
	ldr r2, =-16384
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	ldr r2, =-32768
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, r3
	bl KMP
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =32768
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
