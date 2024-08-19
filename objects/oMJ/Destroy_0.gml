/// @desc

oGUIBAR.task3="+ Task done!";oGUIBAR.task3col="[#4CFF4C]";
oGUIBAR.task2="- Leave forest";

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");


with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
		bossSPR=10;
	partCol1=c_white;
	partCol2=c_black;
}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
}

	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Egg1";
			var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=true;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	
	
