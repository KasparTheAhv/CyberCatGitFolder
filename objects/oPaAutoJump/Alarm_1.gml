var settingsmap = ds_map_secure_load("settings.sav");

if !(instance_exists(oYes))
{
	if (autoJump==1)
	{
	autoJump=0;
	ds_map_set(settingsmap,"autoJump",autoJump);
	} else {
	autoJump=1;
	ds_map_set(settingsmap,"autoJump",autoJump);	
	}
} 
global.autoJump=autoJump;
ds_map_secure_save(settingsmap,"settings.sav");
if (autoJump==1) {img_index=13;} else {img_index=14;}