/// @desc



if (ready)

{
	ready= false;
	alarm[0]=40;
	// egg
	var whatroom=room_get_name(room);
		var settingsmap=ds_map_secure_load("settings.sav");
		var key=string(whatroom)+"Egg4";
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
	text="Yuck, who farted?";
	follow = instance_nearest(x,y,oFollowPlayer);
	with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}	
	// Float text
		
	alarm[3]=160;
}