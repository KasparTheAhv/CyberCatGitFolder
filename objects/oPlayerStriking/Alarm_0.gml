/// @desc reap through targets

if (pushed<maxpushed)
{	
	// who to target with camera
	var who = targetArray[pushed];
	if instance_exists(who)
	{
		instance_create_layer(who.x,who.y,"Particles",oPlayerSlash);
		with (oFollowPlayer) {x=who.x;y=who.y;target=who;}
		self.x=who.x;
		self.y=who.y;
		who.alarm[11]=5;play_sound(snShot,false);
	}
	pushed+=1;
	alarm[0]=25;
} else {
	var who = targetArray[pushed];
	if instance_exists(who)
	{
		self.x=who.x;
		self.y=who.y;
		with (oFollowPlayer) {target=who;x=who.x;y=who.y;}
		who.alarm[11]=5;play_sound(snShot,false);
	}
	instance_destroy();	
}

