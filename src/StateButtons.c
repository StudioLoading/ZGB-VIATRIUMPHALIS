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


IMPORT_MAP(buttonmap);
IMPORT_TILES(font);

void START(){
    InitScroll(BANK(buttonmap), &buttonmap, 0, 0);
	SHOW_BKG;
	INIT_FONT(font, PRINT_BKG);
    PRINT(0, 0, "DISCOVER BUTTON MAP");
    PRINT(4, 2, "UNLOCK CHARIOT");
    PRINT(4, 5, "TURN CLOCKWISE");
    PRINT(4, 6, "TURN COUNTER, ");
    PRINT(4, 7, "     CLOCKWISE");
    PRINT(4, 9, "WHIP GIVES A  ");
    PRINT(4, 10, "VELOCITY");
    PRINT(4, 11, "IMPULSE");
    PRINT(4, 13, "USE THE");
    PRINT(4, 14, "ATTACK");
    PRINT(4, 15, "WEAPON");
    SetWindowY(144);
}

void UPDATE(){
    if(KEY_TICKED(J_START)){
        SetState(StateTutorialList);//TODO
    }
}