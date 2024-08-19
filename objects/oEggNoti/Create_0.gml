/// @desc
//SCRIBBLE
isEgg=noone;
stage=0;
textcolor="[#4CFF4C]";
image_alpha=0;
textalpha="[alpha,"+string(image_alpha)+"]";
scastage=0;
scachanger=0;
scale=scachanger+(0.5*global.GUI);
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";

gW=display_get_gui_width();
gH=display_get_gui_height();
startx=gW*0.85;
x=startx;
middlex=gW*0.93;
starty=gH*0.5;
y=starty;
var same=string(textalpha)+string(textscale)+"[fa_center][fa_right]";
task0scri=string(same)+string(textcolor)+"Tasks:";
alarm[0]=5;
alarm[2]=10;