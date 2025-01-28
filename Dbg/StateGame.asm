;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module StateGame
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Update_StateGame
	.globl b_hud_compass_r_u_33
	.globl _hud_compass_r_u_33
	.globl b_hud_compass_h_r
	.globl _hud_compass_h_r
	.globl _set_banked_bkg_data
	.globl _Start_StateGame
	.globl _SpriteManagerAdd
	.globl _GetMapSize
	.globl _UpdateMapTile
	.globl _LoadMap
	.globl _InitScroll
	.globl _SetWindowY
	.globl _set_bkg_data
	.globl _hp_current
	.globl _horse_direction_old
	.globl _horse_direction
	.globl _euphoria_max_current
	.globl _euphoria_min_current
	.globl _s_compass
	.globl _s_biga
	.globl _s_horse
	.globl _coll_surface
	.globl _coll_tiles
	.globl ___bank_StateGame
	.globl b_update_stamina
	.globl _update_stamina
	.globl b_update_euphoria
	.globl _update_euphoria
	.globl b_update_compass
	.globl _update_compass
	.globl b_update_turning
	.globl _update_turning
	.globl b_update_hp
	.globl _update_hp
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
G$s_horse$0_0$0==.
_s_horse::
	.ds 2
G$s_biga$0_0$0==.
_s_biga::
	.ds 2
G$s_compass$0_0$0==.
_s_compass::
	.ds 2
G$euphoria_min_current$0_0$0==.
_euphoria_min_current::
	.ds 2
G$euphoria_max_current$0_0$0==.
_euphoria_max_current::
	.ds 2
G$horse_direction$0_0$0==.
_horse_direction::
	.ds 1
G$horse_direction_old$0_0$0==.
_horse_direction_old::
	.ds 1
G$hp_current$0_0$0==.
_hp_current::
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
	G$set_banked_bkg_data$0$0	= .
	.globl	G$set_banked_bkg_data$0$0
	C$StateGame.c$190$1_0$226	= .
	.globl	C$StateGame.c$190$1_0$226
;StateGame.c:190: void set_banked_bkg_data(UINT8 first_tile, UINT8 nb_tiles, struct TilesInfo* t, UINT8 bank) NONBANKED {
;	---------------------------------
; Function set_banked_bkg_data
; ---------------------------------
_set_banked_bkg_data::
	dec	sp
	dec	sp
	ld	c, a
	ldhl	sp,	#1
	ld	(hl), e
	C$StateGame.c$191$2_0$226	= .
	.globl	C$StateGame.c$191$2_0$226
;StateGame.c:191: uint8_t save = _current_bank;
	dec	hl
	ldh	a, (__current_bank + 0)
	ld	(hl), a
	C$StateGame.c$192$1_0$226	= .
	.globl	C$StateGame.c$192$1_0$226
;StateGame.c:192: SWITCH_ROM(bank);
	ldhl	sp,	#6
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	(#_rROMB0),a
	C$StateGame.c$193$1_0$226	= .
	.globl	C$StateGame.c$193$1_0$226
;StateGame.c:193: set_bkg_data(first_tile, nb_tiles, t->data+((16u) * first_tile));
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (hl+)
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, a
	ld	d, b
	add	hl, de
	push	hl
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
	C$StateGame.c$194$1_0$226	= .
	.globl	C$StateGame.c$194$1_0$226
;StateGame.c:194: SWITCH_ROM(save);
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	a, (hl)
	ld	(#_rROMB0),a
	C$StateGame.c$195$1_0$226	= .
	.globl	C$StateGame.c$195$1_0$226
;StateGame.c:195: }
	inc	sp
	inc	sp
	pop	hl
	add	sp, #3
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$Start_StateGame$0$0	= .
	.globl	G$Start_StateGame$0$0
	C$StateGame.c$51$0_0$191	= .
	.globl	C$StateGame.c$51$0_0$191
;StateGame.c:51: void START() {
;	---------------------------------
; Function Start_StateGame
; ---------------------------------
_Start_StateGame::
	add	sp, #-4
	C$StateGame.c$54$1_0$191	= .
	.globl	C$StateGame.c$54$1_0$191
;StateGame.c:54: scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
	ld	de, #0x0048
	push	de
	ld	de, #0x0040
	ld	a, #0x06
	call	_SpriteManagerAdd
	ld	hl, #_scroll_target
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$55$1_0$191	= .
	.globl	C$StateGame.c$55$1_0$191
;StateGame.c:55: s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
	ld	de, #0x0061
	push	de
	ld	de, #0x0024
	ld	a, #0x03
	call	_SpriteManagerAdd
	ld	hl, #_s_biga
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$56$1_0$191	= .
	.globl	C$StateGame.c$56$1_0$191
;StateGame.c:56: s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
	ld	de, #0x0058
	push	de
	ld	de, #0x0038
	ld	a, #0x01
	call	_SpriteManagerAdd
	ld	hl, #_s_horse
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$57$1_0$191	= .
	.globl	C$StateGame.c$57$1_0$191
;StateGame.c:57: s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
	ld	de, #0x0058
	push	de
	ld	de, #0x0038
	ld	a, #0x04
	call	_SpriteManagerAdd
	ld	hl, #_s_compass
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$58$1_1$191	= .
	.globl	C$StateGame.c$58$1_1$191
;StateGame.c:58: Sprite* s_item = SpriteManagerAdd(SpriteFire, s_horse->x + 40u, s_horse->y + 16u);
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000e
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #0x0010
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0028
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x05
	call	_SpriteManagerAdd
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$StateGame.c$59$1_1$192	= .
	.globl	C$StateGame.c$59$1_1$192
;StateGame.c:59: Sprite* s_item2 = SpriteManagerAdd(SpriteFire, s_horse->x + 48u, s_horse->y + 8u);
	ld	hl, #0x000e
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0030
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x05
	call	_SpriteManagerAdd
	C$StateGame.c$60$1_1$192	= .
	.globl	C$StateGame.c$60$1_1$192
;StateGame.c:60: scroll_bottom_movement_limit= 40;
	ld	hl, #_scroll_bottom_movement_limit
	ld	(hl), #0x28
	C$StateGame.c$61$1_1$192	= .
	.globl	C$StateGame.c$61$1_1$192
;StateGame.c:61: InitScroll(BANK(maprome00), &maprome00, coll_tiles, coll_surface);
	ld	de, #_maprome00+0
	ld	c, #<(___bank_maprome00)
	ld	hl, #_coll_surface
	push	hl
	ld	hl, #_coll_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateGame.c$64$1_1$192	= .
	.globl	C$StateGame.c$64$1_1$192
;StateGame.c:64: INIT_HUD(hudm);
	ld	de, #_hudm
	ld	c, #<(___bank_hudm)
	ld	hl, #_scroll_h_border
	push	hl
	ld	hl, #0x0000
	push	hl
	ld	a, c
	call	_GetMapSize
	ld	hl, #_scroll_h_border
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, a
	ld	(hl), a
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, #0x90
	sub	a, (hl)
	ldh	(_WY_REG + 0), a
	ld	bc, #_hudm
	ld	a, #<(___bank_hudm)
	push	bc
	ld	h, a
	ld	l, #0x00
	push	hl
	ld	e, #0x00
	ld	a, #0x01
	call	_LoadMap
	ld	hl, #_hud_map_offset
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
	C$StateGame.c$65$1_1$192	= .
	.globl	C$StateGame.c$65$1_1$192
;StateGame.c:65: SetWindowY(104);//su suggerimento di toxa, perché INIT_HUD non fa sta chiamata che dice serve...
	ld	a, #0x68
	call	_SetWindowY
	C$StateGame.c$66$1_1$192	= .
	.globl	C$StateGame.c$66$1_1$192
;StateGame.c:66: euphoria_min_current = euphoria_min;
	ld	a, (#_euphoria_min)
	ld	(#_euphoria_min_current),a
	ld	a, (#_euphoria_min + 1)
	ld	(#_euphoria_min_current + 1),a
	C$StateGame.c$67$1_1$192	= .
	.globl	C$StateGame.c$67$1_1$192
;StateGame.c:67: euphoria_max_current = euphoria_max;
	ld	a, (#_euphoria_max)
	ld	(#_euphoria_max_current),a
	ld	a, (#_euphoria_max + 1)
	ld	(#_euphoria_max_current + 1),a
	C$StateGame.c$68$1_1$192	= .
	.globl	C$StateGame.c$68$1_1$192
;StateGame.c:68: update_euphoria();
	ld	e, #b_update_euphoria
	ld	hl, #_update_euphoria
	call	___sdcc_bcall_ehl
	C$StateGame.c$69$1_1$191	= .
	.globl	C$StateGame.c$69$1_1$191
;StateGame.c:69: }
	add	sp, #4
	C$StateGame.c$69$1_1$191	= .
	.globl	C$StateGame.c$69$1_1$191
	XG$Start_StateGame$0$0	= .
	.globl	XG$Start_StateGame$0$0
	ret
G$__bank_StateGame$0_0$0 == 0x00ff
___bank_StateGame	=	0x00ff
G$coll_tiles$0_0$0 == .
_coll_tiles:
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x00	; 0
G$coll_surface$0_0$0 == .
_coll_surface:
	.db #0x00	; 0
	.db #0x00	; 0
	G$update_stamina$0$0	= .
	.globl	G$update_stamina$0$0
	C$StateGame.c$71$1_1$193	= .
	.globl	C$StateGame.c$71$1_1$193
;StateGame.c:71: void update_stamina() BANKED{
;	---------------------------------
; Function update_stamina
; ---------------------------------
	b_update_stamina	= 255
_update_stamina::
	add	sp, #-5
	C$StateGame.c$75$1_0$193	= .
	.globl	C$StateGame.c$75$1_0$193
;StateGame.c:75: INT16 stamina_hud = stamina_current/10;// (stamina_current * PIXEL_STAMINA)/stamina_max;
	ld	bc, #0x000a
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	C$StateGame.c$76$1_0$193	= .
	.globl	C$StateGame.c$76$1_0$193
;StateGame.c:76: UINT16 stamina_intero = stamina_hud >> 3;
	call	__divsint
	ld	e, c
	ld	d, b
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	C$StateGame.c$77$1_0$193	= .
	.globl	C$StateGame.c$77$1_0$193
;StateGame.c:77: UINT16 stamina_resto = stamina_hud % 8;
	ld	bc, #0x0008
	call	__modsint
	ld	e, c
	ld	d, b
	C$StateGame.c$78$1_0$193	= .
	.globl	C$StateGame.c$78$1_0$193
;StateGame.c:78: INT16 idx = 0;
	ld	bc, #0x0000
	C$StateGame.c$79$1_0$193	= .
	.globl	C$StateGame.c$79$1_0$193
;StateGame.c:79: if(stamina_intero > 0){
	ldhl	sp,	#3
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00103$
	C$StateGame.c$80$1_0$193	= .
	.globl	C$StateGame.c$80$1_0$193
;StateGame.c:80: for(idx = 0; idx < stamina_intero; idx++){
	ld	bc, #0x0000
00110$:
	inc	sp
	inc	sp
	push	bc
	push	de
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	pop	de
	jr	NC, 00120$
	C$StateGame.c$81$4_0$196	= .
	.globl	C$StateGame.c$81$4_0$196
;StateGame.c:81: UPDATE_HUD_TILE(7+idx,0, 52);
	ld	a, c
	add	a, #0x07
	ldhl	sp,	#4
	ld	(hl), a
	push	bc
	push	de
	ld	hl, #0x0000
	push	hl
	ld	a, #0x34
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_hud_map_offset + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#14
	ld	e, (hl)
	ld	a, #0x01
	call	_UpdateMapTile
	pop	de
	pop	bc
	C$StateGame.c$80$3_0$195	= .
	.globl	C$StateGame.c$80$3_0$195
;StateGame.c:80: for(idx = 0; idx < stamina_intero; idx++){
	inc	bc
	jr	00110$
00120$:
00103$:
	C$StateGame.c$84$1_0$193	= .
	.globl	C$StateGame.c$84$1_0$193
;StateGame.c:84: if(stamina_resto > 0){
	ld	a, d
	or	a, e
	jr	Z, 00119$
	C$StateGame.c$85$2_0$197	= .
	.globl	C$StateGame.c$85$2_0$197
;StateGame.c:85: UPDATE_HUD_TILE(7+idx,0, 60 - stamina_resto);
	ld	a, #0x3c
	sub	a, e
	ld	d, a
	ld	a, c
	add	a, #0x07
	ld	e, a
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	inc	sp
	ld	hl, #_hud_map_offset
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_hud_map_offset + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$86$2_0$197	= .
	.globl	C$StateGame.c$86$2_0$197
;StateGame.c:86: idx++;
	inc	bc
	C$StateGame.c$88$1_0$193	= .
	.globl	C$StateGame.c$88$1_0$193
;StateGame.c:88: while(idx < 12){
00119$:
00106$:
	ld	a, c
	sub	a, #0x0c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00112$
	C$StateGame.c$89$2_0$198	= .
	.globl	C$StateGame.c$89$2_0$198
;StateGame.c:89: UPDATE_HUD_TILE(7+idx,0, 60);
	ld	a, c
	add	a, #0x07
	ld	e, a
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	a, #0x3c
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_hud_map_offset + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$90$2_0$198	= .
	.globl	C$StateGame.c$90$2_0$198
;StateGame.c:90: idx++;
	inc	bc
	jr	00106$
00112$:
	C$StateGame.c$92$1_0$193	= .
	.globl	C$StateGame.c$92$1_0$193
;StateGame.c:92: }
	add	sp, #5
	C$StateGame.c$92$1_0$193	= .
	.globl	C$StateGame.c$92$1_0$193
	XG$update_stamina$0$0	= .
	.globl	XG$update_stamina$0$0
	ret
	G$update_euphoria$0$0	= .
	.globl	G$update_euphoria$0$0
	C$StateGame.c$94$1_0$199	= .
	.globl	C$StateGame.c$94$1_0$199
;StateGame.c:94: void update_euphoria() BANKED{
;	---------------------------------
; Function update_euphoria
; ---------------------------------
	b_update_euphoria	= 255
_update_euphoria::
	add	sp, #-8
	C$StateGame.c$95$1_0$199	= .
	.globl	C$StateGame.c$95$1_0$199
;StateGame.c:95: euphoria_min_current = euphoria_min;
	ld	a, (#_euphoria_min)
	ld	(#_euphoria_min_current),a
	ld	a, (#_euphoria_min + 1)
	ld	(#_euphoria_min_current + 1),a
	C$StateGame.c$96$1_0$199	= .
	.globl	C$StateGame.c$96$1_0$199
;StateGame.c:96: euphoria_max_current = euphoria_max;
	ld	a, (#_euphoria_max)
	ld	(#_euphoria_max_current),a
	ld	a, (#_euphoria_max + 1)
	ld	(#_euphoria_max_current + 1),a
	C$StateGame.c$97$1_1$199	= .
	.globl	C$StateGame.c$97$1_1$199
;StateGame.c:97: UINT8 euphoria_init = euphoria_min_current / 10 / 8;
	ld	bc, #0x000a
	ld	hl, #_euphoria_min_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__divuint
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ldhl	sp,	#0
	ld	(hl), c
	C$StateGame.c$98$1_1$199	= .
	.globl	C$StateGame.c$98$1_1$199
;StateGame.c:98: UINT8 euphoria_final = euphoria_max_current / 10 / 8;
	ld	bc, #0x000a
	ld	hl, #_euphoria_max_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__divuint
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ldhl	sp,	#1
	ld	(hl), c
	C$StateGame.c$99$1_1$200	= .
	.globl	C$StateGame.c$99$1_1$200
;StateGame.c:99: UINT8 delta_euphoria = euphoria_final - euphoria_init;
	ld	a, (hl-)
	sub	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	C$StateGame.c$101$1_1$199	= .
	.globl	C$StateGame.c$101$1_1$199
;StateGame.c:101: while(idx_delta_euphoria <= (delta_euphoria-1)){
	ldhl	sp,	#7
	ld	(hl), #0x00
00104$:
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, e
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	dec	hl
	ld	c, a
	ld	b, #0x00
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
	jr	Z, 00131$
	bit	7, d
	jr	NZ, 00132$
	cp	a, a
	jr	00132$
00131$:
	bit	7, d
	jr	Z, 00132$
	scf
00132$:
	jr	C, 00106$
	C$StateGame.c$103$1_1$199	= .
	.globl	C$StateGame.c$103$1_1$199
;StateGame.c:103: UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 7+idx_delta_euphoria);
	ldhl	sp,	#7
	ld	c, (hl)
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0x07
	add	a, c
	ld	e, a
	C$StateGame.c$102$2_1$201	= .
	.globl	C$StateGame.c$102$2_1$201
;StateGame.c:102: if(idx_delta_euphoria < 3){
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, #0x03
	jr	NC, 00102$
	C$StateGame.c$103$3_1$202	= .
	.globl	C$StateGame.c$103$3_1$202
;StateGame.c:103: UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 7+idx_delta_euphoria);
	ld	a, c
	add	a, #0x07
	ld	bc, #0x0000
	push	bc
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	jr	00103$
00102$:
	C$StateGame.c$104$3_1$203	= .
	.globl	C$StateGame.c$104$3_1$203
;StateGame.c:104: }else{ UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 1);}
	ld	bc, #0x0000
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
00103$:
	C$StateGame.c$105$2_1$201	= .
	.globl	C$StateGame.c$105$2_1$201
;StateGame.c:105: idx_delta_euphoria++;
	ldhl	sp,	#7
	inc	(hl)
	jr	00104$
00106$:
	C$StateGame.c$107$1_1$200	= .
	.globl	C$StateGame.c$107$1_1$200
;StateGame.c:107: UPDATE_HUD_TILE(7+euphoria_final,1, 10);
	ldhl	sp,	#1
	ld	a, (hl)
	add	a, #0x07
	ld	e, a
	ld	bc, #0x0000
	push	bc
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$108$1_1$199	= .
	.globl	C$StateGame.c$108$1_1$199
;StateGame.c:108: }
	add	sp, #8
	C$StateGame.c$108$1_1$199	= .
	.globl	C$StateGame.c$108$1_1$199
	XG$update_euphoria$0$0	= .
	.globl	XG$update_euphoria$0$0
	ret
	G$update_compass$0$0	= .
	.globl	G$update_compass$0$0
	C$StateGame.c$110$1_1$204	= .
	.globl	C$StateGame.c$110$1_1$204
;StateGame.c:110: void update_compass() BANKED{
;	---------------------------------
; Function update_compass
; ---------------------------------
	b_update_compass	= 255
_update_compass::
	dec	sp
	C$StateGame.c$112$2_0$204	= .
	.globl	C$StateGame.c$112$2_0$204
;StateGame.c:112: INT8 using_sin = sin;
	ld	hl, #_sin
	ld	b, (hl)
	C$StateGame.c$113$1_0$204	= .
	.globl	C$StateGame.c$113$1_0$204
;StateGame.c:113: if(cos < 0) {using_cos = -cos;}
	ld	a, (#_cos)
	rlca
	and	a,#0x01
	ldhl	sp,	#0
	ld	(hl), a
	C$StateGame.c$114$1_0$204	= .
	.globl	C$StateGame.c$114$1_0$204
;StateGame.c:114: if(sin < 0) {using_sin = -sin;}
	ld	hl, #_sin
	ld	a, (hl)
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00104$
	xor	a, a
	sub	a, (hl)
	ld	b, a
00104$:
	C$StateGame.c$115$1_0$204	= .
	.globl	C$StateGame.c$115$1_0$204
;StateGame.c:115: if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
	bit	7, b
	jr	NZ, 00116$
	ld	e, b
	ld	a,#0x1e
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00341$
	bit	7, d
	jr	NZ, 00342$
	cp	a, a
	jr	00342$
00341$:
	bit	7, d
	jr	Z, 00342$
	scf
00342$:
	jr	C, 00116$
	C$StateGame.c$116$2_0$207	= .
	.globl	C$StateGame.c$116$2_0$207
;StateGame.c:116: horse_direction = EEE;
	ld	hl, #_horse_direction
	ld	(hl), #0x00
	jr	00117$
00116$:
	C$StateGame.c$117$1_0$204	= .
	.globl	C$StateGame.c$117$1_0$204
;StateGame.c:117: }else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
	ld	e, b
	ld	a,#0x1e
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00343$
	bit	7, d
	jr	NZ, 00344$
	cp	a, a
	jr	00344$
00343$:
	bit	7, d
	jr	Z, 00344$
	scf
00344$:
	jr	NC, 00112$
	ld	a, b
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00112$
	C$StateGame.c$118$2_0$208	= .
	.globl	C$StateGame.c$118$2_0$208
;StateGame.c:118: horse_direction = ENE;
	ld	hl, #_horse_direction
	ld	(hl), #0x01
	jr	00117$
00112$:
	C$StateGame.c$119$1_0$204	= .
	.globl	C$StateGame.c$119$1_0$204
;StateGame.c:119: }else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
	ld	e, b
	ld	a,#0x36
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00345$
	bit	7, d
	jr	NZ, 00346$
	cp	a, a
	jr	00346$
00345$:
	bit	7, d
	jr	Z, 00346$
	scf
00346$:
	jr	NC, 00108$
	ld	a, b
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00108$
	C$StateGame.c$120$2_0$209	= .
	.globl	C$StateGame.c$120$2_0$209
;StateGame.c:120: horse_direction = NNE;
	ld	hl, #_horse_direction
	ld	(hl), #0x02
	jr	00117$
00108$:
	C$StateGame.c$121$1_0$204	= .
	.globl	C$StateGame.c$121$1_0$204
;StateGame.c:121: }else if(using_sin > 78){ // tratto come se stesse andando verticale su
	ld	e, b
	ld	a,#0x4e
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00347$
	bit	7, d
	jr	NZ, 00348$
	cp	a, a
	jr	00348$
00347$:
	bit	7, d
	jr	Z, 00348$
	scf
00348$:
	jr	NC, 00117$
	C$StateGame.c$122$2_0$210	= .
	.globl	C$StateGame.c$122$2_0$210
;StateGame.c:122: horse_direction = NNN;
	ld	hl, #_horse_direction
	ld	(hl), #0x03
00117$:
	C$StateGame.c$125$1_0$204	= .
	.globl	C$StateGame.c$125$1_0$204
;StateGame.c:125: if(sin > 0 && cos < 0){
	ld	hl, #_sin
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00349$
	bit	7, d
	jr	NZ, 00350$
	cp	a, a
	jr	00350$
00349$:
	bit	7, d
	jr	Z, 00350$
	scf
00350$:
	jr	NC, 00124$
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00124$
	C$StateGame.c$126$2_0$211	= .
	.globl	C$StateGame.c$126$2_0$211
;StateGame.c:126: switch(horse_direction){//THIS->mirror = V_MIRROR;
	ld	a, (#_horse_direction)
	or	a, a
	jr	Z, 00119$
	ld	a, (#_horse_direction)
	dec	a
	jr	Z, 00120$
	ld	a, (#_horse_direction)
	sub	a, #0x02
	jr	Z, 00121$
	jr	00124$
	C$StateGame.c$127$3_0$212	= .
	.globl	C$StateGame.c$127$3_0$212
;StateGame.c:127: case EEE: horse_direction = WWW; break;
00119$:
	ld	hl, #_horse_direction
	ld	(hl), #0x06
	jr	00124$
	C$StateGame.c$128$3_0$212	= .
	.globl	C$StateGame.c$128$3_0$212
;StateGame.c:128: case ENE: horse_direction = WNW; break;
00120$:
	ld	hl, #_horse_direction
	ld	(hl), #0x05
	jr	00124$
	C$StateGame.c$129$3_0$212	= .
	.globl	C$StateGame.c$129$3_0$212
;StateGame.c:129: case NNE: horse_direction = NNW; break;
00121$:
	ld	hl, #_horse_direction
	ld	(hl), #0x04
	C$StateGame.c$130$1_0$204	= .
	.globl	C$StateGame.c$130$1_0$204
;StateGame.c:130: }			
00124$:
	C$StateGame.c$132$1_0$204	= .
	.globl	C$StateGame.c$132$1_0$204
;StateGame.c:132: if(sin < 0 && cos > 0){//THIS->mirror = H_MIRROR;
	ld	a, c
	or	a, a
	jr	Z, 00131$
	ld	hl, #_cos
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00354$
	bit	7, d
	jr	NZ, 00355$
	cp	a, a
	jr	00355$
00354$:
	bit	7, d
	jr	Z, 00355$
	scf
00355$:
	jr	NC, 00131$
	C$StateGame.c$133$2_0$213	= .
	.globl	C$StateGame.c$133$2_0$213
;StateGame.c:133: switch(horse_direction){
	ld	a, (#_horse_direction)
	dec	a
	jr	Z, 00126$
	ld	a, (#_horse_direction)
	sub	a, #0x02
	jr	Z, 00127$
	ld	a, (#_horse_direction)
	sub	a, #0x03
	jr	Z, 00128$
	jr	00131$
	C$StateGame.c$134$3_0$214	= .
	.globl	C$StateGame.c$134$3_0$214
;StateGame.c:134: case ENE: horse_direction = ESE; break;
00126$:
	ld	hl, #_horse_direction
	ld	(hl), #0x0b
	jr	00131$
	C$StateGame.c$135$3_0$214	= .
	.globl	C$StateGame.c$135$3_0$214
;StateGame.c:135: case NNE: horse_direction = SSE; break;
00127$:
	ld	hl, #_horse_direction
	ld	(hl), #0x0a
	jr	00131$
	C$StateGame.c$136$3_0$214	= .
	.globl	C$StateGame.c$136$3_0$214
;StateGame.c:136: case NNN: horse_direction = SSS; break;
00128$:
	ld	hl, #_horse_direction
	ld	(hl), #0x09
	C$StateGame.c$137$1_0$204	= .
	.globl	C$StateGame.c$137$1_0$204
;StateGame.c:137: }
00131$:
	C$StateGame.c$139$1_0$204	= .
	.globl	C$StateGame.c$139$1_0$204
;StateGame.c:139: if(sin < 0 && cos < 0){//THIS->mirror = HV_MIRROR;
	ld	a, c
	or	a, a
	jr	Z, 00139$
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00139$
	C$StateGame.c$140$2_0$215	= .
	.globl	C$StateGame.c$140$2_0$215
;StateGame.c:140: switch(horse_direction){
	ld	a, (#_horse_direction)
	or	a, a
	jr	Z, 00133$
	ld	a, (#_horse_direction)
	dec	a
	jr	Z, 00134$
	ld	a,(#_horse_direction)
	cp	a,#0x02
	jr	Z, 00135$
	sub	a, #0x03
	jr	Z, 00136$
	jr	00139$
	C$StateGame.c$141$3_0$216	= .
	.globl	C$StateGame.c$141$3_0$216
;StateGame.c:141: case EEE: horse_direction = WWW; break;
00133$:
	ld	hl, #_horse_direction
	ld	(hl), #0x06
	jr	00139$
	C$StateGame.c$142$3_0$216	= .
	.globl	C$StateGame.c$142$3_0$216
;StateGame.c:142: case ENE: horse_direction = WSW; break;
00134$:
	ld	hl, #_horse_direction
	ld	(hl), #0x07
	jr	00139$
	C$StateGame.c$143$3_0$216	= .
	.globl	C$StateGame.c$143$3_0$216
;StateGame.c:143: case NNE: horse_direction = SSW; break;
00135$:
	ld	hl, #_horse_direction
	ld	(hl), #0x08
	jr	00139$
	C$StateGame.c$144$3_0$216	= .
	.globl	C$StateGame.c$144$3_0$216
;StateGame.c:144: case NNN: horse_direction = SSS; break;
00136$:
	ld	hl, #_horse_direction
	ld	(hl), #0x09
	C$StateGame.c$145$1_0$204	= .
	.globl	C$StateGame.c$145$1_0$204
;StateGame.c:145: }			
00139$:
	C$StateGame.c$147$1_0$204	= .
	.globl	C$StateGame.c$147$1_0$204
;StateGame.c:147: if(horse_direction_old != horse_direction){
	ld	a, (#_horse_direction_old)
	ld	hl, #_horse_direction
	sub	a, (hl)
	jp	Z,00156$
	C$StateGame.c$148$2_0$217	= .
	.globl	C$StateGame.c$148$2_0$217
;StateGame.c:148: horse_direction_old = horse_direction;
	ld	a, (#_horse_direction)
	ld	hl, #_horse_direction_old
	ld	(hl), a
	C$StateGame.c$149$2_0$217	= .
	.globl	C$StateGame.c$149$2_0$217
;StateGame.c:149: switch(horse_direction_old){
	ld	a, #0x0b
	sub	a, (hl)
	jp	C, 00156$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00364$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00364$:
	jp	00141$
	jp	00142$
	jp	00143$
	jp	00144$
	jp	00145$
	jp	00146$
	jp	00147$
	jp	00148$
	jp	00149$
	jp	00150$
	jp	00151$
	jp	00152$
	C$StateGame.c$150$3_0$218	= .
	.globl	C$StateGame.c$150$3_0$218
;StateGame.c:150: case EEE: UPDATE_HUD_TILE(1,2,63); break;
00141$:
	ld	de, #0x0000
	push	de
	ld	a, #0x3f
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$151$3_0$218	= .
	.globl	C$StateGame.c$151$3_0$218
;StateGame.c:151: case ENE: UPDATE_HUD_TILE(1,2,64); break;
00142$:
	ld	de, #0x0000
	push	de
	ld	a, #0x40
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$152$3_0$218	= .
	.globl	C$StateGame.c$152$3_0$218
;StateGame.c:152: case NNE: UPDATE_HUD_TILE(1,2,65); break;
00143$:
	ld	de, #0x0000
	push	de
	ld	a, #0x41
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$153$3_0$218	= .
	.globl	C$StateGame.c$153$3_0$218
;StateGame.c:153: case NNN: UPDATE_HUD_TILE(1,2,66); break;
00144$:
	ld	de, #0x0000
	push	de
	ld	a, #0x42
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$154$3_0$218	= .
	.globl	C$StateGame.c$154$3_0$218
;StateGame.c:154: case NNW: UPDATE_HUD_TILE(1,2,67); break;
00145$:
	ld	de, #0x0000
	push	de
	ld	a, #0x43
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$155$3_0$218	= .
	.globl	C$StateGame.c$155$3_0$218
;StateGame.c:155: case WNW: UPDATE_HUD_TILE(1,2,68); break;
00146$:
	ld	de, #0x0000
	push	de
	ld	a, #0x44
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$156$3_0$218	= .
	.globl	C$StateGame.c$156$3_0$218
;StateGame.c:156: case WWW: UPDATE_HUD_TILE(1,2,69); break;
00147$:
	ld	de, #0x0000
	push	de
	ld	a, #0x45
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jp	00156$
	C$StateGame.c$157$3_0$218	= .
	.globl	C$StateGame.c$157$3_0$218
;StateGame.c:157: case WSW: UPDATE_HUD_TILE(1,2,70); break;
00148$:
	ld	de, #0x0000
	push	de
	ld	a, #0x46
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jr	00156$
	C$StateGame.c$158$3_0$218	= .
	.globl	C$StateGame.c$158$3_0$218
;StateGame.c:158: case SSW: UPDATE_HUD_TILE(1,2,71); break;
00149$:
	ld	de, #0x0000
	push	de
	ld	a, #0x47
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jr	00156$
	C$StateGame.c$159$3_0$218	= .
	.globl	C$StateGame.c$159$3_0$218
;StateGame.c:159: case SSS: UPDATE_HUD_TILE(1,2,72); break;
00150$:
	ld	de, #0x0000
	push	de
	ld	a, #0x48
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jr	00156$
	C$StateGame.c$160$3_0$218	= .
	.globl	C$StateGame.c$160$3_0$218
;StateGame.c:160: case SSE: UPDATE_HUD_TILE(1,2,73); break;
00151$:
	ld	de, #0x0000
	push	de
	ld	a, #0x49
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	jr	00156$
	C$StateGame.c$161$3_0$218	= .
	.globl	C$StateGame.c$161$3_0$218
;StateGame.c:161: case ESE: UPDATE_HUD_TILE(1,2,74); break;
00152$:
	ld	de, #0x0000
	push	de
	ld	a, #0x4a
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	a,#0x01
	ld	e,a
	call	_UpdateMapTile
	C$StateGame.c$163$1_0$204	= .
	.globl	C$StateGame.c$163$1_0$204
;StateGame.c:163: }
00156$:
	C$StateGame.c$165$1_0$204	= .
	.globl	C$StateGame.c$165$1_0$204
;StateGame.c:165: }
	inc	sp
	C$StateGame.c$165$1_0$204	= .
	.globl	C$StateGame.c$165$1_0$204
	XG$update_compass$0$0	= .
	.globl	XG$update_compass$0$0
	ret
	G$update_turning$0$0	= .
	.globl	G$update_turning$0$0
	C$StateGame.c$167$1_0$219	= .
	.globl	C$StateGame.c$167$1_0$219
;StateGame.c:167: void update_turning() BANKED{
;	---------------------------------
; Function update_turning
; ---------------------------------
	b_update_turning	= 255
_update_turning::
	C$StateGame.c$168$1_0$219	= .
	.globl	C$StateGame.c$168$1_0$219
;StateGame.c:168: switch(turn_verse){
	ld	a, (#_turn_verse)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_turn_verse)
	dec	a
	jr	Z, 00102$
	ld	a, (#_turn_verse)
	sub	a, #0x02
	jr	Z, 00103$
	ret
	C$StateGame.c$169$2_0$220	= .
	.globl	C$StateGame.c$169$2_0$220
;StateGame.c:169: case NONE: UPDATE_HUD_TILE(3,2,1); UPDATE_HUD_TILE(3,3,1);break;	
00101$:
	ld	de, #0x0000
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	ld	de, #0x0000
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x03
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	ret
	C$StateGame.c$170$2_0$220	= .
	.globl	C$StateGame.c$170$2_0$220
;StateGame.c:170: case CLOCK: UPDATE_HUD_TILE(3,2,48); UPDATE_HUD_TILE(3,3,49);break;	
00102$:
	ld	de, #0x0000
	push	de
	ld	a, #0x30
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	ld	de, #0x0000
	push	de
	ld	a, #0x31
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x03
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	ret
	C$StateGame.c$171$2_0$220	= .
	.globl	C$StateGame.c$171$2_0$220
;StateGame.c:171: case COUNTERCLOCK: UPDATE_HUD_TILE(3,2,75); UPDATE_HUD_TILE(3,3,76);break;	
00103$:
	ld	de, #0x0000
	push	de
	ld	a, #0x4b
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	ld	de, #0x0000
	push	de
	ld	a, #0x4c
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x03
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$172$1_0$219	= .
	.globl	C$StateGame.c$172$1_0$219
;StateGame.c:172: }
	C$StateGame.c$173$1_0$219	= .
	.globl	C$StateGame.c$173$1_0$219
;StateGame.c:173: }
	C$StateGame.c$173$1_0$219	= .
	.globl	C$StateGame.c$173$1_0$219
	XG$update_turning$0$0	= .
	.globl	XG$update_turning$0$0
	ret
	G$update_hp$0$0	= .
	.globl	G$update_hp$0$0
	C$StateGame.c$175$1_0$221	= .
	.globl	C$StateGame.c$175$1_0$221
;StateGame.c:175: void update_hp() BANKED{
;	---------------------------------
; Function update_hp
; ---------------------------------
	b_update_hp	= 255
_update_hp::
	add	sp, #-3
	C$StateGame.c$176$1_0$221	= .
	.globl	C$StateGame.c$176$1_0$221
;StateGame.c:176: INT8 hp_intero = hp_current / 8;
	ld	a, (#_hp_current)
	ldhl	sp,	#0
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	pop	bc
	push	bc
	bit	7, (hl)
	jr	Z, 00110$
	pop	de
	push	de
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00110$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ldhl	sp,	#2
	ld	(hl), c
	C$StateGame.c$177$1_0$221	= .
	.globl	C$StateGame.c$177$1_0$221
;StateGame.c:177: INT8 hp_resto = hp_current % 8;
	ld	bc, #0x0008
	pop	de
	push	de
	call	__modsint
	C$StateGame.c$178$1_0$221	= .
	.globl	C$StateGame.c$178$1_0$221
;StateGame.c:178: INT8 idx_hp = 0;
	ld	b, #0x00
	C$StateGame.c$179$1_0$221	= .
	.globl	C$StateGame.c$179$1_0$221
;StateGame.c:179: if(hp_intero > 0){
	ldhl	sp,	#2
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00146$
	bit	7, d
	jr	NZ, 00147$
	cp	a, a
	jr	00147$
00146$:
	bit	7, d
	jr	Z, 00147$
	scf
00147$:
	jr	NC, 00105$
	C$StateGame.c$180$1_0$221	= .
	.globl	C$StateGame.c$180$1_0$221
;StateGame.c:180: while(idx_hp < hp_intero){
	ld	b, #0x00
00101$:
	ldhl	sp,	#2
	ld	e, (hl)
	ld	a,b
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00148$
	bit	7, d
	jr	NZ, 00149$
	cp	a, a
	jr	00149$
00148$:
	bit	7, d
	jr	Z, 00149$
	scf
00149$:
	jr	NC, 00115$
	C$StateGame.c$181$3_0$223	= .
	.globl	C$StateGame.c$181$3_0$223
;StateGame.c:181: UPDATE_HUD_TILE(7+idx_hp,2,52);
	ld	a, b
	add	a, #0x07
	ld	e, a
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	a, #0x34
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_hud_map_offset + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$182$3_0$223	= .
	.globl	C$StateGame.c$182$3_0$223
;StateGame.c:182: idx_hp++;
	inc	b
	jr	00101$
00115$:
00105$:
	C$StateGame.c$185$1_0$221	= .
	.globl	C$StateGame.c$185$1_0$221
;StateGame.c:185: if(hp_resto > 0){
	ld	e, c
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
	jr	Z, 00150$
	bit	7, d
	jr	NZ, 00151$
	cp	a, a
	jr	00151$
00150$:
	bit	7, d
	jr	Z, 00151$
	scf
00151$:
	jr	NC, 00108$
	C$StateGame.c$186$2_0$224	= .
	.globl	C$StateGame.c$186$2_0$224
;StateGame.c:186: UPDATE_HUD_TILE(7+idx_hp,2,60-hp_resto);
	ld	a, #0x3c
	sub	a, c
	ld	d, a
	ld	a, b
	add	a, #0x07
	ld	e, a
	ld	bc, #0x0000
	push	bc
	push	de
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
00108$:
	C$StateGame.c$188$1_0$221	= .
	.globl	C$StateGame.c$188$1_0$221
;StateGame.c:188: }
	add	sp, #3
	C$StateGame.c$188$1_0$221	= .
	.globl	C$StateGame.c$188$1_0$221
	XG$update_hp$0$0	= .
	.globl	XG$update_hp$0$0
	ret
	G$hud_compass_h_r$0$0	= .
	.globl	G$hud_compass_h_r$0$0
	C$StateGame.c$197$1_0$227	= .
	.globl	C$StateGame.c$197$1_0$227
;StateGame.c:197: void hud_compass_h_r() BANKED{
;	---------------------------------
; Function hud_compass_h_r
; ---------------------------------
	b_hud_compass_h_r	= 255
_hud_compass_h_r::
	C$StateGame.c$198$1_0$227	= .
	.globl	C$StateGame.c$198$1_0$227
;StateGame.c:198: set_banked_bkg_data(63u, 9u, &hudt, BANK(hudt));
	ld	b, #<(___bank_hudt)
	push	bc
	inc	sp
	ld	de, #_hudt
	push	de
	ld	e, #0x09
	ld	a, #0x3f
	call	_set_banked_bkg_data
	C$StateGame.c$199$1_0$227	= .
	.globl	C$StateGame.c$199$1_0$227
;StateGame.c:199: }
	C$StateGame.c$199$1_0$227	= .
	.globl	C$StateGame.c$199$1_0$227
	XG$hud_compass_h_r$0$0	= .
	.globl	XG$hud_compass_h_r$0$0
	ret
	G$hud_compass_r_u_33$0$0	= .
	.globl	G$hud_compass_r_u_33$0$0
	C$StateGame.c$200$1_0$229	= .
	.globl	C$StateGame.c$200$1_0$229
;StateGame.c:200: void hud_compass_r_u_33() BANKED{
;	---------------------------------
; Function hud_compass_r_u_33
; ---------------------------------
	b_hud_compass_r_u_33	= 255
_hud_compass_r_u_33::
	C$StateGame.c$202$1_0$229	= .
	.globl	C$StateGame.c$202$1_0$229
;StateGame.c:202: }
	C$StateGame.c$202$1_0$229	= .
	.globl	C$StateGame.c$202$1_0$229
	XG$hud_compass_r_u_33$0$0	= .
	.globl	XG$hud_compass_r_u_33$0$0
	ret
	G$Update_StateGame$0$0	= .
	.globl	G$Update_StateGame$0$0
	C$StateGame.c$204$1_0$230	= .
	.globl	C$StateGame.c$204$1_0$230
;StateGame.c:204: void UPDATE() {
;	---------------------------------
; Function Update_StateGame
; ---------------------------------
_Update_StateGame::
	C$StateGame.c$206$1_0$230	= .
	.globl	C$StateGame.c$206$1_0$230
;StateGame.c:206: print_target = PRINT_WIN;
	ld	hl, #_print_target
	ld	(hl), #0x01
	C$StateGame.c$208$1_0$230	= .
	.globl	C$StateGame.c$208$1_0$230
;StateGame.c:208: update_stamina();
	ld	e, #b_update_stamina
	ld	hl, #_update_stamina
	call	___sdcc_bcall_ehl
	C$StateGame.c$210$1_0$230	= .
	.globl	C$StateGame.c$210$1_0$230
;StateGame.c:210: update_compass();
	ld	e, #b_update_compass
	ld	hl, #_update_compass
	call	___sdcc_bcall_ehl
	C$StateGame.c$212$1_0$230	= .
	.globl	C$StateGame.c$212$1_0$230
;StateGame.c:212: update_turning();
	ld	e, #b_update_turning
	ld	hl, #_update_turning
	call	___sdcc_bcall_ehl
	C$StateGame.c$214$1_0$230	= .
	.globl	C$StateGame.c$214$1_0$230
;StateGame.c:214: update_hp();
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	C$StateGame.c$216$1_0$230	= .
	.globl	C$StateGame.c$216$1_0$230
;StateGame.c:216: if(euphoria_min_current != euphoria_min || euphoria_max_current != euphoria_max){
	ld	a, (#_euphoria_min_current)
	ld	hl, #_euphoria_min
	sub	a, (hl)
	jr	NZ, 00101$
	ld	a, (#_euphoria_min_current + 1)
	ld	hl, #_euphoria_min + 1
	sub	a, (hl)
	jr	NZ, 00101$
	ld	a, (#_euphoria_max_current)
	ld	hl, #_euphoria_max
	sub	a, (hl)
	jr	NZ, 00115$
	ld	a, (#_euphoria_max_current + 1)
	ld	hl, #_euphoria_max + 1
	sub	a, (hl)
	ret	Z
00115$:
00101$:
	C$StateGame.c$217$2_0$231	= .
	.globl	C$StateGame.c$217$2_0$231
;StateGame.c:217: update_euphoria();
	ld	e, #b_update_euphoria
	ld	hl, #_update_euphoria
	C$StateGame.c$229$1_0$230	= .
	.globl	C$StateGame.c$229$1_0$230
;StateGame.c:229: }
	C$StateGame.c$229$1_0$230	= .
	.globl	C$StateGame.c$229$1_0$230
	XG$Update_StateGame$0$0	= .
	.globl	XG$Update_StateGame$0$0
	jp  ___sdcc_bcall_ehl
	.area _CODE_255
	.area _INITIALIZER
FStateGame$__xinit_s_horse$0_0$0 == .
__xinit__s_horse:
	.dw #0x0000
FStateGame$__xinit_s_biga$0_0$0 == .
__xinit__s_biga:
	.dw #0x0000
FStateGame$__xinit_s_compass$0_0$0 == .
__xinit__s_compass:
	.dw #0x0000
FStateGame$__xinit_euphoria_min_current$0_0$0 == .
__xinit__euphoria_min_current:
	.dw #0x0000
FStateGame$__xinit_euphoria_max_current$0_0$0 == .
__xinit__euphoria_max_current:
	.dw #0x0000
FStateGame$__xinit_horse_direction$0_0$0 == .
__xinit__horse_direction:
	.db #0x00	; 0
FStateGame$__xinit_horse_direction_old$0_0$0 == .
__xinit__horse_direction_old:
	.db #0x00	; 0
FStateGame$__xinit_hp_current$0_0$0 == .
__xinit__hp_current:
	.db #0x10	;  16
	.area _CABS (ABS)
