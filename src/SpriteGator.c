#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"

#define GATOR_FRMSKIP_LOW 4
#define GATOR_FRMSKIP_MID 2

typedef enum{
    GATOR_STATUS_NONE,
    GATOR_STATUS_WAIT,
    GATOR_STATUS_WALK_TO_WAYPOINT,
    GATOR_STATUS_WALK_TO_HORSE,
    GATOR_STATUS_BITE
}GATOR_STATUS;


struct GatorStatus{
    GATOR_STATUS status; 
};

const UINT8 a_gator_idle[] = {1, 3};
const UINT8 a_gator_walk[] = {4, 1,2,3,2};
const UINT8 a_gator_bite[] = {2, 1,4};

INT8 gator_vx = 0;
INT8 gator_vy = 0;
UINT8 gator_frmskip_max = 1;
UINT8 gator_frmskip_current = 0;
INT8 gator_timer_max = 80;
INT8 gator_timer_current = 0;
struct GatorStatus gator_status = {.status = GATOR_STATUS_NONE};
UINT16 gator_waypoints_x[] = {18u, 24u, 8u};
UINT16 gator_waypoints_y[] = {2u, 8u, 11u};
UINT8 gator_waypoints_total = 3;
UINT8 gator_waypoints_current = 0;
UINT8 gator_walking_frmskip_x_current = 0;
UINT8 gator_walking_frmskip_x_max = 0;
UINT8 gator_walking_frmskip_y_current = 0;
UINT8 gator_walking_frmskip_y_max = 0;
INT16 gator_walking_delta_x = 0;
INT16 gator_walking_delta_y = 0;
INT16 delta_walking_delta_x = 0;
INT16 delta_walking_delta_y = 0;
INT16 delta_factor_x = 0;
INT16 delta_factor_y = 0;

extern Sprite* s_pharao_biga;
extern Sprite* s_horse;
extern UINT8 pharaonet_collided_flag;

void gator_turn() BANKED;


void START() {
    SetSpriteAnim(THIS, a_gator_walk, 16u);
    gator_frmskip_max = GATOR_FRMSKIP_MID;
    gator_waypoints_current = 0;
}

void UPDATE() {
    //SPEED ANIMATION ACCORDING TO gator_frmskip_max
        gator_frmskip_current++;
        if(gator_frmskip_current >= gator_frmskip_max){
            gator_frmskip_current = 0;
            switch(gator_frmskip_max){
                case GATOR_FRMSKIP_MID:
                    THIS->anim_speed = 14u;
                break;
                case GATOR_FRMSKIP_LOW:
                    THIS->anim_speed = 6u;
                break;
            }
        }
        if(gator_vy < 0){
            //TODO change animation of SpritePharaosubiga!
        }
    //BEHAVE
        switch(gator_status.status){
            case GATOR_STATUS_NONE:
                gator_status.status = GATOR_STATUS_WAIT;
            break;
            case GATOR_STATUS_WAIT:
                gator_timer_current++;
                if(gator_timer_current >= gator_timer_max){
                    gator_timer_current = 0;
                    gator_waypoints_current++;
                    if(gator_waypoints_current >= gator_waypoints_total){
                        gator_waypoints_current = 0;
                    }
                    INT16 dest_x = gator_waypoints_x[gator_waypoints_current] << 3;
                    INT16 dest_y = gator_waypoints_y[gator_waypoints_current] << 3;
                    delta_walking_delta_x = dest_x - THIS->x;
                    delta_walking_delta_y = THIS->y - dest_y;
                    delta_factor_y = delta_walking_delta_x / delta_walking_delta_y;
                    //e scopro ogni quanti x deve fare una y
                    gator_walking_frmskip_y_max = delta_factor_y;
                    if(delta_factor_y < 0){
                        gator_walking_frmskip_y_max = -delta_factor_y;
                    }
                    delta_factor_x = delta_walking_delta_y / delta_walking_delta_x;
                    //e scopro ogni quanti y deve fare una x
                    gator_walking_frmskip_x_max = delta_factor_x;
                    if(delta_factor_x < 0){
                        gator_walking_frmskip_x_max = delta_factor_x;    
                    }
                    gator_status.status = GATOR_STATUS_WALK_TO_WAYPOINT;
                }
            break;
            case GATOR_STATUS_WALK_TO_WAYPOINT:
                {
                    if(gator_frmskip_current == 0){
                        gator_walking_frmskip_x_current++;
                        gator_walking_frmskip_y_current++;
                        gator_vx = 1;
                        if(delta_walking_delta_x < 0){//deve andare a sinistra
                            gator_vx = -1;
                        }
                        gator_vy = 1;
                        if(delta_walking_delta_y > 0){//deve andare in alto
                            gator_vy = -1;
                        }
                        INT8 actual_gator_vx = 0;
                        INT8 actual_gator_vy = 0;
                        if(gator_walking_frmskip_x_current == gator_walking_frmskip_x_max){//ecco che devo fare una y
                            actual_gator_vy = gator_vy;
                            gator_walking_frmskip_x_current = 0;
                        }
                        if(gator_walking_frmskip_y_current == gator_walking_frmskip_y_max){//ecco che devo fare una y
                            actual_gator_vx = gator_vx;
                            gator_walking_frmskip_y_current = 0;
                        }
                        UINT8 gator_coll_tile = TranslateSprite(THIS, actual_gator_vx << delta_time, actual_gator_vy << delta_time);
                        //se distanza dal waypoint è piccola, spostato su WAIT!
                        INT16 waypoint_delta_x = THIS->x - (gator_waypoints_x[gator_waypoints_current] << 3);
                        INT16 waypoint_delta_y = THIS->y - (gator_waypoints_y[gator_waypoints_current] << 3);
                        if(waypoint_delta_x < 0){waypoint_delta_x = -waypoint_delta_x;}
                        if(waypoint_delta_y < 0){waypoint_delta_y = -waypoint_delta_y;}
                        if(waypoint_delta_x < 4 && waypoint_delta_y < 4){
                            gator_status.status = GATOR_STATUS_WAIT;
                        }
                    }
                }
            break;
            case GATOR_STATUS_BITE:
                gator_timer_current++;
            break;
        }
    //CHANGE VX;VY IF HORSE TRAPPED ON NET
        if(pharaonet_collided_flag){
            gator_status.status = GATOR_STATUS_WAIT;
            UINT16 dest_x = s_horse->x + 16u;
            UINT16 dest_y = s_horse->x + 8u;
            
            INT16 delta_x = THIS->x - s_horse->x;
            INT16 delta_y = THIS->y - s_horse->y;

            gator_vx = 1;
            if(dest_y < THIS->x){
                gator_vx = -1;
            }
            gator_vy = 1;
            if(delta_y > 0){
                gator_vy = -1;
            }
        }    
    //LET's MOVE
        if(gator_status.status == GATOR_STATUS_WALK_TO_WAYPOINT && gator_frmskip_current == 0){
            UINT8 gator_coll_tile = TranslateSprite(THIS, gator_vx << delta_time, gator_vy << delta_time);
        }
}

void gator_turn() BANKED{
    gator_vx = -gator_vx;
    if(gator_vx > 0 && THIS->mirror == V_MIRROR){
        THIS->mirror = NO_MIRROR;
        THIS->x -= 8u;
    }else if(gator_vx < 0 && THIS->mirror == NO_MIRROR){
        THIS->mirror = V_MIRROR;
        THIS->x += 8u;
    }
}
void DESTROY() {
}