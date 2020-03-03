KEY_UP = keyboard_check(global.KEY_UP);
KEY_LEFT = keyboard_check(global.KEY_LEFT);
KEY_DOWN = keyboard_check(global.KEY_DOWN);
KEY_RIGHT = keyboard_check(global.KEY_RIGHT);

if (keyboard_check(global.KEY_ACTION)) {
	if (KEY_ACTION != 2) {
		KEY_ACTION = 1;
	}
} else {
	KEY_ACTION = 0;
}