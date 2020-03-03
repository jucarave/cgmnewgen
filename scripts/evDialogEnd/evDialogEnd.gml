/// evDialogEnd()

var eventPage = events[page],
	pageLength = array_length_1d(eventPage);
	
if (pageLength >= 3) {
	actorState = 1;
	lastActorSprite = displaySprite;
	endAfterHide = true;
} else {
	event_user(2);
}