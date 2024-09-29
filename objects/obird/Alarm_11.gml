/// @desc CypPort Death
with (instance_create_layer(self.x,self.y,"Characters",oBirdFall))
	{
	nonippy=true;
	vsp= 2;
	hsp= 2*other.myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	}
	instance_destroy(self);
	instance_create_layer(x,y,"BefEdge",oSlash);