/// place_meeting_array(x, y, instancesArray)
/// @param x
/// @param y
/// @param instancesArray

var _x = argument[0],
	_y = argument[1],
	
	instances = argument[2],
	insLength = array_length_1d(instances);
	
for (var i=0;i<insLength;i++) {
	if (place_meeting(_x, _y, instances[i])) {
		return true;
	}
}

return false;