// Inherit the parent event
event_inherited();

if (global.PLACE_PLAYER_AT != noone) {
	x = global.PLACE_PLAYER_AT[0];
	y = global.PLACE_PLAYER_AT[1];
	face = global.PLACE_PLAYER_AT[2];

	global.PLACE_PLAYER_AT = noone;
}