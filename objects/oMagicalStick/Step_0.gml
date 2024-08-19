/// @desc
if !(visible) {exit;}

if !(charged) {exit;} else {
	if (spark<300) {spark+=1} else {spark=0;}
	if (spark>250)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part10,irandom_range(3,8));
	}
}