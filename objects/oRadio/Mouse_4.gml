/// @desc
if !(activated)
{
	if CatIsNearClick()
	{
		if !(instance_exists(oRadiowave))
		{	
			var texter="Unlike the books, Satan\nisn't softie when it comes to music";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
				timer=120;
				target=other;
				text = texter;
				length = string_length(text);
			}		
			UnlockNoteEgg("Egg",1);			
			activated=true;
			play_sound(snRams,true);
			instance_create_layer(x-57,y+14,"Electro",oRadiowave);
			instance_create_layer(x+38,y+14,"Electro",oRadiowave);
			instance_create_layer(x-57,y-2, "Electro",oRadiowave);
			instance_create_layer(x+38,y-2, "Electro",oRadiowave);
		}
	}
} else {
	instance_destroy(oRadiowave);
	audio_stop_sound(snRams);
	activated=false;
}

