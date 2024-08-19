/// @desc
//sPause , 9

testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
scaler=global.scaler;
scale=(1+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
image_speed=0;
muutuja=global.GUI*70;
if (os_type=os_android)
{
self.x=round(testGuiW*0.45);
} else {
self.x=round(testGuiW*0.5);
}
self.y=round(testGuiH*0.30)+muutuja;

var settingsmap = ds_map_secure_load("settings.sav");
autoJump= ds_map_find_value(settingsmap,"autoJump");

if (autoJump==1) {img_index=13;} else {img_index=14;}