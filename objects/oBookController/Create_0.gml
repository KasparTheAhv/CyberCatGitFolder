self.depth=depth+10;
image_alpha=0;
fadein=false;
arrowYmod=0;
alarm[1]=4;
play_sound(snWhoosh,false);
var map =ds_map_secure_load("settings.sav")
maxbook = ds_map_find_value(map,"maxbook");
muutuja=global.GUI*70;
var book_scale = global.gameWidth/2400 * 4;
	
for (var i=1; i<11;i++) // i<x x peab olema ruumide arv + 1 . Not to forget et esimene room0 mitte room1
	{
		with(instance_create_layer(x,y,"Characters",oBooks))	
		{
		image_xscale=book_scale;
		image_yscale=book_scale;
		booknr=i;
		alarm[0]=1;
		}
	}
