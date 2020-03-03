/// @description ACTIVATE NPC

if (events == noone) { exit; }

charaLookAtInstance(objPlayer);

talking = true;
image_speed = 0;
image_index = 0;

objEventControl.events = events;

with (objEventControl) {
	event_user(0);
}