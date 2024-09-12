var myside = image_xscale;
var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay-3,"Characters",oSquirFall))
	{
	vsp= -3;
	hsp= 3*myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	}
	instance_destroy(other);
var plax= side*12;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);