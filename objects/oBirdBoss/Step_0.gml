if (current<target)
{
current+=0.05;
} else {current=target;}
current=clamp(current,0,target);

if (direction>90) && (direction<270)
{		
image_xscale=-1*current;
image_yscale=current*flipper;
} else {
image_xscale=current;
image_yscale=current*flipper;
}	

if (state==birdstate.god)
{
	if instance_exists(oPlayerGod)
	{
	move_towards_point(oPlayerGod.x,oPlayerGod.y-300,5);
	}
	if (delay>0) {delay-=1;} else {delay=5;alarm[10]=1;}
}

if (state==birdstate.start)
{
move_towards_point(2200,400,4);
if (distance_to_point(2200,400)<5) { hspeed=0;vspeed=0;speed=3;	
	xMod=irandom_range(-40,40);
	yMod=irandom_range(0,20);
	state=birdstate.fly;
	self.alarm[2]=1;
	with(oText) {alarm[10]=2;}
	}
}

if (state==birdstate.fly)
{

// Find target
if instance_exists(oFollowPlayer) {targetObject=oFollowPlayer;}
if instance_exists(oPlayer)	 {targetObject=oPlayer;}
if instance_exists(oPlayerAttack)  {targetObject=oPlayerAttack;}
if instance_exists(oPlayerFall)	 {targetObject=oPlayerFall;}
if instance_exists(oPlayerGod)	 {targetObject=oPlayerGod;}
// Change direction smoothly
var dir = point_direction(x,y,targetObject.x-xMod,targetObject.y-90-yMod);
var diff = angle_difference(dir, direction);
direction += diff * 0.03;
	// If close to the point choose next attack
	if (point_distance(x,y,targetObject.x-xMod,targetObject.y-90-yMod)<100)
	{
		if (attacktype==0) {attacktype=1; // Go to bombing height
			xMod=choose(-500,500);
			targetX=targetObject.x-xMod;
			state=birdstate.egg;
			delay=20;
			yMod=200;
			sequence=0;
			} 
		else if (attacktype==1) {attacktype=2; // Go for dashing height
				xMod=choose(-500,500);
				targetX=targetObject.x-xMod;
				yMod=0;
				golock=false;
				state=birdstate.attack;
				sequence=0;				
				}
		else if (attacktype==2) {attacktype=0; // Go for laser height
				xMod=choose(-500,500);
				targetX=targetObject.x-xMod;
				yMod=200;
				golock=false;
				state=birdstate.laser;
				sequence=0;				
				}
	}
}

if (state==birdstate.egg)
{

	if (sequence==0)
	{
	speed=4;
	// Find target
	if instance_exists(oFollowPlayer) {targetObject=oFollowPlayer;}
	if instance_exists(oPlayer)	 {targetObject=oPlayer;}
	if instance_exists(oPlayerAttack)  {targetObject=oPlayerAttack;}
	if instance_exists(oPlayerFall)	 {targetObject=oPlayerFall;}
	if instance_exists(oPlayerGod)	 {targetObject=oPlayerGod;}
	var dir = point_direction(x,y,targetX,targetObject.y-yMod);
	var diff = angle_difference(dir, direction);
	direction += diff * 0.03;

	// Change sequence
		if (point_distance(x,y,targetX,targetObject.y-yMod)<100)
		{
			if (targetObject.x>self.x) {xMod=1000;direction=0;} else {xMod=-1000;direction=180;}
			curX=self.x;delay=60;
			curY=self.y;
			sequence=1;	canatk=true;	
		}
	}
	// new sequence
	if (sequence==1)
	{
	move_towards_point(curX+xMod,curY+64,5);	
	if (delay>0) {delay-=1;} else {delay=15;alarm[10]=1;}
	
		if (distance_to_point(curX+xMod,curY+64)<30) { image_angle=0;hspeed=0;vspeed=0;speed=3;image_speed=1;
		xMod=irandom_range(-40,40);
		yMod=irandom_range(0,20);
		state=birdstate.fly;canatk=false;
		}
	}	
}

if (state==birdstate.laser)
{

	if (sequence==0)
	{
	speed=4;
	// Find target
	if instance_exists(oFollowPlayer) {targetObject=oFollowPlayer;}
	if instance_exists(oPlayer)	 {targetObject=oPlayer;}
	if instance_exists(oPlayerAttack)  {targetObject=oPlayerAttack;}
	if instance_exists(oPlayerFall)	 {targetObject=oPlayerFall;}
	if instance_exists(oPlayerGod)	 {targetObject=oPlayerGod;}
	var dir = point_direction(x,y,targetX,targetObject.y-yMod);
	var diff = angle_difference(dir, direction);
	direction += diff * 0.03;

	// Change sequence
		if (point_distance(x,y,targetX,targetObject.y-yMod)<100)
		{
			if (targetObject.x>self.x) {xMod=1000;direction=0;} else {xMod=-1000;direction=180;}
			curX=self.x;delay=60;
			curY=self.y;
			sequence=1;	canatk=true;	
		}
	}
	// new sequence
	if (sequence==1)
	{
	move_towards_point(curX+xMod,curY+64,5);	
	if (delay>0) {delay-=1;} else {delay=20;alarm[9]=1;}
	
		if (distance_to_point(curX+xMod,curY+64)<30) { image_angle=0;hspeed=0;vspeed=0;speed=3;image_speed=1;
		xMod=irandom_range(-40,40);
		yMod=irandom_range(0,20);
		state=birdstate.fly;canatk=false;
		}
	}	
}


if (state==birdstate.attack)
{

	if (sequence==0)
	{
	// Find target
	if instance_exists(oFollowPlayer) {targetObject=oFollowPlayer;}
	if instance_exists(oPlayer)	 {targetObject=oPlayer;}
	if instance_exists(oPlayerAttack)  {targetObject=oPlayerAttack;}
	if instance_exists(oPlayerFall)	 {targetObject=oPlayerFall;}
	if instance_exists(oPlayerGod)	 {targetObject=oPlayerGod;}
	var dir = point_direction(x,y,targetX,targetObject.y-yMod);
	var diff = angle_difference(dir, direction);
	direction += diff * 0.03;
	speed=4;
	// Change sequence
		if (point_distance(x,y,targetX,targetObject.y-yMod)<100)
		{
			if (targetObject.x>self.x) {direction=0;paremale=true;} else {direction=180;paremale=false;}
			curX=self.x;delay=4;
			sequence=1;	canatk=true;		
		}
	}
	// new sequence
	if (sequence==1)
	{

	

	
	if (delay>0) {delay-=1;} else {delay=3;if (flipper==1) {flipper=-1;}else{flipper=1;}}		
	
	
		if (go) {go=false;flipper=1;hspeed=0;vspeed=0;speed=3;image_speed=1;canatk=false;image_angle=0;
		xMod=irandom_range(-40,40);
		yMod=irandom_range(0,20);
		state=birdstate.fly;
		} else {
			
		if !(golock)
		{
		if instance_exists(oFollowPlayer) {targetObject=oFollowPlayer;}
		if instance_exists(oPlayer)	 {targetObject=oPlayer;}
		if instance_exists(oPlayerAttack)  {targetObject=oPlayerAttack;}
		if instance_exists(oPlayerFall)	 {targetObject=oPlayerFall;}
		if instance_exists(oPlayerGod)	 {targetObject=oPlayerGod;}
			if (paremale) {
			if (self.x>targetObject.x+30){golock=true;alarm[1]=30;}
			} else {
			if (self.x<targetObject.x-30){golock=true;alarm[1]=30;}	
			}
	
		var dir = point_direction(x,y,targetObject.x,targetObject.y);
		var diff = angle_difference(dir, direction);
		direction += diff * 0.02;
		image_angle=direction;
		image_speed=0;
		image_index=6;
		speed=8;
		}		
		}
	}	
}