var myside = image_xscale;
var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay-3,"Characters",oBirdFall))
	{
	vsp= 2;
	hsp= 2*myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	}
	instance_destroy(other);