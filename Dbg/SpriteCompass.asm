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
	C$SpriteCompass.c$22$0_0$177	= .
	.globl	C$SpriteCompass.c$22$0_0$177
;SpriteCompass.c:22: void START() {
;	---------------------------------
; Function Start_SpriteCompass
; ---------------------------------
_Start_SpriteCompass::
	C$SpriteCompass.c$23$1_0$177	= .
	.globl	C$SpriteCompass.c$23$1_0$177
;SpriteCompass.c:23: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCompass.c$24$1_0$177	= .
	.globl	C$SpriteCompass.c$24$1_0$177
;SpriteCompass.c:24: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCompass.c$25$1_0$177	= .
	.globl	C$SpriteCompass.c$25$1_0$177
;SpriteCompass.c:25: }
	C$SpriteCompass.c$25$1_0$177	= .
	.globl	C$SpriteCompass.c$25$1_0$177
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
	C$SpriteCompass.c$27$1_0$178	= .
	.globl	C$SpriteCompass.c$27$1_0$178
;SpriteCompass.c:27: void UPDATE() { 
;	---------------------------------
; Function Update_SpriteCompass
; ---------------------------------
_Update_SpriteCompass::
	dec	sp
	dec	sp
	C$SpriteCompass.c$29$1_0$178	= .
	.globl	C$SpriteCompass.c$29$1_0$178
;SpriteCompass.c:29: THIS->x = scroll_target->x;
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
	C$SpriteCompass.c$30$1_0$178	= .
	.globl	C$SpriteCompass.c$30$1_0$178
;SpriteCompass.c:30: THIS->y = scroll_target->y;
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
	C$SpriteCompass.c$33$2_0$179	= .
	.globl	C$SpriteCompass.c$33$2_0$179
;SpriteCompass.c:33: INT8 using_sin = sin;
	ld	hl, #_sin
	ld	c, (hl)
	C$SpriteCompass.c$35$1_1$179	= .
	.globl	C$SpriteCompass.c$35$1_1$179
;SpriteCompass.c:35: if(sin < 0) {using_sin = -sin;}
	bit	7, (hl)
	jr	Z, 00104$
	xor	a, a
	sub	a, (hl)
	ld	c, a
00104$:
	C$SpriteCompass.c$36$1_1$178	= .
	.globl	C$SpriteCompass.c$36$1_1$178
;SpriteCompass.c:36: if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
	ld	e, c
	ld	a,#0x1e
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00246$
	bit	7, d
	jr	NZ, 00247$
	cp	a, a
	jr	00247$
00246$:
	bit	7, d
	jr	Z, 00247$
	scf
00247$:
	ld	a, #0x00
	rla
	ld	b, a
	bit	7, c
	jr	NZ, 00116$
	bit	0, b
	jr	NZ, 00116$
	C$SpriteCompass.c$37$2_1$182	= .
	.globl	C$SpriteCompass.c$37$2_1$182
;SpriteCompass.c:37: SetSpriteAnim(THIS, a_compass_h, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00117$
00116$:
	C$SpriteCompass.c$38$1_1$179	= .
	.globl	C$SpriteCompass.c$38$1_1$179
;SpriteCompass.c:38: }else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
	ld	a, b
	or	a, a
	jr	Z, 00112$
	ld	a, c
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00112$
	C$SpriteCompass.c$39$2_1$183	= .
	.globl	C$SpriteCompass.c$39$2_1$183
;SpriteCompass.c:39: SetSpriteAnim(THIS, a_compass_33, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_33
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00117$
00112$:
	C$SpriteCompass.c$40$1_1$179	= .
	.globl	C$SpriteCompass.c$40$1_1$179
;SpriteCompass.c:40: }else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
	ld	e, c
	ld	a,#0x36
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00248$
	bit	7, d
	jr	NZ, 00249$
	cp	a, a
	jr	00249$
00248$:
	bit	7, d
	jr	Z, 00249$
	scf
00249$:
	jr	NC, 00108$
	ld	a, c
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00108$
	C$SpriteCompass.c$41$2_1$184	= .
	.globl	C$SpriteCompass.c$41$2_1$184
;SpriteCompass.c:41: SetSpriteAnim(THIS, a_compass_66, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_66
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00117$
00108$:
	C$SpriteCompass.c$42$1_1$179	= .
	.globl	C$SpriteCompass.c$42$1_1$179
;SpriteCompass.c:42: }else if(using_sin > 78){ // tratto come se stesse andando orizzontale destra
	ld	e, c
	ld	a,#0x4e
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00250$
	bit	7, d
	jr	NZ, 00251$
	cp	a, a
	jr	00251$
00250$:
	bit	7, d
	jr	Z, 00251$
	scf
00251$:
	jr	NC, 00117$
	C$SpriteCompass.c$43$2_1$185	= .
	.globl	C$SpriteCompass.c$43$2_1$185
;SpriteCompass.c:43: SetSpriteAnim(THIS, a_compass_v, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_compass_v
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00117$:
	C$SpriteCompass.c$45$1_1$179	= .
	.globl	C$SpriteCompass.c$45$1_1$179
;SpriteCompass.c:45: if(sin > 0 && cos > 0){
	ld	hl, #_sin
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00252$
	bit	7, d
	jr	NZ, 00253$
	cp	a, a
	jr	00253$
00252$:
	bit	7, d
	jr	Z, 00253$
	scf
00253$:
	jr	NC, 00120$
	ld	hl, #_cos
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00254$
	bit	7, d
	jr	NZ, 00255$
	cp	a, a
	jr	00255$
00254$:
	bit	7, d
	jr	Z, 00255$
	scf
00255$:
	jr	NC, 00120$
	C$SpriteCompass.c$46$2_1$186	= .
	.globl	C$SpriteCompass.c$46$2_1$186
;SpriteCompass.c:46: THIS->mirror = NO_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x00
00120$:
	C$SpriteCompass.c$48$1_1$179	= .
	.globl	C$SpriteCompass.c$48$1_1$179
;SpriteCompass.c:48: if(sin > 0 && cos < 0){
	ld	hl, #_sin
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00256$
	bit	7, d
	jr	NZ, 00257$
	cp	a, a
	jr	00257$
00256$:
	bit	7, d
	jr	Z, 00257$
	scf
00257$:
	jr	NC, 00123$
	ld	a, (#_cos)
	bit	7, a
	jr	Z, 00123$
	C$SpriteCompass.c$49$2_1$187	= .
	.globl	C$SpriteCompass.c$49$2_1$187
;SpriteCompass.c:49: THIS->mirror = V_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x02
00123$:
	C$SpriteCompass.c$51$1_1$179	= .
	.globl	C$SpriteCompass.c$51$1_1$179
;SpriteCompass.c:51: if(sin < 0 && cos > 0){
	ld	a, (#_sin)
	bit	7, a
	jr	Z, 00126$
	ld	hl, #_cos
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00258$
	bit	7, d
	jr	NZ, 00259$
	cp	a, a
	jr	00259$
00258$:
	bit	7, d
	jr	Z, 00259$
	scf
00259$:
	jr	NC, 00126$
	C$SpriteCompass.c$52$2_1$188	= .
	.globl	C$SpriteCompass.c$52$2_1$188
;SpriteCompass.c:52: THIS->mirror = H_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x01
00126$:
	C$SpriteCompass.c$54$1_1$179	= .
	.globl	C$SpriteCompass.c$54$1_1$179
;SpriteCompass.c:54: if(sin < 0 && cos < 0){
	ld	a, (#_sin)
	bit	7, a
	jr	Z, 00131$
	ld	a, (#_cos)
	bit	7, a
	jr	Z, 00131$
	C$SpriteCompass.c$55$2_1$189	= .
	.globl	C$SpriteCompass.c$55$2_1$189
;SpriteCompass.c:55: THIS->mirror = HV_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x03
00131$:
	C$SpriteCompass.c$57$1_1$178	= .
	.globl	C$SpriteCompass.c$57$1_1$178
;SpriteCompass.c:57: }
	inc	sp
	inc	sp
	C$SpriteCompass.c$57$1_1$178	= .
	.globl	C$SpriteCompass.c$57$1_1$178
	XG$Update_SpriteCompass$0$0	= .
	.globl	XG$Update_SpriteCompass$0$0
	ret
	G$Destroy_SpriteCompass$0$0	= .
	.globl	G$Destroy_SpriteCompass$0$0
	C$SpriteCompass.c$59$1_1$191	= .
	.globl	C$SpriteCompass.c$59$1_1$191
;SpriteCompass.c:59: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteCompass
; ---------------------------------
_Destroy_SpriteCompass::
	C$SpriteCompass.c$60$1_1$191	= .
	.globl	C$SpriteCompass.c$60$1_1$191
;SpriteCompass.c:60: }
	C$SpriteCompass.c$60$1_1$191	= .
	.globl	C$SpriteCompass.c$60$1_1$191
	XG$Destroy_SpriteCompass$0$0	= .
	.globl	XG$Destroy_SpriteCompass$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
