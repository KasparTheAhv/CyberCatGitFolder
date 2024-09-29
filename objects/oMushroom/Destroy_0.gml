/// @desc
if !instance_exists(oTextFloat)
{
	if (room==Room17)
	{
	UnlockNoteEgg("Egg",1);
		text="This has to be related to Mario.";
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	}
}