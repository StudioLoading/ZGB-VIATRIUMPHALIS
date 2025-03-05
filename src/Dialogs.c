#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Scroll.h"
#include "SpriteManager.h"
#include "string.h"

#include "Dialogs.h"

unsigned char d0[15];
unsigned char d1[15];
unsigned char d2[15];
unsigned char d3[15];
unsigned char d4[15];
unsigned char d5[15];
unsigned char d6[15];
unsigned char d7[15];
unsigned char d8[15];
unsigned char d9[15];
unsigned char d10[15];
unsigned char d11[15];
unsigned char d12[15];
unsigned char EMPTY_STRING_14[15] = "              ";


void GetLocalizedDialog_EN(INSTRUCTION arg_instruction) BANKED{
    reset_dn();
    switch(arg_instruction){
        case DESCRIPTION_GOLDEN_WHIP:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU FOUND THE ", 15);
            memcpy(d3, "GOLDEN WHIP!  ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "YOUR STAMINA  ", 15);
            memcpy(d6, "IMPULSE ARE   ", 15);
            memcpy(d7, "INCREASED.    ", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION00_INTRO:
            memcpy(d0, "FIRSTLY WE HA,", 15);
            memcpy(d1, "VE SOME COMMI,", 15);
            memcpy(d2, "SSIONS BE DONE", 15);
            memcpy(d3, "IN THE NEARBY.", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "BRING A SECRET", 15);
            memcpy(d6, "MESSAGE TO THE", 15);
            memcpy(d7, "SENATE.       ", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, "FIND ONORIO!  ", 15);
            memcpy(d10, "HE WILL GIVE ", 15);
            memcpy(d11, "YOU PAPERS.  ", 15);
        break;
        case MISSION00_SECRET_MESSAGE:
            memcpy(d0, "FROM TODAY YOU", 15);
            memcpy(d1, "ARE DISMISSED ", 15);
            memcpy(d2, "IN DOING SERVI", 15);
            memcpy(d3, "CE FOR THE EM,", 15);
            memcpy(d4, "PIRE. THE MAN ", 15);
            memcpy(d5, "WHO'S GIVING  ", 15);
            memcpy(d6, "YOU THIS PAPER", 15);
            memcpy(d7, "IS THE NEW SEC", 15);
            memcpy(d8, "RET AGENT.    ", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, "SEE YOU IN THE", 15);
            memcpy(d11, "SENATE.       ", 15);
        break;
        case MISSION00_COMPLETED:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU COMPLETED ", 15);
            memcpy(d3, "YOUR FIRST    ", 15);
            memcpy(d4, "MISSION!      ", 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, "THERE IS NO   ", 15);
            memcpy(d7, "TIME TO REST. ", 15);
            memcpy(d8, "WAIT FOR MY   ", 15);
            memcpy(d9, "MAN TO GIVE   ", 15);
            memcpy(d10, "YOU ANOTHER  ", 15);
            memcpy(d11, "MISSION.     ", 15);
        break;
        case MISSION01_INTRO:
            memcpy(d1, "WE HAVE A SPY ", 15);
            memcpy(d2, "PLAYING AGAIN,", 15);
            memcpy(d3, "ST US! RUN OFF", 15);
            memcpy(d4, "TO A SAFE PLA,", 15);
            memcpy(d5, "CE.           ", 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, "DON'T GET CAU,", 15);
            memcpy(d8, "GHT BY THE GU,", 15);
            memcpy(d9, "ARDS!         ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION01_COMPLETED:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU COMPLETED ", 15);
            memcpy(d3, "YOUR SECOND   ", 15);
            memcpy(d4, "MISSION!      ", 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, "WAIT FOR THE  ", 15);
            memcpy(d7, "NIGHT TO COME ", 15);
            memcpy(d8, "THEN MOVE NOR,", 15);
            memcpy(d9, "TH. BEWARE THE", 15);
            memcpy(d10, "BANDITS.     ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION02_INTRO:
            memcpy(d1, "WE HAVE A SPY ", 15);
            memcpy(d2, "PLAYING AGAIN,", 15);
            memcpy(d3, "ST US! RUN OFF", 15);
            memcpy(d4, "TO A SAFE PLA,", 15);
            memcpy(d5, "CE.           ", 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, "DON'T GET CAU,", 15);
            memcpy(d8, "GHT BY THE GU,", 15);
            memcpy(d9, "ARDS!         ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION02_COMPLETED:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU COMPLETED ", 15);
            memcpy(d3, "YOUR SECOND   ", 15);
            memcpy(d4, "MISSION!      ", 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, "WAIT FOR THE  ", 15);
            memcpy(d7, "NIGHT TO COME ", 15);
            memcpy(d8, "THEN MOVE NOR,", 15);
            memcpy(d9, "TH. BEWARE THE", 15);
            memcpy(d10, "BANDITS.     ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case DEAD:
            memcpy(d0, "I WONDER IF I ", 15);
            memcpy(d1, "DID A GOOD    ", 15);
            memcpy(d2, "CHOICE IN CHO,", 15);
            memcpy(d3, "OSING YOU AS  ", 15);
            memcpy(d4, "THE NEW EMPIRE", 15);
            memcpy(d5, "SECRET AGENT. ", 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, EMPTY_STRING_14, 15);
            memcpy(d8, "YOU WOULD BET,", 15);
            memcpy(d9, "TER GO BACK   ", 15);
            memcpy(d10, "AND HEAL.    ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
    }

}

void reset_dn() BANKED{
    memcpy(d0, EMPTY_STRING_14, 15);
    memcpy(d1, EMPTY_STRING_14, 15);
    memcpy(d2, EMPTY_STRING_14, 15);
    memcpy(d3, EMPTY_STRING_14, 15);
    memcpy(d4, EMPTY_STRING_14, 15);
    memcpy(d5, EMPTY_STRING_14, 15);
    memcpy(d6, EMPTY_STRING_14, 15);
    memcpy(d7, EMPTY_STRING_14, 15);
    memcpy(d8, EMPTY_STRING_14, 15);
    memcpy(d9, EMPTY_STRING_14, 15);
    memcpy(d10, EMPTY_STRING_14, 15);
    memcpy(d11, EMPTY_STRING_14, 15);
    memcpy(d12, EMPTY_STRING_14, 15);
}