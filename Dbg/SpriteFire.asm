;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteFire
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteFire
	.globl _Update_SpriteFire
	.globl _Start_SpriteFire
	.globl _SetSpriteAnim
	.globl _a_fog
	.globl _a_fire
	.globl ___bank_SpriteFire
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$Start_SpriteFire$0$0	= .
	.globl	G$Start_SpriteFire$0$0
	C$SpriteFire.c$18$0_0$190	= .
	.globl	C$SpriteFire.c$18$0_0$190
;SpriteFire.c:18: void START() {
;	---------------------------------
; Function Start_SpriteFire
; ---------------------------------
_Start_SpriteFire::
	C$SpriteFire.c$19$1_0$190	= .
	.globl	C$SpriteFire.c$19$1_0$190
;SpriteFire.c:19: SetSpriteAnim(THIS, a_fire, 24u);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_fire
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteFire.c$20$1_0$190	= .
	.globl	C$SpriteFire.c$20$1_0$190
;SpriteFire.c:20: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteFire.c$21$1_0$190	= .
	.globl	C$SpriteFire.c$21$1_0$190
;SpriteFire.c:21: }
	C$SpriteFire.c$21$1_0$190	= .
	.globl	C$SpriteFire.c$21$1_0$190
	XG$Start_SpriteFire$0$0	= .
	.globl	XG$Start_SpriteFire$0$0
	ret
G$__bank_SpriteFire$0_0$0 == 0x00ff
___bank_SpriteFire	=	0x00ff
G$a_fire$0_0$0 == .
_a_fire:
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
G$a_fog$0_0$0 == .
_a_fog:
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	G$Update_SpriteFire$0$0	= .
	.globl	G$Update_SpriteFire$0$0
	C$SpriteFire.c$23$1_0$192	= .
	.globl	C$SpriteFire.c$23$1_0$192
;SpriteFire.c:23: void UPDATE() {
;	---------------------------------
; Function Update_SpriteFire
; ---------------------------------
_Update_SpriteFire::
	C$SpriteFire.c$24$1_0$192	= .
	.globl	C$SpriteFire.c$24$1_0$192
;SpriteFire.c:24: }
	C$SpriteFire.c$24$1_0$192	= .
	.globl	C$SpriteFire.c$24$1_0$192
	XG$Update_SpriteFire$0$0	= .
	.globl	XG$Update_SpriteFire$0$0
	ret
	G$Destroy_SpriteFire$0$0	= .
	.globl	G$Destroy_SpriteFire$0$0
	C$SpriteFire.c$26$1_0$194	= .
	.globl	C$SpriteFire.c$26$1_0$194
;SpriteFire.c:26: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteFire
; ---------------------------------
_Destroy_SpriteFire::
	C$SpriteFire.c$27$1_0$194	= .
	.globl	C$SpriteFire.c$27$1_0$194
;SpriteFire.c:27: }
	C$SpriteFire.c$27$1_0$194	= .
	.globl	C$SpriteFire.c$27$1_0$194
	XG$Destroy_SpriteFire$0$0	= .
	.globl	XG$Destroy_SpriteFire$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
