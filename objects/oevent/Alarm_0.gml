///@desc after event tasks
if !(instance_exists(oText))
{
if (room==Room16) && (event_id==25) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
			
	var who =instance_nearest(x,y,oDogFake)
	who.alarm[2]=60;
	who.alarm[0]=40; 
	who.hsp=-2;
	who.image_speed=1;
	oGUIBAR.task1="- Survive the desert";
	instance_destroy();
	exit;
	}	
if (room==Room16) && (event_id==27) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
			
	var who =oDog;
	with (who)
	{
	hsp=2;
	image_speed=1;
	foreverchase=true;
	allowedtoatk=true;
	chase=true;
	alarm[0]=1;
	alarm[1]=30;
	alarm[10]=50;
	}
	
	oDogSleep.alarm[1]=5;
	oGUIBAR.task3="- Defeat all Dogs";
	instance_destroy();
	exit;
	}	
	
if (room==Room17) && (event_id==29) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	oDino.alarm[0]=10;
	oGUIBAR.task3="- Defeat dino";
	instance_destroy();
	exit;
	}	
	
	
if (room==Room18) && (event_id==30) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	oAngel.alarm[0]=20; // start fly
	oAngel.alarm[1]=100; // start shoot
	oGUIBAR.task1="+ Task done!";	
	oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- Defeat the angel";
	oGUIBAR.alarm[1]=2;
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
	}		
if (room==Room19) && (event_id==32) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	oCthulu.alarm[0]=20; // start fly
	oGUIBAR.task1="- Defeat Cthulu";
	oGUIBAR.alarm[1]=2;
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
	}	
if (room==Room22) && (event_id==37) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	oFatMan.alarm[0]=20; // start fly
	oGUIBAR.task1="- Defeat FatMan";
	oGUIBAR.alarm[1]=2;
	if !(instance_exists(oBossHP))
	{	
		oFatMan.triggerrate=150;
		oFatMan.current_state=fatmanstates.follow;
		oFatMan.image_speed=1;
		oFatMan.sprite_index=sFatManR;
	instance_create_layer(1,1,"Particles",oBossHP);
	oFatMan.immobile=false;
	}
	instance_destroy();
	exit;
	}
	

	
if (room==Room23) && (event_id==40) {	
	with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	with (oGUIBAR) {joonista=true;joonistatasks=true;}
	with (oPause) {joonista=true;}
	with (oTurd) {alarm[0]=20;}
	with (oToilet) {alarm[0]=30;}
	with (oJumpKey) {joonista=true;}
	instance_destroy();
	exit;
}
	if (room==Room15) && (event_id==41) {
	
			with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	
	oGUIBAR.task1="- Trigger a monkey";
	oGUIBAR.alarm[1]=2;
	instance_destroy();
	exit;
	}
	
if (room==Room24) && (event_id==42) 
{	
	with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}	
	oTitan.alarm[0]=20; // start fly
	oGUIBAR.task1="- Defeat Titan";
	oGUIBAR.alarm[1]=2;
	instance_destroy();
	exit;
}
// ghost bye bye
if (room==Room24) && (event_id==43) 
{	
	with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}			
	oGhost.state=3; // make ghost disappear
	instance_destroy();
	exit;
}
// Demon fight start
if (room==Room24) && (event_id==44) 
{
	with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	oDemon.alarm[0]=20; // start fly
	oGUIBAR.task2="- Defeat Demon";
	oGUIBAR.alarm[1]=2;
	with (oBatBase) {activated=true;}
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
}
// soy sauce
if (room==Room26) && (event_id==45) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	oSoySauce.ready=true;
	oSoySauce.alarm[9]=1;
	instance_destroy();
	exit;
}
// wolf boss
if (room==Room27) && (event_id==111) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	
	with (oWolfBoss)
	{
	alarm[10]=1; readytofight=true;
	alarm[3]=3; alarm[5]=80;alarm[1]=40;
	}
	oGUIBAR.task2="- Defeat wolves";
	oGUIBAR.alarm[1]=2;
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
}
// pig boss
if (room==Room28) && (event_id==47) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	
	
		oPigMono.alarm[5]=1;

	oGUIBAR.task1="- Defeat uncooked pork";
	oGUIBAR.alarm[1]=2;
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
}
if (room==Room29) && (event_id==48) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

	oGUIBAR.task1="+ Task done!";oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- Pass knights";
	oGUIBAR.alarm[1]=2;
	instance_destroy();
	exit;
}
if (room==Room29) && (event_id==49) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

oDrake.cur_state=drakestates.walk;
oDrake.alarm[0]=3;
	oGUIBAR.task3="- Escort drake";
	oGUIBAR.alarm[1]=2;
	instance_destroy();
	exit;
}
if (room==Room30) && (event_id==50) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

	oPumpkin.alarm[0]=1;
	oGUIBAR.task1="- Make pumpkin pie";
	instance_create_layer(1,1,"Particles",oBossHP);
	oGUIBAR.alarm[1]=2; // resize task box
	instance_destroy();
	exit;
}
if (room==Room30) && (event_id==51) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

	oMJ.alarm[0]=1;
	oGUIBAR.task3="- Defeat MJ";
	instance_create_layer(1,1,"Particles",oBossHP);
	oGUIBAR.alarm[1]=2; // resize task box
	instance_destroy();
	exit;
}

if (room==Room31) && (event_id==52) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	
	with (oBirdBase) {neverdeactivate=true; activated=true;}
	if instance_exists(oBirdBase) {oBirdBase.neverdeactivate=true;oBirdBase.activated=true;}
	oTerminator.alarm[4]=10;
	oGUIBAR.task1="+ Task done!";oGUIBAR.task1col="[#4CFF4C]";
	oGUIBAR.task2="- Find a way in";
	oGUIBAR.alarm[1]=2; // resize task box
	instance_destroy();
	exit;
}
if (room==Room31) && (event_id==53) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

	oChinese.alarm[10]=10; // spawn heli lizards
	oGUIBAR.task2="+ Task done!";oGUIBAR.task2col="[#4CFF4C]";
	oGUIBAR.task3="- Defeat The Mastermind!";
	oGUIBAR.alarm[1]=2; // resize task box
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
}

if (room==Room1) && (event_id==54) 
{
		with (oFollowPlayer)
			{
			target = oPlayer;
			}
			with (oPlayer)
				{
				canatk=true;
				immune=false;
				}
			with(oVStick)
			{
			vstick_set_active(stick_id,true);
			}
	

	oMonocle.alarm[0]=10; // start monocle state machine
	instance_create_layer(1,1,"Particles",oBossHP);
	instance_destroy();
	exit;
}
// ending bracket	( turns the events activated state variable around
if (activated) {activated=false;} else {activated=true;}
} else {alarm[0]=50;}