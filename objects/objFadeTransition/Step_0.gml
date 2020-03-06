if (!fadeIn && alpha > 0) {
	alpha -= 0.025;
	if (alpha <= 0) { alpha = 0; }
} else if (fadeIn && alpha < 1) {
	alpha += 0.025;
	if (alpha >= 1) { 
		alpha = 1; 
		
		if (roomGoTo != noone) {
			room_goto(roomGoTo);
			global.PAUSE = false;
		}
	}
}