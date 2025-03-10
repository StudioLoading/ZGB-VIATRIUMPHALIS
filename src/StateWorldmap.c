#include "Banks/SetAutoBank.h"

#include "BankManager.h"
#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "Dialogs.h"
#include "UtilAnim.h"
#include "custom_datas.h"

#define WORLDMAP_COUNTDOWN_MAX 15

IMPORT_MAP(worldmap);
IMPORT_MAP(arearome);
IMPORT_MAP(areaalps);
IMPORT_TILES(font);

extern UINT8 prev_state;

INT8 worldmap_counter = 0;
AREA current_area = AREA_ALPS;//TODO AREA_ROME
MISSION current_mission = MISSIONALPS04;//TODO MISSIONROME00
INT8 world_area_map = 0;//0=worldmap, 1=areamap

void START() {
    switch(world_area_map){
        case 0:
            InitScroll(BANK(worldmap), &worldmap, 0, 0);
        break;
        case 1:
        if(current_mission <= MISSIONROME03){
            InitScroll(BANK(arearome), &arearome, 0, 0);
        }
        if(current_mission <= MISSIONALPS04){
            InitScroll(BANK(areaalps), &areaalps, 0, 0);
        }
        break;
    }
    SetWindowY(144);
	SHOW_BKG;
    INIT_FONT(font, PRINT_BKG);
    worldmap_counter = WORLDMAP_COUNTDOWN_MAX;
    print_target = PRINT_BKG;
    PRINT(14, 0, "CONFIG");
    switch(world_area_map){
        case 0:
            PRINT(4, 16, "ROMAN EMPIRE");
        break;
        case 1:
            switch(current_mission){
                case MISSIONROME00: PRINT(2, 15, "A SECRET MESSAGE"); break;
                case MISSIONROME01: PRINT(4, 15, "RUN TO SAFETY"); break;
                case MISSIONROME02: PRINT(4, 15, "  SURVIVE    "); break;
                case MISSIONROME03: PRINT(4, 15, " KILL THE MAN"); break;
                case MISSIONALPS04: PRINT(4, 15, " HURRY UP!   "); break;
                case MISSIONALPS05: PRINT(4, 15, " HURRY UP!   "); break;
                case MISSIONALPS06: PRINT(4, 15, " HURRY UP!   "); break;
            }
        break;
    }
}

void UPDATE() {
    worldmap_counter--;
    if(worldmap_counter < -WORLDMAP_COUNTDOWN_MAX){ worldmap_counter = WORLDMAP_COUNTDOWN_MAX; return;}
    if(worldmap_counter > 0){
        if(world_area_map == 0){//worldmap
            Anim_worldmap_1(current_area);
        }else{//areamap
            switch(current_mission){
                case MISSIONROME00: Anim_arearome_1(); break;
                case MISSIONROME01: Anim_arearome_1(); break;
                case MISSIONROME02: Anim_arearome_2(); break;
                case MISSIONROME03: Anim_arearome_3(); break;
                case MISSIONALPS04: Anim_areaalps_1(); break;
                case MISSIONALPS05: Anim_areaalps_2(); break;
                case MISSIONALPS06: Anim_areaalps_3(); break;
                case MISSIONALPS07: Anim_areaalps_4(); break;
            }
        }
    }else{
        if(world_area_map == 0){//worldmap
            Anim_worldmap_0(current_area);
        }else{
            switch(current_mission){
                case MISSIONROME00:
                case MISSIONROME01:
                case MISSIONROME02:
                case MISSIONROME03:
                    Anim_arearome_0();
                break;
                case MISSIONALPS04:
                case MISSIONALPS05:
                case MISSIONALPS06:
                case MISSIONALPS07:
                    Anim_areaalps_0();
                break;
            }
        }
    }
    if(KEY_TICKED(J_START)){
        world_area_map++;
        if(world_area_map > 1){
            world_area_map = 1;
            switch(current_mission){
                case MISSIONROME00:
                    prev_state = StateMission00rome;//perché StatePapyrus va poi in prev_state
                    GetLocalizedDialog_EN(MISSION00_INTRO);
                break;
                case MISSIONROME01:
                    prev_state = StateMission01rome;
                    GetLocalizedDialog_EN(MISSION01_INTRO);
                break;
                case MISSIONROME02:
                    prev_state = StateMission02rome;
                    GetLocalizedDialog_EN(MISSION02_INTRO);
                break;
                case MISSIONROME03:
                    prev_state = StateMission03rome;
                    GetLocalizedDialog_EN(MISSION03_INTRO);
                break;
                case MISSIONALPS04:
                    prev_state = StateMission04alps;
                    GetLocalizedDialog_EN(MISSION04_INTRO);
                break;
            }
            SetState(StatePapyrus);
        }else{
            SetState(StateWorldmap);
        }
    }
    if(KEY_TICKED(J_SELECT)){//vai alla schermata di configurazione
        SetState(StateConfig);
    }
}

