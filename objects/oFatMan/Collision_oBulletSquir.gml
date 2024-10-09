/// @desc
with(other)
{
instance_destroy();
}

self.elud-=1;
image_blend=c_red;
alarm[8]=4;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}
if (elud<=0) 
{
	instance_destroy();
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}

if (immobile)
{
imshots+=1;	
}