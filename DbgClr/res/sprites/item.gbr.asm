;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module item_gbr
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _item
	.globl _item_metasprites
	.globl _item_metasprite8
	.globl _item_metasprite7
	.globl _item_metasprite6
	.globl _item_metasprite5
	.globl _item_metasprite4
	.globl _item_metasprite3
	.globl _item_metasprite2
	.globl _item_metasprite1
	.globl _item_metasprite0
	.globl _item_tiles
	.globl _item_palettes
	.globl b___func_item
	.globl ___func_item
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
	G$__func_item$0$0	= .
	.globl	G$__func_item$0$0
	C$item.gbr.c$9$0_0$161	= .
	.globl	C$item.gbr.c$9$0_0$161
;../DbgClr/res/sprites/item.gbr.c:9: BANKREF(item)
;	---------------------------------
; Function __func_item
; ---------------------------------
	b___func_item	= 255
___func_item::
	.local b___func_item 
	___bank_item = b___func_item 
	.globl ___bank_item 
	.area _CODE_255
G$item_palettes$0_0$0 == .
_item_palettes:
	.dw #0x7fff
	.dw #0x029f
	.dw #0x011f
	.dw #0x0000
	.dw #0x7fff
	.dw #0x7e2d
	.dw #0x7d65
	.dw #0x0000
G$item_tiles$0_0$0 == .
_item_tiles:
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x81	; 129
	.db #0xbe	; 190
	.db #0x82	; 130
	.db #0xb4	; 180
	.db #0x8d	; 141
	.db #0xbc	; 188
	.db #0x8f	; 143
	.db #0xbb	; 187
	.db #0x8f	; 143
	.db #0xb6	; 182
	.db #0x9f	; 159
	.db #0xaf	; 175
	.db #0xb8	; 184
	.db #0xbf	; 191
	.db #0xb0	; 176
	.db #0xdf	; 223
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0x3b	; 59
	.db #0xcd	; 205
	.db #0x59	; 89	'Y'
	.db #0x8d	; 141
	.db #0xb9	; 185
	.db #0x1d	; 29
	.db #0x71	; 113	'q'
	.db #0x3d	; 61
	.db #0xe1	; 225
	.db #0x7d	; 125
	.db #0xc1	; 193
	.db #0xfd	; 253
	.db #0x81	; 129
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfb	; 251
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xdf	; 223
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x7d	; 125
	.db #0xfb	; 251
	.db #0x0b	; 11
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0xfb	; 251
	.db #0x0b	; 11
	.db #0xfd	; 253
	.db #0x7d	; 125
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfb	; 251
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x81	; 129
	.db #0xbe	; 190
	.db #0x83	; 131
	.db #0xbc	; 188
	.db #0x87	; 135
	.db #0xb8	; 184
	.db #0x8f	; 143
	.db #0xb2	; 178
	.db #0x9d	; 157
	.db #0xb7	; 183
	.db #0x98	; 152
	.db #0xb7	; 183
	.db #0x98	; 152
	.db #0xb3	; 179
	.db #0x9c	; 156
	.db #0xbb	; 187
	.db #0x8c	; 140
	.db #0xbf	; 191
	.db #0x84	; 132
	.db #0xdf	; 223
	.db #0xc3	; 195
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0x7d	; 125
	.db #0xc1	; 193
	.db #0x7d	; 125
	.db #0xc1	; 193
	.db #0xfd	; 253
	.db #0x81	; 129
	.db #0xfd	; 253
	.db #0x91	; 145
	.db #0x6d	; 109	'm'
	.db #0xf9	; 249
	.db #0x0d	; 13
	.db #0xf9	; 249
	.db #0xad	; 173
	.db #0x59	; 89	'Y'
	.db #0xed	; 237
	.db #0x19	; 25
	.db #0xdd	; 221
	.db #0x31	; 49	'1'
	.db #0xfd	; 253
	.db #0x21	; 33
	.db #0xfb	; 251
	.db #0xc3	; 195
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xdf	; 223
	.db #0xc3	; 195
	.db #0xbf	; 191
	.db #0x84	; 132
	.db #0xbb	; 187
	.db #0x8c	; 140
	.db #0xb7	; 183
	.db #0x98	; 152
	.db #0xbd	; 189
	.db #0x92	; 146
	.db #0xbc	; 188
	.db #0x97	; 151
	.db #0xbf	; 191
	.db #0x97	; 151
	.db #0xb7	; 183
	.db #0x9f	; 159
	.db #0xb7	; 183
	.db #0x99	; 153
	.db #0xb1	; 177
	.db #0x9f	; 159
	.db #0xb9	; 185
	.db #0x8f	; 143
	.db #0xdf	; 223
	.db #0xc6	; 198
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xfb	; 251
	.db #0xc3	; 195
	.db #0xf9	; 249
	.db #0x21	; 33
	.db #0x1d	; 29
	.db #0x31	; 49	'1'
	.db #0xad	; 173
	.db #0x19	; 25
	.db #0xbd	; 189
	.db #0x49	; 73	'I'
	.db #0x3d	; 61
	.db #0xe9	; 233
	.db #0xfd	; 253
	.db #0xe9	; 233
	.db #0xed	; 237
	.db #0xf9	; 249
	.db #0xed	; 237
	.db #0x99	; 153
	.db #0x8d	; 141
	.db #0xf9	; 249
	.db #0x9d	; 157
	.db #0xf1	; 241
	.db #0xfb	; 251
	.db #0x63	; 99	'c'
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xdf	; 223
	.db #0xc3	; 195
	.db #0xbf	; 191
	.db #0x84	; 132
	.db #0xb9	; 185
	.db #0x8e	; 142
	.db #0xbf	; 191
	.db #0x90	; 144
	.db #0xb1	; 177
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x91	; 145
	.db #0xbc	; 188
	.db #0x93	; 147
	.db #0xbf	; 191
	.db #0x88	; 136
	.db #0xbf	; 191
	.db #0x84	; 132
	.db #0xdf	; 223
	.db #0xc3	; 195
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xfb	; 251
	.db #0xc3	; 195
	.db #0xfd	; 253
	.db #0x21	; 33
	.db #0xfd	; 253
	.db #0x11	; 17
	.db #0x9d	; 157
	.db #0x69	; 105	'i'
	.db #0xfd	; 253
	.db #0x89	; 137
	.db #0xcd	; 205
	.db #0xb9	; 185
	.db #0xfd	; 253
	.db #0x09	; 9
	.db #0x9d	; 157
	.db #0x71	; 113	'q'
	.db #0xfd	; 253
	.db #0x21	; 33
	.db #0xfb	; 251
	.db #0xc3	; 195
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x98	; 152
	.db #0x9b	; 155
	.db #0xbc	; 188
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0xbd	; 189
	.db #0xa5	; 165
	.db #0xbd	; 189
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdf	; 223
	.db #0xdd	; 221
	.db #0xb9	; 185
	.db #0xbf	; 191
	.db #0x7d	; 125
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7d	; 125
	.db #0x6f	; 111	'o'
	.db #0x7d	; 125
	.db #0x33	; 51	'3'
	.db #0x3d	; 61
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x40	; 64
	.db #0x40	; 64
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
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
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
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprite0$0_0$0 == .
_item_metasprite0:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprite1$0_0$0 == .
_item_metasprite1:
	.db #0x00	;  0
	.db #0x00	;  0
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
G$item_metasprite2$0_0$0 == .
_item_metasprite2:
	.db #0x00	;  0
	.db #0x00	;  0
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
G$item_metasprite3$0_0$0 == .
_item_metasprite3:
	.db #0x00	;  0
	.db #0x00	;  0
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
G$item_metasprite4$0_0$0 == .
_item_metasprite4:
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
G$item_metasprite5$0_0$0 == .
_item_metasprite5:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprite6$0_0$0 == .
_item_metasprite6:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x14	; 20
	.db #0x21	; 33
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprite7$0_0$0 == .
_item_metasprite7:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprite8$0_0$0 == .
_item_metasprite8:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$item_metasprites$0_0$0 == .
_item_metasprites:
	.dw _item_metasprite0
	.dw _item_metasprite1
	.dw _item_metasprite2
	.dw _item_metasprite3
	.dw _item_metasprite4
	.dw _item_metasprite5
	.dw _item_metasprite6
	.dw _item_metasprite7
	.dw _item_metasprite8
G$item$0_0$0 == .
_item:
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1e	; 30
	.dw _item_tiles
	.db #0x02	; 2
	.dw _item_palettes
	.db #0x09	; 9
	.dw _item_metasprites
	.area _INITIALIZER
	.area _CABS (ABS)
