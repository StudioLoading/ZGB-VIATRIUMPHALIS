;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module biga_gbr
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _biga
	.globl _biga_metasprites
	.globl _biga_metasprite5
	.globl _biga_metasprite4
	.globl _biga_metasprite3
	.globl _biga_metasprite2
	.globl _biga_metasprite1
	.globl _biga_metasprite0
	.globl _biga_tiles
	.globl _biga_palettes
	.globl b___func_biga
	.globl ___func_biga
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
	G$__func_biga$0$0	= .
	.globl	G$__func_biga$0$0
	C$biga.gbr.c$9$0_0$161	= .
	.globl	C$biga.gbr.c$9$0_0$161
;../Dbg/res/sprites/biga.gbr.c:9: BANKREF(biga)
;	---------------------------------
; Function __func_biga
; ---------------------------------
	b___func_biga	= 255
___func_biga::
	.local b___func_biga 
	___bank_biga = b___func_biga 
	.globl ___bank_biga 
	.area _CODE_255
G$biga_palettes$0_0$0 == .
_biga_palettes:
	.dw #0x7fff
	.dw #0x4f7e
	.dw #0x0179
	.dw #0x04aa
G$biga_tiles$0_0$0 == .
_biga_tiles:
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0xf8	; 248
	.db #0xbc	; 188
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xe0	; 224
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xbc	; 188
	.db #0xe4	; 228
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xec	; 236
	.db #0xc0	; 192
	.db #0xd8	; 216
	.db #0xc0	; 192
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0xf8	; 248
	.db #0xbc	; 188
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xe0	; 224
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0xec	; 236
	.db #0xe0	; 224
	.db #0xec	; 236
	.db #0xe0	; 224
	.db #0xd8	; 216
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x39	; 57	'9'
	.db #0x3e	; 62
	.db #0x70	; 112	'p'
	.db #0x7f	; 127
	.db #0xf1	; 241
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0xe2	; 226
	.db #0x1e	; 30
	.db #0x72	; 114	'r'
	.db #0x8e	; 142
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0xda	; 218
	.db #0x26	; 38
	.db #0x4a	; 74	'J'
	.db #0xb6	; 182
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x6e	; 110	'n'
	.db #0x7e	; 126
	.db #0xdc	; 220
	.db #0x1c	; 28
	.db #0xba	; 186
	.db #0x38	; 56	'8'
	.db #0xd6	; 214
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x7f	; 127
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xb8	; 184
	.db #0xe8	; 232
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xdc	; 220
	.db #0x1c	; 28
	.db #0xba	; 186
	.db #0x38	; 56	'8'
	.db #0xd6	; 214
	.db #0x10	; 16
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1d	; 29
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0xf8	; 248
	.db #0xbc	; 188
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xe0	; 224
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0x7c	; 124
	.db #0xe4	; 228
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0xec	; 236
	.db #0xe0	; 224
	.db #0xd8	; 216
	.db #0x40	; 64
G$biga_metasprite0$0_0$0 == .
_biga_metasprite0:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$biga_metasprite1$0_0$0 == .
_biga_metasprite1:
	.db #0xf8	; -8
	.db #0xfc	; -4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$biga_metasprite2$0_0$0 == .
_biga_metasprite2:
	.db #0xf8	; -8
	.db #0xfc	; -4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$biga_metasprite3$0_0$0 == .
_biga_metasprite3:
	.db #0xf8	; -8
	.db #0xfc	; -4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$biga_metasprite4$0_0$0 == .
_biga_metasprite4:
	.db #0xf8	; -8
	.db #0xfc	; -4
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$biga_metasprite5$0_0$0 == .
_biga_metasprite5:
	.db #0xf8	; -8
	.db #0xfc	; -4
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
G$biga_metasprites$0_0$0 == .
_biga_metasprites:
	.dw _biga_metasprite0
	.dw _biga_metasprite1
	.dw _biga_metasprite2
	.dw _biga_metasprite3
	.dw _biga_metasprite4
	.dw _biga_metasprite5
G$biga$0_0$0 == .
_biga:
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.dw _biga_tiles
	.db #0x01	; 1
	.dw _biga_palettes
	.db #0x06	; 6
	.dw _biga_metasprites
	.area _INITIALIZER
	.area _CABS (ABS)
