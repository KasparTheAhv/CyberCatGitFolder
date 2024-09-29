///@desc unlock door, start dropping lock, stats +1

// alarm the door to open 
if instance_exists(who) {who.alarm[10]=1;}

// start dropping
image_index=1;
alarm[2]=1; 

// give stat
if (gainstat)
{
	gainstat=false;
	var settingsmap = ds_map_secure_load("settings.sav")
	var prevValue = ds_map_find_value(settingsmap,"STATS_Locks");
	if is_undefined(prevValue){prevValue=0;}
	var neWvalue = prevValue+1;
	ds_map_set(settingsmap,"STATS_Locks",neWvalue);
	ds_map_secure_save(settingsmap,"settings.sav");
}
