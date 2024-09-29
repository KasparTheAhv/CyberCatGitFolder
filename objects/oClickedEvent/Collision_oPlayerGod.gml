if (colevent_id==3) && !(blocker)
{
	UnlockNoteEgg("Egg",2);
	blocker=true;
	text="Well that was the most\nobvious easter egg right there..";


with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
		instance_destroy();
}
if (colevent_id==5) && !(blocker)
{
	UnlockNoteEgg("Egg",1);
	blocker=true;
	text="Yea, not a good idea,\nwait until you run out of catnip";


with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
		instance_destroy();
}

if (colevent_id==11) && !(blocker)
{
	UnlockNoteEgg("Egg",2);
	blocker=true;
	text="This is insanely stupid..";
	var towho=instance_nearest(x,y,oPlayerGod);
	with (instance_create_layer(towho.x,towho.y-40,"Particles",oTextFloat))
	{
	extraheight=40;
	target=towho;
	text = other.text;
	length = string_length(text);
	timer=240;
	}
		instance_destroy();
}

