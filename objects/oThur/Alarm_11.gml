/// @desc CypPort Death
if (elud>1)
{
elud-=1;
image_blend=c_red;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
}
alarm[5]=6;
exit;
} else {
elud-=1;
repeat(2)
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}
with (instance_create_layer(self.x,self.y,"Characters",oThurD))
	{
	nonippy=true;	
	image_xscale=2*sign(other.image_xscale);
	image_yscale=2;
	if (sign(image_xscale)==1) {image_angle=270;} else {image_angle=90;}
	}
instance_destroy(self);
}