if (vanish)
{
	if (rectscaler>0)
	{
		if (textsca<0.5) {rectscaler-=0.1;}
	if (textsca>0) {textsca-=0.08;}
	} else {
		if (leave) {
			oPlayControllerA.alarm[2]=1;
			instance_destroy(oMusicController);
			audio_stop_all();
			SlideTransition(TRANS_MODE.GOTO,RoomLvl);}
		instance_destroy(oYes);instance_destroy(oNo);}
} else {
if (rectscaler<1)	
	{
	rectscaler+=0.1;	
	} else {rectscaler=1;
		}
		if (rectscaler>0.5) {if (textsca<1) {textsca+=0.06;}}
}


mymaxerW=(mymaxWhalf*rectscaler);
mymaxerH=(mymaxHhalf*rectscaler);
textscale=string(textsca*textsca*1.25);
textscale="[scale,"+string(textscale)+"][fa_center][fa_middle]";
textwhole2=textscale+"[fa_center][fa_middle]"+colorno+"NO";
textwhole1=textscale+coloryes+"YES";
textwhole3=textscale+"[fa_center][fa_middle]"+color+textquestion;