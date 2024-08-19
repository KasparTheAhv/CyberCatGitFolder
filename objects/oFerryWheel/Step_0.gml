/// @desc
if (started)
{
if (wheel_angle<720) {wheel_angle+=0.5;} else {wheel_angle=361;}
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
	with(oBoat)
	{
		if (isFerry)
		{
				self.x = variable_instance_get(oFerryWheel,"c"+string(mynr)+"x");
				self.y = variable_instance_get(oFerryWheel,"c"+string(mynr)+"y")+72;
		}
	}
} else {
if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<600) {started=true;}
}
	

