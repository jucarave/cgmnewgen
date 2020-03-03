/// evDialogDraw()

var vx = camera_get_view_x(view_camera[0]),
	vy = camera_get_view_y(view_camera[0]),
	dialogPage = events[page],
	pageLength = array_length_1d(dialogPage);

#region Draw Actor Portrait
if (pageLength == 4) {
	draw_sprite_ext(displaySprite, 0, 40 - spriteOffset, displayHeight, 0.5, 0.5, 0, c_white, 1);
} else if (lastActorSprite != noone) {
	draw_sprite_ext(lastActorSprite, 0, 40 - spriteOffset, displayHeight, 0.5, 0.5, 0, c_white, 1);
}
#endregion

#region Draw Dialog Box
draw_set_color(c_black);
draw_set_alpha(0.8);

draw_rectangle(vx, vy + displayHeight - 54, vx + displayWidth, vy + displayHeight, false);

draw_set_color(c_white);
draw_set_alpha(1);

draw_set_font(global.PIXEL_FONT);

if (dialogLines != noone) {
	var linesCount = array_length_1d(dialogLines);
	
	for (var i=0;i<linesCount;i++) {
		var segment = dialogLines[i],
			segmentCount = array_length_1d(segment);
			
		for (var j=0;j<segmentCount;j+=3) {
			var xpos = segment[j],
				col = segment[j + 1],
				text = segment[j + 2];
				
			draw_set_color(col);
			draw_text(vx + 8 + xpos, vy + displayHeight - 46 + 12 * i, text);
		}
	}
}
#endregion

draw_set_color(c_white);

// Draw next message cursor
if (displayText == dialogPage[1] && cursorBlink > room_speed / 2) {
	draw_sprite(sprMessageNext, 0, vx + displayWidth - 16, vy + displayHeight - 8);
}

#region Draw Actor Name
if (pageLength > 2 || nameOffset < offsetWidth) {
	draw_sprite(sprMessageName, 0, vx + displayWidth + nameOffset, vy + displayHeight - 62);
	
	draw_set_halign(fa_right);
	draw_text(vx + displayWidth - 10 + nameOffset, vy + displayHeight - 67, displayName);

	draw_set_halign(fa_left);
}
#endregion

