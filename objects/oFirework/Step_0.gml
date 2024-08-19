/// @desc
if (activated)
{
part_particles_create(oRoomController.part_sys, x, y, partTrail,irandom_range(5,15));	
speed=speeder;
if (fall==1) {direction-=0.75;}
if (fall==2) {direction+=0.75;}
}

if (special)
{
	with(oPlayer)
	{
		immune=true;
		image_blend=c_yellow;
	}	
}