//@desc Create Event
enum cthulustates
{
	stay,
	fly,
	fountain,
}
shielded=false;
current_state=cthulustates.stay;
//
image_xscale=3;
image_yscale=3;
// wing movement and object movement 
image_speed=0;
image_index=2;
rot=0
rotup=true;
rotspeed=9; // wing and object speed
speedon=false;
speeder=0;
// self tilt
tilt=0;
// imangle
imangle=0;
xx=x;
yy=y;
// elud
elud=50;
maxelud=50;
alarm[5]=100;
