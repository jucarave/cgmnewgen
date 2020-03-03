/// evDialogController();

var eventPage = events[page],
	pageLength = array_length_1d(eventPage);
	
#region Copy text letter by letter
if (displayText != eventPage[1]) {
	if (textCooldown > 0) {
		textCooldown -= 1;
	} else {
		var ind = string_length(displayText) + 1;
	
		displayText += string_char_at(eventPage[1], ind);
		textCooldown = 1;
	
		var lines = strSplitInLines(displayText, global.PIXEL_FONT, displayWidth - 32);
		dialogLines = strSplitInColors(lines, global.PIXEL_FONT);
	}
} else {
	if (cursorBlink > 0) {
		cursorBlink -= 1;
	} else {
		cursorBlink = room_speed;
	}
}
#endregion

#region Check Next Page
if (keyboard_check_pressed(global.KEY_ACTION)) {
	if (displayText != eventPage[1]) {
		displayText = eventPage[1];
		
		var lines = strSplitInLines(displayText, global.PIXEL_FONT, displayWidth - 32);
		dialogLines = strSplitInColors(lines, global.PIXEL_FONT);
	} else {
		if (page < array_length_1d(events) - 1) {
			event_user(1);
		} else {
			evDialogEnd();
		}
	}
	
	exit;
}
#endregion

#region Show/Hide Actor
var showSpeed = 15;
if (prevActor != noone) {
	if (actorState == 0 && nameOffset > 0) {
		// Show actor
		nameOffset -= showSpeed;
		if (nameOffset < 0) { nameOffset = 0; }
		
		if (pageLength == 4) {
			spriteOffset -= showSpeed;
			if (spriteOffset < 0) { spriteOffset = 0; }
		}
	} else if (actorState == 1 && nameOffset < offsetWidth) {
		// Hide Actor
		nameOffset += showSpeed;
		if (nameOffset > offsetWidth) { 
			nameOffset = offsetWidth; 
			actorState = 0;
			
			displayName = eventPage[2];
			if (pageLength == 4) {
				displaySprite = eventPage[3];
			}
			
			if (endAfterHide && lastActorSprite == noone) {
				event_user(2);
			}
		}
		
		// Hide Sprite
		if (lastActorSprite != noone) {
			spriteOffset += showSpeed;
			if (spriteOffset > offsetWidth) { 
				spriteOffset = offsetWidth; 
				lastActorSprite = noone;
				
				if (endAfterHide) {
					event_user(2);
				}
			}
		}
	}
} else if (nameOffset < offsetWidth) {
	// Hide Actor
	nameOffset += showSpeed;
	if (nameOffset > offsetWidth) { nameOffset = offsetWidth; }
	
	// Hide Sprite
	if (lastActorSprite != noone) {
		spriteOffset += showSpeed;
		if (spriteOffset > offsetWidth) { 
			spriteOffset = offsetWidth; 
			lastActorSprite = noone;
		}
	}
}
#endregion