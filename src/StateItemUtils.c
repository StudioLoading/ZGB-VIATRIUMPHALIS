#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"

extern Sprite* s_horse;
extern INT8 vx;
extern INT8 vy;

void item_common_start(Sprite* s_item_arg) BANKED;
void item_common_update(Sprite* s_item_arg) BANKED;
void item_common_spritescollision(Sprite* s_item_arg) BANKED;

extern void hit_fantoccio(Sprite* s_fantoccio_arg) BANKED;
extern void consume_weapon_atk() BANKED;
extern void consume_weapon_def() BANKED;

extern void item_gladio_anim(Sprite* s_item_arg) BANKED;
extern void item_gladio_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_lance_anim(Sprite* s_item_arg) BANKED;
extern void item_lance_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_fire_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_fire_anim(Sprite* s_item_arg) BANKED;
extern void item_elmet_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_elmet_anim(Sprite* s_item_arg) BANKED;
extern void item_shield_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_shield_anim(Sprite* s_item_arg) BANKED;
extern void item_cape_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_cape_anim(Sprite* s_item_arg) BANKED;
extern void item_heart_anim(Sprite* s_item_arg) BANKED;
extern void item_glass_anim(Sprite* s_item_arg) BANKED;
extern void item_configwhip_anim_blink(Sprite* s_item_arg) BANKED;
extern void item_configwhip_anim(Sprite* s_item_arg) BANKED;

void item_common_start(Sprite* s_item_arg) BANKED{
	struct ItemData* item_data = (struct ItemData*) s_item_arg->custom_data;
    item_data->configured = 0;
    s_item_arg->lim_x = 1000;
    s_item_arg->lim_y = 1000;
}

void item_common_update(Sprite* s_item_arg) BANKED{
	struct ItemData* item_data = (struct ItemData*) s_item_arg->custom_data;
    switch(item_data->configured){
        case 0: return; break;
        case 1://set animation
            switch(item_data->itemtype){
                case GLADIO:
                    item_gladio_anim_blink(s_item_arg);
                break;
                case LANCE:
                    item_lance_anim_blink(s_item_arg);
                break;
                case FIRE:
                    item_fire_anim_blink(s_item_arg);
                break;
                case ELMET:
                    item_elmet_anim_blink(s_item_arg);
                break;
                case SHIELD:
                    item_shield_anim_blink(s_item_arg);
                break;
                case CAPE:
                    item_cape_anim_blink(s_item_arg);
                break;
                case HP:
                    item_heart_anim(s_item_arg);
                break;
                case TIME:
                    item_glass_anim(s_item_arg);
                break;
                case GOLDEN_WHIP:
                    item_configwhip_anim(s_item_arg);
                break;
            }
            item_data->configured = 2;
        break;
        case 3://using the weapon!
            switch(item_data->itemtype){
                case GLADIO:
                    item_gladio_anim(s_item_arg);
                    item_data->hp = 80;
                    if(vx > 0){ item_data->vx = 1;}
                    else if(vx < 0) {item_data->vx = -1;}
                    item_data->vy = 0;
                break;
                case LANCE:
                    item_lance_anim(s_item_arg);
                    item_data->vx = vx;
                    item_data->vy = vy;
                break;
                case ELMET:
                    item_elmet_anim_blink(s_item_arg);
                    item_data->hp = 80;
                break;
                case SHIELD:
                    item_shield_anim_blink(s_item_arg);
                    item_data->hp = 80;
                break;
                case CAPE:
                    item_cape_anim_blink(s_item_arg);
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
                    s_item_arg->x = s_horse->x;
                    s_item_arg->y = s_horse->y - 24;
                    item_data->hp--;
                    if(item_data->hp <= 0){
                        consume_weapon_def();
                        SpriteManagerRemoveSprite(s_item_arg);
                    }
                break;
                case LANCE:
                    TranslateSprite(s_item_arg, item_data->vx << delta_time, item_data->vy << delta_time);
                break;
                case GLADIO:{                    
                    UINT16 attack_x = s_horse->x;
                    UINT16 attack_y = s_horse->y + 8;
                    if(s_horse->mirror == V_MIRROR){
                        attack_y = s_horse->y - 24;
                        attack_x = s_horse->x;
                    }
                    s_item_arg->x = attack_x;
                    s_item_arg->y = attack_y;
                }break;
            }
        break;
        case 5://weapon start dieing
            switch(item_data->itemtype){
                case GLADIO:
                    item_gladio_anim_blink(s_item_arg);
                break;
                case LANCE:
                    item_lance_anim_blink(s_item_arg);
                break;
            }
            consume_weapon_atk();
            item_data->hp = 40;
            item_data->configured = 6;
        break;
        case 6://weapon dieing
            switch(item_data->itemtype){
                case GLADIO:
                case LANCE:
                    item_data->hp--;
                    if(item_data->hp <= 0){
                        SpriteManagerRemoveSprite(s_item_arg);
                    }
                break;
            }
        break;
    }
}

void item_common_spritescollision(Sprite* s_item_arg) BANKED{
    //SPRITE COLLISION
	struct ItemData* item_data = (struct ItemData*) s_item_arg->custom_data;
    UINT8 scroll_i_tile;
    Sprite* iispr;
    SPRITEMANAGER_ITERATE(scroll_i_tile, iispr) {
        if(CheckCollision(s_item_arg, iispr)) {
            switch(iispr->type){
                case SpriteFantoccio:
                    if(item_data->configured < 5){
                        hit_fantoccio(iispr);
                        s_item_arg->x = iispr->x;
                        item_data->configured = 5;
                    }
                break;
            }
        }
    }
}