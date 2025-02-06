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


extern Sprite* s_horse;

void START() {
}

void UPDATE() {
    if(s_horse){
        THIS->x = s_horse->x - 16;
        THIS->y = s_horse->y;
    }
}

void DESTROY() {
}