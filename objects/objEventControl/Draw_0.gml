if (!active) { exit; }

if (page == -1) { exit; }

var eventPage = events[page];

switch (eventPage[0]) {
	case EVENT_SHOW_MESSAGE:
		evDialogDraw();
		break;
	
	case EVENT_SHOW_QUESTION:
		evDialogDraw();
		evQuestionDraw();
		break;
}