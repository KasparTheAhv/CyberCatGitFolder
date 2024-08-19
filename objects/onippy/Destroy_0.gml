/// @desc
settingsmap = ds_map_secure_load("settings.sav");
var curamount=ds_map_find_value(settingsmap,"STATS_Catnip");
if is_undefined(curamount) {exit;} else {
	if (curamount<1000)	{
	exit;	
	} else {
	GooglePlayServices_Achievements_Unlock("CgkIgbe1i_EYEAIQKA");
	}
}