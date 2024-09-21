if (blocker==false)
{
	blocker=true;
	var who=instance_nearest(x,y,oRatBase);
	
	with (instance_create_layer(who.x,who.y,"Characters",oRat))
	{
	hsp=2;
	image_xscale=0.75;
	myside=1;
	}
	follow = instance_nearest(x,y,oRat);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}

		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}
		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
}