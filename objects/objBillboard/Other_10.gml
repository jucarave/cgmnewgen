/// @description INIT DIALOG

if (linkedTo != noone) {
	with (linkedTo) {
		event_user(0);
	}
	
	exit;
}

objEventControl.events = events;

with (objEventControl) {
	event_user(0);
}