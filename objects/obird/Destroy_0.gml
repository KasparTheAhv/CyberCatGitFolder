/// @description Insert description here
// You can write your code in this editor
if instance_exists(whatbase) {whatbase.mybirds-=1;}
play_sound(snShot,false);

if (visible) 
{
	if (global.GFX1==1)
	{
		part_particles_create(oRoomController.part_sys, x, y,oRoomController.part14,irandom_range(10,15));
	}
}

if (room==Room14)
{
	if (instance_number(oBirdBase)<=1)
	{
		if (instance_number(oBird)<=1)
		{
			with(oFriendBird)
			{
				bosskilled=true;
			}
		}	
	}
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");