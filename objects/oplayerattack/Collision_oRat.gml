var myside = image_xscale;
var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay-3,"Characters",oRatFall))
	{
	vsp= -3;
	hsp= 3*myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
instance_destroy(other);
var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
