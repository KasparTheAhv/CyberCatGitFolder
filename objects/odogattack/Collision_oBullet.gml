/// @description Insert description here
// You can write your code in this editor
with(other)
{
instance_destroy();
}
if instance_exists(oGUIBAR){oGUIBAR.cn+=2;}
self.elud-=1;
image_blend=c_red;
alarm[8]=4;
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
	var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(15,22));
	}
	
}




