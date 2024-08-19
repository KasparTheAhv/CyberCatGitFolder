/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 745113D0
/// @DnDArgument : "code" "/// @desc PROGRESS$(13_10)if (pauser) {exit;}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (cycle!=2)$(13_10){$(13_10)var size=clamp(percent,0,1);$(13_10)var alphasize=size-0.1;$(13_10)var alphasize=clamp(alphasize,0,1);$(13_10)textalpha="[alpha,"+string(alphasize)+"]";$(13_10)alltext=string(textscale)+string(textalpha)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(text);$(13_10)}$(13_10)$(13_10)if (mode != TRANS_MODE.OFF)$(13_10){	$(13_10)	if (mode == TRANS_MODE.INTRO)$(13_10)	{$(13_10)		percent = max(0,percent - max((percent/8),0.015));$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if (showtext) {if (percent>=1) && (cycle==0) {cycle=1;pauser=true;alarm[0]=120;exit;}}$(13_10)$(13_10)		if (percent<=0) && (cycle>=1) {cycle=0;}$(13_10)		percent = min(1.1,percent + max(((1.1 - percent)/8), 0.015));$(13_10)	}$(13_10)	$(13_10)	picPercent=clamp(percent,0,1);$(13_10)	xx1=xx-(pixelDistance-(pixelDistance*picPercent));$(13_10)	xx2=xx+(pixelDistance-(pixelDistance*picPercent));$(13_10)	if (percent == 1.1) || (percent == 0)$(13_10)	{$(13_10)		switch (mode)$(13_10)		{$(13_10)			case TRANS_MODE.INTRO:$(13_10)			{$(13_10)				mode = TRANS_MODE.OFF;$(13_10)				$(13_10)				$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.NEXT:$(13_10)			{$(13_10)				mode = TRANS_MODE.INTRO;$(13_10)				if room_exists(room_next(room))$(13_10)				{$(13_10)				    room_goto_next();$(13_10)				} else {room_goto(target);}$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.GOTO:$(13_10)			{$(13_10)				mode = TRANS_MODE.INTRO;$(13_10)				room_goto(target);$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.RESTART:$(13_10)			{$(13_10)				mode = TRANS_MODE.INTRO;$(13_10)				room_goto(room_get_name(room));$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)	"
/// @desc PROGRESS
if (pauser) {exit;}




if (cycle!=2)
{
var size=clamp(percent,0,1);
var alphasize=size-0.1;
var alphasize=clamp(alphasize,0,1);
textalpha="[alpha,"+string(alphasize)+"]";
alltext=string(textscale)+string(textalpha)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(text);
}

if (mode != TRANS_MODE.OFF)
{	
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/8),0.015));
	}
	else
	{
		if (showtext) {if (percent>=1) && (cycle==0) {cycle=1;pauser=true;alarm[0]=120;exit;}}

		if (percent<=0) && (cycle>=1) {cycle=0;}
		percent = min(1.1,percent + max(((1.1 - percent)/8), 0.015));
	}
	
	picPercent=clamp(percent,0,1);
	xx1=xx-(pixelDistance-(pixelDistance*picPercent));
	xx2=xx+(pixelDistance-(pixelDistance*picPercent));
	if (percent == 1.1) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				
				
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				if room_exists(room_next(room))
				{
				    room_goto_next();
				} else {room_goto(target);}
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(room_get_name(room));
				break;
			}
		}
	}
}