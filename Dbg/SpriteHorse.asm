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
	.globl _SpriteManagerAdd
	.globl _GetScrollTile
	.globl _CheckCollision
	.globl _TranslateSprite
	.globl _SetSpriteAnim
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
	C$SpriteHorse.c$51$0_0$190	= .
	.globl	C$SpriteHorse.c$51$0_0$190
;SpriteHorse.c:51: void START() {
;	---------------------------------
; Function Start_SpriteHorse
; ---------------------------------
_Start_SpriteHorse::
	C$SpriteHorse.c$52$1_0$190	= .
	.globl	C$SpriteHorse.c$52$1_0$190
;SpriteHorse.c:52: SetSpriteAnim(THIS, a_horse_h, 16u);
	ld	a, #0x10
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteHorse.c$53$1_0$190	= .
	.globl	C$SpriteHorse.c$53$1_0$190
;SpriteHorse.c:53: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$54$1_0$190	= .
	.globl	C$SpriteHorse.c$54$1_0$190
;SpriteHorse.c:54: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteHorse.c$55$1_0$190	= .
	.globl	C$SpriteHorse.c$55$1_0$190
;SpriteHorse.c:55: THIS->lim_y = 500;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xf4
	ld	(hl+), a
	ld	(hl), #0x01
	C$SpriteHorse.c$56$1_0$190	= .
	.globl	C$SpriteHorse.c$56$1_0$190
;SpriteHorse.c:56: }
	C$SpriteHorse.c$56$1_0$190	= .
	.globl	C$SpriteHorse.c$56$1_0$190
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
	C$SpriteHorse.c$58$1_0$191	= .
	.globl	C$SpriteHorse.c$58$1_0$191
;SpriteHorse.c:58: void UPDATE() {
;	---------------------------------
; Function Update_SpriteHorse
; ---------------------------------
_Update_SpriteHorse::
	add	sp, #-6
	C$SpriteHorse.c$64$2_3$191	= .
	.globl	C$SpriteHorse.c$64$2_3$191
;SpriteHorse.c:64: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter_max
	ld	c, (hl)
	C$SpriteHorse.c$60$1_0$191	= .
	.globl	C$SpriteHorse.c$60$1_0$191
;SpriteHorse.c:60: if(whip_counter <= 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00718$
	bit	7, d
	jr	NZ, 00719$
	cp	a, a
	jr	00719$
00718$:
	bit	7, d
	jr	Z, 00719$
	scf
00719$:
	jr	C, 00106$
	C$SpriteHorse.c$61$2_0$192	= .
	.globl	C$SpriteHorse.c$61$2_0$192
;SpriteHorse.c:61: if(KEY_TICKED(J_WHIP)){
	ld	a, (#_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	Z, 00102$
	ld	a, (#_previous_keys)
	ld	hl, #_J_WHIP
	and	a,(hl)
	jr	NZ, 00102$
	C$SpriteHorse.c$62$3_0$193	= .
	.globl	C$SpriteHorse.c$62$3_0$193
;SpriteHorse.c:62: stamina_verso = 1;
	ld	hl, #_stamina_verso
	ld	(hl), #0x01
	C$SpriteHorse.c$63$3_0$193	= .
	.globl	C$SpriteHorse.c$63$3_0$193
;SpriteHorse.c:63: whip_counter = whip_counter_max;
	ld	a, (#_whip_counter_max)
	ld	(#_whip_counter),a
	C$SpriteHorse.c$64$3_0$193	= .
	.globl	C$SpriteHorse.c$64$3_0$193
;SpriteHorse.c:64: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
	jr	00107$
00102$:
	C$SpriteHorse.c$66$3_0$194	= .
	.globl	C$SpriteHorse.c$66$3_0$194
;SpriteHorse.c:66: stamina_verso = -1;
	ld	hl, #_stamina_verso
	ld	(hl), #0xff
	jr	00107$
00106$:
	C$SpriteHorse.c$69$2_0$195	= .
	.globl	C$SpriteHorse.c$69$2_0$195
;SpriteHorse.c:69: whip_counter--;
	ld	hl, #_whip_counter
	dec	(hl)
00107$:
	C$SpriteHorse.c$71$1_0$191	= .
	.globl	C$SpriteHorse.c$71$1_0$191
;SpriteHorse.c:71: if(whip_counter > 0){
	ld	hl, #_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00720$
	bit	7, d
	jr	NZ, 00721$
	cp	a, a
	jr	00721$
00720$:
	bit	7, d
	jr	Z, 00721$
	scf
00721$:
	jr	NC, 00113$
	C$SpriteHorse.c$72$2_3$191	= .
	.globl	C$SpriteHorse.c$72$2_3$191
;SpriteHorse.c:72: stamina_current += (whip_power_over_stamina * stamina_verso);
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
	C$SpriteHorse.c$74$2_0$197	= .
	.globl	C$SpriteHorse.c$74$2_0$197
;SpriteHorse.c:74: if(no_whip_counter > 0){
	ld	hl, #_no_whip_counter
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00722$
	bit	7, d
	jr	NZ, 00723$
	cp	a, a
	jr	00723$
00722$:
	bit	7, d
	jr	Z, 00723$
	scf
00723$:
	jr	NC, 00114$
	C$SpriteHorse.c$75$3_0$198	= .
	.globl	C$SpriteHorse.c$75$3_0$198
;SpriteHorse.c:75: no_whip_counter--;
	ld	hl, #_no_whip_counter
	C$SpriteHorse.c$76$3_0$198	= .
	.globl	C$SpriteHorse.c$76$3_0$198
;SpriteHorse.c:76: if(no_whip_counter == 0){
	dec	(hl)
	jr	NZ, 00114$
	C$SpriteHorse.c$77$4_0$199	= .
	.globl	C$SpriteHorse.c$77$4_0$199
;SpriteHorse.c:77: stamina_current += no_whip_over_stamina;
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
	C$SpriteHorse.c$78$4_0$199	= .
	.globl	C$SpriteHorse.c$78$4_0$199
;SpriteHorse.c:78: no_whip_counter = no_whip_counter_max;
	ld	hl, #_no_whip_counter
	ld	(hl), c
00114$:
	C$SpriteHorse.c$82$1_0$191	= .
	.globl	C$SpriteHorse.c$82$1_0$191
;SpriteHorse.c:82: if(stamina_current < 0){
	ld	hl, #_stamina_current + 1
	bit	7, (hl)
	jr	Z, 00116$
	C$SpriteHorse.c$83$2_0$200	= .
	.globl	C$SpriteHorse.c$83$2_0$200
;SpriteHorse.c:83: stamina_current = 0;
	dec	hl
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00116$:
	C$SpriteHorse.c$85$1_0$191	= .
	.globl	C$SpriteHorse.c$85$1_0$191
;SpriteHorse.c:85: if(stamina_current > STAMINA_MAX){
	ld	hl, #_stamina_current
	ld	a, #0xc0
	sub	a, (hl)
	inc	hl
	ld	a, #0x03
	sbc	a, (hl)
	ld	a, #0x03
	ld	d, a
	bit	7, (hl)
	jr	Z, 00724$
	bit	7, d
	jr	NZ, 00725$
	cp	a, a
	jr	00725$
00724$:
	bit	7, d
	jr	Z, 00725$
	scf
00725$:
	jr	NC, 00118$
	C$SpriteHorse.c$86$2_0$201	= .
	.globl	C$SpriteHorse.c$86$2_0$201
;SpriteHorse.c:86: stamina_current = STAMINA_MAX;
	ld	hl, #_stamina_current
	ld	a, #0xc0
	ld	(hl+), a
	ld	(hl), #0x03
00118$:
	C$SpriteHorse.c$89$2_0$202	= .
	.globl	C$SpriteHorse.c$89$2_0$202
;SpriteHorse.c:89: INT16 delta_stamina_euphoria = 0;
	ld	bc, #0x0000
	C$SpriteHorse.c$90$1_1$202	= .
	.globl	C$SpriteHorse.c$90$1_1$202
;SpriteHorse.c:90: if(stamina_current > euphoria_max){
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
	C$SpriteHorse.c$91$2_1$203	= .
	.globl	C$SpriteHorse.c$91$2_1$203
;SpriteHorse.c:91: delta_stamina_euphoria = stamina_current - euphoria_max;
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
	C$SpriteHorse.c$92$1_1$202	= .
	.globl	C$SpriteHorse.c$92$1_1$202
;SpriteHorse.c:92: }else if(stamina_current < euphoria_min){
	ld	hl, #_euphoria_min
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jr	NC, 00123$
	C$SpriteHorse.c$93$2_1$204	= .
	.globl	C$SpriteHorse.c$93$2_1$204
;SpriteHorse.c:93: delta_stamina_euphoria = euphoria_min - stamina_current;
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	sub	a, e
	ld	c, a
	ld	a, (hl)
	sbc	a, d
	ld	b, a
00123$:
	C$SpriteHorse.c$95$1_1$202	= .
	.globl	C$SpriteHorse.c$95$1_1$202
;SpriteHorse.c:95: if(delta_stamina_euphoria > 32){
	ld	e, b
	ld	d, #0x00
	ld	a, #0x20
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00726$
	bit	7, d
	jr	NZ, 00727$
	cp	a, a
	jr	00727$
00726$:
	bit	7, d
	jr	Z, 00727$
	scf
00727$:
	jr	NC, 00125$
	C$SpriteHorse.c$96$2_1$205	= .
	.globl	C$SpriteHorse.c$96$2_1$205
;SpriteHorse.c:96: velocity_counter = delta_stamina_euphoria >> 4;
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
	C$SpriteHorse.c$98$2_1$206	= .
	.globl	C$SpriteHorse.c$98$2_1$206
;SpriteHorse.c:98: velocity_counter = 2;
	ld	hl, #_velocity_counter
	ld	(hl), #0x02
00126$:
	C$SpriteHorse.c$102$2_3$191	= .
	.globl	C$SpriteHorse.c$102$2_3$191
;SpriteHorse.c:102: if(KEY_RELEASED(J_RIGHT) || KEY_RELEASED(J_LEFT)){turn_samepressure_counter = 0;}
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
	jr	Z, 00131$
	or	a, a
	jr	Z, 00127$
00131$:
	bit	1, c
	jr	Z, 00128$
	inc	e
	dec	e
	jr	NZ, 00128$
00127$:
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00128$:
	C$SpriteHorse.c$107$2_3$191	= .
	.globl	C$SpriteHorse.c$107$2_3$191
;SpriteHorse.c:107: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	d, (hl)
	inc	d
	C$SpriteHorse.c$104$1_1$202	= .
	.globl	C$SpriteHorse.c$104$1_1$202
;SpriteHorse.c:104: if(KEY_PRESSED(J_RIGHT)){
	or	a, a
	jr	Z, 00144$
	C$SpriteHorse.c$105$2_1$208	= .
	.globl	C$SpriteHorse.c$105$2_1$208
;SpriteHorse.c:105: turn_verse = CLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x01
	C$SpriteHorse.c$106$2_1$208	= .
	.globl	C$SpriteHorse.c$106$2_1$208
;SpriteHorse.c:106: turn--;
	ld	hl, #_turn
	dec	(hl)
	C$SpriteHorse.c$107$2_1$208	= .
	.globl	C$SpriteHorse.c$107$2_1$208
;SpriteHorse.c:107: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$108$2_1$208	= .
	.globl	C$SpriteHorse.c$108$2_1$208
;SpriteHorse.c:108: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0xa8
	jp	C, 00145$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00730$
	bit	7, d
	jr	NZ, 00731$
	cp	a, a
	jr	00731$
00730$:
	bit	7, d
	jr	Z, 00731$
	scf
00731$:
	jr	NC, 00136$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	C, 00132$
00136$:
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00145$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00732$
	bit	7, d
	jr	NZ, 00733$
	cp	a, a
	jr	00733$
00732$:
	bit	7, d
	jr	Z, 00733$
	scf
00733$:
	jr	NC, 00145$
00132$:
	C$SpriteHorse.c$109$3_1$209	= .
	.globl	C$SpriteHorse.c$109$3_1$209
;SpriteHorse.c:109: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$110$3_1$209	= .
	.globl	C$SpriteHorse.c$110$3_1$209
;SpriteHorse.c:110: turn-=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0xfe
	ld	(hl), a
	jr	00145$
00144$:
	C$SpriteHorse.c$112$1_1$202	= .
	.globl	C$SpriteHorse.c$112$1_1$202
;SpriteHorse.c:112: }else if(KEY_PRESSED(J_LEFT)){
	ld	a, e
	or	a, a
	jr	Z, 00141$
	C$SpriteHorse.c$113$2_1$210	= .
	.globl	C$SpriteHorse.c$113$2_1$210
;SpriteHorse.c:113: turn_verse = COUNTERCLOCK;
	ld	hl, #_turn_verse
	ld	(hl), #0x02
	C$SpriteHorse.c$114$2_1$210	= .
	.globl	C$SpriteHorse.c$114$2_1$210
;SpriteHorse.c:114: turn++;
	ld	hl, #_turn
	inc	(hl)
	C$SpriteHorse.c$115$2_1$210	= .
	.globl	C$SpriteHorse.c$115$2_1$210
;SpriteHorse.c:115: turn_samepressure_counter++;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), d
	C$SpriteHorse.c$116$2_1$210	= .
	.globl	C$SpriteHorse.c$116$2_1$210
;SpriteHorse.c:116: if(turn_samepressure_counter > 40){
	ld	e, (hl)
	ld	a,#0x28
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00734$
	bit	7, d
	jr	NZ, 00735$
	cp	a, a
	jr	00735$
00734$:
	bit	7, d
	jr	Z, 00735$
	scf
00735$:
	jr	NC, 00145$
	C$SpriteHorse.c$117$3_1$211	= .
	.globl	C$SpriteHorse.c$117$3_1$211
;SpriteHorse.c:117: turn_samepressure_counter = 40;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x28
	C$SpriteHorse.c$118$3_1$211	= .
	.globl	C$SpriteHorse.c$118$3_1$211
;SpriteHorse.c:118: turn+=2;
	ld	hl, #_turn
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00145$
00141$:
	C$SpriteHorse.c$121$2_1$212	= .
	.globl	C$SpriteHorse.c$121$2_1$212
;SpriteHorse.c:121: turn_verse = NONE; 
	ld	hl, #_turn_verse
	ld	(hl), #0x00
00145$:
	C$SpriteHorse.c$123$1_1$202	= .
	.globl	C$SpriteHorse.c$123$1_1$202
;SpriteHorse.c:123: if(KEY_TICKED(J_UP)){
	bit	2, b
	jr	Z, 00147$
	bit	2, c
	jr	NZ, 00147$
	C$SpriteHorse.c$124$2_1$213	= .
	.globl	C$SpriteHorse.c$124$2_1$213
;SpriteHorse.c:124: turn = 64;
	ld	hl, #_turn
	ld	(hl), #0x40
	C$SpriteHorse.c$125$2_1$213	= .
	.globl	C$SpriteHorse.c$125$2_1$213
;SpriteHorse.c:125: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00147$:
	C$SpriteHorse.c$127$1_1$202	= .
	.globl	C$SpriteHorse.c$127$1_1$202
;SpriteHorse.c:127: if(KEY_TICKED(J_DOWN)){
	bit	3, b
	jr	Z, 00150$
	bit	3, c
	jr	NZ, 00150$
	C$SpriteHorse.c$128$2_1$214	= .
	.globl	C$SpriteHorse.c$128$2_1$214
;SpriteHorse.c:128: turn = 192;
	ld	hl, #_turn
	ld	(hl), #0xc0
	C$SpriteHorse.c$129$2_1$214	= .
	.globl	C$SpriteHorse.c$129$2_1$214
;SpriteHorse.c:129: turn_samepressure_counter = 0;
	ld	hl, #_turn_samepressure_counter
	ld	(hl), #0x00
00150$:
	C$SpriteHorse.c$131$1_1$202	= .
	.globl	C$SpriteHorse.c$131$1_1$202
;SpriteHorse.c:131: sin = sine_wave[turn];
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
	C$SpriteHorse.c$132$1_2$215	= .
	.globl	C$SpriteHorse.c$132$1_2$215
;SpriteHorse.c:132: UINT8 cos_idx = turn+64;
	ld	a, (#_turn)
	add	a, #0x40
	C$SpriteHorse.c$133$1_2$215	= .
	.globl	C$SpriteHorse.c$133$1_2$215
;SpriteHorse.c:133: cos = sine_wave[cos_idx];
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#_cos),a
	C$SpriteHorse.c$136$1_2$215	= .
	.globl	C$SpriteHorse.c$136$1_2$215
;SpriteHorse.c:136: frm_skip--;
	ld	hl, #_frm_skip
	C$SpriteHorse.c$137$1_2$215	= .
	.globl	C$SpriteHorse.c$137$1_2$215
;SpriteHorse.c:137: if(frm_skip == 0){
	dec	(hl)
	jp	NZ, 00245$
	C$SpriteHorse.c$138$2_2$216	= .
	.globl	C$SpriteHorse.c$138$2_2$216
;SpriteHorse.c:138: frm_skip = velocity_counter;
	ld	a, (#_velocity_counter)
	ld	(#_frm_skip),a
	C$SpriteHorse.c$145$2_3$191	= .
	.globl	C$SpriteHorse.c$145$2_3$191
;SpriteHorse.c:145: if(cos >= 0 && cos <= 30){//tratto come se stesse andando verticale
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
	jr	Z, 00742$
	bit	7, d
	jr	NZ, 00743$
	cp	a, a
	jr	00743$
00742$:
	bit	7, d
	jr	Z, 00743$
	scf
00743$:
	ld	a, #0x00
	rla
	bit	0, c
	jr	NZ, 00178$
	or	a, a
	jr	NZ, 00178$
	C$SpriteHorse.c$146$3_2$217	= .
	.globl	C$SpriteHorse.c$146$3_2$217
;SpriteHorse.c:146: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jp	00179$
00178$:
	C$SpriteHorse.c$147$2_2$216	= .
	.globl	C$SpriteHorse.c$147$2_2$216
;SpriteHorse.c:147: }else if(cos > 30 && cos < 54){// tratto come se stesse andando a 66 gradi
	or	a, a
	jr	Z, 00174$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00174$
	C$SpriteHorse.c$148$3_2$218	= .
	.globl	C$SpriteHorse.c$148$3_2$218
;SpriteHorse.c:148: vx = 1;
	ld	hl, #_vx
	ld	(hl), #0x01
	jp	00179$
00174$:
	C$SpriteHorse.c$149$2_2$216	= .
	.globl	C$SpriteHorse.c$149$2_2$216
;SpriteHorse.c:149: }else if(cos > 54 && cos < 78){// tratto come se stesse andando a 33 gradi
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00744$
	bit	7, d
	jr	NZ, 00745$
	cp	a, a
	jr	00745$
00744$:
	bit	7, d
	jr	Z, 00745$
	scf
00745$:
	jr	NC, 00170$
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00170$
	C$SpriteHorse.c$150$3_2$219	= .
	.globl	C$SpriteHorse.c$150$3_2$219
;SpriteHorse.c:150: vx = 2;
	ld	hl, #_vx
	ld	(hl), #0x02
	jp	00179$
00170$:
	C$SpriteHorse.c$151$2_2$216	= .
	.globl	C$SpriteHorse.c$151$2_2$216
;SpriteHorse.c:151: }else if(cos > 78){ // tratto come se stesse andando orizzontale destra
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00746$
	bit	7, d
	jr	NZ, 00747$
	cp	a, a
	jr	00747$
00746$:
	bit	7, d
	jr	Z, 00747$
	scf
00747$:
	jr	NC, 00167$
	C$SpriteHorse.c$152$3_2$220	= .
	.globl	C$SpriteHorse.c$152$3_2$220
;SpriteHorse.c:152: vx = 3;
	ld	hl, #_vx
	ld	(hl), #0x03
	jp	00179$
00167$:
	C$SpriteHorse.c$153$2_2$216	= .
	.globl	C$SpriteHorse.c$153$2_2$216
;SpriteHorse.c:153: }else if(cos < 0 && cos > -30){//tratto come se stesse andando verticale
	ld	a, c
	or	a, a
	jr	Z, 00163$
	ld	hl, #_cos
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00748$
	bit	7, d
	jr	NZ, 00749$
	cp	a, a
	jr	00749$
00748$:
	bit	7, d
	jr	Z, 00749$
	scf
00749$:
	jr	NC, 00163$
	C$SpriteHorse.c$154$3_2$221	= .
	.globl	C$SpriteHorse.c$154$3_2$221
;SpriteHorse.c:154: vx = 0;
	ld	hl, #_vx
	ld	(hl), #0x00
	jr	00179$
00163$:
	C$SpriteHorse.c$155$2_2$216	= .
	.globl	C$SpriteHorse.c$155$2_2$216
;SpriteHorse.c:155: }else if(cos < -30 && cos > -54){// tratto come se stesse andando a 66 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00159$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00750$
	bit	7, d
	jr	NZ, 00751$
	cp	a, a
	jr	00751$
00750$:
	bit	7, d
	jr	Z, 00751$
	scf
00751$:
	jr	NC, 00159$
	C$SpriteHorse.c$156$3_2$222	= .
	.globl	C$SpriteHorse.c$156$3_2$222
;SpriteHorse.c:156: vx = -1;
	ld	hl, #_vx
	ld	(hl), #0xff
	jr	00179$
00159$:
	C$SpriteHorse.c$157$2_2$216	= .
	.globl	C$SpriteHorse.c$157$2_2$216
;SpriteHorse.c:157: }else if(cos < -54 && cos > -78){// tratto come se stesse andando a 33 gradi sinistra
	ld	hl, #_cos
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00155$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00752$
	bit	7, d
	jr	NZ, 00753$
	cp	a, a
	jr	00753$
00752$:
	bit	7, d
	jr	Z, 00753$
	scf
00753$:
	jr	NC, 00155$
	C$SpriteHorse.c$158$3_2$223	= .
	.globl	C$SpriteHorse.c$158$3_2$223
;SpriteHorse.c:158: vx = -2;
	ld	hl, #_vx
	ld	(hl), #0xfe
	jr	00179$
00155$:
	C$SpriteHorse.c$159$2_2$216	= .
	.globl	C$SpriteHorse.c$159$2_2$216
;SpriteHorse.c:159: }else if(cos < -78){ // tratto come se stesse andando orizzontale sinistra
	ld	a, (#_cos)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00179$
	C$SpriteHorse.c$160$3_2$224	= .
	.globl	C$SpriteHorse.c$160$3_2$224
;SpriteHorse.c:160: vx = -3;
	ld	hl, #_vx
	ld	(hl), #0xfd
00179$:
	C$SpriteHorse.c$108$2_3$191	= .
	.globl	C$SpriteHorse.c$108$2_3$191
;SpriteHorse.c:108: if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x1e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00754$
	bit	7, d
	jr	NZ, 00755$
	cp	a, a
	jr	00755$
00754$:
	bit	7, d
	jr	Z, 00755$
	scf
00755$:
	ld	a, #0x00
	rla
	ld	c, a
	C$SpriteHorse.c$163$2_3$191	= .
	.globl	C$SpriteHorse.c$163$2_3$191
;SpriteHorse.c:163: if(sin >= 0 && sin <= 30){//tratto come se stesse andando orizzontale
	ld	a, (#_sin)
	rlca
	and	a,#0x01
	ld	b, a
	bit	0, b
	jr	NZ, 00207$
	ld	e, c
	bit	0, e
	jr	NZ, 00207$
	C$SpriteHorse.c$164$3_2$225	= .
	.globl	C$SpriteHorse.c$164$3_2$225
;SpriteHorse.c:164: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jp	00208$
00207$:
	C$SpriteHorse.c$165$2_2$216	= .
	.globl	C$SpriteHorse.c$165$2_2$216
;SpriteHorse.c:165: }else if(sin > 30 && sin < 54){// tratto come se stesse andando a 33 gradi
	ld	a, c
	or	a, a
	jr	Z, 00203$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xb6
	jr	NC, 00203$
	C$SpriteHorse.c$166$3_2$226	= .
	.globl	C$SpriteHorse.c$166$3_2$226
;SpriteHorse.c:166: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00208$
00203$:
	C$SpriteHorse.c$167$2_2$216	= .
	.globl	C$SpriteHorse.c$167$2_2$216
;SpriteHorse.c:167: }else if(sin > 54 && sin < 78){// tratto come se stesse andando a 66 gradi
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x36
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00756$
	bit	7, d
	jr	NZ, 00757$
	cp	a, a
	jr	00757$
00756$:
	bit	7, d
	jr	Z, 00757$
	scf
00757$:
	jr	NC, 00199$
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0xce
	jr	NC, 00199$
	C$SpriteHorse.c$168$3_2$227	= .
	.globl	C$SpriteHorse.c$168$3_2$227
;SpriteHorse.c:168: vy = -1;
	ld	hl, #_vy
	ld	(hl), #0xff
	jp	00208$
00199$:
	C$SpriteHorse.c$169$2_2$216	= .
	.globl	C$SpriteHorse.c$169$2_2$216
;SpriteHorse.c:169: }else if(sin > 78){ // tratto come se stesse andando verticale alto
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0x4e
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00758$
	bit	7, d
	jr	NZ, 00759$
	cp	a, a
	jr	00759$
00758$:
	bit	7, d
	jr	Z, 00759$
	scf
00759$:
	jr	NC, 00196$
	C$SpriteHorse.c$170$3_2$228	= .
	.globl	C$SpriteHorse.c$170$3_2$228
;SpriteHorse.c:170: vy = -2;
	ld	hl, #_vy
	ld	(hl), #0xfe
	jp	00208$
00196$:
	C$SpriteHorse.c$171$2_2$216	= .
	.globl	C$SpriteHorse.c$171$2_2$216
;SpriteHorse.c:171: }else if(sin < 0 && sin > -30){//tratto come se stesse andando orizzontale
	ld	a, b
	or	a, a
	jr	Z, 00192$
	ld	hl, #_sin
	ld	e, (hl)
	ld	a,#0xe2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00760$
	bit	7, d
	jr	NZ, 00761$
	cp	a, a
	jr	00761$
00760$:
	bit	7, d
	jr	Z, 00761$
	scf
00761$:
	jr	NC, 00192$
	C$SpriteHorse.c$172$3_2$229	= .
	.globl	C$SpriteHorse.c$172$3_2$229
;SpriteHorse.c:172: vy = 0;
	ld	hl, #_vy
	ld	(hl), #0x00
	jr	00208$
00192$:
	C$SpriteHorse.c$173$2_2$216	= .
	.globl	C$SpriteHorse.c$173$2_2$216
;SpriteHorse.c:173: }else if(sin < -30 && sin > -54){// tratto come se stesse andando a -33 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x62
	jr	NC, 00188$
	ld	e, (hl)
	ld	a,#0xca
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00762$
	bit	7, d
	jr	NZ, 00763$
	cp	a, a
	jr	00763$
00762$:
	bit	7, d
	jr	Z, 00763$
	scf
00763$:
	jr	NC, 00188$
	C$SpriteHorse.c$174$3_2$230	= .
	.globl	C$SpriteHorse.c$174$3_2$230
;SpriteHorse.c:174: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00208$
00188$:
	C$SpriteHorse.c$175$2_2$216	= .
	.globl	C$SpriteHorse.c$175$2_2$216
;SpriteHorse.c:175: }else if(sin < -54 && sin > -78){// tratto come se stesse andando a -66 gradi 
	ld	hl, #_sin
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x4a
	jr	NC, 00184$
	ld	e, (hl)
	ld	a,#0xb2
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00764$
	bit	7, d
	jr	NZ, 00765$
	cp	a, a
	jr	00765$
00764$:
	bit	7, d
	jr	Z, 00765$
	scf
00765$:
	jr	NC, 00184$
	C$SpriteHorse.c$176$3_2$231	= .
	.globl	C$SpriteHorse.c$176$3_2$231
;SpriteHorse.c:176: vy = 1;
	ld	hl, #_vy
	ld	(hl), #0x01
	jr	00208$
00184$:
	C$SpriteHorse.c$177$2_2$216	= .
	.globl	C$SpriteHorse.c$177$2_2$216
;SpriteHorse.c:177: }else if(sin < -78){ // tratto come se stesse andando verticale basso
	ld	a, (#_sin)
	xor	a, #0x80
	sub	a, #0x32
	jr	NC, 00208$
	C$SpriteHorse.c$178$3_2$232	= .
	.globl	C$SpriteHorse.c$178$3_2$232
;SpriteHorse.c:178: vy = 2;
	ld	hl, #_vy
	ld	(hl), #0x02
00208$:
	C$SpriteHorse.c$181$2_3$233	= .
	.globl	C$SpriteHorse.c$181$2_3$233
;SpriteHorse.c:181: INT8 horse_coll = TranslateSprite(THIS, vx << delta_time, vy << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, (#_vy)
	inc	b
	jr	00767$
00766$:
	add	a, a
00767$:
	dec	b
	jr	NZ,00766$
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	hl, #_vx
	ld	c, (hl)
	inc	b
	jr	00769$
00768$:
	sla	c
00769$:
	dec	b
	jr	NZ,00768$
	push	af
	inc	sp
	ld	a, c
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	ldhl	sp,#4
	ld	(hl), a
	ld	a, (hl+)
	C$SpriteHorse.c$182$2_3$233	= .
	.globl	C$SpriteHorse.c$182$2_3$233
;SpriteHorse.c:182: if(horse_coll){
	ld	(hl-), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00239$
	C$SpriteHorse.c$184$3_3$234	= .
	.globl	C$SpriteHorse.c$184$3_3$234
;SpriteHorse.c:184: past_coll_tile = horse_coll;
	inc	hl
	ld	a, (hl)
	ld	(#_past_coll_tile),a
	C$SpriteHorse.c$185$3_4$235	= .
	.globl	C$SpriteHorse.c$185$3_4$235
;SpriteHorse.c:185: INT8 vxbounce = vx * (-1); 
	xor	a, a
	ld	hl, #_vx
	sub	a, (hl)
	ld	b, a
	C$SpriteHorse.c$186$3_4$235	= .
	.globl	C$SpriteHorse.c$186$3_4$235
;SpriteHorse.c:186: INT8 vybounce = vy * (-1);
	xor	a, a
	ld	hl, #_vy
	sub	a, (hl)
	ld	c, a
	C$SpriteHorse.c$187$3_4$235	= .
	.globl	C$SpriteHorse.c$187$3_4$235
;SpriteHorse.c:187: if(vx < 2){
	ld	a, (#_vx)
	xor	a, #0x80
	sub	a, #0x82
	jr	NC, 00211$
	C$SpriteHorse.c$188$4_4$236	= .
	.globl	C$SpriteHorse.c$188$4_4$236
;SpriteHorse.c:188: TranslateSprite(THIS, vxbounce << delta_time, 0);
	ld	a, (#_delta_time)
	inc	a
	jr	00771$
00770$:
	sla	b
00771$:
	dec	a
	jr	NZ,00770$
	xor	a, a
	push	af
	inc	sp
	ld	a, b
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00240$
00211$:
	C$SpriteHorse.c$190$4_4$237	= .
	.globl	C$SpriteHorse.c$190$4_4$237
;SpriteHorse.c:190: TranslateSprite(THIS, 0, vybounce << delta_time);
	ld	hl, #_delta_time
	ld	b, (hl)
	ld	a, c
	inc	b
	jr	00773$
00772$:
	add	a, a
00773$:
	dec	b
	jr	NZ,00772$
	push	af
	inc	sp
	xor	a, a
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	jp	00240$
00239$:
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	a, (#_THIS)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_THIS + 1)
	ldhl	sp,	#1
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #0x000e
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
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
	pop	de
	push	de
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
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
	ld	hl, #0x0010
	add	hl, de
	ld	e, l
	ld	d, h
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ldhl	sp,	#2
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	call	_GetScrollTile
	ld	c, a
	C$SpriteHorse.c$195$3_3$238	= .
	.globl	C$SpriteHorse.c$195$3_3$238
;SpriteHorse.c:195: switch(tile_over){
	ld	a, #0x0d
	sub	a, c
	jp	C, 00240$
	ld	b, #0x00
	ld	hl, #00774$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00774$:
	jp	00240$
	jp	00240$
	jp	00217$
	jp	00217$
	jp	00217$
	jp	00217$
	jp	00217$
	jp	00240$
	jp	00234$
	jp	00234$
	jp	00234$
	jp	00234$
	jp	00234$
	jp	00234$
	C$SpriteHorse.c$197$4_3$239	= .
	.globl	C$SpriteHorse.c$197$4_3$239
;SpriteHorse.c:197: case 5: case 6: //ghiaia: incrementa il frameskip
00217$:
	C$SpriteHorse.c$198$4_3$239	= .
	.globl	C$SpriteHorse.c$198$4_3$239
;SpriteHorse.c:198: frm_skip+=4;
	ld	hl, #_frm_skip
	inc	(hl)
	inc	(hl)
	inc	(hl)
	inc	(hl)
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	C$SpriteHorse.c$199$2_3$191	= .
	.globl	C$SpriteHorse.c$199$2_3$191
;SpriteHorse.c:199: if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
	ld	hl, #0x0009
	add	hl, de
	ld	a, (hl)
	cp	a, #0x01
	jr	Z, 00225$
	sub	a, #0x05
	jp	NZ,00226$
00225$:
	C$SpriteHorse.c$200$5_3$240	= .
	.globl	C$SpriteHorse.c$200$5_3$240
;SpriteHorse.c:200: if(orme_spawned == 0){
	ld	hl, #_orme_spawned
	ld	a, (hl)
	or	a, a
	jp	NZ, 00240$
	C$SpriteHorse.c$201$6_3$241	= .
	.globl	C$SpriteHorse.c$201$6_3$241
;SpriteHorse.c:201: orme_spawned = 1;
	ld	(hl), #0x01
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	C$SpriteHorse.c$202$6_3$241	= .
	.globl	C$SpriteHorse.c$202$6_3$241
;SpriteHorse.c:202: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00778$
	bit	7, d
	jr	NZ, 00779$
	cp	a, a
	jr	00779$
00778$:
	bit	7, d
	jr	Z, 00779$
	scf
00779$:
	jr	NC, 00221$
	C$SpriteHorse.c$203$7_3$242	= .
	.globl	C$SpriteHorse.c$203$7_3$242
;SpriteHorse.c:203: SpriteManagerAdd(SpriteStep, THIS->x - 2, THIS->y-6);
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	add	a, #0xfa
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ldhl	sp,#4
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
	ld	a, #0x02
	call	_SpriteManagerAdd
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$204$7_3$242	= .
	.globl	C$SpriteHorse.c$204$7_3$242
;SpriteHorse.c:204: SpriteManagerAdd(SpriteStep, THIS->x + 8, THIS->y-6);
	ld	hl, #0x000e
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0008
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x02
	call	_SpriteManagerAdd
	jp	00240$
00221$:
	C$SpriteHorse.c$205$6_3$241	= .
	.globl	C$SpriteHorse.c$205$6_3$241
;SpriteHorse.c:205: }else if(vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jp	Z, 00240$
	C$SpriteHorse.c$206$7_3$243	= .
	.globl	C$SpriteHorse.c$206$7_3$243
;SpriteHorse.c:206: SpriteManagerAdd(SpriteStep, THIS->x, THIS->y-6);
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	add	a, #0xfa
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ldhl	sp,#4
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
	ld	e, l
	ld	d, h
	ld	a, #0x02
	call	_SpriteManagerAdd
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteHorse.c$207$7_3$243	= .
	.globl	C$SpriteHorse.c$207$7_3$243
;SpriteHorse.c:207: SpriteManagerAdd(SpriteStep, THIS->x + 8, THIS->y-6);
	ld	hl, #0x000e
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0008
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x02
	call	_SpriteManagerAdd
	jr	00240$
00226$:
	C$SpriteHorse.c$210$5_3$244	= .
	.globl	C$SpriteHorse.c$210$5_3$244
;SpriteHorse.c:210: }else{orme_spawned = 0;}
	ld	hl, #_orme_spawned
	ld	(hl), #0x00
	C$SpriteHorse.c$211$4_3$239	= .
	.globl	C$SpriteHorse.c$211$4_3$239
;SpriteHorse.c:211: break;
	jr	00240$
	C$SpriteHorse.c$213$4_3$239	= .
	.globl	C$SpriteHorse.c$213$4_3$239
;SpriteHorse.c:213: case 11: case 12: case 13: //acqua: simula pantano limitando stamina
00234$:
	C$SpriteHorse.c$214$4_3$239	= .
	.globl	C$SpriteHorse.c$214$4_3$239
;SpriteHorse.c:214: if(stamina_current > (euphoria_min >> 1)){
	ld	hl, #_euphoria_min
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	ld	hl, #_stamina_current
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00240$
	C$SpriteHorse.c$215$5_3$245	= .
	.globl	C$SpriteHorse.c$215$5_3$245
;SpriteHorse.c:215: stamina_current = (euphoria_min >> 1);
	dec	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteHorse.c$218$2_3$233	= .
	.globl	C$SpriteHorse.c$218$2_3$233
;SpriteHorse.c:218: }
00240$:
	C$SpriteHorse.c$221$2_3$233	= .
	.globl	C$SpriteHorse.c$221$2_3$233
;SpriteHorse.c:221: if(stamina_current < 60){
	ld	hl, #_stamina_current
	ld	a, (hl+)
	sub	a, #0x3c
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00780$
	bit	7, d
	jr	NZ, 00781$
	cp	a, a
	jr	00781$
00780$:
	bit	7, d
	jr	Z, 00781$
	scf
00781$:
	jr	NC, 00242$
	C$SpriteHorse.c$222$3_3$246	= .
	.globl	C$SpriteHorse.c$222$3_3$246
;SpriteHorse.c:222: SetSpriteAnim(THIS, a_horse_h_idle,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h_idle
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	jr	00243$
00242$:
	C$SpriteHorse.c$224$3_3$247	= .
	.globl	C$SpriteHorse.c$224$3_3$247
;SpriteHorse.c:224: SetSpriteAnim(THIS, a_horse_h,4u);
	ld	a, #0x04
	push	af
	inc	sp
	ld	bc, #_a_horse_h
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
00243$:
	C$SpriteHorse.c$226$2_3$233	= .
	.globl	C$SpriteHorse.c$226$2_3$233
;SpriteHorse.c:226: THIS->anim_speed = stamina_current >> 5;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x08
	ld	c, a
	jr	NC, 00782$
	inc	b
00782$:
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
00245$:
	C$SpriteHorse.c$194$2_3$191	= .
	.globl	C$SpriteHorse.c$194$2_3$191
;SpriteHorse.c:194: UINT8 tile_over = GetScrollTile((THIS->x + 16) >> 3, (THIS->y+4) >> 3);
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteHorse.c$231$2_3$191	= .
	.globl	C$SpriteHorse.c$231$2_3$191
;SpriteHorse.c:231: THIS->mirror = NO_MIRROR;
	add	a, #0x10
	ld	c, a
	jr	NC, 00783$
	inc	b
00783$:
	C$SpriteHorse.c$230$1_2$215	= .
	.globl	C$SpriteHorse.c$230$1_2$215
;SpriteHorse.c:230: if(vx > 0){
	ld	hl, #_vx
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00784$
	bit	7, d
	jr	NZ, 00785$
	cp	a, a
	jr	00785$
00784$:
	bit	7, d
	jr	Z, 00785$
	scf
00785$:
	jr	NC, 00249$
	C$SpriteHorse.c$231$2_2$248	= .
	.globl	C$SpriteHorse.c$231$2_2$248
;SpriteHorse.c:231: THIS->mirror = NO_MIRROR;
	xor	a, a
	ld	(bc), a
	jr	00250$
00249$:
	C$SpriteHorse.c$232$1_2$215	= .
	.globl	C$SpriteHorse.c$232$1_2$215
;SpriteHorse.c:232: }else if (vx < 0){
	ld	a, (#_vx)
	bit	7, a
	jr	Z, 00250$
	C$SpriteHorse.c$233$2_2$249	= .
	.globl	C$SpriteHorse.c$233$2_2$249
;SpriteHorse.c:233: THIS->mirror = V_MIRROR;
	ld	a, #0x02
	ld	(bc), a
00250$:
	C$SpriteHorse.c$239$2_3$251	= .
	.globl	C$SpriteHorse.c$239$2_3$251
;SpriteHorse.c:239: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
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
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	c, #0x00
00257$:
	ld	hl, #_sprite_manager_updatables
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	Z, 00259$
	C$SpriteHorse.c$240$3_3$252	= .
	.globl	C$SpriteHorse.c$240$3_3$252
;SpriteHorse.c:240: if(CheckCollision(THIS, iospr)) {
	push	bc
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_CheckCollision
	pop	bc
	C$SpriteHorse.c$239$2_3$251	= .
	.globl	C$SpriteHorse.c$239$2_3$251
;SpriteHorse.c:239: SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
	inc	c
	ld	e, c
	ld	d, #0x00
	inc	de
	ld	hl, #_sprite_manager_updatables
	add	hl, de
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_sprite_manager_sprites
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	jr	00257$
00259$:
	C$SpriteHorse.c$249$2_3$191	= .
	.globl	C$SpriteHorse.c$249$2_3$191
;SpriteHorse.c:249: }
	add	sp, #6
	C$SpriteHorse.c$249$2_3$191	= .
	.globl	C$SpriteHorse.c$249$2_3$191
	XG$Update_SpriteHorse$0$0	= .
	.globl	XG$Update_SpriteHorse$0$0
	ret
	G$Destroy_SpriteHorse$0$0	= .
	.globl	G$Destroy_SpriteHorse$0$0
	C$SpriteHorse.c$251$2_3$256	= .
	.globl	C$SpriteHorse.c$251$2_3$256
;SpriteHorse.c:251: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteHorse
; ---------------------------------
_Destroy_SpriteHorse::
	C$SpriteHorse.c$252$2_3$256	= .
	.globl	C$SpriteHorse.c$252$2_3$256
;SpriteHorse.c:252: }
	C$SpriteHorse.c$252$2_3$256	= .
	.globl	C$SpriteHorse.c$252$2_3$256
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
	.area _CABS (ABS)
