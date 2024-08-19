if !(immune)
{
with (other)
{
var scale=choose(1,-1);
}
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
hsp= 2*scale;
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp);
}
instance_destroy(oPlayer);
}