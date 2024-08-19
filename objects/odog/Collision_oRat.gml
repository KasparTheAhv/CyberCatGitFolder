if !(immune)
{
with (other)
{
var scale=image_xscale;	
}
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
hsp= 2*scale*(-1);
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp);
}
instance_destroy(oPlayer);
}