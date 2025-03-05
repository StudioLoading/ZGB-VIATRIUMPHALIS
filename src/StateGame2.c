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

static const palette_color_t palette_data[] = {RGB(0,0,0),RGB(0,0,0),RGB(29,2,0),RGB(0,0,0)};

void die() BANKED;
void spawn_items() BANKED;
void night_mode() BANKED;


extern AREA current_area;
extern UINT8 scroll_bottom_movement_limit;//= 100;
extern UINT16 stamina_max;// = 960;
extern UINT16 euphoria_min;// = 600;
extern UINT16 euphoria_max;// = 700;
extern INT16 stamina_current;// = 0;
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
			current_step = LOOKING_FOR_SENATOR; 
			current_mission = MISSIONROME00; 
		break;
	}
	prev_state = StateWorldmap;
	update_hp(16);
	GetLocalizedDialog_EN(DEAD);
	SetState(StatePapyrus);
}

void spawn_items() BANKED{
	switch(current_mission){
		case MISSIONROME01:
			item_spawn(LANCE, ((UINT16) 21u << 3), ((UINT16) 34u << 3));
			item_spawn(LANCE, ((UINT16) 84u << 3), ((UINT16) 33u << 3));
		break;
	}
}

void night_mode() BANKED{
	if(_cpu != CGB_TYPE){
		BGP_REG = PAL_DEF(2, 1, 3, 3);// NIGHT MODE
	}else{
		switch(current_area){
			case AREA_ROME://(30,29,19), (30,25,14), (29,2,0), (13,12,1)
				{
					//UINT16 palette[] = {RGB(30,29,19),RGB(30,25,14),RGB(29,2,0),RGB(13,12,1)};
					set_bkg_palette(BKGF_CGB_PAL0, 1, palette_data);
				}
			break;
		}
	}
}