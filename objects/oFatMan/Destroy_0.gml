/// @desc
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");

if instance_exists(oEvent)
{
	instance_destroy(oEvent);	
}

with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
	bossSPR=5;
	partCol1=$20608a
	partCol2=c_white;
}
oGUIBAR.task1="+ Task done!";	
oGUIBAR.task1col="[#4CFF4C]";
oGUIBAR.task2="- Enter the house";


with (instance_create_layer(x,y+40,"Characters",oKey))
{
	keyid=1;	
	image_blend=c_red;
}

if (imshots>25)
{
	var etext="That was easier than\nit was supposed to be!";
	follow = instance_nearest(x,y,oFollowPlayer);
	with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
	{
		target=other.follow;
		text = etext;
		length = string_length(text); 
		who=other.id;
	}
	if (room==Room22)
	{
		UnlockNoteEgg("Egg",1);
	}
}
