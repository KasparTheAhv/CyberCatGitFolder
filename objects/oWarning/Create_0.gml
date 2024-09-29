image_xscale=0.5;
image_yscale=0.5;

if instance_exists(oTerminator)
{
	src=oFollowPlayer;
	dst=oTerminator;
	inner=20;
	alter=0;
	pad=50;
	exit;
} 


if instance_exists(oFrogBoss)
{
	alter=80;
	src=oFollowPlayer;
	dst=oFrogBoss;
	inner=20;
	pad=50;
} else {instance_destroy();}