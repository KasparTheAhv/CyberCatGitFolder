if (image_xscale<5) {var lay="Dog";} else {var lay="Characters";}

if (vsp<1.1)
{
image_index=2;
attacking=true;
cap=16*image_xscale

with (instance_create_layer(x,y-cap,"Dog",oFrogTon))
{
	spd=other.image_xscale*2*4;
	maxDist=other.tonqDete*other.image_xscale*2;
	image_xscale=other.image_xscale*2;
	image_yscale=other.image_yscale*2;
	tonqScale=2*other.image_xscale*2;
	depth=other.depth-5;
	dir=other.dir;	
	owner=other.id;
}
} else {alarm[0]=5;}