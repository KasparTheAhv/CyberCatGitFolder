/// @desc
	oGUIBAR.task2="+ Task done!";
	oGUIBAR.task2col="[#4CFF4C]";
	oLvlEnd.t2=true;
	oLvlEnd.t3=true;
oLvlEnd.activated=true;	
with (oBatBase) {activated=false;}
with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
		bossSPR=6;
	partCol1=c_lime;
	partCol2=c_red;
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");