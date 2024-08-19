if !(immune)
{
play_sound(snOuch,false);
with (other)
{
var scale=image_xscale;	
}
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
	superplatform=other.superplatform;
hsp= 2*scale*(-1);
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}
instance_destroy(oPlayer);
}