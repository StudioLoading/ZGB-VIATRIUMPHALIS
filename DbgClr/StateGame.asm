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
	.globl _weapon_def
	.globl _weapon_atk
	.globl _time_factor
	.globl _time_current
	.globl _hud_turn_cooldown
	.globl _hp_current
	.globl _horse_direction_old
	.globl _horse_direction
	.globl _euphoria_max_current
	.globl _euphoria_min_current
	.globl _s_weapon
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
	.globl b_update_hp_max
	.globl _update_hp_max
	.globl b_update_hp
	.globl _update_hp
	.globl b_update_time
	.globl _update_time
	.globl b_update_weapon
	.globl _update_weapon
	.globl b_use_weapon
	.globl _use_weapon
	.globl b_update_time_max
	.globl _update_time_max
	.globl b_consume_weapon_atk
	.globl _consume_weapon_atk
	.globl b_consume_weapon_def
	.globl _consume_weapon_def
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
G$s_weapon$0_0$0==.
_s_weapon::
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
G$hud_turn_cooldown$0_0$0==.
_hud_turn_cooldown::
	.ds 1
G$time_current$0_0$0==.
_time_current::
	.ds 2
G$time_factor$0_0$0==.
_time_factor::
	.ds 2
G$weapon_atk$0_0$0==.
_weapon_atk::
	.ds 1
G$weapon_def$0_0$0==.
_weapon_def::
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
	C$StateGame.c$350$1_0$251	= .
	.globl	C$StateGame.c$350$1_0$251
;StateGame.c:350: void set_banked_bkg_data(UINT8 first_tile, UINT8 nb_tiles, struct TilesInfo* t, UINT8 bank) NONBANKED {
;	---------------------------------
; Function set_banked_bkg_data
; ---------------------------------
_set_banked_bkg_data::
	dec	sp
	dec	sp
	ld	c, a
	ldhl	sp,	#1
	ld	(hl), e
	C$StateGame.c$351$2_0$251	= .
	.globl	C$StateGame.c$351$2_0$251
;StateGame.c:351: uint8_t save = _current_bank;
	dec	hl
	ldh	a, (__current_bank + 0)
	ld	(hl), a
	C$StateGame.c$352$1_0$251	= .
	.globl	C$StateGame.c$352$1_0$251
;StateGame.c:352: SWITCH_ROM(bank);
	ldhl	sp,	#6
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	(#_rROMB0),a
	C$StateGame.c$353$1_0$251	= .
	.globl	C$StateGame.c$353$1_0$251
;StateGame.c:353: set_bkg_data(first_tile, nb_tiles, t->data+((16u) * first_tile));
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
	C$StateGame.c$354$1_0$251	= .
	.globl	C$StateGame.c$354$1_0$251
;StateGame.c:354: SWITCH_ROM(save);
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	a, (hl)
	ld	(#_rROMB0),a
	C$StateGame.c$355$1_0$251	= .
	.globl	C$StateGame.c$355$1_0$251
;StateGame.c:355: }
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
	C$StateGame.c$66$0_0$193	= .
	.globl	C$StateGame.c$66$0_0$193
;StateGame.c:66: void START() {
;	---------------------------------
; Function Start_StateGame
; ---------------------------------
_Start_StateGame::
	add	sp, #-4
	C$StateGame.c$69$1_0$193	= .
	.globl	C$StateGame.c$69$1_0$193
;StateGame.c:69: scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
	ld	de, #0x0048
	push	de
	ld	de, #0x0040
	ld	a, #0x06
	call	_SpriteManagerAdd
	ld	hl, #_scroll_target
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$70$1_0$193	= .
	.globl	C$StateGame.c$70$1_0$193
;StateGame.c:70: s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
	ld	de, #0x0061
	push	de
	ld	de, #0x0024
	ld	a, #0x03
	call	_SpriteManagerAdd
	ld	hl, #_s_biga
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$71$1_0$193	= .
	.globl	C$StateGame.c$71$1_0$193
;StateGame.c:71: s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
	ld	de, #0x0058
	push	de
	ld	de, #0x0038
	ld	a, #0x01
	call	_SpriteManagerAdd
	ld	hl, #_s_horse
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$72$1_0$193	= .
	.globl	C$StateGame.c$72$1_0$193
;StateGame.c:72: s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
	ld	de, #0x0058
	push	de
	ld	de, #0x0038
	ld	a, #0x04
	call	_SpriteManagerAdd
	ld	hl, #_s_compass
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateGame.c$76$1_2$193	= .
	.globl	C$StateGame.c$76$1_2$193
;StateGame.c:76: Sprite* s_heart = SpriteManagerAdd(SpriteItem, s_horse->x + 32u, s_horse->y + 8u);
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
	ld	hl, #0x0020
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x08
	call	_SpriteManagerAdd
	C$StateGame.c$77$1_1$194	= .
	.globl	C$StateGame.c$77$1_1$194
;StateGame.c:77: struct ItemData* heart_data = (struct ItemData*) s_heart->custom_data;
	ld	hl, #0x001b
	add	hl, bc
	ld	c, l
	ld	b, h
	C$StateGame.c$78$1_1$194	= .
	.globl	C$StateGame.c$78$1_1$194
;StateGame.c:78: heart_data->itemtype = HP;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x09
	C$StateGame.c$79$1_1$194	= .
	.globl	C$StateGame.c$79$1_1$194
;StateGame.c:79: heart_data->configured = 1;
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	C$StateGame.c$76$1_2$193	= .
	.globl	C$StateGame.c$76$1_2$193
;StateGame.c:76: Sprite* s_heart = SpriteManagerAdd(SpriteItem, s_horse->x + 32u, s_horse->y + 8u);
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$StateGame.c$80$1_2$195	= .
	.globl	C$StateGame.c$80$1_2$195
;StateGame.c:80: Sprite* s_item = SpriteManagerAdd(SpriteItem, s_horse->x + 48u, s_horse->y + 8u);
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
	ld	a, #0x08
	call	_SpriteManagerAdd
	C$StateGame.c$81$1_2$195	= .
	.globl	C$StateGame.c$81$1_2$195
;StateGame.c:81: struct ItemData* item_data = (struct ItemData*) s_item->custom_data;
	ld	hl, #0x001b
	add	hl, bc
	ld	c, l
	ld	b, h
	C$StateGame.c$82$1_2$195	= .
	.globl	C$StateGame.c$82$1_2$195
;StateGame.c:82: item_data->itemtype = GLADIO;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x03
	C$StateGame.c$83$1_2$195	= .
	.globl	C$StateGame.c$83$1_2$195
;StateGame.c:83: item_data->configured = 1;
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	C$StateGame.c$84$1_2$195	= .
	.globl	C$StateGame.c$84$1_2$195
;StateGame.c:84: scroll_bottom_movement_limit= 40;
	ld	hl, #_scroll_bottom_movement_limit
	ld	(hl), #0x28
	C$StateGame.c$85$1_2$195	= .
	.globl	C$StateGame.c$85$1_2$195
;StateGame.c:85: InitScroll(BANK(maprome00), &maprome00, coll_tiles, coll_surface);
	ld	de, #_maprome00+0
	ld	c, #<(___bank_maprome00)
	ld	hl, #_coll_surface
	push	hl
	ld	hl, #_coll_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateGame.c$88$1_2$195	= .
	.globl	C$StateGame.c$88$1_2$195
;StateGame.c:88: INIT_HUD(hudm);
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
	C$StateGame.c$89$1_2$195	= .
	.globl	C$StateGame.c$89$1_2$195
;StateGame.c:89: SetWindowY(104);//su suggerimento di toxa, perché INIT_HUD non fa sta chiamata che dice serve...
	ld	a, #0x68
	call	_SetWindowY
	C$StateGame.c$90$1_2$195	= .
	.globl	C$StateGame.c$90$1_2$195
;StateGame.c:90: euphoria_min_current = euphoria_min;
	ld	a, (#_euphoria_min)
	ld	(#_euphoria_min_current),a
	ld	a, (#_euphoria_min + 1)
	ld	(#_euphoria_min_current + 1),a
	C$StateGame.c$91$1_2$195	= .
	.globl	C$StateGame.c$91$1_2$195
;StateGame.c:91: euphoria_max_current = euphoria_max;
	ld	a, (#_euphoria_max)
	ld	(#_euphoria_max_current),a
	ld	a, (#_euphoria_max + 1)
	ld	(#_euphoria_max_current + 1),a
	C$StateGame.c$92$1_2$195	= .
	.globl	C$StateGame.c$92$1_2$195
;StateGame.c:92: update_euphoria();
	ld	e, #b_update_euphoria
	ld	hl, #_update_euphoria
	call	___sdcc_bcall_ehl
	C$StateGame.c$93$1_2$195	= .
	.globl	C$StateGame.c$93$1_2$195
;StateGame.c:93: hud_turn_cooldown = 0;
	ld	hl, #_hud_turn_cooldown
	ld	(hl), #0x00
	C$StateGame.c$94$1_2$193	= .
	.globl	C$StateGame.c$94$1_2$193
;StateGame.c:94: }
	add	sp, #4
	C$StateGame.c$94$1_2$193	= .
	.globl	C$StateGame.c$94$1_2$193
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
	C$StateGame.c$96$1_2$196	= .
	.globl	C$StateGame.c$96$1_2$196
;StateGame.c:96: void update_stamina() BANKED{
;	---------------------------------
; Function update_stamina
; ---------------------------------
	b_update_stamina	= 255
_update_stamina::
	add	sp, #-5
	C$StateGame.c$100$1_0$196	= .
	.globl	C$StateGame.c$100$1_0$196
;StateGame.c:100: INT16 stamina_hud = stamina_current/10;// (stamina_current * PIXEL_STAMINA)/stamina_max;
	ld	bc, #0x000a
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	C$StateGame.c$101$1_0$196	= .
	.globl	C$StateGame.c$101$1_0$196
;StateGame.c:101: UINT16 stamina_intero = stamina_hud >> 3;
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
	C$StateGame.c$102$1_0$196	= .
	.globl	C$StateGame.c$102$1_0$196
;StateGame.c:102: UINT16 stamina_resto = stamina_hud % 8;
	ld	bc, #0x0008
	call	__modsint
	ld	e, c
	ld	d, b
	C$StateGame.c$103$1_0$196	= .
	.globl	C$StateGame.c$103$1_0$196
;StateGame.c:103: INT16 idx = 0;
	ld	bc, #0x0000
	C$StateGame.c$104$1_0$196	= .
	.globl	C$StateGame.c$104$1_0$196
;StateGame.c:104: if(stamina_intero > 0){
	ldhl	sp,	#3
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00103$
	C$StateGame.c$105$1_0$196	= .
	.globl	C$StateGame.c$105$1_0$196
;StateGame.c:105: for(idx = 0; idx < stamina_intero; idx++){
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
	C$StateGame.c$106$4_0$199	= .
	.globl	C$StateGame.c$106$4_0$199
;StateGame.c:106: UPDATE_HUD_TILE(7+idx,0, 52);
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
	C$StateGame.c$105$3_0$198	= .
	.globl	C$StateGame.c$105$3_0$198
;StateGame.c:105: for(idx = 0; idx < stamina_intero; idx++){
	inc	bc
	jr	00110$
00120$:
00103$:
	C$StateGame.c$109$1_0$196	= .
	.globl	C$StateGame.c$109$1_0$196
;StateGame.c:109: if(stamina_resto > 0){
	ld	a, d
	or	a, e
	jr	Z, 00119$
	C$StateGame.c$110$2_0$200	= .
	.globl	C$StateGame.c$110$2_0$200
;StateGame.c:110: UPDATE_HUD_TILE(7+idx,0, 60 - stamina_resto);
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
	C$StateGame.c$111$2_0$200	= .
	.globl	C$StateGame.c$111$2_0$200
;StateGame.c:111: idx++;
	inc	bc
	C$StateGame.c$113$1_0$196	= .
	.globl	C$StateGame.c$113$1_0$196
;StateGame.c:113: while(idx < 12){
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
	C$StateGame.c$114$2_0$201	= .
	.globl	C$StateGame.c$114$2_0$201
;StateGame.c:114: UPDATE_HUD_TILE(7+idx,0, 60);
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
	C$StateGame.c$115$2_0$201	= .
	.globl	C$StateGame.c$115$2_0$201
;StateGame.c:115: idx++;
	inc	bc
	jr	00106$
00112$:
	C$StateGame.c$117$1_0$196	= .
	.globl	C$StateGame.c$117$1_0$196
;StateGame.c:117: }
	add	sp, #5
	C$StateGame.c$117$1_0$196	= .
	.globl	C$StateGame.c$117$1_0$196
	XG$update_stamina$0$0	= .
	.globl	XG$update_stamina$0$0
	ret
	G$update_euphoria$0$0	= .
	.globl	G$update_euphoria$0$0
	C$StateGame.c$119$1_0$202	= .
	.globl	C$StateGame.c$119$1_0$202
;StateGame.c:119: void update_euphoria() BANKED{
;	---------------------------------
; Function update_euphoria
; ---------------------------------
	b_update_euphoria	= 255
_update_euphoria::
	add	sp, #-8
	C$StateGame.c$121$1_0$202	= .
	.globl	C$StateGame.c$121$1_0$202
;StateGame.c:121: UPDATE_HUD_TILE(6,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$122$1_0$202	= .
	.globl	C$StateGame.c$122$1_0$202
;StateGame.c:122: UPDATE_HUD_TILE(7,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x07
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$123$1_0$202	= .
	.globl	C$StateGame.c$123$1_0$202
;StateGame.c:123: UPDATE_HUD_TILE(8,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x08
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$124$1_0$202	= .
	.globl	C$StateGame.c$124$1_0$202
;StateGame.c:124: UPDATE_HUD_TILE(9,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x09
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$125$1_0$202	= .
	.globl	C$StateGame.c$125$1_0$202
;StateGame.c:125: UPDATE_HUD_TILE(10,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0a
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$126$1_0$202	= .
	.globl	C$StateGame.c$126$1_0$202
;StateGame.c:126: UPDATE_HUD_TILE(11,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0b
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$127$1_0$202	= .
	.globl	C$StateGame.c$127$1_0$202
;StateGame.c:127: UPDATE_HUD_TILE(12,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0c
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$128$1_0$202	= .
	.globl	C$StateGame.c$128$1_0$202
;StateGame.c:128: UPDATE_HUD_TILE(13,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$129$1_0$202	= .
	.globl	C$StateGame.c$129$1_0$202
;StateGame.c:129: UPDATE_HUD_TILE(14,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$130$1_0$202	= .
	.globl	C$StateGame.c$130$1_0$202
;StateGame.c:130: UPDATE_HUD_TILE(15,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x0f
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$131$1_0$202	= .
	.globl	C$StateGame.c$131$1_0$202
;StateGame.c:131: UPDATE_HUD_TILE(16,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x10
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$132$1_0$202	= .
	.globl	C$StateGame.c$132$1_0$202
;StateGame.c:132: UPDATE_HUD_TILE(17,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x11
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$133$1_0$202	= .
	.globl	C$StateGame.c$133$1_0$202
;StateGame.c:133: UPDATE_HUD_TILE(18,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x12
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$134$1_0$202	= .
	.globl	C$StateGame.c$134$1_0$202
;StateGame.c:134: UPDATE_HUD_TILE(19,1,1);
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
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #0x13
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$136$1_0$202	= .
	.globl	C$StateGame.c$136$1_0$202
;StateGame.c:136: euphoria_min_current = euphoria_min;
	ld	a, (#_euphoria_min)
	ld	(#_euphoria_min_current),a
	ld	a, (#_euphoria_min + 1)
	ld	(#_euphoria_min_current + 1),a
	C$StateGame.c$137$1_0$202	= .
	.globl	C$StateGame.c$137$1_0$202
;StateGame.c:137: euphoria_max_current = euphoria_max;
	ld	a, (#_euphoria_max)
	ld	(#_euphoria_max_current),a
	ld	a, (#_euphoria_max + 1)
	ld	(#_euphoria_max_current + 1),a
	C$StateGame.c$138$1_1$202	= .
	.globl	C$StateGame.c$138$1_1$202
;StateGame.c:138: UINT8 euphoria_init = euphoria_min_current / 10 / 8;
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
	C$StateGame.c$139$1_1$202	= .
	.globl	C$StateGame.c$139$1_1$202
;StateGame.c:139: UINT8 euphoria_final = euphoria_max_current / 10 / 8;
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
	C$StateGame.c$140$1_1$203	= .
	.globl	C$StateGame.c$140$1_1$203
;StateGame.c:140: UINT8 delta_euphoria = euphoria_final - euphoria_init;
	ld	a, (hl-)
	sub	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	C$StateGame.c$142$1_1$202	= .
	.globl	C$StateGame.c$142$1_1$202
;StateGame.c:142: while(idx_delta_euphoria <= (delta_euphoria-1)){
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
	C$StateGame.c$144$1_1$202	= .
	.globl	C$StateGame.c$144$1_1$202
;StateGame.c:144: UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 7+idx_delta_euphoria);
	ldhl	sp,	#7
	ld	c, (hl)
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0x07
	add	a, c
	ld	e, a
	C$StateGame.c$143$2_1$204	= .
	.globl	C$StateGame.c$143$2_1$204
;StateGame.c:143: if(idx_delta_euphoria < 3){
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, #0x03
	jr	NC, 00102$
	C$StateGame.c$144$3_1$205	= .
	.globl	C$StateGame.c$144$3_1$205
;StateGame.c:144: UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 7+idx_delta_euphoria);
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
	C$StateGame.c$145$3_1$206	= .
	.globl	C$StateGame.c$145$3_1$206
;StateGame.c:145: }else{ UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 1);}
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
	C$StateGame.c$146$2_1$204	= .
	.globl	C$StateGame.c$146$2_1$204
;StateGame.c:146: idx_delta_euphoria++;
	ldhl	sp,	#7
	inc	(hl)
	jr	00104$
00106$:
	C$StateGame.c$148$1_1$203	= .
	.globl	C$StateGame.c$148$1_1$203
;StateGame.c:148: UPDATE_HUD_TILE(7+euphoria_final,1, 10);
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
	C$StateGame.c$149$1_1$202	= .
	.globl	C$StateGame.c$149$1_1$202
;StateGame.c:149: }
	add	sp, #8
	C$StateGame.c$149$1_1$202	= .
	.globl	C$StateGame.c$149$1_1$202
	XG$update_euphoria$0$0	= .
	.globl	XG$update_euphoria$0$0
	ret
	G$update_compass$0$0	= .
	.globl	G$update_compass$0$0
	C$StateGame.c$151$1_1$207	= .
	.globl	C$StateGame.c$151$1_1$207
;StateGame.c:151: void update_compass() BANKED{
;	---------------------------------
; Function update_compass
; ---------------------------------
	b_update_compass	= 255
_update_compass::
	dec	sp
	C$StateGame.c$153$2_0$207	= .
	.globl	C$StateGame.c$153$2_0$207
;StateGame.c:153: INT8 using_sin = sin;
	ld	hl, #_sin
	ld	b, (hl)
	C$StateGame.c$154$1_0$207	= .
	.globl	C$StateGame.c$154$1_0$207
;StateGame.c:154: if(cos < 0) {using_cos = -cos;}
	ld	a, (#_cos)
	rlca
	and	a,#0x01
	ldhl	sp,	#0
	ld	(hl), a
	C$StateGame.c$155$1_0$207	= .
	.globl	C$StateGame.c$155$1_0$207
;StateGame.c:155: if(sin < 0) {using_sin = -sin;}
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
	C$StateGame.c$156$1_0$207	= .
	.globl	C$StateGame.c$156$1_0$207
;StateGame.c:156: if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
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
	C$StateGame.c$157$2_0$210	= .
	.globl	C$StateGame.c$157$2_0$210
;StateGame.c:157: horse_direction = EEE;
	ld	hl, #_horse_direction
	ld	(hl), #0x00
	jr	00117$
00116$:
	C$StateGame.c$158$1_0$207	= .
	.globl	C$StateGame.c$158$1_0$207
;StateGame.c:158: }else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
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
	C$StateGame.c$159$2_0$211	= .
	.globl	C$StateGame.c$159$2_0$211
;StateGame.c:159: horse_direction = ENE;
	ld	hl, #_horse_direction
	ld	(hl), #0x01
	jr	00117$
00112$:
	C$StateGame.c$160$1_0$207	= .
	.globl	C$StateGame.c$160$1_0$207
;StateGame.c:160: }else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
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
	C$StateGame.c$161$2_0$212	= .
	.globl	C$StateGame.c$161$2_0$212
;StateGame.c:161: horse_direction = NNE;
	ld	hl, #_horse_direction
	ld	(hl), #0x02
	jr	00117$
00108$:
	C$StateGame.c$162$1_0$207	= .
	.globl	C$StateGame.c$162$1_0$207
;StateGame.c:162: }else if(using_sin > 78){ // tratto come se stesse andando verticale su
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
	C$StateGame.c$163$2_0$213	= .
	.globl	C$StateGame.c$163$2_0$213
;StateGame.c:163: horse_direction = NNN;
	ld	hl, #_horse_direction
	ld	(hl), #0x03
00117$:
	C$StateGame.c$166$1_0$207	= .
	.globl	C$StateGame.c$166$1_0$207
;StateGame.c:166: if(sin > 0 && cos < 0){
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
	C$StateGame.c$167$2_0$214	= .
	.globl	C$StateGame.c$167$2_0$214
;StateGame.c:167: switch(horse_direction){//THIS->mirror = V_MIRROR;
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
	C$StateGame.c$168$3_0$215	= .
	.globl	C$StateGame.c$168$3_0$215
;StateGame.c:168: case EEE: horse_direction = WWW; break;
00119$:
	ld	hl, #_horse_direction
	ld	(hl), #0x06
	jr	00124$
	C$StateGame.c$169$3_0$215	= .
	.globl	C$StateGame.c$169$3_0$215
;StateGame.c:169: case ENE: horse_direction = WNW; break;
00120$:
	ld	hl, #_horse_direction
	ld	(hl), #0x05
	jr	00124$
	C$StateGame.c$170$3_0$215	= .
	.globl	C$StateGame.c$170$3_0$215
;StateGame.c:170: case NNE: horse_direction = NNW; break;
00121$:
	ld	hl, #_horse_direction
	ld	(hl), #0x04
	C$StateGame.c$171$1_0$207	= .
	.globl	C$StateGame.c$171$1_0$207
;StateGame.c:171: }			
00124$:
	C$StateGame.c$173$1_0$207	= .
	.globl	C$StateGame.c$173$1_0$207
;StateGame.c:173: if(sin < 0 && cos > 0){//THIS->mirror = H_MIRROR;
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
	C$StateGame.c$174$2_0$216	= .
	.globl	C$StateGame.c$174$2_0$216
;StateGame.c:174: switch(horse_direction){
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
	C$StateGame.c$175$3_0$217	= .
	.globl	C$StateGame.c$175$3_0$217
;StateGame.c:175: case ENE: horse_direction = ESE; break;
00126$:
	ld	hl, #_horse_direction
	ld	(hl), #0x0b
	jr	00131$
	C$StateGame.c$176$3_0$217	= .
	.globl	C$StateGame.c$176$3_0$217
;StateGame.c:176: case NNE: horse_direction = SSE; break;
00127$:
	ld	hl, #_horse_direction
	ld	(hl), #0x0a
	jr	00131$
	C$StateGame.c$177$3_0$217	= .
	.globl	C$StateGame.c$177$3_0$217
;StateGame.c:177: case NNN: horse_direction = SSS; break;
00128$:
	ld	hl, #_horse_direction
	ld	(hl), #0x09
	C$StateGame.c$178$1_0$207	= .
	.globl	C$StateGame.c$178$1_0$207
;StateGame.c:178: }
00131$:
	C$StateGame.c$180$1_0$207	= .
	.globl	C$StateGame.c$180$1_0$207
;StateGame.c:180: if(sin < 0 && cos < 0){//THIS->mirror = HV_MIRROR;
	ld	a, c
	or	a, a
	jr	Z, 00139$
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00139$
	C$StateGame.c$181$2_0$218	= .
	.globl	C$StateGame.c$181$2_0$218
;StateGame.c:181: switch(horse_direction){
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
	C$StateGame.c$182$3_0$219	= .
	.globl	C$StateGame.c$182$3_0$219
;StateGame.c:182: case EEE: horse_direction = WWW; break;
00133$:
	ld	hl, #_horse_direction
	ld	(hl), #0x06
	jr	00139$
	C$StateGame.c$183$3_0$219	= .
	.globl	C$StateGame.c$183$3_0$219
;StateGame.c:183: case ENE: horse_direction = WSW; break;
00134$:
	ld	hl, #_horse_direction
	ld	(hl), #0x07
	jr	00139$
	C$StateGame.c$184$3_0$219	= .
	.globl	C$StateGame.c$184$3_0$219
;StateGame.c:184: case NNE: horse_direction = SSW; break;
00135$:
	ld	hl, #_horse_direction
	ld	(hl), #0x08
	jr	00139$
	C$StateGame.c$185$3_0$219	= .
	.globl	C$StateGame.c$185$3_0$219
;StateGame.c:185: case NNN: horse_direction = SSS; break;
00136$:
	ld	hl, #_horse_direction
	ld	(hl), #0x09
	C$StateGame.c$186$1_0$207	= .
	.globl	C$StateGame.c$186$1_0$207
;StateGame.c:186: }			
00139$:
	C$StateGame.c$188$1_0$207	= .
	.globl	C$StateGame.c$188$1_0$207
;StateGame.c:188: if(horse_direction_old != horse_direction){
	ld	a, (#_horse_direction_old)
	ld	hl, #_horse_direction
	sub	a, (hl)
	jp	Z,00156$
	C$StateGame.c$189$2_0$220	= .
	.globl	C$StateGame.c$189$2_0$220
;StateGame.c:189: horse_direction_old = horse_direction;
	ld	a, (#_horse_direction)
	ld	hl, #_horse_direction_old
	ld	(hl), a
	C$StateGame.c$190$2_0$220	= .
	.globl	C$StateGame.c$190$2_0$220
;StateGame.c:190: switch(horse_direction_old){
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
	C$StateGame.c$191$3_0$221	= .
	.globl	C$StateGame.c$191$3_0$221
;StateGame.c:191: case EEE: UPDATE_HUD_TILE(1,2,63); break;
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
	C$StateGame.c$192$3_0$221	= .
	.globl	C$StateGame.c$192$3_0$221
;StateGame.c:192: case ENE: UPDATE_HUD_TILE(1,2,64); break;
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
	C$StateGame.c$193$3_0$221	= .
	.globl	C$StateGame.c$193$3_0$221
;StateGame.c:193: case NNE: UPDATE_HUD_TILE(1,2,65); break;
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
	C$StateGame.c$194$3_0$221	= .
	.globl	C$StateGame.c$194$3_0$221
;StateGame.c:194: case NNN: UPDATE_HUD_TILE(1,2,66); break;
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
	C$StateGame.c$195$3_0$221	= .
	.globl	C$StateGame.c$195$3_0$221
;StateGame.c:195: case NNW: UPDATE_HUD_TILE(1,2,67); break;
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
	C$StateGame.c$196$3_0$221	= .
	.globl	C$StateGame.c$196$3_0$221
;StateGame.c:196: case WNW: UPDATE_HUD_TILE(1,2,68); break;
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
	C$StateGame.c$197$3_0$221	= .
	.globl	C$StateGame.c$197$3_0$221
;StateGame.c:197: case WWW: UPDATE_HUD_TILE(1,2,69); break;
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
	C$StateGame.c$198$3_0$221	= .
	.globl	C$StateGame.c$198$3_0$221
;StateGame.c:198: case WSW: UPDATE_HUD_TILE(1,2,70); break;
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
	C$StateGame.c$199$3_0$221	= .
	.globl	C$StateGame.c$199$3_0$221
;StateGame.c:199: case SSW: UPDATE_HUD_TILE(1,2,71); break;
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
	C$StateGame.c$200$3_0$221	= .
	.globl	C$StateGame.c$200$3_0$221
;StateGame.c:200: case SSS: UPDATE_HUD_TILE(1,2,72); break;
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
	C$StateGame.c$201$3_0$221	= .
	.globl	C$StateGame.c$201$3_0$221
;StateGame.c:201: case SSE: UPDATE_HUD_TILE(1,2,73); break;
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
	C$StateGame.c$202$3_0$221	= .
	.globl	C$StateGame.c$202$3_0$221
;StateGame.c:202: case ESE: UPDATE_HUD_TILE(1,2,74); break;
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
	C$StateGame.c$204$1_0$207	= .
	.globl	C$StateGame.c$204$1_0$207
;StateGame.c:204: }
00156$:
	C$StateGame.c$206$1_0$207	= .
	.globl	C$StateGame.c$206$1_0$207
;StateGame.c:206: }
	inc	sp
	C$StateGame.c$206$1_0$207	= .
	.globl	C$StateGame.c$206$1_0$207
	XG$update_compass$0$0	= .
	.globl	XG$update_compass$0$0
	ret
	G$update_turning$0$0	= .
	.globl	G$update_turning$0$0
	C$StateGame.c$208$1_0$222	= .
	.globl	C$StateGame.c$208$1_0$222
;StateGame.c:208: void update_turning() BANKED{
;	---------------------------------
; Function update_turning
; ---------------------------------
	b_update_turning	= 255
_update_turning::
	C$StateGame.c$209$1_0$222	= .
	.globl	C$StateGame.c$209$1_0$222
;StateGame.c:209: if(hud_turn_cooldown > 0){
	ld	hl, #_hud_turn_cooldown
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00138$
	bit	7, d
	jr	NZ, 00139$
	cp	a, a
	jr	00139$
00138$:
	bit	7, d
	jr	Z, 00139$
	scf
00139$:
	jr	NC, 00106$
	C$StateGame.c$210$2_0$223	= .
	.globl	C$StateGame.c$210$2_0$223
;StateGame.c:210: hud_turn_cooldown--;
	ld	hl, #_hud_turn_cooldown
	dec	(hl)
	ret
00106$:
	C$StateGame.c$212$2_0$224	= .
	.globl	C$StateGame.c$212$2_0$224
;StateGame.c:212: switch(turn_verse){
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
	C$StateGame.c$213$3_0$225	= .
	.globl	C$StateGame.c$213$3_0$225
;StateGame.c:213: case NONE: UPDATE_HUD_TILE(3,2,1); UPDATE_HUD_TILE(3,3,1);break;	
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
	C$StateGame.c$214$3_0$225	= .
	.globl	C$StateGame.c$214$3_0$225
;StateGame.c:214: case CLOCK: UPDATE_HUD_TILE(3,2,48); UPDATE_HUD_TILE(3,3,49);break;	
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
	C$StateGame.c$215$3_0$225	= .
	.globl	C$StateGame.c$215$3_0$225
;StateGame.c:215: case COUNTERCLOCK: UPDATE_HUD_TILE(3,2,75); UPDATE_HUD_TILE(3,3,76);break;	
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
	C$StateGame.c$216$1_0$222	= .
	.globl	C$StateGame.c$216$1_0$222
;StateGame.c:216: }
	C$StateGame.c$218$1_0$222	= .
	.globl	C$StateGame.c$218$1_0$222
;StateGame.c:218: }
	C$StateGame.c$218$1_0$222	= .
	.globl	C$StateGame.c$218$1_0$222
	XG$update_turning$0$0	= .
	.globl	XG$update_turning$0$0
	ret
	G$update_hp_max$0$0	= .
	.globl	G$update_hp_max$0$0
	C$StateGame.c$220$1_0$226	= .
	.globl	C$StateGame.c$220$1_0$226
;StateGame.c:220: void update_hp_max() BANKED{
;	---------------------------------
; Function update_hp_max
; ---------------------------------
	b_update_hp_max	= 255
_update_hp_max::
	C$StateGame.c$221$1_0$226	= .
	.globl	C$StateGame.c$221$1_0$226
;StateGame.c:221: hp_current = 16;
	ld	hl, #_hp_current
	ld	(hl), #0x10
	C$StateGame.c$222$1_0$226	= .
	.globl	C$StateGame.c$222$1_0$226
;StateGame.c:222: update_hp();
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	C$StateGame.c$223$1_0$226	= .
	.globl	C$StateGame.c$223$1_0$226
;StateGame.c:223: }
	C$StateGame.c$223$1_0$226	= .
	.globl	C$StateGame.c$223$1_0$226
	XG$update_hp_max$0$0	= .
	.globl	XG$update_hp_max$0$0
	jp  ___sdcc_bcall_ehl
	G$update_hp$0$0	= .
	.globl	G$update_hp$0$0
	C$StateGame.c$225$1_0$227	= .
	.globl	C$StateGame.c$225$1_0$227
;StateGame.c:225: void update_hp() BANKED{
;	---------------------------------
; Function update_hp
; ---------------------------------
	b_update_hp	= 255
_update_hp::
	add	sp, #-3
	C$StateGame.c$226$1_0$227	= .
	.globl	C$StateGame.c$226$1_0$227
;StateGame.c:226: INT8 hp_intero = hp_current / 8;
	ld	a, (#_hp_current)
	ldhl	sp,	#0
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	pop	bc
	push	bc
	bit	7, (hl)
	jr	Z, 00113$
	pop	de
	push	de
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00113$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ldhl	sp,	#2
	ld	(hl), c
	C$StateGame.c$227$1_0$227	= .
	.globl	C$StateGame.c$227$1_0$227
;StateGame.c:227: INT8 hp_resto = hp_current % 8;
	ld	bc, #0x0008
	pop	de
	push	de
	call	__modsint
	C$StateGame.c$228$1_0$227	= .
	.globl	C$StateGame.c$228$1_0$227
;StateGame.c:228: INT8 idx_hp = 0;
	ld	b, #0x00
	C$StateGame.c$229$1_0$227	= .
	.globl	C$StateGame.c$229$1_0$227
;StateGame.c:229: if(hp_intero > 0){
	ldhl	sp,	#2
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00164$
	bit	7, d
	jr	NZ, 00165$
	cp	a, a
	jr	00165$
00164$:
	bit	7, d
	jr	Z, 00165$
	scf
00165$:
	jr	NC, 00105$
	C$StateGame.c$230$1_0$227	= .
	.globl	C$StateGame.c$230$1_0$227
;StateGame.c:230: while(idx_hp < hp_intero){
	ld	b, #0x00
00101$:
	ldhl	sp,	#2
	ld	e, (hl)
	ld	a,b
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00166$
	bit	7, d
	jr	NZ, 00167$
	cp	a, a
	jr	00167$
00166$:
	bit	7, d
	jr	Z, 00167$
	scf
00167$:
	jr	NC, 00120$
	C$StateGame.c$231$3_0$229	= .
	.globl	C$StateGame.c$231$3_0$229
;StateGame.c:231: UPDATE_HUD_TILE(7+idx_hp,2,52);
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
	C$StateGame.c$232$3_0$229	= .
	.globl	C$StateGame.c$232$3_0$229
;StateGame.c:232: idx_hp++;
	inc	b
	jr	00101$
00120$:
00105$:
	C$StateGame.c$235$1_0$227	= .
	.globl	C$StateGame.c$235$1_0$227
;StateGame.c:235: if(hp_resto > 0){
	ld	e, c
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
	jr	Z, 00168$
	bit	7, d
	jr	NZ, 00169$
	cp	a, a
	jr	00169$
00168$:
	bit	7, d
	jr	Z, 00169$
	scf
00169$:
	jr	NC, 00119$
	C$StateGame.c$236$2_0$230	= .
	.globl	C$StateGame.c$236$2_0$230
;StateGame.c:236: UPDATE_HUD_TILE(7+idx_hp,2,60-hp_resto);
	ld	a, #0x3c
	sub	a, c
	ld	d, a
	ld	a, b
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
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$238$1_0$227	= .
	.globl	C$StateGame.c$238$1_0$227
;StateGame.c:238: while(idx_hp < 2){
00119$:
00108$:
	ld	a, b
	xor	a, #0x80
	sub	a, #0x82
	jr	NC, 00111$
	C$StateGame.c$239$2_0$231	= .
	.globl	C$StateGame.c$239$2_0$231
;StateGame.c:239: UPDATE_HUD_TILE(7+idx_hp,2, 60);
	ld	a, b
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
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$240$2_0$231	= .
	.globl	C$StateGame.c$240$2_0$231
;StateGame.c:240: idx_hp++;
	inc	b
	jr	00108$
00111$:
	C$StateGame.c$242$1_0$227	= .
	.globl	C$StateGame.c$242$1_0$227
;StateGame.c:242: }
	add	sp, #3
	C$StateGame.c$242$1_0$227	= .
	.globl	C$StateGame.c$242$1_0$227
	XG$update_hp$0$0	= .
	.globl	XG$update_hp$0$0
	ret
	G$update_time$0$0	= .
	.globl	G$update_time$0$0
	C$StateGame.c$244$1_0$232	= .
	.globl	C$StateGame.c$244$1_0$232
;StateGame.c:244: void update_time() BANKED{
;	---------------------------------
; Function update_time
; ---------------------------------
	b_update_time	= 255
_update_time::
	add	sp, #-4
	C$StateGame.c$245$1_0$232	= .
	.globl	C$StateGame.c$245$1_0$232
;StateGame.c:245: INT16 time_hud = time_current / time_factor;
	ld	hl, #_time_factor
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_time_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	C$StateGame.c$246$1_0$232	= .
	.globl	C$StateGame.c$246$1_0$232
;StateGame.c:246: INT16 time_intero = time_hud / 8;
	call	__divsint
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00114$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00114$:
	inc	sp
	inc	sp
	push	bc
	ldhl	sp,	#1
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
	C$StateGame.c$247$1_0$232	= .
	.globl	C$StateGame.c$247$1_0$232
;StateGame.c:247: INT8 time_resto = time_hud % 8;
	inc	hl
	inc	hl
	ld	bc, #0x0008
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__modsint
	C$StateGame.c$248$1_0$232	= .
	.globl	C$StateGame.c$248$1_0$232
;StateGame.c:248: INT8 idx_time = 0;
	ld	b, #0x00
	C$StateGame.c$249$1_0$232	= .
	.globl	C$StateGame.c$249$1_0$232
;StateGame.c:249: if(time_intero > 0){
	ldhl	sp,	#0
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00165$
	bit	7, d
	jr	NZ, 00166$
	cp	a, a
	jr	00166$
00165$:
	bit	7, d
	jr	Z, 00166$
	scf
00166$:
	jr	NC, 00105$
	C$StateGame.c$250$1_0$232	= .
	.globl	C$StateGame.c$250$1_0$232
;StateGame.c:250: while(idx_time < time_intero){
	ld	b, #0x00
00101$:
	ld	a, b
	ldhl	sp,	#2
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00167$
	bit	7, d
	jr	NZ, 00168$
	cp	a, a
	jr	00168$
00167$:
	bit	7, d
	jr	Z, 00168$
	scf
00168$:
	jr	NC, 00121$
	C$StateGame.c$251$3_0$234	= .
	.globl	C$StateGame.c$251$3_0$234
;StateGame.c:251: UPDATE_HUD_TILE(15+idx_time,2,52);
	ld	a, b
	add	a, #0x0f
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
	C$StateGame.c$252$3_0$234	= .
	.globl	C$StateGame.c$252$3_0$234
;StateGame.c:252: idx_time++;
	inc	b
	jr	00101$
00121$:
00105$:
	C$StateGame.c$255$1_0$232	= .
	.globl	C$StateGame.c$255$1_0$232
;StateGame.c:255: if(time_resto > 0){
	ld	e, c
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
	jr	Z, 00169$
	bit	7, d
	jr	NZ, 00170$
	cp	a, a
	jr	00170$
00169$:
	bit	7, d
	jr	Z, 00170$
	scf
00170$:
	jr	NC, 00120$
	C$StateGame.c$256$2_0$235	= .
	.globl	C$StateGame.c$256$2_0$235
;StateGame.c:256: UPDATE_HUD_TILE(15+idx_time,2,60-time_resto);
	ld	a, #0x3c
	sub	a, c
	ld	d, a
	ld	a, b
	add	a, #0x0f
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
	jr	00112$
	C$StateGame.c$258$1_0$232	= .
	.globl	C$StateGame.c$258$1_0$232
;StateGame.c:258: while(idx_time < 4){
00120$:
00106$:
	ld	a, b
	xor	a, #0x80
	sub	a, #0x84
	jr	NC, 00112$
	C$StateGame.c$259$3_0$237	= .
	.globl	C$StateGame.c$259$3_0$237
;StateGame.c:259: UPDATE_HUD_TILE(15+idx_time,2, 60);
	ld	a, b
	add	a, #0x0f
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
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, #0x01
	call	_UpdateMapTile
	pop	bc
	C$StateGame.c$260$3_0$237	= .
	.globl	C$StateGame.c$260$3_0$237
;StateGame.c:260: idx_time++;
	inc	b
	jr	00106$
00112$:
	C$StateGame.c$263$1_0$232	= .
	.globl	C$StateGame.c$263$1_0$232
;StateGame.c:263: }
	add	sp, #4
	C$StateGame.c$263$1_0$232	= .
	.globl	C$StateGame.c$263$1_0$232
	XG$update_time$0$0	= .
	.globl	XG$update_time$0$0
	ret
	G$update_weapon$0$0	= .
	.globl	G$update_weapon$0$0
	C$StateGame.c$265$1_0$238	= .
	.globl	C$StateGame.c$265$1_0$238
;StateGame.c:265: void update_weapon() BANKED{
;	---------------------------------
; Function update_weapon
; ---------------------------------
	b_update_weapon	= 255
_update_weapon::
	C$StateGame.c$266$1_0$238	= .
	.globl	C$StateGame.c$266$1_0$238
;StateGame.c:266: switch(weapon_atk){
	ld	a, (#_weapon_atk)
	or	a, a
	jr	Z, 00101$
	ld	a,(#_weapon_atk)
	cp	a,#0x03
	jr	Z, 00102$
	cp	a,#0x04
	jp	Z,00103$
	sub	a, #0x05
	jp	Z,00104$
	jp	00105$
	C$StateGame.c$267$2_0$239	= .
	.globl	C$StateGame.c$267$2_0$239
;StateGame.c:267: case NONE:
00101$:
	C$StateGame.c$268$2_0$239	= .
	.globl	C$StateGame.c$268$2_0$239
;StateGame.c:268: UPDATE_HUD_TILE(5,3,20);
	ld	de, #0x0000
	push	de
	ld	a, #0x14
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
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$269$2_0$239	= .
	.globl	C$StateGame.c$269$2_0$239
;StateGame.c:269: UPDATE_HUD_TILE(5,4,21);
	ld	de, #0x0000
	push	de
	ld	a, #0x15
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$270$2_0$239	= .
	.globl	C$StateGame.c$270$2_0$239
;StateGame.c:270: UPDATE_HUD_TILE(6,3,22);
	ld	de, #0x0000
	push	de
	ld	a, #0x16
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
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$271$2_0$239	= .
	.globl	C$StateGame.c$271$2_0$239
;StateGame.c:271: UPDATE_HUD_TILE(6,4,23);
	ld	de, #0x0000
	push	de
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$272$2_0$239	= .
	.globl	C$StateGame.c$272$2_0$239
;StateGame.c:272: break;
	jp	00105$
	C$StateGame.c$273$2_0$239	= .
	.globl	C$StateGame.c$273$2_0$239
;StateGame.c:273: case GLADIO:
00102$:
	C$StateGame.c$274$2_0$239	= .
	.globl	C$StateGame.c$274$2_0$239
;StateGame.c:274: UPDATE_HUD_TILE(5,3,28);
	ld	de, #0x0000
	push	de
	ld	a, #0x1c
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
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$275$2_0$239	= .
	.globl	C$StateGame.c$275$2_0$239
;StateGame.c:275: UPDATE_HUD_TILE(5,4,29);
	ld	de, #0x0000
	push	de
	ld	a, #0x1d
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$276$2_0$239	= .
	.globl	C$StateGame.c$276$2_0$239
;StateGame.c:276: UPDATE_HUD_TILE(6,3,30);
	ld	de, #0x0000
	push	de
	ld	a, #0x1e
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
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$277$2_0$239	= .
	.globl	C$StateGame.c$277$2_0$239
;StateGame.c:277: UPDATE_HUD_TILE(6,4,31);
	ld	de, #0x0000
	push	de
	ld	a, #0x1f
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$278$2_0$239	= .
	.globl	C$StateGame.c$278$2_0$239
;StateGame.c:278: break;
	jp	00105$
	C$StateGame.c$279$2_0$239	= .
	.globl	C$StateGame.c$279$2_0$239
;StateGame.c:279: case LANCE:
00103$:
	C$StateGame.c$280$2_0$239	= .
	.globl	C$StateGame.c$280$2_0$239
;StateGame.c:280: UPDATE_HUD_TILE(5,3,32);
	ld	de, #0x0000
	push	de
	ld	a, #0x20
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
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$281$2_0$239	= .
	.globl	C$StateGame.c$281$2_0$239
;StateGame.c:281: UPDATE_HUD_TILE(5,4,33);
	ld	de, #0x0000
	push	de
	ld	a, #0x21
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$282$2_0$239	= .
	.globl	C$StateGame.c$282$2_0$239
;StateGame.c:282: UPDATE_HUD_TILE(6,3,34);
	ld	de, #0x0000
	push	de
	ld	a, #0x22
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
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$283$2_0$239	= .
	.globl	C$StateGame.c$283$2_0$239
;StateGame.c:283: UPDATE_HUD_TILE(6,4,35);
	ld	de, #0x0000
	push	de
	ld	a, #0x23
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$284$2_0$239	= .
	.globl	C$StateGame.c$284$2_0$239
;StateGame.c:284: break;
	jr	00105$
	C$StateGame.c$285$2_0$239	= .
	.globl	C$StateGame.c$285$2_0$239
;StateGame.c:285: case FLAME:
00104$:
	C$StateGame.c$286$2_0$239	= .
	.globl	C$StateGame.c$286$2_0$239
;StateGame.c:286: UPDATE_HUD_TILE(5,3,36);
	ld	de, #0x0000
	push	de
	ld	a, #0x24
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
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$287$2_0$239	= .
	.globl	C$StateGame.c$287$2_0$239
;StateGame.c:287: UPDATE_HUD_TILE(5,4,37);
	ld	de, #0x0000
	push	de
	ld	a, #0x25
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x05
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$288$2_0$239	= .
	.globl	C$StateGame.c$288$2_0$239
;StateGame.c:288: UPDATE_HUD_TILE(6,3,38);
	ld	de, #0x0000
	push	de
	ld	a, #0x26
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
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$289$2_0$239	= .
	.globl	C$StateGame.c$289$2_0$239
;StateGame.c:289: UPDATE_HUD_TILE(6,4,39);
	ld	de, #0x0000
	push	de
	ld	a, #0x27
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$291$1_0$238	= .
	.globl	C$StateGame.c$291$1_0$238
;StateGame.c:291: }
00105$:
	C$StateGame.c$292$1_0$238	= .
	.globl	C$StateGame.c$292$1_0$238
;StateGame.c:292: switch(weapon_def){
	ld	a, (#_weapon_def)
	or	a, a
	jr	Z, 00106$
	ld	a,(#_weapon_def)
	cp	a,#0x06
	jr	Z, 00107$
	cp	a,#0x07
	jp	Z,00108$
	sub	a, #0x08
	jp	Z,00109$
	ret
	C$StateGame.c$293$2_0$240	= .
	.globl	C$StateGame.c$293$2_0$240
;StateGame.c:293: case NONE:
00106$:
	C$StateGame.c$294$2_0$240	= .
	.globl	C$StateGame.c$294$2_0$240
;StateGame.c:294: UPDATE_HUD_TILE(13,3,24);
	ld	de, #0x0000
	push	de
	ld	a, #0x18
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
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$295$2_0$240	= .
	.globl	C$StateGame.c$295$2_0$240
;StateGame.c:295: UPDATE_HUD_TILE(13,4,25);
	ld	de, #0x0000
	push	de
	ld	a, #0x19
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$296$2_0$240	= .
	.globl	C$StateGame.c$296$2_0$240
;StateGame.c:296: UPDATE_HUD_TILE(14,3,26);
	ld	de, #0x0000
	push	de
	ld	a, #0x1a
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
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$297$2_0$240	= .
	.globl	C$StateGame.c$297$2_0$240
;StateGame.c:297: UPDATE_HUD_TILE(14,4,27);
	ld	de, #0x0000
	push	de
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$298$2_0$240	= .
	.globl	C$StateGame.c$298$2_0$240
;StateGame.c:298: break;
	ret
	C$StateGame.c$299$2_0$240	= .
	.globl	C$StateGame.c$299$2_0$240
;StateGame.c:299: case ELMET:
00107$:
	C$StateGame.c$300$2_0$240	= .
	.globl	C$StateGame.c$300$2_0$240
;StateGame.c:300: UPDATE_HUD_TILE(13,3,40);
	ld	de, #0x0000
	push	de
	ld	a, #0x28
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
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$301$2_0$240	= .
	.globl	C$StateGame.c$301$2_0$240
;StateGame.c:301: UPDATE_HUD_TILE(13,4,41);
	ld	de, #0x0000
	push	de
	ld	a, #0x29
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$302$2_0$240	= .
	.globl	C$StateGame.c$302$2_0$240
;StateGame.c:302: UPDATE_HUD_TILE(14,3,42);
	ld	de, #0x0000
	push	de
	ld	a, #0x2a
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
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$303$2_0$240	= .
	.globl	C$StateGame.c$303$2_0$240
;StateGame.c:303: UPDATE_HUD_TILE(14,4,43);
	ld	de, #0x0000
	push	de
	ld	a, #0x2b
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$304$2_0$240	= .
	.globl	C$StateGame.c$304$2_0$240
;StateGame.c:304: break;
	ret
	C$StateGame.c$305$2_0$240	= .
	.globl	C$StateGame.c$305$2_0$240
;StateGame.c:305: case SHIELD:
00108$:
	C$StateGame.c$306$2_0$240	= .
	.globl	C$StateGame.c$306$2_0$240
;StateGame.c:306: UPDATE_HUD_TILE(13,3,44);
	ld	de, #0x0000
	push	de
	ld	a, #0x2c
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
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$307$2_0$240	= .
	.globl	C$StateGame.c$307$2_0$240
;StateGame.c:307: UPDATE_HUD_TILE(13,4,45);
	ld	de, #0x0000
	push	de
	ld	a, #0x2d
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$308$2_0$240	= .
	.globl	C$StateGame.c$308$2_0$240
;StateGame.c:308: UPDATE_HUD_TILE(14,3,46);
	ld	de, #0x0000
	push	de
	ld	a, #0x2e
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
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$309$2_0$240	= .
	.globl	C$StateGame.c$309$2_0$240
;StateGame.c:309: UPDATE_HUD_TILE(14,4,47);
	ld	de, #0x0000
	push	de
	ld	a, #0x2f
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$310$2_0$240	= .
	.globl	C$StateGame.c$310$2_0$240
;StateGame.c:310: break;
	ret
	C$StateGame.c$311$2_0$240	= .
	.globl	C$StateGame.c$311$2_0$240
;StateGame.c:311: case CAPE:
00109$:
	C$StateGame.c$312$2_0$240	= .
	.globl	C$StateGame.c$312$2_0$240
;StateGame.c:312: UPDATE_HUD_TILE(13,3,78);
	ld	de, #0x0000
	push	de
	ld	a, #0x4e
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
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$313$2_0$240	= .
	.globl	C$StateGame.c$313$2_0$240
;StateGame.c:313: UPDATE_HUD_TILE(13,4,79);
	ld	de, #0x0000
	push	de
	ld	a, #0x4f
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0d
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$314$2_0$240	= .
	.globl	C$StateGame.c$314$2_0$240
;StateGame.c:314: UPDATE_HUD_TILE(14,3,80);
	ld	de, #0x0000
	push	de
	ld	a, #0x50
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
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$315$2_0$240	= .
	.globl	C$StateGame.c$315$2_0$240
;StateGame.c:315: UPDATE_HUD_TILE(14,4,81);
	ld	de, #0x0000
	push	de
	ld	a, #0x51
	push	af
	inc	sp
	ld	hl, #_hud_map_offset
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x04
	push	af
	inc	sp
	ld	e, #0x0e
	ld	a, #0x01
	call	_UpdateMapTile
	C$StateGame.c$317$1_0$238	= .
	.globl	C$StateGame.c$317$1_0$238
;StateGame.c:317: }
	C$StateGame.c$318$1_0$238	= .
	.globl	C$StateGame.c$318$1_0$238
;StateGame.c:318: }
	C$StateGame.c$318$1_0$238	= .
	.globl	C$StateGame.c$318$1_0$238
	XG$update_weapon$0$0	= .
	.globl	XG$update_weapon$0$0
	ret
	G$use_weapon$0$0	= .
	.globl	G$use_weapon$0$0
	C$StateGame.c$320$1_0$242	= .
	.globl	C$StateGame.c$320$1_0$242
;StateGame.c:320: void use_weapon(INT8 is_defence) BANKED{
;	---------------------------------
; Function use_weapon
; ---------------------------------
	b_use_weapon	= 255
_use_weapon::
	dec	sp
	dec	sp
	C$StateGame.c$322$1_0$242	= .
	.globl	C$StateGame.c$322$1_0$242
;StateGame.c:322: s_weapon = SpriteManagerAdd(SpriteItem, s_horse->x + 16, s_horse->y);
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x10
	add	hl, de
	ld	e, l
	ld	d, h
	C$StateGame.c$321$1_0$242	= .
	.globl	C$StateGame.c$321$1_0$242
;StateGame.c:321: if(is_defence){
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	C$StateGame.c$322$2_0$243	= .
	.globl	C$StateGame.c$322$2_0$243
;StateGame.c:322: s_weapon = SpriteManagerAdd(SpriteItem, s_horse->x + 16, s_horse->y);
	push	bc
	ld	a, #0x08
	call	_SpriteManagerAdd
	ld	hl, #_s_weapon
	ld	a, c
	ld	(hl+), a
	C$StateGame.c$323$2_1$244	= .
	.globl	C$StateGame.c$323$2_1$244
;StateGame.c:323: struct ItemData* weapon_data = (struct ItemData*) s_weapon->custom_data;
	ld	a, b
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x001b
	add	hl, bc
	ld	c, l
	ld	b, h
	C$StateGame.c$324$2_1$244	= .
	.globl	C$StateGame.c$324$2_1$244
;StateGame.c:324: weapon_data->itemtype = weapon_def;
	ld	hl, #0x0004
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_weapon_def)
	ld	(de), a
	C$StateGame.c$325$2_1$244	= .
	.globl	C$StateGame.c$325$2_1$244
;StateGame.c:325: weapon_data->configured = 3;
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x03
	ld	(bc), a
	C$StateGame.c$326$2_1$244	= .
	.globl	C$StateGame.c$326$2_1$244
;StateGame.c:326: consume_weapon_def();
	ld	e, #b_consume_weapon_def
	ld	hl, #_consume_weapon_def
	call	___sdcc_bcall_ehl
	jr	00104$
00102$:
	C$StateGame.c$328$2_0$245	= .
	.globl	C$StateGame.c$328$2_0$245
;StateGame.c:328: s_weapon = SpriteManagerAdd(SpriteItem, s_horse->x + 16, s_horse->y - 4);
	ld	a, c
	add	a, #0xfc
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	push	bc
	ld	a, #0x08
	call	_SpriteManagerAdd
	ld	hl, #_s_weapon
	ld	a, c
	ld	(hl+), a
	C$StateGame.c$329$2_1$246	= .
	.globl	C$StateGame.c$329$2_1$246
;StateGame.c:329: struct ItemData* weapon_data = (struct ItemData*) s_weapon->custom_data;
	ld	a, b
	ld	(hl-), a
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x1b
	ld	c, a
	jr	NC, 00113$
	inc	b
00113$:
	C$StateGame.c$330$2_1$246	= .
	.globl	C$StateGame.c$330$2_1$246
;StateGame.c:330: weapon_data->itemtype = weapon_atk;
	ld	hl, #0x0004
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (#_weapon_atk)
	ld	(de), a
	C$StateGame.c$331$2_1$246	= .
	.globl	C$StateGame.c$331$2_1$246
;StateGame.c:331: weapon_data->configured = 3;
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x03
	ld	(bc), a
	C$StateGame.c$332$2_1$246	= .
	.globl	C$StateGame.c$332$2_1$246
;StateGame.c:332: consume_weapon_atk();
	ld	e, #b_consume_weapon_atk
	ld	hl, #_consume_weapon_atk
	call	___sdcc_bcall_ehl
00104$:
	C$StateGame.c$334$1_0$242	= .
	.globl	C$StateGame.c$334$1_0$242
;StateGame.c:334: }
	inc	sp
	inc	sp
	C$StateGame.c$334$1_0$242	= .
	.globl	C$StateGame.c$334$1_0$242
	XG$use_weapon$0$0	= .
	.globl	XG$use_weapon$0$0
	ret
	G$update_time_max$0$0	= .
	.globl	G$update_time_max$0$0
	C$StateGame.c$336$1_0$247	= .
	.globl	C$StateGame.c$336$1_0$247
;StateGame.c:336: void update_time_max() BANKED{
;	---------------------------------
; Function update_time_max
; ---------------------------------
	b_update_time_max	= 255
_update_time_max::
	C$StateGame.c$337$1_0$247	= .
	.globl	C$StateGame.c$337$1_0$247
;StateGame.c:337: time_current = TIME_MAX;
	ld	hl, #_time_current
	xor	a, a
	ld	(hl+), a
	ld	(hl), #0x1e
	C$StateGame.c$338$1_0$247	= .
	.globl	C$StateGame.c$338$1_0$247
;StateGame.c:338: }
	C$StateGame.c$338$1_0$247	= .
	.globl	C$StateGame.c$338$1_0$247
	XG$update_time_max$0$0	= .
	.globl	XG$update_time_max$0$0
	ret
	G$consume_weapon_atk$0$0	= .
	.globl	G$consume_weapon_atk$0$0
	C$StateGame.c$340$1_0$248	= .
	.globl	C$StateGame.c$340$1_0$248
;StateGame.c:340: void consume_weapon_atk() BANKED{
;	---------------------------------
; Function consume_weapon_atk
; ---------------------------------
	b_consume_weapon_atk	= 255
_consume_weapon_atk::
	C$StateGame.c$341$1_0$248	= .
	.globl	C$StateGame.c$341$1_0$248
;StateGame.c:341: weapon_atk = NONE;
	ld	hl, #_weapon_atk
	ld	(hl), #0x00
	C$StateGame.c$342$1_0$248	= .
	.globl	C$StateGame.c$342$1_0$248
;StateGame.c:342: update_weapon();
	ld	e, #b_update_weapon
	ld	hl, #_update_weapon
	C$StateGame.c$343$1_0$248	= .
	.globl	C$StateGame.c$343$1_0$248
;StateGame.c:343: }
	C$StateGame.c$343$1_0$248	= .
	.globl	C$StateGame.c$343$1_0$248
	XG$consume_weapon_atk$0$0	= .
	.globl	XG$consume_weapon_atk$0$0
	jp  ___sdcc_bcall_ehl
	G$consume_weapon_def$0$0	= .
	.globl	G$consume_weapon_def$0$0
	C$StateGame.c$345$1_0$249	= .
	.globl	C$StateGame.c$345$1_0$249
;StateGame.c:345: void consume_weapon_def() BANKED{
;	---------------------------------
; Function consume_weapon_def
; ---------------------------------
	b_consume_weapon_def	= 255
_consume_weapon_def::
	C$StateGame.c$346$1_0$249	= .
	.globl	C$StateGame.c$346$1_0$249
;StateGame.c:346: weapon_def = NONE;
	ld	hl, #_weapon_def
	ld	(hl), #0x00
	C$StateGame.c$347$1_0$249	= .
	.globl	C$StateGame.c$347$1_0$249
;StateGame.c:347: update_weapon();
	ld	e, #b_update_weapon
	ld	hl, #_update_weapon
	C$StateGame.c$348$1_0$249	= .
	.globl	C$StateGame.c$348$1_0$249
;StateGame.c:348: }
	C$StateGame.c$348$1_0$249	= .
	.globl	C$StateGame.c$348$1_0$249
	XG$consume_weapon_def$0$0	= .
	.globl	XG$consume_weapon_def$0$0
	jp  ___sdcc_bcall_ehl
	G$hud_compass_h_r$0$0	= .
	.globl	G$hud_compass_h_r$0$0
	C$StateGame.c$357$1_0$252	= .
	.globl	C$StateGame.c$357$1_0$252
;StateGame.c:357: void hud_compass_h_r() BANKED{
;	---------------------------------
; Function hud_compass_h_r
; ---------------------------------
	b_hud_compass_h_r	= 255
_hud_compass_h_r::
	C$StateGame.c$358$1_0$252	= .
	.globl	C$StateGame.c$358$1_0$252
;StateGame.c:358: set_banked_bkg_data(63u, 9u, &hudt, BANK(hudt));
	ld	b, #<(___bank_hudt)
	push	bc
	inc	sp
	ld	de, #_hudt
	push	de
	ld	e, #0x09
	ld	a, #0x3f
	call	_set_banked_bkg_data
	C$StateGame.c$359$1_0$252	= .
	.globl	C$StateGame.c$359$1_0$252
;StateGame.c:359: }
	C$StateGame.c$359$1_0$252	= .
	.globl	C$StateGame.c$359$1_0$252
	XG$hud_compass_h_r$0$0	= .
	.globl	XG$hud_compass_h_r$0$0
	ret
	G$hud_compass_r_u_33$0$0	= .
	.globl	G$hud_compass_r_u_33$0$0
	C$StateGame.c$360$1_0$254	= .
	.globl	C$StateGame.c$360$1_0$254
;StateGame.c:360: void hud_compass_r_u_33() BANKED{
;	---------------------------------
; Function hud_compass_r_u_33
; ---------------------------------
	b_hud_compass_r_u_33	= 255
_hud_compass_r_u_33::
	C$StateGame.c$362$1_0$254	= .
	.globl	C$StateGame.c$362$1_0$254
;StateGame.c:362: }
	C$StateGame.c$362$1_0$254	= .
	.globl	C$StateGame.c$362$1_0$254
	XG$hud_compass_r_u_33$0$0	= .
	.globl	XG$hud_compass_r_u_33$0$0
	ret
	G$Update_StateGame$0$0	= .
	.globl	G$Update_StateGame$0$0
	C$StateGame.c$364$1_0$255	= .
	.globl	C$StateGame.c$364$1_0$255
;StateGame.c:364: void UPDATE() {
;	---------------------------------
; Function Update_StateGame
; ---------------------------------
_Update_StateGame::
	C$StateGame.c$366$1_0$255	= .
	.globl	C$StateGame.c$366$1_0$255
;StateGame.c:366: print_target = PRINT_WIN;
	ld	hl, #_print_target
	ld	(hl), #0x01
	C$StateGame.c$368$1_0$255	= .
	.globl	C$StateGame.c$368$1_0$255
;StateGame.c:368: update_stamina();
	ld	e, #b_update_stamina
	ld	hl, #_update_stamina
	call	___sdcc_bcall_ehl
	C$StateGame.c$370$1_0$255	= .
	.globl	C$StateGame.c$370$1_0$255
;StateGame.c:370: update_compass();
	ld	e, #b_update_compass
	ld	hl, #_update_compass
	call	___sdcc_bcall_ehl
	C$StateGame.c$372$1_0$255	= .
	.globl	C$StateGame.c$372$1_0$255
;StateGame.c:372: update_turning();
	ld	e, #b_update_turning
	ld	hl, #_update_turning
	call	___sdcc_bcall_ehl
	C$StateGame.c$376$1_0$255	= .
	.globl	C$StateGame.c$376$1_0$255
;StateGame.c:376: if(euphoria_min_current != euphoria_min || euphoria_max_current != euphoria_max){
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
	jr	Z, 00102$
00115$:
00101$:
	C$StateGame.c$377$2_0$256	= .
	.globl	C$StateGame.c$377$2_0$256
;StateGame.c:377: update_euphoria();
	ld	e, #b_update_euphoria
	ld	hl, #_update_euphoria
	call	___sdcc_bcall_ehl
00102$:
	C$StateGame.c$380$1_0$255	= .
	.globl	C$StateGame.c$380$1_0$255
;StateGame.c:380: update_time();
	ld	e, #b_update_time
	ld	hl, #_update_time
	call	___sdcc_bcall_ehl
	C$StateGame.c$381$1_0$255	= .
	.globl	C$StateGame.c$381$1_0$255
;StateGame.c:381: time_current--;
	ld	hl, #_time_current
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$StateGame.c$392$1_0$255	= .
	.globl	C$StateGame.c$392$1_0$255
;StateGame.c:392: }
	C$StateGame.c$392$1_0$255	= .
	.globl	C$StateGame.c$392$1_0$255
	XG$Update_StateGame$0$0	= .
	.globl	XG$Update_StateGame$0$0
	ret
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
FStateGame$__xinit_s_weapon$0_0$0 == .
__xinit__s_weapon:
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
	.db #0x05	;  5
FStateGame$__xinit_hud_turn_cooldown$0_0$0 == .
__xinit__hud_turn_cooldown:
	.db #0x00	;  0
FStateGame$__xinit_time_current$0_0$0 == .
__xinit__time_current:
	.dw #0x1e00
FStateGame$__xinit_time_factor$0_0$0 == .
__xinit__time_factor:
	.dw #0x00f0
FStateGame$__xinit_weapon_atk$0_0$0 == .
__xinit__weapon_atk:
	.db #0x00	; 0
FStateGame$__xinit_weapon_def$0_0$0 == .
__xinit__weapon_def:
	.db #0x00	; 0
	.area _CABS (ABS)
