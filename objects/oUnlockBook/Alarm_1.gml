var settingsmap=ds_map_secure_load("settings.sav");
var	maxbook=ds_map_find_value(settingsmap,"maxbook");
if (whatbook>maxbook) 
{
	ds_map_set(settingsmap,"maxbook",whatbook);
	ds_map_secure_save(settingsmap,"settings.sav");
}