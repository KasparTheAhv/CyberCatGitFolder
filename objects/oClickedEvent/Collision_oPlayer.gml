if (colevent_id==1) && !(blocker)
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
	text="I used to come up here to stargaze..\nuntil I realized it's a reapeating pattern.";
	follow = instance_nearest(x,y,oLocIndi);
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			}
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
}

if (colevent_id==4) && !(blocker)
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
	text="Ironically, even I can't see here..";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
		instance_destroy();
}
if (colevent_id==6) && !(blocker)
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
	text="Makes no sense to hit my head here...";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y+60,"Particles",oTextFloat))
	{
	extraheight=-60;	
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
		instance_destroy();
}
if (colevent_id==7) && !(blocker)
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
	text="What a silly car\nprobably owned by a goofy silly goober";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-60,"Particles",oTextFloat))
	{
	extraheight=60;	
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=210;
	}
		instance_destroy();
}
if (colevent_id==8) && !(blocker)
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
	text="Cool.. but now we need\nto restart the room tho";


with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=220;
	}
		instance_destroy();
}

if (colevent_id==9) && !(blocker)
{
	blocker=true;
	text="Oh Hi! I'm Kitty Pike. Come check this out..\nThe game is pawsome! Even my WinXP can run it!";

var towho=instance_nth_nearest(x,y,oLocIndi,2);
with (instance_create_layer(towho.x,towho.y+10,"Particles",oTextFloat))
	{
	extraheight=10;
	target=towho;
	text = other.text;
	length = string_length(text);
	timer=300;
	}
		instance_destroy();
}

if (colevent_id==10) && !(blocker)
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
	blocker=true;
	text="Wow! Look, a plane!";
	instance_create_layer(280,260,"Characters",oPlane);
	var towho=instance_nearest(x,y,oPlayer);
	with (instance_create_layer(towho.x,towho.y+10,"Particles",oTextFloat))
	{
	extraheight=20;
	target=towho;
	text = other.text;
	length = string_length(text);
	timer=300;
	}
		instance_destroy();
}

