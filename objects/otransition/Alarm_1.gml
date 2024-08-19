/// @description Insert description here
// You can write your code in this editor
if instance_exists(oRoomController)
{
	var map = ds_map_secure_load("settings.sav");
	var deathCount = ds_map_find_value(map,"deathCount");
	if is_undefined(deathCount) {deathCount=0;}
	
	// swap through global text nrs. 
	if (global.textnr<oPlayControllerA.maxlength-1)
	{
	global.textnr+=1;
	} else {global.textnr=0;}
	
	//
	text=global.text[global.textnr];
	
	if is_string(text)
	{
	text=string_replace_all(text,"{DEATH_COUNT}",string(deathCount));
	alltext=string(textscale)+string(textalpha)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(text);
	showtext=true;
	}
}
