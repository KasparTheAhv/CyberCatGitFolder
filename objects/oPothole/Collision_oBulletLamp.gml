/// @desc
if (notbroken)
{
	notbroken=false;
instance_destroy(other);

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part111,irandom_range(20,25));
}

oGUIBAR.task2="+ Task done!";	
oGUIBAR.task2col="[#4CFF4C]";
	with (instance_create_layer(x,__SCRIBBLE_GEN_CONTROL_TYPE.__CYCLE,"Characters",oGas))
				{
				boom=true;
				image_xscale=1.5;
				image_yscale=1.5;
				}
				alarm[0]=1;
}