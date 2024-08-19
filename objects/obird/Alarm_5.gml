///@desc chase player
if !instance_exists(oPlayerGod)
{
flyspd=choose(1.5,1.75,2,2.5);
speedmod=1;	
pathstartloc=random_range(0,1);	
alarm[3]=1; alarm[5]=-1; exit;
}
mystandard=irandom_range(0,500);
var xx=oFollowPlayer.x + irandom_range(-150,150);
var yy=oFollowPlayer.y+250-mystandard;
move_towards_point(xx,yy,flyspd*speedmod);
direction=point_direction(x,y,xx,yy);
alarm[5]=choose(100,120,140,180);