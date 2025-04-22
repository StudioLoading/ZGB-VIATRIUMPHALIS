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
    THIS->y = s_gator->y - 3u;
    if(s_gator->mirror == NO_MIRROR){
        THIS->x = s_gator->x + 22u;
    }else{
        THIS->x = s_gator->x - 22u;
    }
}

void DESTROY() {
}