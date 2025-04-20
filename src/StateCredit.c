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
IMPORT_MAP(maptitlescreen);
IMPORT_MAP(maintitlemap);
IMPORT_TILES(font);

INT16 credit_wait = 0;
INT8 credit_step = 0;
INT8 pressstart_counter = 0;
UINT8 pressstart_show = 0;
UINT8 flag_border_set = 0u;


void START(){
    if(flag_border_set == 0u){
        flag_border_set = 1u;
        LOAD_SGB_BORDER(border);
    }
    credit_wait = CREDIT_WAIT_MAX;
    credit_step++;
    switch(credit_step){
        case 1:
            InitScroll(BANK(mapcredit0), &mapcredit0, 0, 0);
        break;
        case 2:
            InitScroll(BANK(maintitlemap), &maintitlemap, 0, 0);
            scroll_target = SpriteManagerAdd(SpriteCamera, 80u, 72u);
        break;
        case 3:
            InitScroll(BANK(maptitlescreen), &maptitlescreen, 0, 0);
        break;
    }
	SHOW_BKG;
	INIT_FONT(font, PRINT_BKG);
}

void UPDATE(){
    if(credit_step != 2){
        credit_wait--;
    }
    if(credit_step < 3 && (credit_wait <= 0 || KEY_TICKED(J_START))){
        SetState(StateCredit);
    }else if(credit_step == 3 && KEY_TICKED(J_START)){
        SetState(StateButtons);
    }
    //ANIMATIONS & CAMERA MOVEMENTS
        switch(credit_step){
            case 2:
                if(scroll_target->x < (UINT16) 147u << 3){
                    scroll_target->x+=2;
                }else{
                    credit_wait = 0;
                }
            break;
            case 3:
                pressstart_counter++;
                if(pressstart_counter >= PRESSSTART_COUNTER_MAX){
                    pressstart_counter = 0;
                    if(pressstart_show == 0){
                        pressstart_show = 1;
                        PRINT(8, 8, "PRESS");
                        PRINT(8, 9, "START");
                    }else{
                        PRINT(8, 8, "     ");
                        PRINT(8, 9, "     ");
                        pressstart_show = 0;
                    }
                }
            break;
        }
}