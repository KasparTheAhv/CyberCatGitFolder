/// @desc
if CatIsNearClick()
{
	if (textnr==5) && !(instance_exists(oTextFloat))
	{
		textnr+=1;
		var texter="Why you talking to yourself??";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
			timer=120;
			target=oFollowPlayer;
			text = texter;
			length = string_length(text);
		}	
		UnlockNoteEgg("Egg",6);
	}
}