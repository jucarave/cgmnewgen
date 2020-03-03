/// strSplit(text, delimiter)
/// @param text
/// @param delimiter

var text = argument[0],
	delimiter = argument[1],
	
	textLength = string_length(text),
	
	word = "",
	
	ret = [],
	retCount = 0;
	
for (var i=1;i<=textLength;i++) {
	var chara = string_char_at(text, i);
	
	if (chara == delimiter) {
		if (word != "") {
			ret[retCount++] = word;
			word = "";
		}
	} else {
		word += chara;
	}
}

if (word != "") {
	ret[retCount] = word;
}

return ret;