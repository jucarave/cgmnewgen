if (global.PAUSE) { exit; }

sprite_index = variable_instance_get(id, action + face);

if (image_speed > 0) {
	imageIndex += sprite_get_speed(sprite_index) / room_speed;
	if (imageIndex >= image_number) {
		imageIndex = 0;
	}
}