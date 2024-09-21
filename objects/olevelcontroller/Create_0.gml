whatexplodes=999;
howmuch=500;
counter=0;
allowdraw=false;
gW=room_width;
gH=room_height;
image_alpha=1;
if !(audio_is_playing(MenuMusic))
{
	var s = audio_play_sound(MenuMusic, 100, true);
	audio_sound_gain(s, 0.18, 1);
}

camera_set_view_size(view_camera[0],800,global.menuH);



// pre game skin setup
SkinReload(false);

		
// Token checker -  Do first and only token check
var settingsmap=ds_map_secure_load("settings.sav");
var tokenscannedVer6 = ds_map_find_value(settingsmap,"tokenscannedVer6");
if (tokenscannedVer6==0)
{
	///// take away tokens
	var newtokens= 0;
	ds_map_set(settingsmap,"skintokens",newtokens);
	ds_map_set(settingsmap,"tokenscannedVer6",1);
	ds_map_secure_save(settingsmap,"settings.sav");
	alarm[2]=10;
	///// take away tokengiven
	for (var i = 0; i < 100; i++) 
	{
		var name = "Room"+string(i);	
		var roomname=asset_get_index(name);
		var settingsmap=ds_map_secure_load("settings.sav");
		ds_map_set(settingsmap,string(name)+"Token",0);
		ds_map_secure_save(settingsmap,"settings.sav");
		var newstatus= ds_map_find_value(settingsmap,string(roomname)+"Token");
		show_debug_message("Tokenstatus of "+string(name)+" is: "+string(newstatus));
	}
}

curskin=ds_map_find_value(settingsmap,"skin");
selectedskin=curskin;
global.skin=selectedskin;


//block cordinates
lockw=gW*0.3+64;
lockh=64;
//block
block1x=gW*0.55-32;
block1y=gH*0.2-32;

//block
block2x=gW*0.15-32;
block2y=gH*0.4-32;

//block
block3x=gW*0.55-32;
block3y=gH*0.4-32;
//block
block4x=gW*0.15-32;
block4y=gH*0.6-32;

//block
block5x=gW*0.55-32;
block5y=gH*0.6-32;

//block
block6x=gW*0.15-32;
block6y=gH*0.8-32;

//block
block7x=gW*0.55-32;
block7y=gH*0.8-32;

// Chapter selection
chapter=1;
// Generate level list:
alarm[1]=2;