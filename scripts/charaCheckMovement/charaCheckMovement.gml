/// charaCheckMovement()

var hor = KEY_RIGHT - KEY_LEFT,
	ver = KEY_DOWN - KEY_UP;
	
	
if (hor != 0.0 || ver != 0.0) {
	charaLookAtDirection(hor, ver);
	
	var dir = point_direction(0, 0, hor, ver),
		xTo = lengthdir_x(spd, dir),
		yTo = lengthdir_y(spd, dir);
		
	if (!place_meeting_array(x + xTo, y, [objSolid, objNPC])) {
		x += xTo;
	}
	if (!place_meeting_array(x, y + yTo, [objSolid, objNPC])) {
		y += yTo;
	}
	
	if (image_speed == 0) {
		image_index = 1;
	}
	
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}