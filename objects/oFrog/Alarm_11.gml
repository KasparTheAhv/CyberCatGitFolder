/// @desc CypPort Death
play_sound(snShot,false);
with (instance_create_layer(x,y-1,layer,oFrogD))
{
nonippy=true;	
}
instance_destroy(self);
instance_create_layer(x,y,"BefEdge",oSlash);