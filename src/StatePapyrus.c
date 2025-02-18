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
#include "Dialogs.h"

IMPORT_MAP(papyrusmap);
IMPORT_TILES(fontp);

UINT8 prev_state = StateMission00rome;

extern unsigned char d0[];
extern unsigned char d1[];
extern unsigned char d2[];
extern unsigned char d3[];
extern unsigned char d4[];
extern unsigned char d5[];
extern unsigned char d6[];
extern unsigned char d7[];
extern unsigned char d8[];
extern unsigned char d9[];
extern unsigned char d10[];
extern unsigned char d11[];
extern unsigned char d12[];

void START(){    
    InitScroll(BANK(papyrusmap), &papyrusmap, 0, 0);
    SetWindowY(144);
	SHOW_BKG;
    INIT_FONT(fontp, PRINT_BKG);
    PRINT(3,2, d0);
    PRINT(3,3, d1);
    PRINT(3,4, d2);
    PRINT(3,5, d3);
    PRINT(3,6, d4);
    PRINT(3,7, d5);
    PRINT(3,8, d6);
    PRINT(3,9, d7);
    PRINT(3,10, d8);
    PRINT(3,11, d9);
    PRINT(3,12, d10);
    PRINT(3,13, d11);
}

void UPDATE(){
    if(KEY_RELEASED(J_START)){
        SetState(prev_state);
    }
}