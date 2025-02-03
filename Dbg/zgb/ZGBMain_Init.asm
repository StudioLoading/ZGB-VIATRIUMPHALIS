;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module ZGBMain_Init
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _InitSprites
	.globl _Destroy_SpriteItem
	.globl _Update_SpriteItem
	.globl _Start_SpriteItem
	.globl _Destroy_SpriteFantoccio
	.globl _Update_SpriteFantoccio
	.globl _Start_SpriteFantoccio
	.globl _Destroy_SpriteCamera
	.globl _Update_SpriteCamera
	.globl _Start_SpriteCamera
	.globl _Destroy_SpriteFire
	.globl _Update_SpriteFire
	.globl _Start_SpriteFire
	.globl _Destroy_SpriteCompass
	.globl _Update_SpriteCompass
	.globl _Start_SpriteCompass
	.globl _Destroy_SpriteBiga
	.globl _Update_SpriteBiga
	.globl _Start_SpriteBiga
	.globl _Destroy_SpriteStep
	.globl _Update_SpriteStep
	.globl _Start_SpriteStep
	.globl _Destroy_SpriteHorse
	.globl _Update_SpriteHorse
	.globl _Start_SpriteHorse
	.globl _Destroy_SpritePlayer
	.globl _Update_SpritePlayer
	.globl _Start_SpritePlayer
	.globl _InitStates
	.globl _Update_StateGame
	.globl _Start_StateGame
	.globl _spritePalsOffset
	.globl _spriteIdxs
	.globl _spriteDatas
	.globl _spriteDestroyFuncs
	.globl _spriteUpdateFuncs
	.globl _spriteStartFuncs
	.globl _spriteDataBanks
	.globl _spriteBanks
	.globl _updateFuncs
	.globl _startFuncs
	.globl _stateBanks
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$stateBanks$0_0$0==.
_stateBanks::
	.ds 1
G$startFuncs$0_0$0==.
_startFuncs::
	.ds 2
G$updateFuncs$0_0$0==.
_updateFuncs::
	.ds 2
G$spriteBanks$0_0$0==.
_spriteBanks::
	.ds 9
G$spriteDataBanks$0_0$0==.
_spriteDataBanks::
	.ds 9
G$spriteStartFuncs$0_0$0==.
_spriteStartFuncs::
	.ds 18
G$spriteUpdateFuncs$0_0$0==.
_spriteUpdateFuncs::
	.ds 18
G$spriteDestroyFuncs$0_0$0==.
_spriteDestroyFuncs::
	.ds 18
G$spriteDatas$0_0$0==.
_spriteDatas::
	.ds 18
G$spriteIdxs$0_0$0==.
_spriteIdxs::
	.ds 9
G$spritePalsOffset$0_0$0==.
_spritePalsOffset::
	.ds 9
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
	.area _CODE_1
	G$InitStates$0$0	= .
	.globl	G$InitStates$0$0
	C$ZGBMain_Init.c$16$0_0$158	= .
	.globl	C$ZGBMain_Init.c$16$0_0$158
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:16: void InitStates() {
;	---------------------------------
; Function InitStates
; ---------------------------------
_InitStates::
	C$ZGBMain_Init.c$17$1_0$158	= .
	.globl	C$ZGBMain_Init.c$17$1_0$158
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:17: STATES
	ld	hl, #_startFuncs
	ld	(hl), #<(_Start_StateGame)
	inc	hl
	ld	(hl), #>(_Start_StateGame)
	ld	hl, #_updateFuncs
	ld	(hl), #<(_Update_StateGame)
	inc	hl
	ld	(hl), #>(_Update_StateGame)
	ld	bc, #_stateBanks+0
	ld	a, #<(___bank_StateGame)
	ld	(bc), a
	C$ZGBMain_Init.c$18$1_0$158	= .
	.globl	C$ZGBMain_Init.c$18$1_0$158
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:18: }
	C$ZGBMain_Init.c$18$1_0$158	= .
	.globl	C$ZGBMain_Init.c$18$1_0$158
	XG$InitStates$0$0	= .
	.globl	XG$InitStates$0$0
	ret
	G$InitSprites$0$0	= .
	.globl	G$InitSprites$0$0
	C$ZGBMain_Init.c$49$1_0$159	= .
	.globl	C$ZGBMain_Init.c$49$1_0$159
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:49: void InitSprites() {
;	---------------------------------
; Function InitSprites
; ---------------------------------
_InitSprites::
	C$ZGBMain_Init.c$50$1_0$159	= .
	.globl	C$ZGBMain_Init.c$50$1_0$159
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:50: SPRITES
	ld	a, #<(___bank_SpritePlayer)
	ld	(#_spriteBanks),a
	ld	hl, #_spriteStartFuncs
	ld	(hl), #<(_Start_SpritePlayer)
	inc	hl
	ld	(hl), #>(_Start_SpritePlayer)
	ld	hl, #_spriteUpdateFuncs
	ld	(hl), #<(_Update_SpritePlayer)
	inc	hl
	ld	(hl), #>(_Update_SpritePlayer)
	ld	hl, #_spriteDestroyFuncs
	ld	(hl), #<(_Destroy_SpritePlayer)
	inc	hl
	ld	(hl), #>(_Destroy_SpritePlayer)
	ld	a, #<(___bank_player)
	ld	(#_spriteDataBanks),a
	ld	hl, #_spriteDatas
	ld	(hl), #<(_player)
	inc	hl
	ld	(hl), #>(_player)
	ld	bc, #_spriteBanks + 1
	ld	a, #<(___bank_SpriteHorse)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 2)
	ld	(hl), #<(_Start_SpriteHorse)
	inc	hl
	ld	(hl), #>(_Start_SpriteHorse)
	ld	hl, #(_spriteUpdateFuncs + 2)
	ld	(hl), #<(_Update_SpriteHorse)
	inc	hl
	ld	(hl), #>(_Update_SpriteHorse)
	ld	hl, #(_spriteDestroyFuncs + 2)
	ld	a, #<(_Destroy_SpriteHorse)
	ld	(hl+), a
	ld	(hl), #>(_Destroy_SpriteHorse)
	ld	bc, #_spriteDataBanks + 1
	ld	a, #<(___bank_horse)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 2)
	ld	a, #<(_horse)
	ld	(hl+), a
	ld	(hl), #>(_horse)
	ld	bc, #_spriteBanks + 2
	ld	a, #<(___bank_SpriteStep)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 4)
	ld	(hl), #<(_Start_SpriteStep)
	inc	hl
	ld	(hl), #>(_Start_SpriteStep)
	ld	hl, #(_spriteUpdateFuncs + 4)
	ld	(hl), #<(_Update_SpriteStep)
	inc	hl
	ld	(hl), #>(_Update_SpriteStep)
	ld	hl, #(_spriteDestroyFuncs + 4)
	ld	a, #<(_Destroy_SpriteStep)
	ld	(hl+), a
	ld	(hl), #>(_Destroy_SpriteStep)
	ld	bc, #_spriteDataBanks + 2
	ld	a, #<(___bank_step)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 4)
	ld	a, #<(_step)
	ld	(hl+), a
	ld	(hl), #>(_step)
	ld	bc, #_spriteBanks + 3
	ld	a, #<(___bank_SpriteBiga)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 6)
	ld	(hl), #<(_Start_SpriteBiga)
	inc	hl
	ld	(hl), #>(_Start_SpriteBiga)
	ld	hl, #(_spriteUpdateFuncs + 6)
	ld	(hl), #<(_Update_SpriteBiga)
	inc	hl
	ld	(hl), #>(_Update_SpriteBiga)
	ld	hl, #(_spriteDestroyFuncs + 6)
	ld	(hl), #<(_Destroy_SpriteBiga)
	inc	hl
	ld	(hl), #>(_Destroy_SpriteBiga)
	ld	bc, #_spriteDataBanks + 3
	ld	a, #<(___bank_biga)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 6)
	ld	(hl), #<(_biga)
	inc	hl
	ld	(hl), #>(_biga)
	ld	bc, #_spriteBanks + 4
	ld	a, #<(___bank_SpriteCompass)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 8)
	ld	(hl), #<(_Start_SpriteCompass)
	inc	hl
	ld	(hl), #>(_Start_SpriteCompass)
	ld	hl, #(_spriteUpdateFuncs + 8)
	ld	(hl), #<(_Update_SpriteCompass)
	inc	hl
	ld	(hl), #>(_Update_SpriteCompass)
	ld	hl, #(_spriteDestroyFuncs + 8)
	ld	(hl), #<(_Destroy_SpriteCompass)
	inc	hl
	ld	(hl), #>(_Destroy_SpriteCompass)
	ld	bc, #_spriteDataBanks + 4
	ld	a, #<(___bank_compass)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 8)
	ld	(hl), #<(_compass)
	inc	hl
	ld	(hl), #>(_compass)
	ld	bc, #_spriteBanks + 5
	ld	a, #<(___bank_SpriteFire)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 10)
	ld	(hl), #<(_Start_SpriteFire)
	inc	hl
	ld	(hl), #>(_Start_SpriteFire)
	ld	hl, #(_spriteUpdateFuncs + 10)
	ld	(hl), #<(_Update_SpriteFire)
	inc	hl
	ld	(hl), #>(_Update_SpriteFire)
	ld	hl, #(_spriteDestroyFuncs + 10)
	ld	a, #<(_Destroy_SpriteFire)
	ld	(hl+), a
	ld	(hl), #>(_Destroy_SpriteFire)
	ld	bc, #_spriteDataBanks + 5
	ld	a, #<(___bank_fire)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 10)
	ld	a, #<(_fire)
	ld	(hl+), a
	ld	(hl), #>(_fire)
	ld	bc, #_spriteBanks + 6
	ld	a, #<(___bank_SpriteCamera)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 12)
	ld	(hl), #<(_Start_SpriteCamera)
	inc	hl
	ld	(hl), #>(_Start_SpriteCamera)
	ld	hl, #(_spriteUpdateFuncs + 12)
	ld	(hl), #<(_Update_SpriteCamera)
	inc	hl
	ld	(hl), #>(_Update_SpriteCamera)
	ld	hl, #(_spriteDestroyFuncs + 12)
	ld	(hl), #<(_Destroy_SpriteCamera)
	inc	hl
	ld	(hl), #>(_Destroy_SpriteCamera)
	ld	bc, #_spriteDataBanks + 6
	ld	a, #<(___bank_camera)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 12)
	ld	(hl), #<(_camera)
	inc	hl
	ld	(hl), #>(_camera)
	ld	bc, #_spriteBanks + 7
	ld	a, #<(___bank_SpriteFantoccio)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 14)
	ld	(hl), #<(_Start_SpriteFantoccio)
	inc	hl
	ld	(hl), #>(_Start_SpriteFantoccio)
	ld	hl, #(_spriteUpdateFuncs + 14)
	ld	(hl), #<(_Update_SpriteFantoccio)
	inc	hl
	ld	(hl), #>(_Update_SpriteFantoccio)
	ld	hl, #(_spriteDestroyFuncs + 14)
	ld	(hl), #<(_Destroy_SpriteFantoccio)
	inc	hl
	ld	(hl), #>(_Destroy_SpriteFantoccio)
	ld	bc, #_spriteDataBanks + 7
	ld	a, #<(___bank_fantoccio)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 14)
	ld	(hl), #<(_fantoccio)
	inc	hl
	ld	(hl), #>(_fantoccio)
	ld	bc, #_spriteBanks + 8
	ld	a, #<(___bank_SpriteItem)
	ld	(bc), a
	ld	hl, #(_spriteStartFuncs + 16)
	ld	(hl), #<(_Start_SpriteItem)
	inc	hl
	ld	(hl), #>(_Start_SpriteItem)
	ld	hl, #(_spriteUpdateFuncs + 16)
	ld	(hl), #<(_Update_SpriteItem)
	inc	hl
	ld	(hl), #>(_Update_SpriteItem)
	ld	hl, #(_spriteDestroyFuncs + 16)
	ld	a, #<(_Destroy_SpriteItem)
	ld	(hl+), a
	ld	(hl), #>(_Destroy_SpriteItem)
	ld	bc, #_spriteDataBanks + 8
	ld	a, #<(___bank_item)
	ld	(bc), a
	ld	hl, #(_spriteDatas + 16)
	ld	a, #<(_item)
	ld	(hl+), a
	ld	(hl), #>(_item)
	C$ZGBMain_Init.c$51$1_0$159	= .
	.globl	C$ZGBMain_Init.c$51$1_0$159
;C:/ZGB-2023.0/common/src/ZGBMain_Init.c:51: }
	C$ZGBMain_Init.c$51$1_0$159	= .
	.globl	C$ZGBMain_Init.c$51$1_0$159
	XG$InitSprites$0$0	= .
	.globl	XG$InitSprites$0$0
	ret
	.area _CODE_1
	.area _INITIALIZER
	.area _CABS (ABS)
