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
        case DESCRIPTION_GOLDEN_WHEEL:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU FOUND THE ", 15);
            memcpy(d3, "GOLDEN WHEELS!", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "NOW YOU CAN   ", 15);
            memcpy(d6, "MOVE FASTER   ", 15);
            memcpy(d7, "WHEN DRIVING  ", 15);
            memcpy(d8, "OUT OF THE    ", 15);
            memcpy(d9, "ROADS!        ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case DESCRIPTION_GOLDEN_REINS:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU FOUND THE ", 15);
            memcpy(d3, "GOLDEN REINS! ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "YOUR TURNING  ", 15);
            memcpy(d6, "SPEED IS INC, ", 15);
            memcpy(d7, "REASED.       ", 15);
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
            memcpy(d2, "I AM GLAD YOU ", 15);
            memcpy(d3, "SURVIVED THAT ", 15);
            memcpy(d4, "AMBUSH! YOU   ", 15);
            memcpy(d5, "ARE REALLY    ", 15);
            memcpy(d6, "BRAVE AND A   ", 15);
            memcpy(d7, "VERY GOOD DRI,", 15);
            memcpy(d8, "VER!          ", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, "REST FOR THE ", 15);
            memcpy(d11, "NIGHT.       ", 15);
        break;
        case MISSION03_INTRO:
            memcpy(d1, "GOOD MORNING. ", 15);
            memcpy(d2, "WE ARE IN A   ", 15);
            memcpy(d3, "HURRY!        ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "I NEED YOU TO ", 15);
            memcpy(d6, "GET TO ETRURIA", 15);
            memcpy(d7, "BEFORE THE    ", 15);
            memcpy(d8, "GREEKS. THEY  ", 15);
            memcpy(d9, "ARE GOING TO  ", 15);
            memcpy(d10, "PAY FOR THIS  ", 15);
            memcpy(d11, "THREAT!       ", 15);
        break;
        case MISSION03_COMPLETED:
            memcpy(d0, "CONGRATULATION", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU BRING HO, ", 15);
            memcpy(d3, "NOR TO THE RO,", 15);
            memcpy(d4, "MAN EMPIRE!   ", 15);
            memcpy(d5, "IN TWO DAYS   ", 15);
            memcpy(d6, "FROM NOW YOU  ", 15);
            memcpy(d7, "WILL START YO,", 15);
            memcpy(d8, "UR NEXT JOUR, ", 15);
            memcpy(d9, "EY TO THE ALPS", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION04_INTRO:
            memcpy(d1, "WELCOME TO THE", 15);
            memcpy(d2, "PROVINCE OF   ", 15);
            memcpy(d3, "ETRURIA!      ", 15);
            memcpy(d4, "BARBARIANS HA,", 15);
            memcpy(d5, "VE STOLEN AN  ", 15);
            memcpy(d6, "IMPERIAL SEAL.", 15);
            memcpy(d7, "IT IS EXTREME,", 15);
            memcpy(d8, "LY IMPORTANT  ", 15);
            memcpy(d9, "FOR US TO RE, ", 15);
            memcpy(d10, "TRIEVE IT!   ", 15);
            memcpy(d10, "KILL THE MAN ", 15);
            memcpy(d11, "WHO OWNS IT. ", 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION04_COMPLETED:
            memcpy(d0, "THAT FILTHY   ", 15);
            memcpy(d1, "TRAITOR! GREAT", 15);
            memcpy(d2, "JOB, HE DESER,", 15);
            memcpy(d3, "VED THAT.     ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, "REST FOR THE  ", 15);
            memcpy(d7, "NIGHT AND WAIT", 15);
            memcpy(d8, "FOR MY NEW    ", 15);
            memcpy(d9, "MESSAGE.      ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION05_INTRO:
            memcpy(d0, "THIS TIME YOU ", 15);
            memcpy(d1, "HAVE TO MOVE  ", 15);
            memcpy(d2, "FAST. A GENE, ", 15);
            memcpy(d3, "RAL SOLDIER   ", 15);
            memcpy(d4, "HAS BEEN LOST ", 15);
            memcpy(d5, "IN THE MOUN,  ", 15);
            memcpy(d6, "TAINS. YOU MU,", 15);
            memcpy(d7, "ST SAVE HIM...", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, "BEFORE HE FRE,", 15);
            memcpy(d10, "EZES TO DEATH.", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION05_SAVED_GENERAL:
            memcpy(d0, "THANK YOU!    ", 15);
            memcpy(d1, "LONG LIVE     ", 15);
            memcpy(d2, "THE ROMAN EM, ", 15);
            memcpy(d3, "PIRE AND ALL  ", 15);
            memcpy(d4, "ITS ROMAN SOL,", 15);
            memcpy(d5, "DIER AND CHA, ", 15);
            memcpy(d6, "RIOTERS!      ", 15);
            memcpy(d7, "I WAS ALMOST  ", 15);
            memcpy(d8, "DIEING THERE..", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, "LET'S RUN AWAY", 15);
            memcpy(d11, "FROM THESE CO,", 15);
            memcpy(d12, "LD MOUNTAINS. ", 15);
        break;
        case MISSION05_COMPLETED:
            memcpy(d0, "YOU DID SAVED ", 15);
            memcpy(d1, "HIM!!         ", 15);
            memcpy(d2, "HER DAUGHTER  ", 15);
            memcpy(d3, "AWAITS FOR THE", 15);
            memcpy(d4, "SAVIOR OF HER ", 15);
            memcpy(d5, "FATHER HERE IN", 15);
            memcpy(d6, "ROME... YOU D ", 15);
            memcpy(d7, "BETTER GET    ", 15);
            memcpy(d8, "BACK ALIVE, I ", 15);
            memcpy(d9, "GUESS SHE WILL", 15);
            memcpy(d10, "THANK YOU IN  ", 15);
            memcpy(d11, "THE BEST WAY  ", 15);
            memcpy(d12, "WOMEN DO...   ", 15);
        break;
        case MISSION06_INTRO:
            memcpy(d0, "THOSE FILTHY  ", 15);
            memcpy(d1, "GALLIC ARE CA,", 15);
            memcpy(d2, "SING LANDSLI, ", 15);
            memcpy(d3, "DES IN YOUR   ", 15);
            memcpy(d4, "MOUNTAINS.    ", 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, "SURVIVE THOSE!", 15);
            memcpy(d7, EMPTY_STRING_14, 15);
            memcpy(d8, "TAKE YOUR TIME", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION06_COMPLETED:
            memcpy(d0, "IF THIS MESSA,", 15);
            memcpy(d1, "GE REACHES YOU", 15);
            memcpy(d2, "IT MEANS YOU  ", 15);
            memcpy(d3, "SURVIVED THE  ", 15);
            memcpy(d4, "LANDSLIDES.   ", 15);
            memcpy(d5, EMPTY_STRING_14, 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, "REST FOR THE  ", 15);
            memcpy(d8, "NIGHT. TOMOR, ", 15);
            memcpy(d9, "ROW A NEW MIS,", 15);
            memcpy(d10, "SION AWAITS   ", 15);
            memcpy(d11, "YOU.         ", 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION07_INTRO:
            memcpy(d0, EMPTY_STRING_14, 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, EMPTY_STRING_14, 15);
            memcpy(d3, EMPTY_STRING_14, 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "    AMBUSH!   ", 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, EMPTY_STRING_14, 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION07_COMPLETED:
            memcpy(d0, EMPTY_STRING_14, 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, EMPTY_STRING_14, 15);
            memcpy(d3, EMPTY_STRING_14, 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "    AMBUSH!   ", 15);
            memcpy(d6, "   SURVIVED!  ", 15);
            memcpy(d7, EMPTY_STRING_14, 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION08_INTRO:
            memcpy(d0, "DEMETRIO THE  ", 15);
            memcpy(d1, "AMBASSADOR HAS", 15);
            memcpy(d2, "BEEN KIDNAPPED", 15);
            memcpy(d3, "BY SAVAGES!   ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "GET THE MAP ON", 15);
            memcpy(d6, "THE BEACH! YOU", 15);
            memcpy(d7, "MUST HURRY UP ", 15);
            memcpy(d8, "BEFORE THEY   ", 15);
            memcpy(d9, "KILL HIM.     ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION08_COMPLETED:
            memcpy(d0, EMPTY_STRING_14, 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, EMPTY_STRING_14, 15);
            memcpy(d3, "YOU ARE HALF  ", 15);
            memcpy(d4, "THE WAY IN SAV", 15);
            memcpy(d5, "ING DEMETRIO. ", 15);
            memcpy(d6, EMPTY_STRING_14, 15);
            memcpy(d7, "WAIT FOR THE  ", 15);
            memcpy(d8, "NIGHT AND YOU ", 15);
            memcpy(d9, "WILL RECEIVE  ", 15);
            memcpy(d10, "A NEW MESSAGE ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION09_INTRO:
            memcpy(d0, "GOOD JOB!     ", 15);
            memcpy(d1, "NOW WAIT FOR  ", 15);
            memcpy(d2, "THE THE NIGHT ", 15);
            memcpy(d3, "TO COME.      ", 15);
            memcpy(d4, "THEN FOLLOW   ", 15);
            memcpy(d5, "THE MAP AND   ", 15);
            memcpy(d6, "FIND DEMETRIO.", 15);
            memcpy(d7, "BE READY TO   ", 15);
            memcpy(d8, "COUNTER ATTACK", 15);
            memcpy(d9, "BECAUSE SAVA, ", 15);
            memcpy(d10, "GES ARE GUARD,", 15);
            memcpy(d11, "ING DEMETRIO. ", 15);
        break;
        case MISSION09_SAVED_AMBASSADOR:
            memcpy(d0, "THANK YOU AND ", 15);
            memcpy(d1, "CAESAR AUGUST,", 15);
            memcpy(d2, "US! THIS SAVA,", 15);
            memcpy(d3, "GES INFLICTED ", 15);
            memcpy(d4, "UNSPEAKABLE   ", 15);
            memcpy(d5, "VIOLENCE ON ME", 15);
            memcpy(d6, "... WE MUST   ", 15);
            memcpy(d7, "SHOW THEM THE ", 15);
            memcpy(d8, "STRENGTH OF   ", 15);
            memcpy(d9, "THE ROMAN EM, ", 15);
            memcpy(d10, "PIRE.         ", 15);
            memcpy(d11, "  KILL EM ALL!", 15);
        break;
        case MISSION09_COMPLETED:
            memcpy(d0, "THANK YOU AGA,", 15);
            memcpy(d1, "IN!           ", 15);
            memcpy(d2, "I WILL REMEM, ", 15);
            memcpy(d3, "BER YOU FOR   ", 15);
            memcpy(d4, "THE REST OF MY", 15);
            memcpy(d5, "LIFE. I OWE   ", 15);
            memcpy(d6, "YOU MY OWN LI,", 15);
            memcpy(d7, "FE. I NEED TO ", 15);
            memcpy(d8, "GO BACK TO RO,", 15);
            memcpy(d9, "ME. THE FASTE,", 15);
            memcpy(d10, "ST WAY IS BY  ", 15);
            memcpy(d11, "SHIP.         ", 15);
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