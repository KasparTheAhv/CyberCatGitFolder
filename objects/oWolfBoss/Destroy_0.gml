/// @desc
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");

with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
	bossSPR=7;
	partCol1=c_grey;
	partCol2=c_white;
}