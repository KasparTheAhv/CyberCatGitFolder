if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);
	with (other)
	{
	var scale=choose(1,-1);
	if (boom) {var amp=3;
		if (visible) && (global.GFX1==1)
		{
			part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part111,irandom_range(20,25));
		}
	instance_destroy(other);}
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*amp;
	vsp= -3*amp;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}