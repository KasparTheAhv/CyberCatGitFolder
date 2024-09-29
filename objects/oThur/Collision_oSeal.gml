//if (colevent_id==10) && !(blocker)
	if !(blocker) && (room==Room11)
	{
	UnlockNoteEgg("Egg",1);
	blocker=true;
	text="Very creative but unfortunately\nseals can't eat gods\naccording to CyberCat wiki at least.";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
	}