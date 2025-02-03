;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteFantoccio
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteFantoccio
	.globl _Update_SpriteFantoccio
	.globl _Start_SpriteFantoccio
	.globl _SetSpriteAnim
	.globl _fantoccio_turned
	.globl _fantoccio_counter
	.globl _a_fantoccio_hit
	.globl ___bank_SpriteFantoccio
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
G$fantoccio_counter$0_0$0==.
_fantoccio_counter::
	.ds 1
G$fantoccio_turned$0_0$0==.
_fantoccio_turned::
	.ds 1
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
	G$Start_SpriteFantoccio$0$0	= .
	.globl	G$Start_SpriteFantoccio$0$0
	C$SpriteFantoccio.c$19$0_0$190	= .
	.globl	C$SpriteFantoccio.c$19$0_0$190
;SpriteFantoccio.c:19: void START() {
;	---------------------------------
; Function Start_SpriteFantoccio
; ---------------------------------
_Start_SpriteFantoccio::
	C$SpriteFantoccio.c$20$1_0$190	= .
	.globl	C$SpriteFantoccio.c$20$1_0$190
;SpriteFantoccio.c:20: SetSpriteAnim(THIS, a_fantoccio_hit, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_fantoccio_hit
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteFantoccio.c$21$1_0$190	= .
	.globl	C$SpriteFantoccio.c$21$1_0$190
;SpriteFantoccio.c:21: THIS->mirror = NO_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x00
	C$SpriteFantoccio.c$22$1_0$190	= .
	.globl	C$SpriteFantoccio.c$22$1_0$190
;SpriteFantoccio.c:22: fantoccio_turned = 0;
	ld	hl, #_fantoccio_turned
	ld	(hl), #0x00
	C$SpriteFantoccio.c$23$1_0$190	= .
	.globl	C$SpriteFantoccio.c$23$1_0$190
;SpriteFantoccio.c:23: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteFantoccio.c$24$1_0$190	= .
	.globl	C$SpriteFantoccio.c$24$1_0$190
;SpriteFantoccio.c:24: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteFantoccio.c$25$1_0$190	= .
	.globl	C$SpriteFantoccio.c$25$1_0$190
;SpriteFantoccio.c:25: }
	C$SpriteFantoccio.c$25$1_0$190	= .
	.globl	C$SpriteFantoccio.c$25$1_0$190
	XG$Start_SpriteFantoccio$0$0	= .
	.globl	XG$Start_SpriteFantoccio$0$0
	ret
G$__bank_SpriteFantoccio$0_0$0 == 0x00ff
___bank_SpriteFantoccio	=	0x00ff
G$a_fantoccio_hit$0_0$0 == .
_a_fantoccio_hit:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	G$Update_SpriteFantoccio$0$0	= .
	.globl	G$Update_SpriteFantoccio$0$0
	C$SpriteFantoccio.c$27$1_0$192	= .
	.globl	C$SpriteFantoccio.c$27$1_0$192
;SpriteFantoccio.c:27: void UPDATE() {
;	---------------------------------
; Function Update_SpriteFantoccio
; ---------------------------------
_Update_SpriteFantoccio::
	C$SpriteFantoccio.c$28$1_0$192	= .
	.globl	C$SpriteFantoccio.c$28$1_0$192
;SpriteFantoccio.c:28: }
	C$SpriteFantoccio.c$28$1_0$192	= .
	.globl	C$SpriteFantoccio.c$28$1_0$192
	XG$Update_SpriteFantoccio$0$0	= .
	.globl	XG$Update_SpriteFantoccio$0$0
	ret
	G$Destroy_SpriteFantoccio$0$0	= .
	.globl	G$Destroy_SpriteFantoccio$0$0
	C$SpriteFantoccio.c$30$1_0$194	= .
	.globl	C$SpriteFantoccio.c$30$1_0$194
;SpriteFantoccio.c:30: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteFantoccio
; ---------------------------------
_Destroy_SpriteFantoccio::
	C$SpriteFantoccio.c$31$1_0$194	= .
	.globl	C$SpriteFantoccio.c$31$1_0$194
;SpriteFantoccio.c:31: }
	C$SpriteFantoccio.c$31$1_0$194	= .
	.globl	C$SpriteFantoccio.c$31$1_0$194
	XG$Destroy_SpriteFantoccio$0$0	= .
	.globl	XG$Destroy_SpriteFantoccio$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
FSpriteFantoccio$__xinit_fantoccio_counter$0_0$0 == .
__xinit__fantoccio_counter:
	.db #0x00	;  0
FSpriteFantoccio$__xinit_fantoccio_turned$0_0$0 == .
__xinit__fantoccio_turned:
	.db #0x00	;  0
	.area _CABS (ABS)
