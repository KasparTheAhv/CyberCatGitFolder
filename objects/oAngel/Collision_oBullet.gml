/// @description Insert description here
// You can write your code in this editor
with(other)
{
instance_destroy();
}
if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=0.5;}
self.elud-=1;
image_blend=c_red;

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part14,irandom_range(5,10));
part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}
alarm[8]=4;
if (elud<=0) 
{
	instance_destroy();
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part14,irandom_range(14,20));
	}
}




