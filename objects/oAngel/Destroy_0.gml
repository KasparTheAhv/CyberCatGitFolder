/// @desc
with (oEvent)
{
	if (event_id==31)
	{
		activated=true;		
	}
}

oGUIBAR.task2="+ Task done!";
oGUIBAR.task2col="[#4CFF4C]";
oGUIBAR.task3="- Aboard the ship";

with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
		bossSPR=1;
	partCol1=c_white;
	partCol2=c_aqua;
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");