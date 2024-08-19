/// @description Insert description here
// You can write your code in this editor
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
alpha=1;
//
lel=0;
image_blend=c_white;
joonista=true;
var settingsmap=ds_map_secure_load("settings.sav");
var my_x=ds_map_find_value(settingsmap,"JS2X");
var my_y=ds_map_find_value(settingsmap,"JS2Y");
self.x=my_x;
self.y=my_y;
var slider=ds_map_find_value(settingsmap,"JS2S");
scaler=global.scaler;
pressed=false;
var scale1=2+(5.5*scaler*slider);
var scale=scale1;
image_xscale=scale*0.5;
image_yscale=scale*0.5;
draw_self();
// my touch
my_touch = -1;

if (global.isAndroid) {isAndroid=true;} else {isAndroid=false;}