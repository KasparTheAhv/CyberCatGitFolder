/// @description Insert description here
// You can write your code in this editor
if (room==Room17)
{
	var settingsmap = ds_map_secure_load("settings.sav")
	var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
	if is_undefined(prevValue){prevValue=0;}
	var neWvalue = prevValue+1;
	ds_map_set(settingsmap,"STATS_Kills",neWvalue);
	ds_map_secure_save(settingsmap,"settings.sav");
	if (instance_number(oDino)<=1)
	{
		oGUIBAR.task3="+ Task done!";	
		oGUIBAR.task3col="[#4CFF4C]";	
		oFollowPlayer.alarm[1]=40;
		repeat(2)
		{
			part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(17,25));
			part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));		
		}
		with (instance_create_layer(x,y,"Characters",oKey))
		{
			image_blend=c_aqua;
			keyid=2;
		}
	}
}