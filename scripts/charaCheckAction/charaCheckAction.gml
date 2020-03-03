/// charaCheckAction()

if (KEY_ACTION == 1) {
	KEY_ACTION = 2;
	
	var dir = charaGetFaceDirection(),
	
		xTo = lengthdir_x(GRID_WIDTH, dir),
		yTo = lengthdir_y(GRID_HEIGHT, dir),
		
		x1, y1;
		
	if (xTo != 0) {
		x1 = floor(x / GRID_WIDTH) * GRID_WIDTH + xTo;
		y1 = y - GRID_HEIGHT / 2;
	} else if (yTo != 0) {
		x1 = x - GRID_WIDTH / 2;
		if (yTo > 0) { 
			y1 = y; 
		} else {
			y1 = floor(y / GRID_HEIGHT) * GRID_HEIGHT + yTo;
		}
	}
		
	var ins = collision_rectangle_array(x1 + 1, y1 + 1, x1 + GRID_WIDTH - 2, y1 + GRID_HEIGHT - 2, [objInteractive, objNPC], false, true);
	
	if (ins != noone) {
		with (ins) {
			event_user(0);
		}
	}
}