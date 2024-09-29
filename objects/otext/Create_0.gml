// Set variables
cancelendchanges=false;
spd=2;
times=1;
letters = 0;
text = "This is a text\nSecond line";
length = string_length(text);
text_current = "";
w = 0;
h = 0;
extraheight=40;
border = 15;
onetimer=true;
oki=0;
target=noone;
who=noone;
alarm[1]=140;
skiprdy=false;

whasound=irandom_range(0,500); // peale 500 on specific
alarm[0]=1;
rW=room_width;
rH=room_height;

//SCRIBBLE
color="[#FFFFFF]";
texterscale=oGUIBAR.zoomLevel*0.5;
textscale="[scale,"+string(texterscale*0.65)+"]";

// Call this from oRoomController
with(oRoomController)
{
alarm[6]=-1;
	// If user isn't reading a note
	if !(global.reading)
	{
		global.reading=true;
		// Set initial drawing states to noone in gui drawing objects
		PrevDrawStateVS1=noone;
		PrevDrawStateVS2=noone;
		PrevDrawStateAK=noone;
		PrevDrawStatePA=noone;
		PrevDrawStateGU=noone;
		PrevDrawStateJMP=noone;
		
		// Cet the current states from them
		with(oVStick)
		{
			if (stick_id==1) {other.PrevDrawStateVS1=self.joonista;}
			if (stick_id==2) {other.PrevDrawStateVS2=self.joonista;}
			self.joonista=false;
		}
		with(oAttackKey)
		{
			other.PrevDrawStateAK=self.joonista;
			self.joonista=false;
		}
		with(oJumpKey)
		{
			other.PrevDrawStateJMP=self.joonista;
			self.joonista=false;
		}
		with(oGUIBAR)
		{
			other.PrevDrawStateGU=self.joonista;
			other.PrevDrawStateGUtasks=self.joonistatasks;
			self.joonista=false;
			self.joonistatasks=false;
		}
		
		// Destroy these gui items entirely:
		with(oPause)
		{
			instance_destroy(oPause);
		}
		with(oMagnify)
		{
			instance_destroy(oMagnify);
		}
		with(oBook)
		{
			if !instance_exists(oUnlockBook) {instance_destroy(oBook); }
		}

	}
}