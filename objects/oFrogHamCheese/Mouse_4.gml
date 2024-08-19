/// @desc
if !(instance_exists(oTextFloat))
	{
		var whatroom=room_get_name(room);
		var settingsmap=ds_map_secure_load("settings.sav");
		var key=string(whatroom)+"Egg2";
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
		text="Are those frogs dancing on what appears to\nbe a ham and cheese sandwiches from geometry dash?\nAnd failing to hit the griddy?";
		
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=180;
	}

	}