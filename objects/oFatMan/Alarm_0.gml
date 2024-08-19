/// @desc state selector
image_yscale=1.5;
image_angle=0;



if (triggerrate>0) {
		if instance_exists(oPlayer)
	{
		triggerrate=150;
		current_state=fatmanstates.follow;
		image_speed=1;
		sprite_index=sFatManR;
		exit;
		
	}
	if instance_exists(oPlayerAttack)
	{
		triggerrate=150;
		current_state=fatmanstates.follow;
		sprite_index=sFatManR;
		image_speed=1;
		exit;
		
	}	
}


// triggering chase

	if instance_exists(oPlayer)
	{
	if (point_distance(x,y,oPlayer.x,oPlayer.y)<260)	
		{
		triggerrate=150;
		current_state=fatmanstates.follow;
		image_speed=1;
		sprite_index=sFatManR;
		exit;
		}
	}
	if instance_exists(oPlayerAttack)
	{
	if (point_distance(x,y,oPlayerAttack.x,oPlayerAttack.y)<260)	
		{
		triggerrate=150;
		current_state=fatmanstates.follow;
		sprite_index=sFatManR;
		image_speed=1;
		exit;
		}
	}


// regular behaviour
if (current_state!=fatmanstates.stay)
{
current_state=fatmanstates.stay;
hsp = 0;
var suund = choose(-1,1);
image_speed=0;
sprite_index=sFatMan;
image_xscale=1.5*suund;
image_angle=0;
alarm[0]=irandom_range(60,120);
exit;
} else {
current_state=fatmanstates.wander;
sprite_index=sFatManR;
image_speed=0.5;
image_angle=0;
if (self.x<3333) {suund=1;} else {suund=-1;}
hsp = 1 * suund; image_xscale=1.5*suund;
alarm[0]=irandom_range(260,400);
exit;
}
