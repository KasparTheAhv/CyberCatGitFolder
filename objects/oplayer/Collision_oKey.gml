if (immune) {exit;}
if !(canatk) {exit;}


if !(keyheld) 
{
	canatk=false;
	keyheld=true;
	with(other)
	{
	if !(held) {held=true;}	
	}
}

if (room==Room0)
{
if !(givenkeybook) {
	
	givenkeybook=true;
	
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		oGUIBAR.task2="- Escape the room";
		oGUIBAR.alarm[1]=1;
	
	}	
}