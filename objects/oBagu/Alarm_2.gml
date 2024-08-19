/// @desc

			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	image_index=2;
	with (oFollowPlayer)
	{
	extraheight=0;
	}
		text="That baguette ride was bread taking!";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}	
			