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
IMPORT_MAP(mapmission00);

const UINT8 coll_m00_tiles[] = {15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 112, 114, 118, 119, 121, 0};

const UINT8 coll_m00_surface[] = {0u, 0};

INT8 mission_iscrono = 0;
Sprite* s_senator = 0;
extern UINT16 pos_horse_x;
extern UINT16 pos_horse_y;
MISSION_STEP current_step = LOOKING_FOR_SENATOR;

extern Sprite* s_biga;
extern Sprite* s_horse;
extern Sprite* s_compass;
extern UINT16 euphoria_min_current;
extern UINT16 euphoria_max_current;
extern UINT16 euphoria_min;
extern UINT16 euphoria_max;
extern INT16 time_current; 
extern INT16 timemax_current;
extern INT16 time_factor;
extern UINT8 track_ended;
extern INT8 track_ended_cooldown;
extern UINT8 hud_initialized;
extern INT8 onwater_countdown; 
extern INT8 velocity;
extern UINT8 turn;
extern UINT8 prev_state;
extern INT8 mission_completed;
extern MISSION current_mission;
extern struct CONFIGURATION configuration;
extern INT8 flag_golden_found;
extern MirroMode mirror_horse;
extern UINT8 turn_to_load;
extern UINT8 turn;
extern INT8 flag_die;
extern INT8 die_counter;

extern void start_common() BANKED;
extern void update_stamina() BANKED;
extern void update_compass() BANKED;
extern void update_turning() BANKED;
extern void update_euphoria() BANKED;
extern void update_time() BANKED;
extern void update_hp(INT8 variation) BANKED;
extern void die() BANKED;

void START(){
    if(flag_golden_found == 1){//uso pos_horse_x per come l'ho salvata
        flag_golden_found = 0;
    }else if(current_step == LOOKING_FOR_SENATOR){//initial
        pos_horse_x = (UINT16) 6u << 3;
        pos_horse_y = (UINT16) 7u << 3;
        mirror_horse = NO_MIRROR;
    }
    //SPRITES
        scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
        s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
        s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
        s_horse->mirror = mirror_horse;
        s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
        if(current_step == LOOKING_FOR_SENATOR){
            s_senator = SpriteManagerAdd(SpriteRomansenator, ((UINT16) 60u) << 3, ((UINT16) 43u) << 3);
            mission_iscrono = 0;
            mission_completed = 0;
        }else{
            SpriteManagerRemoveSprite(s_senator);
            current_step = EXIT;
            mission_completed = 1;
            s_senator = 0;
        }
        if(configuration.whip == NORMAL){
            Sprite* s_config_whip = SpriteManagerAdd(SpriteConfigwhip, ((UINT16)144u << 3), ((UINT16)43u << 3));
            struct ItemData* whip_data = (struct ItemData*)s_config_whip->custom_data;
            whip_data->itemtype = GOLDEN_WHIP;
            whip_data->configured = 1;
        }

    //COMMONS & START
        InitScroll(BANK(mapmission00), &mapmission00, coll_m00_tiles, coll_m00_surface);
        update_hp(16); 
		INIT_HUD(hudm);
		SetWindowY(104);
        start_common();
}

void UPDATE(){
    //DIEING
        if(flag_die == 1){
            die_counter--;
            if(die_counter <= 0){
                flag_die = 0;
                die();
            }
            return;
        }
    //LIMIT MAP LEFT
        if(s_horse->x < 40u){
            s_horse->x = 40u;
        }
        if(s_horse->x > ((UINT16) 200u << 3)){
            if(current_step < EXIT){
                s_horse->x = ((UINT16) 200u << 3);
            }
        }
    //HUD
		print_target = PRINT_WIN;
        if(hud_initialized == 0){
            update_hp(0);
            hud_initialized = 1u;
        }
    //UPDATE STAMINA
		update_stamina();
    //UPDATE TURNING
		update_turning();
    //UPDATE EUPHORIA?
		if(euphoria_min_current != euphoria_min || euphoria_max_current != euphoria_max){
			update_euphoria();
		}
    //MISSION STEP
        if(current_step == SENATOR_COLLIDED){
            pos_horse_x = s_horse->x;
            pos_horse_y = s_horse->y;
            prev_state = StateMission00rome;
            turn_to_load = turn;
            GetLocalizedDialog_EN(MISSION00_SECRET_MESSAGE);
            SetState(StatePapyrus);
        }
    //IS MISSION COMPLETED?
    if(mission_completed == 1u && track_ended == 1){
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
            current_mission++;
            GetLocalizedDialog_EN(MISSION00_COMPLETED);
            SetState(StatePapyrus);
        }
    }
}