/// @desc
if (ready) && CatIsNearClick()
{
	ready= false;
	alarm[0]=40;
	UnlockNoteEgg("Egg",4);
	text="Yuck, who farted?";
	follow = instance_nearest(x,y,oFollowPlayer);
	with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
	{
		target=other.follow;
		text = other.text;
		length = string_length(text); 
		who=other.id;
	}	
	alarm[3]=160;
}