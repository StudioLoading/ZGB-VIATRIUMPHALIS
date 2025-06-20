#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"

extern UINT8 mission_killed;

const UINT8 a_priest_down[] = {1, 1};
const UINT8 a_priest_blink[] = {2, 0,1};

void START() {
    SetSpriteAnim(THIS, a_priest_down, 8u);
    THIS->lim_x = 2000;
    THIS->lim_y = 2000;
}

void UPDATE() {
    struct SoldierData* romansoldier_data = (struct SoldierData*) THIS->custom_data;
    switch(romansoldier_data->configured){
        case 0:
            return;
        break;
        case 1://horizontal
            SetSpriteAnim(THIS, a_priest_down, 8);
            romansoldier_data->vx = 1;
            romansoldier_data->configured = 3;
            return;
        break;
        case 4://activate dieing
            romansoldier_data->vx = 40;//usato come countdown di morte
            romansoldier_data->configured = 5;
            mission_killed++;
            SetSpriteAnim(THIS, a_priest_blink, 24u);
            return;
        break;
        case 5://dieing
            romansoldier_data->vx--;
            if(romansoldier_data->vx <= 0){
                if(romansoldier_data->reward != NOITEM){
                    item_spawn(romansoldier_data->reward, THIS->x + 2u, THIS->y);
                }
                SpriteManagerRemoveSprite(THIS);
            }
            return;
        break;
    }
}

void DESTROY() {
}