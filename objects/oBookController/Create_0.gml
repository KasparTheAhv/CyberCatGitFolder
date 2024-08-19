	self.depth=depth+10;
	image_alpha=0;
	fadein=false;
	alarm[1]=4;
	play_sound(snWhoosh,false);
	var map =ds_map_secure_load("settings.sav")
	maxbook = ds_map_find_value(map,"maxbook");
for (var i=1; i<10;i++) // i<x x peab olema ruumide arv + 1 . Not to forget et esimene room0 mitte room1
	{
		with(instance_create_layer(x,y,"Characters",oBooks))	
		{
		image_xscale=4;
		image_yscale=4;
		booknr=i;
		alarm[0]=1;
		}
	}
