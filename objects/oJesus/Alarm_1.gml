/// @desc first text
			follow=self;
			text="Hello mighty cat!";
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=instance_nearest(x,y,oEvent);
				}