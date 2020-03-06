/// @description INIT ACTION

if (needsFacing != noone && needsFacing != objPlayer.face) {
	exit;
}

var len = array_length_1d(actions);
for (var i=0;i<len;i++) {
	var action = actions[i],
		type = action[0];
	
	switch (type) {
		case ACTION_GO_TO_ROOM:
			objFadeTransition.fadeIn = true;
			objFadeTransition.roomGoTo = action[1];
			global.PLACE_PLAYER_AT = [action[2], action[3], action[4]];
			global.PAUSE = true;
			break;
	}
}