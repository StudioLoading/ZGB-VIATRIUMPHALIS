#ifndef ZGBMAIN_H
#define ZGBMAIN_H

#define STATES \
_STATE(StateCredit)\
_STATE(StateGame)\
_STATE(StateTutorialGame)\
_STATE(StateTutorialList)\
_STATE(StateMission00rome)\
_STATE(StatePapyrus)\
STATE_DEF_END

#define SPRITES \
_SPRITE_DMG(SpritePlayer, player)\
_SPRITE_DMG(SpriteHorse, horse)\
_SPRITE_DMG(SpriteStep, step)\
_SPRITE_DMG(SpriteBiga, biga)\
_SPRITE_DMG(SpriteCompass, compass)\
_SPRITE_DMG(SpriteFlame, flame)\
_SPRITE_DMG(SpriteCamera, camera)\
_SPRITE_DMG(SpriteFantoccio, fantoccio)\
_SPRITE_DMG(SpriteItemgladio, itemgladio)\
_SPRITE_DMG(SpriteItemlance, itemlance)\
_SPRITE_DMG(SpriteItemfire, itemfire)\
_SPRITE_DMG(SpriteItemelmet, itemelmet)\
_SPRITE_DMG(SpriteItemshield, itemshield)\
_SPRITE_DMG(SpriteItemcape, itemcape)\
_SPRITE_DMG(SpriteItemheart, itemheart)\
_SPRITE_DMG(SpriteItemglass, itemglass)\
_SPRITE_DMG(SpriteStraw, straw)\
_SPRITE_DMG(SpriteCursor, cursor)\
_SPRITE_DMG(SpriteRomansoldier, romansoldier)\
_SPRITE_DMG(SpriteRomansenator, romansenator)\
SPRITE_DEF_END

#include "ZGBMain_Init.h"

#endif