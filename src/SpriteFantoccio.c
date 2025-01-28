#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "CircleMath.h"
#include "custom_datas.h"

const UINT8 a_fantoccio_hit[] = {6, 0,1,2,3,4,5};
INT8 fantoccio_counter = 0;
INT8 fantoccio_turned = 0;

void START() {
    SetSpriteAnim(THIS, a_fantoccio_hit, 24);
    THIS->mirror = NO_MIRROR;
    fantoccio_turned = 0;
    THIS->lim_x = 1000;
    THIS->lim_y = 1000;
}

void UPDATE() {
}

void DESTROY() {
}