/// @description NEXT PAGE
if (page >= 0 && array_length_1d(events[page]) > 3) {
	var dp = events[page];
	lastActorSprite = dp[3];
}

page += 1;

var dialogPage = events[page];

if (dialogPage[0] == EVENT_SHOW_MESSAGE) {
	displayText = "";
	dialogLines = noone;
	questionCursor = 0;

	if (array_length_1d(dialogPage) > 2) {
		var actor = dialogPage[2];
	
		if (prevActor == noone) {
			displayName = actor;
		}
	
		if (displaySprite == noone && array_length_1d(dialogPage) == 4) {
			displaySprite = dialogPage[3];
		}
	
		if (prevActor != noone && actor != prevActor) {
			actorState = 1;
		}
	
		prevActor = actor;
	} else {
		prevActor = noone;
	}
}