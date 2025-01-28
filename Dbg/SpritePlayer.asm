;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module SpritePlayer
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Destroy_SpritePlayer
	.globl _Update_SpritePlayer
	.globl _Start_SpritePlayer
	.globl ___bank_SpritePlayer
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
	G$Start_SpritePlayer$0$0	= .
	.globl	G$Start_SpritePlayer$0$0
	C$SpritePlayer.c$3$0_0$2	= .
	.globl	C$SpritePlayer.c$3$0_0$2
;SpritePlayer.c:3: void START() {
;	---------------------------------
; Function Start_SpritePlayer
; ---------------------------------
_Start_SpritePlayer::
	C$SpritePlayer.c$4$0_0$2	= .
	.globl	C$SpritePlayer.c$4$0_0$2
;SpritePlayer.c:4: }
	C$SpritePlayer.c$4$0_0$2	= .
	.globl	C$SpritePlayer.c$4$0_0$2
	XG$Start_SpritePlayer$0$0	= .
	.globl	XG$Start_SpritePlayer$0$0
	ret
G$__bank_SpritePlayer$0_0$0 == 0x00ff
___bank_SpritePlayer	=	0x00ff
	G$Update_SpritePlayer$0$0	= .
	.globl	G$Update_SpritePlayer$0$0
	C$SpritePlayer.c$6$0_0$4	= .
	.globl	C$SpritePlayer.c$6$0_0$4
;SpritePlayer.c:6: void UPDATE() {
;	---------------------------------
; Function Update_SpritePlayer
; ---------------------------------
_Update_SpritePlayer::
	C$SpritePlayer.c$7$0_0$4	= .
	.globl	C$SpritePlayer.c$7$0_0$4
;SpritePlayer.c:7: }
	C$SpritePlayer.c$7$0_0$4	= .
	.globl	C$SpritePlayer.c$7$0_0$4
	XG$Update_SpritePlayer$0$0	= .
	.globl	XG$Update_SpritePlayer$0$0
	ret
	G$Destroy_SpritePlayer$0$0	= .
	.globl	G$Destroy_SpritePlayer$0$0
	C$SpritePlayer.c$9$0_0$6	= .
	.globl	C$SpritePlayer.c$9$0_0$6
;SpritePlayer.c:9: void DESTROY() {
;	---------------------------------
; Function Destroy_SpritePlayer
; ---------------------------------
_Destroy_SpritePlayer::
	C$SpritePlayer.c$10$0_0$6	= .
	.globl	C$SpritePlayer.c$10$0_0$6
;SpritePlayer.c:10: }
	C$SpritePlayer.c$10$0_0$6	= .
	.globl	C$SpritePlayer.c$10$0_0$6
	XG$Destroy_SpritePlayer$0$0	= .
	.globl	XG$Destroy_SpritePlayer$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
