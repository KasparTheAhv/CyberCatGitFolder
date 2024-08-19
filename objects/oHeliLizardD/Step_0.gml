/// @description Insert description here
// You can write your code in this editor
if (speed<8) {speed+=0.3;}
if (tilemap_get_at_pixel(tilemap,x,y)==1)
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(17,25));
	}
instance_destroy(self);
}

