#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_gator_idle[] = {1, 3};
const UINT8 a_gator_walk[] = {4, 1,2,3,2};
const UINT8 a_gator_bite[] = {2, 1,4};

extern Sprite* s_pharao_biga;
extern Sprite* s_horse;

void START() {
    SetSpriteAnim(THIS, a_gator_walk, 20u);
}

void UPDATE() {
    if(s_horse->x < THIS->x){
        THIS->mirror = V_MIRROR;
    }else{
        THIS->mirror = NO_MIRROR;
    }
}

void DESTROY() {
}