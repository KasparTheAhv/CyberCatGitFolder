/// @desc change settings

var settingsmap = ds_map_secure_load("settings.sav")

clicked=true;
var butX =testGuiW*0.6;
var but1y=testGuiH*0.25;
var but2y=testGuiH*0.40;
var but3y=testGuiH*0.55;
var but4y=testGuiH*0.70;
var but5y=testGuiH*0.85;
var mox = device_mouse_x_to_gui(0);
var moy = device_mouse_y_to_gui(0);


// actionid per nupp
if (point_distance(mox,moy,butX,but1y)<50) {		
	if (global.GFX1==1) {global.GFX1=0;ds_map_set(settingsmap,"GFX1",0);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;exit;}
	if (global.GFX1==0) {global.GFX1=1;ds_map_set(settingsmap,"GFX1",1);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;exit;}	
	}
if (point_distance(mox,moy,butX,but2y)<50) {
	if (global.GFX2!=60) {global.GFX2=60;ds_map_set(settingsmap,"GFX2",60);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;game_set_speed(global.GFX2,gamespeed_fps);exit;}
	if (global.GFX2!=30) {global.GFX2=30;ds_map_set(settingsmap,"GFX2",30);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;game_set_speed(global.GFX2,gamespeed_fps);exit;}		
	}
if (point_distance(mox,moy,butX,but3y)<50) {	
	if (global.GFX3==1) {global.GFX3=0;ds_map_set(settingsmap,"GFX3",0);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;exit;}
	if (global.GFX3==0) {global.GFX3=1;ds_map_set(settingsmap,"GFX3",1);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;exit;}	
	}
if (point_distance(mox,moy,butX,but4y)<50) {
	if (global.GFX4==1) {global.GFX4=2;ds_map_set(settingsmap,"GFX4",2);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;
		if (global.GFX4==1) {display_set_timing_method(tm_countvsyncs);}
		if (global.GFX4==2) {display_set_timing_method(tm_systemtiming);}
		if (global.GFX4==3) {display_set_timing_method(tm_sleep);}
		exit;
		}
	if (global.GFX4==2) {global.GFX4=3;ds_map_set(settingsmap,"GFX4",3);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;
		if (global.GFX4==1) {display_set_timing_method(tm_countvsyncs);}
		if (global.GFX4==2) {display_set_timing_method(tm_systemtiming);}
		if (global.GFX4==3) {display_set_timing_method(tm_sleep);}
		exit;
		}	
	if (global.GFX4==3) {global.GFX4=1;ds_map_set(settingsmap,"GFX4",1);ds_map_secure_save(settingsmap,"settings.sav");alarm[7]=2;
		if (global.GFX4==1) {display_set_timing_method(tm_countvsyncs);}
		if (global.GFX4==2) {display_set_timing_method(tm_systemtiming);}
		if (global.GFX4==3) {display_set_timing_method(tm_sleep);}
		exit;
		}	
}
													
if (showGFX5)										
{													
if (point_distance(mox,moy,butX,but5y)<50) {
	
	var prevMargin = global.GFX5;
	var newMargin = prevMargin+1;
	if (newMargin>10) {newMargin=1;}
	global.GFX5=newMargin;
	ds_map_set(settingsmap,"GFX5",newMargin);
	ds_map_secure_save(settingsmap,"settings.sav");
	alarm[7]=2;
	exit;
	}
}






