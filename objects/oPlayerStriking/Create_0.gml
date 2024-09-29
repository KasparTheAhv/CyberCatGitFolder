play_sound(snRAWR,false);
global.strikeZoom=true;
// Make gui clear
// Call this from oRoomController

guix=global.gameWidth*0.5;
guiy=global.gameHeight*0.06;
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
			updateSpeed=2;
			other.PrevDrawStateGU=self.joonista;
			other.PrevDrawStateGUtasks=self.joonistatasks;
			self.joonista=false;
			self.joonistatasks=false;
			defborderX=global.idealW*0.5;
			defborderY=global.idealH*0.5;
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
draw_set_circle_precision(64);
sizeWave=1;
drawtime=true;
// Selection state
maxpushed=0;
pushed=0;
selecting=true;
targetArray = [];
pieseconds=600;
seconds=floor(pieseconds/60);
alarm[1]=60; // remove second

//SCRIBBLE
color="[#FFFFFF]";
textscale="[scale,"+string(1)+"]";

//Line Effect on gui
with (oRoomController) {lineAlphaUp=true;}