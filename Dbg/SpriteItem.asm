;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteItem
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteItem
	.globl _Update_SpriteItem
	.globl _Start_SpriteItem
	.globl b_consume_weapon_def
	.globl _consume_weapon_def
	.globl _SpriteManagerRemoveSprite
	.globl _TranslateSprite
	.globl _SetSpriteAnim
	.globl _a_item_cape
	.globl _a_item_shield
	.globl _a_item_elmet
	.globl _a_item_flame
	.globl _a_item_lance
	.globl _a_item_gladio
	.globl _a_item_time
	.globl _a_item_hp
	.globl _a_item_cape_blink
	.globl _a_item_shield_blink
	.globl _a_item_elmet_blink
	.globl _a_item_flame_blink
	.globl _a_item_lance_blink
	.globl _a_item_gladio_blink
	.globl ___bank_SpriteItem
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
	G$Start_SpriteItem$0$0	= .
	.globl	G$Start_SpriteItem$0$0
	C$SpriteItem.c$37$0_0$190	= .
	.globl	C$SpriteItem.c$37$0_0$190
;SpriteItem.c:37: void START() {
;	---------------------------------
; Function Start_SpriteItem
; ---------------------------------
_Start_SpriteItem::
	C$SpriteItem.c$38$1_0$190	= .
	.globl	C$SpriteItem.c$38$1_0$190
;SpriteItem.c:38: struct ItemData* item_data = (struct ItemData*) THIS->custom_data;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	C$SpriteItem.c$39$1_0$190	= .
	.globl	C$SpriteItem.c$39$1_0$190
;SpriteItem.c:39: item_data->configured = 0;
	ld	hl,#0x1e
	add	hl,bc
	ld	(hl), #0x00
	C$SpriteItem.c$40$1_0$190	= .
	.globl	C$SpriteItem.c$40$1_0$190
;SpriteItem.c:40: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteItem.c$41$1_0$190	= .
	.globl	C$SpriteItem.c$41$1_0$190
;SpriteItem.c:41: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteItem.c$42$1_0$190	= .
	.globl	C$SpriteItem.c$42$1_0$190
;SpriteItem.c:42: }
	C$SpriteItem.c$42$1_0$190	= .
	.globl	C$SpriteItem.c$42$1_0$190
	XG$Start_SpriteItem$0$0	= .
	.globl	XG$Start_SpriteItem$0$0
	ret
G$__bank_SpriteItem$0_0$0 == 0x00ff
___bank_SpriteItem	=	0x00ff
G$a_item_gladio_blink$0_0$0 == .
_a_item_gladio_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
G$a_item_lance_blink$0_0$0 == .
_a_item_lance_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
G$a_item_flame_blink$0_0$0 == .
_a_item_flame_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
G$a_item_elmet_blink$0_0$0 == .
_a_item_elmet_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
G$a_item_shield_blink$0_0$0 == .
_a_item_shield_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
G$a_item_cape_blink$0_0$0 == .
_a_item_cape_blink:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x06	; 6
G$a_item_hp$0_0$0 == .
_a_item_hp:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x07	; 7
G$a_item_time$0_0$0 == .
_a_item_time:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x08	; 8
G$a_item_gladio$0_0$0 == .
_a_item_gladio:
	.db #0x01	; 1
	.db #0x01	; 1
G$a_item_lance$0_0$0 == .
_a_item_lance:
	.db #0x01	; 1
	.db #0x02	; 2
G$a_item_flame$0_0$0 == .
_a_item_flame:
	.db #0x01	; 1
	.db #0x03	; 3
G$a_item_elmet$0_0$0 == .
_a_item_elmet:
	.db #0x01	; 1
	.db #0x04	; 4
G$a_item_shield$0_0$0 == .
_a_item_shield:
	.db #0x01	; 1
	.db #0x05	; 5
G$a_item_cape$0_0$0 == .
_a_item_cape:
	.db #0x01	; 1
	.db #0x06	; 6
	G$Update_SpriteItem$0$0	= .
	.globl	G$Update_SpriteItem$0$0
	C$SpriteItem.c$44$1_0$191	= .
	.globl	C$SpriteItem.c$44$1_0$191
;SpriteItem.c:44: void UPDATE() {
;	---------------------------------
; Function Update_SpriteItem
; ---------------------------------
_Update_SpriteItem::
	add	sp, #-13
	C$SpriteItem.c$45$1_0$191	= .
	.globl	C$SpriteItem.c$45$1_0$191
;SpriteItem.c:45: struct ItemData* item_data = (struct ItemData*) THIS->custom_data;
	ld	a, (#_THIS)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_THIS + 1)
	ldhl	sp,	#1
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #0x001b
	add	hl, de
	ld	c, l
	ld	a, h
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	C$SpriteItem.c$46$1_0$191	= .
	.globl	C$SpriteItem.c$46$1_0$191
;SpriteItem.c:46: switch(item_data->configured){
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0003
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
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	or	a, a
	jp	Z,00129$
	C$SpriteItem.c$49$1_0$191	= .
	.globl	C$SpriteItem.c$49$1_0$191
;SpriteItem.c:49: switch(item_data->itemtype){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	C$SpriteItem.c$46$1_0$191	= .
	.globl	C$SpriteItem.c$46$1_0$191
;SpriteItem.c:46: switch(item_data->configured){
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	dec	a
	jr	Z, 00102$
	C$SpriteItem.c$85$1_0$191	= .
	.globl	C$SpriteItem.c$85$1_0$191
;SpriteItem.c:85: item_data->vy = vy;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
	C$SpriteItem.c$100$1_0$191	= .
	.globl	C$SpriteItem.c$100$1_0$191
;SpriteItem.c:100: item_data->hp = 80;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
	C$SpriteItem.c$46$1_0$191	= .
	.globl	C$SpriteItem.c$46$1_0$191
;SpriteItem.c:46: switch(item_data->configured){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x03
	jp	Z,00112$
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x04
	jp	Z,00120$
	C$SpriteItem.c$47$2_0$192	= .
	.globl	C$SpriteItem.c$47$2_0$192
;SpriteItem.c:47: case 0: return; break;
	jp	00129$
	C$SpriteItem.c$48$2_0$192	= .
	.globl	C$SpriteItem.c$48$2_0$192
;SpriteItem.c:48: case 1://set animation
00102$:
	C$SpriteItem.c$49$2_0$192	= .
	.globl	C$SpriteItem.c$49$2_0$192
;SpriteItem.c:49: switch(item_data->itemtype){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	sub	a, #0x03
	jp	C, 00111$
	ld	a, #0x0a
	sub	a, c
	jp	C, 00111$
	ld	a, c
	add	a, #0xfd
	ld	c, a
	ld	b, #0x00
	ld	hl, #00247$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00247$:
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	C$SpriteItem.c$50$3_0$193	= .
	.globl	C$SpriteItem.c$50$3_0$193
;SpriteItem.c:50: case GLADIO:
00103$:
	C$SpriteItem.c$51$3_0$193	= .
	.globl	C$SpriteItem.c$51$3_0$193
;SpriteItem.c:51: SetSpriteAnim(THIS, a_item_gladio_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_gladio_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$52$3_0$193	= .
	.globl	C$SpriteItem.c$52$3_0$193
;SpriteItem.c:52: break;
	jr	00111$
	C$SpriteItem.c$53$3_0$193	= .
	.globl	C$SpriteItem.c$53$3_0$193
;SpriteItem.c:53: case LANCE:
00104$:
	C$SpriteItem.c$54$3_0$193	= .
	.globl	C$SpriteItem.c$54$3_0$193
;SpriteItem.c:54: SetSpriteAnim(THIS, a_item_lance_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_lance_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$55$3_0$193	= .
	.globl	C$SpriteItem.c$55$3_0$193
;SpriteItem.c:55: break;
	jr	00111$
	C$SpriteItem.c$56$3_0$193	= .
	.globl	C$SpriteItem.c$56$3_0$193
;SpriteItem.c:56: case FLAME:
00105$:
	C$SpriteItem.c$57$3_0$193	= .
	.globl	C$SpriteItem.c$57$3_0$193
;SpriteItem.c:57: SetSpriteAnim(THIS, a_item_flame_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_flame_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$58$3_0$193	= .
	.globl	C$SpriteItem.c$58$3_0$193
;SpriteItem.c:58: break;
	jr	00111$
	C$SpriteItem.c$59$3_0$193	= .
	.globl	C$SpriteItem.c$59$3_0$193
;SpriteItem.c:59: case ELMET:
00106$:
	C$SpriteItem.c$60$3_0$193	= .
	.globl	C$SpriteItem.c$60$3_0$193
;SpriteItem.c:60: SetSpriteAnim(THIS, a_item_elmet_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_elmet_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$61$3_0$193	= .
	.globl	C$SpriteItem.c$61$3_0$193
;SpriteItem.c:61: break;
	jr	00111$
	C$SpriteItem.c$62$3_0$193	= .
	.globl	C$SpriteItem.c$62$3_0$193
;SpriteItem.c:62: case SHIELD:
00107$:
	C$SpriteItem.c$63$3_0$193	= .
	.globl	C$SpriteItem.c$63$3_0$193
;SpriteItem.c:63: SetSpriteAnim(THIS, a_item_shield_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_shield_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$64$3_0$193	= .
	.globl	C$SpriteItem.c$64$3_0$193
;SpriteItem.c:64: break;
	jr	00111$
	C$SpriteItem.c$65$3_0$193	= .
	.globl	C$SpriteItem.c$65$3_0$193
;SpriteItem.c:65: case CAPE:
00108$:
	C$SpriteItem.c$66$3_0$193	= .
	.globl	C$SpriteItem.c$66$3_0$193
;SpriteItem.c:66: SetSpriteAnim(THIS, a_item_cape_blink, 24);
	ld	a, #0x18
	push	af
	inc	sp
	ld	bc, #_a_item_cape_blink
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$67$3_0$193	= .
	.globl	C$SpriteItem.c$67$3_0$193
;SpriteItem.c:67: break;
	jr	00111$
	C$SpriteItem.c$68$3_0$193	= .
	.globl	C$SpriteItem.c$68$3_0$193
;SpriteItem.c:68: case HP:
00109$:
	C$SpriteItem.c$69$3_0$193	= .
	.globl	C$SpriteItem.c$69$3_0$193
;SpriteItem.c:69: SetSpriteAnim(THIS, a_item_hp, 64);
	ld	a, #0x40
	push	af
	inc	sp
	ld	bc, #_a_item_hp
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$70$3_0$193	= .
	.globl	C$SpriteItem.c$70$3_0$193
;SpriteItem.c:70: break;
	jr	00111$
	C$SpriteItem.c$71$3_0$193	= .
	.globl	C$SpriteItem.c$71$3_0$193
;SpriteItem.c:71: case TIME:
00110$:
	C$SpriteItem.c$72$3_0$193	= .
	.globl	C$SpriteItem.c$72$3_0$193
;SpriteItem.c:72: SetSpriteAnim(THIS, a_item_time, 64);
	ld	a, #0x40
	push	af
	inc	sp
	ld	bc, #_a_item_time
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$74$2_0$192	= .
	.globl	C$SpriteItem.c$74$2_0$192
;SpriteItem.c:74: }
00111$:
	C$SpriteItem.c$75$2_0$192	= .
	.globl	C$SpriteItem.c$75$2_0$192
;SpriteItem.c:75: item_data->configured = 2;
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x02
	C$SpriteItem.c$76$2_0$192	= .
	.globl	C$SpriteItem.c$76$2_0$192
;SpriteItem.c:76: break;
	jp	00129$
	C$SpriteItem.c$77$2_0$192	= .
	.globl	C$SpriteItem.c$77$2_0$192
;SpriteItem.c:77: case 3://using the weapon!
00112$:
	C$SpriteItem.c$78$2_0$192	= .
	.globl	C$SpriteItem.c$78$2_0$192
;SpriteItem.c:78: switch(item_data->itemtype){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	cp	a, #0x03
	jr	Z, 00113$
	cp	a, #0x04
	jr	Z, 00114$
	cp	a, #0x05
	jr	Z, 00115$
	cp	a, #0x06
	jr	Z, 00116$
	cp	a, #0x07
	jr	Z, 00117$
	sub	a, #0x08
	jr	Z, 00118$
	jr	00119$
	C$SpriteItem.c$79$3_0$194	= .
	.globl	C$SpriteItem.c$79$3_0$194
;SpriteItem.c:79: case GLADIO:
00113$:
	C$SpriteItem.c$80$3_0$194	= .
	.globl	C$SpriteItem.c$80$3_0$194
;SpriteItem.c:80: SetSpriteAnim(THIS, a_item_gladio, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_gladio
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$81$3_0$194	= .
	.globl	C$SpriteItem.c$81$3_0$194
;SpriteItem.c:81: break;
	jr	00119$
	C$SpriteItem.c$82$3_0$194	= .
	.globl	C$SpriteItem.c$82$3_0$194
;SpriteItem.c:82: case LANCE:
00114$:
	C$SpriteItem.c$83$3_0$194	= .
	.globl	C$SpriteItem.c$83$3_0$194
;SpriteItem.c:83: SetSpriteAnim(THIS, a_item_lance, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_lance
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$84$3_0$194	= .
	.globl	C$SpriteItem.c$84$3_0$194
;SpriteItem.c:84: item_data->vx = vx;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_vx)
	ld	(de), a
	C$SpriteItem.c$85$3_0$194	= .
	.globl	C$SpriteItem.c$85$3_0$194
;SpriteItem.c:85: item_data->vy = vy;
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (#_vy)
	ld	(de), a
	C$SpriteItem.c$86$3_0$194	= .
	.globl	C$SpriteItem.c$86$3_0$194
;SpriteItem.c:86: break;
	jr	00119$
	C$SpriteItem.c$87$3_0$194	= .
	.globl	C$SpriteItem.c$87$3_0$194
;SpriteItem.c:87: case FLAME:
00115$:
	C$SpriteItem.c$88$3_0$194	= .
	.globl	C$SpriteItem.c$88$3_0$194
;SpriteItem.c:88: SetSpriteAnim(THIS, a_item_flame, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_flame
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$89$3_0$194	= .
	.globl	C$SpriteItem.c$89$3_0$194
;SpriteItem.c:89: break;
	jr	00119$
	C$SpriteItem.c$90$3_0$194	= .
	.globl	C$SpriteItem.c$90$3_0$194
;SpriteItem.c:90: case ELMET:
00116$:
	C$SpriteItem.c$91$3_0$194	= .
	.globl	C$SpriteItem.c$91$3_0$194
;SpriteItem.c:91: SetSpriteAnim(THIS, a_item_elmet, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_elmet
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$92$3_0$194	= .
	.globl	C$SpriteItem.c$92$3_0$194
;SpriteItem.c:92: break;
	jr	00119$
	C$SpriteItem.c$93$3_0$194	= .
	.globl	C$SpriteItem.c$93$3_0$194
;SpriteItem.c:93: case SHIELD:
00117$:
	C$SpriteItem.c$94$3_0$194	= .
	.globl	C$SpriteItem.c$94$3_0$194
;SpriteItem.c:94: SetSpriteAnim(THIS, a_item_shield, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_shield
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$95$3_0$194	= .
	.globl	C$SpriteItem.c$95$3_0$194
;SpriteItem.c:95: break;
	jr	00119$
	C$SpriteItem.c$96$3_0$194	= .
	.globl	C$SpriteItem.c$96$3_0$194
;SpriteItem.c:96: case CAPE:
00118$:
	C$SpriteItem.c$97$3_0$194	= .
	.globl	C$SpriteItem.c$97$3_0$194
;SpriteItem.c:97: SetSpriteAnim(THIS, a_item_cape, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	bc, #_a_item_cape
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_SetSpriteAnim
	C$SpriteItem.c$99$2_0$192	= .
	.globl	C$SpriteItem.c$99$2_0$192
;SpriteItem.c:99: }
00119$:
	C$SpriteItem.c$100$2_0$192	= .
	.globl	C$SpriteItem.c$100$2_0$192
;SpriteItem.c:100: item_data->hp = 80;
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x50
	C$SpriteItem.c$101$2_0$192	= .
	.globl	C$SpriteItem.c$101$2_0$192
;SpriteItem.c:101: item_data->configured = 4;
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x04
	C$SpriteItem.c$102$2_0$192	= .
	.globl	C$SpriteItem.c$102$2_0$192
;SpriteItem.c:102: break;
	jp	00129$
	C$SpriteItem.c$103$2_0$192	= .
	.globl	C$SpriteItem.c$103$2_0$192
;SpriteItem.c:103: case 4://weapon in use!
00120$:
	C$SpriteItem.c$104$2_0$192	= .
	.globl	C$SpriteItem.c$104$2_0$192
;SpriteItem.c:104: switch(item_data->itemtype){
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	cp	a, #0x04
	jp	Z,00126$
	cp	a, #0x06
	jr	Z, 00123$
	cp	a, #0x07
	jr	Z, 00123$
	sub	a, #0x08
	jp	NZ,00129$
	C$SpriteItem.c$107$3_0$195	= .
	.globl	C$SpriteItem.c$107$3_0$195
;SpriteItem.c:107: case CAPE:
00123$:
	C$SpriteItem.c$108$3_0$195	= .
	.globl	C$SpriteItem.c$108$3_0$195
;SpriteItem.c:108: THIS->x = s_horse->x;
	pop	de
	push	de
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x000c
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$SpriteItem.c$109$3_0$195	= .
	.globl	C$SpriteItem.c$109$3_0$195
;SpriteItem.c:109: THIS->y = s_horse->y - 24;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00259$
	inc	b
00259$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0xe8
	ld	e, a
	ld	a, l
	adc	a, #0xff
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteItem.c$110$3_0$195	= .
	.globl	C$SpriteItem.c$110$3_0$195
;SpriteItem.c:110: item_data->hp--;
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	c
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	(hl), c
	C$SpriteItem.c$111$3_0$195	= .
	.globl	C$SpriteItem.c$111$3_0$195
;SpriteItem.c:111: if(item_data->hp <= 0){
	ld	e, c
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
	jr	Z, 00260$
	bit	7, d
	jr	NZ, 00261$
	cp	a, a
	jr	00261$
00260$:
	bit	7, d
	jr	Z, 00261$
	scf
00261$:
	jr	C, 00129$
	C$SpriteItem.c$112$4_0$196	= .
	.globl	C$SpriteItem.c$112$4_0$196
;SpriteItem.c:112: consume_weapon_def();
	ld	e, #b_consume_weapon_def
	ld	hl, #_consume_weapon_def
	call	___sdcc_bcall_ehl
	C$SpriteItem.c$113$4_0$196	= .
	.globl	C$SpriteItem.c$113$4_0$196
;SpriteItem.c:113: SpriteManagerRemoveSprite(THIS);
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_SpriteManagerRemoveSprite
	C$SpriteItem.c$115$3_0$195	= .
	.globl	C$SpriteItem.c$115$3_0$195
;SpriteItem.c:115: break;
	jr	00129$
	C$SpriteItem.c$116$3_0$195	= .
	.globl	C$SpriteItem.c$116$3_0$195
;SpriteItem.c:116: case LANCE:
00126$:
	C$SpriteItem.c$117$3_0$195	= .
	.globl	C$SpriteItem.c$117$3_0$195
;SpriteItem.c:117: TranslateSprite(THIS, item_data->vx << delta_time, item_data->vy << delta_time);
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #_delta_time
	ld	b, (hl)
	inc	b
	jr	00263$
00262$:
	add	a, a
00263$:
	dec	b
	jr	NZ,00262$
	ldhl	sp,#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
	ld	hl, #_delta_time
	ld	b, (hl)
	inc	b
	jr	00265$
00264$:
	sla	c
00265$:
	dec	b
	jr	NZ,00264$
	push	af
	inc	sp
	ld	a, c
	ld	hl, #_THIS
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_TranslateSprite
	C$SpriteItem.c$121$1_0$191	= .
	.globl	C$SpriteItem.c$121$1_0$191
;SpriteItem.c:121: }
00129$:
	C$SpriteItem.c$122$1_0$191	= .
	.globl	C$SpriteItem.c$122$1_0$191
;SpriteItem.c:122: }
	add	sp, #13
	C$SpriteItem.c$122$1_0$191	= .
	.globl	C$SpriteItem.c$122$1_0$191
	XG$Update_SpriteItem$0$0	= .
	.globl	XG$Update_SpriteItem$0$0
	ret
	G$Destroy_SpriteItem$0$0	= .
	.globl	G$Destroy_SpriteItem$0$0
	C$SpriteItem.c$124$1_0$198	= .
	.globl	C$SpriteItem.c$124$1_0$198
;SpriteItem.c:124: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteItem
; ---------------------------------
_Destroy_SpriteItem::
	C$SpriteItem.c$125$1_0$198	= .
	.globl	C$SpriteItem.c$125$1_0$198
;SpriteItem.c:125: }
	C$SpriteItem.c$125$1_0$198	= .
	.globl	C$SpriteItem.c$125$1_0$198
	XG$Destroy_SpriteItem$0$0	= .
	.globl	XG$Destroy_SpriteItem$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
