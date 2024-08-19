whatexplodes=999;
howmuch=500;
counter=0;
gW=room_width;
gH=room_height;
image_alpha=1;
if !(audio_is_playing(MenuMusic))
{
var s = audio_play_sound(MenuMusic, 100, true);
audio_sound_gain(s, 0.18, 1);
}

camera_set_view_size(view_camera[0],800,global.menuH);
var picScale=(global.menuH/410);
var levelButtonScale = picScale*2;

// pre game skin setup
SkinReload(false);
var map= ds_map_secure_load("settings.sav");

block1= ds_map_find_value(map,"LvlBlo1");
if is_undefined(block1) {block1=0;} 
block2= ds_map_find_value(map,"LvlBlo2");
if is_undefined(block2) {block2=0;}
block3= ds_map_find_value(map,"LvlBlo3");
if is_undefined(block3) {block3=0;}
block4= ds_map_find_value(map,"LvlBlo4");
if is_undefined(block4) {block4=0;} 
block5= ds_map_find_value(map,"LvlBlo5");
if is_undefined(block5) {block5=0;}
block6= ds_map_find_value(map,"LvlBlo6");
if is_undefined(block6) {block6=0;}
block7= ds_map_find_value(map,"LvlBlo7");
if is_undefined(block7) {block7=0;} 

global.noadsatm=true;

if (global.noadsatm==true)
{
	block1=1;
	block2=1;
	block3=1;
	block4=1;
	block5=1;
	block6=1;
	block7=1;
}


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
for (var i=1; i<33;i++) // i<x x peab olema ruumide arv + 1 . Not to forget et esimene room0 mitte room1
	{
		with(instance_create_layer(x,y,"Instances",oLevel))	
		{
		image_xscale=levelButtonScale;
		image_yscale=levelButtonScale;
		picscale=picScale;
		slotY=	(36*levelButtonScale)+self.y;
		slotX=	(12*levelButtonScale)+self.x;
		slotX2=	(20*levelButtonScale)+self.x;
		image_alpha=1;
		levelnr=i;
		alarm[0]=2;
		}
	}

with(instance_create_layer(x,y,"Instances",oLevel))
		{
		image_xscale=levelButtonScale;
		image_yscale=levelButtonScale;
		picscale=picScale;
		slotY=	(36*levelButtonScale)+self.y;
		slotX=	(12*levelButtonScale)+self.x;
		slotX2=	(20*levelButtonScale)+self.x;
		image_alpha=1;
		levelnr=999;
		alarm[0]=2;
		}
		
		
		// Token checker
		// Do first and only token check
		
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