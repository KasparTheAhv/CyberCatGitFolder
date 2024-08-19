image_xscale=1;
image_yscale=1;
image_angle=0;
yy=y-30;
alLock=false;

var dep=layer_get_depth("Characters")+15;
with (instance_create_depth(x,y-40,dep,oHat))
{
clicked=true;
sprite_index=sElGatoDead;
image_index=1;
image_alpha=1;
image_xscale=0.75;
image_yscale=0.75;
}