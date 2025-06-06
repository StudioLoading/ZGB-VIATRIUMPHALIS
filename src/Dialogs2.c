#include "Banks/SetAutoBank.h"

#include "ZGBMain.h"
#include "Scroll.h"
#include "SpriteManager.h"
#include "string.h"

#include "Dialogs.h"

extern unsigned char d0[15];
extern unsigned char d1[15];
extern unsigned char d2[15];
extern unsigned char d3[15];
extern unsigned char d4[15];
extern unsigned char d5[15];
extern unsigned char d6[15];
extern unsigned char d7[15];
extern unsigned char d8[15];
extern unsigned char d9[15];
extern unsigned char d10[15];
extern unsigned char d11[15];
extern unsigned char d12[15];
extern unsigned char EMPTY_STRING_14[];


void GetLocalizedDialog2_EN(INSTRUCTION arg_instruction) BANKED{
    switch(arg_instruction){
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
        case MISSION10_INTRO:
            memcpy(d0, "SEEMS WE ARE  ", 15);
            memcpy(d1, "ON A HURRY!   ", 15);
            memcpy(d2, "OUR AMBASSADOR", 15);
            memcpy(d3, "CAN'T MISS TH,", 15);
            memcpy(d4, "AT SAILING    ", 15);
            memcpy(d5, "SHIP.         ", 15);
            memcpy(d6, "MOVE AS FAST  ", 15);
            memcpy(d7, "AS YOU CAN!   ", 15);
            memcpy(d8, "THE SHIP IS TO", 15);
            memcpy(d9, "THE SOUTH-WEST", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION10_COMPLETED:
            memcpy(d0, "YOU SAVED HIM!", 15);
            memcpy(d1, EMPTY_STRING_14, 15);
            memcpy(d2, "YOU ARE REALLY", 15);
            memcpy(d3, "THE BEST! I   ", 15);
            memcpy(d4, "WISH I HAVE   ", 15);
            memcpy(d5, "MORE SOLDIER  ", 15);
            memcpy(d6, "LIKE YOU HERE ", 15);
            memcpy(d7, "IN ROME. WHO  ", 15);
            memcpy(d8, "KNOWS, ONE DAY", 15);
            memcpy(d9, "...           ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION11_INTRO:
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
        case MISSION12_INTRO:
            memcpy(d0, "GREECE!       ", 15);
            memcpy(d1, "IT'S TIME FOR ", 15);
            memcpy(d2, "YOU TO GO THR,", 15);
            memcpy(d3, "OUGH GREECE.  ", 15);
            memcpy(d4, "IT'S MAINLY   ", 15);
            memcpy(d5, "POPULATED BY  ", 15);
            memcpy(d6, "CIVILIANS.    ", 15);
            memcpy(d7, "FIRST OF ALL, ", 15);
            memcpy(d8, "AN IMPORTANT  ", 15);
            memcpy(d9, "PAPER MUST BE ", 15);
            memcpy(d10, "RESCUED FROM ", 15);
            memcpy(d11, "THE LAKE.    ", 15);
        break;        
        case MISSION12_COMPLETED:
            memcpy(d0, "GOOD! THEY ARE", 15);
            memcpy(d1, "GOING TO GET  ", 15);
            memcpy(d2, "CRAZY LOOKING ", 15);
            memcpy(d3, "FOR THAT!     ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "THIS IS SO    ", 15);
            memcpy(d6, "FUNNY!        ", 15);
            memcpy(d7, EMPTY_STRING_14, 15);
            memcpy(d8, "WAIT FOR THE  ", 15);
            memcpy(d9, "NIGHT...      ", 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION13_INTRO:
            memcpy(d0, "A SILENT NIGHT", 15);
            memcpy(d1, "IS COMING. PER", 15);
            memcpy(d2, "FECT TIME FOR ", 15);
            memcpy(d3, "AN ORIGLIED.  ", 15);
            memcpy(d4, "NOW I WANT YOU", 15);
            memcpy(d5, "TO GET NEXT TO", 15);
            memcpy(d6, "THE STATUE IN ", 15);
            memcpy(d7, "ORDER TO SNEAK", 15);
            memcpy(d8, "AND LISTEN THE", 15);
            memcpy(d9, "ORDERS THAT   ", 15);
            memcpy(d10, "THE GENERAL'S", 15);
            memcpy(d11, "GIVING.      ", 15);
        break;
        case MISSION13_COMPLETED:
            memcpy(d0, "HEAR THAT?! I ", 15);
            memcpy(d1, "CAN'T BELIEVE ", 15);
            memcpy(d2, "IT! HOW DARE  ", 15);
            memcpy(d3, "THEY?!        ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "UNFORTUNATELY ", 15);
            memcpy(d5, "YOU'VE BEEN   ", 15);
            memcpy(d6, "SEEN! GUARDS  ", 15);
            memcpy(d7, "HAVE BEEN     ", 15);
            memcpy(d8, "ALERTED!      ", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION13_GENERAL_HEARD:
            memcpy(d0, "THEY SAY A    ", 15);
            memcpy(d1, "ROMAN SECRET  ", 15);
            memcpy(d2, "AGENT CAME.   ", 15);
            memcpy(d3, "I THINK WE SH,", 15);
            memcpy(d4, "OULD IMPRISON ", 15);
            memcpy(d5, "HIM... MAYBE  ", 15);
            memcpy(d5, "IT WOULD BE   ", 15);
            memcpy(d6, "BETTER TO GET ", 15);
            memcpy(d7, "HIM DURING TH,", 15);
            memcpy(d8, "IS VERY NIGHT.", 15);
            memcpy(d9, "HE WOULD TELL ", 15);
            memcpy(d10, "US PRECIOUS   ", 15);
            memcpy(d11, "INFORMATIONS..", 15);
        break;
        case MISSION14_INTRO:
            memcpy(d0, "GREEK SOLDIERS", 15);
            memcpy(d1, "ARE HUNTING   ", 15);
            memcpy(d2, "YOU!          ", 15);
            memcpy(d3, EMPTY_STRING_14, 15);
            memcpy(d4, "I SUGGEST TO  ", 15);
            memcpy(d5, "RUN AWAY AS   ", 15);
            memcpy(d6, "FAST AS YOU   ", 15);
            memcpy(d7, "POSSIBLE CAN! ", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION14_COMPLETED:
            memcpy(d0, "I AM SORRY YOU", 15);
            memcpy(d1, "HAVE BEEN IMP,", 15);
            memcpy(d2, "RISONED. I CAN", 15);
            memcpy(d3, "'T RISK IN    ", 15);
            memcpy(d4, "SENDING PEOPLE", 15);
            memcpy(d5, "TO HELP YOU.  ", 15);
            memcpy(d6, "JUST...       ", 15);
            memcpy(d7, "SURVIVE, YOU  ", 15);
            memcpy(d8, "WILL BE REMEM,", 15);
            memcpy(d9, "BERED... SOME,", 15);
            memcpy(d10, "HOW.......   ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
        break;
        case MISSION15_INTRO:
            memcpy(d0, "THIS IS THE   ", 15);
            memcpy(d1, "GREEK GENERAL.", 15);
            memcpy(d2, "YOU ARE CHARG,", 15);
            memcpy(d3, "ED WITH ESPIO,", 15);
            memcpy(d4, "NAGE.         ", 15);
            memcpy(d5, "TO PLEASE OUR ", 15);
            memcpy(d6, "FRIEND THE    ", 15);
            memcpy(d7, "EGYPTIAN PHAR,", 15);
            memcpy(d8, "AO , YOU WILL ", 15);
            memcpy(d9, "BE PUNISHED IN", 15);
            memcpy(d10, "OUR ARENA TO ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, "         DIE!", 15);
        break;
        case MISSION15_COMPLETED:
            memcpy(d0, "YOUR PUNISH,  ", 15);
            memcpy(d1, "MENT CONSISTS ", 15);
            memcpy(d2, "IN BEING EXIL,", 15);
            memcpy(d3, "ED TO THE DE, ", 15);
            memcpy(d4, "SERT. YOUR    ", 15);
            memcpy(d5, "CHARIOT DESTRO", 15);
            memcpy(d6, "YED AND YOUR  ", 15);
            memcpy(d7, "HORSE DRIVEN  ", 15);
            memcpy(d8, "AWAY.         ", 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, "GOOD LUCK ON  ", 15);
            memcpy(d11, "DIEING ALONE  ", 15);
            memcpy(d12, "OUT THERE!    ", 15);
        break;
        case MISSION16_INTRO:
            memcpy(d0, "STAY CALM AND ", 15);
            memcpy(d1, "FOCUSED. OASIS", 15);
            memcpy(d2, "CAN GIVE ME   ", 15);
            memcpy(d3, "DRINKABLE WA, ", 15);
            memcpy(d4, "TER. THE HORSE", 15);
            memcpy(d5, "MUST HAVE LEFT", 15);
            memcpy(d6, "SOME TRACKS TO", 15);
            memcpy(d7, "FOLLOW. MAYBE ", 15);
            memcpy(d8, "SOME GOLDEN   ", 15);
            memcpy(d9, "ITEMS ARE OUT ", 15);
            memcpy(d10, "HERE... SOME, ", 15);
            memcpy(d11, "WHERE...      ", 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION16_COMPLETED:
            memcpy(d0, "I AM BARELY A,", 15);
            memcpy(d1, "LIVE. THIS HE,", 15);
            memcpy(d2, "AT IS KILLING ", 15);
            memcpy(d3, "ME AND THE    ", 15);
            memcpy(d4, "HORSE... IT'S ", 15);
            memcpy(d5, "BETTER FOR US ", 15);
            memcpy(d6, "TO WAIT FOR   ", 15);
            memcpy(d7, "THE NIGHT.    ", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, "EGYPT SHOULD  ", 15);
            memcpy(d10, "BE SOUTH EAST ", 15);
            memcpy(d11, "FROM HERE.    ", 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION17_INTRO:
            memcpy(d0, "NIGHT HAS FAL,", 15);
            memcpy(d1, "LEN IN THIS   ", 15);
            memcpy(d2, "DESERT OF THE ", 15);
            memcpy(d3, "FAR EAST.     ", 15);
            memcpy(d4, EMPTY_STRING_14, 15);
            memcpy(d5, "I SHOULD GET  ", 15);
            memcpy(d6, "TO SOME CIVI, ", 15);
            memcpy(d7, "LIZED VILLAGE ", 15);
            memcpy(d8, "IF I MOVE TO  ", 15);
            memcpy(d9, "THE SOUTH EAST", 15);
            memcpy(d10, "FROM HERE.    ", 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION17_COMPLETED:
            memcpy(d0, "PHEW!         ", 15);
            memcpy(d1, "THIS DESERT IS", 15);
            memcpy(d2, "HARD GOING... ", 15);
            memcpy(d3, "SUN IS RISING ", 15);
            memcpy(d4, "UP, LIGHT WILL", 15);
            memcpy(d5, "HOPEFULLY SHOW", 15);
            memcpy(d6, "ME WHAT'S IN  ", 15);
            memcpy(d7, "THE HORIZON.  ", 15);
            memcpy(d8, EMPTY_STRING_14, 15);
            memcpy(d9, EMPTY_STRING_14, 15);
            memcpy(d10, EMPTY_STRING_14, 15);
            memcpy(d11, EMPTY_STRING_14, 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION18_INTRO:
            memcpy(d0, "GOOD MORNING  ", 15);
            memcpy(d1, "TO ME! I CAN  ", 15);
            memcpy(d2, "NOW SEE SOME  ", 15);
            memcpy(d3, "TRACKS! I     ", 15);
            memcpy(d4, "SHOULD FOLLOW ", 15);
            memcpy(d5, "THEM, MAYBE   ", 15);
            memcpy(d6, "THERE'S ANO,  ", 15);
            memcpy(d7, "THER HUMAN    ", 15);
            memcpy(d8, "BEING LOST IN ", 15);
            memcpy(d9, "HERE... OR A  ", 15);
            memcpy(d10, "VILLAGE TO GET", 15);
            memcpy(d11, "TO, NEARBY... ", 15);
            memcpy(d12, EMPTY_STRING_14, 15);
        break;
        case MISSION18_COMPLETED:
            memcpy(d0, "MARCUS,       ", 15);
            memcpy(d1, "IF YOU WILL   ", 15);
            memcpy(d2, "EVER GET THIS ", 15);
            memcpy(d3, "MESSAGE, I    ", 15);
            memcpy(d4, "HOPE YOU ARE  ", 15);
            memcpy(d5, "IN GOOD SHAPE ", 15);
            memcpy(d6, "TO CONTINUE   ", 15);
            memcpy(d7, "YOUR JOURNEY. ", 15);
            memcpy(d8, "I'VE KNOWN THE", 15);
            memcpy(d9, "PHARAOH BEATED", 15);
            memcpy(d10, "YOU. IT IS    ", 15);
            memcpy(d11, "TIME FOR RETRI", 15);
            memcpy(d12, "BUTION.       ", 15);
        break;
    }
}