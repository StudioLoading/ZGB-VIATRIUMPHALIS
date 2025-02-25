#include "Banks/SetAutoBank.h"

#include "BankManager.h"
#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "SGB.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"

#define CREDIT_WAIT_MAX 240
#define PRESSSTART_COUNTER_MAX 16

IMPORT_MAP(border);
IMPORT_MAP(mapcredit0);
IMPORT_MAP(titlescreenmap);
IMPORT_TILES(font);

INT16 credit_wait = 0;
INT8 credit_step = 0;
INT8 pressstart_counter = 0;
UINT8 pressstart_show = 0;


void START(){
    LOAD_SGB_BORDER(border);
    credit_wait = CREDIT_WAIT_MAX;
    credit_step++;
    switch(credit_step){
        case 1:
            InitScroll(BANK(mapcredit0), &mapcredit0, 0, 0);
        break;
        case 2:
            InitScroll(BANK(titlescreenmap), &titlescreenmap, 0, 0);
        break;
    }
	SHOW_BKG;
	INIT_FONT(font, PRINT_BKG);
}

void UPDATE(){
    credit_wait--;
    if(credit_step < 2 && (credit_wait <= 0 || KEY_TICKED(J_START))){
        SetState(StateCredit);
    }else if(credit_step == 2 && KEY_TICKED(J_START)){
        SetState(StateButtons);
    }
    //PRESS START BLINK
        switch(credit_step){
            case 2:
                pressstart_counter++;
                if(pressstart_counter >= PRESSSTART_COUNTER_MAX){
                    pressstart_counter = 0;
                    if(pressstart_show == 0){
                        pressstart_show = 1;
                        PRINT(1, 9, "PRESS START");
                    }else{
                        PRINT(1, 9, "           ");
                        pressstart_show = 0;
                    }
                }
            break;
        }
}