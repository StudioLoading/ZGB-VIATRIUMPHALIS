#ifndef ZGBMAIN_H
#define ZGBMAIN_H

#define STATES \
_STATE(StateGame)\
STATE_DEF_END

#define SPRITES \
_SPRITE_DMG(SpritePlayer, player)\
_SPRITE_DMG(SpriteHorse, horse)\
_SPRITE_DMG(SpriteStep, step)\
_SPRITE_DMG(SpriteBiga, biga)\
_SPRITE_DMG(SpriteCompass, compass)\
_SPRITE_DMG(SpriteFire, fire)\
_SPRITE_DMG(SpriteCamera, camera)\
_SPRITE_DMG(SpriteFantoccio, fantoccio)\
_SPRITE_DMG(SpriteItem, item)\
SPRITE_DEF_END

#include "ZGBMain_Init.h"

#endif