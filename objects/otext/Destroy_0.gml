// Ask gui to resize task window
oGUIBAR.alarm[1]=1;

// Don't do the end changes
if (cancelendchanges) {exit;}

// global.reading back to false and recreate deleted gui objects
with(oRoomController) {alarm[6]=5;}

// Advance the process of Room 0 tutorial sequence
if instance_exists(oRoom0Tasks) {oRoom0Tasks.alarm[2]=1;}

// Create a tutorial book at players position that flies towards book collection
if (room==Room1) && instance_exists(oRatEvent)
{	
	// Summons tutorial book
	SummonTutBook(oPlayer,5);
	instance_destroy();			
}

// If note text is the below string, spawn a tutorial book if it hasnt already been give during this session
if (text=="For you own sake, I suggest you read the\n'Catnip' and 'God state' books before going crazy!")
{
	if (room==Room2) && (oRoomController.room2bookgiven==false)
	{
			oRoomController.room2bookgiven=true;
			SummonTutBook(oPlayer,7);
	}	
}

// If note text is the below string, spawn a tutorial book if it hasnt already been give during this session
if (text=="You'll need it to teleport out of enemies! \n Ohh.. and read this new book about it!")
{
	if (room==Room9) && (oRoomController.room9bookgiven==false)
	{
		oRoomController.room9bookgiven=true;
		SummonTutBook(oPlayer,8);
	}
}