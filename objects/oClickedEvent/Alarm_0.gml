/// @desc
if (cevent_id==13)
{
instance_create_layer(x,y,"Characters",oPlayer);

UnlockNoteEgg("Egg",2);
		text="All that garlic bread and\nloaves of milk came out with 1 go";
		
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
	instance_destroy();
}