;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpriteCamera
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpriteCamera
	.globl _Update_SpriteCamera
	.globl _Start_SpriteCamera
	.globl ___bank_SpriteCamera
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
	G$Start_SpriteCamera$0$0	= .
	.globl	G$Start_SpriteCamera$0$0
	C$SpriteCamera.c$12$0_0$178	= .
	.globl	C$SpriteCamera.c$12$0_0$178
;SpriteCamera.c:12: void START() {
;	---------------------------------
; Function Start_SpriteCamera
; ---------------------------------
_Start_SpriteCamera::
	C$SpriteCamera.c$13$1_0$178	= .
	.globl	C$SpriteCamera.c$13$1_0$178
;SpriteCamera.c:13: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCamera.c$14$1_0$178	= .
	.globl	C$SpriteCamera.c$14$1_0$178
;SpriteCamera.c:14: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCamera.c$15$1_0$178	= .
	.globl	C$SpriteCamera.c$15$1_0$178
;SpriteCamera.c:15: }
	C$SpriteCamera.c$15$1_0$178	= .
	.globl	C$SpriteCamera.c$15$1_0$178
	XG$Start_SpriteCamera$0$0	= .
	.globl	XG$Start_SpriteCamera$0$0
	ret
G$__bank_SpriteCamera$0_0$0 == 0x00ff
___bank_SpriteCamera	=	0x00ff
	G$Update_SpriteCamera$0$0	= .
	.globl	G$Update_SpriteCamera$0$0
	C$SpriteCamera.c$17$1_0$179	= .
	.globl	C$SpriteCamera.c$17$1_0$179
;SpriteCamera.c:17: void UPDATE() {
;	---------------------------------
; Function Update_SpriteCamera
; ---------------------------------
_Update_SpriteCamera::
	add	sp, #-11
	C$SpriteCamera.c$18$1_0$179	= .
	.globl	C$SpriteCamera.c$18$1_0$179
;SpriteCamera.c:18: if(track_ended == 1){
	ld	a, (#_track_ended)
	dec	a
	jp	Z,00121$
	C$SpriteCamera.c$19$2_0$180	= .
	.globl	C$SpriteCamera.c$19$2_0$180
;SpriteCamera.c:19: return;
	jr	00102$
00102$:
	C$SpriteCamera.c$21$1_0$179	= .
	.globl	C$SpriteCamera.c$21$1_0$179
;SpriteCamera.c:21: THIS->y = s_horse->y - 18;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00188$
	inc	b
00188$:
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
	add	a, #0xee
	ld	e, a
	ld	a, l
	adc	a, #0xff
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$SpriteCamera.c$22$2_0$181	= .
	.globl	C$SpriteCamera.c$22$2_0$181
;SpriteCamera.c:22: INT8 delta_x = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$SpriteCamera.c$21$1_2$179	= .
	.globl	C$SpriteCamera.c$21$1_2$179
;SpriteCamera.c:21: THIS->y = s_horse->y - 18;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteCamera.c$24$1_2$179	= .
	.globl	C$SpriteCamera.c$24$1_2$179
;SpriteCamera.c:24: UINT16 final_camera_x = s_horse->x + 56;
	add	a, #0x0c
	ld	c, a
	jr	NC, 00189$
	inc	b
00189$:
	C$SpriteCamera.c$27$1_2$179	= .
	.globl	C$SpriteCamera.c$27$1_2$179
;SpriteCamera.c:27: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	C$SpriteCamera.c$24$1_2$179	= .
	.globl	C$SpriteCamera.c$24$1_2$179
;SpriteCamera.c:24: UINT16 final_camera_x = s_horse->x + 56;
	ld	(hl+), a
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	C$SpriteCamera.c$27$1_2$179	= .
	.globl	C$SpriteCamera.c$27$1_2$179
;SpriteCamera.c:27: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$SpriteCamera.c$23$1_1$181	= .
	.globl	C$SpriteCamera.c$23$1_1$181
;SpriteCamera.c:23: if(vx > 1){
	ld	hl, #_vx
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00190$
	bit	7, d
	jr	NZ, 00191$
	cp	a, a
	jr	00191$
00190$:
	bit	7, d
	jr	Z, 00191$
	scf
00191$:
	jr	NC, 00109$
	C$SpriteCamera.c$24$2_1$182	= .
	.globl	C$SpriteCamera.c$24$2_1$182
;SpriteCamera.c:24: UINT16 final_camera_x = s_horse->x + 56;
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0038
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	C$SpriteCamera.c$25$2_1$182	= .
	.globl	C$SpriteCamera.c$25$2_1$182
;SpriteCamera.c:25: UINT16 final_camera_x_min = final_camera_x -8;
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	C$SpriteCamera.c$26$2_1$182	= .
	.globl	C$SpriteCamera.c$26$2_1$182
;SpriteCamera.c:26: UINT16 final_camera_x_max = final_camera_x +8;
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	c, l
	ld	b, h
	C$SpriteCamera.c$27$2_1$182	= .
	.globl	C$SpriteCamera.c$27$2_1$182
;SpriteCamera.c:27: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ldhl	sp,	#5
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00106$
	ldhl	sp,	#0
	ld	(hl), #0xfc
	jr	00109$
00106$:
	C$SpriteCamera.c$28$2_1$182	= .
	.globl	C$SpriteCamera.c$28$2_1$182
;SpriteCamera.c:28: else if(THIS->x < final_camera_x_min){delta_x=+4;}
	ldhl	sp,	#5
	ld	e, l
	ld	d, h
	ldhl	sp,	#9
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00109$
	ldhl	sp,	#0
	ld	(hl), #0x04
00109$:
	C$SpriteCamera.c$30$1_1$181	= .
	.globl	C$SpriteCamera.c$30$1_1$181
;SpriteCamera.c:30: if(vx < -1){
	ld	a, (#_vx)
	xor	a, #0x80
	sub	a, #0x7f
	jr	NC, 00116$
	C$SpriteCamera.c$31$2_1$185	= .
	.globl	C$SpriteCamera.c$31$2_1$185
;SpriteCamera.c:31: UINT16 final_camera_x = s_horse->x - 40;
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0028
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
	C$SpriteCamera.c$32$2_1$185	= .
	.globl	C$SpriteCamera.c$32$2_1$185
;SpriteCamera.c:32: UINT16 final_camera_x_min = final_camera_x -8;
	ld	a, c
	add	a, #0xf8
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	C$SpriteCamera.c$33$2_1$185	= .
	.globl	C$SpriteCamera.c$33$2_1$185
;SpriteCamera.c:33: UINT16 final_camera_x_max = final_camera_x +8;
	ld	l, #0x08
	add	hl, bc
	ld	c, l
	ld	b, h
	C$SpriteCamera.c$34$2_1$185	= .
	.globl	C$SpriteCamera.c$34$2_1$185
;SpriteCamera.c:34: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ldhl	sp,	#5
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00113$
	ldhl	sp,	#0
	ld	(hl), #0xfc
	jr	00116$
00113$:
	C$SpriteCamera.c$35$2_1$185	= .
	.globl	C$SpriteCamera.c$35$2_1$185
;SpriteCamera.c:35: else if(THIS->x < final_camera_x_min){delta_x=+4;}
	ldhl	sp,	#5
	ld	a, (hl+)
	sub	a, e
	ld	a, (hl)
	sbc	a, d
	jr	NC, 00116$
	ldhl	sp,	#0
	ld	(hl), #0x04
00116$:
	C$SpriteCamera.c$37$1_2$188	= .
	.globl	C$SpriteCamera.c$37$1_2$188
;SpriteCamera.c:37: INT16 camera_horse_delta_x = THIS->x - s_horse->x;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	c, e
	ld	b, a
	C$SpriteCamera.c$38$1_2$188	= .
	.globl	C$SpriteCamera.c$38$1_2$188
;SpriteCamera.c:38: if(camera_horse_delta_x < 60 && camera_horse_delta_x > -60){
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00118$
	ld	e, b
	ld	d, #0xff
	ld	a, #0xc4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	bit	7, e
	jr	Z, 00192$
	bit	7, d
	jr	NZ, 00193$
	cp	a, a
	jr	00193$
00192$:
	bit	7, d
	jr	Z, 00193$
	scf
00193$:
	jr	NC, 00118$
	C$SpriteCamera.c$39$2_2$189	= .
	.globl	C$SpriteCamera.c$39$2_2$189
;SpriteCamera.c:39: THIS->x += delta_x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00121$
00118$:
	C$SpriteCamera.c$40$2_2$190	= .
	.globl	C$SpriteCamera.c$40$2_2$190
;SpriteCamera.c:40: }else{THIS->x += vx;}
	ld	a, (#_vx)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00121$:
	C$SpriteCamera.c$41$1_2$179	= .
	.globl	C$SpriteCamera.c$41$1_2$179
;SpriteCamera.c:41: }
	add	sp, #11
	C$SpriteCamera.c$41$1_2$179	= .
	.globl	C$SpriteCamera.c$41$1_2$179
	XG$Update_SpriteCamera$0$0	= .
	.globl	XG$Update_SpriteCamera$0$0
	ret
	G$Destroy_SpriteCamera$0$0	= .
	.globl	G$Destroy_SpriteCamera$0$0
	C$SpriteCamera.c$43$1_2$192	= .
	.globl	C$SpriteCamera.c$43$1_2$192
;SpriteCamera.c:43: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteCamera
; ---------------------------------
_Destroy_SpriteCamera::
	C$SpriteCamera.c$44$1_2$192	= .
	.globl	C$SpriteCamera.c$44$1_2$192
;SpriteCamera.c:44: }
	C$SpriteCamera.c$44$1_2$192	= .
	.globl	C$SpriteCamera.c$44$1_2$192
	XG$Destroy_SpriteCamera$0$0	= .
	.globl	XG$Destroy_SpriteCamera$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
