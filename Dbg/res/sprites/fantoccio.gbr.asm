;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module fantoccio_gbr
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fantoccio
	.globl _fantoccio_metasprites
	.globl _fantoccio_metasprite5
	.globl _fantoccio_metasprite4
	.globl _fantoccio_metasprite3
	.globl _fantoccio_metasprite2
	.globl _fantoccio_metasprite1
	.globl _fantoccio_metasprite0
	.globl _fantoccio_tiles
	.globl _fantoccio_palettes
	.globl b___func_fantoccio
	.globl ___func_fantoccio
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
	G$__func_fantoccio$0$0	= .
	.globl	G$__func_fantoccio$0$0
	C$fantoccio.gbr.c$9$0_0$161	= .
	.globl	C$fantoccio.gbr.c$9$0_0$161
;../Dbg/res/sprites/fantoccio.gbr.c:9: BANKREF(fantoccio)
;	---------------------------------
; Function __func_fantoccio
; ---------------------------------
	b___func_fantoccio	= 255
___func_fantoccio::
	.local b___func_fantoccio 
	___bank_fantoccio = b___func_fantoccio 
	.globl ___bank_fantoccio 
	.area _CODE_255
G$fantoccio_palettes$0_0$0 == .
_fantoccio_palettes:
	.dw #0x7fff
	.dw #0x56b5
	.dw #0x294a
	.dw #0x0000
G$fantoccio_tiles$0_0$0 == .
_fantoccio_tiles:
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0x7f	; 127
	.db #0x78	; 120	'x'
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x4e	; 78	'N'
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x04	; 4
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x62	; 98	'b'
	.db #0x22	; 34
	.db #0xe7	; 231
	.db #0x25	; 37
	.db #0xee	; 238
	.db #0x2a	; 42
	.db #0xdc	; 220
	.db #0x54	; 84	'T'
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xc8	; 200
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x3f	; 63
	.db #0x2c	; 44
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x62	; 98	'b'
	.db #0x22	; 34
	.db #0xe7	; 231
	.db #0x25	; 37
	.db #0xee	; 238
	.db #0x2a	; 42
	.db #0xdc	; 220
	.db #0x54	; 84	'T'
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xc8	; 200
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x5f	; 95
	.db #0xe4	; 228
	.db #0xa7	; 167
	.db #0x44	; 68	'D'
	.db #0x47	; 71	'G'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x4e	; 78	'N'
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x04	; 4
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
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x4e	; 78	'N'
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
G$fantoccio_metasprite0$0_0$0 == .
_fantoccio_metasprite0:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprite1$0_0$0 == .
_fantoccio_metasprite1:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprite2$0_0$0 == .
_fantoccio_metasprite2:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprite3$0_0$0 == .
_fantoccio_metasprite3:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprite4$0_0$0 == .
_fantoccio_metasprite4:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x20	; 32
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprite5$0_0$0 == .
_fantoccio_metasprite5:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$fantoccio_metasprites$0_0$0 == .
_fantoccio_metasprites:
	.dw _fantoccio_metasprite0
	.dw _fantoccio_metasprite1
	.dw _fantoccio_metasprite2
	.dw _fantoccio_metasprite3
	.dw _fantoccio_metasprite4
	.dw _fantoccio_metasprite5
G$fantoccio$0_0$0 == .
_fantoccio:
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x12	; 18
	.dw _fantoccio_tiles
	.db #0x01	; 1
	.dw _fantoccio_palettes
	.db #0x06	; 6
	.dw _fantoccio_metasprites
	.area _INITIALIZER
	.area _CABS (ABS)
