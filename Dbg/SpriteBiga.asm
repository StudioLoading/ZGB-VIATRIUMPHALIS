;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteBiga
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteBiga
	.globl _Update_SpriteBiga
	.globl _Start_SpriteBiga
	.globl _SetSpriteAnim
	.globl _a_biga_up
	.globl _a_biga_down
	.globl _a_biga_hit
	.globl _a_biga_h
	.globl ___bank_SpriteBiga
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
	G$Start_SpriteBiga$0$0	= .
	.globl	G$Start_SpriteBiga$0$0
	C$SpriteBiga.c$25$0_0$177	= .
	.globl	C$SpriteBiga.c$25$0_0$177
;SpriteBiga.c:25: void START() {
;	---------------------------------
; Function Start_SpriteBiga
; ---------------------------------
_Start_SpriteBiga::
	C$SpriteBiga.c$26$1_0$177	= .
	.globl	C$SpriteBiga.c$26$1_0$177
;SpriteBiga.c:26: SetSpriteAnim(THIS, a_biga_h, 32u);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_biga_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteBiga.c$27$1_0$177	= .
	.globl	C$SpriteBiga.c$27$1_0$177
;SpriteBiga.c:27: THIS->lim_x = 100;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteBiga.c$28$1_0$177	= .
	.globl	C$SpriteBiga.c$28$1_0$177
;SpriteBiga.c:28: THIS->lim_y = 100;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteBiga.c$29$1_0$177	= .
	.globl	C$SpriteBiga.c$29$1_0$177
;SpriteBiga.c:29: }
	C$SpriteBiga.c$29$1_0$177	= .
	.globl	C$SpriteBiga.c$29$1_0$177
	XG$Start_SpriteBiga$0$0	= .
	.globl	XG$Start_SpriteBiga$0$0
	ret
G$__bank_SpriteBiga$0_0$0 == 0x00ff
___bank_SpriteBiga	=	0x00ff
G$a_biga_h$0_0$0 == .
_a_biga_h:
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x02	; 2
G$a_biga_hit$0_0$0 == .
_a_biga_hit:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
G$a_biga_down$0_0$0 == .
_a_biga_down:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
G$a_biga_up$0_0$0 == .
_a_biga_up:
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
	G$Update_SpriteBiga$0$0	= .
	.globl	G$Update_SpriteBiga$0$0
	C$SpriteBiga.c$31$1_0$178	= .
	.globl	C$SpriteBiga.c$31$1_0$178
;SpriteBiga.c:31: void UPDATE() {
;	---------------------------------
; Function Update_SpriteBiga
; ---------------------------------
_Update_SpriteBiga::
	add	sp, #-10
	C$SpriteBiga.c$32$1_4$178	= .
	.globl	C$SpriteBiga.c$32$1_4$178
;SpriteBiga.c:32: UINT16 final_pos_x = s_horse->x - DISTANCE_X_POSITIVE; //if vx >= 0
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0018
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#1
	ld	(hl-), a
	ld	(hl), e
	C$SpriteBiga.c$33$1_0$178	= .
	.globl	C$SpriteBiga.c$33$1_0$178
;SpriteBiga.c:33: if (vx < 0){ final_pos_x = s_horse->x + DISTANCE_X_NEGATIVE;}
	ld	a, (#_vx)
	bit	7, a
	jr	Z, 00102$
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x001c
	add	hl, de
	inc	sp
	inc	sp
	push	hl
00102$:
	C$SpriteBiga.c$35$1_4$178	= .
	.globl	C$SpriteBiga.c$35$1_4$178
;SpriteBiga.c:35: UINT16 final_pos_y = s_horse->y - 1; //if vy == 0
	ld	hl, #0x000e
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	C$SpriteBiga.c$36$1_1$180	= .
	.globl	C$SpriteBiga.c$36$1_1$180
;SpriteBiga.c:36: if(vy < 0){ final_pos_y = s_horse->y + 8;
	ld	a, (#_vy)
	bit	7, a
	jr	Z, 00106$
	ld	hl, #0x0008
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	jr	00107$
00106$:
	C$SpriteBiga.c$37$1_1$180	= .
	.globl	C$SpriteBiga.c$37$1_1$180
;SpriteBiga.c:37: }else if(vy > 0){final_pos_y = s_horse->y - 8;}
	ld	hl, #_vy
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00268$
	bit	7, d
	jr	NZ, 00269$
	cp	a, a
	jr	00269$
00268$:
	bit	7, d
	jr	Z, 00269$
	scf
00269$:
	jr	NC, 00107$
	ld	de, #0x0008
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
00107$:
	C$SpriteBiga.c$40$1_4$178	= .
	.globl	C$SpriteBiga.c$40$1_4$178
;SpriteBiga.c:40: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	c, e
	ld	b, a
	C$SpriteBiga.c$41$1_2$183	= .
	.globl	C$SpriteBiga.c$41$1_2$183
;SpriteBiga.c:41: UINT8 off_limit_x = 0;
	ldhl	sp,	#9
	ld	(hl), #0x00
	C$SpriteBiga.c$42$1_2$183	= .
	.globl	C$SpriteBiga.c$42$1_2$183
;SpriteBiga.c:42: if(delta_x >= (DISTANCE_X_POSITIVE + DELTA_DISTANCE_MAX)){ //troppo lontano indietro a sinistra! metto un limite
	ld	a, c
	sub	a, #0x28
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00109$
	C$SpriteBiga.c$43$2_2$184	= .
	.globl	C$SpriteBiga.c$43$2_2$184
;SpriteBiga.c:43: THIS->x = s_horse->x - (DISTANCE_X_POSITIVE + DELTA_DISTANCE_MAX);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0028
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$SpriteBiga.c$44$2_2$184	= .
	.globl	C$SpriteBiga.c$44$2_2$184
;SpriteBiga.c:44: off_limit_x = 1u;
	ld	(hl), #0x01
00109$:
	C$SpriteBiga.c$46$1_2$183	= .
	.globl	C$SpriteBiga.c$46$1_2$183
;SpriteBiga.c:46: if(delta_x <= -((DISTANCE_X_NEGATIVE + DELTA_DISTANCE_MAX))){ // troppo lontano indietro a destra! metto un limite
	ld	e, b
	ld	d, #0xff
	ld	a, #0xd4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	bit	7, e
	jr	Z, 00270$
	bit	7, d
	jr	NZ, 00271$
	cp	a, a
	jr	00271$
00270$:
	bit	7, d
	jr	Z, 00271$
	scf
00271$:
	jr	C, 00111$
	C$SpriteBiga.c$47$2_2$185	= .
	.globl	C$SpriteBiga.c$47$2_2$185
;SpriteBiga.c:47: THIS->x = s_horse->x + (DISTANCE_X_NEGATIVE + DELTA_DISTANCE_MAX);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0c
	ld	c, a
	jr	NC, 00272$
	inc	b
00272$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0x2c
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteBiga.c$48$2_2$185	= .
	.globl	C$SpriteBiga.c$48$2_2$185
;SpriteBiga.c:48: off_limit_x = 1;
	ldhl	sp,	#9
	ld	(hl), #0x01
00111$:
	C$SpriteBiga.c$50$1_2$183	= .
	.globl	C$SpriteBiga.c$50$1_2$183
;SpriteBiga.c:50: if(off_limit_x == 0){ //se il limite non è stato infranto, mi sposto verso
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
	jr	NZ, 00118$
	C$SpriteBiga.c$40$1_4$178	= .
	.globl	C$SpriteBiga.c$40$1_4$178
;SpriteBiga.c:40: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	C$SpriteBiga.c$52$2_2$186	= .
	.globl	C$SpriteBiga.c$52$2_2$186
;SpriteBiga.c:52: if(THIS->x > (final_pos_x+1) ){THIS->x-=2;}
	pop	de
	push	de
	inc	de
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00115$
	dec	bc
	dec	bc
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00118$
00115$:
	C$SpriteBiga.c$53$2_2$186	= .
	.globl	C$SpriteBiga.c$53$2_2$186
;SpriteBiga.c:53: else if (THIS->x < (final_pos_x -1 )){THIS->x+=2;}
	pop	de
	push	de
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	(hl), e
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00118$
	inc	bc
	inc	bc
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00118$:
	C$SpriteBiga.c$32$1_4$178	= .
	.globl	C$SpriteBiga.c$32$1_4$178
;SpriteBiga.c:32: UINT16 final_pos_x = s_horse->x - DISTANCE_X_POSITIVE; //if vx >= 0
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$35$1_4$178	= .
	.globl	C$SpriteBiga.c$35$1_4$178
;SpriteBiga.c:35: UINT16 final_pos_y = s_horse->y - 1; //if vy == 0
	ld	hl, #0x000e
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$SpriteBiga.c$40$1_4$178	= .
	.globl	C$SpriteBiga.c$40$1_4$178
;SpriteBiga.c:40: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$56$1_4$178	= .
	.globl	C$SpriteBiga.c$56$1_4$178
;SpriteBiga.c:56: INT16 delta_y = s_horse->y - THIS->y;
	ld	hl, #0x000e
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	c, e
	ld	b, a
	C$SpriteBiga.c$57$1_3$189	= .
	.globl	C$SpriteBiga.c$57$1_3$189
;SpriteBiga.c:57: UINT8 off_limit_y = 0;
	ldhl	sp,	#9
	ld	(hl), #0x00
	C$SpriteBiga.c$58$1_3$189	= .
	.globl	C$SpriteBiga.c$58$1_3$189
;SpriteBiga.c:58: if(delta_y >= 30){ //troppo lontano indietro in su! metto un limite
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00120$
	C$SpriteBiga.c$59$2_3$190	= .
	.globl	C$SpriteBiga.c$59$2_3$190
;SpriteBiga.c:59: THIS->y = s_horse->y - 15;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000f
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$SpriteBiga.c$60$2_3$190	= .
	.globl	C$SpriteBiga.c$60$2_3$190
;SpriteBiga.c:60: off_limit_y = 1u;
	ld	(hl), #0x01
00120$:
	C$SpriteBiga.c$62$1_3$189	= .
	.globl	C$SpriteBiga.c$62$1_3$189
;SpriteBiga.c:62: if(delta_y < -30){ //troppo lontano indietro in giù! metto un limite
	ld	a, c
	sub	a, #0xe2
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00122$
	C$SpriteBiga.c$63$2_3$191	= .
	.globl	C$SpriteBiga.c$63$2_3$191
;SpriteBiga.c:63: THIS->y = s_horse->y + 15;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00273$
	inc	b
00273$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0x0f
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteBiga.c$64$2_3$191	= .
	.globl	C$SpriteBiga.c$64$2_3$191
;SpriteBiga.c:64: off_limit_y = 1u;
	ldhl	sp,	#9
	ld	(hl), #0x01
00122$:
	C$SpriteBiga.c$67$1_3$189	= .
	.globl	C$SpriteBiga.c$67$1_3$189
;SpriteBiga.c:67: if(off_limit_y == 0){ //se il limite non è stato infranto, mi sposto verso
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
	jr	NZ, 00129$
	C$SpriteBiga.c$40$1_4$178	= .
	.globl	C$SpriteBiga.c$40$1_4$178
;SpriteBiga.c:40: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$56$1_4$178	= .
	.globl	C$SpriteBiga.c$56$1_4$178
;SpriteBiga.c:56: INT16 delta_y = s_horse->y - THIS->y;
	ld	hl, #0x000e
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	C$SpriteBiga.c$68$2_3$192	= .
	.globl	C$SpriteBiga.c$68$2_3$192
;SpriteBiga.c:68: if(THIS->y > final_pos_y){THIS->y--;}
	ldhl	sp,	#2
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00126$
	dec	bc
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00129$
00126$:
	C$SpriteBiga.c$69$2_3$192	= .
	.globl	C$SpriteBiga.c$69$2_3$192
;SpriteBiga.c:69: else if (THIS->y < final_pos_y){THIS->y++;}
	ldhl	sp,	#2
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00129$
	inc	bc
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00129$:
	C$SpriteBiga.c$71$1_3$189	= .
	.globl	C$SpriteBiga.c$71$1_3$189
;SpriteBiga.c:71: THIS->anim_speed = stamina_current >> 6;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x08
	ld	c, a
	jr	NC, 00274$
	inc	b
00274$:
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	C$SpriteBiga.c$72$1_3$189	= .
	.globl	C$SpriteBiga.c$72$1_3$189
;SpriteBiga.c:72: THIS->mirror = s_horse->mirror;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x10
	ld	c, a
	jr	NC, 00275$
	inc	b
00275$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
	C$SpriteBiga.c$74$1_4$195	= .
	.globl	C$SpriteBiga.c$74$1_4$195
;SpriteBiga.c:74: INT16 to_final_x = THIS->x - final_pos_x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, (hl)
	ld	e, a
	ld	d, c
	pop	hl
	push	hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, e
	ld	c, a
	C$SpriteBiga.c$75$1_4$195	= .
	.globl	C$SpriteBiga.c$75$1_4$195
;SpriteBiga.c:75: SetSpriteAnim(THIS, a_biga_h, 1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_a_biga_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	pop	bc
	C$SpriteBiga.c$76$1_4$195	= .
	.globl	C$SpriteBiga.c$76$1_4$195
;SpriteBiga.c:76: if(to_final_x > 4){//devo andare a sinistra
	ld	e, c
	ld	d, #0x00
	ld	a, #0x04
	cp	a, b
	ld	a, #0x00
	sbc	a, c
	bit	7, e
	jr	Z, 00276$
	bit	7, d
	jr	NZ, 00277$
	cp	a, a
	jr	00277$
00276$:
	bit	7, d
	jr	Z, 00277$
	scf
00277$:
	jr	NC, 00131$
	C$SpriteBiga.c$77$2_4$196	= .
	.globl	C$SpriteBiga.c$77$2_4$196
;SpriteBiga.c:77: THIS->mirror = V_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x02
00131$:
	C$SpriteBiga.c$79$1_4$195	= .
	.globl	C$SpriteBiga.c$79$1_4$195
;SpriteBiga.c:79: if(stamina_current < euphoria_max && stamina_current > euphoria_min){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_euphoria_max
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00140$
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00140$
	C$SpriteBiga.c$80$2_4$197	= .
	.globl	C$SpriteBiga.c$80$2_4$197
;SpriteBiga.c:80: if(vy > 1){ //sto andando in giù
	ld	hl, #_vy
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00278$
	bit	7, d
	jr	NZ, 00279$
	cp	a, a
	jr	00279$
00278$:
	bit	7, d
	jr	Z, 00279$
	scf
00279$:
	jr	NC, 00135$
	C$SpriteBiga.c$81$3_4$198	= .
	.globl	C$SpriteBiga.c$81$3_4$198
;SpriteBiga.c:81: SetSpriteAnim(THIS, a_biga_down, 12);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	bc, #_a_biga_down
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00140$
00135$:
	C$SpriteBiga.c$82$2_4$197	= .
	.globl	C$SpriteBiga.c$82$2_4$197
;SpriteBiga.c:82: }else if (vy < -1){//sto andando in su
	ld	a, (#_vy)
	xor	a, #0x80
	sub	a, #0x7f
	jr	NC, 00140$
	C$SpriteBiga.c$83$3_4$199	= .
	.globl	C$SpriteBiga.c$83$3_4$199
;SpriteBiga.c:83: SetSpriteAnim(THIS, a_biga_up, 12);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	bc, #_a_biga_up
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00140$:
	C$SpriteBiga.c$86$1_4$178	= .
	.globl	C$SpriteBiga.c$86$1_4$178
;SpriteBiga.c:86: }
	add	sp, #10
	C$SpriteBiga.c$86$1_4$178	= .
	.globl	C$SpriteBiga.c$86$1_4$178
	XG$Update_SpriteBiga$0$0	= .
	.globl	XG$Update_SpriteBiga$0$0
	ret
	G$Destroy_SpriteBiga$0$0	= .
	.globl	G$Destroy_SpriteBiga$0$0
	C$SpriteBiga.c$88$1_4$201	= .
	.globl	C$SpriteBiga.c$88$1_4$201
;SpriteBiga.c:88: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteBiga
; ---------------------------------
_Destroy_SpriteBiga::
	C$SpriteBiga.c$89$1_4$201	= .
	.globl	C$SpriteBiga.c$89$1_4$201
;SpriteBiga.c:89: }
	C$SpriteBiga.c$89$1_4$201	= .
	.globl	C$SpriteBiga.c$89$1_4$201
	XG$Destroy_SpriteBiga$0$0	= .
	.globl	XG$Destroy_SpriteBiga$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
