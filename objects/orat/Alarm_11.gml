/// @desc CypPort Death
with (instance_create_layer(self.x,self.y-3,"Characters",oRatFall))
	{
	nonippy=true;	
	vsp= -3;
	hsp= 3*other.myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}	
instance_destroy(self);