#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Palette.h"
#include "Scroll.h"
#include "Sprite.h"
#include "SpriteManager.h"

#include "custom_datas.h"

const UINT8 a_configwheel_blink[] = {2, 0,1};
const UINT8 a_configwheel[] = {1,1};

void item_configwheel_anim_blink(Sprite* s_item_arg) BANKED;
void item_configwheel_anim(Sprite* s_item_arg) BANKED;

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

void item_configwheel_anim_blink(Sprite* s_item_arg) BANKED{
    SetSpriteAnim(s_item_arg, a_configwheel_blink, 32);
}

void item_configwheel_anim(Sprite* s_item_arg) BANKED{
    SetSpriteAnim(s_item_arg, a_configwheel, 32);
}

void DESTROY() {
    SetSpriteAnim(THIS, a_configwheel, 32);
}