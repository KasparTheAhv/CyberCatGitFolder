///@desc tonq atk
if (vsp<1.1)
{
image_index=2;
attacking=true;
cap=16*image_xscale

with (instance_create_layer(x,y-cap,"Characters",oFrogTon))
{
spd=other.image_xscale*2.5;
maxDist=other.allowedDist;
image_xscale=2;
image_yscale=2;
tonqScale=2*other.image_xscale*2;
depth=other.depth-5;
dir=other.dir;	
owner=other.id;
spscale=5;
}
} else {alarm[0]=5;}