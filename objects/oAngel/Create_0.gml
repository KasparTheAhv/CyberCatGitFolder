//@desc Create Event
enum angelstates
{
	stay,
	summon,
	fly,
}
global.soultype=0;	
elud=100;
maxelud=100;
mytar=self;
sumwid=0;
summondirection=noone;
summonx=noone;
summony=noone;
summonrate=0;
summonratemini=0;
section=0;
imangle=0;
current_state=angelstates.stay;
image_xscale=1.5;
image_yscale=1.5;
// wing movement and object movement 
image_speed=0;
rot=0
rotup=true;
rotspeed=8; // wing and object speed
speedon=false;
speeder=0;
// self tilt
tilt=0;
xx=x;
yy=y;
xxx=xx;
yyy=yy;
targetx=self.x;
targety=self.y+3;