working=false; // 70px x 58px    key 140 x 37
xx = camera_get_view_x(view_camera[0]);
yy = camera_get_view_y(view_camera[0]);
viewH=camera_get_view_height(view_camera[0]);
viewW=camera_get_view_width(view_camera[0]);
draw_self();
menuOn=false;
exitlock=false;
scaleH=viewH/117;
scaleW=scaleH; //round(viewW/142);
rescaleH=round(viewH/64)+1;
rescaleW=round(viewW/64)+1;

// black aared dist from mid
fromMid=70*scaleW;


boardscale=round(viewH/180);
keyboard=0;
brad=34*boardscale*0.5;
playable=false;
keyupcol=c_white;
keydowncol=c_white;
keyentercol=c_white;
keybackcol=c_white;
rexmod=viewW*0.29;
reymod=viewH*0.465;
reymod2=viewH*0.255;
menualpha=0;
locker=false;
showeaster=false;
image_speed=0.5;
alphadown=false;
gamestarted=false;
keyboardlock=false;
count=30;
firingdelay=0;
recoil=0;
//SCRIBBLE
alpha=1;
alphatext=0;
color="[#FFFFFF]";
scale=0.35;
textalpha="[alpha,"+string(alpha)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
drawreward=false;
rewardalpha=0;