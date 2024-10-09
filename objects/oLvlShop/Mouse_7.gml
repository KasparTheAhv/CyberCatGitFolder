/// @desc
leaderTime=0;
if (leaderOpen) {alarm[0]=10;exit;}


if (room==RoomSkins)
{
	SlideTransition(TRANS_MODE.GOTO,RoomLvl);
	//for (var i = 0; i < 62; i++) // room loop   uncomment if want to reset eggs and notes to 0
	//{
	//	var whatroom="Room"+string(i);
	//	// notes and secrets loop
	//	for (var j = 0; j<7;j++)
	//	{
	//	_whatnote=string(whatroom)+"Note"+string(j);
	//	_notevalue= ds_map_find_value(map,_whatnote);
	//	if is_undefined(_notevalue) {_notevalue=0;}
	//    variable_struct_set(data,_whatnote, _notevalue);
	//	
	//	_whatsecret=string(whatroom)+"Egg"+string(j);
	//	_secretvalue= ds_map_find_value(map,_whatsecret);
	//	if is_undefined(_secretvalue) {_secretvalue=0;}
	//    variable_struct_set(data,_whatsecret, _secretvalue);
	//	}
	//}
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