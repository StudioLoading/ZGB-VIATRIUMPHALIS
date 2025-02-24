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

#include "custom_datas.h"
#include "UtilAnim.h"

#define BLINK_ABSENT_MAX 1

typedef enum{
    NO_ELM,
    ELM,
    NO_WHEEL,
    WHEEL,
    NO_WHIP,
    WHIP,
    NO_BRIGLIE,
    BRIGLIE
}FOCUS;


IMPORT_MAP(configmap);
IMPORT_TILES(font);

UINT8 configwhip_blink = 0u;

INT8 blink_absent = 0;
FOCUS current_focus = NO_ELM;

void START(){
    InitScroll(BANK(configmap), &configmap, 0, 0);
	SHOW_BKG;
	INIT_FONT(font, PRINT_BKG);
    PRINT(16, 17, "BACK");
    SetWindowY(144);
    blink_absent = 0;
}

void UPDATE(){
    if(KEY_TICKED(J_RIGHT)){
        Anim_config_no();
        if(current_focus == BRIGLIE || current_focus == NO_BRIGLIE){current_focus = NO_ELM;}
        else{current_focus+=2;}
    }
    if(KEY_TICKED(J_LEFT)){
        Anim_config_no();
        if(current_focus == ELM || current_focus == NO_ELM){current_focus = NO_BRIGLIE;}
        else{current_focus-=2;}
    }
    if(KEY_TICKED(J_SELECT)){
        SetState(StateWorldmap);
    }
    switch(current_focus){
        case ELM:
        case NO_ELM:
            PRINT(1, 0, "ELM  ");
        break;
        case WHEEL:
        case NO_WHEEL:
            PRINT(1, 0, "WHEEL");
        break;
        case WHIP:
        case NO_WHIP:
            PRINT(1, 0, "WHIP ");
        break;
        case BRIGLIE:
        case NO_BRIGLIE:
            PRINT(1, 0, "REINS");
        break;
    }
    blink_absent++;
    if(blink_absent >= BLINK_ABSENT_MAX){
        blink_absent = 0;
        switch(current_focus){
            case NO_ELM:
                Anim_config_elm();
                current_focus = ELM;
            break;
            case ELM:
                Anim_config_no();
                current_focus = NO_ELM;
            break;
            case NO_WHEEL:
                Anim_config_wheel();
                current_focus = WHEEL;
            break;
            case WHEEL:
                Anim_config_no();
                current_focus = NO_WHEEL;
            break;
            case WHIP:
                Anim_config_no();
                current_focus = NO_WHIP;
            break;
            case NO_WHIP: 
                Anim_config_whip();
                current_focus = WHIP;
            break;
            case NO_BRIGLIE:
                Anim_config_reins();
                current_focus = BRIGLIE;
                configwhip_blink = 0;
            break;
            case BRIGLIE:
                Anim_config_no();
                current_focus = NO_BRIGLIE;
                configwhip_blink = 0;
            break;
        }
    }
}