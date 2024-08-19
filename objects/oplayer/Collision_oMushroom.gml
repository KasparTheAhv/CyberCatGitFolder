instance_destroy(other);
with(oGUIBAR)
{
oGUIBAR.hp+=10;
}
	with (instance_create_layer(x,y,"Characters",oNippy))
	{
		image_alpha=0;
	}
slow=1.2;
alarm[8]=60;