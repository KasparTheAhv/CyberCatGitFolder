/// @desc CypPort Death
with (instance_create_layer(self.x,self.y,"Characters",oSealD))
	{
	nonippy=true;	
	image_xscale=2*sign(other.image_xscale);
	image_yscale=2;
	}
instance_destroy(self);