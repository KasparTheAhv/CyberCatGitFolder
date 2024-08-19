/// @desc

	var dir=direction;
	if (dir>=90) && (dir<=270) {scale=-1;} else {scale=1;}

with (other)
{
	
	if !(immune)
	{

	play_sound(snOuch,false);
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part111,irandom_range(20,25));
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= -4;
	vsp= -1;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
		}
		instance_destroy(self);
		instance_destroy(other);
	}
	
	
	
}

