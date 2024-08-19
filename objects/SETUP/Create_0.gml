/// @desc Set the game up
// when releasing for google play store // uncomment this function
gml_release_mode(true); 
global.invisible=false;
global.unityTesting=666;
global.gameWidth=display_get_width();
global.gameHeight=display_get_height();
global.loafing=false;
global.noBase=false;
global.lightningMode=0;

if (os_type==os_android) {global.isAndroid=true;} else {global.isAndroid=false;}


if (global.isAndroid) {var ideal_height=360;} else {var ideal_height=432;}
var aspect_ratio =global.gameWidth/global.gameHeight;
var ideal_width=ideal_height*aspect_ratio;


if (ideal_width & 1)
{
	ideal_width++;
}

// Ideal camera size
global.idealW=floor(ideal_width);
global.idealH=floor(ideal_height);


// set viewports to match desired cam size in game rooms
for (var i = 0; i < 31; i++)
{
var whatroom="Room"+string(i);
var roomid=asset_get_index(whatroom);
room_set_viewport(roomid,0,true,0,0,global.idealW,global.idealH);
}

// Set viewports to watch view in: main menu
var whatroom2="RoomMenu";
var roomid=asset_get_index(whatroom2);
var menuHeight=800/aspect_ratio;
global.menuH=menuHeight;
global.menudif=400-menuHeight;
room_set_viewport(roomid,0,true,0,0,800,menuHeight);
// Set viewports to watch view in: level select
var whatroom3="RoomLvl";
var roomid=asset_get_index(whatroom3);
room_set_width(roomid,800);
room_set_height(roomid,menuHeight);
room_set_viewport(roomid,0,true,0,0,800,menuHeight);
// Set viewports to watch view in: level select
var whatroom4="RoomSkins";
var roomid=asset_get_index(whatroom4);
room_set_height(roomid,menuHeight);
room_set_viewport(roomid,0,true,0,0,800,menuHeight);
// Set viewports to watch view in: level select
var whatroom5="RoomCredits";
var roomid=asset_get_index(whatroom5);
room_set_width(roomid,800);
room_set_height(roomid,menuHeight);
room_set_viewport(roomid,0,true,0,0,800,menuHeight);
// Set viewports to watch view in: level select
var whatroom6="RoomStats";
var roomid=asset_get_index(whatroom6);
room_set_width(roomid,800);
room_set_height(roomid,menuHeight);
room_set_viewport(roomid,0,true,0,0,800,menuHeight);

// BUTTONS FOR OVERLAY
global.debugButtonsAdded=false;

// Max comment calculation
var comment_grid = load_csv("comments.csv")
global.maxComments=ds_grid_height(comment_grid);


// BASIC SETUP GLOBALS'
global.camLooking=false;
global.camSwap=false;
global.desiredVSstate=false;
global.specialGreeting=false;
global.GoogleConnected=false;
global.admin=false;
global.noheal=false;
global.info="NO INFO YET";
global.loading=0;
global.fakeTileAlpha = 1;
global.textnr=0;
global.text="";
global.unityRDY=false;
global.timeNTP=0;
global.debugmenu=false;
global.cheat=false;
global.recMode=false;
scribble_font_bake_outline_8dir_2px("fOrbitron","fOrbitronOut",c_black,true);
scribble_font_bake_outline_8dir_2px("fOrbitron","fOrbitronOutWhite",c_blue,true);
scribble_font_bake_outline_8dir_2px("fOrbitronBig","fOrbitronBigOut",c_black,true);
scribble_font_bake_outline_8dir_2px("fOrbitronBig","fOrbitronBigOutWhite",c_blue,true);
scribble_font_set_default("fOrbitronOut");
audio_group_load(music);




// Set window size:
window_set_size(global.gameWidth,global.gameHeight);
display_set_gui_size(global.gameWidth,global.gameHeight);
surface_resize(application_surface,global.gameWidth,global.gameHeight);
//application_surface_draw_enable(false);
//application_surface_enable(false);
if (os_type==os_windows) or (os_type==os_operagx)
{
window_set_fullscreen(true);
} 

// Make a scaler for objects
global.scaler = global.gameWidth / 2340 ; // oletame et 0.907
var scalercorrect = (round(global.scaler*10))*0.095;
global.scaler= scalercorrect;




// Joystick positions:
var testGuiW=display_get_gui_width();
var testGuiH=display_get_gui_height();


// settings stuff
if (file_exists("settings.sav"))  // if played before, get previous settings
{
var settingsmap=ds_map_secure_load("settings.sav");

prevDate=ds_map_find_value(settingsmap,"prevDate");
	if is_undefined(prevDate)
	{ds_map_set(settingsmap,"prevDate",0);ds_map_secure_save(settingsmap,"settings.sav");}
prevDate=ds_map_find_value(settingsmap,"prevDate");

canDaily=ds_map_find_value(settingsmap,"canDaily");
	if is_undefined(canDaily)
	{ds_map_set(settingsmap,"canDaily",0);ds_map_secure_save(settingsmap,"settings.sav");}
canDaily=ds_map_find_value(settingsmap,"canDaily");


autoJump=ds_map_find_value(settingsmap,"autoJump");
	if is_undefined(autoJump)
	{ds_map_set(settingsmap,"autoJump",1);ds_map_secure_save(settingsmap,"settings.sav");}
autoJump=ds_map_find_value(settingsmap,"autoJump");
global.autoJump=autoJump;
//GFX1 setting1name="Particle Effects:";
//GFX2 setting2name="Max Framerate:";
//GFX3 setting3name="Wind/Leaves FX:";
//GFX4 setting4name="Display Mode:";
//GFX5 setting5name="Sleep Margin:";

GFX1=ds_map_find_value(settingsmap,"GFX1");
	if is_undefined(GFX1)
	{ds_map_set(settingsmap,"GFX1",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.GFX1=ds_map_find_value(settingsmap,"GFX1");

GFX2=ds_map_find_value(settingsmap,"GFX2");
	if is_undefined(GFX2)
	{ds_map_set(settingsmap,"GFX2",60);ds_map_secure_save(settingsmap,"settings.sav");}
global.GFX2=ds_map_find_value(settingsmap,"GFX2");

GFX3=ds_map_find_value(settingsmap,"GFX3");
	if is_undefined(GFX3)
	{ds_map_set(settingsmap,"GFX3",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.GFX3=ds_map_find_value(settingsmap,"GFX3");

GFX4=ds_map_find_value(settingsmap,"GFX4");
	if is_undefined(GFX4)
	{ds_map_set(settingsmap,"GFX4",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.GFX4=ds_map_find_value(settingsmap,"GFX4");

GFX5=ds_map_find_value(settingsmap,"GFX5");
	if is_undefined(GFX5)
	{ds_map_set(settingsmap,"GFX5",4);ds_map_secure_save(settingsmap,"settings.sav");}
global.GFX5=ds_map_find_value(settingsmap,"GFX5");

jumpkey=ds_map_find_value(settingsmap,"jumpkey");
	if is_undefined(jumpkey)
	{ds_map_set(settingsmap,"jumpkey",0);ds_map_secure_save(settingsmap,"settings.sav");}
global.jumpkey=ds_map_find_value(settingsmap,"jumpkey");
if (os_type!=os_android)
{
global.jumpkey=0;	
}


tokenscannedVer6=ds_map_find_value(settingsmap,"tokenscannedVer6");
	if is_undefined(tokenscannedVer6)
	{ds_map_set(settingsmap,"tokenscannedVer6",0);ds_map_secure_save(settingsmap,"settings.sav");}
tokenscannedVer6=ds_map_find_value(settingsmap,"tokenscannedVer6");


cloudfirstloaded=ds_map_find_value(settingsmap,"cloudfirstloaded");
	if is_undefined(cloudfirstloaded)
	{ds_map_set(settingsmap,"cloudfirstloaded",0);ds_map_secure_save(settingsmap,"settings.sav");}
cloudfirstloaded=ds_map_find_value(settingsmap,"cloudfirstloaded");

cloudsavetime=ds_map_find_value(settingsmap,"cloudsavetime");
	if is_undefined(cloudsavetime)
	{ds_map_set(settingsmap,"cloudsavetime",0);ds_map_secure_save(settingsmap,"settings.sav");}
cloudsavetime=ds_map_find_value(settingsmap,"cloudsavetime");

deathCount=ds_map_find_value(settingsmap,"deathCount");
	if is_undefined(deathCount)
	{ds_map_set(settingsmap,"deathCount",0);ds_map_secure_save(settingsmap,"settings.sav");}
deathCount=ds_map_find_value(settingsmap,"deathCount");

JSskinF=ds_map_find_value(settingsmap,"JSskinF");
	if is_undefined(JSskinF)
	{ds_map_set(settingsmap,"JSskinF",1);ds_map_secure_save(settingsmap,"settings.sav");}
JSskinF=ds_map_find_value(settingsmap,"JSskinF");

JSskinB=ds_map_find_value(settingsmap,"JSskinB");
	if is_undefined(JSskinB)
	{ds_map_set(settingsmap,"JSskinB",0);ds_map_secure_save(settingsmap,"settings.sav");}
JSskinB=ds_map_find_value(settingsmap,"JSskinB");

skin=ds_map_find_value(settingsmap,"skin");
	if is_undefined(skin)
	{ds_map_set(settingsmap,"skin",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.skin=ds_map_find_value(settingsmap,"skin");

skintokens=ds_map_find_value(settingsmap,"skintokens");
	if is_undefined(skintokens)
	{ds_map_set(settingsmap,"skintokens",0);ds_map_secure_save(settingsmap,"settings.sav");}
skintokens=ds_map_find_value(settingsmap,"skintokens");

AdBlockRemover=ds_map_find_value(settingsmap,"AdBlockRemover");
	if is_undefined(AdBlockRemover)
	{ds_map_set(settingsmap,"AdBlockRemover",0);ds_map_secure_save(settingsmap,"settings.sav");}
AdBlockRemover=ds_map_find_value(settingsmap,"AdBlockRemover");

maxlvl=ds_map_find_value(settingsmap,"maxlvl");
	if is_undefined(maxlvl)
	{ds_map_set(settingsmap,"maxlvl",0);ds_map_secure_save(settingsmap,"settings.sav");}
maxlvl=ds_map_find_value(settingsmap,"maxlvl");
// AdBlockRemover
AdBlockRemover=ds_map_find_value(settingsmap,"AdBlockRemover");
if (AdBlockRemover==0)
{
	if (maxlvl>=4) 
	{ds_map_set(settingsmap,"LvlBlo1",1);}
	if (maxlvl>=8) 
	{ds_map_set(settingsmap,"LvlBlo2",1);}
	if (maxlvl>=12) 
	{ds_map_set(settingsmap,"LvlBlo3",1);}
	if (maxlvl>=16) 
	{ds_map_set(settingsmap,"LvlBlo4",1);}
	if (maxlvl>=20) 
	{ds_map_set(settingsmap,"LvlBlo5",1);}
	if (maxlvl>=24) 
	{ds_map_set(settingsmap,"LvlBlo6",1);}
	if (maxlvl>=28)
	{ds_map_set(settingsmap,"LvlBlo7",1);}
ds_map_set(settingsmap,"AdBlockRemover",1);
ds_map_secure_save(settingsmap,"settings.sav");	
}

///
lastlvl=ds_map_find_value(settingsmap,"lastlvl");
	if is_undefined(lastlvl)
	{ds_map_set(settingsmap,"lastlvl",0);ds_map_secure_save(settingsmap,"settings.sav");}
lastlvl=ds_map_find_value(settingsmap,"lastlvl");
//
maxbook=ds_map_find_value(settingsmap,"maxbook");
	if is_undefined(maxbook)
	{ds_map_set(settingsmap,"maxbook",0);ds_map_secure_save(settingsmap,"settings.sav");}
maxbook=ds_map_find_value(settingsmap,"maxbook");
//

///////////////// Settings

//transparency
global.AL=ds_map_find_value(settingsmap,"setTransparency");
	if is_undefined(global.AL)
	{ds_map_set(settingsmap,"setTransparency",0.8);ds_map_secure_save(settingsmap,"settings.sav");}
global.AL=ds_map_find_value(settingsmap,"setTransparency");
//gui
global.GUI=ds_map_find_value(settingsmap,"GUI");
	if is_undefined(global.GUI)
	{ds_map_set(settingsmap,"GUI",0.5);ds_map_secure_save(settingsmap,"settings.sav");}
global.GUI=ds_map_find_value(settingsmap,"GUI");
	//Joystick sizes
global.JS1S=ds_map_find_value(settingsmap,"JS1S");
	if is_undefined(global.JS1S)
	{ds_map_set(settingsmap,"JS1S",0.5);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS1S=ds_map_find_value(settingsmap,"JS1S");
global.JS2S=ds_map_find_value(settingsmap,"JS2S");
	if is_undefined(global.JS2S)
	{ds_map_set(settingsmap,"JS2S",0.5);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS2S=ds_map_find_value(settingsmap,"JS2S");
//JS2
global.JS1X=ds_map_find_value(settingsmap,"JS1X");
	if is_undefined(global.JS1X)
	{ var JS1X = round(testGuiW*0.16); 
	ds_map_set(settingsmap,"JS1X",JS1X);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS1X=ds_map_find_value(settingsmap,"JS1X");
global.JS1Y=ds_map_find_value(settingsmap,"JS1Y");
	if is_undefined(global.JS1Y)
	{ var JS1Y = round(testGuiH*0.8); 
	ds_map_set(settingsmap,"JS1Y",JS1Y);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS1Y=ds_map_find_value(settingsmap,"JS1Y");
	//JS2
global.JS2X=ds_map_find_value(settingsmap,"JS2X");
	if is_undefined(global.JS2X)
	{ var JS2X = round(testGuiW*0.84); 
	ds_map_set(settingsmap,"JS2X",JS2X);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS2X=ds_map_find_value(settingsmap,"JS2X");
global.JS2Y=ds_map_find_value(settingsmap,"JS2Y");
	if is_undefined(global.JS2Y)
	{ var JS2Y = round(testGuiH*0.8); 
	ds_map_set(settingsmap,"JS2Y",JS2Y);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS2Y=ds_map_find_value(settingsmap,"JS2Y");
	//JS3
global.JS3X=ds_map_find_value(settingsmap,"JS3X");
	if is_undefined(global.JS3X)
	{ var JS3X = round(testGuiW*0.5); 
	ds_map_set(settingsmap,"JS3X",JS3X);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS3X=ds_map_find_value(settingsmap,"JS3X");
global.JS3Y=ds_map_find_value(settingsmap,"JS3Y");
	if is_undefined(global.JS3Y)
	{ var JS3Y = round(testGuiH*0.8); 
	ds_map_set(settingsmap,"JS3Y",JS3Y);ds_map_secure_save(settingsmap,"settings.sav");}
global.JS3Y=ds_map_find_value(settingsmap,"JS3Y");
	// SETTINGS
global.volume_sfx=ds_map_find_value(settingsmap,"volume_sfx");
	if is_undefined(global.volume_sfx)
	{ds_map_set(settingsmap,"volume_sfx",0.8);ds_map_secure_save(settingsmap,"settings.sav");}
global.volume_sfx=ds_map_find_value(settingsmap,"volume_sfx");
global.volume_mfx=ds_map_find_value(settingsmap,"volume_mfx");
	if is_undefined(global.volume_mfx)
	{ds_map_set(settingsmap,"volume_mfx",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.volume_mfx=ds_map_find_value(settingsmap,"volume_mfx");
global.music_on=ds_map_find_value(settingsmap,"music_on");
	if is_undefined(global.music_on)
	{ds_map_set(settingsmap,"music_on",1);ds_map_secure_save(settingsmap,"settings.sav");}
global.music_on=ds_map_find_value(settingsmap,"music_on");
global.language=ds_map_find_value(settingsmap,"language");
	if is_undefined(global.language)
	{ds_map_set(settingsmap,"language",0);ds_map_secure_save(settingsmap,"settings.sav");}
global.language=ds_map_find_value(settingsmap,"language");
var tutorial=ds_map_find_value(settingsmap,"tutorial");
	if is_undefined(tutorial)
	{ds_map_set(settingsmap,"tutorial",0);ds_map_secure_save(settingsmap,"settings.sav");}
tutorial=ds_map_find_value(settingsmap,"tutorial");


} else {  // IF NO FILE EXIST CREATE A NEWFILE // ///////////////////////////////////
	
		
settingsmap=ds_map_create();

ds_map_set(settingsmap,"canDaily",0);
ds_map_secure_save(settingsmap,"settings.sav")
global.canDaily=ds_map_find_value(settingsmap,"canDaily");


ds_map_set(settingsmap,"prevDate",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.prevDate=ds_map_find_value(settingsmap,"prevDate");


ds_map_set(settingsmap,"autoJump",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.autoJump=ds_map_find_value(settingsmap,"autoJump");

ds_map_set(settingsmap,"jumpkey",0);
ds_map_secure_save(settingsmap,"settings.sav")
global.jumpkey=ds_map_find_value(settingsmap,"jumpkey");
if (os_type!=os_android)
{
global.jumpkey=0;	
}


ds_map_set(settingsmap,"GFX1",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.GFX1=ds_map_find_value(settingsmap,"GFX1");

ds_map_set(settingsmap,"GFX2",60);
ds_map_secure_save(settingsmap,"settings.sav")
global.GFX2=ds_map_find_value(settingsmap,"GFX2");

ds_map_set(settingsmap,"GFX3",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.GFX3=ds_map_find_value(settingsmap,"GFX3");

ds_map_set(settingsmap,"GFX4",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.GFX4=ds_map_find_value(settingsmap,"GFX4");

ds_map_set(settingsmap,"GFX5",4);
ds_map_secure_save(settingsmap,"settings.sav")
global.GFX5=ds_map_find_value(settingsmap,"GFX5");

ds_map_set(settingsmap,"tokenscannedVer6",0);
ds_map_secure_save(settingsmap,"settings.sav")
tokenscannedVer6=ds_map_find_value(settingsmap,"tokenscannedVer6");
ds_map_set(settingsmap,"skintokens",0);
ds_map_secure_save(settingsmap,"settings.sav")
skintokens=ds_map_find_value(settingsmap,"skintokens");
ds_map_set(settingsmap,"skin",1);
ds_map_secure_save(settingsmap,"settings.sav")
global.skin=ds_map_find_value(settingsmap,"skin");
ds_map_set(settingsmap,"JSskinB",0);
ds_map_secure_save(settingsmap,"settings.sav")
JSskinB=ds_map_find_value(settingsmap,"JSskinB");
ds_map_set(settingsmap,"JSskinF",0);
ds_map_secure_save(settingsmap,"settings.sav")
JSskinF=ds_map_find_value(settingsmap,"JSskinF");
ds_map_set(settingsmap,"cloudfirstloaded",0);
ds_map_secure_save(settingsmap,"settings.sav")
cloudfirstloaded=ds_map_find_value(settingsmap,"cloudfirstloaded");
ds_map_set(settingsmap,"cloudsavetime",0);
ds_map_secure_save(settingsmap,"settings.sav")
cloudsavetime=ds_map_find_value(settingsmap,"cloudsavetime");
ds_map_set(settingsmap,"deathCount",0);
ds_map_secure_save(settingsmap,"settings.sav")
deathCount=ds_map_find_value(settingsmap,"deathCount");
ds_map_set(settingsmap,"AdBlockRemover",1);
ds_map_secure_save(settingsmap,"settings.sav");
AdBlockRemover=ds_map_find_value(settingsmap,"AdBlockRemover");
ds_map_set(settingsmap,"lastlvl",0);
ds_map_secure_save(settingsmap,"settings.sav");
lastlvl=ds_map_find_value(settingsmap,"lastlvl");
ds_map_set(settingsmap,"maxbook",0);
ds_map_secure_save(settingsmap,"settings.sav");
maxbook=ds_map_find_value(settingsmap,"maxbook");
// if testing mode remove lvlblockers of ad system
var testing=false;
if (testing==true) {
	if (maxlvl>=4) 
	{ds_map_set(settingsmap,"LvlBlo1",1);}
	if (maxlvl>=8) 
	{ds_map_set(settingsmap,"LvlBlo2",1);}
	if (maxlvl>=12) 
	{ds_map_set(settingsmap,"LvlBlo3",1);}
	if (maxlvl>=16) 
	{ds_map_set(settingsmap,"LvlBlo4",1);}
	if (maxlvl>=20) 
	{ds_map_set(settingsmap,"LvlBlo5",1);}
	if (maxlvl>=24) 
	{ds_map_set(settingsmap,"LvlBlo6",1);}
	if (maxlvl>=28)
	{ds_map_set(settingsmap,"LvlBlo7",1);}
ds_map_set(settingsmap,"AdBlockRemover",1);
ds_map_secure_save(settingsmap,"settings.sav");	
	}else{
ds_map_set(settingsmap,"maxlvl",0);}
ds_map_secure_save(settingsmap,"settings.sav");
maxlvl=ds_map_find_value(settingsmap,"maxlvl");
ds_map_set(settingsmap,"JS1S",0.5);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS1S=ds_map_find_value(settingsmap,"JS1S");
ds_map_set(settingsmap,"JS2S",0.5);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS2S=ds_map_find_value(settingsmap,"JS2S");
var JS1X = testGuiW*0.16;
ds_map_set(settingsmap,"JS1X",JS1X);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS1X=ds_map_find_value(settingsmap,"JS1X");
var JS1Y = testGuiH*0.8;
ds_map_set(settingsmap,"JS1Y",JS1Y);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS1Y=ds_map_find_value(settingsmap,"JS1Y");
var JS2X = testGuiW*0.84;
ds_map_set(settingsmap,"JS2X",JS2X);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS2X=ds_map_find_value(settingsmap,"JS2X");
var JS2Y = testGuiH*0.8;
ds_map_set(settingsmap,"JS2Y",JS2Y);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS2Y=ds_map_find_value(settingsmap,"JS2Y");
//js3
var JS3X = testGuiW*0.5;
ds_map_set(settingsmap,"JS3X",JS3X);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS3X=ds_map_find_value(settingsmap,"JS3X");
var JS3Y = testGuiH*0.8;
ds_map_set(settingsmap,"JS3Y",JS3Y);
ds_map_secure_save(settingsmap,"settings.sav");
global.JS3Y=ds_map_find_value(settingsmap,"JS3Y");
//
ds_map_set(settingsmap,"volume_sfx",0.8);
ds_map_secure_save(settingsmap,"settings.sav");
global.volume_sfx=ds_map_find_value(settingsmap,"volume_sfx");
ds_map_set(settingsmap,"volume_mfx",1);
ds_map_secure_save(settingsmap,"settings.sav");
global.volume_mfx=ds_map_find_value(settingsmap,"volume_mfx");
ds_map_set(settingsmap,"music_on",1);
ds_map_secure_save(settingsmap,"settings.sav");
global.music_on=ds_map_find_value(settingsmap,"music_on");
ds_map_set(settingsmap,"language",0);
ds_map_secure_save(settingsmap,"settings.sav");
global.language=ds_map_find_value(settingsmap,"language");
ds_map_set(settingsmap,"tutorial",0);
ds_map_secure_save(settingsmap,"settings.sav");
var tutorial = 0;
ds_map_set(settingsmap,"GUI",0.5);
ds_map_secure_save(settingsmap,"settings.sav");
global.GUI=ds_map_find_value(settingsmap,"GUI");
ds_map_set(settingsmap,"setTransparency",0.8);
ds_map_secure_save(settingsmap,"settings.sav");
global.AL=ds_map_find_value(settingsmap,"setTransparency");
}

//Reapply locks
var apply=false;

if (apply)
{
ds_map_set(settingsmap,"AdBlockRemover",0);	
ds_map_set(settingsmap,"LvlBlo1",0);
ds_map_set(settingsmap,"LvlBlo2",0);
ds_map_set(settingsmap,"LvlBlo3",0);
ds_map_set(settingsmap,"LvlBlo4",0);
ds_map_set(settingsmap,"LvlBlo5",0);
ds_map_set(settingsmap,"LvlBlo6",0);
ds_map_set(settingsmap,"LvlBlo7",0);
ds_map_secure_save(settingsmap,"settings.sav");
}
// Randomise puzzle gen
randomise();

// texture prefetch
var _tex_array = texturegroup_get_textures("NotInGame");
for (var i = 0; i < array_length(_tex_array); ++i;)
{
    texture_prefetch(_tex_array[i]);
}

alarm[1]=40;