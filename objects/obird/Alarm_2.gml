/// @desc Start off random
// You can write your code in this editor
var xx=irandom_range(-10,10);
var yy=-5;
move_towards_point(xx,yy,flyspd*speedmod);
direction=point_direction(x,y,xx,yy);
pathstartloc=random(1);
alarm[3]=choose(30,45,60);

