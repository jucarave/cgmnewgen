/// strSplitInLines(text, font, lineWidth)
/// @param text
/// @param font
/// @param lineWidth

var text = argument[0],
	font = argument[1],
	lineWidth = argument[2],

	words = strSplit(text, " "),
	wordsCount = array_length_1d(words),
	
	line = "",

	ret = [],
	retCount = 0;
	
draw_set_font(font);

for (var i=0;i<wordsCount;i++) {
	var word = words[i];
	
	if (string_width(line + " " + word) > lineWidth) {
		ret[retCount++] = line;
		line = word;
	} else {
		if (line != "") { line += " "; }
		
		line += word;
	}
}

if (line != "") {
	ret[retCount] = line;
}

return ret;