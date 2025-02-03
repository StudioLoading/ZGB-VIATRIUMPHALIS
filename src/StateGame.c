#include "Banks/SetAutoBank.h"

#include "BankManager.h"
#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"

#define PIXEL_STAMINA 96
#define ENDED_TRACK_COOLDOWN 80

IMPORT_MAP(hudm);
IMPORT_MAP(map);
IMPORT_MAP(maprome00);

IMPORT_TILES(hudt);

const UINT8 coll_tiles[] = {15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 0};
const UINT8 coll_surface[] = {0u, 0};
Sprite* s_horse = 0;
Sprite* s_biga = 0;
Sprite* s_compass = 0;
Sprite* s_weapon = 0;
UINT16 euphoria_min_current = 0u;
UINT16 euphoria_max_current = 0u;
HORSE_DIRECTION horse_direction = EEE;
HORSE_DIRECTION horse_direction_old = EEE;
INT8 hp_current = 15;
INT8 hud_turn_cooldown = 0;
INT16 timemax_current = 0;
INT16 time_current = 0;
INT16 time_factor = 0;
ITEM_TYPE weapon_atk = NONE;
ITEM_TYPE weapon_def = NONE;
UINT8 track_ended = 0u;
INT8 track_ended_cooldown = ENDED_TRACK_COOLDOWN;
UINT8 hud_initialized = 0u;

void update_stamina() BANKED;
void update_euphoria() BANKED;
void update_compass() BANKED;
void update_turning() BANKED;
void update_hp(INT8 variation) BANKED;
void update_hp_max() BANKED;
void update_time() BANKED;
void update_time_max() BANKED;
void update_weapon() BANKED;
void consume_weapon_def() BANKED;
void consume_weapon_atk() BANKED;
void use_weapon(INT8 is_defence) BANKED;
void start_common() BANKED;

extern UINT8 scroll_bottom_movement_limit;//= 100;

extern UINT16 stamina_max;// = 960;
extern UINT16 euphoria_min;// = 600;
extern UINT16 euphoria_max;// = 700;
extern INT16 stamina_current;// = 0;
extern INT8 sin;
extern INT8 cos;
extern TURNING_VERSE turn_verse;
extern INT8 onwater_countdown;


void START() {
	UINT16 pos_horse_x = 56;
	UINT16 pos_horse_y = 88;
	scroll_target = SpriteManagerAdd(SpriteCamera, pos_horse_x + 8, pos_horse_y - 16);
	s_biga = SpriteManagerAdd(SpriteBiga, pos_horse_x - 20, pos_horse_y + 9);
	s_horse = SpriteManagerAdd(SpriteHorse, pos_horse_x, pos_horse_y);
	s_compass = SpriteManagerAdd(SpriteCompass, pos_horse_x, pos_horse_y);
	//Sprite* s_fire = SpriteManagerAdd(SpriteFire, s_horse->x + 160u, s_horse->y + 16u);
	//Sprite* s_item2 = SpriteManagerAdd(SpriteFire, s_horse->x + 48u, s_horse->y + 8u);
	//Sprite* s_fantoccio2 = SpriteManagerAdd(SpriteFantoccio, s_horse->x + 48u, s_horse->y + 8u);
	Sprite* s_heart = SpriteManagerAdd(SpriteItem, s_horse->x + 32u, s_horse->y + 8u);
	struct ItemData* heart_data = (struct ItemData*) s_heart->custom_data;
	heart_data->itemtype = HP;
    heart_data->configured = 1;
	Sprite* s_item = SpriteManagerAdd(SpriteItem, s_horse->x + 48u, s_horse->y + 8u);
	struct ItemData* item_data = (struct ItemData*) s_item->custom_data;
	item_data->itemtype = GLADIO;
    item_data->configured = 1;
	//COMMON AND VARS
		InitScroll(BANK(maprome00), &maprome00, coll_tiles, coll_surface);
		//scroll_target = s_compass;
		//INIT_FONT(font, PRINT_WIN);//test todo remove me serve solo per log
		INIT_HUD(hudm);
		SetWindowY(104);//su suggerimento di toxa, perché INIT_HUD non fa sta chiamata che dice serve...
		start_common();
}

void start_common() BANKED{
	scroll_bottom_movement_limit= 40;
	euphoria_min_current = euphoria_min;
	euphoria_max_current = euphoria_max;
	hud_turn_cooldown = 0;
	update_euphoria();
	track_ended = 0;
	track_ended_cooldown = ENDED_TRACK_COOLDOWN;
	update_time_max();
	stamina_current = 0;
	turn_verse = NONE;
	hud_initialized = 0u;
	onwater_countdown = -1;
}

void update_stamina() BANKED{
	//12 tiles di hud
	//devo scrivere stamina_current in termini di pixels.
	//stamina_max : stamina_current = PIXEL_STAMINA : x
	INT16 stamina_hud = stamina_current/10;// (stamina_current * PIXEL_STAMINA)/stamina_max;
	UINT16 stamina_intero = stamina_hud >> 3;
	UINT16 stamina_resto = stamina_hud % 8;
	INT16 idx = 0;
	if(stamina_intero > 0){
		for(idx = 0; idx < stamina_intero; idx++){
			UPDATE_HUD_TILE(7+idx,0, 52);
		}
	}
	if(stamina_resto > 0){
		UPDATE_HUD_TILE(7+idx,0, 60 - stamina_resto);
		idx++;
	}
	while(idx < 12){
		UPDATE_HUD_TILE(7+idx,0, 60);
		idx++;
	}
}

void update_euphoria() BANKED{
	//clean
		UPDATE_HUD_TILE(6,1,1);
		UPDATE_HUD_TILE(7,1,1);
		UPDATE_HUD_TILE(8,1,1);
		UPDATE_HUD_TILE(9,1,1);
		UPDATE_HUD_TILE(10,1,1);
		UPDATE_HUD_TILE(11,1,1);
		UPDATE_HUD_TILE(12,1,1);
		UPDATE_HUD_TILE(13,1,1);
		UPDATE_HUD_TILE(14,1,1);
		UPDATE_HUD_TILE(15,1,1);
		UPDATE_HUD_TILE(16,1,1);
		UPDATE_HUD_TILE(17,1,1);
		UPDATE_HUD_TILE(18,1,1);
		UPDATE_HUD_TILE(19,1,1);
	//update
		euphoria_min_current = euphoria_min;
		euphoria_max_current = euphoria_max;
		UINT8 euphoria_init = euphoria_min_current / 10 / 8;
		UINT8 euphoria_final = euphoria_max_current / 10 / 8;
		UINT8 delta_euphoria = euphoria_final - euphoria_init;
		UINT8 idx_delta_euphoria = 0u;
		while(idx_delta_euphoria <= (delta_euphoria-1)){
			if(idx_delta_euphoria < 3){
			UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 7+idx_delta_euphoria);
			}else{ UPDATE_HUD_TILE(7+euphoria_init+idx_delta_euphoria,1, 1);}
			idx_delta_euphoria++;
		}
		UPDATE_HUD_TILE(7+euphoria_final,1, 10);
}

void update_compass() BANKED{
	INT8 using_cos = cos;
	INT8 using_sin = sin;
	if(cos < 0) {using_cos = -cos;}
	if(sin < 0) {using_sin = -sin;}
	if(using_sin >= 0 && using_sin <= 30){//tratto come se stesse andando orizzontale
		horse_direction = EEE;
	}else if(using_sin > 30 && using_sin < 54){// tratto come se stesse andando a 33 gradi
		horse_direction = ENE;
	}else if(using_sin > 54 && using_sin < 78){// tratto come se stesse andando a 66 gradi
		horse_direction = NNE;
	}else if(using_sin > 78){ // tratto come se stesse andando verticale su
		horse_direction = NNN;
	}
	//if(sin > 0 && cos > 0){horse_direction = EEE;}
	if(sin > 0 && cos < 0){
		switch(horse_direction){//THIS->mirror = V_MIRROR;
			case EEE: horse_direction = WWW; break;
			case ENE: horse_direction = WNW; break;
			case NNE: horse_direction = NNW; break;
		}			
	}
	if(sin < 0 && cos > 0){//THIS->mirror = H_MIRROR;
		switch(horse_direction){
			case ENE: horse_direction = ESE; break;
			case NNE: horse_direction = SSE; break;
			case NNN: horse_direction = SSS; break;
		}
	}
	if(sin < 0 && cos < 0){//THIS->mirror = HV_MIRROR;
		switch(horse_direction){
			case EEE: horse_direction = WWW; break;
			case ENE: horse_direction = WSW; break;
			case NNE: horse_direction = SSW; break;
			case NNN: horse_direction = SSS; break;
		}			
	}
	if(horse_direction_old != horse_direction){
		horse_direction_old = horse_direction;
		switch(horse_direction_old){
			case EEE: UPDATE_HUD_TILE(1,2,63); break;
			case ENE: UPDATE_HUD_TILE(1,2,64); break;
			case NNE: UPDATE_HUD_TILE(1,2,65); break;
			case NNN: UPDATE_HUD_TILE(1,2,66); break;
			case NNW: UPDATE_HUD_TILE(1,2,67); break;
			case WNW: UPDATE_HUD_TILE(1,2,68); break;
			case WWW: UPDATE_HUD_TILE(1,2,69); break;
			case WSW: UPDATE_HUD_TILE(1,2,70); break;
			case SSW: UPDATE_HUD_TILE(1,2,71); break;
			case SSS: UPDATE_HUD_TILE(1,2,72); break;
			case SSE: UPDATE_HUD_TILE(1,2,73); break;
			case ESE: UPDATE_HUD_TILE(1,2,74); break;

		}
	}
}

void update_turning() BANKED{
	if(hud_turn_cooldown > 0){
		hud_turn_cooldown--;
	}else{
		switch(turn_verse){
			case NONE: UPDATE_HUD_TILE(3,2,1); UPDATE_HUD_TILE(3,3,1);break;	
			case CLOCK: UPDATE_HUD_TILE(3,2,48); UPDATE_HUD_TILE(3,3,49);break;	
			case COUNTERCLOCK: UPDATE_HUD_TILE(3,2,75); UPDATE_HUD_TILE(3,3,76);break;	
		}
	}
}

void update_hp_max() BANKED{
	hp_current = 16;
	update_hp(16);
}

void update_hp(INT8 variation) BANKED{
	hp_current += variation;
	if(hp_current <= 0){
		//die();
		//return;
	}else if(hp_current > 16){
		hp_current = 16;
	}
	INT8 hp_intero = hp_current / 8;
	INT8 hp_resto = hp_current % 8;
	INT8 idx_hp = 0;
	if(hp_intero > 0){
		while(idx_hp < hp_intero){
			UPDATE_HUD_TILE(7+idx_hp,2,52);
			idx_hp++;
		}
	}
	if(hp_resto > 0){
		UPDATE_HUD_TILE(7+idx_hp,2,60-hp_resto);
		idx_hp++;
	}
	while(idx_hp < 2){
		UPDATE_HUD_TILE(7+idx_hp,2, 60);
		idx_hp++;
	}
}

void update_time() BANKED{
	INT16 time_hud = time_current / time_factor;
	INT16 time_intero = time_hud / 8;
	INT8 time_resto = time_hud % 8;
	INT8 idx_time = 0;
	if(time_intero > 0){
		while(idx_time < time_intero){
			UPDATE_HUD_TILE(15+idx_time,2,52);
			idx_time++;
		}
	}
	if(time_resto > 0){
		UPDATE_HUD_TILE(15+idx_time,2,60-time_resto);
	}else{
		while(idx_time < 4){
			UPDATE_HUD_TILE(15+idx_time,2, 60);
			idx_time++;
		}
	}
}

void update_weapon() BANKED{
	switch(weapon_atk){
		case NONE:
			UPDATE_HUD_TILE(5,3,20);
			UPDATE_HUD_TILE(5,4,21);
			UPDATE_HUD_TILE(6,3,22);
			UPDATE_HUD_TILE(6,4,23);
		break;
		case GLADIO:
			UPDATE_HUD_TILE(5,3,28);
			UPDATE_HUD_TILE(5,4,29);
			UPDATE_HUD_TILE(6,3,30);
			UPDATE_HUD_TILE(6,4,31);
		break;
		case LANCE:
			UPDATE_HUD_TILE(5,3,32);
			UPDATE_HUD_TILE(5,4,33);
			UPDATE_HUD_TILE(6,3,34);
			UPDATE_HUD_TILE(6,4,35);
		break;
		case FLAME:
			UPDATE_HUD_TILE(5,3,36);
			UPDATE_HUD_TILE(5,4,37);
			UPDATE_HUD_TILE(6,3,38);
			UPDATE_HUD_TILE(6,4,39);
		break;
	}
	switch(weapon_def){
		case NONE:
			UPDATE_HUD_TILE(13,3,24);
			UPDATE_HUD_TILE(13,4,25);
			UPDATE_HUD_TILE(14,3,26);
			UPDATE_HUD_TILE(14,4,27);
		break;
		case ELMET:
			UPDATE_HUD_TILE(13,3,40);
			UPDATE_HUD_TILE(13,4,41);
			UPDATE_HUD_TILE(14,3,42);
			UPDATE_HUD_TILE(14,4,43);
		break;
		case SHIELD:
			UPDATE_HUD_TILE(13,3,44);
			UPDATE_HUD_TILE(13,4,45);
			UPDATE_HUD_TILE(14,3,46);
			UPDATE_HUD_TILE(14,4,47);
		break;
		case CAPE:
			UPDATE_HUD_TILE(13,3,78);
			UPDATE_HUD_TILE(13,4,79);
			UPDATE_HUD_TILE(14,3,80);
			UPDATE_HUD_TILE(14,4,81);
		break;
	}
}

void use_weapon(INT8 is_defence) BANKED{
	if(is_defence){
		s_weapon = SpriteManagerAdd(SpriteItem, s_horse->x + 16, s_horse->y);
		struct ItemData* weapon_data = (struct ItemData*) s_weapon->custom_data;
		weapon_data->itemtype = weapon_def;
		weapon_data->configured = 3;
		consume_weapon_def();
	}else{//attack!
		UINT16 attack_x = s_horse->x + 16;
		UINT16 attack_y = s_horse->y + 8;
		if(s_horse->mirror == V_MIRROR){
			attack_y = s_horse->y - 20;
			attack_x = s_horse->x;
		}
		s_weapon = SpriteManagerAdd(SpriteItem, attack_x, attack_y);
		struct ItemData* weapon_data = (struct ItemData*) s_weapon->custom_data;
		weapon_data->itemtype = weapon_atk;
		weapon_data->configured = 3;
		consume_weapon_atk();
	}
}

void update_time_max() BANKED{
	time_current = timemax_current ;
}

void consume_weapon_atk() BANKED{
	weapon_atk = NONE;
	update_weapon();
}

void consume_weapon_def() BANKED{
	weapon_def = NONE;
	update_weapon();
}

void UPDATE() {
	//LIMIT MAP LEFT
		if(s_horse->x < 40u){
			s_horse->x = 40u;
		}
	//HUD
		print_target = PRINT_WIN;
	//UPDATE STAMINA
		update_stamina();
	//UPDATE COMPASS
		update_compass();
	//UPDATE TURNING
		update_turning();
	//UPDATE HP
		//update_hp();
	//UPDATE EUPHORIA?
		if(euphoria_min_current != euphoria_min || euphoria_max_current != euphoria_max){
			update_euphoria();
		}
	//UPDATE TIME
		update_time();
		time_current--;
    //PRINT(0,0,"%i", stamina_current);
    //PRINT(0,1,"EUPHORIA MIN %i", euphoria_min);
    //PRINT(0,2,"EUPHORIA MAX %i", euphoria_max);
    //PRINT(0,3,"COS %d", cos);
    /*
    if(sin > 99 || sin < -99){PRINT(0,3,"TURN %d", sin);}
    else if(sin > 9 || sin < -9){PRINT(0,3,"TURN 0%d", sin);}
    else if(sin > 0){PRINT(0,3,"TURN 00%d", sin);}
    else if(sin < 0){PRINT(0,3,"TURN %d", sin);}
    */
}
