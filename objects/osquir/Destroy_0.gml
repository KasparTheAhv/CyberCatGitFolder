/// @description Insert description here
// You can write your code in this editor
if instance_exists(whatbase)
{
whatbase.mybirds-=1;
}
play_sound(snShot,false);

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");