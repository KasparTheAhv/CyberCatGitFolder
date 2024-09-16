/// @desc catnip flicker away
// You can write your code in this editor
if !(forevercatnip) {
	if (ticks>0)
	{
	ticks-=1;	
	if (image_alpha!=1) {image_alpha=1;} else {image_alpha=0;}
	alarm[0]=30;
	} else {	
		var settingsmap = ds_map_secure_load("settings.sav")
		var prevValue = ds_map_find_value(settingsmap,"STATS_Cnmiss");
		if is_undefined(prevValue){prevValue=0;}
		var neWvalue = prevValue+1;
		ds_map_set(settingsmap,"STATS_Cnmiss",neWvalue);
		ds_map_secure_save(settingsmap,"settings.sav");
		instance_destroy();
		}
}