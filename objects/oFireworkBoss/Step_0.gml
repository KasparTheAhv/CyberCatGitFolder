/// @desc

if (speeder>0) {speeder-=0.008;} else {if (image_alpha>0) {image_alpha-=0.02;} else {instance_destroy();}}

image_xscale+=speeder;
image_yscale=image_xscale;

with(oPlayer)
{
	immune=true;
	image_blend=c_yellow;
}


self.y+=0.5;