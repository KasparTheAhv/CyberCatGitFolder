if !(immune)
{
elud-=1;	

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
}

if instance_exists(oGUIBAR) {oGUIBAR.cn+=2;}
image_blend=c_red;
alarm[5]=4;
play_sound(snShot,false);

with(other)
{
instance_destroy();
}

if (elud<=0)	
{


		if (room==Room8){
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		}
if (visible) && (global.GFX1==1)
	{
repeat(2)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
}
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(17,25));
}
with (instance_create_layer(x,y+10,"Characters",oGas))
				{
				boom=true;
				image_xscale=2;
				image_yscale=2;
				}
instance_destroy(self);
}
}