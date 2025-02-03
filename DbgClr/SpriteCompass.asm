;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteCompass
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteCompass
	.globl _Update_SpriteCompass
	.globl _Start_SpriteCompass
	.globl _SpriteManagerRemoveSprite
	.globl _SetSpriteAnim
	.globl _a_compass_v
	.globl _a_compass_66
	.globl _a_compass_33
	.globl _a_compass_h
	.globl ___bank_SpriteCompass
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
	G$Start_SpriteCompass$0$0	= .
	.globl	G$Start_SpriteCompass$0$0
	C$SpriteCompass.c$23$0_0$178	= .
	.globl	C$SpriteCompass.c$23$0_0$178
;SpriteCompass.c:23: void START() {
;	---------------------------------
; Function Start_SpriteCompass
; ---------------------------------
_Start_SpriteCompass::
	C$SpriteCompass.c$24$1_0$178	= .
	.globl	C$SpriteCompass.c$24$1_0$178
;SpriteCompass.c:24: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCompass.c$25$1_0$178	= .
	.globl	C$SpriteCompass.c$25$1_0$178
;SpriteCompass.c:25: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCompass.c$26$1_0$178	= .
	.globl	C$SpriteCompass.c$26$1_0$178
;SpriteCompass.c:26: }
	C$SpriteCompass.c$26$1_0$178	= .
	.globl	C$SpriteCompass.c$26$1_0$178
	XG$Start_SpriteCompass$0$0	= .
	.globl	XG$Start_SpriteCompass$0$0
	ret
G$__bank_SpriteCompass$0_0$0 == 0x00ff
___bank_SpriteCompass	=	0x00ff
G$a_compass_h$0_0$0 == .
_a_compass_h:
	.db #0x01	; 1
	.db #0x00	; 0
G$a_compass_33$0_0$0 == .
_a_compass_33:
	.db #0x01	; 1
	.db #0x01	; 1
G$a_compass_66$0_0$0 == .
_a_compass_66:
	.db #0x01	; 1
	.db #0x02	; 2
G$a_compass_v$0_0$0 == .
_a_compass_v:
	.db #0x01	; 1
	.db #0x03	; 3
	G$Update_SpriteCompass$0$0	= .
	.globl	G$Update_SpriteCompass$0$0
	C$SpriteCompass.c$28$1_0$179	= .
	.globl	C$SpriteCompass.c$28$1_0$179
;SpriteCompass.c:28: void UPDATE() { 
;	---------------------------------
; Function Update_SpriteCompass
; ---------------------------------
_Update_SpriteCompass::
	dec	sp
	dec	sp
	C$SpriteCompass.c$30$1_0$179	= .
	.globl	C$SpriteCompass.c$30$1_0$179
;SpriteCompass.c:30: THIS->x = scroll_target->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_scroll_target
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteCompass.c$31$1_0$179	= .
	.globl	C$SpriteCompass.c$31$1_0$179
;SpriteCompass.c:31: THIS->y = scroll_target->y;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000e
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_scroll_target
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000e
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteCompass.c$32$1_0$179	= .
	.globl	C$SpriteCompass.c$32$1_0$179
;SpriteCompass.c:32: if(track_ended == 1){
	ld	a, (#_track_ended)
	dec	a
	jr	NZ, 00102$
	C$SpriteCompass.c$33$2_0$180	= .
	.globl	C$SpriteCompass.c$33$2_0$180
;SpriteCompass.c:33: SpriteManagerRemoveSprite(THIS);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
00102$:
	C$SpriteCompass.c$37$2_0$181	= .
	.globl	C$SpriteCompass.c$37$2_0$181
;SpriteCompass.c:37: INT8 using_sin = sin;
	ld	hl, #_sin
	ld	c, (hl)
	C$SpriteCompass.c$39$1_1$181	= .
	.globl	C$SpriteCompass.c$39$1_1$181
;SpriteCompass.c:39: if(sin < 0) {using_sin = -sin;}
	bit	7, (hl)
	jr	Z, 00106$
	xor	a, a
	sub	a, (hl)
	ld	c, a
00106$:
	C$SpriteCompass.c$40$1_1$179	= .
	.globl	C$SpriteCompass.c$40$1_1$179
;SpriteCompass.c:40: if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
	ld	e, c
	ld	a,#0x1e
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00257$
	bit	7, d
	jr	NZ, 00258$
	cp	a, a
	jr	00258$
00257$:
	bit	7, d
	jr	Z, 00258$
	scf
00258$:
	ld	a, #0x00
	rla
	ld	b, a
	bit	7, c
	jr	NZ, 00118$
	bit	0, b
	jr	NZ, 00118$
	C$SpriteCompass.c$41$2_1$184	= .
	.globl	C$SpriteCompass.c$41$2_1$184
;SpriteCompass.c:41: SetSpriteAnim(THIS, a_compass_h, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00119$
00118$:
	C$SpriteCompass.c$42$1_1$181	= .
	.globl	C$SpriteCompass.c$42$1_1$181
;SpriteCompass.c:42: }else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
	ld	a, b
	or	a, a
	jr	Z, 00114$
	ld	a, c
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00114$
	C$SpriteCompass.c$43$2_1$185	= .
	.globl	C$SpriteCompass.c$43$2_1$185
;SpriteCompass.c:43: SetSpriteAnim(THIS, a_compass_33, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_33
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00119$
00114$:
	C$SpriteCompass.c$44$1_1$181	= .
	.globl	C$SpriteCompass.c$44$1_1$181
;SpriteCompass.c:44: }else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
	ld	e, c
	ld	a,#0x36
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00259$
	bit	7, d
	jr	NZ, 00260$
	cp	a, a
	jr	00260$
00259$:
	bit	7, d
	jr	Z, 00260$
	scf
00260$:
	jr	NC, 00110$
	ld	a, c
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00110$
	C$SpriteCompass.c$45$2_1$186	= .
	.globl	C$SpriteCompass.c$45$2_1$186
;SpriteCompass.c:45: SetSpriteAnim(THIS, a_compass_66, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_66
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00119$
00110$:
	C$SpriteCompass.c$46$1_1$181	= .
	.globl	C$SpriteCompass.c$46$1_1$181
;SpriteCompass.c:46: }else if(using_sin > 78){ // tratto come se stesse andando orizzontale destra
	ld	e, c
	ld	a,#0x4e
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00261$
	bit	7, d
	jr	NZ, 00262$
	cp	a, a
	jr	00262$
00261$:
	bit	7, d
	jr	Z, 00262$
	scf
00262$:
	jr	NC, 00119$
	C$SpriteCompass.c$47$2_1$187	= .
	.globl	C$SpriteCompass.c$47$2_1$187
;SpriteCompass.c:47: SetSpriteAnim(THIS, a_compass_v, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_v
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00119$:
	C$SpriteCompass.c$49$1_1$181	= .
	.globl	C$SpriteCompass.c$49$1_1$181
;SpriteCompass.c:49: if(sin > 0 && cos > 0){
	ld	hl, #_sin
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00263$
	bit	7, d
	jr	NZ, 00264$
	cp	a, a
	jr	00264$
00263$:
	bit	7, d
	jr	Z, 00264$
	scf
00264$:
	jr	NC, 00122$
	ld	hl, #_cos
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00265$
	bit	7, d
	jr	NZ, 00266$
	cp	a, a
	jr	00266$
00265$:
	bit	7, d
	jr	Z, 00266$
	scf
00266$:
	jr	NC, 00122$
	C$SpriteCompass.c$50$2_1$188	= .
	.globl	C$SpriteCompass.c$50$2_1$188
;SpriteCompass.c:50: THIS->mirror = NO_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x00
00122$:
	C$SpriteCompass.c$52$1_1$181	= .
	.globl	C$SpriteCompass.c$52$1_1$181
;SpriteCompass.c:52: if(sin > 0 && cos < 0){
	ld	hl, #_sin
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00267$
	bit	7, d
	jr	NZ, 00268$
	cp	a, a
	jr	00268$
00267$:
	bit	7, d
	jr	Z, 00268$
	scf
00268$:
	jr	NC, 00125$
	ld	a, (#_cos)
	bit	7, a
	jr	Z, 00125$
	C$SpriteCompass.c$53$2_1$189	= .
	.globl	C$SpriteCompass.c$53$2_1$189
;SpriteCompass.c:53: THIS->mirror = V_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x02
00125$:
	C$SpriteCompass.c$55$1_1$181	= .
	.globl	C$SpriteCompass.c$55$1_1$181
;SpriteCompass.c:55: if(sin < 0 && cos > 0){
	ld	a, (#_sin)
	bit	7, a
	jr	Z, 00128$
	ld	hl, #_cos
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00269$
	bit	7, d
	jr	NZ, 00270$
	cp	a, a
	jr	00270$
00269$:
	bit	7, d
	jr	Z, 00270$
	scf
00270$:
	jr	NC, 00128$
	C$SpriteCompass.c$56$2_1$190	= .
	.globl	C$SpriteCompass.c$56$2_1$190
;SpriteCompass.c:56: THIS->mirror = H_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x01
00128$:
	C$SpriteCompass.c$58$1_1$181	= .
	.globl	C$SpriteCompass.c$58$1_1$181
;SpriteCompass.c:58: if(sin < 0 && cos < 0){
	ld	a, (#_sin)
	bit	7, a
	jr	Z, 00133$
	ld	a, (#_cos)
	bit	7, a
	jr	Z, 00133$
	C$SpriteCompass.c$59$2_1$191	= .
	.globl	C$SpriteCompass.c$59$2_1$191
;SpriteCompass.c:59: THIS->mirror = HV_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x03
00133$:
	C$SpriteCompass.c$61$1_1$179	= .
	.globl	C$SpriteCompass.c$61$1_1$179
;SpriteCompass.c:61: }
	inc	sp
	inc	sp
	C$SpriteCompass.c$61$1_1$179	= .
	.globl	C$SpriteCompass.c$61$1_1$179
	XG$Update_SpriteCompass$0$0	= .
	.globl	XG$Update_SpriteCompass$0$0
	ret
	G$Destroy_SpriteCompass$0$0	= .
	.globl	G$Destroy_SpriteCompass$0$0
	C$SpriteCompass.c$63$1_1$193	= .
	.globl	C$SpriteCompass.c$63$1_1$193
;SpriteCompass.c:63: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteCompass
; ---------------------------------
_Destroy_SpriteCompass::
	C$SpriteCompass.c$64$1_1$193	= .
	.globl	C$SpriteCompass.c$64$1_1$193
;SpriteCompass.c:64: }
	C$SpriteCompass.c$64$1_1$193	= .
	.globl	C$SpriteCompass.c$64$1_1$193
	XG$Destroy_SpriteCompass$0$0	= .
	.globl	XG$Destroy_SpriteCompass$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
