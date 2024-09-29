if (goexplode)
{
	xx=self.x;
	yy=self.y;
	speed+=0.5;
	if (tilemap_get_at_pixel(tilemap,x+hspeed,y+vspeed)!=0) {instance_destroy();}
	

} else {
	xx=x+lengthdir_x(2,imangle);
	yy=y+lengthdir_y(2,imangle);
	if (imangle<360) {imangle+=4;} else {imangle=0;}
}

if place_meeting(x,y,oPlayer)
{
	with (oPlayer)
	{
		if !(immune)
		{
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp= choose(-2,2);
			vsp= -3;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(oPlayer);
		}
	}
}