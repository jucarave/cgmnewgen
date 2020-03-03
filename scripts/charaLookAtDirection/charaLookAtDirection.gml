/// charaLookAtDirection(xdir, ydir)
/// @param xdir
/// @param ydir

var xdir = argument[0],
	ydir = argument[1];
	
if (xdir > 0) {
	face = FACE_RIGHT;
} else if (xdir < 0) {
	face = FACE_LEFT;
} else if (ydir < 0) {
	face = FACE_UP;
} else {
	face = FACE_DOWN;
}