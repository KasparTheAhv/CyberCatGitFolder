/// @desc
with (other)
{
var theirind= image_index;
}
 

// 8 party // 9 bacon

if (theirind==8)
{
	
	
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
	
	
instance_destroy(other);	
	if !instance_exists(oTextFloat)
	{
		var texter="How did you know it's\nmy birthday? well anyway,\nhere's something to\ncelebrate it with!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}
alarm[0]=60;
}

if (theirind==9)
{
	
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
instance_destroy(other);	
	if !instance_exists(oTextFloat)
	{
		var texter="Wow, a bacon hat!\nYou are so caring!\nI'll trade you my kitten.\nI suck at parenting.";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}
 instance_create_layer(x,y,"Characters",oKitten);
}

