/// strSplitInColors(lines, font)
/// @param lines
/// @param font

var lines = argument[0],
	font = argument[1],
	
	linesCount = array_length_1d(lines),
	
	color = (string_char_at(lines[0], 1) == "|")? c_yellow : c_white,
	
	ret = [],
	retCount = 0;

draw_set_font(font);

for (var i=0;i<linesCount;i++) {
	var line = lines[i],
	
		lineWidth = 0,
	
		segments = strSplit(line, "|"),
		segmentsCount = array_length_1d(segments),
		
		instructions = [],
		instructionsCount = 0;
		
	for (var j=0;j<segmentsCount;j++) {
		instructions[instructionsCount++] = lineWidth;
		instructions[instructionsCount++] = color;
		instructions[instructionsCount++] = segments[j];
		
		lineWidth += string_width(segments[j]);
		
		if (j != segmentsCount - 1) {
			color = (color == c_white)? c_yellow : c_white;
		}
	}
	
	ret[retCount++] = instructions;
}

return ret;