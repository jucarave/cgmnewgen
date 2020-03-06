if (global.PAUSE) { exit; }

switch (state) {
	case STATE_FREE:
		charaCheckMovement();
		charaCheckAction();
		break;
}