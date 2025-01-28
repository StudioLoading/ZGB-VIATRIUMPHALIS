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
	.globl _anim_step
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
	C$SpriteStep.c$11$0_0$164	= .
	.globl	C$SpriteStep.c$11$0_0$164
;SpriteStep.c:11: void START(){
;	---------------------------------
; Function Start_SpriteStep
; ---------------------------------
_Start_SpriteStep::
	C$SpriteStep.c$12$1_0$164	= .
	.globl	C$SpriteStep.c$12$1_0$164
;SpriteStep.c:12: THIS->lim_x = 1u;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteStep.c$13$1_0$164	= .
	.globl	C$SpriteStep.c$13$1_0$164
;SpriteStep.c:13: THIS->lim_y = 1u;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteStep.c$14$1_0$164	= .
	.globl	C$SpriteStep.c$14$1_0$164
;SpriteStep.c:14: SetSpriteAnim(THIS, anim_step, 16u);
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_anim_step
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteStep.c$15$1_1$165	= .
	.globl	C$SpriteStep.c$15$1_1$165
;SpriteStep.c:15: struct ItemData* step_data = (struct ItemData*) THIS->custom_data;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteStep.c$16$1_1$165	= .
	.globl	C$SpriteStep.c$16$1_1$165
;SpriteStep.c:16: step_data->hp = 40u;
	ld	hl,#0x1c
	add	hl,bc
	ld	(hl), #0x28
	C$SpriteStep.c$17$1_1$164	= .
	.globl	C$SpriteStep.c$17$1_1$164
;SpriteStep.c:17: }
	C$SpriteStep.c$17$1_1$164	= .
	.globl	C$SpriteStep.c$17$1_1$164
	XG$Start_SpriteStep$0$0	= .
	.globl	XG$Start_SpriteStep$0$0
	ret
G$__bank_SpriteStep$0_0$0 == 0x00ff
___bank_SpriteStep	=	0x00ff
G$anim_step$0_0$0 == .
_anim_step:
	.db #0x01	; 1
	.db #0x00	; 0
	G$Update_SpriteStep$0$0	= .
	.globl	G$Update_SpriteStep$0$0
	C$SpriteStep.c$19$1_1$166	= .
	.globl	C$SpriteStep.c$19$1_1$166
;SpriteStep.c:19: void UPDATE(){
;	---------------------------------
; Function Update_SpriteStep
; ---------------------------------
_Update_SpriteStep::
	C$SpriteStep.c$20$1_0$166	= .
	.globl	C$SpriteStep.c$20$1_0$166
;SpriteStep.c:20: struct ItemData* step_data = (struct ItemData*) THIS->custom_data;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteStep.c$21$1_0$166	= .
	.globl	C$SpriteStep.c$21$1_0$166
;SpriteStep.c:21: step_data->hp--;
	ld	hl,#0x1c
	add	hl,bc
	C$SpriteStep.c$22$1_0$166	= .
	.globl	C$SpriteStep.c$22$1_0$166
;SpriteStep.c:22: if(step_data->hp == 0){
	dec	(hl)
	ld	a, (hl)
	ret	NZ
	C$SpriteStep.c$23$2_0$167	= .
	.globl	C$SpriteStep.c$23$2_0$167
;SpriteStep.c:23: SpriteManagerRemoveSprite(THIS);
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	C$SpriteStep.c$25$1_0$166	= .
	.globl	C$SpriteStep.c$25$1_0$166
;SpriteStep.c:25: }
	C$SpriteStep.c$25$1_0$166	= .
	.globl	C$SpriteStep.c$25$1_0$166
	XG$Update_SpriteStep$0$0	= .
	.globl	XG$Update_SpriteStep$0$0
	jp	_SpriteManagerRemoveSprite
	G$Destroy_SpriteStep$0$0	= .
	.globl	G$Destroy_SpriteStep$0$0
	C$SpriteStep.c$27$1_0$169	= .
	.globl	C$SpriteStep.c$27$1_0$169
;SpriteStep.c:27: void DESTROY(){
;	---------------------------------
; Function Destroy_SpriteStep
; ---------------------------------
_Destroy_SpriteStep::
	C$SpriteStep.c$29$1_0$169	= .
	.globl	C$SpriteStep.c$29$1_0$169
;SpriteStep.c:29: }
	C$SpriteStep.c$29$1_0$169	= .
	.globl	C$SpriteStep.c$29$1_0$169
	XG$Destroy_SpriteStep$0$0	= .
	.globl	XG$Destroy_SpriteStep$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
