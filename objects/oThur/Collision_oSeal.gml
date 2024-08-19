//if (colevent_id==10) && !(blocker)
	if !(blocker) && (room==Room11)
	{
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Egg1";
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
	blocker=true;
	text="Very creative but unfortunately\nseals can't eat gods\naccording to CyberCat wiki at least.";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
	}