if !instance_exists(oPlayer) {exit;}
if (CatIsNearClick())
{
	if !(pressed)
	{
	if (norepress) {pressed=true;} else {pressed=false;}
		 
	
		
		if (cevent_id==1)
		{
			if !(audio_is_playing(snToilet)){play_sound(snToilet,false);}
			UnlockNoteEgg("Egg",1);
		}
			
		if (cevent_id==2)
		{ 
			UnlockNoteEgg("Egg",2);
			text="when you brush your teeth, it's the\nonly time when you wash your skeleton"
			with (instance_create_layer(self.x,self.y-50,"Particles",oText))
				{
				target=other;
				text = other.text;
				length = string_length(text);
				}
			with (oFollowPlayer)
				{
				target = instance_nearest(x,y,oClickedEvent);
				extraheight=50;
				}
			
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
			if (cevent_id==3)
		{
			UnlockNoteEgg("Egg",2);
			text="I'm pretty sure this belongs to CS: GO.\nHow did it end up here?"
			
			with (instance_create_layer(self.x,self.y-50,"Particles",oText))
				{
				target=other;
				text = other.text;
				length = string_length(text);
				}
			with (oFollowPlayer)
				{
				target = instance_nearest(x,y,oClickedEvent);
				extraheight=50;
				}
			
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
		if (cevent_id==4)
		{
			UnlockNoteEgg("Egg",2);
			
		text="How did Kenny's corpse end up here?";
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		if (cevent_id==5)
		{
			UnlockNoteEgg("Egg",2);
			text="Wait a sec.\nI've played that game!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
		if (cevent_id==6)
		{
			UnlockNoteEgg("Egg",2);
			text="Weird, why would someone leave\nsuch a big whooper burger uneaten!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
		if (cevent_id==7) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",1);
			text="POLSKA GUROM!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
		if (cevent_id==8) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",2);
			text="Developers favorite for sure.";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		if (cevent_id==9) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",1);
			text="Stray? What's that?\nanother cat simulator?";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		//  league match history
		if (cevent_id==10) && !(instance_exists(oTextFloat))
		{
		UnlockNoteEgg("Egg",2);
			text="Big boy left his match history open\n 0/10/0 with Gragas. No wonder he\ncame outside for fresh air.";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		// satans book
		if (cevent_id==11) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",1);
			text="Looks like Satan is a softie!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		// The beatles
		if (cevent_id==12) && !(instance_exists(oTextFloat))
		{
			if !(instance_exists(oBagu))
			{
			UnlockNoteEgg("Egg",2);
				text="It's tha beatles!";
				
			with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
			{
			target=oFollowPlayer;
			text = other.text;
			length = string_length(text);
			timer=140;
			}
		
			} 
		}
		// porta
		if (cevent_id==13) && !(instance_exists(oTextFloat))
		{
			if instance_exists(oPlayer)
			{
			if (point_distance(x,y,oPlayer.x,oPlayer.y)>60) {exit;}
			if instance_exists(oGarlicBread) {exit;}
			if instance_exists(oLoafOfMilk) {exit;}
			alarm[0]=120;
			instance_destroy(oPlayer);
			}
	
	
		}
		// 
		if (cevent_id==14) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",2);
			text="You can't turn these off!";
			with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
			{
			target=oFollowPlayer;
			text = other.text;
			length = string_length(text);
			timer=140;
			}
		}
		// 
		if (cevent_id==15) && !(instance_exists(oTextFloat))
		{
			UnlockNoteEgg("Egg",1);
			text="Isn't that the ethernetaxe?\nfrom MeinCraft?";
			with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
			{
			target=oFollowPlayer;
			text = other.text;
			length = string_length(text);
			timer=140;
			}
		}

		// end
	}
}