if !(immune)
{
	with (other)
	{
	if (canatk==false) {exit;}
	var direct=point_direction(x,y,other.x,other.y);	
	}
var amp=1.5;
play_sound(snOuch,false);	

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = lengthdir_x(3*amp,direct);
vsp =-2*amp;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}
instance_destroy(oPlayer);
}