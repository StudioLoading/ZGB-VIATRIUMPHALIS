#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#define DELTA_X_INC 2

extern Sprite* s_horse;
extern INT8 vx;
extern UINT8 track_ended;
extern UINT8 flag_turn_on_tremble;

void START() {
    THIS->lim_x = 1000;
    THIS->lim_y = 1000;
}

void UPDATE() {
    if(track_ended == 1){
        return;
    }
    if(flag_turn_on_tremble == 0){
        THIS->y = s_horse->y - 18;
    }
    INT8 delta_x = 0;
    if(vx > 1){
        UINT16 final_camera_x = s_horse->x + 56;
        UINT16 final_camera_x_min = final_camera_x -8;
        UINT16 final_camera_x_max = final_camera_x +8;
        if(THIS->x > final_camera_x_max){delta_x=-DELTA_X_INC;}
        else if(THIS->x < final_camera_x_min){delta_x=+DELTA_X_INC;}
    }
    if(vx < -1){
        UINT16 final_camera_x = s_horse->x - 40;
        UINT16 final_camera_x_min = final_camera_x -8;
        UINT16 final_camera_x_max = final_camera_x +8;
        if(THIS->x > final_camera_x_max){delta_x=-DELTA_X_INC;}
        else if(THIS->x < final_camera_x_min){delta_x=+DELTA_X_INC;}
    }
    if(delta_x){
        INT16 camera_horse_delta_x = THIS->x - s_horse->x;
        if(camera_horse_delta_x < 60 && camera_horse_delta_x > -60){
            THIS->x += delta_x;
        }else{THIS->x += vx;}
    }
}

void DESTROY() {
}