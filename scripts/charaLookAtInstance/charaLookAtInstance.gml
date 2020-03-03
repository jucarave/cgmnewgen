/// charaLookAtInstance(ins)
/// @param ins

var ins = argument[0],

	dir = point_direction(x, y, ins.x, ins.y);

if (dir < 45 || dir >= 315) {
	charaLookAtDirection(1, 0);
} else if (dir >= 45 && dir < 135) {
	charaLookAtDirection(0, -1);
} else if (dir >= 135 && dir < 225) {
	charaLookAtDirection(-1, 0);
} else if (dir >= 225 && dir < 315) {
	charaLookAtDirection(0, 1);
}