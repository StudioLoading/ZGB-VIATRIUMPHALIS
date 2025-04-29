#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"

#define PHARANONET_CAUGHT_TIMER_MAX 240


const UINT8 a_pharaonet[] = {3, 3,2,1};
const UINT8 a_pharaonet_catching[] = {1, 0};

INT8 pharaonet_vx = 0;
INT8 pharaonet_vy = 0;
INT8 pharaonet_frmskip_current = 0;
INT8 pharaonet_frmskip_max = 1;
INT8 pharaonet_frmskipy_current = 0;
INT8 pharaonet_frmskipy_max = 1;
UINT8 pharaonet_collided_flag = 0u;
INT16 pharanonet_caught_timer = 0;

extern Sprite* s_horse;

extern void change_stamina_current(INT16 start, INT16 increase) BANKED;

void START() {
    SetSpriteAnim(THIS, a_pharaonet, 12u);
    pharaonet_collided_flag = 0;
    pharaonet_frmskip_current = 0;
    pharaonet_frmskipy_current = 0;
    pharanonet_caught_timer = 0;
}

void UPDATE() {
    if(pharaonet_collided_flag){
        THIS->x = s_horse->x - 1;
        THIS->y = s_horse->y - 6;
        pharanonet_caught_timer++;
        change_stamina_current(0,0);
        if(pharanonet_caught_timer >= PHARANONET_CAUGHT_TIMER_MAX){
            pharaonet_collided_flag = 0;
            pharanonet_caught_timer = 0;
            SpriteManagerRemoveSprite(THIS);
        }
        return;
    }
    pharaonet_frmskip_current++;
    if(pharaonet_frmskip_current == pharaonet_frmskip_max){
        pharaonet_frmskip_current = 0;
    }
    if(pharaonet_frmskip_current == 0){
        UINT8 pharaonet_coll_tile = TranslateSprite(THIS, pharaonet_vx << delta_time, 0);
        if(pharaonet_coll_tile){
            SpriteManagerRemoveSprite(THIS);
        }
    }

    pharaonet_frmskipy_current++;
    if(pharaonet_frmskipy_current == pharaonet_frmskipy_max){
        pharaonet_frmskipy_current = 0;
    }
    if(pharaonet_frmskipy_current == 0 || pharaonet_frmskipy_max == 0){
        UINT8 pharaonet_coll_tile = TranslateSprite(THIS, 0, pharaonet_vy << delta_time);
        if(pharaonet_coll_tile){
            SpriteManagerRemoveSprite(THIS);
        }
    }

    INT16 delta_x = THIS->x + 12 - s_horse->x + 16;
    INT16 delta_y = THIS->y + 8 - s_horse->y + 8;
    if(delta_x < 0){ delta_x = - delta_x;}
    if(delta_y < 0){ delta_y = - delta_y;}
    if(delta_x < 28 && delta_y < 16){
        SetSpriteAnim(THIS, a_pharaonet_catching, 1u);
    }
    
    //SPRITE COLLISION
    UINT8 scroll_phnet_tile;
    Sprite* phnetspr;
    SPRITEMANAGER_ITERATE(scroll_phnet_tile, phnetspr) {
        if(CheckCollision(THIS, phnetspr)) {
            switch(phnetspr->type){
                case SpriteHorse:
                    if(pharaonet_collided_flag == 0u){
                        pharaonet_collided_flag = 1u;
                        //SpriteManagerRemoveSprite(THIS);
                    }
                break;
            }
        }
    }
}

void DESTROY() {
}