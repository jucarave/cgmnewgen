/// collision_rectangle_array(x1, y1, x2, y2, instancesArray, prec, notme)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param instancesArray
/// @param prec
/// @param notme

var x1 = argument[0],
	y1 = argument[1],
	
	x2 = argument[2],
	y2 = argument[3],
	
	instances = argument[4],
	instancesLength = array_length_1d(instances),
	
	prec = argument[5],
	notme = argument[6];
	
for (var i=0;i<instancesLength;i++) {
	var ins = collision_rectangle(x1, y1, x2, y2, instances[i], prec, notme);
	
	if (ins != noone) {
		return ins;
	}
}

return noone;