#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_priest_down[] = {1, 1};

void START() {
    SetSpriteAnim(THIS, a_priest_down, 8u);
    THIS->lim_x = 2000;
    THIS->lim_y = 2000;
}

void UPDATE() {
}

void DESTROY() {
}