/// @desc CypPort Death
if (elud>1)
{
elud-=1;
self.image_blend=c_red;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
}
alarm[5]=4;
exit;
} else {
repeat(2)
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}
with (instance_create_layer(self.x,self.y,"Characters",oBirdFall))
	{
	nonippy=true;
	vsp= 2;
	hsp= 2*other.myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	}
	TaskDone(3);


with(oBirdBase)
{
if (bossbase==true)	{instance_destroy(self);}
}


instance_destroy(self);
}
instance_create_layer(x,y,"BefEdge",oSlash);