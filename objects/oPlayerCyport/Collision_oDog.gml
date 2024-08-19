if !(doglock)
{
doglock=true;
instance_create_layer(x,y,"BefEdge",oNippy);
instance_create_layer(x,y,"BefEdge",oNippy);
	with(other)
	{
		image_blend=c_red;
		alarm[8]=40;
		play_sound(snShot,false);
	}
}