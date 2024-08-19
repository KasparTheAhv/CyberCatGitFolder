/// @desc
wheel_angle=360;
image_xscale=2;
image_yscale=2;
distFromCenter=116*image_xscale;
started=false;
c1x=round(x+lengthdir_x(distFromCenter,wheel_angle));
c1y=round(y+lengthdir_y(distFromCenter,wheel_angle));
c2x=round(x+lengthdir_x(distFromCenter,wheel_angle+45));
c2y=round(y+lengthdir_y(distFromCenter,wheel_angle+45));													
c3x=round(x+lengthdir_x(distFromCenter,wheel_angle+90));
c3y=round(y+lengthdir_y(distFromCenter,wheel_angle+90));
c4x=round(x+lengthdir_x(distFromCenter,wheel_angle+135));
c4y=round(y+lengthdir_y(distFromCenter,wheel_angle+135));													
c5x=round(x+lengthdir_x(distFromCenter,wheel_angle+180));
c5y=round(y+lengthdir_y(distFromCenter,wheel_angle+180));													
c6x=round(x+lengthdir_x(distFromCenter,wheel_angle+225));
c6y=round(y+lengthdir_y(distFromCenter,wheel_angle+225));													
c7x=round(x+lengthdir_x(distFromCenter,wheel_angle+270));
c7y=round(y+lengthdir_y(distFromCenter,wheel_angle+270));											
c8x=round(x+lengthdir_x(distFromCenter,wheel_angle+315));
c8y=round(y+lengthdir_y(distFromCenter,wheel_angle+315));

// create carts 
for (var i = 0; i < 9; i++)
{
	if (i>0)
	{
		xx = variable_instance_get(id,"c"+string(i)+"x");
		yy = variable_instance_get(id,"c"+string(i)+"y")+72;
		with (instance_create_layer(xx,yy,layer,oBoat))
		{
		image_alpha=0;	
		image_xscale=2;
		mynr=i;
		isFerry=true;
		}
	}
}

