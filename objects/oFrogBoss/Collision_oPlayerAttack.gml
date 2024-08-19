var myside = sign(image_xscale);
var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay-3,"Characters",oPlayerFall))
	{
	vsp= -6;
	hsp= 5*myside*2;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(other);