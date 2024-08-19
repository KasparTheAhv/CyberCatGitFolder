/// @desc
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Leapshit");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Leapshit",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
image_xscale=0.75;
image_yscale=0.75;
image_blend=c_aqua;