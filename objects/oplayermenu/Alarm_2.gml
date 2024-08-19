/// @desc interaction
if (sprite_index!=sBird) {exit;}

alarm[2]=450;

if (kumb)
{
sprite=sPlayerGod;	
spriteGun=sGun;

if (variable_global_exists("sPlayerGod")==true)
{
sprite=global.sPlayerGod;
spriteGun=global.sGun;
}
	
maxframes=sprite_get_number(sprite);
kumb=false;	
xx=-100;
movegod=true;



} else { // text pop up above bird
kumb=true;

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
	alarm[3]=2;



}