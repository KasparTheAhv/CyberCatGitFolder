/// @description Insert description here
// You can write your code in this editor
with(other)
{
if (ineffective) {exit;}
instance_destroy();
}

	
if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=0.75;}
self.elud-=1;
image_blend=c_red;
alarm[8]=4;
if (visible && global.GFX1==1)
{
part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}
if (elud<=0) 
{
	die=true;
	if (visible && global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}






