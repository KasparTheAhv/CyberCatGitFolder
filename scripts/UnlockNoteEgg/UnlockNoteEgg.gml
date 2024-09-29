// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UnlockNoteEgg(EggOrNote,whatnr){
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+string(argument[0])+string(argument[1]);
	var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			if (string(argument[0])=="Egg") {isEgg=true;} else {isEgg=false;}
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
}