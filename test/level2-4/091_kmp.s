	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L99:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	sub r5, r4, #1
	ldr r4, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #1
	str r5, [fp, #-16]
	b .L105
.L105:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L106
	b .L111
.L106:
	ldr r4, [fp, #-16]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L113
	b .L119
.L107:
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L111:
	b .L107
.L113:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	b .L115
.L114:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-16]
	b .L115
.L115:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L106
	b .L136
.L116:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =16400
	sub sp, sp, r4
.L138:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #0
	ldr r6, =-16392
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r0, r4
	mov r1, r6
	bl get_next
	ldr r4, =0
	ldr r5, =-16396
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-16400
	str r4, [fp, r5]
	b .L145
.L145:
	ldr r4, [fp, #-8]
	ldr r6, =-16400
	ldr r5, [fp, r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L146
	b .L151
.L146:
	ldr r4, [fp, #-4]
	ldr r6, =-16396
	ldr r5, [fp, r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r7, =-16400
	ldr r6, [fp, r7]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L153
	b .L162
.L147:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	ldr r1, =16400
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L151:
	b .L147
.L153:
	ldr r5, =-16396
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-16396
	str r5, [fp, r4]
	ldr r5, =-16400
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-16400
	str r5, [fp, r4]
	ldr r4, [fp, #-4]
	ldr r6, =-16396
	ldr r5, [fp, r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L163
	b .L169
.L154:
	ldr r4, =-16396
	ldr r5, [fp, r4]
	ldr r4, =-16392
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =-16396
	str r5, [fp, r4]
	ldr r5, =-16396
	ldr r4, [fp, r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L172
	b .L176
.L155:
	ldr r4, [fp, #-8]
	ldr r6, =-16400
	ldr r5, [fp, r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L146
	b .L183
.L162:
	b .L154
.L163:
	ldr r5, =-16400
	ldr r4, [fp, r5]
	mov r0, r4
	ldr r1, =16400
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L164:
	b .L155
.L169:
	b .L164
.L172:
	ldr r5, =-16396
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-16396
	str r5, [fp, r4]
	ldr r5, =-16400
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-16400
	str r5, [fp, r4]
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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L185:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L188
.L188:
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L189
	b .L192
.L189:
	bl getch
	mov r4, r0
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L195
	b .L201
.L190:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L192:
	b .L190
.L195:
	b .L190
.L196:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L189
	b .L205
.L201:
	b .L196
.L205:
	b .L190

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L208:
	mov r4, #0
	ldr r5, =-16384
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl read_str
	mov r4, r0
	mov r4, #0
	ldr r5, =-32768
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl read_str
	mov r4, r0
	mov r4, #0
	ldr r5, =-16384
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-32768
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl KMP
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =32768
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
