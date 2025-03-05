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

IMPORT_MAP(hudm);
IMPORT_MAP(mapmission02);

const UINT8 coll_m02_tiles[] = {15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 112, 114, 118, 119, 121, 0};

const UINT8 coll_m02_surface[] = {0u, 0};

Sprite* s_killer00 = 0;
Sprite* s_killer01 = 0;
Sprite* s_killer02 = 0;
Sprite* s_killer03 = 0;
Sprite* s_killer04 = 0;
Sprite* s_killer05 = 0;
Sprite* s_killer06 = 0;
Sprite* s_killer07 = 0;

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

extern void start_common() BANKED;
extern void update_common() BANKED;
extern void calculate_danger(Sprite* s_danger) BANKED;
extern void check_danger() BANKED;
extern void show_danger() BANKED;
extern void item_spawn(ITEM_TYPE arg_itemtype, UINT16 arg_posx, UINT16 arg_posy) BANKED;
extern void spawn_items() BANKED;
extern void night_mode() BANKED;

void spawn_killers() BANKED;

void START(){
    if(flag_golden_found == 1){//uso pos_horse_x per come l'ho salvata
        flag_golden_found = 0;
    }else{//initial
        pos_horse_x = (UINT16) 169u << 3;
        pos_horse_y = (UINT16) 71u << 3;
        mirror_horse = V_MIRROR;
        turn_to_load = 126u;
    }
    current_step = EXIT;
    mission_completed = 1;
    //SPRITES
        scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
        s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
        s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
        s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
    //COMMONS & START
        InitScroll(BANK(mapmission02), &mapmission02, coll_m02_tiles, coll_m02_surface);
		INIT_HUD(hudm);
		SetWindowY(104);
        start_common();
        spawn_items();
        spawn_killers();
        night_mode();
}

void spawn_killers() BANKED{
    s_killer00 = SpriteManagerAdd(SpriteKiller, ((UINT16) 100u << 3), ((UINT16) 75u << 3));
    s_killer01 = SpriteManagerAdd(SpriteKiller, ((UINT16) 60u << 3), ((UINT16) 75u << 3));
    s_killer02 = SpriteManagerAdd(SpriteKiller, ((UINT16) 90u << 3), ((UINT16) 56u << 3));
    s_killer03 = SpriteManagerAdd(SpriteKiller, ((UINT16) 151u << 3), ((UINT16) 28u << 3));
    s_killer04 = SpriteManagerAdd(SpriteKiller, ((UINT16) 64u << 3), ((UINT16) 3u << 3));
    s_killer05 = SpriteManagerAdd(SpriteKiller, ((UINT16) 84u << 3), ((UINT16) 3u << 3));
    s_killer06 = SpriteManagerAdd(SpriteKiller, ((UINT16) 104u << 3), ((UINT16) 3u << 3));
    s_killer07 = SpriteManagerAdd(SpriteKiller, ((UINT16) 25u << 3), ((UINT16) 16u << 3));
    /*
    struct SoldierData* romansoldier00_data = (struct SoldierData*) s_killer00->custom_data;
    romansoldier00_data->frmskip_max = 12u;
    romansoldier00_data->configured = 2;
    romansoldier00_data->reward = NOITEM;
    s_killer01 = SpriteManagerAdd(SpriteRomansoldier, ((UINT16) 132u << 3), ((UINT16) 17u << 3));
    struct SoldierData* romansoldier01_data = (struct SoldierData*) s_killer01->custom_data;
    romansoldier01_data->frmskip_max = 12u;
    romansoldier01_data->configured = 2;
    romansoldier00_data->reward = HP;
    
    s_killer02 = SpriteManagerAdd(SpriteRomansoldier, ((UINT16) 104u << 3), ((UINT16) 51u << 3));
    struct SoldierData* romansoldier02_data = (struct SoldierData*) s_killer02->custom_data;
    romansoldier02_data->frmskip_max = 12u;
    romansoldier02_data->configured = 2;
    romansoldier02_data->reward = NOITEM;

    s_killer03 = SpriteManagerAdd(SpriteRomansoldier, ((UINT16) 154u << 3), ((UINT16) 48u << 3));
    struct SoldierData* romansoldier03_data = (struct SoldierData*) s_killer03->custom_data;
    romansoldier03_data->frmskip_max = 12u;
    romansoldier03_data->configured = 2;
    romansoldier03_data->reward = NOITEM;
    */
}
void UPDATE(){
    //COMMON UPDATE
        update_common();
    //LIMIT MAP RIGHT
        if(s_horse->x > ((UINT16) 175u << 3)){
            s_horse->x = ((UINT16) 175u << 3);
        }
    //CALCULATE DANGER
        calculate_danger(s_killer00);
        calculate_danger(s_killer01);
        calculate_danger(s_killer02);
        calculate_danger(s_killer03);
        calculate_danger(s_killer04);
        calculate_danger(s_killer05);
        calculate_danger(s_killer06);
        calculate_danger(s_killer07);
        check_danger();
        show_danger();
    //MISSION STEP
        /*if(current_step == SENATOR_COLLIDED){
            pos_horse_x = s_horse->x;
            pos_horse_y = s_horse->y;
            prev_state = StateMission00rome;
            turn_to_load = turn;
            GetLocalizedDialog_EN(MISSION00_SECRET_MESSAGE);
            SetState(StatePapyrus);
        }*/
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
                turn_to_load = turn;//mission02 comincia nello stesso verso di dove finisce mission03
                current_mission++;
                GetLocalizedDialog_EN(MISSION02_COMPLETED);
                SetState(StatePapyrus);
            }
        }
}