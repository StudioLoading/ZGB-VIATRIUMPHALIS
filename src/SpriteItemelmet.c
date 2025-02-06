#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Keys.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"
#include "string.h"
#include "Print.h"

#include "custom_datas.h"

const UINT8 a_elmet_blink[] = {2, 0,1};
const UINT8 a_elmet[] = {1,1};

void item_elmet_anim_blink(Sprite* s_item_arg) BANKED;
void item_elmet_anim(Sprite* s_item_arg) BANKED;

extern void item_common_start(Sprite* s_item_arg) BANKED;
extern void item_common_update(Sprite* s_item_arg) BANKED;
extern void item_common_spritescollision(Sprite* s_item_arg) BANKED;

void START() {
    item_common_start(THIS);
}

void UPDATE() {
    item_common_update(THIS);
    item_common_spritescollision(THIS);
}

void item_elmet_anim_blink(Sprite* s_item_arg) BANKED{
    SetSpriteAnim(s_item_arg, a_elmet_blink, 80);
}

void item_elmet_anim(Sprite* s_item_arg) BANKED{
    SetSpriteAnim(s_item_arg, a_elmet, 32);
}

void DESTROY() {
}