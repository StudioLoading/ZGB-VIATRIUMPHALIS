#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_pharaosubiga_down[] = {2, 1,3};
const UINT8 a_pharaosubiga_up[] = {1, 2};

INT16 pharaosubiga_timernet_current = 0u;
INT16 pharaosubiga_timernet_max = 100;

extern Sprite* s_gator;
extern Sprite* s_pharaobiga;
extern Sprite* s_horse;
extern INT8 pharaonet_vx;
extern INT8 pharaonet_vy;
extern INT8 pharaonet_frmskip_max;
extern INT8 pharaonet_frmskipy_max;
extern UINT8 pharaonet_collided_flag;

void pharaosubiga_throw_net() BANKED;

void START() {
    SetSpriteAnim(THIS, a_pharaosubiga_down, 8u);
    THIS->lim_x = 2000;
    THIS->lim_y = 2000;
}

void UPDATE() {
    if(s_horse->x < THIS->x){
        THIS->mirror = V_MIRROR;
    }else{
        THIS->mirror = NO_MIRROR;
    }
    THIS->x = s_pharaobiga->x;
    THIS->y = s_pharaobiga->y - 13;
    //NET
        pharaosubiga_timernet_current++;
        if(pharaosubiga_timernet_current == pharaosubiga_timernet_max){
            pharaosubiga_timernet_current = 0;
            pharaosubiga_throw_net();
        }
}

void pharaosubiga_throw_net() BANKED{
    INT16 delta_x = s_horse->x - THIS->x;
    INT16 delta_y = s_horse->y - THIS->y;
    pharaonet_vx = 1;
    if(delta_x < 0){
        pharaonet_vx = -1;
    }
    pharaonet_vy = 1;
    if(delta_y < 4){
        pharaonet_vy = -1;
    }
    INT8 delta_x_abs = delta_x;
    if(delta_x < 0){ delta_x_abs = -delta_x;}
    if(delta_y > 80 || delta_x_abs < 24){//s_horse su
        pharaonet_frmskip_max = 1;
        pharaonet_frmskipy_max = 0;
    }else if(delta_y > 20){//s_horse su
        pharaonet_frmskipy_max = 2;
    }else{
        pharaonet_frmskipy_max = 4;
    }
    if(pharaonet_collided_flag == 0){
        //SpriteManagerAdd(SpritePharaonet, THIS->x, THIS->y);
    }

}
void DESTROY() {
}