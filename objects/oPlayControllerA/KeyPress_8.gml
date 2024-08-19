
if (room==RoomStats)
{
if keyboard_virtual_status() {exit;}	
}

if (room==RoomCredits)
{
if (oSearch.searchOpen)	{exit;}
}

if (backspace>=1)
{
audio_stop_all();
instance_destroy(oConfigureJS);
instance_destroy(oMusicController);
SlideTransition(TRANS_MODE.GOTO,RoomMenu);
}
self.alarm[0]=20;
backspace+=1;