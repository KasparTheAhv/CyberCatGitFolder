/// @desc
var who=oFollowPlayer;
if instance_exists(oPlayer){var who = oPlayer;	}


// Pick a state if not being pool
if (cur_state!=slistates.pool)
{
	
// if too far, become bored. When fully bored, animate back to pool
if (point_distance(who.x,who.y,x,y)>220)
{
if (bored<5) {bored+=1}else {image_speed=0;sprite_index=sSlimeyD;mutating=true; image_index=0;alarm[1]=1;bored=0;exit;}
} else {bored=0;}

	
	
	
cur_state=choose(slistates.walk,slistates.stand);
} else {alarm[0]=20; exit; }

if (point_distance(who.x,who.y,x,y)<220) && (who==oPlayer)
{	
cur_state=slistates.chase;
}

if (cur_state==slistates.stand)
{
	image_index=0;
	image_speed=0;
	image_xscale=0.75*choose(-1,1);
	hsp=0;
}

if (cur_state==slistates.walk)
{
	image_index=0;
	image_speed=1;
	image_xscale=0.75*choose(-1,1);
	hsp=sign(image_xscale);
}

if (cur_state==slistates.chase)
{
	image_index=0;
	image_speed=1;	
	if (self.x<who.x) {var side = 1;} else {var side=-1;}
	image_xscale=0.75*side;
	hsp=sign(image_xscale)*1.5;
	alarm[0]=40;
	exit;
}

alarm[0]=60;