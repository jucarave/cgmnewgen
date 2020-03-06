/// charaCheckMovement()

var hor = KEY_RIGHT - KEY_LEFT,
	ver = KEY_DOWN - KEY_UP;
	
	
if (hor != 0.0 || ver != 0.0) {
	charaLookAtDirection(hor, ver);
	
	var dir = point_direction(0, 0, hor, ver),
		xTo = lengthdir_x(spd, dir),
		yTo = lengthdir_y(spd, dir),
		moved = false;
		
	if (xTo != 0 && !place_meeting_array(x + xTo, y, [objSolid, objNPC, objPlayer])) {
		x += xTo;
		moved = true;
	}
	if (yTo != 0 && !place_meeting_array(x, y + yTo, [objSolid, objNPC, objPlayer])) {
		y += yTo;
		moved = true;
	}
	
	if (moved) {
		if (image_speed == 0) {
			imageIndex = 1;
		}
	
		image_speed = 1;
	} else {
		image_speed = 0;
		imageIndex = 0;
	}
} else {
	image_speed = 0;
	imageIndex = 0;
}