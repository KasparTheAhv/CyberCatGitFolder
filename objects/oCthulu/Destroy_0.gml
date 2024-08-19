/// @desc
	oGUIBAR.task1="+ Task done!";	
	oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- Enter ship";
	oLvlEnd.t1=true;
	oLvlEnd.t2=true;
	oLvlEnd.t3=true;
	
	with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
		bossSPR=3;
	partCol1=c_blue;
	partCol2=c_lime;
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");