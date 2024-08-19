/// @description Insert description here
// You can write your code in this editor
findings=0;
curfinding=0;
maxfindings=0;
limit=30;
message="";
keyboard_string="";
textx=room_width*0.35;
textx2=room_width*0.9;
rectYtarget=room_height*0.16;
textYtarget=room_height*0.08;




rectY=-100;
texty=-50;

sKeyboardInput="";
textscale=0.35;

searchOpen=false;

image_xscale=0.5;
image_yscale=0.5;
sprite_index=sPause;
image_speed=0;
image_index=10;
y=0.3*room_height;
x=0.95*room_width;
wholetext2="[fOrbitronBig][fa_right][fa_middle][scale,"+string(textscale)+"]";
wholetext1="[fOrbitronBig][fa_center][fa_middle][scale,"+string(textscale)+"] Searching user: ";