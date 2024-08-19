/// @desc
var dire=sign(image_xscale)*3*-1;

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

instance_destroy(self);