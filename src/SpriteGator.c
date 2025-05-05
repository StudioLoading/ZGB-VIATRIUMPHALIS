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
#define SPEED 1

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
UINT16 gator_waypoints_x[] = {148u, 212u, 44u};
UINT16 gator_waypoints_y[] = {20u, 100u, 84u};
UINT8 gator_waypoints_total = 3;
UINT8 gator_waypoints_current = 0;
UINT8 gator_walking_frmskip_x_current = 0;
UINT8 gator_walking_frmskip_x_max = 0;
UINT8 gator_walking_frmskip_y_current = 0;
UINT8 gator_walking_frmskip_y_max = 0;
INT16 delta_walking_delta_x = 0;
INT16 delta_walking_delta_y = 0;
INT16 delta_factor_x = 0;
INT16 delta_factor_y = 0;
INT8 delta_walking_delta_x_verse = 0;
INT8 delta_walking_delta_y_verse = 0;

extern Sprite* s_pharao_biga;
extern Sprite* s_horse;
extern UINT8 pharaonet_collided_flag;

void gator_turn() BANKED;
void gator_calculate_delta(UINT16 dest_x, UINT16 dest_y) BANKED;

extern void horse_hit(INT8 arg_damage) BANKED;


void START() {
    SetSpriteAnim(THIS, a_gator_walk, 16u);
    gator_frmskip_max = GATOR_FRMSKIP_MID;
    gator_waypoints_current = 0;
    THIS->lim_x = 2000;
    THIS->lim_y = 2000;
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
                if(gator_timer_current == (gator_timer_max >> 1)){
                    //a metà dell'attesa, guarda dove devi andare al current waypoint
                    UINT16 dest_x = gator_waypoints_x[gator_waypoints_current];
                    if(THIS->mirror == NO_MIRROR && dest_x < THIS->x){
                        gator_turn();
                    }
                    if(THIS->mirror == V_MIRROR && dest_x > THIS->x){
                        gator_turn();
                    }
                }
                if(gator_timer_current >= gator_timer_max){
                    gator_timer_current = 0;
                    gator_calculate_delta(gator_waypoints_x[gator_waypoints_current], gator_waypoints_y[gator_waypoints_current]);
                    gator_walking_frmskip_x_current = 0;
                    gator_walking_frmskip_y_current = 0;
                    gator_status.status = GATOR_STATUS_WALK_TO_WAYPOINT;
                }
            break;
            case GATOR_STATUS_WALK_TO_WAYPOINT:
                {
                    //if(gator_frmskip_current == 0){
                    gator_vx = 1 * delta_walking_delta_x_verse;
                    gator_vy = 1 * delta_walking_delta_y_verse;
                    INT8 actual_gator_vx = gator_vx;
                    INT8 actual_gator_vy = gator_vy;
                    if(gator_walking_frmskip_x_max > 0 && gator_walking_frmskip_x_current < gator_walking_frmskip_x_max){//ecco che devo fare una y
                        actual_gator_vx = 0;
                    }
                    if(gator_walking_frmskip_y_max > 0 && gator_walking_frmskip_y_current < gator_walking_frmskip_y_max){
                        actual_gator_vy = 0;
                    }
                    if(gator_walking_frmskip_x_current == gator_walking_frmskip_x_max){
                        gator_walking_frmskip_x_current = 0;
                    }
                    if(gator_walking_frmskip_y_current == gator_walking_frmskip_y_max){
                        gator_walking_frmskip_y_current = 0;
                    }
                    gator_walking_frmskip_x_current++;
                    gator_walking_frmskip_y_current++;
                    if(actual_gator_vx != 0 || actual_gator_vy != 0){
                        UINT8 gator_coll_tile = TranslateSprite(THIS, actual_gator_vx << delta_time, actual_gator_vy << delta_time);
                        gator_calculate_delta(gator_waypoints_x[gator_waypoints_current], gator_waypoints_y[gator_waypoints_current]);
                        INT16 current_waypoint_x = (INT16)gator_waypoints_x[gator_waypoints_current]; 
                        INT16 current_waypoint_y = (INT16)gator_waypoints_y[gator_waypoints_current];
                        INT16 waypoint_delta_x = (INT16)((INT16)(THIS->x+16) - current_waypoint_x);
                        INT16 waypoint_delta_y = (INT16)((INT16)(THIS->y+8) - current_waypoint_y);
                        //se distanza dal waypoint è piccola, spostato su WAIT!
                        if(waypoint_delta_x <= 2 && waypoint_delta_x >= -2 && waypoint_delta_y <= 2 && waypoint_delta_y >= -2){
                            gator_timer_current = 0;
                            gator_waypoints_current--;
                            if(gator_waypoints_current >= gator_waypoints_total){
                                gator_waypoints_current = gator_waypoints_total-1;
                            }
                            gator_status.status = GATOR_STATUS_WAIT;
                        }
                    }
                }
            break;
            case GATOR_STATUS_WALK_TO_HORSE:
                {
                    //if(gator_frmskip_current == 0){
                    gator_vx = 1 * delta_walking_delta_x_verse;
                    gator_vy = 1 * delta_walking_delta_y_verse;
                    INT8 actual_gator_vx = gator_vx;
                    INT8 actual_gator_vy = gator_vy;
                    if(gator_walking_frmskip_x_max > 0 && gator_walking_frmskip_x_current < gator_walking_frmskip_x_max){//ecco che devo fare una y
                        actual_gator_vx = 0;
                    }
                    if(gator_walking_frmskip_y_max > 0 && gator_walking_frmskip_y_current < gator_walking_frmskip_y_max){
                        actual_gator_vy = 0;
                    }
                    if(gator_walking_frmskip_x_current == gator_walking_frmskip_x_max){
                        gator_walking_frmskip_x_current = 0;
                    }
                    if(gator_walking_frmskip_y_current == gator_walking_frmskip_y_max){
                        gator_walking_frmskip_y_current = 0;
                    }
                    gator_walking_frmskip_x_current++;
                    gator_walking_frmskip_y_current++;
                    if(actual_gator_vx != 0 || actual_gator_vy != 0){
                        UINT8 gator_coll_tile = TranslateSprite(THIS, actual_gator_vx << delta_time, actual_gator_vy << delta_time);
                        //se collide, muoviti a GATOR_STATUS_BITE
                        if(CheckCollision(THIS, s_horse)){//THIS->y == dest_y && THIS->x == dest_x){
                            gator_timer_current = 0;
                            SetSpriteAnim(THIS, a_gator_bite, 12u);
                            gator_status.status = GATOR_STATUS_BITE;
                        }else{
                            UINT16 dest_x = s_horse->x -16u;
                            if(s_horse->x < 28u || THIS->x > s_horse->x){
                                dest_x = s_horse->x + 36u;
                            }
                            UINT16 dest_y = s_horse->y - 4u;
                            gator_calculate_delta(dest_x, dest_y);
                        }
                    }
                }
            break;
            case GATOR_STATUS_BITE:
                gator_timer_current++;
                if(THIS->anim_frame == 1){
                    horse_hit(-2);
                }
                if(gator_timer_current >= gator_timer_max){
                    SetSpriteAnim(THIS, a_gator_walk, 16u);
                    gator_status.status = GATOR_STATUS_WALK_TO_WAYPOINT;
                }
            break;
        }
    //CHANGE VX;VY IF HORSE TRAPPED ON NET
        if(pharaonet_collided_flag){
            if(gator_status.status == GATOR_STATUS_WAIT){
                if(THIS->mirror == NO_MIRROR && (s_horse->x + 16u) < THIS->x){
                    gator_turn();
                }
                if(THIS->mirror == V_MIRROR && (s_horse->x + 16u) > THIS->x){
                    gator_turn();
                }
                gator_status.status = GATOR_STATUS_WALK_TO_HORSE;
            }
        }
}

void gator_calculate_delta(UINT16 arg_dest_x, UINT16 arg_dest_y) BANKED{
    delta_walking_delta_x = arg_dest_x - (THIS->x + 16);
    delta_walking_delta_y = (THIS->y+8) - arg_dest_y;
    delta_walking_delta_x_verse = 1;
    if(delta_walking_delta_x < 0){//devo andare a sinistra
        delta_walking_delta_x_verse = -1;
        delta_walking_delta_x = -delta_walking_delta_x;
    }
    delta_walking_delta_y_verse = 1;
    if(delta_walking_delta_y > 0){//devo andare su
        delta_walking_delta_y_verse = -1;
    }else{
        delta_walking_delta_y = -delta_walking_delta_y; 
    }
    delta_factor_y = 0;
    delta_factor_x = 0;
    if(delta_walking_delta_x > delta_walking_delta_y){
        delta_factor_y = delta_walking_delta_x / delta_walking_delta_y;
        INT16 r_y = delta_walking_delta_x % delta_walking_delta_y;
        if(r_y > (delta_walking_delta_y >> 1)){
            delta_factor_y += delta_factor_y;
        }
    }else{
        delta_factor_x = delta_walking_delta_y / delta_walking_delta_x;
        INT16 r_x = delta_walking_delta_y % delta_walking_delta_x;
        if(r_x > (delta_walking_delta_x >> 1)){
            delta_factor_x += delta_factor_x;
        }
    }
    //e scopro ogni quanti x deve fare una y
    gator_walking_frmskip_x_max = delta_factor_x;
    gator_walking_frmskip_y_max = delta_factor_y;
    if(delta_factor_y < 0){
        gator_walking_frmskip_y_max = -delta_factor_y;
    }
    if(delta_factor_x < 0){
        gator_walking_frmskip_x_max = -delta_factor_x;    
    }
}

void gator_turn() BANKED{
    if(THIS->mirror == V_MIRROR){
        THIS->mirror = NO_MIRROR;
        THIS->x -= 8u;
    }else if(THIS->mirror == NO_MIRROR){
        THIS->mirror = V_MIRROR;
        THIS->x += 8u;
    }
}
void DESTROY() {
}