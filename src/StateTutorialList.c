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


IMPORT_MAP(maptutoriallist);
IMPORT_TILES(font);

extern TUTORIAL_STAGE tutorial_state;

void START(){
    InitScroll(BANK(maptutoriallist), &maptutoriallist, 0, 0);
	SHOW_BKG;
	INIT_FONT(font, PRINT_BKG);
    PRINT(2,1,"GO STRAIGHT");
    PRINT(2,2,"GO STRAIGHT ON TIME");
    PRINT(2,3,"TURN RIGHT");
    PRINT(2,4,"TURN LEFT");
    PRINT(2,5,"TURN RIGHT LEFT");
    PRINT(2,6,"ZIG ZAG");
    PRINT(2,7,"ZIG ZAG ON TIME");
    PRINT(2,8,"DODGE WATER");
    PRINT(2,9,"USE GLADIO");
    PRINT(2,10,"USE GLADIO LEFT");
    PRINT(2,11,"USE LANCE");
    PRINT(2,12,"USE CAPE");
    PRINT(2,13,"FIRE UP THE STRAW");
    UINT8 idx_check = 0;
    while(idx_check < tutorial_state){
        set_bkg_tile_xy(1,1+idx_check, 58);
        idx_check++;
    }
    SetWindowY(144);
}

void UPDATE(){
    if(KEY_PRESSED(J_A) ||KEY_PRESSED(J_B) || KEY_PRESSED(J_START) || KEY_PRESSED(J_SELECT)){
        SetState(StateTutorialGame);
    }
}