/// @description Insert description here
// You can write your code in this editor
if (event_id==101) {exit;}

if (activated)
{
// watch out 
if (event_id==0) && !(blocker)
{
	if (room==Room1){
		oGUIBAR.task1="+ Task done!";oGUIBAR.task1col="[#4CFF4C]";
		}
	blocker=true;
	text="Watch out! watch out!\nThat's John Cena's pet rat.\nStrike first and PRECISELY or\nthat thing will run you down!";
	follow = instance_nearest(x,y,oRatEvent);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
} 
// edge too high
if (event_id==1) && !(blocker)
{
	if !(instance_exists(oRatEvent))
	{
	blocker=true;
	text="This edge seems to be INSANELY\nhigher than your jump reach.\nYou'll need to find another way up.";
	follow = instance_nearest(x,y,oLocIndi);
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			}
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
	}
}
// cat fighting
if (event_id==2) && !(blocker)
{
	if (sequence==1)
	{
		if !(instance_exists(oRatEvent))
		{		
		blocker=true;
		alarm[2]=1;
		text="Okay, that was awful to look at.\nShould have taught you a move or two\nbefore you get yourself killed.\nSO LISTEN UP...";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
		
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
	}
	if (sequence==2)
	{
				blocker=true;
		text="Press and HOLD DOWN your\n(paw key) to enter and STAY\nin your scratch attack mode.\nLetting go will make you vulnerable.";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
				blocker=true;
		text="Don't SPAM IT! It has a COOLDOWN.\nWhile used ON GROUND, you will leap attack.\nWhile in air, you maintain your direction\n and velocity.";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		instance_destroy();
		with (oEvent)
		{
		if (event_id==1) {alarm[0]=200;}
		}
	}
}
// bird enemy
if (event_id==3) && !(blocker)
{
	if (sequence==1)
	{
		
		if !(instance_exists(oRatEvent))
		{
		
		blocker=true;
	
		text="Now this is where things get wild.\nThese nests pack more birds than\nyou could imagine.";
		follow = instance_nearest(x,y,oBirdBase);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
	}
	if (sequence==2)
	{
				blocker=true;
		text="If you get too close to it\nthey will start defending\ntheir territory.";
			follow = instance_nearest(x,y,oBirdBase);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
				blocker=true;
				alarm[2]=1;
		text="Take them pigeons out\nand fill your catnip bar\nOnce full, you can shoot down the base.";
			follow = instance_nearest(x,y,oBirdBase);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
				instance_create_layer(follow.x,follow.y,"Dog",oTarget)
				
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4)
	{
				blocker=true;
				
			text="Read the catnip and god state manuals you just received!";
			follow = instance_nearest(x,y,oBirdBase);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		instance_destroy();
	}
}
// squirr enemy
if (event_id==4) && !(blocker)
{
	if (sequence==1)
	{
	
		blocker=true;
		text="Seems like we've got company.\nThese tree rodents will get on\nyour nerves if you don't\nget rid of them.";
		follow = instance_nearest(x,y,oSquir);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	}
	if (sequence==2)
	{
				blocker=true;
		text="Pretty sure these are the\nacorn throwing species.\nOne acorn isn't enough to\nknock you down but...";
			follow = instance_nearest(x,y,oSquir);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
				blocker=true;
		text="..if you get hit too many times\nin a short period of time\n they will knock you down.\nBy too many I mean 3 times per second.";
			follow = instance_nearest(x,y,oSquir);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4)
	{
				blocker=true;
		text="I suggest getting above them before\nattacking them since they\ntend to escape if you get too near.";
			follow = instance_nearest(x,y,oSquir);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		instance_destroy();
	}
}
// squirr base
if (event_id==5) && !(blocker)
{
	if (sequence==1)
	{
	
		blocker=true;
		text="Seems to me that their reproduction\nrate is off the chart.";
		follow = instance_nearest(x,y,oSquirrBase);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			instance_create_layer(follow.x,follow.y,"Dog",oTarget)
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	}
	if (sequence==2)
	{
				blocker=true;
		text="No worries tho cause I think\nyou can collapse their nests in\nif you shoot at it enough times.";
			follow = instance_nearest(x,y,oSquirrBase);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
					canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
				blocker=true;
		text="Ok who am I lying to\nI know that for a fact.";
			follow = instance_nearest(x,y,oSquirrBase);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			instance_destroy();
	}
}
if (event_id==6) && !(blocker)
{
	blocker=true;
	text="You know kit, it's not easy\n to get through here, but I'm sure you will.";
	follow = instance_nearest(x,y,oDogSleep);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
} 
// Cat milk room0
if (event_id==7) && !(blocker)
{
	if (sequence==1)
	{
				blocker=true;
		text="Wait... \nwas that even milk?";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		instance_destroy();
	}
}
// cat electro room 3
if (event_id==8) && !(blocker)
{
	if (sequence==1)
	{
				blocker=true;
		text="Well no worries...\nI still got 8 lives left.";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		instance_destroy();
	}
}
// train entering
if (event_id==9) && !(blocker)
{
	if (sequence==1)
	{
	if instance_exists(oPlayer)
	{
	with(oPlayer) {
	oPlayer.depth=layer_get_depth("Characters")-12;
	var distance=oTrain.x-oPlayer.x;
	if (distance<0) {distance=-1*distance}
	}
	if (oPlayer.landed) && (distance<3)
	{
		blocker=true;
			with(oVStick)
			{
			joonista=false;
			}
			with(oAttackKey)
			{
			joonista=false;	
			}
			with(oJumpKey) {joonista=false;}
			with (oPlayer)
			{
			var side=sign(image_xscale);	
			instance_destroy();
			}
			with(oFollowPlayer) {target=oTrain;}
			with (oTrainDoor)
				{
				drawcat=true;
				xscale=side*0.75;
				alarm[0]=1;
				}
	
	
		instance_destroy();
	}
	}
}
}
// train appear
if (event_id==10) && !(blocker)
{
	if (sequence==1)
	{
	oTrain.alarm[0]=1;
		blocker=true;
		text="I don't usually see that far\nbut when I do, an escape\ntrain has appeared.";
		follow = instance_nearest(x,y,oTrain);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			with(oTrainDoor)
			{
			palju=1.9;
			}
			with(oEvent)
			{
			if (event_id==9){self.activated=true;}
			}
		instance_destroy();
	}
			
}
// dog fight cutscene
if (event_id==11) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		if (room==Room5)
		{
				oGUIBAR.task1="+ Task ignored";
				oGUIBAR.task1col="[#4CFF4C]";
				oGUIBAR.task2="- Defeat the visitor";
				oGUIBAR.task3="- Find the station";
		}
		text="Hey meow, jo give me\nsome of that catnip!";
		with (instance_create_layer(310,700,"Dog",oDog))
		{
		hsp=2;
		image_xscale=0.7;
		}
		follow = instance_nearest(x,y,oDog);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
					whasound=506;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="CyberCat: This guy again\nLets export him off this planet!";
		follow = instance_nearest(x,y,oDog);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			instance_destroy(self);
	}
	
}
// frog fight cutscene
if (event_id==12) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Oh god, that fat frog took\nthe train to this city.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2)  // x300 ja y700
	{
		blocker=true;
		text="You'll probably need magic\njohn screen protector for the\npornography that's about to happen.";
		follow = instance_nearest(x,y,oFrogBoss);
			with (instance_create_layer(follow.x,follow.y-180,"Particles",oText))
				{
				extraheight=180;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			extraheight=150;
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			with (oFrogBoss) {alarm[9]=10;}
			instance_create_layer(1,1,"Particles",oBossHP);
			instance_destroy(self);
	}
	
}
// dog fight cutscene
if (event_id==13) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		alarm[2]=1;
		text="The steps are missing, but no worry\ngo and collect some catnip!";
		{
		hsp=2;	
		}
		follow = instance_nearest(x,y,oRoomController);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="You'll need it to teleport out of enemies! \n Ohh.. and read this new book about it!";
		follow = instance_nearest(x,y,oRoomController);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			instance_destroy(self);
	}
	
}
// watch penquin 
if (event_id==14) && !(blocker)
{
	//if (room==Room10){
	//	//oGUIBAR.task1="+ Task done!";	
	//	//oGUIBAR.task1col="[#4CFF4C]";
	//	}
	blocker=true;
	text="Yup, that's a penquin wearing a monocle as a villain.\nCareful, their feathers are too oily to shoot at\nI think you can only shaport out them.";
	follow = instance_nearest(x,y,oPenquin);
	oPenquin.ready=true;
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
} 
// watch corpse 
if (event_id==15) && !(blocker)
{
	blocker=true;
	text="Oh my god! they oofed Kenny!";
	follow = instance_nearest(x,y,oLocIndi);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
} 
// watch thur
if (event_id==16) && !(blocker)
{
	if (sequence==1) 
	{
	blocker=true;
	text="Holy giggity, that's the\nmedium boss Thor from god of war!";
	follow = instance_nearest(x,y,oThur);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
				who=other.id;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
	}
	if (sequence==2) 
	{
	blocker=true;
	text="You wont be able to harm it\nwithout your cyport ability!";
	follow = instance_nearest(x,y,oThur);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
				who=other.id;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
	}
	if (sequence==3) 
	{
	blocker=true;
	text="But first you'll need to\nfind a way to gain catnip\non these dead cold mountains.";
	follow = instance_nearest(x,y,oThur);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-70,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
				who=other.id;
				extraheight=70;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_create_layer(1,1,"Particles",oBossHP);
		instance_destroy();
	}
} 
// watch seal
if (event_id==17) && !(blocker)
{
	if (sequence==1)
	{
	blocker=true;
	text="Ah yes, it says here on CyberCat wikipedia\nthat these seals are one of the few\nenemies that attack other enemies.";
	follow = instance_nearest(x,y,oSeal);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-70,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
				who=other.id;
				extraheight=70;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
	}
	if (sequence==2) 
	{
	blocker=true;
	text="Joel has commented that they are also immortal\nand that they seem to like eating penquins.\nMaybe we can use that to our own advantage";
	follow = instance_nearest(x,y,oSeal);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
				extraheight=80;
			target=other.follow;
			text = other.text;
			length = string_length(text);
			who=other.id;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		with (follow) {alarm[9]=1;}
		instance_destroy();
	}
}
// watch dog pic
if (event_id==18) && !(blocker)
{
	if (sequence==1)
	{
	blocker=true;
	text="I'm not really the sharpest pen in the box, \n but that looks like they're trying to mutate dogs.";
	follow = instance_nearest(x,y,oLocIndi);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-70,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
				who=other.id;
				extraheight=50;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
	}
	if (sequence==2) 
	{
	blocker=true;
	text="Someone also wrote: \ The one piece is real. \n One piece of what? Catnip? ";
	follow = instance_nearest(x,y,oLocIndi);
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with (instance_create_layer(follow.x,follow.y-70,"Particles",oText))
			{
			target=other.follow;
			text = other.text;
			length = string_length(text);
			who=other.id;
			extraheight=50;
			}
		with (oFollowPlayer)
			{
			target = other.follow;
			extraheight=80;
			}

		with(oVStick)
		{
		vstick_set_active(stick_id,false);
		}
		instance_destroy();
	}
}
// activate dogs 
if (event_id==19) && !(blocker)
{
	blocker=true;
	with (oDog) {oDog.allowedtoatk=true;}
	with (oPenquin) {oPenquin.allowedtoatk=true;}
	oRoom12Checker.activated=true;
	oGUIBAR.task1="+ Task done!";	
	oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- No dogos please";
	instance_destroy();
}
// el gato
if (event_id==20) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="I am the cat king El Gato!\nwho dares to enter my lair?";
		follow = instance_nearest(x,y,oElGato);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="My name is Jeff";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Pretty cats notice pretty cats..\ntell you what, I used to own a whole catnip\ngrowing farm.";
		follow = instance_nearest(x,y,oElGato);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}

	}
		if (sequence==4) // x300 ja y700
	{
		blocker=true;
		text="But then all the catnip disappeared\nNow there's not enough of it for both of us";
		follow = instance_nearest(x,y,oElGato);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==5) // x300 ja y700
	{
		blocker=true;
		text="If you leave my lair now I'll let you live.\nBut don't ever return!";
		follow = instance_nearest(x,y,oElGato);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==6) // x300 ja y700
	{
		blocker=true;
		text="Just kidding..\nI'm not taking any chances..";
		follow = instance_nearest(x,y,oElGato);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			oElGato.alarm[10]=1;
			instance_destroy(self);
	}
}
// Smell something
if (event_id==21) && !(blocker)
{
		blocker=true;
		text="I sense another cats presence o.o";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				instance_destroy(self);
}
// Smell snake
if (event_id==22) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="That's an angry snake with a knife";
		follow = instance_nearest(x,y,oSnake);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="In case you skipped your biology classes";
		follow = instance_nearest(x,y,oSnake);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="I think you can only kill them from behind\nand I'm not sure but I think you'll get 1 life back";
		follow = instance_nearest(x,y,oSnake);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			oGUIBAR.task1="+ Task done!";	
			oGUIBAR.task1col="[#4CFF4C]";
			oGUIBAR.task2="- Leave the room"
			oGUIBAR.alarm[1]=1; //resize
			instance_destroy(self);
	}
}
// Jungle explored
if (event_id==23) && !(blocker)
{
		blocker=true;
		oGUIBAR.task1="+ Task done!";
		oGUIBAR.task2="- Destroy bird bases";
		oGUIBAR.task1col="[#4CFF4C]";
		instance_destroy(self);
		
}
// back to cat
if (event_id==24) && !(blocker)
{
	blocker=true;
		instance_create_layer(1,1,"Particles",oBossHP);
		text="That red bird looks\nlike it shoots lasers.";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=240;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
		instance_destroy(self);
}




// meeting doggo
if (event_id==25) && !(blocker)
{
	if (sequence==1)
	{
		if !(instance_exists(oRatEvent))
		{		
		blocker=true;
		text="Auhh. I mean meow! Sorry,\nI'm still getting used to it..";
		follow = instance_nearest(x,y,oDogFake);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=506;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
		
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
	}
	if (sequence==2)
	{
				blocker=true;
		text="Umn.. used to what?";
		follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
				blocker=true;
		text="Being a cat and all.\n Ever since I was young\nI felt different.. you feel me?";
			follow = instance_nearest(x,y,oDogFake);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=506;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4)
	{
				blocker=true;
		text="Umn not really.. but It's 2023\nso I'll just have to tolerate it.";
			follow = oPlayer;
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
					with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
		if (sequence==5)
	{
		blocker=true;
		text="Excellent! My first cat friend.\nLets go. I'll help you through the desert!";
			follow = instance_nearest(x,y,oDogFake);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=506;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
				with (oFollowPlayer)
			{
			target = other.follow;
			}
				
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	self.alarm[0]=10;
	}
	
}

// snake detected
if (event_id==26) && !(blocker)
{
		blocker=true;
		instance_destroy(oTextFloat);
		text="As a true cat friend I shall\n help you remove these snakes";
		
		if instance_exists(oDogFake)
		{
		follow = instance_nearest(x,y,oDogFake);
		if instance_exists(oDogAttack) {instance_nearest(x,y,oDogAttack);}
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
					whasound=506;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
		}
	
	oGUIBAR.task2="- Eliminate all snakes";
	instance_destroy(self);
}
// meeting doggo gang
if (event_id==27) && !(blocker)
{
	if (sequence==1)
	{
		blocker=true;
		instance_destroy(oDog);
		instance_destroy(oDogFake);
		instance_destroy(oDogAttack);
		text="Looks like we got company.\nYou ready for this mentally?";
		follow = instance_nearest(x,y,oDogSleep);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
		
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2)
	{
		blocker=true;
		text="Auh ha-haa.. You fool! I was a dog all along!";
	with (instance_create_layer(3265,1532,"Dog",oHat))
	{
	image_index=7;
	}
			with (instance_create_layer(3235,1525,"Dog",oDog))
				{
					with (oFollowPlayer)
					{
					target=other.id;
					var fol=other.id;
					}
				image_speed=0;
				image_index=0;
				hsp=0;
				image_xscale=0.7;
				image_yscale=0.7;
				alarm[0]=-1;
				alarm[2]=-1;
				}
			with (instance_create_layer(fol.x,fol.y-80,"Particles",oText))
				{
					whasound=506;
				target=fol;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		
	} 
	if (sequence==3)
	{
			blocker=true;
			text="Wow.. no way.. cut the act.";
			follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
				self.alarm[0]=10;
	}
}	
// heli start
if (event_id==28) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		oDartTrap.alarm[0]=30;
		blocker=true;
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		text="That's definitely the\nweirdest looking species of lizards.";
		follow = instance_nearest(x,y,oHeliLizard);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		oHeliLizard.alarm[0]=60;	
		with (oHeliLizard) {alarm[0]=60;}
		oGUIBAR.task2="- Defeat all lizards";
		text="Attack them from below\nunless you want a new haircut";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			instance_destroy();
	}
}

// Dino start
if (event_id==29) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="What does a dinosaur use to cut wood?";
		follow = instance_nearest(x,y,oDino);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=507;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="a dino-saw?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Neah man, where you get that from?";
		follow = instance_nearest(x,y,oDino);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=507;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4) // x300 ja y700
	{
		blocker=true;
		text="Your teeth is the correct answer.";
		follow = instance_nearest(x,y,oDino);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=507;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=10;
	}
}
// onion field into angel
if (event_id==30) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="How dare you pick these sacred onions!?";
		follow = instance_nearest(x,y,oAngel);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=508;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Umn, I'm sowwy?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Neah, I will show you sorry!\nespecially after you killed your own kind!";
		follow = instance_nearest(x,y,oAngel);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=508;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4) // x300 ja y700
	{
		blocker=true;
		text="You serious? it was a dog with a mask.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==5) // x300 ja y700
	{
		blocker=true;
		text="It identified itself as a CAT!";
		follow = instance_nearest(x,y,oAngel);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=508;
				extraheight=80;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	
			alarm[0]=1;
	}
}
// Jesus
if (event_id==31) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
			with (instance_create_layer(950,5,"BefEdge",oJesus))
				{
				oFollowPlayer.target=self;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="I'm here on the behalf of God";
		follow = instance_nearest(x,y,oJesus);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				whasound=509;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Apparently mister everything had\na few too many drinks last night";
		follow = instance_nearest(x,y,oJesus);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
					whasound=509;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4) // x300 ja y700
	{
		blocker=true;
		text="So yeah. Congratulations on\ndefeating that escaped fallen angel!";
		follow = instance_nearest(x,y,oJesus);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
					whasound=509;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==5) // x300 ja y700
	{
		oJesus.alarm[2]=1;
		blocker=true;
		text="Thanks, I guess?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				extraheight=40;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	instance_destroy();
	}
}
// CTHULU
if (event_id==32) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="You really thought you...\na cat... can just ride my seas?";
		follow = instance_nearest(x,y,oCthulu);
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=510;
				extraheight=80;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Yeah, what's the matter?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="The amount of innocent fish you\n have devoured throughout your life.";
		follow = instance_nearest(x,y,oCthulu);
			with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
				{
					whasound=510;
				extraheight=80;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==4) // x300 ja y700
	{
		blocker=true;
		text="There's gonna be one more\non the list real soon";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// CTHULU
if (event_id==33) && !(blocker)
{
instance_create_layer(1,1,"Characters",oTimer);
instance_destroy();
}
// Snakes start
if (event_id==34) && !(blocker)
{
		var startbox= instance_nth_nearest(x,y,oSnakeBox,3);
		startbox.alarm[0]=2;
		text="Ah yes of course. Snakes on plane.";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=180;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
		instance_create_layer(1,1,"Characters",oTimer);
				instance_destroy();
}
// ACTIVATE EVENT 34
if (event_id==35) && !(blocker)
{
with(oEvent)
{
	activated=true;
}
instance_destroy(self);
}

// Potato tree
if (event_id==36) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="I'm no expert on trees\nbut that shouldn't be flying.";
		follow = instance_nearest(x,y,oOakTree);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="And what's with the potatoes?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			instance_destroy();
	}
}

// Fat man
if (event_id==37) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="I THOUGHT I TOLD YOU TREE HUGGERS\nTO STAY OFF MY PROPERTY!";
		follow = instance_nearest(x,y,oFatMan);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
					whasound=504;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Sir, I think you've\nmistaken my specie.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// fat mans house start
if (event_id==38) && !(blocker)
{
		text="Jesus... it smells like\nthere's lots of pee in here!";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=240;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				instance_destroy();
}
// big toilet
if (event_id==39) && !(blocker)
{
		blocker=true;
		oToilet.alarm[2]=10;
		with(oJumpKey) {joonista=false;}
			with (oGUIBAR) {oGUIBAR.joonista=false;oGUIBAR.joonistatasks=false;}
			follow = instance_nearest(x,y,oToilet);
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		    instance_destroy(self);
}

// big toilet vol 3 
if (event_id==40) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Last time I saw a turd talking, \n I was watching South Park.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// monke see
if (event_id==41) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Monkey see monkey do, yes";
		follow = instance_nearest(x,y,oMonke);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=512;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="That's bananas for sure.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// Titan start 
if (event_id==42) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Cat has soul! me master will like this gift";
		follow = instance_nearest(x,y,oTitan);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=513; 
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="I was ginger in my last life\nbut whatever you say naked lady";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// Ghost mission accepted and lead to the object
if (event_id==43) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Wait, that's it! That's my sniper!";
		follow = instance_nearest(x,y,oGhost);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=514;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Bless you for releasing me!\nHere are a few tips for these caves: \n 1. Use pillars on the ceiling for Titan\n 2. Fight the Demon in god state \n Well. I'm outta here!";
		follow = instance_nearest(x,y,oGhost);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
					whasound=514;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			
					var whatroom=room_get_name(room);
		var settingsmap=ds_map_secure_load("settings.sav");
		var key=string(whatroom)+"Egg1";
				var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=true;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
			
			
			
			alarm[0]=1;
	}
}
// Demon start 
if (event_id==44) && !(blocker) 
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="WHAT! It can't be! \n How did you pass the titan?\nIs that alcoholic sleeping again?";
		follow = instance_nearest(x,y,oDemon);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=515;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Not exactly.\n He went swimming \n in the lava.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}

// Engine break 
if (event_id==45) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="That's it! I've had enough of these thugs\ncutting off our power for giggles!";
		follow = instance_nearest(x,y,oSoySauce);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=516;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="This is my first time seeing a soy sauce talk. \n I wonder what else it's capable of?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
// crossed lake
if (event_id==46) && !(blocker)
{
	oGUIBAR.task1="+ Task done!";	
	oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- Read first note!";
	instance_destroy();
}

// Wolf fight start
if (event_id==111) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="What? you really thought\nyou can steal our food?";
		follow = instance_nearest(x,y,oWolfBoss);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=517;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Tbh, I'm actually pissed that\nyou killed that cute bunny!";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
//  pigman
if (event_id==47) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Oh you wolves never learn, do ya?";
		follow = instance_nearest(x,y,oPigMono);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=518;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="I mean no harm! I even took them out!";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Nice try wolfie but that's\nexactly what the last wolfie said.";
		follow = instance_nearest(x,y,oPigMono);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=518;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
//  ni start
if (event_id==48) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Sorry stinky feline,\n YOU.. SHALL.. NOT.. PASS!!";
		follow = instance_nearest(x,y,oKnights);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				whasound=519;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Aren't you the knights of NI... \n but you act like Gandalf?";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="NI! Now leave peasant!";
		follow = instance_nearest(x,y,oKnights);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
				{	
				whasound=519;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}
//  drake start
if (event_id==49) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Who dares to wake me a year \n early from my 1000 year sleep!";
		follow = instance_nearest(x,y,oDrake);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=520;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Umn.. it was those pesky knights!\nI myself just came to investigate..";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="Lead me to them! I'll show them no mercy!\n And make sure I don't touch any garlic bread!\n I'm explosively allergic to them..";
		follow = instance_nearest(x,y,oDrake);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=520;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}

//  pumpkin boss
if (event_id==50) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Why did you kill my caretaker you stupid wolf? \n I'll you teach a lesson!";
		follow = instance_nearest(x,y,oPumpkin);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=521;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="After all the crap I've seen in the past days, \n a trashtalking pumpkin should be least of my worries.";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="You're gonna wish you hadn't said that!";
		follow = instance_nearest(x,y,oPumpkin);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=521;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		alarm[0]=1;
	}
	
}
// Mjackson
if (event_id==51) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="You shouldn't have come back!";
		follow = instance_nearest(x,y,oMJ);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=522;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Oh my god oh my god oh my god\nMICHAEL JACKSON! I'm a huge fan!\n Adopt me please! Meow!!!";
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="So lets dance..";
		follow = instance_nearest(x,y,oMJ);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=522;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		alarm[0]=1;
	}
	
}
// chinese
if (event_id==52) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="So the kitty has finally reached the mastermind!";
		follow = instance_nearest(x,y,oChinese);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
					whasound=504;
				extraheight=-50;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		oChinese.shieldOn=true;
		text="Or has it?";
		follow = instance_nearest(x,y,oChinese);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{
						whasound=504;
					extraheight=-50;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				instance_create_layer(x,y,"Electro",oTerminator);
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==3) // x300 ja y700
	{
		blocker=true;
		text="It seems you aint in the list my friend..";
		follow = instance_nearest(x,y,oTerminator);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
					whasound=505;
				extraheight=-70;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		alarm[0]=1;
	}
}
// terminator dying
if (event_id==53) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		oTerminator.image_index=2;
		oTerminator.alarm[0]=-1;
		oTerminator.alarm[4]=-1;
		oTerminator.alarm[5]=-1;
		instance_destroy(oWarning);
		text="Power saving mode activated!";
		follow = instance_nearest(x,y,oTerminator);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{	
				whasound=505;
				extraheight=-60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="No worries.. I still have my minions!";
		
		follow = instance_nearest(x,y,oChinese);
			with (instance_create_layer(follow.x,follow.y+60,"Particles",oText))
				{
				whasound=504;
				extraheight=-50;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}

// monocle secret boss in room1
if (event_id==54) && !(blocker)
{
	if (sequence==1) // x300 ja y700
	{
		blocker=true;
		text="Guess someones having trouble with reading.\nLet me help ya out a bit!";
		follow = instance_nearest(x,y,oMonocle);
			with (instance_create_layer(follow.x,follow.y-60,"Particles",oText))
				{	
				whasound=505;
				extraheight=60;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	}
	if (sequence==2) // x300 ja y700
	{
		blocker=true;
		text="Probably shouldn't have summoned\n a boss in the tutorial levels.";
		
		follow = instance_nearest(x,y,oPlayer);
			with (instance_create_layer(follow.x,follow.y-50,"Particles",oText))
				{
				extraheight=50;	
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
				with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
			alarm[0]=1;
	}
}

} // end bracket ,must be las