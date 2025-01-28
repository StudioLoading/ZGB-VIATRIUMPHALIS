;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module fire_gbr
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fire
	.globl _fire_metasprites
	.globl _fire_metasprite7
	.globl _fire_metasprite6
	.globl _fire_metasprite5
	.globl _fire_metasprite4
	.globl _fire_metasprite3
	.globl _fire_metasprite2
	.globl _fire_metasprite1
	.globl _fire_metasprite0
	.globl _fire_tiles
	.globl _fire_palettes
	.globl b___func_fire
	.globl ___func_fire
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
	G$__func_fire$0$0	= .
	.globl	G$__func_fire$0$0
	C$fire.gbr.c$9$0_0$161	= .
	.globl	C$fire.gbr.c$9$0_0$161
;../Dbg/res/sprites/fire.gbr.c:9: BANKREF(fire)
;	---------------------------------
; Function __func_fire
; ---------------------------------
	b___func_fire	= 255
___func_fire::
	.local b___func_fire 
	___bank_fire = b___func_fire 
	.globl ___bank_fire 
	.area _CODE_255
G$fire_palettes$0_0$0 == .
_fire_palettes:
	.dw #0x7fff
	.dw #0x6318
	.dw #0x4210
	.dw #0x0000
	.dw #0x7fff
	.dw #0x029f
	.dw #0x011f
	.dw #0x0000
G$fire_tiles$0_0$0 == .
_fire_tiles:
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x3b	; 59
	.db #0x3f	; 63
	.db #0x73	; 115	's'
	.db #0x7f	; 127
	.db #0x71	; 113	'q'
	.db #0x7f	; 127
	.db #0x78	; 120	'x'
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x7c	; 124
	.db #0x60	; 96
	.db #0x78	; 120	'x'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x2d	; 45
	.db #0x2d	; 45
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x4b	; 75	'K'
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0x64	; 100	'd'
	.db #0x78	; 120	'x'
	.db #0x6c	; 108	'l'
	.db #0x70	; 112	'p'
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x74	; 116	't'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x76	; 118	'v'
	.db #0x7f	; 127
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xff	; 255
	.db #0x70	; 112	'p'
	.db #0x7f	; 127
	.db #0x60	; 96
	.db #0x7c	; 124
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0xbc	; 188
	.db #0xbf	; 191
	.db #0xf4	; 244
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xfe	; 254
	.db #0x60	; 96
	.db #0x7c	; 124
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xd0	; 208
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xde	; 222
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite0$0_0$0 == .
_fire_metasprite0:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite1$0_0$0 == .
_fire_metasprite1:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite2$0_0$0 == .
_fire_metasprite2:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite3$0_0$0 == .
_fire_metasprite3:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite4$0_0$0 == .
_fire_metasprite4:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite5$0_0$0 == .
_fire_metasprite5:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite6$0_0$0 == .
_fire_metasprite6:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprite7$0_0$0 == .
_fire_metasprite7:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fire_metasprites$0_0$0 == .
_fire_metasprites:
	.dw _fire_metasprite0
	.dw _fire_metasprite1
	.dw _fire_metasprite2
	.dw _fire_metasprite3
	.dw _fire_metasprite4
	.dw _fire_metasprite5
	.dw _fire_metasprite6
	.dw _fire_metasprite7
G$fire$0_0$0 == .
_fire:
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.dw _fire_tiles
	.db #0x02	; 2
	.dw _fire_palettes
	.db #0x08	; 8
	.dw _fire_metasprites
	.area _INITIALIZER
	.area _CABS (ABS)
