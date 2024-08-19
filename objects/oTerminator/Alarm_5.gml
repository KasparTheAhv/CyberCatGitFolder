/// @desc shoot and reload for next 
image_index=1;
alarm[0]=10;
var who=oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}


var dist = point_distance(x,y,who.x,who.y); // for alarm 5 calc
var dir = point_direction(x,y,who.x,who.y);
instance_destroy(oWarning);

	with (instance_create_layer(x,y,"Dog",oBulletSushi))
	{
		image_xscale=1.5;
		image_yscale=1.5;
		speed=18;
		direction=dir;
		image_angle=dir+90;
	}

dist=dist*0.35;
dist = clamp(dist,25,300);

alarm[6]=dist-20;
alarm[5]=dist;