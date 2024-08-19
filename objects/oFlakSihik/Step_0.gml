/// @desc
image_angle+=2;

if instance_exists(oVStick)
{
	if vstick_check(1) 
	{
		var xaxis=vstick_get_xaxis(1);
		var yaxis=vstick_get_yaxis(1);
			var xspd =xaxis*7;
			xspd=clamp(xspd,-7,7);
			var vspd =yaxis*7;
			vspd=clamp(vspd,-7,7);
		
	} else {var xspd=0; var vspd=0;}
	
	
	x+=xspd;
	y+=vspd;
	x=clamp(x,0,room_width);
	y=clamp(y,0,room_height);
}

with (oAttackKey)
{
	if (oCannonFlak.firingdelay<0)
	{
	image_blend=c_white;
	} else {image_blend=$eea944;}
	exit;
}

