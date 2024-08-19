/// @description Insert description here
// You can write your code in this editor
if instance_exists(whatbase)
{
whatbase.mybirds-=1;
}
play_sound(snShot,false);

with (oRatBase) {alarm[1]=irandom_range(100,140);}

if (room==Room8) 
{
if (instance_number(oRat)==1)
{
		oGUIBAR.task3="+ Task done!";	
		oGUIBAR.task3col="[#4CFF4C]";
exit;	
}
}	


var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");