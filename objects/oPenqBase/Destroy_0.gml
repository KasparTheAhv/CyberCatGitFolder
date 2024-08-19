var xx=self.x;
var yy=self.y;
instance_create_layer(xx,yy,"Characters",oPenqBaseB);
with (oRoomController)
{
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(part_sys, xx, yy,part6,irandom_range(5,8));
	}
}
play_sound(snBlast,false);