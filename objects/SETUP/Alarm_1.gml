///@desc WHAT ROOM TO START WITH
var settingsmap=ds_map_secure_load("settings.sav");
var fG = ds_map_find_value(settingsmap,"firstGraphics");

//// First display setup
if is_undefined(fG)
{
	show_debug_message("firstGraphics is undefined, starting initial setup!");
	var _freq = display_get_frequency();	
	if (_freq == 60)
	{
	    global.GFX2=60;
		global.GFX4=1;
		show_debug_message("firstGraphics set to 60fps!");
		ds_map_set(settingsmap,"GFX2",60);
		ds_map_set(settingsmap,"GFX4",1);
	}
	else
	{
	    global.GFX2=30;
		global.GFX4=2;
		show_debug_message("firstGraphics set to 30fps!");
		ds_map_set(settingsmap,"GFX2",30);
		ds_map_set(settingsmap,"GFX4",2);
	} 	
	
	if (_freq >= 90) {
	global.GFX2=60;
	global.GFX4=3;
	show_debug_message("firstGraphics set to =/+90fps!");
	ds_map_set(settingsmap,"GFX2",60);
	ds_map_set(settingsmap,"GFX4",3);
	}
	ds_map_set(settingsmap,"firstGraphics",1);
	ds_map_secure_save(settingsmap,"settings.sav");

} else {show_debug_message("firstGraphics no need to setup!");}

// GFX1 setting1name="Particle Effects:"; 
// - This gets checked within code

// GFX2 setting2name="Max Framerate:";
game_set_speed(global.GFX2, gamespeed_fps);

// GFX3 setting3name="Wind/Leaves FX:";
// - This gets checked within code

// GFX4 setting4name="Display Mode:";
if (global.GFX4==1) {display_set_timing_method(tm_countvsyncs);}
if (global.GFX4==2) {display_set_timing_method(tm_systemtiming);}
if (global.GFX4==3) {display_set_timing_method(tm_sleep);}

// GFX5 setting5name="Sleep Margin:";
display_set_sleep_margin(global.GFX5);


// maximise gui
display_set_gui_maximise();


// ANDROID
if (global.isAndroid) { 
	SlideTransition(TRANS_MODE.GOTO,RoomMenu);
// WINDOWS
	} else {   
global.admin=false; SlideTransition(TRANS_MODE.GOTO,RoomMenu); 
}

alarm[3]=2;