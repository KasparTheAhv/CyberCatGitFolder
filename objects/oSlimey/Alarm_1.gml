/// @desc turn into pool
if (image_index<5) {image_index+=1; alarm[1]=3;} else {
mutating=false;	cur_state=slistates.pool; 
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Leapshit");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Leapshit",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
}
