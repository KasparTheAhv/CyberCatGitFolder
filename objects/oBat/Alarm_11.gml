/// @desc CypPort Death
	with (instance_create_layer(self.x,self.y-3,"Characters",oBatD))
	{
	nonippy=true;
	vsp= 0;
	hsp= irandom_range(-3,3);
	}
	instance_destroy();