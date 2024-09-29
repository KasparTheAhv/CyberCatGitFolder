/// @desc


	image_index=0;
	image_speed=0;
	hspeed=0;
	alarm[0]=240;
	
	if instance_exists(oTextFloat) {exit;}
	
	if (firstspeech)
	{
	//firstspeech=false;  whenever player has painted on board
		var texter="Hi! If you draw me Mona Lisa\nI'll give you a treat!";
		with (instance_create_layer(self.x,self.y-80,"Particles",oTextFloat))
		{
		extraheight=80;	
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	} else {	
		if !(rewarded)
		{
			rewarded=true;
			var texter="Wow, that's almost like the original!\nhere's your treat sweetie!";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=150;
			target=other;
			text = texter;
			length = string_length(text);
			}	
			instance_create_depth(x,y-10,depth-1,oNippy);
			
			
			
		UnlockNoteEgg("Egg",4);
			
			
		} else {
			var texter="You are such a great artist!";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=150;
			target=other;
			text = texter;
			length = string_length(text);
			}		
			
		}
			
			
	}