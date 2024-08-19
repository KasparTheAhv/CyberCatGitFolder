/// @description Insert description here
// You can write your code in this editor
oGUIBAR.task3="+ Task done!";	
oGUIBAR.task3col="[#4CFF4C]";

with(oBirdBase)
{
if (bossbase==true)	{instance_destroy(self);}
}


with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
	bossSPR=2;
	partCol1=c_red;
	partCol2=c_yellow;
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");