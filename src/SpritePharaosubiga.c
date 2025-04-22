#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"


const UINT8 a_pharaosubiga_up[] = {1, 1};
const UINT8 a_pharaosubiga_down[] = {1, 2};

extern Sprite* s_gator;
extern Sprite* s_pharaobiga;

void START() {
    SetSpriteAnim(THIS, a_pharaosubiga_down, 8u);
}

void UPDATE() {
}

void DESTROY() {
}