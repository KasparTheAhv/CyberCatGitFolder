repeat(2)
{
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}

with(oSwordDoor)
{
	activated=false;	
}

with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
		bossSPR=0;
	partCol1=c_red;
	partCol2=c_grey;
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");