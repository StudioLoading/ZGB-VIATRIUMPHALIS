#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"

const UINT8 a_roman_h[] = {4, 2,1,2,3};
const UINT8 a_roman_d[] = {4, 5,6,5,4};
const UINT8 a_roman_u[] = {4, 8,9,8,7};

void START() {
    SetSpriteAnim(THIS, a_roman_h, 8u);
    THIS->lim_x = 1000;
    THIS->lim_y = 1000;
    if(_cpu != CGB_TYPE){
        OBP1_REG = PAL_DEF(0, 0, 1, 3);
        SPRITE_SET_PALETTE(THIS,1);
    }
}

void UPDATE() {
}

void DESTROY() {
}