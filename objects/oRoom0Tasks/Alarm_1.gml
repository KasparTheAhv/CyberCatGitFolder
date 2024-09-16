// summon task book 
SummonTutBook(oPlayer,2);

// Allow task drawing
oGUIBAR.joonistatasks=true;

// Change tutorial book sequence
if (global.booktutsequence==3) {global.booktutsequence=0;}

// Allow drawing of oPause, oMagnify, and the functionality of joystick
with(oPause) {joonista=true;}
with(oMagnify) {joonista=true;}
with(oVStick)
{
	if(stick_id==1)
	{
	toimi=true;	
	}
}

// Alarm for another book summoning
alarm[3]=60;

// Starts game
oPlayerFake.alarm[8]=1;

