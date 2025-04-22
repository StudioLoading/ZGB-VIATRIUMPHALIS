#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_pharaosubiga_down[] = {1, 1};
const UINT8 a_pharaosubiga_up[] = {1, 2};

extern Sprite* s_gator;
extern Sprite* s_pharaobiga;
extern Sprite* s_horse;

void START() {
    SetSpriteAnim(THIS, a_pharaosubiga_down, 8u);
}

void UPDATE() {
    if(s_horse->x < THIS->x){
        THIS->mirror = V_MIRROR;
    }else{
        THIS->mirror = NO_MIRROR;
    }
    THIS->x = s_pharaobiga->x;
    THIS->y = s_pharaobiga->y - 15;
}

void DESTROY() {
}