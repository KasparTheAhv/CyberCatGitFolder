/// @desc

slow=0.3; alarm[8]=3;

if (immune) {exit;}

if (other.damage)
{
var dire=sign(image_xscale)*2*-1;

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

instance_destroy(self);

with (oVine) {maxsegnr=vinesegnr;}


}