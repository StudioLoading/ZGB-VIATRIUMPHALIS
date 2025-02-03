#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"

const UINT8 a_item_gladio_blink[] = {2, 0,1};
const UINT8 a_item_lance_blink[] = {2, 0,2};
const UINT8 a_item_flame_blink[] = {2, 0,3};
const UINT8 a_item_elmet_blink[] = {2, 0,4};
const UINT8 a_item_shield_blink[] = {2, 0,5};
const UINT8 a_item_cape_blink[] = {2, 0,6};
const UINT8 a_item_hp[] = {2, 0,7};
const UINT8 a_item_time[] = {2, 0,8};


const UINT8 a_item_gladio[] = {1,1};
const UINT8 a_item_lance[] = {1,2};
const UINT8 a_item_flame[] = {1,3};
const UINT8 a_item_elmet[] = {1,4};
const UINT8 a_item_shield[] = {1,5};
const UINT8 a_item_cape[] = {1,6};


extern Sprite* s_horse;
extern INT8 vx;
extern INT8 vy;
extern void consume_weapon_atk() BANKED;
extern void consume_weapon_def() BANKED;

void START() {
	struct ItemData* item_data = (struct ItemData*) THIS->custom_data;
    item_data->configured = 0;
    THIS->lim_x = 1000;
    THIS->lim_y = 1000;
}

void UPDATE() {
	struct ItemData* item_data = (struct ItemData*) THIS->custom_data;
    switch(item_data->configured){
        case 0: return; break;
        case 1://set animation
            switch(item_data->itemtype){
                case GLADIO:
                    SetSpriteAnim(THIS, a_item_gladio_blink, 24);
                break;
                case LANCE:
                    SetSpriteAnim(THIS, a_item_lance_blink, 24);
                break;
                case FLAME:
                    SetSpriteAnim(THIS, a_item_flame_blink, 24);
                break;
                case ELMET:
                    SetSpriteAnim(THIS, a_item_elmet_blink, 24);
                break;
                case SHIELD:
                    SetSpriteAnim(THIS, a_item_shield_blink, 24);
                break;
                case CAPE:
                    SetSpriteAnim(THIS, a_item_cape_blink, 24);
                break;
                case HP:
                    SetSpriteAnim(THIS, a_item_hp, 64);
                break;
                case TIME:
                    SetSpriteAnim(THIS, a_item_time, 64);
                break;
            }
            item_data->configured = 2;
        break;
        case 3://using the weapon!
            switch(item_data->itemtype){
                case GLADIO:
                    SetSpriteAnim(THIS, a_item_gladio, 32);
                    item_data->hp = 4;
                    if(vx > 0){ item_data->vx = 1;}
                    else if(vx < 0) {item_data->vx = -1;}
                    item_data->vy = 0;
                break;
                case LANCE:
                    SetSpriteAnim(THIS, a_item_lance, 32);
                    item_data->vx = vx;
                    item_data->vy = vy;
                break;
                case FLAME:
                    SetSpriteAnim(THIS, a_item_flame, 32);
                    item_data->hp = 80;
                break;
                case ELMET:
                    SetSpriteAnim(THIS, a_item_elmet, 32);
                    item_data->hp = 80;
                break;
                case SHIELD:
                    SetSpriteAnim(THIS, a_item_shield, 32);
                    item_data->hp = 80;
                break;
                case CAPE:
                    SetSpriteAnim(THIS, a_item_cape, 32);
                    item_data->hp = 80;
                break;
            }
            item_data->configured = 4;
        break;
        case 4://weapon in use!
            switch(item_data->itemtype){
                case SHIELD:
                case ELMET:
                case CAPE:
                    THIS->x = s_horse->x;
                    THIS->y = s_horse->y - 24;
                    item_data->hp--;
                    if(item_data->hp <= 0){
                        consume_weapon_def();
                        SpriteManagerRemoveSprite(THIS);
                    }
                break;
                case LANCE:
                    TranslateSprite(THIS, item_data->vx << delta_time, item_data->vy << delta_time);
                break;
                case GLADIO:
                    TranslateSprite(THIS, item_data->vx << delta_time, item_data->vy << delta_time);
                    item_data->hp--;
                    if(item_data->hp <= 0){
                        consume_weapon_atk();
                    }
                break;
            }
        break;
    }
}

void DESTROY() {
}