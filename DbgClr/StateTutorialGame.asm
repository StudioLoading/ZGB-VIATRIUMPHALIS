;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module StateTutorialGame
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Update_StateTutorialGame
	.globl _Start_StateTutorialGame
	.globl b_update_hp
	.globl _update_hp
	.globl b_update_time
	.globl _update_time
	.globl b_update_euphoria
	.globl _update_euphoria
	.globl b_update_turning
	.globl _update_turning
	.globl b_update_compass
	.globl _update_compass
	.globl b_update_stamina
	.globl _update_stamina
	.globl b_start_common
	.globl _start_common
	.globl _SpriteManagerAdd
	.globl _GetMapSize
	.globl _LoadMap
	.globl _InitScroll
	.globl _SetWindowY
	.globl _SetState
	.globl _is_crono
	.globl _tutorial_state
	.globl _coll_rome_surface
	.globl _coll_rome_tiles
	.globl ___bank_StateTutorialGame
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
G$tutorial_state$0_0$0==.
_tutorial_state::
	.ds 1
G$is_crono$0_0$0==.
_is_crono::
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
	G$Start_StateTutorialGame$0$0	= .
	.globl	G$Start_StateTutorialGame$0$0
	C$StateTutorialGame.c$72$0_0$193	= .
	.globl	C$StateTutorialGame.c$72$0_0$193
;StateTutorialGame.c:72: void START() {
;	---------------------------------
; Function Start_StateTutorialGame
; ---------------------------------
_Start_StateTutorialGame::
	add	sp, #-4
	C$StateTutorialGame.c$73$2_0$193	= .
	.globl	C$StateTutorialGame.c$73$2_0$193
;StateTutorialGame.c:73: UINT16 pos_horse_x = 0;
	ld	bc, #0x0000
	C$StateTutorialGame.c$74$2_0$193	= .
	.globl	C$StateTutorialGame.c$74$2_0$193
;StateTutorialGame.c:74: UINT16 pos_horse_y = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), a
	C$StateTutorialGame.c$75$1_0$193	= .
	.globl	C$StateTutorialGame.c$75$1_0$193
;StateTutorialGame.c:75: switch(tutorial_state){
	ld	a, #0x08
	ld	hl, #_tutorial_state
	sub	a, (hl)
	jp	C, 00110$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00137$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00137$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00109$
	jp	00109$
	C$StateTutorialGame.c$76$2_0$194	= .
	.globl	C$StateTutorialGame.c$76$2_0$194
;StateTutorialGame.c:76: case TUTORIAL_STAGE_0_STRAIGHT:
00101$:
	C$StateTutorialGame.c$77$2_0$194	= .
	.globl	C$StateTutorialGame.c$77$2_0$194
;StateTutorialGame.c:77: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$78$2_0$194	= .
	.globl	C$StateTutorialGame.c$78$2_0$194
;StateTutorialGame.c:78: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$79$2_0$194	= .
	.globl	C$StateTutorialGame.c$79$2_0$194
;StateTutorialGame.c:79: is_crono = 0;
	ld	hl, #_is_crono
	ld	(hl), #0x00
	C$StateTutorialGame.c$80$2_0$194	= .
	.globl	C$StateTutorialGame.c$80$2_0$194
;StateTutorialGame.c:80: break;
	jp	00110$
	C$StateTutorialGame.c$81$2_0$194	= .
	.globl	C$StateTutorialGame.c$81$2_0$194
;StateTutorialGame.c:81: case TUTORIAL_STAGE_1_STRAIGHTTIME:
00102$:
	C$StateTutorialGame.c$82$2_0$194	= .
	.globl	C$StateTutorialGame.c$82$2_0$194
;StateTutorialGame.c:82: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$83$2_0$194	= .
	.globl	C$StateTutorialGame.c$83$2_0$194
;StateTutorialGame.c:83: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$84$2_0$194	= .
	.globl	C$StateTutorialGame.c$84$2_0$194
;StateTutorialGame.c:84: is_crono = 1;
	ld	hl, #_is_crono
	ld	(hl), #0x01
	C$StateTutorialGame.c$85$2_0$194	= .
	.globl	C$StateTutorialGame.c$85$2_0$194
;StateTutorialGame.c:85: timemax_current = TIME_MAX_TUTORIAL1;
	ld	hl, #_timemax_current
	xor	a, a
	ld	(hl+), a
	ld	(hl), #0x0f
	C$StateTutorialGame.c$86$2_0$194	= .
	.globl	C$StateTutorialGame.c$86$2_0$194
;StateTutorialGame.c:86: time_factor = TIME_FACTOR_TUTORIAL1;
	ld	hl, #_time_factor
	ld	a, #0x78
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$87$2_0$194	= .
	.globl	C$StateTutorialGame.c$87$2_0$194
;StateTutorialGame.c:87: break;
	jp	00110$
	C$StateTutorialGame.c$88$2_0$194	= .
	.globl	C$StateTutorialGame.c$88$2_0$194
;StateTutorialGame.c:88: case TUTORIAL_STAGE_2_TURNRIGHT:
00103$:
	C$StateTutorialGame.c$89$2_0$194	= .
	.globl	C$StateTutorialGame.c$89$2_0$194
;StateTutorialGame.c:89: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$90$2_0$194	= .
	.globl	C$StateTutorialGame.c$90$2_0$194
;StateTutorialGame.c:90: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$91$2_0$194	= .
	.globl	C$StateTutorialGame.c$91$2_0$194
;StateTutorialGame.c:91: is_crono = 0;
	ld	hl, #_is_crono
	ld	(hl), #0x00
	C$StateTutorialGame.c$92$2_0$194	= .
	.globl	C$StateTutorialGame.c$92$2_0$194
;StateTutorialGame.c:92: break;
	jr	00110$
	C$StateTutorialGame.c$93$2_0$194	= .
	.globl	C$StateTutorialGame.c$93$2_0$194
;StateTutorialGame.c:93: case TUTORIAL_STAGE_3_TURNLEFT:
00104$:
	C$StateTutorialGame.c$94$2_0$194	= .
	.globl	C$StateTutorialGame.c$94$2_0$194
;StateTutorialGame.c:94: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$95$2_0$194	= .
	.globl	C$StateTutorialGame.c$95$2_0$194
;StateTutorialGame.c:95: pos_horse_y = 200;
	ldhl	sp,	#0
	ld	a, #0xc8
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$96$2_0$194	= .
	.globl	C$StateTutorialGame.c$96$2_0$194
;StateTutorialGame.c:96: is_crono = 0;
	ld	hl, #_is_crono
	ld	(hl), #0x00
	C$StateTutorialGame.c$97$2_0$194	= .
	.globl	C$StateTutorialGame.c$97$2_0$194
;StateTutorialGame.c:97: break;
	jr	00110$
	C$StateTutorialGame.c$98$2_0$194	= .
	.globl	C$StateTutorialGame.c$98$2_0$194
;StateTutorialGame.c:98: case TUTORIAL_STAGE_4_TURNRIGHTLEFT:
00105$:
	C$StateTutorialGame.c$99$2_0$194	= .
	.globl	C$StateTutorialGame.c$99$2_0$194
;StateTutorialGame.c:99: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$100$2_0$194	= .
	.globl	C$StateTutorialGame.c$100$2_0$194
;StateTutorialGame.c:100: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$101$2_0$194	= .
	.globl	C$StateTutorialGame.c$101$2_0$194
;StateTutorialGame.c:101: is_crono = 1;
	ld	hl, #_is_crono
	ld	(hl), #0x01
	C$StateTutorialGame.c$102$2_0$194	= .
	.globl	C$StateTutorialGame.c$102$2_0$194
;StateTutorialGame.c:102: timemax_current = TIME_MAX_TUTORIAL2;
	ld	hl, #_timemax_current
	ld	a, #0x80
	ld	(hl+), a
	ld	(hl), #0x0c
	C$StateTutorialGame.c$103$2_0$194	= .
	.globl	C$StateTutorialGame.c$103$2_0$194
;StateTutorialGame.c:103: time_factor = TIME_FACTOR_TUTORIAL2;
	ld	hl, #_time_factor
	ld	a, #0x64
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$104$2_0$194	= .
	.globl	C$StateTutorialGame.c$104$2_0$194
;StateTutorialGame.c:104: break;
	jr	00110$
	C$StateTutorialGame.c$105$2_0$194	= .
	.globl	C$StateTutorialGame.c$105$2_0$194
;StateTutorialGame.c:105: case TUTORIAL_STAGE_5_ZIGZAG:
00106$:
	C$StateTutorialGame.c$106$2_0$194	= .
	.globl	C$StateTutorialGame.c$106$2_0$194
;StateTutorialGame.c:106: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$107$2_0$194	= .
	.globl	C$StateTutorialGame.c$107$2_0$194
;StateTutorialGame.c:107: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$108$2_0$194	= .
	.globl	C$StateTutorialGame.c$108$2_0$194
;StateTutorialGame.c:108: is_crono = 0;
	ld	hl, #_is_crono
	ld	(hl), #0x00
	C$StateTutorialGame.c$109$2_0$194	= .
	.globl	C$StateTutorialGame.c$109$2_0$194
;StateTutorialGame.c:109: break;
	jr	00110$
	C$StateTutorialGame.c$110$2_0$194	= .
	.globl	C$StateTutorialGame.c$110$2_0$194
;StateTutorialGame.c:110: case TUTORIAL_STAGE_6_ZIGZAG_ONTIME:
00107$:
	C$StateTutorialGame.c$111$2_0$194	= .
	.globl	C$StateTutorialGame.c$111$2_0$194
;StateTutorialGame.c:111: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$112$2_0$194	= .
	.globl	C$StateTutorialGame.c$112$2_0$194
;StateTutorialGame.c:112: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$113$2_0$194	= .
	.globl	C$StateTutorialGame.c$113$2_0$194
;StateTutorialGame.c:113: is_crono = 1;
	ld	hl, #_is_crono
	ld	(hl), #0x01
	C$StateTutorialGame.c$114$2_0$194	= .
	.globl	C$StateTutorialGame.c$114$2_0$194
;StateTutorialGame.c:114: timemax_current = TIME_MAX_TUTORIAL3;
	ld	hl, #_timemax_current
	ld	a, #0x40
	ld	(hl+), a
	ld	(hl), #0x06
	C$StateTutorialGame.c$115$2_0$194	= .
	.globl	C$StateTutorialGame.c$115$2_0$194
;StateTutorialGame.c:115: time_factor = TIME_FACTOR_TUTORIAL3;
	ld	hl, #_time_factor
	ld	a, #0x32
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$116$2_0$194	= .
	.globl	C$StateTutorialGame.c$116$2_0$194
;StateTutorialGame.c:116: break;
	jr	00110$
	C$StateTutorialGame.c$118$2_0$194	= .
	.globl	C$StateTutorialGame.c$118$2_0$194
;StateTutorialGame.c:118: case TUTORIAL_STAGE_8_GLADIO:
00109$:
	C$StateTutorialGame.c$119$2_0$194	= .
	.globl	C$StateTutorialGame.c$119$2_0$194
;StateTutorialGame.c:119: pos_horse_x = 56;
	ld	bc, #0x0038
	C$StateTutorialGame.c$120$2_0$194	= .
	.globl	C$StateTutorialGame.c$120$2_0$194
;StateTutorialGame.c:120: pos_horse_y = 88;
	ldhl	sp,	#0
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$StateTutorialGame.c$121$2_0$194	= .
	.globl	C$StateTutorialGame.c$121$2_0$194
;StateTutorialGame.c:121: is_crono = 0;
	ld	hl, #_is_crono
	ld	(hl), #0x00
	C$StateTutorialGame.c$123$1_0$193	= .
	.globl	C$StateTutorialGame.c$123$1_0$193
;StateTutorialGame.c:123: }
00110$:
	C$StateTutorialGame.c$124$1_0$193	= .
	.globl	C$StateTutorialGame.c$124$1_0$193
;StateTutorialGame.c:124: scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
	pop	de
	push	de
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #0x0008
	add	hl, bc
	ld	e, l
	ld	d, h
	push	bc
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, #0x06
	call	_SpriteManagerAdd
	ld	e, c
	ld	d, b
	pop	bc
	ld	hl, #_scroll_target
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$StateTutorialGame.c$125$1_0$193	= .
	.globl	C$StateTutorialGame.c$125$1_0$193
;StateTutorialGame.c:125: s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
	pop	de
	push	de
	ld	hl, #0x0009
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, c
	add	a, #0xec
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	push	de
	ld	e, l
	ld	d, h
	ld	a, #0x03
	call	_SpriteManagerAdd
	ld	e, c
	ld	d, b
	pop	bc
	ld	hl, #_s_biga
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$StateTutorialGame.c$126$1_0$193	= .
	.globl	C$StateTutorialGame.c$126$1_0$193
;StateTutorialGame.c:126: s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
	push	bc
	ldhl	sp,	#2
	ld	e, (hl)
	ld	d, #0x00
	push	de
	ld	e, c
	ld	d, b
	ld	a, #0x01
	call	_SpriteManagerAdd
	ld	e, c
	ld	d, b
	pop	bc
	ld	hl, #_s_horse
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$StateTutorialGame.c$127$1_0$193	= .
	.globl	C$StateTutorialGame.c$127$1_0$193
;StateTutorialGame.c:127: s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
	pop	de
	push	de
	push	de
	ld	e, c
	ld	d, b
	ld	a, #0x04
	call	_SpriteManagerAdd
	ld	hl, #_s_compass
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$StateTutorialGame.c$129$1_0$193	= .
	.globl	C$StateTutorialGame.c$129$1_0$193
;StateTutorialGame.c:129: switch(tutorial_state){
	ld	a, #0x08
	ld	hl, #_tutorial_state
	sub	a, (hl)
	jp	C, 00120$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00138$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00138$:
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
	jp	00117$
	jp	00117$
	jp	00118$
	jp	00119$
	C$StateTutorialGame.c$130$2_0$195	= .
	.globl	C$StateTutorialGame.c$130$2_0$195
;StateTutorialGame.c:130: case TUTORIAL_STAGE_0_STRAIGHT:
00111$:
	C$StateTutorialGame.c$131$2_0$195	= .
	.globl	C$StateTutorialGame.c$131$2_0$195
;StateTutorialGame.c:131: InitScroll(BANK(maptut00straight), &maptut00straight, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut00straight+0
	ld	c, #<(___bank_maptut00straight)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$132$2_0$195	= .
	.globl	C$StateTutorialGame.c$132$2_0$195
;StateTutorialGame.c:132: update_hp(16); 
	ld	a, #0x10
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$133$2_0$195	= .
	.globl	C$StateTutorialGame.c$133$2_0$195
;StateTutorialGame.c:133: break;
	jp	00120$
	C$StateTutorialGame.c$134$2_0$195	= .
	.globl	C$StateTutorialGame.c$134$2_0$195
;StateTutorialGame.c:134: case TUTORIAL_STAGE_1_STRAIGHTTIME:
00112$:
	C$StateTutorialGame.c$135$2_0$195	= .
	.globl	C$StateTutorialGame.c$135$2_0$195
;StateTutorialGame.c:135: InitScroll(BANK(maptut00straight), &maptut00straight, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut00straight+0
	ld	c, #<(___bank_maptut00straight)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$136$2_0$195	= .
	.globl	C$StateTutorialGame.c$136$2_0$195
;StateTutorialGame.c:136: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$137$2_0$195	= .
	.globl	C$StateTutorialGame.c$137$2_0$195
;StateTutorialGame.c:137: break;
	jp	00120$
	C$StateTutorialGame.c$138$2_0$195	= .
	.globl	C$StateTutorialGame.c$138$2_0$195
;StateTutorialGame.c:138: case TUTORIAL_STAGE_2_TURNRIGHT:
00113$:
	C$StateTutorialGame.c$139$2_0$195	= .
	.globl	C$StateTutorialGame.c$139$2_0$195
;StateTutorialGame.c:139: InitScroll(BANK(maptut01turnright), &maptut01turnright, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut01turnright+0
	ld	c, #<(___bank_maptut01turnright)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$140$2_0$195	= .
	.globl	C$StateTutorialGame.c$140$2_0$195
;StateTutorialGame.c:140: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$141$2_0$195	= .
	.globl	C$StateTutorialGame.c$141$2_0$195
;StateTutorialGame.c:141: break;
	jp	00120$
	C$StateTutorialGame.c$142$2_0$195	= .
	.globl	C$StateTutorialGame.c$142$2_0$195
;StateTutorialGame.c:142: case TUTORIAL_STAGE_3_TURNLEFT:
00114$:
	C$StateTutorialGame.c$143$2_0$195	= .
	.globl	C$StateTutorialGame.c$143$2_0$195
;StateTutorialGame.c:143: InitScroll(BANK(maptut02turnleft), &maptut02turnleft, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut02turnleft+0
	ld	c, #<(___bank_maptut02turnleft)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$144$2_0$195	= .
	.globl	C$StateTutorialGame.c$144$2_0$195
;StateTutorialGame.c:144: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$145$2_0$195	= .
	.globl	C$StateTutorialGame.c$145$2_0$195
;StateTutorialGame.c:145: break;
	jp	00120$
	C$StateTutorialGame.c$146$2_0$195	= .
	.globl	C$StateTutorialGame.c$146$2_0$195
;StateTutorialGame.c:146: case TUTORIAL_STAGE_4_TURNRIGHTLEFT:
00115$:
	C$StateTutorialGame.c$147$2_0$195	= .
	.globl	C$StateTutorialGame.c$147$2_0$195
;StateTutorialGame.c:147: InitScroll(BANK(maptut03turnrightleft), &maptut03turnrightleft, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut03turnrightleft+0
	ld	c, #<(___bank_maptut03turnrightleft)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$148$2_0$195	= .
	.globl	C$StateTutorialGame.c$148$2_0$195
;StateTutorialGame.c:148: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$149$2_0$195	= .
	.globl	C$StateTutorialGame.c$149$2_0$195
;StateTutorialGame.c:149: break;
	jp	00120$
	C$StateTutorialGame.c$151$2_0$195	= .
	.globl	C$StateTutorialGame.c$151$2_0$195
;StateTutorialGame.c:151: case TUTORIAL_STAGE_6_ZIGZAG_ONTIME:
00117$:
	C$StateTutorialGame.c$152$2_0$195	= .
	.globl	C$StateTutorialGame.c$152$2_0$195
;StateTutorialGame.c:152: InitScroll(BANK(maptut04zigzag), &maptut04zigzag, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut04zigzag+0
	ld	c, #<(___bank_maptut04zigzag)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$153$2_0$195	= .
	.globl	C$StateTutorialGame.c$153$2_0$195
;StateTutorialGame.c:153: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$154$2_0$195	= .
	.globl	C$StateTutorialGame.c$154$2_0$195
;StateTutorialGame.c:154: break;
	jp	00120$
	C$StateTutorialGame.c$155$2_0$195	= .
	.globl	C$StateTutorialGame.c$155$2_0$195
;StateTutorialGame.c:155: case TUTORIAL_STAGE_7_DODGEWATER:
00118$:
	C$StateTutorialGame.c$156$2_0$195	= .
	.globl	C$StateTutorialGame.c$156$2_0$195
;StateTutorialGame.c:156: InitScroll(BANK(maptut04dodgewater), &maptut04dodgewater, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut04dodgewater+0
	ld	c, #<(___bank_maptut04dodgewater)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$157$2_0$195	= .
	.globl	C$StateTutorialGame.c$157$2_0$195
;StateTutorialGame.c:157: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$158$2_0$195	= .
	.globl	C$StateTutorialGame.c$158$2_0$195
;StateTutorialGame.c:158: break;
	jp	00120$
	C$StateTutorialGame.c$159$2_0$195	= .
	.globl	C$StateTutorialGame.c$159$2_0$195
;StateTutorialGame.c:159: case TUTORIAL_STAGE_8_GLADIO:
00119$:
	C$StateTutorialGame.c$160$1_0$193	= .
	.globl	C$StateTutorialGame.c$160$1_0$193
;StateTutorialGame.c:160: Sprite* s_fantoccio = SpriteManagerAdd(SpriteFantoccio, s_horse->x + 256u, s_horse->y + 8u);
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
	ld	c, (hl)
	ld	e, a
	ld	a, c
	inc	a
	ld	d, a
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x07
	call	_SpriteManagerAdd
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$StateTutorialGame.c$161$2_1$196	= .
	.globl	C$StateTutorialGame.c$161$2_1$196
;StateTutorialGame.c:161: Sprite* s_item = SpriteManagerAdd(SpriteItem, s_horse->x + 64u, s_horse->y + 4u);
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
	ld	hl, #0x0004
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
	ld	hl, #0x0040
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
	C$StateTutorialGame.c$162$2_1$196	= .
	.globl	C$StateTutorialGame.c$162$2_1$196
;StateTutorialGame.c:162: struct ItemData* item_data = (struct ItemData*) s_item->custom_data;
	ld	hl, #0x001b
	add	hl, bc
	ld	c, l
	ld	b, h
	C$StateTutorialGame.c$163$2_1$196	= .
	.globl	C$StateTutorialGame.c$163$2_1$196
;StateTutorialGame.c:163: item_data->itemtype = GLADIO;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x03
	C$StateTutorialGame.c$164$2_1$196	= .
	.globl	C$StateTutorialGame.c$164$2_1$196
;StateTutorialGame.c:164: item_data->configured = 1;
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	C$StateTutorialGame.c$165$2_1$196	= .
	.globl	C$StateTutorialGame.c$165$2_1$196
;StateTutorialGame.c:165: InitScroll(BANK(maptut00straight), &maptut00straight, coll_rome_tiles, coll_rome_surface);
	ld	de, #_maptut00straight+0
	ld	c, #<(___bank_maptut00straight)
	ld	hl, #_coll_rome_surface
	push	hl
	ld	hl, #_coll_rome_tiles
	push	hl
	ld	a, c
	call	_InitScroll
	C$StateTutorialGame.c$166$2_1$196	= .
	.globl	C$StateTutorialGame.c$166$2_1$196
;StateTutorialGame.c:166: update_hp(0); 
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$168$1_0$193	= .
	.globl	C$StateTutorialGame.c$168$1_0$193
;StateTutorialGame.c:168: }
00120$:
	C$StateTutorialGame.c$169$1_0$193	= .
	.globl	C$StateTutorialGame.c$169$1_0$193
;StateTutorialGame.c:169: INIT_HUD(hudm);
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
	C$StateTutorialGame.c$170$1_0$193	= .
	.globl	C$StateTutorialGame.c$170$1_0$193
;StateTutorialGame.c:170: SetWindowY(104);
	ld	a, #0x68
	call	_SetWindowY
	C$StateTutorialGame.c$171$1_0$193	= .
	.globl	C$StateTutorialGame.c$171$1_0$193
;StateTutorialGame.c:171: start_common();
	ld	e, #b_start_common
	ld	hl, #_start_common
	call	___sdcc_bcall_ehl
	C$StateTutorialGame.c$172$1_0$193	= .
	.globl	C$StateTutorialGame.c$172$1_0$193
;StateTutorialGame.c:172: }
	add	sp, #4
	C$StateTutorialGame.c$172$1_0$193	= .
	.globl	C$StateTutorialGame.c$172$1_0$193
	XG$Start_StateTutorialGame$0$0	= .
	.globl	XG$Start_StateTutorialGame$0$0
	ret
G$__bank_StateTutorialGame$0_0$0 == 0x00ff
___bank_StateTutorialGame	=	0x00ff
G$coll_rome_tiles$0_0$0 == .
_coll_rome_tiles:
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
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x79	; 121	'y'
	.db #0x00	; 0
G$coll_rome_surface$0_0$0 == .
_coll_rome_surface:
	.db #0x00	; 0
	.db #0x00	; 0
	G$Update_StateTutorialGame$0$0	= .
	.globl	G$Update_StateTutorialGame$0$0
	C$StateTutorialGame.c$174$1_0$197	= .
	.globl	C$StateTutorialGame.c$174$1_0$197
;StateTutorialGame.c:174: void UPDATE(){
;	---------------------------------
; Function Update_StateTutorialGame
; ---------------------------------
_Update_StateTutorialGame::
	C$StateTutorialGame.c$176$1_0$197	= .
	.globl	C$StateTutorialGame.c$176$1_0$197
;StateTutorialGame.c:176: if(tutorial_state < TUTORIAL_PASSED){
	ld	a, (#_tutorial_state)
	sub	a, #0x09
	jr	NC, 00104$
	C$StateTutorialGame.c$177$1_0$197	= .
	.globl	C$StateTutorialGame.c$177$1_0$197
;StateTutorialGame.c:177: if(s_horse->x < 40u){
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, (hl)
	add	a, #0x0c
	ld	b, a
	jr	NC, 00176$
	inc	c
00176$:
	ld	l, b
	ld	h, c
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, #0x28
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00104$
	C$StateTutorialGame.c$178$3_0$199	= .
	.globl	C$StateTutorialGame.c$178$3_0$199
;StateTutorialGame.c:178: s_horse->x = 40u;
	ld	l, b
	ld	h, c
	ld	a, #0x28
	ld	(hl+), a
	ld	(hl), #0x00
00104$:
	C$StateTutorialGame.c$182$1_0$197	= .
	.globl	C$StateTutorialGame.c$182$1_0$197
;StateTutorialGame.c:182: print_target = PRINT_WIN;
	ld	hl, #_print_target
	ld	(hl), #0x01
	C$StateTutorialGame.c$183$1_0$197	= .
	.globl	C$StateTutorialGame.c$183$1_0$197
;StateTutorialGame.c:183: if(hud_initialized == 0){
	ld	a, (#_hud_initialized)
	or	a, a
	jr	NZ, 00106$
	C$StateTutorialGame.c$184$2_0$200	= .
	.globl	C$StateTutorialGame.c$184$2_0$200
;StateTutorialGame.c:184: update_hp(0);
	xor	a, a
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$StateTutorialGame.c$185$2_0$200	= .
	.globl	C$StateTutorialGame.c$185$2_0$200
;StateTutorialGame.c:185: hud_initialized = 1u;
	ld	hl, #_hud_initialized
	ld	(hl), #0x01
00106$:
	C$StateTutorialGame.c$188$1_0$197	= .
	.globl	C$StateTutorialGame.c$188$1_0$197
;StateTutorialGame.c:188: update_stamina();
	ld	e, #b_update_stamina
	ld	hl, #_update_stamina
	call	___sdcc_bcall_ehl
	C$StateTutorialGame.c$190$1_0$197	= .
	.globl	C$StateTutorialGame.c$190$1_0$197
;StateTutorialGame.c:190: update_compass();
	ld	e, #b_update_compass
	ld	hl, #_update_compass
	call	___sdcc_bcall_ehl
	C$StateTutorialGame.c$192$1_0$197	= .
	.globl	C$StateTutorialGame.c$192$1_0$197
;StateTutorialGame.c:192: update_turning();
	ld	e, #b_update_turning
	ld	hl, #_update_turning
	call	___sdcc_bcall_ehl
	C$StateTutorialGame.c$194$1_0$197	= .
	.globl	C$StateTutorialGame.c$194$1_0$197
;StateTutorialGame.c:194: if(euphoria_min_current != euphoria_min || euphoria_max_current != euphoria_max){
	ld	a, (#_euphoria_min_current)
	ld	hl, #_euphoria_min
	sub	a, (hl)
	jr	NZ, 00107$
	ld	a, (#_euphoria_min_current + 1)
	ld	hl, #_euphoria_min + 1
	sub	a, (hl)
	jr	NZ, 00107$
	ld	a, (#_euphoria_max_current)
	ld	hl, #_euphoria_max
	sub	a, (hl)
	jr	NZ, 00179$
	ld	a, (#_euphoria_max_current + 1)
	ld	hl, #_euphoria_max + 1
	sub	a, (hl)
	jr	Z, 00108$
00179$:
00107$:
	C$StateTutorialGame.c$195$2_0$201	= .
	.globl	C$StateTutorialGame.c$195$2_0$201
;StateTutorialGame.c:195: update_euphoria();
	ld	e, #b_update_euphoria
	ld	hl, #_update_euphoria
	call	___sdcc_bcall_ehl
00108$:
	C$StateTutorialGame.c$198$1_0$197	= .
	.globl	C$StateTutorialGame.c$198$1_0$197
;StateTutorialGame.c:198: if(is_crono == 1){
	ld	a, (#_is_crono)
	dec	a
	jr	NZ, 00111$
	C$StateTutorialGame.c$199$2_0$202	= .
	.globl	C$StateTutorialGame.c$199$2_0$202
;StateTutorialGame.c:199: update_time();
	ld	e, #b_update_time
	ld	hl, #_update_time
	call	___sdcc_bcall_ehl
	C$StateTutorialGame.c$200$2_0$202	= .
	.globl	C$StateTutorialGame.c$200$2_0$202
;StateTutorialGame.c:200: time_current--;
	ld	hl, #_time_current
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$StateTutorialGame.c$201$1_0$197	= .
	.globl	C$StateTutorialGame.c$201$1_0$197
;StateTutorialGame.c:201: if(time_current < 0){
00111$:
	C$StateTutorialGame.c$207$1_0$197	= .
	.globl	C$StateTutorialGame.c$207$1_0$197
;StateTutorialGame.c:207: if(onwater_countdown > 0){
	ld	hl, #_onwater_countdown
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00182$
	bit	7, d
	jr	NZ, 00183$
	cp	a, a
	jr	00183$
00182$:
	bit	7, d
	jr	Z, 00183$
	scf
00183$:
	jr	NC, 00113$
	C$StateTutorialGame.c$208$2_0$204	= .
	.globl	C$StateTutorialGame.c$208$2_0$204
;StateTutorialGame.c:208: SetState(StateTutorialGame);
	ld	a, #0x01
	call	_SetState
00113$:
	C$StateTutorialGame.c$211$1_0$197	= .
	.globl	C$StateTutorialGame.c$211$1_0$197
;StateTutorialGame.c:211: if(track_ended == 1u){
	ld	a, (#_track_ended)
	dec	a
	ret	NZ
	C$StateTutorialGame.c$212$2_0$205	= .
	.globl	C$StateTutorialGame.c$212$2_0$205
;StateTutorialGame.c:212: track_ended_cooldown--;
	ld	hl, #_track_ended_cooldown
	dec	(hl)
	C$StateTutorialGame.c$213$2_0$205	= .
	.globl	C$StateTutorialGame.c$213$2_0$205
;StateTutorialGame.c:213: if(track_ended_cooldown <= 0){//cambia stato
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00186$
	bit	7, d
	jr	NZ, 00187$
	cp	a, a
	jr	00187$
00186$:
	bit	7, d
	jr	Z, 00187$
	scf
00187$:
	ret	C
	C$StateTutorialGame.c$214$3_0$206	= .
	.globl	C$StateTutorialGame.c$214$3_0$206
;StateTutorialGame.c:214: tutorial_state++;
	ld	hl, #_tutorial_state
	inc	(hl)
	C$StateTutorialGame.c$215$3_0$206	= .
	.globl	C$StateTutorialGame.c$215$3_0$206
;StateTutorialGame.c:215: SetState(StateTutorialGame);
	ld	a, #0x01
	C$StateTutorialGame.c$218$1_0$197	= .
	.globl	C$StateTutorialGame.c$218$1_0$197
;StateTutorialGame.c:218: }
	C$StateTutorialGame.c$218$1_0$197	= .
	.globl	C$StateTutorialGame.c$218$1_0$197
	XG$Update_StateTutorialGame$0$0	= .
	.globl	XG$Update_StateTutorialGame$0$0
	jp	_SetState
	.area _CODE_255
	.area _INITIALIZER
FStateTutorialGame$__xinit_tutorial_state$0_0$0 == .
__xinit__tutorial_state:
	.db #0x00	; 0
FStateTutorialGame$__xinit_is_crono$0_0$0 == .
__xinit__is_crono:
	.db #0x00	;  0
	.area _CABS (ABS)
