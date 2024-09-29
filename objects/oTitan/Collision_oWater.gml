/// @desc
if sprite_index==sTitaneat {exit;}

	TaskDone(1);
	oLvlEnd.t1=true;
 with (oEvent) {if (event_id==44){self.activated=true;}}
	instance_destroy();
	
	var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");