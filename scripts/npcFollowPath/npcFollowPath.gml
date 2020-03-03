/// npcFollowPath()

var p = commands[commandInd],
	dx = p[0] - x,
	dy = p[1] - y;
	
KEY_DOWN = 0;
KEY_RIGHT = 0;

if ((dy == 0 && dx != 0 && abs(dx) <= spd) || (dx == 0 && dy != 0 && abs(dy) <= spd)) {
	x = p[0];
	y = p[1];
	
	commandInd += 1;
	if (commandInd >= array_length_1d(commands)) {
		commandInd = 0;
	}
} else {
	KEY_DOWN = sign(dy);
	KEY_RIGHT = sign(dx);
}