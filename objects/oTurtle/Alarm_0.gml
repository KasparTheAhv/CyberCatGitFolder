/// @desc Action control

// check what object
target=oFollowPlayer;
if instance_exists(oPlayer) {target=oPlayer;}
if instance_exists(oPlayerAttack) {target=oPlayerAttack;}
if instance_exists(oPlayerFall) {target=oPlayerFall;}

// get dist
dist = point_distance(x,y,target.x,target.y);


// if chasing
if (cur_state==turtlestates.chase)
{
	if (dist<64)
	{
		if (sign(image_xscale)==1) 
		{
			image_angle=20;hsp=0;image_speed=0; 
			cur_state=turtlestates.attack;startSwing=true;exit;
		}
		else
		{
			image_angle=340;hsp=0;image_speed=0; 
			cur_state=turtlestates.attack;startSwing=true;exit;	
		}
	} 
	

	if (dist<240)
	{
		if (target.x<self.x) {hsp =-2.5;} else {hsp=2.5;} 
		image_xscale=sign(hsp); if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;}
		alarm[0]=10;		
	} else {
		cur_state=turtlestates.idle; image_speed=0; hsp=0; alarm[0]=120;	
	}
	exit;
}





// If still walking
if (cur_state==turtlestates.walk) && (stillwalking!=0)
{
	// if is near enough
	if (dist<160)
	{
		stillwalking=0; cur_state=turtlestates.chase; 
		if (target.x<self.x) {hsp =-2.5;} else {hsp=2.5;}
		image_xscale=sign(hsp); 
		if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;} 
		image_speed=3; alarm[0]=10; exit;
	}
	// just continue walking until no need to walk
	if (stillwalking>1)
	{
		if (target.x<self.x) {hsp =-1;} else {hsp=1;}
		image_xscale=sign(hsp);  if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;}
		stillwalking-=1; alarm[0]=20; image_speed=1;
	} else {
		stillwalking-=1; hsp=0; 
		if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;}
		cur_state=turtlestates.idle;image_speed=0;alarm[0]=120;exit;
	}
}  


// If is idle 
if (cur_state==turtlestates.idle)
{
	// if is near enough
	if (dist<160)
	{
		cur_state=turtlestates.chase; if (target.x<self.x) {hsp =-2.5;} else {hsp=2.5;}
		image_xscale=sign(hsp);
		if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;}
		image_speed=3; alarm[0]=10; exit;
	} else {
		cur_state=turtlestates.walk; if (target.x<self.x) {hsp =-0.5;} else {hsp=0.5;}
		image_xscale=sign(hsp);
		if (image_xscale==1) {hammerRot=180;} else {hammerRot=0;}
		image_speed=1; alarm[0]=20; stillwalking=8; exit;
	}	
}










