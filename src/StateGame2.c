#include "Banks/SetAutoBank.h"

#include "BankManager.h"
#include <gb/cgb.h>
#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"
#include "Dialogs.h"

static const palette_color_t palette_data_rome[] = {RGB(0,0,0),RGB(0,0,0),RGB(29,2,0),RGB(0,0,0)};
static const palette_color_t palette_data_alps[] = {RGB(0,0,0),RGB(9,24,31),RGB(15,0,25),RGB(0,0,0)};
static const palette_color_t palette_data_sea[] = {RGB(0,0,0),RGB(14,10,1),RGB(4,22,0),RGB(0,0,0)};

UINT8 flag_night_mode = 0u;

void die() BANKED;
void spawn_items() BANKED;
void night_mode() BANKED;


extern struct CONFIGURATION configuration;
extern AREA current_area;
extern UINT8 scroll_bottom_movement_limit;//= 100;
extern UINT16 stamina_max;// = 960;
extern UINT16 euphoria_min;// = 600;
extern UINT16 euphoria_max;// = 700;
extern INT8 vx;
extern INT8 vy;
extern INT8 sin;
extern INT8 cos;
extern TURNING_VERSE turn_verse;
extern INT8 onwater_countdown;
extern MISSION_STEP current_step;
extern MISSION current_mission;
extern UINT8 prev_state;
extern UINT8 turn_to_load;
extern UINT8 turn;

extern void update_hp(INT8 variation) BANKED;
extern void item_spawn(ITEM_TYPE arg_itemtype, UINT16 arg_posx, UINT16 arg_posy) BANKED;

void START(){

}

void UPDATE() {
	
}

void die() BANKED{
	switch(current_mission){
		case MISSIONROME00: current_step = LOOKING_FOR_SENATOR; break;
		case MISSIONROME01:
		case MISSIONROME02:
		case MISSIONROME03:
			current_step = LOOKING_FOR_SENATOR; 
			current_mission = MISSIONROME00; 
		break;
		case MISSIONALPS04:
		case MISSIONALPS05:
		case MISSIONALPS06:
		case MISSIONALPS07:
			current_step = LOOKING_FOR_SENATOR; 
			current_mission = MISSIONALPS04; 
		break;
		case MISSIONSEA08:
		case MISSIONSEA09:
		case MISSIONSEA10:
			current_step = LOOKING_FOR_SENATOR; 
			current_mission = MISSIONSEA08; 
		break;
	}
	flag_night_mode = 0;//RESET
	prev_state = StateWorldmap;
	update_hp(16);
	GetLocalizedDialog_EN(DEAD);
	SetState(StatePapyrus);
}

void spawn_items() BANKED{
	switch(current_mission){
		case MISSIONROME00:
			if(configuration.whip == NORMAL){
				Sprite* s_config_whip = SpriteManagerAdd(SpriteConfigwhip, ((UINT16)144u << 3), ((UINT16)43u << 3));
				struct ItemData* whip_data = (struct ItemData*)s_config_whip->custom_data;
				whip_data->itemtype = GOLDEN_WHIP;
				whip_data->configured = 1;
			}
		break;
		case MISSIONROME01:
			item_spawn(LANCE, ((UINT16) 21u << 3), ((UINT16) 34u << 3));
			item_spawn(LANCE, ((UINT16) 84u << 3), ((UINT16) 33u << 3));
		break;
		case MISSIONROME02:
			item_spawn(HP, ((UINT16) 38u << 3), ((UINT16) 79u << 3));
			item_spawn(HP, ((UINT16) 113u << 3), ((UINT16) 55u << 3));
		break;
		case MISSIONROME03:
			if(configuration.wheel == NORMAL){
				Sprite* s_config_wheel = SpriteManagerAdd(SpriteConfigwheel, ((UINT16)152u << 3), ((UINT16)23u << 3));
				struct ItemData* wheel_data = (struct ItemData*)s_config_wheel->custom_data;
				wheel_data->itemtype = GOLDEN_WHEEL;
				wheel_data->configured = 1;
			}
		break;
		case MISSIONALPS04:
			item_spawn(FIRE, ((UINT16) 38u << 3), ((UINT16) 68u << 3));
			item_spawn(FIRE, ((UINT16) 62u << 3), ((UINT16) 18u << 3));
		break;
		case MISSIONALPS05:
			item_spawn(LANCE, ((UINT16) 26u << 3), ((UINT16) 41u << 3));
			item_spawn(LANCE, ((UINT16) 79u << 3), ((UINT16) 56u << 3));
		break;
		case MISSIONALPS06:
			item_spawn(ELMET, ((UINT16) 44u << 3), ((UINT16) 15u << 3) - 4u);
			item_spawn(ELMET, ((UINT16) 166u << 3), ((UINT16) 14u << 3));
			item_spawn(HP, ((UINT16) 111u << 3), ((UINT16) 19u << 3));
			item_spawn(ELMET, ((UINT16) 128u << 3), ((UINT16) 18u << 3));
			item_spawn(HP, ((UINT16) 155u << 3), ((UINT16) 9u << 3));
			/*if(configuration.reins == NORMAL){
				Sprite* s_config_reins = SpriteManagerAdd(SpriteConfigreins, ((UINT16)212u << 3), ((UINT16)10u << 3));
				struct ItemData* reins_data = (struct ItemData*)s_config_reins->custom_data;
				reins_data->itemtype = GOLDEN_REINS;
				reins_data->configured = 1;
			}*/
		break;
		case MISSIONALPS07:
			item_spawn(SHIELD, ((UINT16) 18u << 3), ((UINT16) 16u << 3));
			SpriteManagerAdd(SpriteFlame, (UINT16) 13u << 3, (UINT16) 13u << 3);
			item_spawn(LANCE, ((UINT16) 60u << 3), ((UINT16) 41u << 3));
		break;
		case MISSIONSEA08:
			item_spawn(TIME, ((UINT16) 70u << 3), ((UINT16) 29u << 3));
			item_spawn(TIME, ((UINT16) 44u << 3), ((UINT16) 61u << 3));
			item_spawn(PAPYRUS, ((UINT16) 18u << 3), ((UINT16) 63u << 3));
		break;
		case MISSIONSEA09:
			item_spawn(SHIELD, ((UINT16) 21u << 3), ((UINT16) 8u << 3));
			item_spawn(LANCE, ((UINT16) 52u << 3), ((UINT16) 15u << 3));
			item_spawn(SHIELD, ((UINT16) 113u << 3), ((UINT16) 10u << 3));
		break;
	}
}

void night_mode() BANKED{
	if(_cpu != CGB_TYPE){
		BGP_REG = PAL_DEF(2, 1, 3, 3);// NIGHT MODE
		OBP0_REG = PAL_DEF(2, 1, 3, 3);
		//OBP1_REG = PAL_DEF(2, 1, 3, 3);
	}else{
		switch(current_area){
			case AREA_ROME://(30,29,19), (30,25,14), (29,2,0), (13,12,1)
				{
					set_bkg_palette(BKGF_CGB_PAL0, 1, palette_data_rome);
					set_bkg_palette(BKGF_CGB_PAL2, 1, palette_data_rome);
				}
			break;
			case AREA_ALPS:
				set_bkg_palette(BKGF_CGB_PAL0, 1, palette_data_alps);
				set_bkg_palette(BKGF_CGB_PAL2, 1, palette_data_alps);
			break;
			case AREA_SEA:
				set_bkg_palette(BKGF_CGB_PAL0, 1, palette_data_sea);
				set_bkg_palette(BKGF_CGB_PAL1, 1, palette_data_alps);
				set_bkg_palette(BKGF_CGB_PAL2, 1, palette_data_sea);
				set_bkg_palette(BKGF_CGB_PAL3, 1, palette_data_sea);
				set_bkg_palette(BKGF_CGB_PAL4, 1, palette_data_sea);
			break;
		}
	}
}