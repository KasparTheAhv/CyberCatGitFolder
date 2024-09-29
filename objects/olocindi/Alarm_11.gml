if (cyportable)
{
	UnlockNoteEgg("Egg",1);

	text="ehhhhhhhhhhhhh Kenny\nyour corpse stole my catnip!";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y+70,"Particles",oTextFloat))
	{
	extraheight=70;	
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=230;
	}	
}