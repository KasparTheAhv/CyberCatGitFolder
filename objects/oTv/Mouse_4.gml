/// @desc
if (noenergy) {exit;}

if (image_index==0)
{
	if (point_distance(x,y,mouse_x,mouse_y)<32) && (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<150)
	{
	// egg
	var whatroom=room_get_name(room);
		var settingsmap=ds_map_secure_load("settings.sav");
		var key=string(whatroom)+"Egg3";
		var prevvalue = ds_map_find_value(settingsmap,key);
		if is_undefined(prevvalue) or (prevvalue==0)
		{
			with (instance_create_layer(x,y,"BefEdge",oEggNoti))
			{
				isEgg=true;
			}
			ds_map_set(settingsmap,key,1);
			ds_map_secure_save(settingsmap,"settings.sav");
		}	

	image_speed=1;	
	}
}