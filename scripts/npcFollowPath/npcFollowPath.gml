/// npcFollowPath()

var p = commands[commandInd],
	type = p[0];
	
if (type == NPC_WALK_TO) {
	var dx = p[1] - x,
		dy = p[2] - y;
	
	KEY_DOWN = 0;
	KEY_RIGHT = 0;

	if ((dy == 0 && dx != 0 && abs(dx) <= spd) || (dx == 0 && dy != 0 && abs(dy) <= spd)) {
		x = p[1];
		y = p[2];
	
		alarm[0] = 1;
	} else {
		KEY_DOWN = sign(dy);
		KEY_RIGHT = sign(dx);
	}
} else if (type == NPC_WAIT && alarm[0] == -1) {
	alarm[0] = p[1] * room_speed;
} else if (type == NPC_LOOK_AT) {
	var dx = p[1] - x,
		dy = p[2] - y;
		
	charaLookAtDirection(dx, dy);
	alarm[0] = 1;
}