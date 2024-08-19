/// @desc

if instance_exists(oTextFloat) or instance_exists(oText) {exit;}

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
	text="That looks like the sun from OneShot";
	follow = instance_nearest(x,y,oLightbulb);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}