/// @description Insert description here
// You can write your code in this editor
if (room==Room16)
{
	if (instance_number(oDog)<=1) && (instance_number(oDogAttack)<=0)
	{
	oGUIBAR.task3="+ Task done!";	
	oGUIBAR.task3col="[#4CFF4C]";
	oGUIBAR.task1="+ Task done!";	
	oGUIBAR.task1col="[#4CFF4C]";
	}
}
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");