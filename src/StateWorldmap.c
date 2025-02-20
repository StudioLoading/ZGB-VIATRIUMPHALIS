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
IMPORT_TILES(font);

extern UINT8 prev_state;

INT8 worldmap_counter = 0;
AREA current_area = AREA_ROME;
MISSION current_mission = MISSIONROME00;
INT8 world_area_map = 0;//0=worldmap, 1=areamap

void START() {
    switch(world_area_map){
        case 0:
            InitScroll(BANK(worldmap), &worldmap, 0, 0);
        break;
        case 1:
            if(current_mission <= MISSIONROME02){
                InitScroll(BANK(arearome), &arearome, 0, 0);
            }
        break;
    }
    SetWindowY(144);
	SHOW_BKG;
    INIT_FONT(font, PRINT_BKG);
    worldmap_counter = WORLDMAP_COUNTDOWN_MAX;
    print_target = PRINT_BKG;
    switch(world_area_map){
        case 0:
            PRINT(4, 16, "ROMAN EMPIRE");
        break;
        case 1:
            switch(current_mission){
                case MISSIONROME00: 
                    PRINT(2, 15, "A SECRET MESSAGE");
                break;
            }
        break;
    }
}

void UPDATE() {
    worldmap_counter--;
    if(worldmap_counter < -WORLDMAP_COUNTDOWN_MAX){ worldmap_counter = WORLDMAP_COUNTDOWN_MAX; return;}
    if(worldmap_counter > 0){
        if(world_area_map == 0){
            Anim_worldmap_1(current_area);
        }else{
            switch(current_mission){
                case MISSIONROME00:
                    Anim_arearome_1();
                break;
            }
        }
    }else{
        if(world_area_map == 0){
            Anim_worldmap_0(current_area);
        }else{
            switch(current_mission){
                case MISSIONROME00:
                    Anim_arearome_0();
                break;
            }
        }
    }
    if(KEY_RELEASED(J_START)){
        world_area_map++;
        if(world_area_map > 1){
            prev_state = StateMission00rome;
            GetLocalizedDialog_EN(MISSION00_INTRO);
            SetState(StatePapyrus);
        }else{
            SetState(StateWorldmap);
        }
    }
}

