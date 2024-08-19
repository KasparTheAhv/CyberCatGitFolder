image_speed=0;
image_index=1;
image_alpha=1;
drawName=false;
var settingsmap=ds_map_secure_load("settings.sav");
Themaxlvl=ds_map_find_value(settingsmap,"maxlvl");
unlocked=false;
levelnr=noone;
whatvar=noone;
whereto=noone;
myadunlocked=false;
rW=room_width;
rH=room_height;

actuallevel=noone;
lvlblend=c_white;
//SCRIBBLE
color="[#FFFFFF]";
scale=0.25;
textalpha="[alpha,"+string(image_alpha)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
slots=0;
slot1index=-1;
slot2index=-1;
