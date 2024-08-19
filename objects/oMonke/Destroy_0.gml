/// @description Insert description here
// You can write your code in this editor
if (instance_number(oMonke)<=1)
{
oGUIBAR.task1="+ Task done!";	
oGUIBAR.task1col="[#4CFF4C]";

if (instance_number(oBirdBase)==1)
{
oGUIBAR.task2="- Destroy bird base";
} else {
oGUIBAR.task2="+ Task done!";	
oGUIBAR.task2col="[#4CFF4C]";	
}

oGUIBAR.task3="- Touch a cactus";

}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");