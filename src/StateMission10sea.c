#include "Banks/SetAutoBank.h"

#include "BankManager.h"
#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "Dialogs.h"
#include "custom_datas.h"

#define TIME_MAX_MISSIONSEA10 960 //32 fattore 1, 320 fattore 10, 640 fattore 20, ...
#define TIME_FACTOR_MISSIONSEA10 30

IMPORT_MAP(hudm);
IMPORT_MAP(mapmission10);

const UINT8 coll_m10_tiles[] = {15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 47, 48, 49, 50, 51, 52, 53, 55, 56, 57, 63, 64, 68, 69, 70, 75, 76, 77, 78, 79, 80, 81, 82, 85, 86, 90, 91, 93, 95, 96, 97, 98, 99, 102, 103, 104, 105, 106, 114, 118, 119, 121, 0};

const UINT8 coll_m10_surface[] = {0u, 0};

extern INT8 mission_iscrono;
extern UINT16 pos_horse_x;
extern UINT16 pos_horse_y;
extern MISSION_STEP current_step;

extern Sprite* s_biga;
extern Sprite* s_horse;
extern Sprite* s_compass;
extern UINT8 track_ended;
extern INT8 track_ended_cooldown;
extern UINT8 turn;
extern UINT8 prev_state;
extern INT8 mission_completed;
extern MISSION current_mission;
extern struct CONFIGURATION configuration;
extern INT8 flag_golden_found;
extern MirroMode mirror_horse;
extern UINT8 turn_to_load;
extern UINT8 turn;
extern INT16 time_current;
extern INT16 timemax_current;
extern INT16 time_factor;
extern INT16 time_to_load;
extern UINT8 mission_killed;

extern void start_common() BANKED;
extern void update_common() BANKED;
extern void calculate_danger(Sprite* s_danger) BANKED;
extern void check_danger() BANKED;
extern void show_danger() BANKED;
extern void update_time() BANKED;
extern void spawn_items() BANKED;
extern void die() BANKED;

void START(){
    mission_iscrono = 1;
    if(flag_golden_found == 1){//uso pos_horse_x per come l'ho salvata
        flag_golden_found = 0;
    }else if(current_step == LOOKING_FOR_SENATOR){//initial
        pos_horse_x = (UINT16) 11u << 3;
        pos_horse_y = (UINT16) 7u << 3;
        mirror_horse = NO_MIRROR;
        turn_to_load = 0;
        time_factor = TIME_FACTOR_MISSIONSEA10;
        timemax_current = TIME_MAX_MISSIONSEA10;
        time_to_load = timemax_current;
    }     
    //SPRITES
        scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
        s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
        s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
        s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
        if(current_step == LOOKING_FOR_SENATOR){
            mission_completed = 0;
        }else{
            current_step = EXIT;
            mission_completed = 1;
        }
    //COMMONS & START
        InitScroll(BANK(mapmission10), &mapmission10, coll_m10_tiles, coll_m10_surface);
		INIT_HUD(hudm);
		SetWindowY(104);
        spawn_items();
        start_common();
}


void UPDATE(){
    //COMMON UPDATE
        update_common();
    //LIMIT MAP LEFT
        if(s_horse->y < 80 && s_horse->x < 24u){
            s_horse->x = 24u;
        }
    //UPDATE TIME
        update_time();
        time_current--;
        if(time_current < 0 && !mission_completed && !track_ended){
            die();
        }    
    //MISSION STEP
        /*if(current_step == SENATOR_COLLIDED){
            pos_horse_x = s_horse->x;
            pos_horse_y = s_horse->y;
            prev_state = StateMission05alps;
            turn_to_load = turn;
            time_to_load = time_current;
            GetLocalizedDialog_EN(MISSION05_SAVED_GENERAL);
            SetState(StatePapyrus);
        }*/
    //CALCULATE DANGER
        /*calculate_danger(s_barbarianshield00);
        calculate_danger(s_barbarianshield01);
        calculate_danger(s_barbarianshield02);
        calculate_danger(s_barbarianshield03);
        calculate_danger(s_barbarianshield05);
        calculate_danger(s_barbarianshield06);
        check_danger();
        show_danger();*/
    //IS MISSION COMPLETED?
        if(mission_completed && track_ended){
            track_ended_cooldown--;
            if(track_ended_cooldown <= 0){//cambia stato
                INT8 can_go_on = 1;
                /*if(tutorial_state == TUTORIAL_STAGE_8_GLADIO || 
                    tutorial_state == TUTORIAL_STAGE_9_GLADIOLEFT ||
                    tutorial_state == TUTORIAL_STAGE_10_LANCE){//check fantoccio hit
                    if(fantoccio_hit == 0){
                        can_go_on = 0;
                    }
                }*/
                if(can_go_on == 1){
                    //tutorial_state++;
                }
                prev_state = StateWorldmap;
                turn_to_load = turn;//mission01 comincia nello stesso verso di dove finisce mission00
                current_mission++;
                current_step = LOOKING_FOR_SENATOR;
                GetLocalizedDialog_EN(MISSION08_COMPLETED);
                SetState(StatePapyrus);
            }
        }
}