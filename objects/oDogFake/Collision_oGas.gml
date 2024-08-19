if !(immune)
{
with (other)
{
var direct=point_direction(x,y,other.x,other.y);	
}
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
hsp = lengthdir_x(3,direct);
vsp =-2;

if (sign(hsp) !=0) image_xscale = sign(hsp);
}


instance_destroy(oPlayer);
}