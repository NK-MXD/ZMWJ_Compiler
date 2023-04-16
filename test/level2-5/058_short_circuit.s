	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L58:
	str r0, [fp, #-4]
	ldr r0, addr_g0
	ldr r0, [r0]
	ldr r1, [fp, #-4]
	add r1, r0, r1
	ldr r0, addr_g0
	str r1, [r0]
	ldr r0, addr_g0
	ldr r0, [r0]
	bl putint
	ldr r0, addr_g0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L60:
	bl getint
	mov r1, r0
	cmp r1, #10
	movgt r0, #1
	movle r0, #0
	bgt .L65
	b .L68
.L62:
	ldr r0, =1
	b .L64
.L63:
	ldr r0, =0
	b .L64
.L64:
	bl getint
	mov r1, r0
	cmp r1, #11
	movgt r0, #1
	movle r0, #0
	bgt .L75
	b .L78
.L65:
	mov r0, r1
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L62
	b .L70
.L68:
	b .L63
.L70:
	b .L63
.L72:
	ldr r0, =1
	b .L74
.L73:
	ldr r0, =0
	b .L74
.L74:
	bl getint
	mov r1, r0
	cmp r1, #99
	movle r0, #1
	movgt r0, #0
	ble .L82
	b .L88
.L75:
	mov r0, r1
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L72
	b .L80
.L78:
	b .L73
.L80:
	b .L73
.L82:
	ldr r0, =1
	b .L84
.L83:
	ldr r0, =0
	b .L84
.L84:
	bl getint
	mov r1, r0
	cmp r1, #100
	movle r0, #1
	movgt r0, #0
	ble .L92
	b .L98
.L85:
	mov r0, r1
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L82
	b .L90
.L88:
	b .L85
.L90:
	b .L83
.L92:
	ldr r0, =1
	b .L94
.L93:
	ldr r0, =0
	b .L94
.L94:
	mov r0, #99
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L105
	b .L108
.L95:
	mov r0, r1
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L92
	b .L100
.L98:
	b .L95
.L100:
	b .L93
.L102:
	ldr r0, =1
	b .L104
.L103:
	ldr r0, =0
	b .L104
.L104:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L105:
	mov r0, #100
	bl func
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L102
	b .L111
.L108:
	b .L103
.L111:
	b .L103

addr_g0:
	.word g
	.ident "ZWJM"
