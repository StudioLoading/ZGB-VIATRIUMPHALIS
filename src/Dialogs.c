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