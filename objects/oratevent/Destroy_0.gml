if (room==Room1)
{
oGUIBAR.task2="+ Task done!";	
oGUIBAR.task2col="[#4CFF4C]";
}
play_sound(snRatD,false);

oRoomController.alarm[10]=5;

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");