#include "ZGBMain.h"
#include "Math.h"

UINT8 next_state = StateCredit;
UINT8 J_WHIP=J_A;//0x10;
UINT8 J_ATK=J_B;//0x20;


UINT8 GetTileReplacement(UINT8* tile_ptr, UINT8* tile) {
	/*if(current_state == StateGame) {
		if(U_LESS_THAN(255 - (UINT16)*tile_ptr, N_SPRITE_TYPES)) {
			*tile = 0;
			return 255 - (UINT16)*tile_ptr;
		}

		*tile = *tile_ptr;
	}*/

	return 255u;
}