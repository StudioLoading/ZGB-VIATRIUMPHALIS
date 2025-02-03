;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteHorse
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteHorse
	.globl _Update_SpriteHorse
	.globl _Start_SpriteHorse
	.globl b_use_weapon
	.globl _use_weapon
	.globl b_update_hp
	.globl _update_hp
	.globl _SpriteManagerRemoveSprite
	.globl _SpriteManagerAdd
	.globl _GetScrollTile
	.globl _CheckCollision
	.globl _TranslateSprite
	.globl _SetSpriteAnim
	.globl _onwater_countdown
	.globl _s_flame
	.globl _onfire_countdown
	.globl _orme_spawned
	.globl _turn_verse
	.globl _past_coll_tile
	.globl _turn_samepressure_counter
	.globl _cos
	.globl _sin
	.globl _turn
	.globl _no_whip_counter_max
	.globl _no_whip_over_stamina
	.globl _no_whip_counter
	.globl _stamina_verso
	.globl _stamina_current
	.globl _euphoria_max
	.globl _euphoria_min
	.globl _whip_counter_max
	.globl _whip_counter
	.globl _whip_power_over_stamina
	.globl _frm_skip
	.globl _vx
	.globl _vy
	.globl _velocity
	.globl _velocity_counter
	.globl _a_horse_h_idle
	.globl _a_horse_hit
	.globl _a_horse_h
	.globl ___bank_SpriteHorse
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
G$velocity_counter$0_0$0==.
_velocity_counter::
	.ds 1
G$velocity$0_0$0==.
_velocity::
	.ds 1
G$vy$0_0$0==.
_vy::
	.ds 1
G$vx$0_0$0==.
_vx::
	.ds 1
G$frm_skip$0_0$0==.
_frm_skip::
	.ds 1
G$whip_power_over_stamina$0_0$0==.
_whip_power_over_stamina::
	.ds 1
G$whip_counter$0_0$0==.
_whip_counter::
	.ds 1
G$whip_counter_max$0_0$0==.
_whip_counter_max::
	.ds 1
G$euphoria_min$0_0$0==.
_euphoria_min::
	.ds 2
G$euphoria_max$0_0$0==.
_euphoria_max::
	.ds 2
G$stamina_current$0_0$0==.
_stamina_current::
	.ds 2
G$stamina_verso$0_0$0==.
_stamina_verso::
	.ds 1
G$no_whip_counter$0_0$0==.
_no_whip_counter::
	.ds 1
G$no_whip_over_stamina$0_0$0==.
_no_whip_over_stamina::
	.ds 1
G$no_whip_counter_max$0_0$0==.
_no_whip_counter_max::
	.ds 1
G$turn$0_0$0==.
_turn::
	.ds 1
G$sin$0_0$0==.
_sin::
	.ds 1
G$cos$0_0$0==.
_cos::
	.ds 1
G$turn_samepressure_counter$0_0$0==.
_turn_samepressure_counter::
	.ds 1
G$past_coll_tile$0_0$0==.
_past_coll_tile::
	.ds 1
G$turn_verse$0_0$0==.
_turn_verse::
	.ds 1
G$orme_spawned$0_0$0==.
_orme_spawned::
	.ds 1
G$onfire_countdown$0_0$0==.
_onfire_countdown::
	.ds 2
G$s_flame$0_0$0==.
_s_flame::
	.ds 2
G$onwater_countdown$0_0$0==.
_onwater_countdown::
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
	G$Start_SpriteHorse$0$0	= .
	.globl	G$Start_SpriteHorse$0$0
	C$SpriteHorse.c$67$0_0$193	= .
	.globl	C$SpriteHorse.c$67$0_0$193
;SpriteHorse.c:67: void START() {
;	---------------------------------
; Function Start_SpriteHorse
; ---------------------------------
_Start_SpriteHorse::
	C$SpriteHorse.c$68$1_0$193	= .
	.globl	C$SpriteHorse.c$68$1_0$193
;SpriteHorse.c:68: SetSpriteAnim(THIS, a_horse_h, 16u);
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteHorse.c$69$1_0$193	= .
	.globl	C$SpriteHorse.c$69$1_0$193
;SpriteHorse.c:69: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$70$1_0$193	= .
	.globl	C$SpriteHorse.c$70$1_0$193
;SpriteHorse.c:70: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteHorse.c$71$1_0$193	= .
	.globl	C$SpriteHorse.c$71$1_0$193
;SpriteHorse.c:71: THIS->lim_y = 500;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xf4
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$72$1_0$193	= .
	.globl	C$SpriteHorse.c$72$1_0$193
;SpriteHorse.c:72: onfire_countdown = -1;
	ld	hl, #_onfire_countdown
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
	C$SpriteHorse.c$73$1_0$193	= .
	.globl	C$SpriteHorse.c$73$1_0$193
;SpriteHorse.c:73: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
	C$SpriteHorse.c$74$1_0$193	= .
	.globl	C$SpriteHorse.c$74$1_0$193
;SpriteHorse.c:74: turn = 0;
	ld	hl, #_turn
	ld	(hl), #0x00
	C$SpriteHorse.c$75$1_0$193	= .
	.globl	C$SpriteHorse.c$75$1_0$193
;SpriteHorse.c:75: }
	C$SpriteHorse.c$75$1_0$193	= .
	.globl	C$SpriteHorse.c$75$1_0$193
	XG$Start_SpriteHorse$0$0	= .
	.globl	XG$Start_SpriteHorse$0$0
	ret
G$__bank_SpriteHorse$0_0$0 == 0x00ff
___bank_SpriteHorse	=	0x00ff
G$a_horse_h$0_0$0 == .
_a_horse_h:
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
G$a_horse_hit$0_0$0 == .
_a_horse_hit:
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
G$a_horse_h_idle$0_0$0 == .
_a_horse_h_idle:
	.db #0x01	; 1
	.db #0x06	; 6
	G$Update_SpriteHorse$0$0	= .
	.globl	G$Update_SpriteHorse$0$0
	C$SpriteHorse.c$77$1_0$194	= .
	.globl	C$SpriteHorse.c$77$1_0$194
;SpriteHorse.c:77: void UPDATE() {
;	---------------------------------
; Function Update_SpriteHorse
; ---------------------------------
_Update_SpriteHorse::
	add	sp, #-9
	C$SpriteHorse.c$79$1_0$194	= .
	.globl	C$SpriteHorse.c$79$1_0$194
;SpriteHorse.c:79: if(track_ended == 1u){
	ld	a, (#_track_ended)
	dec	a
	jr	NZ, 00102$
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0c
	ld	c, a
	jr	NC, 01007$
	inc	b
01007$:
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (#_vx)
	pop	hl
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteHorse.c$81$2_3$194	= .
	.globl	C$SpriteHorse.c$81$2_3$194
;SpriteHorse.c:81: THIS->y += vy;
	add	a, #0x0e
	ld	c, a
	jr	NC, 01008$
	inc	b
01008$:
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (#_vy)
	pop	hl
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteHorse.c$82$2_0$195	= .
	.globl	C$SpriteHorse.c$82$2_0$195
;SpriteHorse.c:82: return;
	jp	00309$
00102$:
	C$SpriteHorse.c$85$1_0$194	= .
	.globl	C$SpriteHorse.c$85$1_0$194
;SpriteHorse.c:85: if(onwater_countdown > 0){
	ld	hl, #_onwater_countdown
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01009$
	bit	7, d
	jr	NZ, 01010$
	cp	a, a
	jr	01010$
01009$:
	bit	7, d
	jr	Z, 01010$
	scf
01010$:
	jr	NC, 00104$
	C$SpriteHorse.c$86$2_0$196	= .
	.globl	C$SpriteHorse.c$86$2_0$196
;SpriteHorse.c:86: onwater_countdown--;
	ld	hl, #_onwater_countdown
	dec	(hl)
00104$:
	C$SpriteHorse.c$93$2_3$194	= .
	.globl	C$SpriteHorse.c$93$2_3$194
;SpriteHorse.c:93: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter_max
	ld	c, (hl)
	C$SpriteHorse.c$89$1_0$194	= .
	.globl	C$SpriteHorse.c$89$1_0$194
;SpriteHorse.c:89: if(whip_counter <= 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01011$
	bit	7, d
	jr	NZ, 01012$
	cp	a, a
	jr	01012$
01011$:
	bit	7, d
	jr	Z, 01012$
	scf
01012$:
	jr	C, 00110$
	C$SpriteHorse.c$90$2_0$197	= .
	.globl	C$SpriteHorse.c$90$2_0$197
;SpriteHorse.c:90: if(KEY_TICKED(J_WHIP)){
	ld	a, (#_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	Z, 00106$
	ld	a, (#_previous_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	NZ, 00106$
	C$SpriteHorse.c$91$3_0$198	= .
	.globl	C$SpriteHorse.c$91$3_0$198
;SpriteHorse.c:91: stamina_verso = 1;
	ld	hl, #_stamina_verso
	ld	(hl), #0x01
	C$SpriteHorse.c$92$3_0$198	= .
	.globl	C$SpriteHorse.c$92$3_0$198
;SpriteHorse.c:92: whip_counter = whip_counter_max;
	ld	a, (#_whip_counter_max)
	ld	(#_whip_counter),a
	C$SpriteHorse.c$93$3_0$198	= .
	.globl	C$SpriteHorse.c$93$3_0$198
;SpriteHorse.c:93: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
	jr	00111$
00106$:
	C$SpriteHorse.c$95$3_0$199	= .
	.globl	C$SpriteHorse.c$95$3_0$199
;SpriteHorse.c:95: stamina_verso = -1;
	ld	hl, #_stamina_verso
	ld	(hl), #0xff
	jr	00111$
00110$:
	C$SpriteHorse.c$98$2_0$200	= .
	.globl	C$SpriteHorse.c$98$2_0$200
;SpriteHorse.c:98: whip_counter--;
	ld	hl, #_whip_counter
	dec	(hl)
00111$:
	C$SpriteHorse.c$100$1_0$194	= .
	.globl	C$SpriteHorse.c$100$1_0$194
;SpriteHorse.c:100: if(whip_counter > 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01013$
	bit	7, d
	jr	NZ, 01014$
	cp	a, a
	jr	01014$
01013$:
	bit	7, d
	jr	Z, 01014$
	scf
01014$:
	jr	NC, 00117$
	C$SpriteHorse.c$101$2_3$194	= .
	.globl	C$SpriteHorse.c$101$2_3$194
;SpriteHorse.c:101: stamina_current += (whip_power_over_stamina * stamina_verso);
	ld	hl, #_stamina_verso
	ld	e, (hl)
	ld	a, (#_whip_power_over_stamina)
	call	__mulschar
	ld	hl, #_stamina_current
	ld	a, (hl)
	add	a, c
	ld	(hl+), a
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
	jr	00118$
00117$:
	C$SpriteHorse.c$103$2_0$202	= .
	.globl	C$SpriteHorse.c$103$2_0$202
;SpriteHorse.c:103: if(no_whip_counter > 0){
	ld	hl, #_no_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01015$
	bit	7, d
	jr	NZ, 01016$
	cp	a, a
	jr	01016$
01015$:
	bit	7, d
	jr	Z, 01016$
	scf
01016$:
	jr	NC, 00118$
	C$SpriteHorse.c$104$3_0$203	= .
	.globl	C$SpriteHorse.c$104$3_0$203
;SpriteHorse.c:104: no_whip_counter--;
	ld	hl, #_no_whip_counter
	C$SpriteHorse.c$105$3_0$203	= .
	.globl	C$SpriteHorse.c$105$3_0$203
;SpriteHorse.c:105: if(no_whip_counter == 0){
	dec	(hl)
	jr	NZ, 00118$
	C$SpriteHorse.c$106$4_0$204	= .
	.globl	C$SpriteHorse.c$106$4_0$204
;SpriteHorse.c:106: stamina_current += no_whip_over_stamina;
	ld	a, (#_no_whip_over_stamina)
	ld	b, a
	rlca
	sbc	a, a
	ld	e, a
	ld	hl, #_stamina_current
	ld	a, (hl)
	add	a, b
	ld	(hl+), a
	ld	a, (hl)
	adc	a, e
	ld	(hl), a
	C$SpriteHorse.c$107$4_0$204	= .
	.globl	C$SpriteHorse.c$107$4_0$204
;SpriteHorse.c:107: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
00118$:
	C$SpriteHorse.c$112$1_0$194	= .
	.globl	C$SpriteHorse.c$112$1_0$194
;SpriteHorse.c:112: if(stamina_current < 0){
	ld	hl, #_stamina_current + 1
	bit	7, (hl)
	jr	Z, 00120$
	C$SpriteHorse.c$113$2_0$205	= .
	.globl	C$SpriteHorse.c$113$2_0$205
;SpriteHorse.c:113: stamina_current = 0;
	dec	hl
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00120$:
	C$SpriteHorse.c$115$1_0$194	= .
	.globl	C$SpriteHorse.c$115$1_0$194
;SpriteHorse.c:115: if(stamina_current > STAMINA_MAX){
	ld	hl, #_stamina_current
	ld	a, #0xc0
	sub	a, (hl)
	inc	hl
	ld	a, #0x03
	sbc	a, (hl)
	ld	a, #0x03
	ld	d, a
	bit	7, (hl)
	jr	Z, 01017$
	bit	7, d
	jr	NZ, 01018$
	cp	a, a
	jr	01018$
01017$:
	bit	7, d
	jr	Z, 01018$
	scf
01018$:
	jr	NC, 00122$
	C$SpriteHorse.c$116$2_0$206	= .
	.globl	C$SpriteHorse.c$116$2_0$206
;SpriteHorse.c:116: stamina_current = STAMINA_MAX;
	ld	hl, #_stamina_current
	ld	a, #0xc0
	ld	(hl+), a
	ld	(hl), #0x03
00122$:
	C$SpriteHorse.c$119$2_0$207	= .
	.globl	C$SpriteHorse.c$119$2_0$207
;SpriteHorse.c:119: INT16 delta_stamina_euphoria = 0;
	ld	bc, #0x0000
	C$SpriteHorse.c$120$1_1$207	= .
	.globl	C$SpriteHorse.c$120$1_1$207
;SpriteHorse.c:120: if(stamina_current > euphoria_max){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_euphoria_max
	ld	a, (hl+)
	sub	a, e
	ld	a, (hl)
	sbc	a, d
	jr	NC, 00126$
	C$SpriteHorse.c$121$2_1$208	= .
	.globl	C$SpriteHorse.c$121$2_1$208
;SpriteHorse.c:121: delta_stamina_euphoria = stamina_current - euphoria_max;
	dec	hl
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, d
	sbc	a, (hl)
	ld	b, a
	jr	00127$
00126$:
	C$SpriteHorse.c$122$1_1$207	= .
	.globl	C$SpriteHorse.c$122$1_1$207
;SpriteHorse.c:122: }else if(stamina_current < euphoria_min){
	ld	hl, #_euphoria_min
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jr	NC, 00127$
	C$SpriteHorse.c$123$2_1$209	= .
	.globl	C$SpriteHorse.c$123$2_1$209
;SpriteHorse.c:123: delta_stamina_euphoria = euphoria_min - stamina_current;
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	sub	a, e
	ld	c, a
	ld	a, (hl)
	sbc	a, d
	ld	b, a
00127$:
	C$SpriteHorse.c$125$1_1$207	= .
	.globl	C$SpriteHorse.c$125$1_1$207
;SpriteHorse.c:125: if(delta_stamina_euphoria > 32){
	ld	e, b
	ld	d, #0x00
	ld	a, #0x20
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 01019$
	bit	7, d
	jr	NZ, 01020$
	cp	a, a
	jr	01020$
01019$:
	bit	7, d
	jr	Z, 01020$
	scf
01020$:
	jr	NC, 00129$
	C$SpriteHorse.c$126$2_1$210	= .
	.globl	C$SpriteHorse.c$126$2_1$210
;SpriteHorse.c:126: velocity_counter = delta_stamina_euphoria >> 4;
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_velocity_counter
	ld	(hl), c
	jr	00130$
00129$:
	C$SpriteHorse.c$128$2_1$211	= .
	.globl	C$SpriteHorse.c$128$2_1$211
;SpriteHorse.c:128: velocity_counter = 2;
	ld	hl, #_velocity_counter
	ld	(hl), #0x02
00130$:
	C$SpriteHorse.c$131$1_1$207	= .
	.globl	C$SpriteHorse.c$131$1_1$207
;SpriteHorse.c:131: if(onfire_countdown > 0){//sta impazzendo
	ld	hl, #_onfire_countdown
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 01021$
	bit	7, d
	jr	NZ, 01022$
	cp	a, a
	jr	01022$
01021$:
	bit	7, d
	jr	Z, 01022$
	scf
01022$:
	jp	NC, 00148$
	C$SpriteHorse.c$132$2_1$212	= .
	.globl	C$SpriteHorse.c$132$2_1$212
;SpriteHorse.c:132: onfire_countdown--;
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	C$SpriteHorse.c$133$2_1$212	= .
	.globl	C$SpriteHorse.c$133$2_1$212
;SpriteHorse.c:133: switch(onfire_countdown){
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	sub	a, #0x32
	or	a, (hl)
	jr	Z, 00137$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0x64
	or	a, (hl)
	jr	Z, 00137$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0x96
	or	a, (hl)
	jr	Z, 00137$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0xc8
	or	a, (hl)
	jr	Z, 00137$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0xfa
	or	a, (hl)
	jr	Z, 00137$
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	sub	a, #0x2c
	jr	NZ, 01028$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	Z, 00137$
01028$:
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	sub	a, #0x5e
	jr	NZ, 00138$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00138$
	C$SpriteHorse.c$135$3_1$213	= .
	.globl	C$SpriteHorse.c$135$3_1$213
;SpriteHorse.c:135: case 200: case 250: case 300: case 350:
00137$:
	C$SpriteHorse.c$136$3_1$213	= .
	.globl	C$SpriteHorse.c$136$3_1$213
;SpriteHorse.c:136: update_hp(-1);
	ld	a, #0xff
	push	af
	inc	sp
	ld	e, #b_update_hp
	ld	hl, #_update_hp
	call	___sdcc_bcall_ehl
	inc	sp
	C$SpriteHorse.c$138$2_1$212	= .
	.globl	C$SpriteHorse.c$138$2_1$212
;SpriteHorse.c:138: }
00138$:
	C$SpriteHorse.c$139$2_1$212	= .
	.globl	C$SpriteHorse.c$139$2_1$212
;SpriteHorse.c:139: velocity_counter = 1;//cioè vai a cannone
	ld	hl, #_velocity_counter
	ld	(hl), #0x01
	C$SpriteHorse.c$140$2_1$212	= .
	.globl	C$SpriteHorse.c$140$2_1$212
;SpriteHorse.c:140: stamina_current = EUPHORIA_MAX+1;//fissa la stamina a euphoria_max
	ld	hl, #_stamina_current
	ld	a, #0x95
	ld	(hl+), a
	ld	(hl), #0x02
	C$SpriteHorse.c$141$2_1$212	= .
	.globl	C$SpriteHorse.c$141$2_1$212
;SpriteHorse.c:141: s_flame->x = THIS->x +2;
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0c
	ld	c, a
	jr	NC, 01031$
	inc	b
01031$:
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	ld	e, a
	ld	d, l
	inc	de
	inc	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteHorse.c$142$2_1$212	= .
	.globl	C$SpriteHorse.c$142$2_1$212
;SpriteHorse.c:142: s_flame->y = THIS->y-7;
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 01032$
	inc	b
01032$:
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0xf9
	ld	e, a
	ld	a, l
	adc	a, #0xff
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteHorse.c$143$2_1$212	= .
	.globl	C$SpriteHorse.c$143$2_1$212
;SpriteHorse.c:143: if(weapon_def == CAPE){
	ld	a, (#_weapon_def)
	sub	a, #0x08
	jr	NZ, 00149$
	C$SpriteHorse.c$144$3_1$214	= .
	.globl	C$SpriteHorse.c$144$3_1$214
;SpriteHorse.c:144: use_weapon(1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #b_use_weapon
	ld	hl, #_use_weapon
	call	___sdcc_bcall_ehl
	inc	sp
	C$SpriteHorse.c$145$3_1$214	= .
	.globl	C$SpriteHorse.c$145$3_1$214
;SpriteHorse.c:145: SpriteManagerRemoveSprite(s_flame);
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
	C$SpriteHorse.c$146$3_1$214	= .
	.globl	C$SpriteHorse.c$146$3_1$214
;SpriteHorse.c:146: onfire_countdown = 2;
	ld	hl, #_onfire_countdown
	ld	a, #0x02
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00149$
00148$:
	C$SpriteHorse.c$149$2_1$215	= .
	.globl	C$SpriteHorse.c$149$2_1$215
;SpriteHorse.c:149: if(euphoria_min != EUPHORIA_MIN){
	ld	hl, #_euphoria_min
	ld	a, (hl)
	sub	a, #0x90
	jr	NZ, 01035$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	Z, 00142$
01035$:
	C$SpriteHorse.c$150$3_1$216	= .
	.globl	C$SpriteHorse.c$150$3_1$216
;SpriteHorse.c:150: euphoria_min = EUPHORIA_MIN;
	ld	hl, #_euphoria_min
	ld	a, #0x90
	ld	(hl+), a
	ld	(hl), #0x01
00142$:
	C$SpriteHorse.c$152$2_1$215	= .
	.globl	C$SpriteHorse.c$152$2_1$215
;SpriteHorse.c:152: if(euphoria_max != EUPHORIA_MAX){
	ld	hl, #_euphoria_max
	ld	a, (hl)
	sub	a, #0x94
	jr	NZ, 01036$
	inc	hl
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00144$
01036$:
	C$SpriteHorse.c$153$3_1$217	= .
	.globl	C$SpriteHorse.c$153$3_1$217
;SpriteHorse.c:153: euphoria_max = EUPHORIA_MAX;
	ld	hl, #_euphoria_max
	ld	a, #0x94
	ld	(hl+), a
	ld	(hl), #0x02
00144$:
	C$SpriteHorse.c$155$2_1$215	= .
	.globl	C$SpriteHorse.c$155$2_1$215
;SpriteHorse.c:155: if(whip_power_over_stamina != WHIP_POWER){//se entro qui, sto risistemando la whip ed è appena terminato l'onfire.
	ld	a, (#_whip_power_over_stamina)
	sub	a, #0x03
	jr	Z, 00149$
	C$SpriteHorse.c$156$3_1$218	= .
	.globl	C$SpriteHorse.c$156$3_1$218
;SpriteHorse.c:156: whip_power_over_stamina = WHIP_POWER;
	ld	hl, #_whip_power_over_stamina
	ld	(hl), #0x03
	C$SpriteHorse.c$157$3_1$218	= .
	.globl	C$SpriteHorse.c$157$3_1$218
;SpriteHorse.c:157: stamina_current = (EUPHORIA_MIN - (EUPHORIA_MIN >> 3));
	ld	hl, #_stamina_current
	ld	a, #0x5e
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$158$3_1$218	= .
	.globl	C$SpriteHorse.c$158$3_1$218
;SpriteHorse.c:158: SpriteManagerRemoveSprite(s_flame);
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
00149$:
	C$SpriteHorse.c$163$2_3$194	= .
	.globl	C$SpriteHorse.c$163$2_3$194
;SpriteHorse.c:163: if(KEY_RELEASED(J_RIGHT) || KEY_RELEASED(J_LEFT)){
	ld	hl, #_previous_keys
	ld	c, (hl)
	ld	hl, #_keys
	ld	b, (hl)
	ld	a, b
	and	a, #0x01
	push	af
	ld	a, b
	and	a, #0x02
	ld	e, a
	pop	af
	bit	0, c
	jr	Z, 00154$
	or	a, a
	jr	Z, 00150$
00154$:
	bit	1, c
	jr	Z, 00151$
	inc	e
	dec	e
	jr	NZ, 00151$
00150$:
	C$SpriteHorse.c$164$2_1$219	= .
	.globl	C$SpriteHorse.c$164$2_1$219
;SpriteHorse.c:164: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
	C$SpriteHorse.c$165$2_1$219	= .
	.globl	C$SpriteHorse.c$165$2_1$219
;SpriteHorse.c:165: hud_turn_cooldown = HUD_TURN_COOLDOWN_MAX;
	ld	hl, #_hud_turn_cooldown
	ld	(hl), #0x14
00151$:
	C$SpriteHorse.c$171$2_3$194	= .
	.globl	C$SpriteHorse.c$171$2_3$194
;SpriteHorse.c:171: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	d, (hl)
	inc	d
	C$SpriteHorse.c$168$1_1$207	= .
	.globl	C$SpriteHorse.c$168$1_1$207
;SpriteHorse.c:168: if(KEY_PRESSED(J_RIGHT)){
	or	a, a
	jr	Z, 00167$
	C$SpriteHorse.c$169$2_1$220	= .
	.globl	C$SpriteHorse.c$169$2_1$220
;SpriteHorse.c:169: turn_verse = CLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x01
	C$SpriteHorse.c$170$2_1$220	= .
	.globl	C$SpriteHorse.c$170$2_1$220
;SpriteHorse.c:170: turn--;
	ld	hl, #_turn
	dec	(hl)
	C$SpriteHorse.c$171$2_1$220	= .
	.globl	C$SpriteHorse.c$171$2_1$220
;SpriteHorse.c:171: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$172$2_1$220	= .
	.globl	C$SpriteHorse.c$172$2_1$220
;SpriteHorse.c:172: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0xa8
	jp	C, 00168$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01040$
	bit	7, d
	jr	NZ, 01041$
	cp	a, a
	jr	01041$
01040$:
	bit	7, d
	jr	Z, 01041$
	scf
01041$:
	jr	NC, 00159$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	C, 00155$
00159$:
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00168$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01042$
	bit	7, d
	jr	NZ, 01043$
	cp	a, a
	jr	01043$
01042$:
	bit	7, d
	jr	Z, 01043$
	scf
01043$:
	jr	NC, 00168$
00155$:
	C$SpriteHorse.c$173$3_1$221	= .
	.globl	C$SpriteHorse.c$173$3_1$221
;SpriteHorse.c:173: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$174$3_1$221	= .
	.globl	C$SpriteHorse.c$174$3_1$221
;SpriteHorse.c:174: turn-=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0xfe
	ld	(hl), a
	jr	00168$
00167$:
	C$SpriteHorse.c$176$1_1$207	= .
	.globl	C$SpriteHorse.c$176$1_1$207
;SpriteHorse.c:176: }else if(KEY_PRESSED(J_LEFT)){
	ld	a, e
	or	a, a
	jr	Z, 00164$
	C$SpriteHorse.c$177$2_1$222	= .
	.globl	C$SpriteHorse.c$177$2_1$222
;SpriteHorse.c:177: turn_verse = COUNTERCLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x02
	C$SpriteHorse.c$178$2_1$222	= .
	.globl	C$SpriteHorse.c$178$2_1$222
;SpriteHorse.c:178: turn++;
	ld	hl, #_turn
	inc	(hl)
	C$SpriteHorse.c$179$2_1$222	= .
	.globl	C$SpriteHorse.c$179$2_1$222
;SpriteHorse.c:179: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$180$2_1$222	= .
	.globl	C$SpriteHorse.c$180$2_1$222
;SpriteHorse.c:180: if(turn_samepressure_counter > 40){
	ld	e, (hl)
	ld	a,#0x28
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01044$
	bit	7, d
	jr	NZ, 01045$
	cp	a, a
	jr	01045$
01044$:
	bit	7, d
	jr	Z, 01045$
	scf
01045$:
	jr	NC, 00168$
	C$SpriteHorse.c$181$3_1$223	= .
	.globl	C$SpriteHorse.c$181$3_1$223
;SpriteHorse.c:181: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$182$3_1$223	= .
	.globl	C$SpriteHorse.c$182$3_1$223
;SpriteHorse.c:182: turn+=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00168$
00164$:
	C$SpriteHorse.c$185$2_1$224	= .
	.globl	C$SpriteHorse.c$185$2_1$224
;SpriteHorse.c:185: turn_verse = NONE; 
	ld	hl, #_turn_verse
	ld	(hl), #0x00
00168$:
	C$SpriteHorse.c$187$1_1$207	= .
	.globl	C$SpriteHorse.c$187$1_1$207
;SpriteHorse.c:187: if(KEY_TICKED(J_UP)){
	bit	2, b
	jr	Z, 00170$
	bit	2, c
	jr	NZ, 00170$
	C$SpriteHorse.c$188$2_1$225	= .
	.globl	C$SpriteHorse.c$188$2_1$225
;SpriteHorse.c:188: turn = 64;
	ld	hl, #_turn
	ld	(hl), #0x40
	C$SpriteHorse.c$189$2_1$225	= .
	.globl	C$SpriteHorse.c$189$2_1$225
;SpriteHorse.c:189: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00170$:
	C$SpriteHorse.c$191$1_1$207	= .
	.globl	C$SpriteHorse.c$191$1_1$207
;SpriteHorse.c:191: if(KEY_TICKED(J_DOWN)){
	bit	3, b
	jr	Z, 00173$
	bit	3, c
	jr	NZ, 00173$
	C$SpriteHorse.c$192$2_1$226	= .
	.globl	C$SpriteHorse.c$192$2_1$226
;SpriteHorse.c:192: turn = 192;
	ld	hl, #_turn
	ld	(hl), #0xc0
	C$SpriteHorse.c$193$2_1$226	= .
	.globl	C$SpriteHorse.c$193$2_1$226
;SpriteHorse.c:193: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00173$:
	C$SpriteHorse.c$195$1_1$207	= .
	.globl	C$SpriteHorse.c$195$1_1$207
;SpriteHorse.c:195: sin = sine_wave[turn];
	ld	bc, #_sine_wave+0
	ld	a, c
	ld	hl, #_turn
	add	a, (hl)
	ld	e, a
	ld	a, b
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	ld	(#_sin),a
	C$SpriteHorse.c$196$1_2$227	= .
	.globl	C$SpriteHorse.c$196$1_2$227
;SpriteHorse.c:196: UINT8 cos_idx = turn+64;
	ld	a, (#_turn)
	add	a, #0x40
	C$SpriteHorse.c$197$1_2$227	= .
	.globl	C$SpriteHorse.c$197$1_2$227
;SpriteHorse.c:197: cos = sine_wave[cos_idx];
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#_cos),a
	C$SpriteHorse.c$200$1_2$227	= .
	.globl	C$SpriteHorse.c$200$1_2$227
;SpriteHorse.c:200: frm_skip--;
	ld	hl, #_frm_skip
	C$SpriteHorse.c$201$1_2$227	= .
	.globl	C$SpriteHorse.c$201$1_2$227
;SpriteHorse.c:201: if(frm_skip == 0){
	dec	(hl)
	jp	NZ, 00290$
	C$SpriteHorse.c$202$2_2$228	= .
	.globl	C$SpriteHorse.c$202$2_2$228
;SpriteHorse.c:202: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$209$2_3$194	= .
	.globl	C$SpriteHorse.c$209$2_3$194
;SpriteHorse.c:209: if(cos >= 0 && cos <= 30){//tratto come se stesse andando verticale
	ld	hl, #_cos
	ld	a, (hl)
	rlca
	and	a,#0x01
	ld	c, a
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01052$
	bit	7, d
	jr	NZ, 01053$
	cp	a, a
	jr	01053$
01052$:
	bit	7, d
	jr	Z, 01053$
	scf
01053$:
	ld	a, #0x00
	rla
	bit	0, c
	jr	NZ, 00201$
	or	a, a
	jr	NZ, 00201$
	C$SpriteHorse.c$210$3_2$229	= .
	.globl	C$SpriteHorse.c$210$3_2$229
;SpriteHorse.c:210: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jp	00202$
00201$:
	C$SpriteHorse.c$211$2_2$228	= .
	.globl	C$SpriteHorse.c$211$2_2$228
;SpriteHorse.c:211: }else if(cos > 30 && cos < 54){// tratto come se stesse andando a 66 gradi
	or	a, a
	jr	Z, 00197$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00197$
	C$SpriteHorse.c$212$3_2$230	= .
	.globl	C$SpriteHorse.c$212$3_2$230
;SpriteHorse.c:212: vx = 1;
	ld	hl, #_vx
	ld	(hl), #0x01
	jp	00202$
00197$:
	C$SpriteHorse.c$213$2_2$228	= .
	.globl	C$SpriteHorse.c$213$2_2$228
;SpriteHorse.c:213: }else if(cos > 54 && cos < 78){// tratto come se stesse andando a 33 gradi
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01054$
	bit	7, d
	jr	NZ, 01055$
	cp	a, a
	jr	01055$
01054$:
	bit	7, d
	jr	Z, 01055$
	scf
01055$:
	jr	NC, 00193$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00193$
	C$SpriteHorse.c$214$3_2$231	= .
	.globl	C$SpriteHorse.c$214$3_2$231
;SpriteHorse.c:214: vx = 2;
	ld	hl, #_vx
	ld	(hl), #0x02
	jp	00202$
00193$:
	C$SpriteHorse.c$215$2_2$228	= .
	.globl	C$SpriteHorse.c$215$2_2$228
;SpriteHorse.c:215: }else if(cos > 78){ // tratto come se stesse andando orizzontale destra
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01056$
	bit	7, d
	jr	NZ, 01057$
	cp	a, a
	jr	01057$
01056$:
	bit	7, d
	jr	Z, 01057$
	scf
01057$:
	jr	NC, 00190$
	C$SpriteHorse.c$216$3_2$232	= .
	.globl	C$SpriteHorse.c$216$3_2$232
;SpriteHorse.c:216: vx = 3;
	ld	hl, #_vx
	ld	(hl), #0x03
	jp	00202$
00190$:
	C$SpriteHorse.c$217$2_2$228	= .
	.globl	C$SpriteHorse.c$217$2_2$228
;SpriteHorse.c:217: }else if(cos < 0 && cos > -30){//tratto come se stesse andando verticale
	ld	a, c
	or	a, a
	jr	Z, 00186$
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01058$
	bit	7, d
	jr	NZ, 01059$
	cp	a, a
	jr	01059$
01058$:
	bit	7, d
	jr	Z, 01059$
	scf
01059$:
	jr	NC, 00186$
	C$SpriteHorse.c$218$3_2$233	= .
	.globl	C$SpriteHorse.c$218$3_2$233
;SpriteHorse.c:218: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jr	00202$
00186$:
	C$SpriteHorse.c$219$2_2$228	= .
	.globl	C$SpriteHorse.c$219$2_2$228
;SpriteHorse.c:219: }else if(cos < -30 && cos > -54){// tratto come se stesse andando a 66 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00182$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01060$
	bit	7, d
	jr	NZ, 01061$
	cp	a, a
	jr	01061$
01060$:
	bit	7, d
	jr	Z, 01061$
	scf
01061$:
	jr	NC, 00182$
	C$SpriteHorse.c$220$3_2$234	= .
	.globl	C$SpriteHorse.c$220$3_2$234
;SpriteHorse.c:220: vx = -1;
	ld	hl, #_vx
	ld	(hl), #0xff
	jr	00202$
00182$:
	C$SpriteHorse.c$221$2_2$228	= .
	.globl	C$SpriteHorse.c$221$2_2$228
;SpriteHorse.c:221: }else if(cos < -54 && cos > -78){// tratto come se stesse andando a 33 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00178$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01062$
	bit	7, d
	jr	NZ, 01063$
	cp	a, a
	jr	01063$
01062$:
	bit	7, d
	jr	Z, 01063$
	scf
01063$:
	jr	NC, 00178$
	C$SpriteHorse.c$222$3_2$235	= .
	.globl	C$SpriteHorse.c$222$3_2$235
;SpriteHorse.c:222: vx = -2;
	ld	hl, #_vx
	ld	(hl), #0xfe
	jr	00202$
00178$:
	C$SpriteHorse.c$223$2_2$228	= .
	.globl	C$SpriteHorse.c$223$2_2$228
;SpriteHorse.c:223: }else if(cos < -78){ // tratto come se stesse andando orizzontale sinistra
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00202$
	C$SpriteHorse.c$224$3_2$236	= .
	.globl	C$SpriteHorse.c$224$3_2$236
;SpriteHorse.c:224: vx = -3;
	ld	hl, #_vx
	ld	(hl), #0xfd
00202$:
	C$SpriteHorse.c$172$2_3$194	= .
	.globl	C$SpriteHorse.c$172$2_3$194
;SpriteHorse.c:172: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01064$
	bit	7, d
	jr	NZ, 01065$
	cp	a, a
	jr	01065$
01064$:
	bit	7, d
	jr	Z, 01065$
	scf
01065$:
	ld	a, #0x00
	rla
	ld	c, a
	C$SpriteHorse.c$227$2_3$194	= .
	.globl	C$SpriteHorse.c$227$2_3$194
;SpriteHorse.c:227: if(sin >= 0 && sin <= 30){//tratto come se stesse andando orizzontale
	ld	a, (#_sin)
	rlca
	and	a,#0x01
	ld	b, a
	bit	0, b
	jr	NZ, 00230$
	ld	e, c
	bit	0, e
	jr	NZ, 00230$
	C$SpriteHorse.c$228$3_2$237	= .
	.globl	C$SpriteHorse.c$228$3_2$237
;SpriteHorse.c:228: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jp	00231$
00230$:
	C$SpriteHorse.c$229$2_2$228	= .
	.globl	C$SpriteHorse.c$229$2_2$228
;SpriteHorse.c:229: }else if(sin > 30 && sin < 54){// tratto come se stesse andando a 33 gradi
	ld	a, c
	or	a, a
	jr	Z, 00226$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00226$
	C$SpriteHorse.c$230$3_2$238	= .
	.globl	C$SpriteHorse.c$230$3_2$238
;SpriteHorse.c:230: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00231$
00226$:
	C$SpriteHorse.c$231$2_2$228	= .
	.globl	C$SpriteHorse.c$231$2_2$228
;SpriteHorse.c:231: }else if(sin > 54 && sin < 78){// tratto come se stesse andando a 66 gradi
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01066$
	bit	7, d
	jr	NZ, 01067$
	cp	a, a
	jr	01067$
01066$:
	bit	7, d
	jr	Z, 01067$
	scf
01067$:
	jr	NC, 00222$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00222$
	C$SpriteHorse.c$232$3_2$239	= .
	.globl	C$SpriteHorse.c$232$3_2$239
;SpriteHorse.c:232: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00231$
00222$:
	C$SpriteHorse.c$233$2_2$228	= .
	.globl	C$SpriteHorse.c$233$2_2$228
;SpriteHorse.c:233: }else if(sin > 78){ // tratto come se stesse andando verticale alto
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01068$
	bit	7, d
	jr	NZ, 01069$
	cp	a, a
	jr	01069$
01068$:
	bit	7, d
	jr	Z, 01069$
	scf
01069$:
	jr	NC, 00219$
	C$SpriteHorse.c$234$3_2$240	= .
	.globl	C$SpriteHorse.c$234$3_2$240
;SpriteHorse.c:234: vy = -2;
	ld	hl, #_vy
	ld	(hl), #0xfe
	jp	00231$
00219$:
	C$SpriteHorse.c$235$2_2$228	= .
	.globl	C$SpriteHorse.c$235$2_2$228
;SpriteHorse.c:235: }else if(sin < 0 && sin > -30){//tratto come se stesse andando orizzontale
	ld	a, b
	or	a, a
	jr	Z, 00215$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01070$
	bit	7, d
	jr	NZ, 01071$
	cp	a, a
	jr	01071$
01070$:
	bit	7, d
	jr	Z, 01071$
	scf
01071$:
	jr	NC, 00215$
	C$SpriteHorse.c$236$3_2$241	= .
	.globl	C$SpriteHorse.c$236$3_2$241
;SpriteHorse.c:236: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jr	00231$
00215$:
	C$SpriteHorse.c$237$2_2$228	= .
	.globl	C$SpriteHorse.c$237$2_2$228
;SpriteHorse.c:237: }else if(sin < -30 && sin > -54){// tratto come se stesse andando a -33 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00211$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01072$
	bit	7, d
	jr	NZ, 01073$
	cp	a, a
	jr	01073$
01072$:
	bit	7, d
	jr	Z, 01073$
	scf
01073$:
	jr	NC, 00211$
	C$SpriteHorse.c$238$3_2$242	= .
	.globl	C$SpriteHorse.c$238$3_2$242
;SpriteHorse.c:238: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00231$
00211$:
	C$SpriteHorse.c$239$2_2$228	= .
	.globl	C$SpriteHorse.c$239$2_2$228
;SpriteHorse.c:239: }else if(sin < -54 && sin > -78){// tratto come se stesse andando a -66 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00207$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01074$
	bit	7, d
	jr	NZ, 01075$
	cp	a, a
	jr	01075$
01074$:
	bit	7, d
	jr	Z, 01075$
	scf
01075$:
	jr	NC, 00207$
	C$SpriteHorse.c$240$3_2$243	= .
	.globl	C$SpriteHorse.c$240$3_2$243
;SpriteHorse.c:240: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00231$
00207$:
	C$SpriteHorse.c$241$2_2$228	= .
	.globl	C$SpriteHorse.c$241$2_2$228
;SpriteHorse.c:241: }else if(sin < -78){ // tratto come se stesse andando verticale basso
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00231$
	C$SpriteHorse.c$242$3_2$244	= .
	.globl	C$SpriteHorse.c$242$3_2$244
;SpriteHorse.c:242: vy = 2;
	ld	hl, #_vy
	ld	(hl), #0x02
00231$:
	C$SpriteHorse.c$245$2_3$245	= .
	.globl	C$SpriteHorse.c$245$2_3$245
;SpriteHorse.c:245: INT8 horse_coll = TranslateSprite(THIS, vx << delta_time, vy << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, (#_vy)
	inc	b
	jr	01077$
01076$:
	add	a, a
01077$:
	dec	b
	jr	NZ,01076$
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	hl, #_vx
	ld	c, (hl)
	inc	b
	jr	01079$
01078$:
	sla	c
01079$:
	dec	b
	jr	NZ,01078$
	push	af
	inc	sp
	ld	a, c
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	C$SpriteHorse.c$247$2_3$245	= .
	.globl	C$SpriteHorse.c$247$2_3$245
;SpriteHorse.c:247: if(horse_coll){//collido con tile ambiente di collisione
	C$SpriteHorse.c$248$3_3$246	= .
	.globl	C$SpriteHorse.c$248$3_3$246
;SpriteHorse.c:248: if(horse_coll == 118 || horse_coll == 119 || horse_coll == 121){//FINE TRACCIA!!
	ld	c,a
	or	a,a
	jr	Z, 00284$
	sub	a, #0x76
	jr	Z, 00236$
	ld	a,c
	cp	a,#0x77
	jr	Z, 00236$
	sub	a, #0x79
	jr	NZ, 00237$
00236$:
	C$SpriteHorse.c$249$4_3$247	= .
	.globl	C$SpriteHorse.c$249$4_3$247
;SpriteHorse.c:249: track_ended = 1u;
	ld	hl, #_track_ended
	ld	(hl), #0x01
	jp	00285$
00237$:
	C$SpriteHorse.c$251$4_3$248	= .
	.globl	C$SpriteHorse.c$251$4_3$248
;SpriteHorse.c:251: past_coll_tile = horse_coll;
	ld	hl, #_past_coll_tile
	ld	(hl), c
	C$SpriteHorse.c$252$4_4$249	= .
	.globl	C$SpriteHorse.c$252$4_4$249
;SpriteHorse.c:252: INT8 vxbounce = vx * (-1); 
	xor	a, a
	ld	hl, #_vx
	sub	a, (hl)
	ld	b, a
	C$SpriteHorse.c$253$4_4$249	= .
	.globl	C$SpriteHorse.c$253$4_4$249
;SpriteHorse.c:253: INT8 vybounce = vy * (-1);
	xor	a, a
	ld	hl, #_vy
	sub	a, (hl)
	ld	c, a
	C$SpriteHorse.c$254$4_4$249	= .
	.globl	C$SpriteHorse.c$254$4_4$249
;SpriteHorse.c:254: if(vx < 2){
	ld	a, (#_vx)
	xor	a, #0x80
	sub	a, #0x82
	jr	NC, 00234$
	C$SpriteHorse.c$255$5_4$250	= .
	.globl	C$SpriteHorse.c$255$5_4$250
;SpriteHorse.c:255: TranslateSprite(THIS, vxbounce << delta_time, 0);
	ld	a, (#_delta_time)
	inc	a
	jr	01085$
01084$:
	sla	b
01085$:
	dec	a
	jr	NZ,01084$
	xor	a, a
	push	af
	inc	sp
	ld	a, b
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00285$
00234$:
	C$SpriteHorse.c$257$5_4$251	= .
	.globl	C$SpriteHorse.c$257$5_4$251
;SpriteHorse.c:257: TranslateSprite(THIS, 0, vybounce << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, c
	inc	b
	jr	01087$
01086$:
	add	a, a
01087$:
	dec	b
	jr	NZ,01086$
	push	af
	inc	sp
	xor	a, a
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00285$
00284$:
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$261$3_3$252	= .
	.globl	C$SpriteHorse.c$261$3_3$252
;SpriteHorse.c:261: UINT8 tile_over = GetScrollTile((THIS->x + 4) >> 3, (THIS->y+4) >> 3);
	ld	hl, #0x000e
	add	hl, bc
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0x04
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
	ldhl	sp,	#7
	ld	(hl), e
	inc	hl
	ld	(hl), d
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ldhl	sp,	#7
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	call	_GetScrollTile
	ldhl	sp,	#0
	ld	(hl), a
	C$SpriteHorse.c$262$3_3$252	= .
	.globl	C$SpriteHorse.c$262$3_3$252
;SpriteHorse.c:262: if(vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jr	Z, 00242$
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	a, (#_THIS)
	ldhl	sp,	#5
	ld	(hl), a
	ld	a, (#_THIS + 1)
	ldhl	sp,	#6
	C$SpriteHorse.c$263$4_3$253	= .
	.globl	C$SpriteHorse.c$263$4_3$253
;SpriteHorse.c:263: tile_over = GetScrollTile((THIS->x + 4) >> 3, (THIS->y+4) >> 3);
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl-), a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	call	_GetScrollTile
	ldhl	sp,	#0
	ld	(hl), a
00242$:
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$268$2_3$194	= .
	.globl	C$SpriteHorse.c$268$2_3$194
;SpriteHorse.c:268: if(onfire_countdown == -1){//non sta impazzendo
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	inc	a
	jr	NZ, 01088$
	inc	hl
	ld	a, (hl)
	inc	a
	ld	a, #0x01
	jr	Z, 01089$
01088$:
	xor	a, a
01089$:
	ldhl	sp,	#1
	ld	(hl), a
	C$SpriteHorse.c$275$2_3$194	= .
	.globl	C$SpriteHorse.c$275$2_3$194
;SpriteHorse.c:275: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01090$
	bit	7, d
	jr	NZ, 01091$
	cp	a, a
	jr	01091$
01090$:
	bit	7, d
	jr	Z, 01091$
	scf
01091$:
	ld	a, #0x00
	rla
	ldhl	sp,	#2
	ld	(hl), a
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	hl, #0x000c
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl), a
	C$SpriteHorse.c$81$2_3$194	= .
	.globl	C$SpriteHorse.c$81$2_3$194
;SpriteHorse.c:81: THIS->y += vy;
	ld	hl, #0x000e
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	C$SpriteHorse.c$271$2_3$194	= .
	.globl	C$SpriteHorse.c$271$2_3$194
;SpriteHorse.c:271: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
	C$SpriteHorse.c$265$3_3$252	= .
	.globl	C$SpriteHorse.c$265$3_3$252
;SpriteHorse.c:265: switch(tile_over){
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x03
	jr	Z, 00243$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x08
	jp	Z,00262$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x09
	jp	Z,00262$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0a
	jp	Z,00262$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0b
	jp	Z,00262$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0c
	jp	Z,00262$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0d
	jp	Z,00262$
	jp	00279$
	C$SpriteHorse.c$266$4_3$254	= .
	.globl	C$SpriteHorse.c$266$4_3$254
;SpriteHorse.c:266: case 3: //ghiaia: incrementa il frameskip
00243$:
	C$SpriteHorse.c$268$4_3$254	= .
	.globl	C$SpriteHorse.c$268$4_3$254
;SpriteHorse.c:268: if(onfire_countdown == -1){//non sta impazzendo
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
	jr	Z, 00245$
	C$SpriteHorse.c$269$5_3$255	= .
	.globl	C$SpriteHorse.c$269$5_3$255
;SpriteHorse.c:269: frm_skip+=4;
	ld	hl, #_frm_skip
	inc	(hl)
	inc	(hl)
	inc	(hl)
	inc	(hl)
00245$:
	C$SpriteHorse.c$271$2_3$194	= .
	.globl	C$SpriteHorse.c$271$2_3$194
;SpriteHorse.c:271: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	cp	a, #0x01
	jr	Z, 00253$
	sub	a, #0x05
	jp	NZ,00254$
00253$:
	C$SpriteHorse.c$272$5_3$256	= .
	.globl	C$SpriteHorse.c$272$5_3$256
;SpriteHorse.c:272: if(orme_spawned == 0){
	ld	a, (#_orme_spawned)
	or	a, a
	jp	NZ, 00285$
	C$SpriteHorse.c$273$6_3$257	= .
	.globl	C$SpriteHorse.c$273$6_3$257
;SpriteHorse.c:273: UINT16 orma_posy = THIS->y-9;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	add	a, #0xf7
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	C$SpriteHorse.c$274$6_3$257	= .
	.globl	C$SpriteHorse.c$274$6_3$257
;SpriteHorse.c:274: orme_spawned = 1;
	ld	hl, #_orme_spawned
	ld	(hl), #0x01
	C$SpriteHorse.c$275$6_3$257	= .
	.globl	C$SpriteHorse.c$275$6_3$257
;SpriteHorse.c:275: if(vx > 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00249$
	C$SpriteHorse.c$276$7_3$258	= .
	.globl	C$SpriteHorse.c$276$7_3$258
;SpriteHorse.c:276: SpriteManagerAdd(SpriteStep, THIS->x - 2, orma_posy);
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	e, l
	ld	d, a
	dec	de
	dec	de
	push	bc
	push	bc
	ld	a, #0x02
	call	_SpriteManagerAdd
	pop	bc
	C$SpriteHorse.c$277$7_3$258	= .
	.globl	C$SpriteHorse.c$277$7_3$258
;SpriteHorse.c:277: SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0x08
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	a, #0x02
	call	_SpriteManagerAdd
	jp	00285$
00249$:
	C$SpriteHorse.c$278$6_3$257	= .
	.globl	C$SpriteHorse.c$278$6_3$257
;SpriteHorse.c:278: }else if(vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jp	Z, 00285$
	C$SpriteHorse.c$279$7_3$259	= .
	.globl	C$SpriteHorse.c$279$7_3$259
;SpriteHorse.c:279: SpriteManagerAdd(SpriteStep, THIS->x, orma_posy);
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	push	bc
	ld	e, l
	ld	d, h
	ld	a, #0x02
	call	_SpriteManagerAdd
	pop	bc
	C$SpriteHorse.c$280$7_3$259	= .
	.globl	C$SpriteHorse.c$280$7_3$259
;SpriteHorse.c:280: SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0x08
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	a, #0x02
	call	_SpriteManagerAdd
	jp	00285$
00254$:
	C$SpriteHorse.c$283$5_3$260	= .
	.globl	C$SpriteHorse.c$283$5_3$260
;SpriteHorse.c:283: }else{orme_spawned = 0;}
	ld	hl, #_orme_spawned
	ld	(hl), #0x00
	C$SpriteHorse.c$284$4_3$254	= .
	.globl	C$SpriteHorse.c$284$4_3$254
;SpriteHorse.c:284: break;
	jp	00285$
	C$SpriteHorse.c$286$4_3$254	= .
	.globl	C$SpriteHorse.c$286$4_3$254
;SpriteHorse.c:286: case 11: case 12: case 13: //acqua: simula pantano limitando stamina
00262$:
	C$SpriteHorse.c$287$4_3$254	= .
	.globl	C$SpriteHorse.c$287$4_3$254
;SpriteHorse.c:287: onwater_countdown = 80;
	ld	hl, #_onwater_countdown
	ld	(hl), #0x50
	C$SpriteHorse.c$288$4_3$254	= .
	.globl	C$SpriteHorse.c$288$4_3$254
;SpriteHorse.c:288: if(onfire_countdown > 0){//sono onfire!
	ld	hl, #_onfire_countdown
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 01102$
	bit	7, d
	jr	NZ, 01103$
	cp	a, a
	jr	01103$
01102$:
	bit	7, d
	jr	Z, 01103$
	scf
01103$:
	jr	NC, 00268$
	C$SpriteHorse.c$289$5_3$261	= .
	.globl	C$SpriteHorse.c$289$5_3$261
;SpriteHorse.c:289: onfire_countdown = 0;
	xor	a, a
	ld	hl, #_onfire_countdown
	ld	(hl+), a
	ld	(hl), a
	jr	00269$
00268$:
	C$SpriteHorse.c$290$4_3$254	= .
	.globl	C$SpriteHorse.c$290$4_3$254
;SpriteHorse.c:290: }else if(onfire_countdown == -1){
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
	jr	Z, 00269$
	C$SpriteHorse.c$291$5_3$262	= .
	.globl	C$SpriteHorse.c$291$5_3$262
;SpriteHorse.c:291: if(stamina_current > (euphoria_min >> 1)){
	ld	a, (#_euphoria_min)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_euphoria_min + 1)
	ldhl	sp,	#1
	ld	(hl), a
	srl	(hl)
	dec	hl
	rr	(hl)
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00269$
	C$SpriteHorse.c$292$6_3$263	= .
	.globl	C$SpriteHorse.c$292$6_3$263
;SpriteHorse.c:292: stamina_current = (euphoria_min >> 1);
	dec	hl
	ld	a, (hl)
	ld	(#_stamina_current),a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(#_stamina_current + 1),a
00269$:
	C$SpriteHorse.c$271$2_3$194	= .
	.globl	C$SpriteHorse.c$271$2_3$194
;SpriteHorse.c:271: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	C$SpriteHorse.c$295$4_3$254	= .
	.globl	C$SpriteHorse.c$295$4_3$254
;SpriteHorse.c:295: if(THIS->anim_frame == 0 || THIS->anim_frame == 2 || THIS->anim_frame == 4){
	or	a, a
	jr	Z, 00274$
	cp	a, #0x02
	jr	Z, 00274$
	sub	a, #0x04
	jr	NZ, 00275$
00274$:
	C$SpriteHorse.c$296$5_3$264	= .
	.globl	C$SpriteHorse.c$296$5_3$264
;SpriteHorse.c:296: if(orme_spawned == 0){
	ld	hl, #_orme_spawned
	ld	a, (hl)
	or	a, a
	jr	NZ, 00285$
	C$SpriteHorse.c$297$6_3$265	= .
	.globl	C$SpriteHorse.c$297$6_3$265
;SpriteHorse.c:297: orme_spawned = 1;
	ld	(hl), #0x01
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	C$SpriteHorse.c$298$6_4$266	= .
	.globl	C$SpriteHorse.c$298$6_4$266
;SpriteHorse.c:298: UINT16 orma0_posx = THIS->x - 2;
	ld	de, #0x0002
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#8
	ld	(hl-), a
	C$SpriteHorse.c$299$6_4$266	= .
	.globl	C$SpriteHorse.c$299$6_4$266
;SpriteHorse.c:299: UINT16 orma_posy = THIS->y-9;
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0xfff7
	add	hl, de
	ld	e, l
	ld	d, h
	C$SpriteHorse.c$300$6_4$266	= .
	.globl	C$SpriteHorse.c$300$6_4$266
;SpriteHorse.c:300: UINT16 orma1_posx = THIS->x + 8;
	ld	hl, #0x0008
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	C$SpriteHorse.c$301$6_4$266	= .
	.globl	C$SpriteHorse.c$301$6_4$266
;SpriteHorse.c:301: if(vx <= 0){
	ldhl	sp,	#2
;	spillPairReg hl
;	spillPairReg hl
	bit	0, (hl)
	jr	NZ, 00271$
	C$SpriteHorse.c$302$7_4$267	= .
	.globl	C$SpriteHorse.c$302$7_4$267
;SpriteHorse.c:302: orma0_posx = THIS->x;
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00271$:
	C$SpriteHorse.c$304$6_5$268	= .
	.globl	C$SpriteHorse.c$304$6_5$268
;SpriteHorse.c:304: Sprite* s_orma0 = SpriteManagerAdd(SpriteStep, orma0_posx, orma_posy);
	push	de
	push	de
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x02
	call	_SpriteManagerAdd
	pop	de
	C$SpriteHorse.c$305$6_5$268	= .
	.globl	C$SpriteHorse.c$305$6_5$268
;SpriteHorse.c:305: struct ItemData* orma0_data = (struct ItemData*)s_orma0->custom_data;
	C$SpriteHorse.c$306$6_5$268	= .
	.globl	C$SpriteHorse.c$306$6_5$268
;SpriteHorse.c:306: orma0_data->configured = 1;
	ld	hl,#0x1e
	add	hl,bc
	ld	(hl), #0x01
	C$SpriteHorse.c$307$6_6$269	= .
	.globl	C$SpriteHorse.c$307$6_6$269
;SpriteHorse.c:307: Sprite* s_orma1 = SpriteManagerAdd(SpriteStep, orma1_posx, orma_posy);
	push	de
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x02
	call	_SpriteManagerAdd
	C$SpriteHorse.c$308$6_6$269	= .
	.globl	C$SpriteHorse.c$308$6_6$269
;SpriteHorse.c:308: struct ItemData* orma1_data = (struct ItemData*) s_orma1->custom_data;
	C$SpriteHorse.c$309$6_6$269	= .
	.globl	C$SpriteHorse.c$309$6_6$269
;SpriteHorse.c:309: orma1_data->configured = 1;
	ld	hl,#0x1e
	add	hl,bc
	ld	(hl), #0x01
	jr	00285$
00275$:
	C$SpriteHorse.c$311$5_3$270	= .
	.globl	C$SpriteHorse.c$311$5_3$270
;SpriteHorse.c:311: }else{orme_spawned = 0;}
	ld	hl, #_orme_spawned
	ld	(hl), #0x00
	C$SpriteHorse.c$312$4_3$254	= .
	.globl	C$SpriteHorse.c$312$4_3$254
;SpriteHorse.c:312: break;
	jr	00285$
	C$SpriteHorse.c$313$4_3$254	= .
	.globl	C$SpriteHorse.c$313$4_3$254
;SpriteHorse.c:313: default:
00279$:
	C$SpriteHorse.c$314$4_3$254	= .
	.globl	C$SpriteHorse.c$314$4_3$254
;SpriteHorse.c:314: if(onfire_countdown == 0){//se ho spento il fuoco con l'acqua rimettimi il countdown negativo
	ld	hl, #_onfire_countdown + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00285$
	C$SpriteHorse.c$315$5_3$271	= .
	.globl	C$SpriteHorse.c$315$5_3$271
;SpriteHorse.c:315: onfire_countdown = -1;
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
	C$SpriteHorse.c$318$2_3$245	= .
	.globl	C$SpriteHorse.c$318$2_3$245
;SpriteHorse.c:318: }
00285$:
	C$SpriteHorse.c$321$2_3$245	= .
	.globl	C$SpriteHorse.c$321$2_3$245
;SpriteHorse.c:321: if(stamina_current < 60){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	sub	a, #0x3c
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 01107$
	bit	7, d
	jr	NZ, 01108$
	cp	a, a
	jr	01108$
01107$:
	bit	7, d
	jr	Z, 01108$
	scf
01108$:
	jr	NC, 00287$
	C$SpriteHorse.c$322$3_3$272	= .
	.globl	C$SpriteHorse.c$322$3_3$272
;SpriteHorse.c:322: SetSpriteAnim(THIS, a_horse_h_idle,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h_idle
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00288$
00287$:
	C$SpriteHorse.c$324$3_3$273	= .
	.globl	C$SpriteHorse.c$324$3_3$273
;SpriteHorse.c:324: SetSpriteAnim(THIS, a_horse_h,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00288$:
	C$SpriteHorse.c$326$2_3$245	= .
	.globl	C$SpriteHorse.c$326$2_3$245
;SpriteHorse.c:326: THIS->anim_speed = stamina_current >> 5;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x08
	ld	c, a
	jr	NC, 01109$
	inc	b
01109$:
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
	ld	a, e
	ld	(bc), a
00290$:
	C$SpriteHorse.c$80$2_3$194	= .
	.globl	C$SpriteHorse.c$80$2_3$194
;SpriteHorse.c:80: THIS->x += vx;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteHorse.c$331$2_3$194	= .
	.globl	C$SpriteHorse.c$331$2_3$194
;SpriteHorse.c:331: THIS->mirror = NO_MIRROR;
	add	a, #0x10
	ld	c, a
	jr	NC, 01110$
	inc	b
01110$:
	C$SpriteHorse.c$330$1_2$227	= .
	.globl	C$SpriteHorse.c$330$1_2$227
;SpriteHorse.c:330: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01111$
	bit	7, d
	jr	NZ, 01112$
	cp	a, a
	jr	01112$
01111$:
	bit	7, d
	jr	Z, 01112$
	scf
01112$:
	jr	NC, 00294$
	C$SpriteHorse.c$331$2_2$274	= .
	.globl	C$SpriteHorse.c$331$2_2$274
;SpriteHorse.c:331: THIS->mirror = NO_MIRROR;
	xor	a, a
	ld	(bc), a
	jr	00295$
00294$:
	C$SpriteHorse.c$332$1_2$227	= .
	.globl	C$SpriteHorse.c$332$1_2$227
;SpriteHorse.c:332: }else if (vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jr	Z, 00295$
	C$SpriteHorse.c$333$2_2$275	= .
	.globl	C$SpriteHorse.c$333$2_2$275
;SpriteHorse.c:333: THIS->mirror = V_MIRROR;
	ld	a, #0x02
	ld	(bc), a
00295$:
	C$SpriteHorse.c$339$2_3$277	= .
	.globl	C$SpriteHorse.c$339$2_3$277
;SpriteHorse.c:339: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
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
	ldhl	sp,	#8
	ld	(hl), #0x00
00307$:
	ld	a, (#_sprite_manager_updatables + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl-)
	sub	a, (hl)
	jp	Z,00309$
	C$SpriteHorse.c$340$3_3$278	= .
	.globl	C$SpriteHorse.c$340$3_3$278
;SpriteHorse.c:340: if(CheckCollision(THIS, iospr)) {
	push	bc
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_CheckCollision
	pop	bc
	or	a, a
	jr	Z, 00308$
	C$SpriteHorse.c$341$4_3$279	= .
	.globl	C$SpriteHorse.c$341$4_3$279
;SpriteHorse.c:341: switch(iospr->type){
	ld	hl, #0x0013
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x05
	jr	NZ, 00308$
	C$SpriteHorse.c$343$5_3$280	= .
	.globl	C$SpriteHorse.c$343$5_3$280
;SpriteHorse.c:343: if(onfire_countdown == -1){//if not already, go onfire!
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	inc	a
	jr	NZ, 00308$
	inc	hl
	ld	a, (hl)
	inc	a
	jr	NZ, 00308$
	C$SpriteHorse.c$344$6_3$281	= .
	.globl	C$SpriteHorse.c$344$6_3$281
;SpriteHorse.c:344: if(weapon_def == CAPE){
	ld	a, (#_weapon_def)
	sub	a, #0x08
	jr	NZ, 00298$
	C$SpriteHorse.c$345$7_3$282	= .
	.globl	C$SpriteHorse.c$345$7_3$282
;SpriteHorse.c:345: use_weapon(1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #b_use_weapon
	ld	hl, #_use_weapon
	call	___sdcc_bcall_ehl
	inc	sp
	C$SpriteHorse.c$346$7_3$282	= .
	.globl	C$SpriteHorse.c$346$7_3$282
;SpriteHorse.c:346: SpriteManagerRemoveSprite(iospr);
	pop	de
	call	_SpriteManagerRemoveSprite
	jr	00308$
00298$:
	C$SpriteHorse.c$348$7_3$283	= .
	.globl	C$SpriteHorse.c$348$7_3$283
;SpriteHorse.c:348: onfire_countdown = ONFIRE_COUNTDOWN_MAX;
	ld	hl, #_onfire_countdown
	ld	a, #0x90
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$349$7_3$283	= .
	.globl	C$SpriteHorse.c$349$7_3$283
;SpriteHorse.c:349: stamina_current = euphoria_min >> 2;
	ld	a, (#_euphoria_min)
	ld	(#_stamina_current),a
	ld	a, (#_euphoria_min + 1)
	ld	hl, #_stamina_current + 1
	ld	(hl), a
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$SpriteHorse.c$350$7_3$283	= .
	.globl	C$SpriteHorse.c$350$7_3$283
;SpriteHorse.c:350: whip_power_over_stamina = 1;
	ld	hl, #_whip_power_over_stamina
	ld	(hl), #0x01
	C$SpriteHorse.c$351$7_3$283	= .
	.globl	C$SpriteHorse.c$351$7_3$283
;SpriteHorse.c:351: s_flame = iospr;
	ld	hl, #_s_flame
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteHorse.c$355$3_3$278	= .
	.globl	C$SpriteHorse.c$355$3_3$278
;SpriteHorse.c:355: }
00308$:
	C$SpriteHorse.c$339$2_3$277	= .
	.globl	C$SpriteHorse.c$339$2_3$277
;SpriteHorse.c:339: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
	ldhl	sp,	#8
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
	jp	00307$
00309$:
	C$SpriteHorse.c$358$2_3$194	= .
	.globl	C$SpriteHorse.c$358$2_3$194
;SpriteHorse.c:358: }
	add	sp, #9
	C$SpriteHorse.c$358$2_3$194	= .
	.globl	C$SpriteHorse.c$358$2_3$194
	XG$Update_SpriteHorse$0$0	= .
	.globl	XG$Update_SpriteHorse$0$0
	ret
	G$Destroy_SpriteHorse$0$0	= .
	.globl	G$Destroy_SpriteHorse$0$0
	C$SpriteHorse.c$360$2_3$285	= .
	.globl	C$SpriteHorse.c$360$2_3$285
;SpriteHorse.c:360: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteHorse
; ---------------------------------
_Destroy_SpriteHorse::
	C$SpriteHorse.c$361$2_3$285	= .
	.globl	C$SpriteHorse.c$361$2_3$285
;SpriteHorse.c:361: }
	C$SpriteHorse.c$361$2_3$285	= .
	.globl	C$SpriteHorse.c$361$2_3$285
	XG$Destroy_SpriteHorse$0$0	= .
	.globl	XG$Destroy_SpriteHorse$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
FSpriteHorse$__xinit_velocity_counter$0_0$0 == .
__xinit__velocity_counter:
	.db #0x02	;  2
FSpriteHorse$__xinit_velocity$0_0$0 == .
__xinit__velocity:
	.db #0x01	;  1
FSpriteHorse$__xinit_vy$0_0$0 == .
__xinit__vy:
	.db #0x00	;  0
FSpriteHorse$__xinit_vx$0_0$0 == .
__xinit__vx:
	.db #0x00	;  0
FSpriteHorse$__xinit_frm_skip$0_0$0 == .
__xinit__frm_skip:
	.db #0x00	;  0
FSpriteHorse$__xinit_whip_power_over_stamina$0_0$0 == .
__xinit__whip_power_over_stamina:
	.db #0x03	;  3
FSpriteHorse$__xinit_whip_counter$0_0$0 == .
__xinit__whip_counter:
	.db #0x00	;  0
FSpriteHorse$__xinit_whip_counter_max$0_0$0 == .
__xinit__whip_counter_max:
	.db #0x24	;  36
FSpriteHorse$__xinit_euphoria_min$0_0$0 == .
__xinit__euphoria_min:
	.dw #0x0190
FSpriteHorse$__xinit_euphoria_max$0_0$0 == .
__xinit__euphoria_max:
	.dw #0x0294
FSpriteHorse$__xinit_stamina_current$0_0$0 == .
__xinit__stamina_current:
	.dw #0x0000
FSpriteHorse$__xinit_stamina_verso$0_0$0 == .
__xinit__stamina_verso:
	.db #0x00	;  0
FSpriteHorse$__xinit_no_whip_counter$0_0$0 == .
__xinit__no_whip_counter:
	.db #0x00	;  0
FSpriteHorse$__xinit_no_whip_over_stamina$0_0$0 == .
__xinit__no_whip_over_stamina:
	.db #0xf8	; -8
FSpriteHorse$__xinit_no_whip_counter_max$0_0$0 == .
__xinit__no_whip_counter_max:
	.db #0x0a	;  10
FSpriteHorse$__xinit_turn$0_0$0 == .
__xinit__turn:
	.db #0x00	; 0
FSpriteHorse$__xinit_sin$0_0$0 == .
__xinit__sin:
	.db #0x00	;  0
FSpriteHorse$__xinit_cos$0_0$0 == .
__xinit__cos:
	.db #0x00	;  0
FSpriteHorse$__xinit_turn_samepressure_counter$0_0$0 == .
__xinit__turn_samepressure_counter:
	.db #0x00	;  0
FSpriteHorse$__xinit_past_coll_tile$0_0$0 == .
__xinit__past_coll_tile:
	.db #0x00	; 0
FSpriteHorse$__xinit_turn_verse$0_0$0 == .
__xinit__turn_verse:
	.db #0x00	; 0
FSpriteHorse$__xinit_orme_spawned$0_0$0 == .
__xinit__orme_spawned:
	.db #0x00	; 0
FSpriteHorse$__xinit_onfire_countdown$0_0$0 == .
__xinit__onfire_countdown:
	.dw #0xffff
FSpriteHorse$__xinit_s_flame$0_0$0 == .
__xinit__s_flame:
	.dw #0x0000
FSpriteHorse$__xinit_onwater_countdown$0_0$0 == .
__xinit__onwater_countdown:
	.db #0xff	; -1
	.area _CABS (ABS)
