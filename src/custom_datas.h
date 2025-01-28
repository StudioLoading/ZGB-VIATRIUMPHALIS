#ifndef CUSTOMDATAS_FILE
#define CUSTOMDATAS_FILE

typedef enum{
	EEE,
    ENE,
    NNE,
    NNN,
    NNW,
    WNW,
    WWW,
    WSW,
    SSW,
    SSS,
    SSE,
    ESE
}HORSE_DIRECTION;

typedef enum{
    NONE,
    CLOCK,
    COUNTERCLOCK
}TURNING_VERSE;

typedef enum{
    NOITEM,
    FIRE,
    FOG,
    GLADIO,
    LANCE,
    FLAME,
    ELMET,
    SHIELD,
    CAPE,
    HP,
    TIME
}ITEM_TYPE;

struct ItemData{
    INT8 vx;
    INT8 vy;
    INT8 hp;
    INT8 configured;//0 ignore, 1 set anim, 2 set anim for weapon in use, 3 to be picked up, 4 weapon in use
    ITEM_TYPE itemtype;
};

/*
struct LoadedEnemy{
	ENEMY_TYPE item_type;
	UINT16 posx;
	UINT16 posy;
	struct EnemyInfo einfo;
};
*/

#endif