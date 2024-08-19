/// @desc shoot once and then later start auto
image_index=1;
alarm[0]=10;
var who=oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}



var dir = point_direction(x,y,who.x,who.y);
instance_destroy(oWarning);
	with (instance_create_layer(x,y,"Dog",oBulletSushi))
	{
		image_xscale=1;
		image_yscale=1;
		speed=20;
		direction=dir;
		image_angle=dir+90;
	}

alarm[6]=40;
alarm[5]=60;