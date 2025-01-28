;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteStep
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteStep
	.globl _Update_SpriteStep
	.globl _Start_SpriteStep
	.globl _SpriteManagerRemoveSprite
	.globl _SetSpriteAnim
	.globl _a_steponwater
	.globl _a_step
	.globl ___bank_SpriteStep
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
	G$Start_SpriteStep$0$0	= .
	.globl	G$Start_SpriteStep$0$0
	C$SpriteStep.c$12$0_0$165	= .
	.globl	C$SpriteStep.c$12$0_0$165
;SpriteStep.c:12: void START(){
;	---------------------------------
; Function Start_SpriteStep
; ---------------------------------
_Start_SpriteStep::
	C$SpriteStep.c$13$1_0$165	= .
	.globl	C$SpriteStep.c$13$1_0$165
;SpriteStep.c:13: THIS->lim_x = 1u;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteStep.c$14$1_0$165	= .
	.globl	C$SpriteStep.c$14$1_0$165
;SpriteStep.c:14: THIS->lim_y = 1u;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteStep.c$15$1_0$165	= .
	.globl	C$SpriteStep.c$15$1_0$165
;SpriteStep.c:15: SetSpriteAnim(THIS, a_step, 16u);
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_a_step
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteStep.c$16$1_1$166	= .
	.globl	C$SpriteStep.c$16$1_1$166
;SpriteStep.c:16: struct ItemData* step_data = (struct ItemData*) THIS->custom_data;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteStep.c$17$1_1$166	= .
	.globl	C$SpriteStep.c$17$1_1$166
;SpriteStep.c:17: step_data->hp = 40u;
	ld	hl,#0x1d
	add	hl,bc
	ld	(hl), #0x28
	C$SpriteStep.c$18$1_1$165	= .
	.globl	C$SpriteStep.c$18$1_1$165
;SpriteStep.c:18: }
	C$SpriteStep.c$18$1_1$165	= .
	.globl	C$SpriteStep.c$18$1_1$165
	XG$Start_SpriteStep$0$0	= .
	.globl	XG$Start_SpriteStep$0$0
	ret
G$__bank_SpriteStep$0_0$0 == 0x00ff
___bank_SpriteStep	=	0x00ff
G$a_step$0_0$0 == .
_a_step:
	.db #0x01	; 1
	.db #0x00	; 0
G$a_steponwater$0_0$0 == .
_a_steponwater:
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	G$Update_SpriteStep$0$0	= .
	.globl	G$Update_SpriteStep$0$0
	C$SpriteStep.c$20$1_1$167	= .
	.globl	C$SpriteStep.c$20$1_1$167
;SpriteStep.c:20: void UPDATE(){
;	---------------------------------
; Function Update_SpriteStep
; ---------------------------------
_Update_SpriteStep::
	C$SpriteStep.c$21$1_0$167	= .
	.globl	C$SpriteStep.c$21$1_0$167
;SpriteStep.c:21: struct ItemData* step_data = (struct ItemData*) THIS->custom_data;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x1b
	ld	c, a
	jr	NC, 00121$
	inc	b
00121$:
	C$SpriteStep.c$22$1_0$167	= .
	.globl	C$SpriteStep.c$22$1_0$167
;SpriteStep.c:22: if(step_data->configured == 1){//orme su pozza
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	dec	a
	jr	NZ, 00102$
	C$SpriteStep.c$23$2_0$168	= .
	.globl	C$SpriteStep.c$23$2_0$168
;SpriteStep.c:23: SetSpriteAnim(THIS, a_steponwater, 16u);
	dec	hl
	push	bc
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_a_steponwater
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	pop	bc
00102$:
	C$SpriteStep.c$25$1_0$167	= .
	.globl	C$SpriteStep.c$25$1_0$167
;SpriteStep.c:25: step_data->hp--;
	inc	bc
	inc	bc
	ld	a, (bc)
	dec	a
	ld	(bc), a
	C$SpriteStep.c$26$1_0$167	= .
	.globl	C$SpriteStep.c$26$1_0$167
;SpriteStep.c:26: if(step_data->hp == 0){
	or	a, a
	ret	NZ
	C$SpriteStep.c$27$2_0$169	= .
	.globl	C$SpriteStep.c$27$2_0$169
;SpriteStep.c:27: SpriteManagerRemoveSprite(THIS);
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	C$SpriteStep.c$29$1_0$167	= .
	.globl	C$SpriteStep.c$29$1_0$167
;SpriteStep.c:29: }
	C$SpriteStep.c$29$1_0$167	= .
	.globl	C$SpriteStep.c$29$1_0$167
	XG$Update_SpriteStep$0$0	= .
	.globl	XG$Update_SpriteStep$0$0
	jp	_SpriteManagerRemoveSprite
	G$Destroy_SpriteStep$0$0	= .
	.globl	G$Destroy_SpriteStep$0$0
	C$SpriteStep.c$31$1_0$171	= .
	.globl	C$SpriteStep.c$31$1_0$171
;SpriteStep.c:31: void DESTROY(){
;	---------------------------------
; Function Destroy_SpriteStep
; ---------------------------------
_Destroy_SpriteStep::
	C$SpriteStep.c$33$1_0$171	= .
	.globl	C$SpriteStep.c$33$1_0$171
;SpriteStep.c:33: }
	C$SpriteStep.c$33$1_0$171	= .
	.globl	C$SpriteStep.c$33$1_0$171
	XG$Destroy_SpriteStep$0$0	= .
	.globl	XG$Destroy_SpriteStep$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
