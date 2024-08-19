
	text="I'll get you next time!";
	follow = instance_nearest(x,y,oPlayer);
	
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
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