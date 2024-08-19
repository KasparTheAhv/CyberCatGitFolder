if instance_exists(oFrogSpawner)
{
	if (oFrogSpawner.frogstokill>0) {oFrogSpawner.frogstokill-=1;}
}
play_sound(snFrogD,false);
if instance_exists(oRoomController)
{ 
oRoomController.alarm[5]=1;
oRoomController.alarm[0]=1;
}
if (mytonq!=noone)
{
if instance_exists(mytonq) {instance_destroy(mytonq);}

}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");