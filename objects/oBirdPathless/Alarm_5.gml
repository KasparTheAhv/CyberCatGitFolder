//@desc chase player
if !instance_exists(oPlayerGod)
{
flyspd=choose(1.5,1.75,2,2.5);
speedmod=1;	
pathstartloc=random(1);	image_blend=c_white;
direction=choose(0,180); speed=flyspd; alarm[5]=-1; exit;
}
image_blend=c_aqua;
mystandard=irandom_range(0,500);
var xx=oFollowPlayer.x + irandom_range(-150,150);
var yy=oFollowPlayer.y+250-mystandard;
move_towards_point(xx,yy,flyspd*speedmod);
direction=point_direction(x,y,xx,yy);
alarm[5]=choose(100,120,140,180);