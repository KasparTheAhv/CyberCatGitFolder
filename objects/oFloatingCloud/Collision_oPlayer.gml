/// @desc

if !(touched)
{
	with (oFloatingCloud) {touched=true;}
	var texter="So packed and solid, that \n I could easily take a nap here.";
	with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
	{
		timer=120;
		target=other;
		text = texter;
		length = string_length(text);
	}		
	UnlockNoteEgg("Egg",1);		
}