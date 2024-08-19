/// @desc start restart
if !(instance_exists(oYes)) // 
{
audio_stop_all();
instance_destroy(oMusicController);
instance_destroy(oConfigureJS);
alarm[2]=1;

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Restarts");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Restarts",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");

}