/// @desc
with (other)
{
	var theirind= image_index;
}

// 8 party // 9 bacon
if (theirind==8)
{
	UnlockNoteEgg("Egg",3);
	instance_destroy(other);	
	if !instance_exists(oTextFloat)
	{
		var texter="How did you know it's\nmy birthday? well anyway,\nhere's something to\ncelebrate it with!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}
	alarm[0]=60;
}

if (theirind==9)
{
	UnlockNoteEgg("Egg",4);
	instance_destroy(other);	
	if !instance_exists(oTextFloat)
	{
		var texter="Wow, a bacon hat!\nYou are so caring!\nI'll trade you my kitten.\nI suck at parenting.";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}
	instance_create_layer(x,y,"Characters",oKitten);
}

