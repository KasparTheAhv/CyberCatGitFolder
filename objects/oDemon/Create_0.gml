/// @desc
enum demonstates
{
stay,
chase,
swing,
}
elud=100;
die=false;
maxelud=100;
demonangle=360;
mspeed=1.5;
extra=0;
coolingdown=false;
cur_state=demonstates.stay;
instance_create_layer(x,y,layer,oDemonSword);
//alarm[0]=60;
image_speed=1;
imangle=180;
xx=x+lengthdir_x(2,imangle);
yy=y+lengthdir_y(2,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}