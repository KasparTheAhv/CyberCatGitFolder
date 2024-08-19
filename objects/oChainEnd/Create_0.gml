/// @desc
image_speed = 0
state = "normal"
//CREATE EVENT
state = 0;
hsp = 0;
vsp = 0;
weirdAccel = -0.2;
stopAccel = 0.99;
//grapPoint = instance_nearest(x,y,oPlayer);
myID = id;
angleFlop = 0.01;
segmentSpeed = -2;
mitmes=0;
image_xscale=0.5;
image_yscale=0.5;
depth=depth-14;
imangle =450;

if (room==Room1) {sprite_index=sRing; image_blend=c_yellow;}
