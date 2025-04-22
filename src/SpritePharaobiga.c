#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_pharaobiga[] = {2, 1,2};

extern Sprite* s_gator;

void START() {
    SetSpriteAnim(THIS, a_pharaobiga, 8u);
}

void UPDATE() {
}

void DESTROY() {
}