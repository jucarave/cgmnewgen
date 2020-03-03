/// @description ACTIVATE NPC

if (events == noone) { exit; }

charaLookAtInstance(objPlayer);

objEventControl.events = events;

with (objEventControl) {
	event_user(0);
}