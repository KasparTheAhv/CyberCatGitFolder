/// @description Insert description here
with(other)
{
	instance_destroy();
}

if (current_state==wolfstates.attack) {exit;}
if (current_state==wolfstates.howl) {exit;}

if instance_exists(oGUIBAR) && (instance_exists(oPlayerGod)) {oGUIBAR.cn+=0.5;}
self.elud-=1; image_blend=c_red; alarm[8]=4;

if (visible) && (global.GFX1==1)
{
	part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}

if (elud<=0) 
{
	TaskDone(2);				
	if instance_exists(oBirdBase)
	{
		TaskNew(3,"Destroy birdbase")
	} else {
		TaskDone(3);
	}
			
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
	instance_destroy();
}