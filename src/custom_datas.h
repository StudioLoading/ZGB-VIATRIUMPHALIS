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
    TUTORIAL_STAGE_0_STRAIGHT,
    TUTORIAL_STAGE_1_STRAIGHTTIME,
    TUTORIAL_STAGE_2_TURNRIGHT,
    TUTORIAL_STAGE_3_TURNLEFT,
    TUTORIAL_STAGE_4_TURNRIGHTLEFT,
    TUTORIAL_STAGE_5_ZIGZAG,
    TUTORIAL_STAGE_6_ZIGZAG_ONTIME,
    TUTORIAL_STAGE_7_DODGEWATER,
    TUTORIAL_STAGE_8_GLADIO,
    TUTORIAL_STAGE_9_GLADIOLEFT,
    TUTORIAL_STAGE_10_LANCE,
    TUTORIAL_STAGE_11_CAPE,
    TUTORIAL_STAGE_12_STRAW,
    TUTORIAL_PASSED
}TUTORIAL_STAGE;

typedef enum{
    NONE,
    CLOCK,
    COUNTERCLOCK
}TURNING_VERSE;

typedef enum{
    NOITEM,
    FLAME,
    FOG,
    GLADIO,
    LANCE,
    FIRE,
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

struct FlameData{
    INT8 vx;
    INT8 hp;
    INT8 dropped;//-1 donoth, 0 flaming, 1 cooldown, 2 just dropped
};

struct FantoccioData{
    INT8 fantoccio_counter;//se maggiore di 0 sta girando
};

typedef enum{
    LOOKING_FOR_SENATOR,
    SENATOR_COLLIDED,
    EXIT
}MISSION_STEP;

typedef enum{
    MISSION00_INTRO,
    MISSION00_SECRET_MESSAGE
}INSTRUCTION;

typedef enum{
    AREA_ROME,
    AREA_ALPS,
    AREA_SEA,
    AREA_GREECE,
    AREA_EGYPT
}AREA;

typedef enum{
    MISSIONROME00,
    MISSIONROME01,
    MISSIONROME02,
    MISSIONALPS00,
    MISSIONALPS01,
    MISSIONALPS02,
    MISSIONSEA00,
    MISSIONSEA01,
    MISSIONSEA02,
    MISSIONGREECE00,
    MISSIONGREECE01,
    MISSIONGREECE02,
}MISSION;

#endif