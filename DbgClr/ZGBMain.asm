;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module ZGBMain
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetTileReplacement
	.globl _J_ATK
	.globl _J_WHIP
	.globl _next_state
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
G$next_state$0_0$0==.
_next_state::
	.ds 1
G$J_WHIP$0_0$0==.
_J_WHIP::
	.ds 1
G$J_ATK$0_0$0==.
_J_ATK::
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
	.area _CODE
	G$GetTileReplacement$0$0	= .
	.globl	G$GetTileReplacement$0$0
	C$ZGBMain.c$10$0_0$161	= .
	.globl	C$ZGBMain.c$10$0_0$161
;ZGBMain.c:10: UINT8 GetTileReplacement(UINT8* tile_ptr, UINT8* tile) {
;	---------------------------------
; Function GetTileReplacement
; ---------------------------------
_GetTileReplacement::
	add	sp, #-3
	ldhl	sp,	#1
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$ZGBMain.c$11$1_0$161	= .
	.globl	C$ZGBMain.c$11$1_0$161
;ZGBMain.c:11: if(current_state == StateGame) {
	ld	a, (#_current_state)
	or	a, a
	jr	NZ, 00104$
	C$ZGBMain.c$12$2_0$162	= .
	.globl	C$ZGBMain.c$12$2_0$162
;ZGBMain.c:12: if(U_LESS_THAN(255 - (UINT16)*tile_ptr, N_SPRITE_TYPES)) {
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	e, (hl)
	ld	d, #0x00
	ld	a, #0xf6
	sub	a, e
	sbc	a, a
	sub	a, d
	rlca
	jr	NC, 00102$
	C$ZGBMain.c$13$3_0$163	= .
	.globl	C$ZGBMain.c$13$3_0$163
;ZGBMain.c:13: *tile = 0;
	xor	a, a
	ld	(bc), a
	C$ZGBMain.c$14$3_0$163	= .
	.globl	C$ZGBMain.c$14$3_0$163
;ZGBMain.c:14: return 255 - (UINT16)*tile_ptr;
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	a, #0xff
	sub	a, c
	jr	00105$
00102$:
	C$ZGBMain.c$17$2_0$162	= .
	.globl	C$ZGBMain.c$17$2_0$162
;ZGBMain.c:17: *tile = *tile_ptr;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
00104$:
	C$ZGBMain.c$20$1_0$161	= .
	.globl	C$ZGBMain.c$20$1_0$161
;ZGBMain.c:20: return 255u;
	ld	a, #0xff
00105$:
	C$ZGBMain.c$21$1_0$161	= .
	.globl	C$ZGBMain.c$21$1_0$161
;ZGBMain.c:21: }
	add	sp, #3
	C$ZGBMain.c$21$1_0$161	= .
	.globl	C$ZGBMain.c$21$1_0$161
	XG$GetTileReplacement$0$0	= .
	.globl	XG$GetTileReplacement$0$0
	ret
	.area _CODE
	.area _INITIALIZER
FZGBMain$__xinit_next_state$0_0$0 == .
__xinit__next_state:
	.db #0x00	; 0
FZGBMain$__xinit_J_WHIP$0_0$0 == .
__xinit__J_WHIP:
	.db #0x10	; 16
FZGBMain$__xinit_J_ATK$0_0$0 == .
__xinit__J_ATK:
	.db #0x20	; 32
	.area _CABS (ABS)
