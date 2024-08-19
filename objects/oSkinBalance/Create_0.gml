/// @desc
image_xscale=2;
image_yscale=2;
image_speed=0;
image_index=11;
rW=room_width;
rH=room_height;
self.x=800*0.95;
self.y=400*0.3;
held=0;
held2=0;

open=false;

// text
txt="Gain 1 token whenever\nyou reach 100% in a room";


//SCRIBBLE
coloure="[#FFFFFF]";
if (global.isAndroid){scale=0.25;} else {scale=0.4;}

txtalpha=0;
textalpha="[alpha,"+string(txtalpha);

textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";


rectStartX=self.x-50;


textX=rectStartX-125;
textY=y+50;


rectW=250;
rectH=100;

alarm[0]=1;