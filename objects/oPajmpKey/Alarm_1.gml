if !(instance_exists(oYes))
{


var settingsmap=ds_map_secure_load("settings.sav");
var js3_x=ds_map_find_value(settingsmap,"JS3X");
var js3_y=ds_map_find_value(settingsmap,"JS3Y");

if (global.isAndroid)
{
	if (global.jumpkey==0) 
	{	
		global.jumpkey=1;
		if !instance_exists(oJumpKey) {instance_create_layer(js3_x,js3_y,"Particles",oJumpKey);}
		if !instance_exists(oAKSlider) {instance_create_layer(oPause.gW*0.8,y,"Particles",oAKSlider);}
		ds_map_set(settingsmap,"jumpkey",1);
		ds_map_secure_save(settingsmap,"settings.sav");
		with(instance_create_layer(js3_x,js3_y,"Particles",oConfigureJS))
		{
		slavename=2;
		slave=instance_nearest(x,y,oJumpKey);
		}
		exit;
	}

	if (global.jumpkey==1) 
	{	
		global.jumpkey=0;
		if instance_exists(oJumpKey) {instance_destroy(oJumpKey);}
		ds_map_set(settingsmap,"jumpkey",0);
		ds_map_secure_save(settingsmap,"settings.sav");
		
		with(oConfigureJS)
		{
			if (slavename==2) {instance_destroy(self);}
		}
		exit;
	}
}
		

}