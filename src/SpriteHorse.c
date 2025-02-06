#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "CircleMath.h"
#include "custom_datas.h"

#define STAMINA_MAX 960
#define EUPHORIA_MIN 400
#define EUPHORIA_MAX 660
#define ONFIRE_COUNTDOWN_MAX 160
#define WHIP_POWER 3
#define HUD_TURN_COOLDOWN_MAX 20

const UINT8 a_horse_h[] = {8, 0,1,2,3,4,5,6,7};
const UINT8 a_horse_hit[] = {15, 0,1,0,2,0,3,0,4,0,5,0,6,0,7,0};
const UINT8 a_horse_h_idle[] = {1, 6};
//const UINT8 a_horse_h[] = {5, 0,1,2,3,4};

INT8 velocity_counter = 2; //praticamente il frm_skip_max
INT8 velocity = 1;
INT8 vy = 0;
INT8 vx = 0;
INT8 frm_skip = 0;
INT8 whip_power_over_stamina = WHIP_POWER;
INT8 whip_counter = 0;
INT8 whip_counter_max = 36;
UINT16 euphoria_min = EUPHORIA_MIN;
UINT16 euphoria_max = EUPHORIA_MAX;
INT16 stamina_current = 0;
INT8 stamina_verso = 0;
INT8 no_whip_counter = 0;
INT8 no_whip_over_stamina = -8;
INT8 no_whip_counter_max = 10;
UINT8 turn = 0;
INT8 sin = 0;
INT8 cos = 0;
INT8 turn_samepressure_counter = 0;
UINT8 past_coll_tile = 0u;
TURNING_VERSE turn_verse = NONE;
UINT8 orme_spawned = 0u;
INT16 onfire_countdown = -1;//-1 normale, 0 è onfire su acqua, >0 onfire
Sprite* s_flame = 0;
INT8 onwater_countdown = -1;

extern UINT8 J_WHIP;
extern INT8 hud_turn_cooldown;
extern ITEM_TYPE weapon_atk;
extern ITEM_TYPE weapon_def;
extern UINT8 track_ended;

extern void update_hp(INT8 variation) BANKED;
extern void use_weapon(INT8 is_defence) BANKED;
extern void pickup(Sprite* s_arg_item) BANKED;


/* velocity_counter in realtà è la velocità assoluta */

void START() {
    SetSpriteAnim(THIS, a_horse_h, 16u);
    frm_skip = velocity_counter;
    THIS->lim_x = 1000;
    THIS->lim_y = 500;
    onfire_countdown = -1;
    turn_samepressure_counter = 0;
    turn = 0;
}

void UPDATE() {
    //IF TRACK ENDED, GO ON UNTILL THE END OF THE SCREEN
        if(track_ended == 1u){
            THIS->x += vx;
            THIS->y += vy;
            return;
        }
    //ON WATER TO ZERO
        if(onwater_countdown > 0){
            onwater_countdown--;
        }
    //WHIP
        if(whip_counter <= 0){
            if(KEY_TICKED(J_WHIP)){
                stamina_verso = 1;
                whip_counter = whip_counter_max;
                no_whip_counter = no_whip_counter_max;
            }else{
                stamina_verso = -1;
            }
        }else{
            whip_counter--;
        }
        if(whip_counter > 0){
            stamina_current += (whip_power_over_stamina * stamina_verso);
        }else{
            if(no_whip_counter > 0){
                no_whip_counter--;
                if(no_whip_counter == 0){
                    stamina_current += no_whip_over_stamina;
                    no_whip_counter = no_whip_counter_max;
                }
            }
        }    
    //LIMIT STAMINA
        if(stamina_current < 0){
            stamina_current = 0;
        }
        if(stamina_current > STAMINA_MAX){
            stamina_current = STAMINA_MAX;
        }
    //VELOCITY COUNTER FRAMESKIP
        INT16 delta_stamina_euphoria = 0;
        if(stamina_current > euphoria_max){
            delta_stamina_euphoria = stamina_current - euphoria_max;
        }else if(stamina_current < euphoria_min){
            delta_stamina_euphoria = euphoria_min - stamina_current;
        }
        if(delta_stamina_euphoria > 32){
            velocity_counter = delta_stamina_euphoria >> 4;
        }else{
            velocity_counter = 2;
        }        
    //FIRE EFFECTS
        if(onfire_countdown > 0){//sta impazzendo
            onfire_countdown--;
            switch(onfire_countdown){
                case 50: case 100: case 150:
                case 200: case 250: case 300: case 350:
                    update_hp(-1);
                break;
            }
            velocity_counter = 1;//cioè vai a cannone
            stamina_current = EUPHORIA_MAX+1;//fissa la stamina a euphoria_max
            s_flame->x = THIS->x +2;
            s_flame->y = THIS->y-7;
            if(weapon_def == CAPE){
                use_weapon(1);
                SpriteManagerRemoveSprite(s_flame);
                onfire_countdown = 2;
            }            
        }else{
            if(euphoria_min != EUPHORIA_MIN){
                euphoria_min = EUPHORIA_MIN;
            }
            if(euphoria_max != EUPHORIA_MAX){
                euphoria_max = EUPHORIA_MAX;
            }
            if(whip_power_over_stamina != WHIP_POWER){//se entro qui, sto risistemando la whip ed è appena terminato l'onfire.
                whip_power_over_stamina = WHIP_POWER;
                stamina_current = (EUPHORIA_MIN - (EUPHORIA_MIN >> 3));
                SpriteManagerRemoveSprite(s_flame);
            }
        }

    //TURN SINGLE PRESSURE COUNTER
        if(KEY_RELEASED(J_RIGHT) || KEY_RELEASED(J_LEFT)){
            turn_samepressure_counter = 0;
            hud_turn_cooldown = HUD_TURN_COOLDOWN_MAX;
        }
    //TURN
        if(KEY_PRESSED(J_RIGHT)){
            turn_verse = CLOCK;
            turn--;
            turn_samepressure_counter++;
            if(turn_samepressure_counter >= 40 && ((sin > 30 && sin < 78) || (sin < -30 && sin > -78))){
                turn_samepressure_counter = 40;
                turn-=2;
            }
        }else if(KEY_PRESSED(J_LEFT)){
            turn_verse = COUNTERCLOCK;
            turn++;
            turn_samepressure_counter++;
            if(turn_samepressure_counter > 40){
                turn_samepressure_counter = 40;
                turn+=2;
            }
        }else{
            turn_verse = NONE; 
        }
        if(KEY_TICKED(J_UP)){
            turn = 64;
            turn_samepressure_counter = 0;
        }
        if(KEY_TICKED(J_DOWN)){
            turn = 192;
            turn_samepressure_counter = 0;
        }
        sin = sine_wave[turn];
        UINT8 cos_idx = turn+64;
        cos = sine_wave[cos_idx];

    //ACTUAL MOVEMENT & COLLISION & OVER  
        frm_skip--;
        if(frm_skip == 0){
            frm_skip = velocity_counter;
            //VX col coseno
                //cos max = tutto su asse x
                //90 gradi sono 64 posizioni dell'array
                //90 gradi sono 128 valori nell'array
                //33 gradi sono 21 posizioni dell'array
                //33 gradi sono 42 valori nell'array
                if(cos >= 0 && cos <= 30){//tratto come se stesse andando verticale
                    vx = 0;
                }else if(cos > 30 && cos < 54){// tratto come se stesse andando a 66 gradi
                    vx = 1;
                }else if(cos > 54 && cos < 78){// tratto come se stesse andando a 33 gradi
                    vx = 2;
                }else if(cos > 78){ // tratto come se stesse andando orizzontale destra
                    vx = 3;
                }else if(cos < 0 && cos > -30){//tratto come se stesse andando verticale
                    vx = 0;
                }else if(cos < -30 && cos > -54){// tratto come se stesse andando a 66 gradi sinistra
                    vx = -1;
                }else if(cos < -54 && cos > -78){// tratto come se stesse andando a 33 gradi sinistra
                    vx = -2;
                }else if(cos < -78){ // tratto come se stesse andando orizzontale sinistra
                    vx = -3;
                }
            //VY col seno
                if(sin >= 0 && sin <= 30){//tratto come se stesse andando orizzontale
                    vy = 0;
                }else if(sin > 30 && sin < 54){// tratto come se stesse andando a 33 gradi
                    vy = -1;
                }else if(sin > 54 && sin < 78){// tratto come se stesse andando a 66 gradi
                    vy = -1;
                }else if(sin > 78){ // tratto come se stesse andando verticale alto
                    vy = -2;
                }else if(sin < 0 && sin > -30){//tratto come se stesse andando orizzontale
                    vy = 0;
                }else if(sin < -30 && sin > -54){// tratto come se stesse andando a -33 gradi 
                    vy = 1;
                }else if(sin < -54 && sin > -78){// tratto come se stesse andando a -66 gradi 
                    vy = 1;
                }else if(sin < -78){ // tratto come se stesse andando verticale basso
                    vy = 2;
                }

            INT8 horse_coll = TranslateSprite(THIS, vx << delta_time, vy << delta_time);
            //COLLISIONI TILE
            if(horse_coll){//collido con tile ambiente di collisione
                if(horse_coll == 118 || horse_coll == 119 || horse_coll == 121){//FINE TRACCIA!!
                    track_ended = 1u;
                }else{
                    past_coll_tile = horse_coll;
                    INT8 vxbounce = vx * (-1); 
                    INT8 vybounce = vy * (-1);
                    if(vx < 2){
                        TranslateSprite(THIS, vxbounce << delta_time, 0);
                    }else{
                        TranslateSprite(THIS, 0, vybounce << delta_time);
                    }
                }
            }else{//non collido, cerco cosa sto calpestando
                UINT8 tile_over = GetScrollTile((THIS->x + 4) >> 3, (THIS->y+4) >> 3);
                if(vx < 0){
                    tile_over = GetScrollTile((THIS->x + 4) >> 3, (THIS->y+4) >> 3);
                }
                switch(tile_over){
                    case 3: //ghiaia: incrementa il frameskip
                    //case 2: case 4: case 5: case 6: 
                        if(onfire_countdown == -1){//non sta impazzendo
                            frm_skip+=4;
                        }
                        if(THIS->anim_frame == 1 || THIS->anim_frame == 5){
                            if(orme_spawned == 0){
                                UINT16 orma_posy = THIS->y-9;
                                orme_spawned = 1;
                                if(vx > 0){
                                    SpriteManagerAdd(SpriteStep, THIS->x - 2, orma_posy);
                                    SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
                                }else if(vx < 0){
                                    SpriteManagerAdd(SpriteStep, THIS->x, orma_posy);
                                    SpriteManagerAdd(SpriteStep, THIS->x + 8, orma_posy);
                                }
                            }
                        }else{orme_spawned = 0;}
                    break;
                    case 8: case 9: case 10:
                    case 11: case 12: case 13: //acqua: simula pantano limitando stamina
                        onwater_countdown = 80;
                        if(onfire_countdown > 0){//sono onfire!
                            onfire_countdown = 0;
                        }else if(onfire_countdown == -1){
                            if(stamina_current > (euphoria_min >> 1)){
                                stamina_current = (euphoria_min >> 1);
                            }
                        }                        
                        if(THIS->anim_frame == 0 || THIS->anim_frame == 2 || THIS->anim_frame == 4){
                            if(orme_spawned == 0){
                                orme_spawned = 1;
                                UINT16 orma0_posx = THIS->x - 2;
                                UINT16 orma_posy = THIS->y-9;
                                UINT16 orma1_posx = THIS->x + 8;
                                if(vx <= 0){
                                    orma0_posx = THIS->x;
                                }
                                Sprite* s_orma0 = SpriteManagerAdd(SpriteStep, orma0_posx, orma_posy);
                                struct ItemData* orma0_data = (struct ItemData*)s_orma0->custom_data;
                                orma0_data->configured = 1;
                                Sprite* s_orma1 = SpriteManagerAdd(SpriteStep, orma1_posx, orma_posy);
                                struct ItemData* orma1_data = (struct ItemData*) s_orma1->custom_data;
                                orma1_data->configured = 1;
                            }
                        }else{orme_spawned = 0;}
                    break;
                    default:
                        if(onfire_countdown == 0){//se ho spento il fuoco con l'acqua rimettimi il countdown negativo
                            onfire_countdown = -1;
                        }
                    break;
                }
            }
            //SPRITE ANIMATION SPEED animation speed
                if(stamina_current < 60){
                    SetSpriteAnim(THIS, a_horse_h_idle,4u);
                }else{
                    SetSpriteAnim(THIS, a_horse_h,4u);
                }
                THIS->anim_speed = stamina_current >> 5;
        }

    //SPRITE MIRROR
        if(vx > 0){
            THIS->mirror = NO_MIRROR;
        }else if (vx < 0){
            THIS->mirror = V_MIRROR;
        }
    
    //SPRITE COLLISION
        UINT8 scroll_o_tile;
        Sprite* iospr;
        SPRITEMANAGER_ITERATE(scroll_o_tile, iospr) {
            if(CheckCollision(THIS, iospr)) {
                switch(iospr->type){
                    case SpriteFlame:
                        struct FlameData* fire_data = (struct FlameData*) iospr->custom_data;
                        if(fire_data->dropped == -1){
                            if(onfire_countdown == -1){//if not already, go onfire!
                                if(weapon_def == CAPE){
                                    use_weapon(1);
                                    SpriteManagerRemoveSprite(iospr);
                                }else{
                                    onfire_countdown = ONFIRE_COUNTDOWN_MAX;
                                    stamina_current = euphoria_min >> 2;
                                    whip_power_over_stamina = 1;
                                    s_flame = iospr;
                                }
                            }
                        }
                    break;                    
                    case SpriteItemheart:{
                        struct ItemData* item_data = (struct ItemData*) iospr->custom_data;
                        if(item_data->configured == 2){
                            pickup(iospr);
                        }
                    }break;
                }
            }
        }
}

void DESTROY() {
}