/// @description Insert description here
// You can write your code in this editor
		text="Hi there! My name is Diglett.\nI just dug my way into this game\ncause you called.\n Btw, why am I in your contacts?";
	with (instance_create_layer(x,y-50,"Particles",oTextFloat))
	{
	extraheight=50;	
	target=other;
	text = other.text;
	length = string_length(text);
	timer=220;
	}
	
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
	
	