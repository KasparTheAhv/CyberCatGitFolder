image_angle=0;
alpha=1;
fadealpha=0;
clocolor=c_white;
menulock=false;
xx=0;

notesArrow_x = global.gameWidth*0.09;
notesArrow_y = global.gameHeight*0.05;
notesArrowYSCALE= 3;

if !(audio_is_playing(MenuMusic))
{
var s = audio_play_sound(MenuMusic, 100, true);
audio_sound_gain(s, 0.22, 1); 
}
alarm[9]=7200;
camera_set_view_size(view_camera[0],800,global.menuH);
camera_set_view_pos(view_camera[0],0,(400+global.menudif));

gui_width = room_width;
gui_height = room_height;
gui_margin = 80;
back_scale=gui_height/64;
view_width=camera_get_view_width(view_camera[0]);
menu_x = gui_width+100;
menu_y = gui_height - gui_margin;
menu_x_target = view_width*0.9;
menu_speed = 25; //lower is faster
menu_itemheight = font_get_size(fOrbitron);
menu_committed = -1;
menu_control = true;
gH=global.gameHeight;
colorlock=false;

if (global.isAndroid)
{
menu[2] = "Meow Game";
menu[1] = "Purrsonality";
menu[0] = "Praised";	
} else {
menu[3]	= "Meow Game";
menu[2] = "Purrsonality";
menu[1] = "Praised";
menu[0] = "Escate";
}



colorlock=false;
menu_items = array_length(menu);
menu_top= menu_y - ((menu_itemheight * 1.5)* menu_items);
menu_cursor = -1;
scribble_anim_reset();
//SCRIBBLE
color="[#FFFFFF]";
colorwhite= "[#FFFFFF]";
scale=global.scaler*1;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=scale*0.35;
textscale=string(textscale);
textscale="[scale,"+string(textscale)+"]";
textscaleMini=scale*0.50;
textscaleMini=string(textscaleMini);
textscaleMini="[scale,"+string(textscaleMini)+"]";
textscaleVersion=scale*0.4;
textscaleVersion=string(textscaleVersion);
textscaleVersion="[scale,"+string(textscaleVersion)+"]";
tmap = layer_tilemap_get_id("TestTiles");
tilemap_x(tmap,xx);
tmap2 = layer_tilemap_get_id("TestTiles2");
tilemap_x(tmap2,xx);
tmap3 = layer_tilemap_get_id("House");
tilemap_x(tmap3,xx);
tmap4 = layer_tilemap_get_id("Roads");
tilemap_x(tmap4,xx);
tmap5 = layer_tilemap_get_id("TestTiles3");
tilemap_x(tmap5,xx);
if layer_exists("Clouds")
{
var cloudlay = layer_background_get_id("Clouds");
layer_background_xscale(cloudlay, 0.5);
layer_background_yscale(cloudlay, 0.5);
}
verX=-220;
verY=gH-50;


if (global.isAndroid)
{
	if (global.loading==3) or (global.loading==5)
	{
	alarm[5]=1;
	} else {
	alarm[5]=300;	
	}
}

if (os_type==os_windows) or (os_type==os_operagx)
{
	global.loading=4;	
}



textwhole2=string(textscale)+"[fOrbitronBigOut][fa_center][fa_bottom][alpha,0.6]"+string(color);
textwholegreeting=string(textscaleMini)+"[rainbow][fOrbitronBigOut][fa_center][fa_bottom]";
textwhole=string(textscaleVersion)+"[fOrbitronBigOut][fa_left][fa_bottom]"+string(colorwhite)+"Beta: v"+string(GM_version);


