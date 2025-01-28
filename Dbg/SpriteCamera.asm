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
	C$SpriteCamera.c$11$0_0$177	= .
	.globl	C$SpriteCamera.c$11$0_0$177
;SpriteCamera.c:11: void START() {
;	---------------------------------
; Function Start_SpriteCamera
; ---------------------------------
_Start_SpriteCamera::
	C$SpriteCamera.c$12$1_0$177	= .
	.globl	C$SpriteCamera.c$12$1_0$177
;SpriteCamera.c:12: THIS->lim_x = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0015
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCamera.c$13$1_0$177	= .
	.globl	C$SpriteCamera.c$13$1_0$177
;SpriteCamera.c:13: THIS->lim_y = 1000;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0017
	add	hl, bc
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
	C$SpriteCamera.c$14$1_0$177	= .
	.globl	C$SpriteCamera.c$14$1_0$177
;SpriteCamera.c:14: }
	C$SpriteCamera.c$14$1_0$177	= .
	.globl	C$SpriteCamera.c$14$1_0$177
	XG$Start_SpriteCamera$0$0	= .
	.globl	XG$Start_SpriteCamera$0$0
	ret
G$__bank_SpriteCamera$0_0$0 == 0x00ff
___bank_SpriteCamera	=	0x00ff
	G$Update_SpriteCamera$0$0	= .
	.globl	G$Update_SpriteCamera$0$0
	C$SpriteCamera.c$16$1_0$178	= .
	.globl	C$SpriteCamera.c$16$1_0$178
;SpriteCamera.c:16: void UPDATE() {
;	---------------------------------
; Function Update_SpriteCamera
; ---------------------------------
_Update_SpriteCamera::
	add	sp, #-7
	C$SpriteCamera.c$17$1_0$178	= .
	.globl	C$SpriteCamera.c$17$1_0$178
;SpriteCamera.c:17: THIS->y = s_horse->y - 18;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	b, (hl)
	add	a, #0x0e
	ld	c, a
	jr	NC, 00177$
	inc	b
00177$:
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
	C$SpriteCamera.c$18$2_0$179	= .
	.globl	C$SpriteCamera.c$18$2_0$179
;SpriteCamera.c:18: INT8 delta_x = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$SpriteCamera.c$17$1_2$178	= .
	.globl	C$SpriteCamera.c$17$1_2$178
;SpriteCamera.c:17: THIS->y = s_horse->y - 18;
	ld	hl, #_THIS
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_s_horse
	ld	a, (hl+)
	ld	b, (hl)
	C$SpriteCamera.c$20$1_2$178	= .
	.globl	C$SpriteCamera.c$20$1_2$178
;SpriteCamera.c:20: UINT16 final_camera_x = s_horse->x + 56;
	add	a, #0x0c
	ld	c, a
	jr	NC, 00178$
	inc	b
00178$:
	C$SpriteCamera.c$23$1_2$178	= .
	.globl	C$SpriteCamera.c$23$1_2$178
;SpriteCamera.c:23: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	C$SpriteCamera.c$20$1_2$178	= .
	.globl	C$SpriteCamera.c$20$1_2$178
;SpriteCamera.c:20: UINT16 final_camera_x = s_horse->x + 56;
	ld	(hl+), a
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	C$SpriteCamera.c$23$1_2$178	= .
	.globl	C$SpriteCamera.c$23$1_2$178
;SpriteCamera.c:23: if(THIS->x > final_camera_x_max){delta_x=-4;}
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
	C$SpriteCamera.c$19$1_1$179	= .
	.globl	C$SpriteCamera.c$19$1_1$179
;SpriteCamera.c:19: if(vx > 1){
	ld	hl, #_vx
	ld	e, (hl)
	ld	a,#0x01
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00179$
	bit	7, d
	jr	NZ, 00180$
	cp	a, a
	jr	00180$
00179$:
	bit	7, d
	jr	Z, 00180$
	scf
00180$:
	jr	NC, 00107$
	C$SpriteCamera.c$20$2_1$180	= .
	.globl	C$SpriteCamera.c$20$2_1$180
;SpriteCamera.c:20: UINT16 final_camera_x = s_horse->x + 56;
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0038
	add	hl, de
	ld	e, l
	ld	d, h
	C$SpriteCamera.c$21$2_1$180	= .
	.globl	C$SpriteCamera.c$21$2_1$180
;SpriteCamera.c:21: UINT16 final_camera_x_min = final_camera_x -8;
	ld	a, e
	add	a, #0xf8
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	b, a
	C$SpriteCamera.c$22$2_1$180	= .
	.globl	C$SpriteCamera.c$22$2_1$180
;SpriteCamera.c:22: UINT16 final_camera_x_max = final_camera_x +8;
	ld	hl, #0x0008
	add	hl, de
	ld	e, l
	ld	d, h
	C$SpriteCamera.c$23$2_1$180	= .
	.globl	C$SpriteCamera.c$23$2_1$180
;SpriteCamera.c:23: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ldhl	sp,	#5
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jr	NC, 00104$
	ldhl	sp,	#0
	ld	(hl), #0xfc
	jr	00107$
00104$:
	C$SpriteCamera.c$24$2_1$180	= .
	.globl	C$SpriteCamera.c$24$2_1$180
;SpriteCamera.c:24: else if(THIS->x < final_camera_x_min){delta_x=+4;}
	ldhl	sp,	#5
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00107$
	ldhl	sp,	#0
	ld	(hl), #0x04
00107$:
	C$SpriteCamera.c$26$1_1$179	= .
	.globl	C$SpriteCamera.c$26$1_1$179
;SpriteCamera.c:26: if(vx < -1){
	ld	a, (#_vx)
	xor	a, #0x80
	sub	a, #0x7f
	jr	NC, 00114$
	C$SpriteCamera.c$27$2_1$183	= .
	.globl	C$SpriteCamera.c$27$2_1$183
;SpriteCamera.c:27: UINT16 final_camera_x = s_horse->x - 40;
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
	C$SpriteCamera.c$28$2_1$183	= .
	.globl	C$SpriteCamera.c$28$2_1$183
;SpriteCamera.c:28: UINT16 final_camera_x_min = final_camera_x -8;
	ld	a, c
	add	a, #0xf8
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	C$SpriteCamera.c$29$2_1$183	= .
	.globl	C$SpriteCamera.c$29$2_1$183
;SpriteCamera.c:29: UINT16 final_camera_x_max = final_camera_x +8;
	ld	l, #0x08
	add	hl, bc
	ld	c, l
	ld	b, h
	C$SpriteCamera.c$30$2_1$183	= .
	.globl	C$SpriteCamera.c$30$2_1$183
;SpriteCamera.c:30: if(THIS->x > final_camera_x_max){delta_x=-4;}
	ldhl	sp,	#5
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00111$
	ldhl	sp,	#0
	ld	(hl), #0xfc
	jr	00114$
00111$:
	C$SpriteCamera.c$31$2_1$183	= .
	.globl	C$SpriteCamera.c$31$2_1$183
;SpriteCamera.c:31: else if(THIS->x < final_camera_x_min){delta_x=+4;}
	ldhl	sp,	#5
	ld	a, (hl+)
	sub	a, e
	ld	a, (hl)
	sbc	a, d
	jr	NC, 00114$
	ldhl	sp,	#0
	ld	(hl), #0x04
00114$:
	C$SpriteCamera.c$33$1_2$186	= .
	.globl	C$SpriteCamera.c$33$1_2$186
;SpriteCamera.c:33: INT16 camera_horse_delta_x = THIS->x - s_horse->x;
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
	C$SpriteCamera.c$34$1_2$186	= .
	.globl	C$SpriteCamera.c$34$1_2$186
;SpriteCamera.c:34: if(camera_horse_delta_x < 60 && camera_horse_delta_x > -60){
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00116$
	ld	e, b
	ld	d, #0xff
	ld	a, #0xc4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	bit	7, e
	jr	Z, 00181$
	bit	7, d
	jr	NZ, 00182$
	cp	a, a
	jr	00182$
00181$:
	bit	7, d
	jr	Z, 00182$
	scf
00182$:
	jr	NC, 00116$
	C$SpriteCamera.c$35$2_2$187	= .
	.globl	C$SpriteCamera.c$35$2_2$187
;SpriteCamera.c:35: THIS->x += delta_x;
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
	jr	00119$
00116$:
	C$SpriteCamera.c$36$2_2$188	= .
	.globl	C$SpriteCamera.c$36$2_2$188
;SpriteCamera.c:36: }else{THIS->x += vx;}
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
00119$:
	C$SpriteCamera.c$37$1_2$178	= .
	.globl	C$SpriteCamera.c$37$1_2$178
;SpriteCamera.c:37: }
	add	sp, #7
	C$SpriteCamera.c$37$1_2$178	= .
	.globl	C$SpriteCamera.c$37$1_2$178
	XG$Update_SpriteCamera$0$0	= .
	.globl	XG$Update_SpriteCamera$0$0
	ret
	G$Destroy_SpriteCamera$0$0	= .
	.globl	G$Destroy_SpriteCamera$0$0
	C$SpriteCamera.c$39$1_2$190	= .
	.globl	C$SpriteCamera.c$39$1_2$190
;SpriteCamera.c:39: void DESTROY() {
;	---------------------------------
; Function Destroy_SpriteCamera
; ---------------------------------
_Destroy_SpriteCamera::
	C$SpriteCamera.c$40$1_2$190	= .
	.globl	C$SpriteCamera.c$40$1_2$190
;SpriteCamera.c:40: }
	C$SpriteCamera.c$40$1_2$190	= .
	.globl	C$SpriteCamera.c$40$1_2$190
	XG$Destroy_SpriteCamera$0$0	= .
	.globl	XG$Destroy_SpriteCamera$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
