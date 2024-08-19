/// @desc CypPort Death
nonippy=true;
with (instance_create_layer(self.x,self.y,"Characters",oSnakeDeath))
	{
	nonippy=true;
	image_xscale=1*sign(other.image_xscale);
	image_yscale=1;
	}
play_sound(snShot,false);
instance_destroy(self);