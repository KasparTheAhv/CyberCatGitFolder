if (room==Room11)
{
	TaskDone(1);	
}
	
with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
	bossSPR=12;
	partCol1=c_white;
	partCol2=c_aqua;
}	

if (visible) && (global.GFX1==1)
{
	part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part21,irandom_range(34,34));
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");