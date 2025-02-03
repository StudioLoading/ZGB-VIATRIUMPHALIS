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
	.globl b_use_weapon
	.globl _use_weapon
	.globl b_update_time_max
	.globl _update_time_max
	.globl b_update_hp_max
	.globl _update_hp_max
	.globl b_update_weapon
	.globl _update_weapon
	.globl _SpriteManagerRemoveSprite
	.globl _CheckCollision
	.globl _SetSpriteAnim
	.globl _a_biga_up
	.globl _a_biga_down
	.globl _a_biga_hit
	.globl _a_biga_h
	.globl ___bank_SpriteBiga
	.globl b_pickup
	.globl _pickup
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
	C$SpriteBiga.c$39$0_0$180	= .
	.globl	C$SpriteBiga.c$39$0_0$180
;SpriteBiga.c:39: void START() {
;	---------------------------------
; Function Start_SpriteBiga
; ---------------------------------
_Start_SpriteBiga::
	C$SpriteBiga.c$40$1_0$180	= .
	.globl	C$SpriteBiga.c$40$1_0$180
;SpriteBiga.c:40: SetSpriteAnim(THIS, a_biga_h, 32u);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_biga_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteBiga.c$41$1_0$180	= .
	.globl	C$SpriteBiga.c$41$1_0$180
;SpriteBiga.c:41: THIS->lim_x = 100;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteBiga.c$42$1_0$180	= .
	.globl	C$SpriteBiga.c$42$1_0$180
;SpriteBiga.c:42: THIS->lim_y = 100;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x00
	C$SpriteBiga.c$43$1_0$180	= .
	.globl	C$SpriteBiga.c$43$1_0$180
;SpriteBiga.c:43: }
	C$SpriteBiga.c$43$1_0$180	= .
	.globl	C$SpriteBiga.c$43$1_0$180
	XG$Start_SpriteBiga$0$0	= .
	.globl	XG$Start_SpriteBiga$0$0
	ret
G$__bank_SpriteBiga$0_0$0 == 0x00ff
___bank_SpriteBiga	=	0x00ff
G$a_biga_h$0_0$0 == .
_a_biga_h:
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x02	; 2
G$a_biga_hit$0_0$0 == .
_a_biga_hit:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
G$a_biga_down$0_0$0 == .
_a_biga_down:
	.db #0x01	; 1
	.db #0x03	; 3
G$a_biga_up$0_0$0 == .
_a_biga_up:
	.db #0x01	; 1
	.db #0x04	; 4
	G$Update_SpriteBiga$0$0	= .
	.globl	G$Update_SpriteBiga$0$0
	C$SpriteBiga.c$45$1_0$181	= .
	.globl	C$SpriteBiga.c$45$1_0$181
;SpriteBiga.c:45: void UPDATE() {
;	---------------------------------
; Function Update_SpriteBiga
; ---------------------------------
_Update_SpriteBiga::
	add	sp, #-10
	C$SpriteBiga.c$46$1_5$181	= .
	.globl	C$SpriteBiga.c$46$1_5$181
;SpriteBiga.c:46: UINT16 final_pos_x = s_horse->x - DISTANCE_X_POSITIVE; //if vx >= 0
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
	C$SpriteBiga.c$47$1_0$181	= .
	.globl	C$SpriteBiga.c$47$1_0$181
;SpriteBiga.c:47: if (vx < 0){ final_pos_x = s_horse->x + DISTANCE_X_NEGATIVE;}
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
	C$SpriteBiga.c$48$1_5$181	= .
	.globl	C$SpriteBiga.c$48$1_5$181
;SpriteBiga.c:48: UINT16 final_pos_y = s_horse->y - 1; //if vy == 0
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
	C$SpriteBiga.c$49$1_1$183	= .
	.globl	C$SpriteBiga.c$49$1_1$183
;SpriteBiga.c:49: if(vy < 0){ final_pos_y = s_horse->y + 8;
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
	C$SpriteBiga.c$50$1_1$183	= .
	.globl	C$SpriteBiga.c$50$1_1$183
;SpriteBiga.c:50: }else if(vy > 0){final_pos_y = s_horse->y - 8;}
	ld	hl, #_vy
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00340$
	bit	7, d
	jr	NZ, 00341$
	cp	a, a
	jr	00341$
00340$:
	bit	7, d
	jr	Z, 00341$
	scf
00341$:
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
	C$SpriteBiga.c$52$1_5$181	= .
	.globl	C$SpriteBiga.c$52$1_5$181
;SpriteBiga.c:52: INT16 delta_x = s_horse->x - THIS->x;
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
	C$SpriteBiga.c$53$1_2$186	= .
	.globl	C$SpriteBiga.c$53$1_2$186
;SpriteBiga.c:53: UINT8 off_limit_x = 0;
	ldhl	sp,	#9
	ld	(hl), #0x00
	C$SpriteBiga.c$54$1_2$186	= .
	.globl	C$SpriteBiga.c$54$1_2$186
;SpriteBiga.c:54: if(delta_x >= (DISTANCE_X_POSITIVE + DELTA_DISTANCE_MAX)){ //troppo lontano indietro a sinistra! metto un limite
	ld	a, c
	sub	a, #0x24
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00109$
	C$SpriteBiga.c$55$2_2$187	= .
	.globl	C$SpriteBiga.c$55$2_2$187
;SpriteBiga.c:55: THIS->x = s_horse->x - (DISTANCE_X_POSITIVE + DELTA_DISTANCE_MAX);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0024
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
	C$SpriteBiga.c$56$2_2$187	= .
	.globl	C$SpriteBiga.c$56$2_2$187
;SpriteBiga.c:56: off_limit_x = 1u;
	ld	(hl), #0x01
00109$:
	C$SpriteBiga.c$58$1_2$186	= .
	.globl	C$SpriteBiga.c$58$1_2$186
;SpriteBiga.c:58: if(delta_x <= -((DISTANCE_X_NEGATIVE + DELTA_DISTANCE_MAX))){ // troppo lontano indietro a destra! metto un limite
	ld	e, b
	ld	d, #0xff
	ld	a, #0xd8
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	bit	7, e
	jr	Z, 00342$
	bit	7, d
	jr	NZ, 00343$
	cp	a, a
	jr	00343$
00342$:
	bit	7, d
	jr	Z, 00343$
	scf
00343$:
	jr	C, 00111$
	C$SpriteBiga.c$59$2_2$188	= .
	.globl	C$SpriteBiga.c$59$2_2$188
;SpriteBiga.c:59: THIS->x = s_horse->x + (DISTANCE_X_NEGATIVE + DELTA_DISTANCE_MAX);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0c
	ld	c, a
	jr	NC, 00344$
	inc	b
00344$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0x28
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteBiga.c$60$2_2$188	= .
	.globl	C$SpriteBiga.c$60$2_2$188
;SpriteBiga.c:60: off_limit_x = 1;
	ldhl	sp,	#9
	ld	(hl), #0x01
00111$:
	C$SpriteBiga.c$62$1_2$186	= .
	.globl	C$SpriteBiga.c$62$1_2$186
;SpriteBiga.c:62: if(off_limit_x == 0){ //se il limite non è stato infranto, mi sposto verso
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
	jr	NZ, 00118$
	C$SpriteBiga.c$52$1_5$181	= .
	.globl	C$SpriteBiga.c$52$1_5$181
;SpriteBiga.c:52: INT16 delta_x = s_horse->x - THIS->x;
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
	C$SpriteBiga.c$64$2_2$189	= .
	.globl	C$SpriteBiga.c$64$2_2$189
;SpriteBiga.c:64: if(THIS->x > (final_pos_x+1) ){THIS->x-=2;}
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
	C$SpriteBiga.c$65$2_2$189	= .
	.globl	C$SpriteBiga.c$65$2_2$189
;SpriteBiga.c:65: else if (THIS->x < (final_pos_x -1 )){THIS->x+=2;}
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
	C$SpriteBiga.c$46$1_5$181	= .
	.globl	C$SpriteBiga.c$46$1_5$181
;SpriteBiga.c:46: UINT16 final_pos_x = s_horse->x - DISTANCE_X_POSITIVE; //if vx >= 0
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$48$1_5$181	= .
	.globl	C$SpriteBiga.c$48$1_5$181
;SpriteBiga.c:48: UINT16 final_pos_y = s_horse->y - 1; //if vy == 0
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
	C$SpriteBiga.c$52$1_5$181	= .
	.globl	C$SpriteBiga.c$52$1_5$181
;SpriteBiga.c:52: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$68$1_5$181	= .
	.globl	C$SpriteBiga.c$68$1_5$181
;SpriteBiga.c:68: INT16 delta_y = s_horse->y - THIS->y;
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
	C$SpriteBiga.c$69$1_3$192	= .
	.globl	C$SpriteBiga.c$69$1_3$192
;SpriteBiga.c:69: UINT8 off_limit_y = 0;
	ldhl	sp,	#9
	ld	(hl), #0x00
	C$SpriteBiga.c$70$1_3$192	= .
	.globl	C$SpriteBiga.c$70$1_3$192
;SpriteBiga.c:70: if(delta_y >= 30){ //troppo lontano indietro in su! metto un limite
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00120$
	C$SpriteBiga.c$71$2_3$193	= .
	.globl	C$SpriteBiga.c$71$2_3$193
;SpriteBiga.c:71: THIS->y = s_horse->y - 15;
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
	C$SpriteBiga.c$72$2_3$193	= .
	.globl	C$SpriteBiga.c$72$2_3$193
;SpriteBiga.c:72: off_limit_y = 1u;
	ld	(hl), #0x01
00120$:
	C$SpriteBiga.c$74$1_3$192	= .
	.globl	C$SpriteBiga.c$74$1_3$192
;SpriteBiga.c:74: if(delta_y < -30){ //troppo lontano indietro in giù! metto un limite
	ld	a, c
	sub	a, #0xe2
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00122$
	C$SpriteBiga.c$75$2_3$194	= .
	.globl	C$SpriteBiga.c$75$2_3$194
;SpriteBiga.c:75: THIS->y = s_horse->y + 15;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00345$
	inc	b
00345$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0x0f
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteBiga.c$76$2_3$194	= .
	.globl	C$SpriteBiga.c$76$2_3$194
;SpriteBiga.c:76: off_limit_y = 1u;
	ldhl	sp,	#9
	ld	(hl), #0x01
00122$:
	C$SpriteBiga.c$79$1_3$192	= .
	.globl	C$SpriteBiga.c$79$1_3$192
;SpriteBiga.c:79: if(off_limit_y == 0){ //se il limite non è stato infranto, mi sposto verso
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
	jr	NZ, 00129$
	C$SpriteBiga.c$52$1_5$181	= .
	.globl	C$SpriteBiga.c$52$1_5$181
;SpriteBiga.c:52: INT16 delta_x = s_horse->x - THIS->x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteBiga.c$68$1_5$181	= .
	.globl	C$SpriteBiga.c$68$1_5$181
;SpriteBiga.c:68: INT16 delta_y = s_horse->y - THIS->y;
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
	C$SpriteBiga.c$80$2_3$195	= .
	.globl	C$SpriteBiga.c$80$2_3$195
;SpriteBiga.c:80: if(THIS->y > final_pos_y){THIS->y--;}
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
	C$SpriteBiga.c$81$2_3$195	= .
	.globl	C$SpriteBiga.c$81$2_3$195
;SpriteBiga.c:81: else if (THIS->y < final_pos_y){THIS->y++;}
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
	C$SpriteBiga.c$83$1_3$192	= .
	.globl	C$SpriteBiga.c$83$1_3$192
;SpriteBiga.c:83: THIS->anim_speed = stamina_current >> 6;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x08
	ld	c, a
	jr	NC, 00346$
	inc	b
00346$:
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
	C$SpriteBiga.c$84$1_3$192	= .
	.globl	C$SpriteBiga.c$84$1_3$192
;SpriteBiga.c:84: THIS->mirror = s_horse->mirror;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x10
	ld	c, a
	jr	NC, 00347$
	inc	b
00347$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
	C$SpriteBiga.c$86$1_4$198	= .
	.globl	C$SpriteBiga.c$86$1_4$198
;SpriteBiga.c:86: INT16 to_final_x = THIS->x - final_pos_x;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	b, (hl)
	ld	e, a
	ld	d, b
	pop	hl
	push	hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	c, e
	ld	b, a
	C$SpriteBiga.c$87$1_4$198	= .
	.globl	C$SpriteBiga.c$87$1_4$198
;SpriteBiga.c:87: SetSpriteAnim(THIS, a_biga_h, 1);
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
	C$SpriteBiga.c$88$1_4$198	= .
	.globl	C$SpriteBiga.c$88$1_4$198
;SpriteBiga.c:88: if(to_final_x > 4){//devo andare a sinistra
	ld	e, b
	ld	d, #0x00
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00348$
	bit	7, d
	jr	NZ, 00349$
	cp	a, a
	jr	00349$
00348$:
	bit	7, d
	jr	Z, 00349$
	scf
00349$:
	jr	NC, 00131$
	C$SpriteBiga.c$89$2_4$199	= .
	.globl	C$SpriteBiga.c$89$2_4$199
;SpriteBiga.c:89: THIS->mirror = V_MIRROR;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x02
00131$:
	C$SpriteBiga.c$91$1_4$198	= .
	.globl	C$SpriteBiga.c$91$1_4$198
;SpriteBiga.c:91: if(stamina_current < euphoria_max && stamina_current > euphoria_min){
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
	jr	NC, 00138$
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00138$
	C$SpriteBiga.c$92$2_4$200	= .
	.globl	C$SpriteBiga.c$92$2_4$200
;SpriteBiga.c:92: if(vy > 1){ //sto andando in giù
	ld	hl, #_vy
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00350$
	bit	7, d
	jr	NZ, 00351$
	cp	a, a
	jr	00351$
00350$:
	bit	7, d
	jr	Z, 00351$
	scf
00351$:
	jr	NC, 00135$
	C$SpriteBiga.c$93$3_4$201	= .
	.globl	C$SpriteBiga.c$93$3_4$201
;SpriteBiga.c:93: SetSpriteAnim(THIS, a_biga_down, 12);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	bc, #_a_biga_down
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00138$
00135$:
	C$SpriteBiga.c$94$2_4$200	= .
	.globl	C$SpriteBiga.c$94$2_4$200
;SpriteBiga.c:94: }else if (vy < -1){//sto andando in su
	ld	a, (#_vy)
	xor	a, #0x80
	sub	a, #0x7f
	jr	NC, 00138$
	C$SpriteBiga.c$95$3_4$202	= .
	.globl	C$SpriteBiga.c$95$3_4$202
;SpriteBiga.c:95: SetSpriteAnim(THIS, a_biga_up, 12);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	bc, #_a_biga_up
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00138$:
	C$SpriteBiga.c$101$2_5$204	= .
	.globl	C$SpriteBiga.c$101$2_5$204
;SpriteBiga.c:101: SPRITEMANAGER_ITERATE(scroll_b_tile, ibspr) {
	ld	a, (#(_sprite_manager_updatables + 1) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_sprite_manager_sprites
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#9
	ld	(hl), #0x00
00153$:
	ld	a, (#_sprite_manager_updatables + 0)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#9
	ld	a, (hl-)
	sub	a, (hl)
	jr	Z, 00146$
	C$SpriteBiga.c$102$3_5$205	= .
	.globl	C$SpriteBiga.c$102$3_5$205
;SpriteBiga.c:102: if(CheckCollision(THIS, ibspr)) {
	push	bc
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_CheckCollision
	pop	bc
	or	a, a
	jr	Z, 00154$
	C$SpriteBiga.c$103$4_5$206	= .
	.globl	C$SpriteBiga.c$103$4_5$206
;SpriteBiga.c:103: switch(ibspr->type){
	ld	hl, #0x0013
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x08
	jr	NZ, 00154$
	C$SpriteBiga.c$105$6_5$208	= .
	.globl	C$SpriteBiga.c$105$6_5$208
;SpriteBiga.c:105: struct ItemData* item_data = (struct ItemData*) ibspr->custom_data;
	C$SpriteBiga.c$106$6_5$208	= .
	.globl	C$SpriteBiga.c$106$6_5$208
;SpriteBiga.c:106: if(item_data->configured == 2){
	ld	hl,#0x1e
	add	hl,bc
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00154$
	C$SpriteBiga.c$107$7_5$209	= .
	.globl	C$SpriteBiga.c$107$7_5$209
;SpriteBiga.c:107: pickup(ibspr);
	push	bc
	ld	e, #b_pickup
	ld	hl, #_pickup
	call	___sdcc_bcall_ehl
	pop	hl
	C$SpriteBiga.c$110$3_5$205	= .
	.globl	C$SpriteBiga.c$110$3_5$205
;SpriteBiga.c:110: }
00154$:
	C$SpriteBiga.c$101$2_5$204	= .
	.globl	C$SpriteBiga.c$101$2_5$204
;SpriteBiga.c:101: SPRITEMANAGER_ITERATE(scroll_b_tile, ibspr) {
	ldhl	sp,	#9
	inc	(hl)
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #_sprite_manager_updatables
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_sprite_manager_sprites
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	jr	00153$
00146$:
	C$SpriteBiga.c$114$1_5$203	= .
	.globl	C$SpriteBiga.c$114$1_5$203
;SpriteBiga.c:114: if(KEY_TICKED(J_ATK)){
	ld	a, (#_keys)
	ld	hl, #_J_ATK
	and	a,(hl)
	jr	Z, 00155$
	ld	a, (#_previous_keys)
	ld	hl, #_J_ATK
	and	a,(hl)
	jr	NZ, 00155$
	C$SpriteBiga.c$115$2_5$210	= .
	.globl	C$SpriteBiga.c$115$2_5$210
;SpriteBiga.c:115: if(weapon_atk != NONE){
	ld	a, (#_weapon_atk)
	or	a, a
	jr	Z, 00155$
	C$SpriteBiga.c$116$3_5$211	= .
	.globl	C$SpriteBiga.c$116$3_5$211
;SpriteBiga.c:116: use_weapon(0);
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_use_weapon
	ld	hl, #_use_weapon
	call	___sdcc_bcall_ehl
	inc	sp
00155$:
	C$SpriteBiga.c$119$1_5$181	= .
	.globl	C$SpriteBiga.c$119$1_5$181
;SpriteBiga.c:119: }
	add	sp, #10
	C$SpriteBiga.c$119$1_5$181	= .
	.globl	C$SpriteBiga.c$119$1_5$181
	XG$Update_SpriteBiga$0$0	= .
	.globl	XG$Update_SpriteBiga$0$0
	ret
	G$pickup$0$0	= .
	.globl	G$pickup$0$0
	C$SpriteBiga.c$121$1_5$213	= .
	.globl	C$SpriteBiga.c$121$1_5$213
;SpriteBiga.c:121: void pickup(Sprite* s_arg_item) BANKED{
;	---------------------------------
; Function pickup
; ---------------------------------
	b_pickup	= 255
_pickup::
	C$SpriteBiga.c$122$1_0$213	= .
	.globl	C$SpriteBiga.c$122$1_0$213
;SpriteBiga.c:122: struct ItemData* item_data = (struct ItemData*) s_arg_item->custom_data;
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x001b
	add	hl, de
	C$SpriteBiga.c$123$1_0$213	= .
	.globl	C$SpriteBiga.c$123$1_0$213
;SpriteBiga.c:123: switch(item_data->itemtype){
	ld	bc, #0x0004
	add	hl, bc
	ld	c, (hl)
	ld	a, c
	sub	a, #0x03
	jp	C,_SpriteManagerRemoveSprite
	ld	a, #0x0a
	sub	a, c
	jp	C,_SpriteManagerRemoveSprite
	ld	a, c
	add	a, #0xfd
	ld	b, a
	push	de
	ld	e, b
	ld	d, #0x00
	ld	hl, #00126$
	add	hl, de
	add	hl, de
	add	hl, de
	pop	de
	jp	(hl)
00126$:
	jp	00103$
	jp	00103$
	jp	00103$
	jp	00106$
	jp	00106$
	jp	00106$
	jp	00107$
	jp	00108$
	C$SpriteBiga.c$124$2_0$214	= .
	.globl	C$SpriteBiga.c$124$2_0$214
;SpriteBiga.c:124: case GLADIO: case LANCE: case FLAME:
00103$:
	C$SpriteBiga.c$125$2_0$214	= .
	.globl	C$SpriteBiga.c$125$2_0$214
;SpriteBiga.c:125: weapon_atk = item_data->itemtype;
	ld	hl, #_weapon_atk
	ld	(hl), c
	C$SpriteBiga.c$126$2_0$214	= .
	.globl	C$SpriteBiga.c$126$2_0$214
;SpriteBiga.c:126: update_weapon();
	push	de
	ld	e, #b_update_weapon
	ld	hl, #_update_weapon
	call	___sdcc_bcall_ehl
	pop	de
	C$SpriteBiga.c$127$2_0$214	= .
	.globl	C$SpriteBiga.c$127$2_0$214
;SpriteBiga.c:127: break;
	jp	_SpriteManagerRemoveSprite
	C$SpriteBiga.c$128$2_0$214	= .
	.globl	C$SpriteBiga.c$128$2_0$214
;SpriteBiga.c:128: case ELMET: case SHIELD: case CAPE:
00106$:
	C$SpriteBiga.c$129$2_0$214	= .
	.globl	C$SpriteBiga.c$129$2_0$214
;SpriteBiga.c:129: weapon_def = item_data->itemtype;
	ld	hl, #_weapon_def
	ld	(hl), c
	C$SpriteBiga.c$130$2_0$214	= .
	.globl	C$SpriteBiga.c$130$2_0$214
;SpriteBiga.c:130: update_weapon();
	push	de
	ld	e, #b_update_weapon
	ld	hl, #_update_weapon
	call	___sdcc_bcall_ehl
	pop	de
	C$SpriteBiga.c$131$2_0$214	= .
	.globl	C$SpriteBiga.c$131$2_0$214
;SpriteBiga.c:131: break;
	jp	_SpriteManagerRemoveSprite
	C$SpriteBiga.c$132$2_0$214	= .
	.globl	C$SpriteBiga.c$132$2_0$214
;SpriteBiga.c:132: case HP:
00107$:
	C$SpriteBiga.c$133$2_0$214	= .
	.globl	C$SpriteBiga.c$133$2_0$214
;SpriteBiga.c:133: update_hp_max();
	push	de
	ld	e, #b_update_hp_max
	ld	hl, #_update_hp_max
	call	___sdcc_bcall_ehl
	pop	de
	C$SpriteBiga.c$134$2_0$214	= .
	.globl	C$SpriteBiga.c$134$2_0$214
;SpriteBiga.c:134: break;
	jp	_SpriteManagerRemoveSprite
	C$SpriteBiga.c$135$2_0$214	= .
	.globl	C$SpriteBiga.c$135$2_0$214
;SpriteBiga.c:135: case TIME:
00108$:
	C$SpriteBiga.c$136$2_0$214	= .
	.globl	C$SpriteBiga.c$136$2_0$214
;SpriteBiga.c:136: update_time_max();
	push	de
	ld	e, #b_update_time_max
	ld	hl, #_update_time_max
	call	___sdcc_bcall_ehl
	pop	de
	C$SpriteBiga.c$138$1_0$213	= .
	.globl	C$SpriteBiga.c$138$1_0$213
;SpriteBiga.c:138: }    
	C$SpriteBiga.c$139$1_0$213	= .
	.globl	C$SpriteBiga.c$139$1_0$213
;SpriteBiga.c:139: SpriteManagerRemoveSprite(s_arg_item);
	C$SpriteBiga.c$140$1_0$213	= .
	.globl	C$SpriteBiga.c$140$1_0$213
;SpriteBiga.c:140: }
	C$SpriteBiga.c$140$1_0$213	= .
	.globl	C$SpriteBiga.c$140$1_0$213
	XG$pickup$0$0	= .
	.globl	XG$pickup$0$0
	jp	_SpriteManagerRemoveSprite
	G$Destroy_SpriteBiga$0$0	= .
	.globl	G$Destroy_SpriteBiga$0$0
	C$SpriteBiga.c$142$1_0$216	= .
	.globl	C$SpriteBiga.c$142$1_0$216
;SpriteBiga.c:142: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteBiga
; ---------------------------------
_Destroy_SpriteBiga::
	C$SpriteBiga.c$143$1_0$216	= .
	.globl	C$SpriteBiga.c$143$1_0$216
;SpriteBiga.c:143: }
	C$SpriteBiga.c$143$1_0$216	= .
	.globl	C$SpriteBiga.c$143$1_0$216
	XG$Destroy_SpriteBiga$0$0	= .
	.globl	XG$Destroy_SpriteBiga$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
