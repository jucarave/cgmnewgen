/// evQuestionDraw()

var vx = camera_get_view_x(view_camera[0]),
	vy = camera_get_view_y(view_camera[0]),
	vw = displayWidth / 2,
	
	dialogPage = events[page],
	pageLength = array_length_1d(dialogPage),
	
	questionsLength = pageLength - 1;

draw_set_color(c_black);
draw_set_alpha(0.8);

draw_rectangle(vx + vw - 80, vy + 32, vx + vw + 80, vy + 34 + 12 * questionsLength, false);

draw_set_color(c_white);
draw_set_alpha(1.0);

draw_set_font(global.PIXEL_FONT);

for (var i=0;i<questionsLength;i++) {
	draw_text(vx + vw - 64, vy + 34 + i * 12, dialogPage[i + 1]);
}

// Draw cursor
draw_sprite(sprCursor, 0, vx + vw - 72, vy + 35 + questionCursor * 12);