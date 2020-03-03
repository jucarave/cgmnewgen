if (!active) { exit; }

if (page == -1) { 
	event_user(1); 
	exit;
}

var eventPage = events[page];
	
switch (eventPage[0]) {
	case EVENT_SHOW_MESSAGE:
		evDialogController();
		break;
		
	case EVENT_SHOW_QUESTION:
		evDialogQuestionSelect();
		break;
		
	case EVENT_END_DIALOG:
		evDialogEnd();
		break;
}