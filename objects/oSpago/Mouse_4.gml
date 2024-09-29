if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<60)
{
	follow=self;
	text="Hey buddy, ya want some smoked grass?\nit tastes delicious!";
	with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
	{
		target=other.follow;
		text = other.text;
		length = string_length(text); 
		who=instance_nearest(x,y,oEvent);
	}
	UnlockNoteEgg("Egg",3);
}