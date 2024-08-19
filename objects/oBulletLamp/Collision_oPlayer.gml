/// @desc
with (other)
{
	if !(immune)
	{
	var amp=1;
	play_sound(snOuch,false);

		var scale=choose(1,-1);
		
		if (visible) && (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part111,irandom_range(20,25));
		}
		
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale;
	vsp= -2*amp;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
		}
		instance_destroy(self);
		instance_destroy(other);
	}
}

