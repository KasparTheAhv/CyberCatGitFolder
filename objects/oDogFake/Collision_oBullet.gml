/// @description Insert description here
// You can write your code in this editor
with(other)
{
instance_destroy();
}
if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=1.5;}
self.elud-=1;
image_blend=c_red;
alarm[8]=4;
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
	}
if (elud<=0) 
{
if (room==Room5)
{
with (oEvent)
{
if (event_id==10) {self.activated=true;}
}
oGUIBAR.task2="+ Task done!";
oGUIBAR.task2col="[#4CFF4C]";
oGUIBAR.task3="- Find the station";
}
if (room==Room7)
{
oGUIBAR.task3="+ Task done!";	
oGUIBAR.task3col="[#4CFF4C]";	
}


	instance_destroy();
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(17,25));
	}
}




