/// @desc
/// @description Insert description here
// You can write your code in this editor

with(other)
{
instance_destroy();
}


if (current_state==wolfstates.attack) {exit;}
if (current_state==wolfstates.howl) {exit;}


if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=0.5;}
self.elud-=1;
image_blend=c_red;
alarm[8]=10;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}

if (elud<=0) 
{
	instance_destroy();
}

