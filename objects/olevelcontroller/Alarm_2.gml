/// @desc Skin reset to 0 and get tokens from 100% rooms
show_debug_message("Settings skins to 0 , and getting tokens according to 100% rooms!");

// skin reset to 0
for (var i = 0; i < 50; i++)
{
var settingsmap= ds_map_secure_load("settings.sav");
var whatkey = "Skin"+string(i)+"Bought";
ds_map_set(settingsmap,whatkey,0);
ds_map_secure_save(settingsmap,"settings.sav")
}

// get tokens from 100% rooms
for (var i = 0; i < 100; i++) 
{
	var name = "Room"+string(i);	
	
	var roomname=asset_get_index(name);
	if room_exists(roomname)
	{
		show_debug_message("roomexists");
	TokenCheckerNoNoti(roomname);
	} else {show_debug_message("room no exist");}
}