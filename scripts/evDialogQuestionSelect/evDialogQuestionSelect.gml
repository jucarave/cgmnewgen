/// evDialogQuestionSelect()

var dialogPage = events[page],
	pageLength = array_length_1d(dialogPage),
	
	questionsLength = pageLength - 1,
	
	dir = keyboard_check_pressed(global.KEY_DOWN) - keyboard_check_pressed(global.KEY_UP);
	
if (dir != 0) {
	questionCursor += dir;
	
	if (questionCursor >= questionsLength) {
		questionCursor = 0;
	} else if (questionCursor < 0) {
		questionCursor = questionsLength - 1;
	}
}

if (keyboard_check_pressed(global.KEY_ACTION)) {
	var options = events[page + 1],
		opt = options[questionCursor];
		
	questionCursor = 0;
	if (opt != noone) {
		events = opt;
		page = -1;
		event_user(1);
	} else {
		event_user(2);
	}	
}