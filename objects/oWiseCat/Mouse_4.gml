/// @desc

if !CatIsNearClick() {exit}

if instance_exists(oTextFloat) or instance_exists(oText) {exit;}
	var settingsmap=ds_map_secure_load("settings.sav");
	var deathCount = ds_map_find_value(settingsmap,"deathCount");


if (times==0)
{
	times+=1;
	text="My owner pushed me down the basement\nand now I'm in hell? How fair..\nAt least the satan gave me super knowledge";
	text=string_replace_all(text,"{DEATH_COUNT}",string(deathCount));
	
	follow = instance_nearest(x,y,oWiseCat);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
					timer=200;
					extraheight=80;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}	

} else {

	UnlockNoteEgg("Egg",2);
	text="Nothing to be embarrassed about,\nbut you have died like {DEATH_COUNT} times.\nOkay who am I kidding, that's pretty embarrassing.";
	text=string_replace_all(text,"{DEATH_COUNT}",string(deathCount));
	follow = instance_nearest(x,y,oWiseCat);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=200;
				extraheight=80;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				
}