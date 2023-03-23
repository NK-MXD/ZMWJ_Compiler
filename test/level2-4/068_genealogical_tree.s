	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm map, 400, 4
	.comm indegree, 40, 4
	.comm queue, 40, 4
	.text
	.global topo
	.type topo , %function
topo:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L88:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =1
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-20]
	b .L94
.L94:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L95
	b .L99
.L95:
	ldr r4, =1
	str r4, [fp, #-20]
	b .L100
.L96:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L145
.L99:
	b .L96
.L100:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L101
	b .L105
.L101:
	ldr r4, [fp, #-20]
	ldr r5, addr_indegree0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L106
	b .L111
.L102:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	ldr r6, addr_queue0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_indegree0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	ldr r4, =1
	str r4, [fp, #-20]
	b .L119
.L105:
	b .L102
.L106:
	ldr r4, [fp, #-20]
	str r4, [fp, #-8]
	b .L102
.L107:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L101
	b .L118
.L111:
	b .L107
.L118:
	b .L102
.L119:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L120
	b .L124
.L120:
	ldr r4, [fp, #-8]
	ldr r5, addr_map0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L125
	b .L130
.L121:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L95
	b .L144
.L124:
	b .L121
.L125:
	ldr r4, [fp, #-20]
	ldr r5, addr_indegree0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	sub r5, r4, #1
	ldr r4, [fp, #-20]
	ldr r6, addr_indegree0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	b .L126
.L126:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L120
	b .L138
.L130:
	b .L126
.L138:
	b .L121
.L144:
	b .L96
.L145:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L146
	b .L150
.L146:
	ldr r4, [fp, #-16]
	ldr r5, addr_queue0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L146
	b .L157
	b .F0
.LTORG
addr_map0:
	.word map
addr_indegree0:
	.word indegree
addr_queue0:
	.word queue
.F0:
.L147:
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L150:
	b .L147
.L157:
	b .L147

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L158:
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =5
	str r4, [fp, #-4]
	b .L162
.L162:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L163
	b .L167
.L163:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	b .L168
.L164:
	ldr r4, [fp, #-4]
	mov r0, r4
	bl topo
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L167:
	b .L164
.L168:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L169
	b .L173
.L169:
	ldr r4, [fp, #-12]
	ldr r5, addr_map1
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	ldr r4, [fp, #-8]
	ldr r5, addr_indegree1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_indegree1
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L169
	b .L180
.L170:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L163
	b .L186
.L173:
	b .L170
.L180:
	b .L170
.L186:
	b .L164

addr_map1:
	.word map
addr_indegree1:
	.word indegree
addr_queue1:
	.word queue
	.ident "ZWJM"
