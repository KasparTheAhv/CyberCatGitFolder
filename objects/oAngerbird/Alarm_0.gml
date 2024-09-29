/// @desc check for target
var tar=oFollowPlayer;
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
if instance_exists(oPlayerFall) {tar=oPlayerFall;}

if (tar!=oFollowPlayer)
{
	if (point_distance(tar.x,tar.y,x,y)<170)
	{
	goexplode=true;
	direction=point_direction(x,y,tar.x,tar.y);
	image_angle=direction;
	
	if (direction>90) && (direction<270)
	{		
		image_xscale=1;
		image_yscale=-1;
	} else {	 
		image_xscale=1;
		image_yscale=1;
	}	
	
	
	exit;
	}
}

image_xscale=-1*image_xscale;
alarm[0]=choose(60,120,180);