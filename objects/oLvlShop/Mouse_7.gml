/// @desc
leaderTime=0;
if (leaderOpen) {alarm[0]=10;exit;}


if (room==RoomSkins)
{
SlideTransition(TRANS_MODE.GOTO,RoomLvl);	
}


if (room==RoomLvl)
{
SlideTransition(TRANS_MODE.GOTO,RoomSkins);
}


if (room==RoomStats) && (image_index==9)
{
SlideTransition(TRANS_MODE.GOTO,RoomSkins);
}

if (room==RoomStats)  && (image_index==3)
{
SlideTransition(TRANS_MODE.GOTO,RoomMenu);
}