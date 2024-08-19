/// @desc laser
var tar = oFollowPlayer;
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
if instance_exists(oPlayerGod) {tar=oPlayerGod;}
var dir = point_direction(x,y,tar.x,tar.y);

if (image_xscale>0) {side=30;} else {side=-30;}

with(instance_create_layer(x+side,y+2,"Particles",oLaser))
{
	alarm[0]=300;
	image_xscale=6;
	image_yscale=2;
	speed=11;
	image_alpha=0.5;
	direction=dir;
	image_angle=dir;
	image_blend=c_red;	
}