#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"


const UINT8 a_compass_h[] = {1, 0};
const UINT8 a_compass_33[] = {1, 1};
const UINT8 a_compass_66[] = {1, 2};
const UINT8 a_compass_v[] = {1, 3};

extern INT8 vx;
extern INT8 vy;
extern INT8 cos;
extern INT8 sin;
extern Sprite* s_horse;
extern UINT8 track_ended;

void START() {
    THIS->lim_x = 1000;
    THIS->lim_y = 1000;
}

void UPDATE() { 
    //mettilo allo scroll_target che è SpriteCamera
        THIS->x = scroll_target->x;
        THIS->y = scroll_target->y;
        if(track_ended == 1){
            SpriteManagerRemoveSprite(THIS);
        }
    //animation
        INT8 using_cos = cos;
        INT8 using_sin = sin;
        if(cos < 0) {using_cos = -cos;}
        if(sin < 0) {using_sin = -sin;}
        if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
            SetSpriteAnim(THIS, a_compass_h, 1);
        }else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
            SetSpriteAnim(THIS, a_compass_33, 1);
        }else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
            SetSpriteAnim(THIS, a_compass_66, 1);
        }else if(using_sin > 78){ // tratto come se stesse andando orizzontale destra
            SetSpriteAnim(THIS, a_compass_v, 1);
        }
        if(sin > 0 && cos > 0){
            THIS->mirror = NO_MIRROR;
        }
        if(sin > 0 && cos < 0){
            THIS->mirror = V_MIRROR;
        }
        if(sin < 0 && cos > 0){
            THIS->mirror = H_MIRROR;
        }
        if(sin < 0 && cos < 0){
            THIS->mirror = HV_MIRROR;
        }
}

void DESTROY() {
}