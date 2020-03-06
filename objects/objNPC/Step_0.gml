if (global.PAUSE) { exit; }
if (talking) { exit; } 

if (commands != noone) {
	npcFollowPath();
}

// Inherit the parent event
event_inherited();

