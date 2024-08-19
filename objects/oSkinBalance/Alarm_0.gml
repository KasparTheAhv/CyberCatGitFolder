/// @desc check balance and create txt

if instance_exists(oSkinTxt) {instance_destroy(oSkinTxt);}

var settingsmap=ds_map_secure_load("settings.sav");
skintokens=ds_map_find_value(settingsmap,"skintokens");
	if is_undefined(skintokens)
	{ds_map_set(settingsmap,"skintokens",0);ds_map_secure_save(settingsmap,"settings.sav");}
skintokens=ds_map_find_value(settingsmap,"skintokens");


	with(instance_create_layer(round(x),round(y),"text",oSkinTxt))
	{
	textscale=other.textscale;
	textalpha=other.textalpha;
	color=other.coloure;
	skintokens=other.skintokens;	
	textwhole=string(textscale)+"[fa_center][fa_middle]"+string(color);
	}