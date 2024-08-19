if !(immune)
{
	with(other)
	{
	instance_destroy();
	}
	if instance_exists(oGUIBAR){oGUIBAR.cn+=4;}
	image_blend=c_red;
	play_sound(snShot,false);
	instance_create_layer(x,y-1,layer,oFrogD);
	instance_destroy(self);
}