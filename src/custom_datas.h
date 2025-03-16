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
    TIME,
    GOLDEN_WHIP,
    GOLDEN_WHEEL,
    GOLDEN_ELM,
    GOLDEN_REINS,
    ENEMY_LANCE
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
    DESCRIPTION_GOLDEN_WHIP,
    DESCRIPTION_GOLDEN_WHEEL,
    MISSION00_INTRO,
    MISSION00_SECRET_MESSAGE,
    MISSION00_COMPLETED,
    MISSION01_INTRO,
    MISSION01_COMPLETED,
    MISSION02_INTRO,
    MISSION02_COMPLETED,
    MISSION03_INTRO,  
    MISSION03_COMPLETED,
    MISSION04_INTRO,
    MISSION04_COMPLETED,
    MISSION05_INTRO,
    MISSION05_SAVED_GENERAL,
    MISSION05_COMPLETED,
    DEAD
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
    MISSIONROME03,
    MISSIONALPS04,
    MISSIONALPS05,
    MISSIONALPS06,
    MISSIONALPS07,
    MISSIONSEA08,
    MISSIONSEA09,
    MISSIONSEA10,
    MISSIONSEA12,
    MISSIONGREECE13,
    MISSIONGREECE14,
    MISSIONGREECE15,
    MISSIONGREECE16,
}MISSION;

typedef enum{
    NORMAL,
    GOLDEN
}ITEM_CONFIGURATION;

struct CONFIGURATION{
    ITEM_CONFIGURATION elm;
    ITEM_CONFIGURATION wheel;
    ITEM_CONFIGURATION whip;
    ITEM_CONFIGURATION reins;
};

struct SoldierData{
    INT8 vx;
    INT8 vy;
    UINT8 frmskip;
    UINT8 frmskip_max;
    INT8 configured;//0:unconfigured; 1:horizontal; 2:vertical; 3:walking, 4:dieing
    ITEM_TYPE reward;
};

struct KillerData{
    UINT8 configured;//99: wait, 0: hidden, 1:blink, 2: visible, 3: blink&disappear
    INT8 timeout;
    UINT8 time_hidden;
    UINT8 time_visible;
    UINT8 time_blink;
    UINT8 time_attack;
    UINT8 instant_attack;
};

#endif