/// @desc CypPort Death
with (instance_create_layer(self.x,self.y,"Characters",oMonkeDeath))
	{
	nonippy=true;	
	image_xscale=other.scale;
	image_yscale=other.scale;
	}
play_sound(snShot,false);
instance_destroy(self);
instance_create_layer(x,y,"BefEdge",oSlash);