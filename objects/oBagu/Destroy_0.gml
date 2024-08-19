/// @desc
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x+15, y-10,oRoomController.part111,irandom_range(20,25));
}
with (instance_create_layer(x,y,layer,oBaguD))
{
	image_xscale=other.image_xscale;
	image_yscale=other.image_yscale;
	direction=other.direction;
	image_angle=other.image_angle;
	image_index=3;
	image_speed=0;
}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y+10,oRoomController.part111,irandom_range(20,25));
part_particles_create(oRoomController.part_sys, x-15, y-5,oRoomController.part111,irandom_range(20,25));
}
audio_stop_sound(snRocket);
play_sound(snBlastBig);