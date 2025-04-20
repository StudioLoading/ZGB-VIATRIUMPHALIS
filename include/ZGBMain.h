#ifndef ZGBMAIN_H
#define ZGBMAIN_H

#define STATES \
_STATE(StateCredit)\
_STATE(StateGame)\
_STATE(StateGame2)\
_STATE(StateButtons)\
_STATE(StateWorldmap)\
_STATE(StateConfig)\
_STATE(StateTutorialGame)\
_STATE(StateTutorialList)\
_STATE(StatePapyrus)\
_STATE(StateMission00rome)\
_STATE(StateMission01rome)\
_STATE(StateMission02rome)\
_STATE(StateMission03rome)\
_STATE(StateMission04alps)\
_STATE(StateMission05alps)\
_STATE(StateMission06alps)\
_STATE(StateMission07alps)\
_STATE(StateMission08sea)\
_STATE(StateMission09sea)\
_STATE(StateMission10sea)\
_STATE(StateMission11sea)\
_STATE(StateMission12greece)\
_STATE(StateMission13greece)\
_STATE(StateMission14greece)\
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
_SPRITE_DMG(SpriteItempapirus, itempapirus)\
_SPRITE_DMG(SpriteConfigwhip, itemconfigwhip)\
_SPRITE_DMG(SpriteConfigwheel, itemconfigwheel)\
_SPRITE_DMG(SpriteConfigelm, itemconfigelm)\
_SPRITE_DMG(SpriteConfigreins, itemconfigreins)\
_SPRITE_DMG(SpriteStraw, straw)\
_SPRITE_DMG(SpriteCursor, cursor)\
_SPRITE_DMG(SpriteRomansoldier, romansoldier)\
_SPRITE_DMG(SpriteRomansenator, romansenator)\
_SPRITE_DMG(SpriteExclamation, exclamation)\
_SPRITE_DMG(SpriteKiller, killer)\
_SPRITE_DMG(SpriteEitemlance, eitemlance)\
_SPRITE_DMG(SpriteBarbarianshield, barbarianshield)\
_SPRITE_DMG(SpriteRollingstone, rollingstone)\
_SPRITE_DMG(SpriteBarbarian, barbarian)\
_SPRITE_DMG(SpriteSavage, savage)\
_SPRITE_DMG(SpriteGreeksoldier, greeksoldier)\
_SPRITE_DMG(SpriteGreekphilosopher, greekphilosopher)\
SPRITE_DEF_END

#include "ZGBMain_Init.h"

#endif