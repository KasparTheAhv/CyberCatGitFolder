if !(immune)
{
	with (other)
	{
	var direct=point_direction(x,y,other.x,other.y);	
	}
	play_sound(snOuch,false);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp = lengthdir_x(3,direct);
	vsp =-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
	with (oGUIBAR) {cn-=25;}
}