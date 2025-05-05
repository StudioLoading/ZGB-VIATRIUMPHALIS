#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_pharaobiga[] = {2, 1,2};

extern Sprite* s_horse;
extern Sprite* s_gator;
extern INT8 gator_vx;

void START() {
    SetSpriteAnim(THIS, a_pharaobiga, 8u);
    THIS->lim_x = 2000;
    THIS->lim_y = 2000;
}

void UPDATE() {
    INT16 dest_x = s_gator->x - 14;
    if(s_gator->mirror == V_MIRROR){
        dest_x = s_gator->x + 24u;
    }
    INT8 dest_y = s_gator->y - 1u;
    if((INT16)THIS->x < dest_x){
        THIS->x++;
    }else if((INT16)THIS->x > dest_x){
        THIS->x--;
    }
    if(THIS->y < dest_y){
        THIS->y++;
    }else if(THIS->y > dest_y){
        THIS->y--;
    }
    if(s_horse->x < THIS->x){
        THIS->mirror = V_MIRROR;
    }else if(THIS->mirror != NO_MIRROR){
        THIS->mirror = NO_MIRROR;
    }
}

void DESTROY() {
}