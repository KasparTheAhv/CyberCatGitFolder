
if (cur_state==turtlestates.attack)
{
	hammerTipX=x+lengthdir_x(80,hammerRot);
	hammerTipY=y+lengthdir_y(80,hammerRot);
	
	// check what object
	target=oFollowPlayer;
	if instance_exists(oPlayer) {target=oPlayer;}
	if instance_exists(oPlayerAttack) {target=oPlayerAttack;}


	if (startSwing)
	{
		// which side attack
		if (image_xscale==1)
		{
			
			// what hammer rotation
			if (hammerRot>0)
			{
				hammerRot-=20;
				// line col
				if collision_line(x,y,hammerTipX,hammerTipY,target,false,true) && (target!=oFollowPlayer){alarm[2]=1;}
			} else {startSwing=false; image_angle=0; hammerRot=0;
				with (instance_create_layer(x+56,y,"Characters",oDinoSmoke))
				{
					image_xscale=0.5;	
				}
				// pauk collision
				if collision_circle(hammerTipX,hammerTipY,50,target,false,true) && (target!=oFollowPlayer){alarm[2]=1;}
				
			}
		} else {
			image_angle=340;
			// what hammer rotation
			if (hammerRot<180)
			{
				hammerRot+=20;
				// line col
				if collision_line(x,y,hammerTipX,hammerTipY,target,false,true) && (target!=oFollowPlayer){alarm[2]=1;}
				
			} else {startSwing=false; image_angle=0;  hammerRot=180;
				with (instance_create_layer(x-56,y,"Characters",oDinoSmoke))
				{
					image_xscale=0.5;	
				}
				// pauk collision
				if collision_circle(hammerTipX,hammerTipY,50,target,false,true) && (target!=oFollowPlayer){alarm[2]=1;}
			}
		}
		
		// line collision
		
	} else {
		// which side attack
		if (image_xscale==1)
		{
			
			// what hammer rotation
			if (hammerRot<180)
			{
				hammerRot+=40;
			} else {startSwing=false; alarm[1]=1;cur_state=turtlestates.idle;}
		} else {
			image_angle=340;
			// what hammer rotation
			if (hammerRot>0)
			{
				hammerRot-=40;
			} else {startSwing=false; alarm[1]=1;cur_state=turtlestates.idle;}
		}
		
		
	}






}




x+=hsp;
y+=vsp;