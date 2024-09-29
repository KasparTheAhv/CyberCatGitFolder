image_speed=0;
image_index=10;
image_alpha=0;

unlocked=false;
booknr=noone;
whatvar=noone;
whereto=noone;
gW=global.gameWidth;
gH=global.gameHeight;
bookscaler= gW/2340;
image_xscale=4*bookscaler;
image_yscale=4*bookscaler;
actualbook=noone;
//SCRIBBLE
color="[#FFFFFF]";
scale=0.26;
textalpha="[alpha,"+string(image_alpha)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";

wid=sprite_get_width(sprite_index);
hei=sprite_get_height(sprite_index);