/// @desc
with (instance_nearest(x,y,oEggplantTree))
{
hasplant=false;	
}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part1,irandom_range(12,15));
}