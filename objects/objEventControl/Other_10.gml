/// @description INIT DIALOG
with (objPlayer) {
	state = STATE_READ;
	image_index = 0;
	image_speed = 0;
}

event_user(3);
active = true;
page = -1;

cursorBlink = room_speed;

io_clear();