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

const UINT8 a_fire[] = {4, 0,1,2,3};
const UINT8 a_fog[] = {4, 4,5,6,7};

void START() {
    SetSpriteAnim(THIS, a_fire, 24u);
    THIS->lim_x = 1000;
}

void UPDATE() {
}

void DESTROY() {
}