gW=global.gameWidth;
gH=global.gameHeight;
xx=gW*0.5;
yy=gH*0.5;
textsca=0;
self.x=gW*0.4;
self.y=gH*0.57;
questionx=gW*0.5;
questiony=gH*0.41;
vanish=false;
text="Yes";
leave=false;
image_xscale=5;
image_yscale=3;
textquestion="You sure you\nwant to leave?";
textwhole1="";
textwhole3="";
textwhole2="";
rectscaler=0;
scaler=global.scaler;

mymaxWhalf=gW*0.4*0.5;
mymaxHhalf=gH*0.45*0.5;

//SCRIBBLE
color="[#FFFFFF]";
coloryes="[#E55B5B]";
colorno="[#FFFFFF]";
scale=scaler*2;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=string(rectscaler);
textscale="[scale,"+string(textscale)+"][fa_center][fa_middle]";
mymaxerW=(mymaxWhalf*rectscaler);
mymaxerH=(mymaxHhalf*rectscaler);
draw_self();