#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "custom_datas.h"

IMPORT_TILES(worldmapt);
IMPORT_TILES(worldmapt00);
IMPORT_TILES(worldmapt01);
IMPORT_TILES(worldmapt02);
IMPORT_TILES(worldmapt03);
IMPORT_TILES(worldmapt04);

IMPORT_TILES(arearomet99);
IMPORT_TILES(arearomet00);
IMPORT_TILES(arearomet01);
IMPORT_TILES(arearomet02);

IMPORT_TILES(areaalpst99);
IMPORT_TILES(areaalpst00);
IMPORT_TILES(areaalpst01);
IMPORT_TILES(areaalpst02);
IMPORT_TILES(areaalpst03);

IMPORT_TILES(configmapt);
IMPORT_TILES(configmapt00elm);
IMPORT_TILES(configmapt00wheel);
IMPORT_TILES(configmapt00briglie);
IMPORT_TILES(configmapt00whip);

void set_banked_bkg_data(UINT8 first_tile, UINT8 nb_tiles, struct TilesInfo* t, UINT8 bank) NONBANKED {
    uint8_t save = _current_bank;
    SWITCH_ROM(bank);
    set_bkg_data(first_tile, nb_tiles, t->data+((16u) * first_tile));
	SWITCH_ROM(save);
}

void Anim_worldmap_0(AREA arg_current_area) BANKED{
    set_banked_bkg_data(0, 123u, &worldmapt, BANK(worldmapt));
}

void Anim_worldmap_1(AREA arg_current_area) BANKED{
    switch(arg_current_area){
        case AREA_ROME:
            set_banked_bkg_data(0, 123u, &worldmapt00, BANK(worldmapt00));
        break;
        case AREA_ALPS:
            set_banked_bkg_data(0, 123u, &worldmapt01, BANK(worldmapt01));
        break;
    }
}

void Anim_arearome_0() BANKED{
    set_banked_bkg_data(1, 73u, &arearomet99, BANK(arearomet99));
}
void Anim_arearome_1() BANKED{
    set_banked_bkg_data(1, 73u, &arearomet00, BANK(arearomet00));
}
void Anim_arearome_2() BANKED{
    set_banked_bkg_data(1, 73u, &arearomet01, BANK(arearomet01));
}
void Anim_arearome_3() BANKED{
    set_banked_bkg_data(1, 73u, &arearomet02, BANK(arearomet02));
}


void Anim_areaalps_0() BANKED{
    set_banked_bkg_data(1, 83u, &areaalpst99, BANK(areaalpst99));
}
void Anim_areaalps_1() BANKED{
    set_banked_bkg_data(1, 83u, &areaalpst00, BANK(areaalpst00));
}
void Anim_areaalps_2() BANKED{
    set_banked_bkg_data(1, 83u, &areaalpst01, BANK(areaalpst01));
}
void Anim_areaalps_3() BANKED{
    set_banked_bkg_data(1, 83u, &areaalpst02, BANK(areaalpst02));
}
void Anim_areaalps_4() BANKED{
    set_banked_bkg_data(1, 83u, &areaalpst03, BANK(areaalpst03));
}


void Anim_config_no() BANKED{
    set_banked_bkg_data(0, 167u, &configmapt, BANK(configmapt));
}
void Anim_config_elm() BANKED{
    set_banked_bkg_data(0, 167u, &configmapt00elm, BANK(configmapt00elm));
}
void Anim_config_wheel() BANKED{
    set_banked_bkg_data(0, 167u, &configmapt00wheel, BANK(configmapt00wheel));
}
void Anim_config_reins() BANKED{
    set_banked_bkg_data(0, 167u, &configmapt00briglie, BANK(configmapt00briglie));
}
void Anim_config_whip() BANKED{
    set_banked_bkg_data(0, 167u, &configmapt00whip, BANK(configmapt00whip));
}