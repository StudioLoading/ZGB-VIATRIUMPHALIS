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
	.globl _SpriteManagerRemoveSprite
	.globl _SpriteManagerAdd
	.globl _GetScrollTile
	.globl _CheckCollision
	.globl _TranslateSprite
	.globl _SetSpriteAnim
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
	C$SpriteHorse.c$62$0_0$191	= .
	.globl	C$SpriteHorse.c$62$0_0$191
;SpriteHorse.c:62: void START() {
;	---------------------------------
; Function Start_SpriteHorse
; ---------------------------------
_Start_SpriteHorse::
	C$SpriteHorse.c$63$1_0$191	= .
	.globl	C$SpriteHorse.c$63$1_0$191
;SpriteHorse.c:63: SetSpriteAnim(THIS, a_horse_h, 16u);
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteHorse.c$64$1_0$191	= .
	.globl	C$SpriteHorse.c$64$1_0$191
;SpriteHorse.c:64: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$65$1_0$191	= .
	.globl	C$SpriteHorse.c$65$1_0$191
;SpriteHorse.c:65: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteHorse.c$66$1_0$191	= .
	.globl	C$SpriteHorse.c$66$1_0$191
;SpriteHorse.c:66: THIS->lim_y = 500;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xf4
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$67$1_0$191	= .
	.globl	C$SpriteHorse.c$67$1_0$191
;SpriteHorse.c:67: onfire_countdown = -1;
	ld	hl, #_onfire_countdown
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
	C$SpriteHorse.c$68$1_0$191	= .
	.globl	C$SpriteHorse.c$68$1_0$191
;SpriteHorse.c:68: }
	C$SpriteHorse.c$68$1_0$191	= .
	.globl	C$SpriteHorse.c$68$1_0$191
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
	C$SpriteHorse.c$70$1_0$192	= .
	.globl	C$SpriteHorse.c$70$1_0$192
;SpriteHorse.c:70: void UPDATE() {
;	---------------------------------
; Function Update_SpriteHorse
; ---------------------------------
_Update_SpriteHorse::
	add	sp, #-9
	C$SpriteHorse.c$76$2_3$192	= .
	.globl	C$SpriteHorse.c$76$2_3$192
;SpriteHorse.c:76: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter_max
	ld	c, (hl)
	C$SpriteHorse.c$72$1_0$192	= .
	.globl	C$SpriteHorse.c$72$1_0$192
;SpriteHorse.c:72: if(whip_counter <= 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00959$
	bit	7, d
	jr	NZ, 00960$
	cp	a, a
	jr	00960$
00959$:
	bit	7, d
	jr	Z, 00960$
	scf
00960$:
	jr	C, 00106$
	C$SpriteHorse.c$73$2_0$193	= .
	.globl	C$SpriteHorse.c$73$2_0$193
;SpriteHorse.c:73: if(KEY_TICKED(J_WHIP)){
	ld	a, (#_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	Z, 00102$
	ld	a, (#_previous_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	NZ, 00102$
	C$SpriteHorse.c$74$3_0$194	= .
	.globl	C$SpriteHorse.c$74$3_0$194
;SpriteHorse.c:74: stamina_verso = 1;
	ld	hl, #_stamina_verso
	ld	(hl), #0x01
	C$SpriteHorse.c$75$3_0$194	= .
	.globl	C$SpriteHorse.c$75$3_0$194
;SpriteHorse.c:75: whip_counter = whip_counter_max;
	ld	a, (#_whip_counter_max)
	ld	(#_whip_counter),a
	C$SpriteHorse.c$76$3_0$194	= .
	.globl	C$SpriteHorse.c$76$3_0$194
;SpriteHorse.c:76: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
	jr	00107$
00102$:
	C$SpriteHorse.c$78$3_0$195	= .
	.globl	C$SpriteHorse.c$78$3_0$195
;SpriteHorse.c:78: stamina_verso = -1;
	ld	hl, #_stamina_verso
	ld	(hl), #0xff
	jr	00107$
00106$:
	C$SpriteHorse.c$81$2_0$196	= .
	.globl	C$SpriteHorse.c$81$2_0$196
;SpriteHorse.c:81: whip_counter--;
	ld	hl, #_whip_counter
	dec	(hl)
00107$:
	C$SpriteHorse.c$83$1_0$192	= .
	.globl	C$SpriteHorse.c$83$1_0$192
;SpriteHorse.c:83: if(whip_counter > 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00961$
	bit	7, d
	jr	NZ, 00962$
	cp	a, a
	jr	00962$
00961$:
	bit	7, d
	jr	Z, 00962$
	scf
00962$:
	jr	NC, 00113$
	C$SpriteHorse.c$84$2_3$192	= .
	.globl	C$SpriteHorse.c$84$2_3$192
;SpriteHorse.c:84: stamina_current += (whip_power_over_stamina * stamina_verso);
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
	jr	00114$
00113$:
	C$SpriteHorse.c$86$2_0$198	= .
	.globl	C$SpriteHorse.c$86$2_0$198
;SpriteHorse.c:86: if(no_whip_counter > 0){
	ld	hl, #_no_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00963$
	bit	7, d
	jr	NZ, 00964$
	cp	a, a
	jr	00964$
00963$:
	bit	7, d
	jr	Z, 00964$
	scf
00964$:
	jr	NC, 00114$
	C$SpriteHorse.c$87$3_0$199	= .
	.globl	C$SpriteHorse.c$87$3_0$199
;SpriteHorse.c:87: no_whip_counter--;
	ld	hl, #_no_whip_counter
	C$SpriteHorse.c$88$3_0$199	= .
	.globl	C$SpriteHorse.c$88$3_0$199
;SpriteHorse.c:88: if(no_whip_counter == 0){
	dec	(hl)
	jr	NZ, 00114$
	C$SpriteHorse.c$89$4_0$200	= .
	.globl	C$SpriteHorse.c$89$4_0$200
;SpriteHorse.c:89: stamina_current += no_whip_over_stamina;
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
	C$SpriteHorse.c$90$4_0$200	= .
	.globl	C$SpriteHorse.c$90$4_0$200
;SpriteHorse.c:90: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
00114$:
	C$SpriteHorse.c$95$1_0$192	= .
	.globl	C$SpriteHorse.c$95$1_0$192
;SpriteHorse.c:95: if(stamina_current < 0){
	ld	hl, #_stamina_current + 1
	bit	7, (hl)
	jr	Z, 00116$
	C$SpriteHorse.c$96$2_0$201	= .
	.globl	C$SpriteHorse.c$96$2_0$201
;SpriteHorse.c:96: stamina_current = 0;
	dec	hl
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00116$:
	C$SpriteHorse.c$98$1_0$192	= .
	.globl	C$SpriteHorse.c$98$1_0$192
;SpriteHorse.c:98: if(stamina_current > STAMINA_MAX){
	ld	hl, #_stamina_current
	ld	a, #0xc0
	sub	a, (hl)
	inc	hl
	ld	a, #0x03
	sbc	a, (hl)
	ld	a, #0x03
	ld	d, a
	bit	7, (hl)
	jr	Z, 00965$
	bit	7, d
	jr	NZ, 00966$
	cp	a, a
	jr	00966$
00965$:
	bit	7, d
	jr	Z, 00966$
	scf
00966$:
	jr	NC, 00118$
	C$SpriteHorse.c$99$2_0$202	= .
	.globl	C$SpriteHorse.c$99$2_0$202
;SpriteHorse.c:99: stamina_current = STAMINA_MAX;
	ld	hl, #_stamina_current
	ld	a, #0xc0
	ld	(hl+), a
	ld	(hl), #0x03
00118$:
	C$SpriteHorse.c$102$2_0$203	= .
	.globl	C$SpriteHorse.c$102$2_0$203
;SpriteHorse.c:102: INT16 delta_stamina_euphoria = 0;
	ld	bc, #0x0000
	C$SpriteHorse.c$103$1_1$203	= .
	.globl	C$SpriteHorse.c$103$1_1$203
;SpriteHorse.c:103: if(stamina_current > euphoria_max){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_euphoria_max
	ld	a, (hl+)
	sub	a, e
	ld	a, (hl)
	sbc	a, d
	jr	NC, 00122$
	C$SpriteHorse.c$104$2_1$204	= .
	.globl	C$SpriteHorse.c$104$2_1$204
;SpriteHorse.c:104: delta_stamina_euphoria = stamina_current - euphoria_max;
	dec	hl
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, d
	sbc	a, (hl)
	ld	b, a
	jr	00123$
00122$:
	C$SpriteHorse.c$105$1_1$203	= .
	.globl	C$SpriteHorse.c$105$1_1$203
;SpriteHorse.c:105: }else if(stamina_current < euphoria_min){
	ld	hl, #_euphoria_min
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jr	NC, 00123$
	C$SpriteHorse.c$106$2_1$205	= .
	.globl	C$SpriteHorse.c$106$2_1$205
;SpriteHorse.c:106: delta_stamina_euphoria = euphoria_min - stamina_current;
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	sub	a, e
	ld	c, a
	ld	a, (hl)
	sbc	a, d
	ld	b, a
00123$:
	C$SpriteHorse.c$108$1_1$203	= .
	.globl	C$SpriteHorse.c$108$1_1$203
;SpriteHorse.c:108: if(delta_stamina_euphoria > 32){
	ld	e, b
	ld	d, #0x00
	ld	a, #0x20
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00967$
	bit	7, d
	jr	NZ, 00968$
	cp	a, a
	jr	00968$
00967$:
	bit	7, d
	jr	Z, 00968$
	scf
00968$:
	jr	NC, 00125$
	C$SpriteHorse.c$109$2_1$206	= .
	.globl	C$SpriteHorse.c$109$2_1$206
;SpriteHorse.c:109: velocity_counter = delta_stamina_euphoria >> 4;
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
	jr	00126$
00125$:
	C$SpriteHorse.c$111$2_1$207	= .
	.globl	C$SpriteHorse.c$111$2_1$207
;SpriteHorse.c:111: velocity_counter = 2;
	ld	hl, #_velocity_counter
	ld	(hl), #0x02
00126$:
	C$SpriteHorse.c$114$1_1$203	= .
	.globl	C$SpriteHorse.c$114$1_1$203
;SpriteHorse.c:114: if(onfire_countdown > 0){//sta impazzendo
	ld	hl, #_onfire_countdown
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00969$
	bit	7, d
	jr	NZ, 00970$
	cp	a, a
	jr	00970$
00969$:
	bit	7, d
	jr	Z, 00970$
	scf
00970$:
	jp	NC, 00144$
	C$SpriteHorse.c$115$2_1$208	= .
	.globl	C$SpriteHorse.c$115$2_1$208
;SpriteHorse.c:115: onfire_countdown--;
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	C$SpriteHorse.c$116$2_1$208	= .
	.globl	C$SpriteHorse.c$116$2_1$208
;SpriteHorse.c:116: switch(onfire_countdown){
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	sub	a, #0x32
	or	a, (hl)
	jr	Z, 00133$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0x64
	or	a, (hl)
	jr	Z, 00133$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0x96
	or	a, (hl)
	jr	Z, 00133$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0xc8
	or	a, (hl)
	jr	Z, 00133$
	ld	hl, #_onfire_countdown
	ld	a, (hl+)
	sub	a, #0xfa
	or	a, (hl)
	jr	Z, 00133$
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	sub	a, #0x2c
	jr	NZ, 00976$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	Z, 00133$
00976$:
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	sub	a, #0x5e
	jr	NZ, 00134$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00134$
	C$SpriteHorse.c$118$3_1$209	= .
	.globl	C$SpriteHorse.c$118$3_1$209
;SpriteHorse.c:118: case 200: case 250: case 300: case 350:
00133$:
	C$SpriteHorse.c$119$3_1$209	= .
	.globl	C$SpriteHorse.c$119$3_1$209
;SpriteHorse.c:119: hp_current--;
	ld	hl, #_hp_current
	dec	(hl)
	C$SpriteHorse.c$121$2_1$208	= .
	.globl	C$SpriteHorse.c$121$2_1$208
;SpriteHorse.c:121: }
00134$:
	C$SpriteHorse.c$122$2_1$208	= .
	.globl	C$SpriteHorse.c$122$2_1$208
;SpriteHorse.c:122: velocity_counter = 1;//cioè vai a cannone
	ld	hl, #_velocity_counter
	ld	(hl), #0x01
	C$SpriteHorse.c$123$2_1$208	= .
	.globl	C$SpriteHorse.c$123$2_1$208
;SpriteHorse.c:123: stamina_current = EUPHORIA_MAX+1;//fissa la stamina a euphoria_max
	ld	hl, #_stamina_current
	ld	a, #0x95
	ld	(hl+), a
	ld	(hl), #0x02
	C$SpriteHorse.c$124$2_1$208	= .
	.globl	C$SpriteHorse.c$124$2_1$208
;SpriteHorse.c:124: s_flame->x = THIS->x +2;
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0c
	ld	c, a
	jr	NC, 00979$
	inc	b
00979$:
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
	C$SpriteHorse.c$125$2_1$208	= .
	.globl	C$SpriteHorse.c$125$2_1$208
;SpriteHorse.c:125: s_flame->y = THIS->y-7;
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00980$
	inc	b
00980$:
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
	C$SpriteHorse.c$126$2_1$208	= .
	.globl	C$SpriteHorse.c$126$2_1$208
;SpriteHorse.c:126: if(weapon_def == CAPE){
	ld	a, (#_weapon_def)
	sub	a, #0x08
	jr	NZ, 00145$
	C$SpriteHorse.c$127$3_1$210	= .
	.globl	C$SpriteHorse.c$127$3_1$210
;SpriteHorse.c:127: use_weapon(1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #b_use_weapon
	ld	hl, #_use_weapon
	call	___sdcc_bcall_ehl
	inc	sp
	C$SpriteHorse.c$128$3_1$210	= .
	.globl	C$SpriteHorse.c$128$3_1$210
;SpriteHorse.c:128: SpriteManagerRemoveSprite(s_flame);
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
	C$SpriteHorse.c$129$3_1$210	= .
	.globl	C$SpriteHorse.c$129$3_1$210
;SpriteHorse.c:129: onfire_countdown = 2;
	ld	hl, #_onfire_countdown
	ld	a, #0x02
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00145$
00144$:
	C$SpriteHorse.c$132$2_1$211	= .
	.globl	C$SpriteHorse.c$132$2_1$211
;SpriteHorse.c:132: if(euphoria_min != EUPHORIA_MIN){
	ld	hl, #_euphoria_min
	ld	a, (hl)
	sub	a, #0x90
	jr	NZ, 00983$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	Z, 00138$
00983$:
	C$SpriteHorse.c$133$3_1$212	= .
	.globl	C$SpriteHorse.c$133$3_1$212
;SpriteHorse.c:133: euphoria_min = EUPHORIA_MIN;
	ld	hl, #_euphoria_min
	ld	a, #0x90
	ld	(hl+), a
	ld	(hl), #0x01
00138$:
	C$SpriteHorse.c$135$2_1$211	= .
	.globl	C$SpriteHorse.c$135$2_1$211
;SpriteHorse.c:135: if(euphoria_max != EUPHORIA_MAX){
	ld	hl, #_euphoria_max
	ld	a, (hl)
	sub	a, #0x94
	jr	NZ, 00984$
	inc	hl
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00140$
00984$:
	C$SpriteHorse.c$136$3_1$213	= .
	.globl	C$SpriteHorse.c$136$3_1$213
;SpriteHorse.c:136: euphoria_max = EUPHORIA_MAX;
	ld	hl, #_euphoria_max
	ld	a, #0x94
	ld	(hl+), a
	ld	(hl), #0x02
00140$:
	C$SpriteHorse.c$138$2_1$211	= .
	.globl	C$SpriteHorse.c$138$2_1$211
;SpriteHorse.c:138: if(whip_power_over_stamina != WHIP_POWER){//se entro qui, sto risistemando la whip ed è appena terminato l'onfire.
	ld	a, (#_whip_power_over_stamina)
	sub	a, #0x03
	jr	Z, 00145$
	C$SpriteHorse.c$139$3_1$214	= .
	.globl	C$SpriteHorse.c$139$3_1$214
;SpriteHorse.c:139: whip_power_over_stamina = WHIP_POWER;
	ld	hl, #_whip_power_over_stamina
	ld	(hl), #0x03
	C$SpriteHorse.c$140$3_1$214	= .
	.globl	C$SpriteHorse.c$140$3_1$214
;SpriteHorse.c:140: stamina_current = (EUPHORIA_MIN - (EUPHORIA_MIN >> 3));
	ld	hl, #_stamina_current
	ld	a, #0x5e
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$141$3_1$214	= .
	.globl	C$SpriteHorse.c$141$3_1$214
;SpriteHorse.c:141: SpriteManagerRemoveSprite(s_flame);
	ld	hl, #_s_flame
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
00145$:
	C$SpriteHorse.c$146$2_3$192	= .
	.globl	C$SpriteHorse.c$146$2_3$192
;SpriteHorse.c:146: if(KEY_RELEASED(J_RIGHT) || KEY_RELEASED(J_LEFT)){
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
	jr	Z, 00150$
	or	a, a
	jr	Z, 00146$
00150$:
	bit	1, c
	jr	Z, 00147$
	inc	e
	dec	e
	jr	NZ, 00147$
00146$:
	C$SpriteHorse.c$147$2_1$215	= .
	.globl	C$SpriteHorse.c$147$2_1$215
;SpriteHorse.c:147: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
	C$SpriteHorse.c$148$2_1$215	= .
	.globl	C$SpriteHorse.c$148$2_1$215
;SpriteHorse.c:148: hud_turn_cooldown = HUD_TURN_COOLDOWN_MAX;
	ld	hl, #_hud_turn_cooldown
	ld	(hl), #0x14
00147$:
	C$SpriteHorse.c$154$2_3$192	= .
	.globl	C$SpriteHorse.c$154$2_3$192
;SpriteHorse.c:154: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	d, (hl)
	inc	d
	C$SpriteHorse.c$151$1_1$203	= .
	.globl	C$SpriteHorse.c$151$1_1$203
;SpriteHorse.c:151: if(KEY_PRESSED(J_RIGHT)){
	or	a, a
	jr	Z, 00163$
	C$SpriteHorse.c$152$2_1$216	= .
	.globl	C$SpriteHorse.c$152$2_1$216
;SpriteHorse.c:152: turn_verse = CLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x01
	C$SpriteHorse.c$153$2_1$216	= .
	.globl	C$SpriteHorse.c$153$2_1$216
;SpriteHorse.c:153: turn--;
	ld	hl, #_turn
	dec	(hl)
	C$SpriteHorse.c$154$2_1$216	= .
	.globl	C$SpriteHorse.c$154$2_1$216
;SpriteHorse.c:154: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$155$2_1$216	= .
	.globl	C$SpriteHorse.c$155$2_1$216
;SpriteHorse.c:155: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0xa8
	jp	C, 00164$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00988$
	bit	7, d
	jr	NZ, 00989$
	cp	a, a
	jr	00989$
00988$:
	bit	7, d
	jr	Z, 00989$
	scf
00989$:
	jr	NC, 00155$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	C, 00151$
00155$:
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00164$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00990$
	bit	7, d
	jr	NZ, 00991$
	cp	a, a
	jr	00991$
00990$:
	bit	7, d
	jr	Z, 00991$
	scf
00991$:
	jr	NC, 00164$
00151$:
	C$SpriteHorse.c$156$3_1$217	= .
	.globl	C$SpriteHorse.c$156$3_1$217
;SpriteHorse.c:156: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$157$3_1$217	= .
	.globl	C$SpriteHorse.c$157$3_1$217
;SpriteHorse.c:157: turn-=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0xfe
	ld	(hl), a
	jr	00164$
00163$:
	C$SpriteHorse.c$159$1_1$203	= .
	.globl	C$SpriteHorse.c$159$1_1$203
;SpriteHorse.c:159: }else if(KEY_PRESSED(J_LEFT)){
	ld	a, e
	or	a, a
	jr	Z, 00160$
	C$SpriteHorse.c$160$2_1$218	= .
	.globl	C$SpriteHorse.c$160$2_1$218
;SpriteHorse.c:160: turn_verse = COUNTERCLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x02
	C$SpriteHorse.c$161$2_1$218	= .
	.globl	C$SpriteHorse.c$161$2_1$218
;SpriteHorse.c:161: turn++;
	ld	hl, #_turn
	inc	(hl)
	C$SpriteHorse.c$162$2_1$218	= .
	.globl	C$SpriteHorse.c$162$2_1$218
;SpriteHorse.c:162: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$163$2_1$218	= .
	.globl	C$SpriteHorse.c$163$2_1$218
;SpriteHorse.c:163: if(turn_samepressure_counter > 40){
	ld	e, (hl)
	ld	a,#0x28
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00992$
	bit	7, d
	jr	NZ, 00993$
	cp	a, a
	jr	00993$
00992$:
	bit	7, d
	jr	Z, 00993$
	scf
00993$:
	jr	NC, 00164$
	C$SpriteHorse.c$164$3_1$219	= .
	.globl	C$SpriteHorse.c$164$3_1$219
;SpriteHorse.c:164: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$165$3_1$219	= .
	.globl	C$SpriteHorse.c$165$3_1$219
;SpriteHorse.c:165: turn+=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00164$
00160$:
	C$SpriteHorse.c$168$2_1$220	= .
	.globl	C$SpriteHorse.c$168$2_1$220
;SpriteHorse.c:168: turn_verse = NONE; 
	ld	hl, #_turn_verse
	ld	(hl), #0x00
00164$:
	C$SpriteHorse.c$170$1_1$203	= .
	.globl	C$SpriteHorse.c$170$1_1$203
;SpriteHorse.c:170: if(KEY_TICKED(J_UP)){
	bit	2, b
	jr	Z, 00166$
	bit	2, c
	jr	NZ, 00166$
	C$SpriteHorse.c$171$2_1$221	= .
	.globl	C$SpriteHorse.c$171$2_1$221
;SpriteHorse.c:171: turn = 64;
	ld	hl, #_turn
	ld	(hl), #0x40
	C$SpriteHorse.c$172$2_1$221	= .
	.globl	C$SpriteHorse.c$172$2_1$221
;SpriteHorse.c:172: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00166$:
	C$SpriteHorse.c$174$1_1$203	= .
	.globl	C$SpriteHorse.c$174$1_1$203
;SpriteHorse.c:174: if(KEY_TICKED(J_DOWN)){
	bit	3, b
	jr	Z, 00169$
	bit	3, c
	jr	NZ, 00169$
	C$SpriteHorse.c$175$2_1$222	= .
	.globl	C$SpriteHorse.c$175$2_1$222
;SpriteHorse.c:175: turn = 192;
	ld	hl, #_turn
	ld	(hl), #0xc0
	C$SpriteHorse.c$176$2_1$222	= .
	.globl	C$SpriteHorse.c$176$2_1$222
;SpriteHorse.c:176: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00169$:
	C$SpriteHorse.c$178$1_1$203	= .
	.globl	C$SpriteHorse.c$178$1_1$203
;SpriteHorse.c:178: sin = sine_wave[turn];
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
	C$SpriteHorse.c$179$1_2$223	= .
	.globl	C$SpriteHorse.c$179$1_2$223
;SpriteHorse.c:179: UINT8 cos_idx = turn+64;
	ld	a, (#_turn)
	add	a, #0x40
	C$SpriteHorse.c$180$1_2$223	= .
	.globl	C$SpriteHorse.c$180$1_2$223
;SpriteHorse.c:180: cos = sine_wave[cos_idx];
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#_cos),a
	C$SpriteHorse.c$183$1_2$223	= .
	.globl	C$SpriteHorse.c$183$1_2$223
;SpriteHorse.c:183: frm_skip--;
	ld	hl, #_frm_skip
	C$SpriteHorse.c$184$1_2$223	= .
	.globl	C$SpriteHorse.c$184$1_2$223
;SpriteHorse.c:184: if(frm_skip == 0){
	dec	(hl)
	jp	NZ, 00279$
	C$SpriteHorse.c$185$2_2$224	= .
	.globl	C$SpriteHorse.c$185$2_2$224
;SpriteHorse.c:185: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$192$2_3$192	= .
	.globl	C$SpriteHorse.c$192$2_3$192
;SpriteHorse.c:192: if(cos >= 0 && cos <= 30){//tratto come se stesse andando verticale
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
	jr	Z, 01000$
	bit	7, d
	jr	NZ, 01001$
	cp	a, a
	jr	01001$
01000$:
	bit	7, d
	jr	Z, 01001$
	scf
01001$:
	ld	a, #0x00
	rla
	bit	0, c
	jr	NZ, 00197$
	or	a, a
	jr	NZ, 00197$
	C$SpriteHorse.c$193$3_2$225	= .
	.globl	C$SpriteHorse.c$193$3_2$225
;SpriteHorse.c:193: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jp	00198$
00197$:
	C$SpriteHorse.c$194$2_2$224	= .
	.globl	C$SpriteHorse.c$194$2_2$224
;SpriteHorse.c:194: }else if(cos > 30 && cos < 54){// tratto come se stesse andando a 66 gradi
	or	a, a
	jr	Z, 00193$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00193$
	C$SpriteHorse.c$195$3_2$226	= .
	.globl	C$SpriteHorse.c$195$3_2$226
;SpriteHorse.c:195: vx = 1;
	ld	hl, #_vx
	ld	(hl), #0x01
	jp	00198$
00193$:
	C$SpriteHorse.c$196$2_2$224	= .
	.globl	C$SpriteHorse.c$196$2_2$224
;SpriteHorse.c:196: }else if(cos > 54 && cos < 78){// tratto come se stesse andando a 33 gradi
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01002$
	bit	7, d
	jr	NZ, 01003$
	cp	a, a
	jr	01003$
01002$:
	bit	7, d
	jr	Z, 01003$
	scf
01003$:
	jr	NC, 00189$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00189$
	C$SpriteHorse.c$197$3_2$227	= .
	.globl	C$SpriteHorse.c$197$3_2$227
;SpriteHorse.c:197: vx = 2;
	ld	hl, #_vx
	ld	(hl), #0x02
	jp	00198$
00189$:
	C$SpriteHorse.c$198$2_2$224	= .
	.globl	C$SpriteHorse.c$198$2_2$224
;SpriteHorse.c:198: }else if(cos > 78){ // tratto come se stesse andando orizzontale destra
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01004$
	bit	7, d
	jr	NZ, 01005$
	cp	a, a
	jr	01005$
01004$:
	bit	7, d
	jr	Z, 01005$
	scf
01005$:
	jr	NC, 00186$
	C$SpriteHorse.c$199$3_2$228	= .
	.globl	C$SpriteHorse.c$199$3_2$228
;SpriteHorse.c:199: vx = 3;
	ld	hl, #_vx
	ld	(hl), #0x03
	jp	00198$
00186$:
	C$SpriteHorse.c$200$2_2$224	= .
	.globl	C$SpriteHorse.c$200$2_2$224
;SpriteHorse.c:200: }else if(cos < 0 && cos > -30){//tratto come se stesse andando verticale
	ld	a, c
	or	a, a
	jr	Z, 00182$
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01006$
	bit	7, d
	jr	NZ, 01007$
	cp	a, a
	jr	01007$
01006$:
	bit	7, d
	jr	Z, 01007$
	scf
01007$:
	jr	NC, 00182$
	C$SpriteHorse.c$201$3_2$229	= .
	.globl	C$SpriteHorse.c$201$3_2$229
;SpriteHorse.c:201: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jr	00198$
00182$:
	C$SpriteHorse.c$202$2_2$224	= .
	.globl	C$SpriteHorse.c$202$2_2$224
;SpriteHorse.c:202: }else if(cos < -30 && cos > -54){// tratto come se stesse andando a 66 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00178$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01008$
	bit	7, d
	jr	NZ, 01009$
	cp	a, a
	jr	01009$
01008$:
	bit	7, d
	jr	Z, 01009$
	scf
01009$:
	jr	NC, 00178$
	C$SpriteHorse.c$203$3_2$230	= .
	.globl	C$SpriteHorse.c$203$3_2$230
;SpriteHorse.c:203: vx = -1;
	ld	hl, #_vx
	ld	(hl), #0xff
	jr	00198$
00178$:
	C$SpriteHorse.c$204$2_2$224	= .
	.globl	C$SpriteHorse.c$204$2_2$224
;SpriteHorse.c:204: }else if(cos < -54 && cos > -78){// tratto come se stesse andando a 33 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00174$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01010$
	bit	7, d
	jr	NZ, 01011$
	cp	a, a
	jr	01011$
01010$:
	bit	7, d
	jr	Z, 01011$
	scf
01011$:
	jr	NC, 00174$
	C$SpriteHorse.c$205$3_2$231	= .
	.globl	C$SpriteHorse.c$205$3_2$231
;SpriteHorse.c:205: vx = -2;
	ld	hl, #_vx
	ld	(hl), #0xfe
	jr	00198$
00174$:
	C$SpriteHorse.c$206$2_2$224	= .
	.globl	C$SpriteHorse.c$206$2_2$224
;SpriteHorse.c:206: }else if(cos < -78){ // tratto come se stesse andando orizzontale sinistra
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00198$
	C$SpriteHorse.c$207$3_2$232	= .
	.globl	C$SpriteHorse.c$207$3_2$232
;SpriteHorse.c:207: vx = -3;
	ld	hl, #_vx
	ld	(hl), #0xfd
00198$:
	C$SpriteHorse.c$155$2_3$192	= .
	.globl	C$SpriteHorse.c$155$2_3$192
;SpriteHorse.c:155: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01012$
	bit	7, d
	jr	NZ, 01013$
	cp	a, a
	jr	01013$
01012$:
	bit	7, d
	jr	Z, 01013$
	scf
01013$:
	ld	a, #0x00
	rla
	ld	c, a
	C$SpriteHorse.c$210$2_3$192	= .
	.globl	C$SpriteHorse.c$210$2_3$192
;SpriteHorse.c:210: if(sin >= 0 && sin <= 30){//tratto come se stesse andando orizzontale
	ld	a, (#_sin)
	rlca
	and	a,#0x01
	ld	b, a
	bit	0, b
	jr	NZ, 00226$
	ld	e, c
	bit	0, e
	jr	NZ, 00226$
	C$SpriteHorse.c$211$3_2$233	= .
	.globl	C$SpriteHorse.c$211$3_2$233
;SpriteHorse.c:211: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jp	00227$
00226$:
	C$SpriteHorse.c$212$2_2$224	= .
	.globl	C$SpriteHorse.c$212$2_2$224
;SpriteHorse.c:212: }else if(sin > 30 && sin < 54){// tratto come se stesse andando a 33 gradi
	ld	a, c
	or	a, a
	jr	Z, 00222$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00222$
	C$SpriteHorse.c$213$3_2$234	= .
	.globl	C$SpriteHorse.c$213$3_2$234
;SpriteHorse.c:213: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00227$
00222$:
	C$SpriteHorse.c$214$2_2$224	= .
	.globl	C$SpriteHorse.c$214$2_2$224
;SpriteHorse.c:214: }else if(sin > 54 && sin < 78){// tratto come se stesse andando a 66 gradi
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01014$
	bit	7, d
	jr	NZ, 01015$
	cp	a, a
	jr	01015$
01014$:
	bit	7, d
	jr	Z, 01015$
	scf
01015$:
	jr	NC, 00218$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00218$
	C$SpriteHorse.c$215$3_2$235	= .
	.globl	C$SpriteHorse.c$215$3_2$235
;SpriteHorse.c:215: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00227$
00218$:
	C$SpriteHorse.c$216$2_2$224	= .
	.globl	C$SpriteHorse.c$216$2_2$224
;SpriteHorse.c:216: }else if(sin > 78){ // tratto come se stesse andando verticale alto
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01016$
	bit	7, d
	jr	NZ, 01017$
	cp	a, a
	jr	01017$
01016$:
	bit	7, d
	jr	Z, 01017$
	scf
01017$:
	jr	NC, 00215$
	C$SpriteHorse.c$217$3_2$236	= .
	.globl	C$SpriteHorse.c$217$3_2$236
;SpriteHorse.c:217: vy = -2;
	ld	hl, #_vy
	ld	(hl), #0xfe
	jp	00227$
00215$:
	C$SpriteHorse.c$218$2_2$224	= .
	.globl	C$SpriteHorse.c$218$2_2$224
;SpriteHorse.c:218: }else if(sin < 0 && sin > -30){//tratto come se stesse andando orizzontale
	ld	a, b
	or	a, a
	jr	Z, 00211$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01018$
	bit	7, d
	jr	NZ, 01019$
	cp	a, a
	jr	01019$
01018$:
	bit	7, d
	jr	Z, 01019$
	scf
01019$:
	jr	NC, 00211$
	C$SpriteHorse.c$219$3_2$237	= .
	.globl	C$SpriteHorse.c$219$3_2$237
;SpriteHorse.c:219: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jr	00227$
00211$:
	C$SpriteHorse.c$220$2_2$224	= .
	.globl	C$SpriteHorse.c$220$2_2$224
;SpriteHorse.c:220: }else if(sin < -30 && sin > -54){// tratto come se stesse andando a -33 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00207$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01020$
	bit	7, d
	jr	NZ, 01021$
	cp	a, a
	jr	01021$
01020$:
	bit	7, d
	jr	Z, 01021$
	scf
01021$:
	jr	NC, 00207$
	C$SpriteHorse.c$221$3_2$238	= .
	.globl	C$SpriteHorse.c$221$3_2$238
;SpriteHorse.c:221: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00227$
00207$:
	C$SpriteHorse.c$222$2_2$224	= .
	.globl	C$SpriteHorse.c$222$2_2$224
;SpriteHorse.c:222: }else if(sin < -54 && sin > -78){// tratto come se stesse andando a -66 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00203$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01022$
	bit	7, d
	jr	NZ, 01023$
	cp	a, a
	jr	01023$
01022$:
	bit	7, d
	jr	Z, 01023$
	scf
01023$:
	jr	NC, 00203$
	C$SpriteHorse.c$223$3_2$239	= .
	.globl	C$SpriteHorse.c$223$3_2$239
;SpriteHorse.c:223: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00227$
00203$:
	C$SpriteHorse.c$224$2_2$224	= .
	.globl	C$SpriteHorse.c$224$2_2$224
;SpriteHorse.c:224: }else if(sin < -78){ // tratto come se stesse andando verticale basso
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00227$
	C$SpriteHorse.c$225$3_2$240	= .
	.globl	C$SpriteHorse.c$225$3_2$240
;SpriteHorse.c:225: vy = 2;
	ld	hl, #_vy
	ld	(hl), #0x02
00227$:
	C$SpriteHorse.c$228$2_3$241	= .
	.globl	C$SpriteHorse.c$228$2_3$241
;SpriteHorse.c:228: INT8 horse_coll = TranslateSprite(THIS, vx << delta_time, vy << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, (#_vy)
	inc	b
	jr	01025$
01024$:
	add	a, a
01025$:
	dec	b
	jr	NZ,01024$
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	hl, #_vx
	ld	c, (hl)
	inc	b
	jr	01027$
01026$:
	sla	c
01027$:
	dec	b
	jr	NZ,01026$
	push	af
	inc	sp
	ld	a, c
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	ld	c, a
	ldhl	sp,	#8
	C$SpriteHorse.c$230$2_3$241	= .
	.globl	C$SpriteHorse.c$230$2_3$241
;SpriteHorse.c:230: if(horse_coll){//collido con tile ambiente di collisione
	ld	a,c
	C$SpriteHorse.c$232$3_3$242	= .
	.globl	C$SpriteHorse.c$232$3_3$242
;SpriteHorse.c:232: past_coll_tile = horse_coll;
	ld	(hl),a
	or	a,a
	jr	Z, 00273$
	ld	(#_past_coll_tile),a
	C$SpriteHorse.c$233$3_4$243	= .
	.globl	C$SpriteHorse.c$233$3_4$243
;SpriteHorse.c:233: INT8 vxbounce = vx * (-1); 
	xor	a, a
	ld	hl, #_vx
	sub	a, (hl)
	ld	b, a
	C$SpriteHorse.c$234$3_4$243	= .
	.globl	C$SpriteHorse.c$234$3_4$243
;SpriteHorse.c:234: INT8 vybounce = vy * (-1);
	xor	a, a
	ld	hl, #_vy
	sub	a, (hl)
	ld	c, a
	C$SpriteHorse.c$235$3_4$243	= .
	.globl	C$SpriteHorse.c$235$3_4$243
;SpriteHorse.c:235: if(vx < 2){
	ld	a, (#_vx)
	xor	a, #0x80
	sub	a, #0x82
	jr	NC, 00230$
	C$SpriteHorse.c$236$4_4$244	= .
	.globl	C$SpriteHorse.c$236$4_4$244
;SpriteHorse.c:236: TranslateSprite(THIS, vxbounce << delta_time, 0);
	ld	a, (#_delta_time)
	inc	a
	jr	01029$
01028$:
	sla	b
01029$:
	dec	a
	jr	NZ,01028$
	xor	a, a
	push	af
	inc	sp
	ld	a, b
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00274$
00230$:
	C$SpriteHorse.c$238$4_4$245	= .
	.globl	C$SpriteHorse.c$238$4_4$245
;SpriteHorse.c:238: TranslateSprite(THIS, 0, vybounce << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, c
	inc	b
	jr	01031$
01030$:
	add	a, a
01031$:
	dec	b
	jr	NZ,01030$
	push	af
	inc	sp
	xor	a, a
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00274$
00273$:
	C$SpriteHorse.c$124$2_3$192	= .
	.globl	C$SpriteHorse.c$124$2_3$192
;SpriteHorse.c:124: s_flame->x = THIS->x +2;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$242$3_3$246	= .
	.globl	C$SpriteHorse.c$242$3_3$246
;SpriteHorse.c:242: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
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
	ld	hl, #0x0010
	add	hl, bc
	ld	e, l
	ld	d, h
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
	C$SpriteHorse.c$124$2_3$192	= .
	.globl	C$SpriteHorse.c$124$2_3$192
;SpriteHorse.c:124: s_flame->x = THIS->x +2;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$246$2_3$192	= .
	.globl	C$SpriteHorse.c$246$2_3$192
;SpriteHorse.c:246: if(onfire_countdown == -1){//non sta impazzendo
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	inc	a
	jr	NZ, 01032$
	inc	hl
	ld	a, (hl)
	inc	a
	ld	a, #0x01
	jr	Z, 01033$
01032$:
	xor	a, a
01033$:
	ldhl	sp,	#1
	ld	(hl), a
	C$SpriteHorse.c$253$2_3$192	= .
	.globl	C$SpriteHorse.c$253$2_3$192
;SpriteHorse.c:253: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01034$
	bit	7, d
	jr	NZ, 01035$
	cp	a, a
	jr	01035$
01034$:
	bit	7, d
	jr	Z, 01035$
	scf
01035$:
	ld	a, #0x00
	rla
	ldhl	sp,	#2
	ld	(hl), a
	C$SpriteHorse.c$242$2_3$192	= .
	.globl	C$SpriteHorse.c$242$2_3$192
;SpriteHorse.c:242: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #0x000e
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl), a
	ld	hl, #0x000c
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	C$SpriteHorse.c$249$2_3$192	= .
	.globl	C$SpriteHorse.c$249$2_3$192
;SpriteHorse.c:249: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
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
	C$SpriteHorse.c$243$3_3$246	= .
	.globl	C$SpriteHorse.c$243$3_3$246
;SpriteHorse.c:243: switch(tile_over){
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x03
	jr	Z, 00232$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x08
	jp	Z,00251$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x09
	jp	Z,00251$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0a
	jp	Z,00251$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0b
	jp	Z,00251$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0c
	jp	Z,00251$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0d
	jp	Z,00251$
	jp	00268$
	C$SpriteHorse.c$244$4_3$247	= .
	.globl	C$SpriteHorse.c$244$4_3$247
;SpriteHorse.c:244: case 3: //ghiaia: incrementa il frameskip
00232$:
	C$SpriteHorse.c$246$4_3$247	= .
	.globl	C$SpriteHorse.c$246$4_3$247
;SpriteHorse.c:246: if(onfire_countdown == -1){//non sta impazzendo
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
	jr	Z, 00234$
	C$SpriteHorse.c$247$5_3$248	= .
	.globl	C$SpriteHorse.c$247$5_3$248
;SpriteHorse.c:247: frm_skip+=4;
	ld	hl, #_frm_skip
	inc	(hl)
	inc	(hl)
	inc	(hl)
	inc	(hl)
00234$:
	C$SpriteHorse.c$249$2_3$192	= .
	.globl	C$SpriteHorse.c$249$2_3$192
;SpriteHorse.c:249: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	cp	a, #0x01
	jr	Z, 00242$
	sub	a, #0x05
	jp	NZ,00243$
00242$:
	C$SpriteHorse.c$250$5_3$249	= .
	.globl	C$SpriteHorse.c$250$5_3$249
;SpriteHorse.c:250: if(orme_spawned == 0){
	ld	a, (#_orme_spawned)
	or	a, a
	jp	NZ, 00274$
	C$SpriteHorse.c$251$6_3$250	= .
	.globl	C$SpriteHorse.c$251$6_3$250
;SpriteHorse.c:251: UINT16 orma_posy = THIS->y-9;
	ldhl	sp,#3
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
	C$SpriteHorse.c$252$6_3$250	= .
	.globl	C$SpriteHorse.c$252$6_3$250
;SpriteHorse.c:252: orme_spawned = 1;
	ld	hl, #_orme_spawned
	ld	(hl), #0x01
	C$SpriteHorse.c$253$6_3$250	= .
	.globl	C$SpriteHorse.c$253$6_3$250
;SpriteHorse.c:253: if(vx > 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00238$
	C$SpriteHorse.c$254$7_3$251	= .
	.globl	C$SpriteHorse.c$254$7_3$251
;SpriteHorse.c:254: SpriteManagerAdd(SpriteStep, THIS->x - 2, orma_posy);
	ldhl	sp,#5
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
	C$SpriteHorse.c$255$7_3$251	= .
	.globl	C$SpriteHorse.c$255$7_3$251
;SpriteHorse.c:255: SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
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
	jp	00274$
00238$:
	C$SpriteHorse.c$256$6_3$250	= .
	.globl	C$SpriteHorse.c$256$6_3$250
;SpriteHorse.c:256: }else if(vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jp	Z, 00274$
	C$SpriteHorse.c$257$7_3$252	= .
	.globl	C$SpriteHorse.c$257$7_3$252
;SpriteHorse.c:257: SpriteManagerAdd(SpriteStep, THIS->x, orma_posy);
	ldhl	sp,#5
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
	C$SpriteHorse.c$258$7_3$252	= .
	.globl	C$SpriteHorse.c$258$7_3$252
;SpriteHorse.c:258: SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
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
	jp	00274$
00243$:
	C$SpriteHorse.c$261$5_3$253	= .
	.globl	C$SpriteHorse.c$261$5_3$253
;SpriteHorse.c:261: }else{orme_spawned = 0;}
	ld	hl, #_orme_spawned
	ld	(hl), #0x00
	C$SpriteHorse.c$262$4_3$247	= .
	.globl	C$SpriteHorse.c$262$4_3$247
;SpriteHorse.c:262: break;
	jp	00274$
	C$SpriteHorse.c$264$4_3$247	= .
	.globl	C$SpriteHorse.c$264$4_3$247
;SpriteHorse.c:264: case 11: case 12: case 13: //acqua: simula pantano limitando stamina
00251$:
	C$SpriteHorse.c$265$4_3$247	= .
	.globl	C$SpriteHorse.c$265$4_3$247
;SpriteHorse.c:265: if(onfire_countdown > 0){//sono onfire!
	ld	hl, #_onfire_countdown
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 01046$
	bit	7, d
	jr	NZ, 01047$
	cp	a, a
	jr	01047$
01046$:
	bit	7, d
	jr	Z, 01047$
	scf
01047$:
	jr	NC, 00257$
	C$SpriteHorse.c$266$5_3$254	= .
	.globl	C$SpriteHorse.c$266$5_3$254
;SpriteHorse.c:266: onfire_countdown = 0;
	xor	a, a
	ld	hl, #_onfire_countdown
	ld	(hl+), a
	ld	(hl), a
	jr	00258$
00257$:
	C$SpriteHorse.c$267$4_3$247	= .
	.globl	C$SpriteHorse.c$267$4_3$247
;SpriteHorse.c:267: }else if(onfire_countdown == -1){
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
	jr	Z, 00258$
	C$SpriteHorse.c$268$5_3$255	= .
	.globl	C$SpriteHorse.c$268$5_3$255
;SpriteHorse.c:268: if(stamina_current > (euphoria_min >> 1)){
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
	jr	NC, 00258$
	C$SpriteHorse.c$269$6_3$256	= .
	.globl	C$SpriteHorse.c$269$6_3$256
;SpriteHorse.c:269: stamina_current = (euphoria_min >> 1);
	dec	hl
	ld	a, (hl)
	ld	(#_stamina_current),a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(#_stamina_current + 1),a
00258$:
	C$SpriteHorse.c$249$2_3$192	= .
	.globl	C$SpriteHorse.c$249$2_3$192
;SpriteHorse.c:249: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	C$SpriteHorse.c$272$4_3$247	= .
	.globl	C$SpriteHorse.c$272$4_3$247
;SpriteHorse.c:272: if(THIS->anim_frame == 0 || THIS->anim_frame == 2 || THIS->anim_frame == 4){
	or	a, a
	jr	Z, 00263$
	cp	a, #0x02
	jr	Z, 00263$
	sub	a, #0x04
	jr	NZ, 00264$
00263$:
	C$SpriteHorse.c$273$5_3$257	= .
	.globl	C$SpriteHorse.c$273$5_3$257
;SpriteHorse.c:273: if(orme_spawned == 0){
	ld	hl, #_orme_spawned
	ld	a, (hl)
	or	a, a
	jr	NZ, 00274$
	C$SpriteHorse.c$274$6_3$258	= .
	.globl	C$SpriteHorse.c$274$6_3$258
;SpriteHorse.c:274: orme_spawned = 1;
	ld	(hl), #0x01
	C$SpriteHorse.c$254$2_3$192	= .
	.globl	C$SpriteHorse.c$254$2_3$192
;SpriteHorse.c:254: SpriteManagerAdd(SpriteStep, THIS->x - 2, orma_posy);
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	C$SpriteHorse.c$275$6_4$259	= .
	.globl	C$SpriteHorse.c$275$6_4$259
;SpriteHorse.c:275: UINT16 orma0_posx = THIS->x - 2;
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	de, #0x0002
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ld	(hl-), a
	ld	(hl), e
	C$SpriteHorse.c$276$6_4$259	= .
	.globl	C$SpriteHorse.c$276$6_4$259
;SpriteHorse.c:276: UINT16 orma_posy = THIS->y-9;
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
	ld	de, #0xfff7
	add	hl, de
	ld	e, l
	ld	d, h
	C$SpriteHorse.c$277$6_4$259	= .
	.globl	C$SpriteHorse.c$277$6_4$259
;SpriteHorse.c:277: UINT16 orma1_posx = THIS->x + 8;
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
	C$SpriteHorse.c$278$6_4$259	= .
	.globl	C$SpriteHorse.c$278$6_4$259
;SpriteHorse.c:278: if(vx <= 0){
	ldhl	sp,	#2
;	spillPairReg hl
;	spillPairReg hl
	bit	0, (hl)
	jr	NZ, 00260$
	C$SpriteHorse.c$279$7_4$260	= .
	.globl	C$SpriteHorse.c$279$7_4$260
;SpriteHorse.c:279: orma0_posx = THIS->x;
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00260$:
	C$SpriteHorse.c$281$6_5$261	= .
	.globl	C$SpriteHorse.c$281$6_5$261
;SpriteHorse.c:281: Sprite* s_orma0 = SpriteManagerAdd(SpriteStep, orma0_posx, orma_posy);
	push	de
	push	de
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x02
	call	_SpriteManagerAdd
	pop	de
	C$SpriteHorse.c$282$6_5$261	= .
	.globl	C$SpriteHorse.c$282$6_5$261
;SpriteHorse.c:282: struct ItemData* orma0_data = (struct ItemData*)s_orma0->custom_data;
	C$SpriteHorse.c$283$6_5$261	= .
	.globl	C$SpriteHorse.c$283$6_5$261
;SpriteHorse.c:283: orma0_data->configured = 1;
	ld	hl,#0x1e
	add	hl,bc
	ld	(hl), #0x01
	C$SpriteHorse.c$284$6_6$262	= .
	.globl	C$SpriteHorse.c$284$6_6$262
;SpriteHorse.c:284: Sprite* s_orma1 = SpriteManagerAdd(SpriteStep, orma1_posx, orma_posy);
	push	de
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x02
	call	_SpriteManagerAdd
	C$SpriteHorse.c$285$6_6$262	= .
	.globl	C$SpriteHorse.c$285$6_6$262
;SpriteHorse.c:285: struct ItemData* orma1_data = (struct ItemData*) s_orma1->custom_data;
	C$SpriteHorse.c$286$6_6$262	= .
	.globl	C$SpriteHorse.c$286$6_6$262
;SpriteHorse.c:286: orma1_data->configured = 1;
	ld	hl,#0x1e
	add	hl,bc
	ld	(hl), #0x01
	jr	00274$
00264$:
	C$SpriteHorse.c$288$5_3$263	= .
	.globl	C$SpriteHorse.c$288$5_3$263
;SpriteHorse.c:288: }else{orme_spawned = 0;}
	ld	hl, #_orme_spawned
	ld	(hl), #0x00
	C$SpriteHorse.c$289$4_3$247	= .
	.globl	C$SpriteHorse.c$289$4_3$247
;SpriteHorse.c:289: break;
	jr	00274$
	C$SpriteHorse.c$290$4_3$247	= .
	.globl	C$SpriteHorse.c$290$4_3$247
;SpriteHorse.c:290: default:
00268$:
	C$SpriteHorse.c$291$4_3$247	= .
	.globl	C$SpriteHorse.c$291$4_3$247
;SpriteHorse.c:291: if(onfire_countdown == 0){//se ho spento il fuoco con l'acqua rimettimi il countdown negativo
	ld	hl, #_onfire_countdown + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00274$
	C$SpriteHorse.c$292$5_3$264	= .
	.globl	C$SpriteHorse.c$292$5_3$264
;SpriteHorse.c:292: onfire_countdown = -1;
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
	C$SpriteHorse.c$295$2_3$241	= .
	.globl	C$SpriteHorse.c$295$2_3$241
;SpriteHorse.c:295: }
00274$:
	C$SpriteHorse.c$298$2_3$241	= .
	.globl	C$SpriteHorse.c$298$2_3$241
;SpriteHorse.c:298: if(stamina_current < 60){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	sub	a, #0x3c
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 01051$
	bit	7, d
	jr	NZ, 01052$
	cp	a, a
	jr	01052$
01051$:
	bit	7, d
	jr	Z, 01052$
	scf
01052$:
	jr	NC, 00276$
	C$SpriteHorse.c$299$3_3$265	= .
	.globl	C$SpriteHorse.c$299$3_3$265
;SpriteHorse.c:299: SetSpriteAnim(THIS, a_horse_h_idle,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h_idle
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00277$
00276$:
	C$SpriteHorse.c$301$3_3$266	= .
	.globl	C$SpriteHorse.c$301$3_3$266
;SpriteHorse.c:301: SetSpriteAnim(THIS, a_horse_h,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00277$:
	C$SpriteHorse.c$303$2_3$241	= .
	.globl	C$SpriteHorse.c$303$2_3$241
;SpriteHorse.c:303: THIS->anim_speed = stamina_current >> 5;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x08
	ld	c, a
	jr	NC, 01053$
	inc	b
01053$:
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
00279$:
	C$SpriteHorse.c$124$2_3$192	= .
	.globl	C$SpriteHorse.c$124$2_3$192
;SpriteHorse.c:124: s_flame->x = THIS->x +2;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteHorse.c$308$2_3$192	= .
	.globl	C$SpriteHorse.c$308$2_3$192
;SpriteHorse.c:308: THIS->mirror = NO_MIRROR;
	add	a, #0x10
	ld	c, a
	jr	NC, 01054$
	inc	b
01054$:
	C$SpriteHorse.c$307$1_2$223	= .
	.globl	C$SpriteHorse.c$307$1_2$223
;SpriteHorse.c:307: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 01055$
	bit	7, d
	jr	NZ, 01056$
	cp	a, a
	jr	01056$
01055$:
	bit	7, d
	jr	Z, 01056$
	scf
01056$:
	jr	NC, 00283$
	C$SpriteHorse.c$308$2_2$267	= .
	.globl	C$SpriteHorse.c$308$2_2$267
;SpriteHorse.c:308: THIS->mirror = NO_MIRROR;
	xor	a, a
	ld	(bc), a
	jr	00284$
00283$:
	C$SpriteHorse.c$309$1_2$223	= .
	.globl	C$SpriteHorse.c$309$1_2$223
;SpriteHorse.c:309: }else if (vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jr	Z, 00284$
	C$SpriteHorse.c$310$2_2$268	= .
	.globl	C$SpriteHorse.c$310$2_2$268
;SpriteHorse.c:310: THIS->mirror = V_MIRROR;
	ld	a, #0x02
	ld	(bc), a
00284$:
	C$SpriteHorse.c$316$2_3$270	= .
	.globl	C$SpriteHorse.c$316$2_3$270
;SpriteHorse.c:316: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
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
00296$:
	ld	a, (#_sprite_manager_updatables + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl-)
	sub	a, (hl)
	jp	Z,00298$
	C$SpriteHorse.c$317$3_3$271	= .
	.globl	C$SpriteHorse.c$317$3_3$271
;SpriteHorse.c:317: if(CheckCollision(THIS, iospr)) {
	push	bc
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_CheckCollision
	pop	bc
	or	a, a
	jr	Z, 00297$
	C$SpriteHorse.c$318$4_3$272	= .
	.globl	C$SpriteHorse.c$318$4_3$272
;SpriteHorse.c:318: switch(iospr->type){
	ld	hl, #0x0013
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x05
	jr	NZ, 00297$
	C$SpriteHorse.c$320$5_3$273	= .
	.globl	C$SpriteHorse.c$320$5_3$273
;SpriteHorse.c:320: if(onfire_countdown == -1){//if not already, go onfire!
	ld	hl, #_onfire_countdown
	ld	a, (hl)
	inc	a
	jr	NZ, 00297$
	inc	hl
	ld	a, (hl)
	inc	a
	jr	NZ, 00297$
	C$SpriteHorse.c$321$6_3$274	= .
	.globl	C$SpriteHorse.c$321$6_3$274
;SpriteHorse.c:321: if(weapon_def == CAPE){
	ld	a, (#_weapon_def)
	sub	a, #0x08
	jr	NZ, 00287$
	C$SpriteHorse.c$322$7_3$275	= .
	.globl	C$SpriteHorse.c$322$7_3$275
;SpriteHorse.c:322: use_weapon(1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, #b_use_weapon
	ld	hl, #_use_weapon
	call	___sdcc_bcall_ehl
	inc	sp
	C$SpriteHorse.c$323$7_3$275	= .
	.globl	C$SpriteHorse.c$323$7_3$275
;SpriteHorse.c:323: SpriteManagerRemoveSprite(iospr);
	pop	de
	call	_SpriteManagerRemoveSprite
	jr	00297$
00287$:
	C$SpriteHorse.c$325$7_3$276	= .
	.globl	C$SpriteHorse.c$325$7_3$276
;SpriteHorse.c:325: onfire_countdown = ONFIRE_COUNTDOWN_MAX;
	ld	hl, #_onfire_countdown
	ld	a, #0x90
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$326$7_3$276	= .
	.globl	C$SpriteHorse.c$326$7_3$276
;SpriteHorse.c:326: stamina_current = euphoria_min >> 2;
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
	C$SpriteHorse.c$327$7_3$276	= .
	.globl	C$SpriteHorse.c$327$7_3$276
;SpriteHorse.c:327: whip_power_over_stamina = 1;
	ld	hl, #_whip_power_over_stamina
	ld	(hl), #0x01
	C$SpriteHorse.c$328$7_3$276	= .
	.globl	C$SpriteHorse.c$328$7_3$276
;SpriteHorse.c:328: s_flame = iospr;
	ld	hl, #_s_flame
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteHorse.c$332$3_3$271	= .
	.globl	C$SpriteHorse.c$332$3_3$271
;SpriteHorse.c:332: }
00297$:
	C$SpriteHorse.c$316$2_3$270	= .
	.globl	C$SpriteHorse.c$316$2_3$270
;SpriteHorse.c:316: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
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
	jp	00296$
00298$:
	C$SpriteHorse.c$335$2_3$192	= .
	.globl	C$SpriteHorse.c$335$2_3$192
;SpriteHorse.c:335: }
	add	sp, #9
	C$SpriteHorse.c$335$2_3$192	= .
	.globl	C$SpriteHorse.c$335$2_3$192
	XG$Update_SpriteHorse$0$0	= .
	.globl	XG$Update_SpriteHorse$0$0
	ret
	G$Destroy_SpriteHorse$0$0	= .
	.globl	G$Destroy_SpriteHorse$0$0
	C$SpriteHorse.c$337$2_3$278	= .
	.globl	C$SpriteHorse.c$337$2_3$278
;SpriteHorse.c:337: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteHorse
; ---------------------------------
_Destroy_SpriteHorse::
	C$SpriteHorse.c$338$2_3$278	= .
	.globl	C$SpriteHorse.c$338$2_3$278
;SpriteHorse.c:338: }
	C$SpriteHorse.c$338$2_3$278	= .
	.globl	C$SpriteHorse.c$338$2_3$278
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
	.area _CABS (ABS)
