/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66A4019E
/// @DnDArgument : "code" "/// @desc SET VARIABLE$(13_10)global.selectionlocker=0;$(13_10)w = global.gameWidth;$(13_10)h = global.gameHeight;$(13_10)xx=display_get_gui_width()*0.5;$(13_10)$(13_10)///// new transition effect$(13_10)picXscale=round(w/234);$(13_10)picYscale=picXscale;$(13_10)$(13_10)var newYReso = picYscale*108;$(13_10)$(13_10)if (newYReso<h) {$(13_10)$(13_10)picYscale=round(h/108);$(13_10)var tempYscale=picYscale+1;$(13_10)picYscale=floor(tempYscale);$(13_10)picXscale=picYscale;$(13_10)}$(13_10)picPercent=0;$(13_10)pixelDistance = 280*picXscale*0.85;$(13_10)xx1=xx-pixelDistance;  // vasak$(13_10)xx2=xx+pixelDistance;$(13_10)$(13_10)//////1$(13_10)wH= w*0.2;$(13_10)wH2 = w*0.4;$(13_10)wH3 = w*0.6;$(13_10)wH4 = w*0.8;$(13_10)pauser=false;$(13_10)cycle=2;$(13_10)text="";$(13_10)alltext="";$(13_10)play_sound(snWhoosh,false);$(13_10)yy=display_get_gui_height()*0.5;$(13_10)maxWidth=display_get_gui_width()*0.6;$(13_10)///////////$(13_10)if instance_exists(oRoomController)$(13_10){$(13_10)showtext=false;$(13_10)} else {showtext=false;}$(13_10)$(13_10)enum TRANS_MODE$(13_10){$(13_10)	OFF,$(13_10)	NEXT,$(13_10)	GOTO,$(13_10)	RESTART,$(13_10)	INTRO,$(13_10)}$(13_10)mode = TRANS_MODE.INTRO;$(13_10)percent = 1;$(13_10)target = room;$(13_10)alarm[1]=1; // choose text$(13_10)//SCRIBBLE$(13_10)sizer=0;$(13_10)color="[#FFFFFF]";$(13_10)textscaler=1.1;$(13_10)textalpha="[alpha,"+string(0)+"]";$(13_10)textscale="[scale,"+string(textscaler)+"]";"
/// @desc SET VARIABLE
global.selectionlocker=0;
w = global.gameWidth;
h = global.gameHeight;
xx=display_get_gui_width()*0.5;

///// new transition effect
picXscale=round(w/234);
picYscale=picXscale;

var newYReso = picYscale*108;

if (newYReso<h) {

picYscale=round(h/108);
var tempYscale=picYscale+1;
picYscale=floor(tempYscale);
picXscale=picYscale;
}
picPercent=0;
pixelDistance = 280*picXscale*0.85;
xx1=xx-pixelDistance;  // vasak
xx2=xx+pixelDistance;

//////1
wH= w*0.2;
wH2 = w*0.4;
wH3 = w*0.6;
wH4 = w*0.8;
pauser=false;
cycle=2;
text="";
alltext="";
play_sound(snWhoosh,false);
yy=display_get_gui_height()*0.5;
maxWidth=display_get_gui_width()*0.6;
///////////
if instance_exists(oRoomController)
{
showtext=false;
} else {showtext=false;}

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
alarm[1]=1; // choose text
//SCRIBBLE
sizer=0;
color="[#FFFFFF]";
textscaler=1.1;
textalpha="[alpha,"+string(0)+"]";
textscale="[scale,"+string(textscaler)+"]";