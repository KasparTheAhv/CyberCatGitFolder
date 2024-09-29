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
	if !(givenkeybook)
	{
		givenkeybook=true;
		TaskDone(1);
		TaskNew(2,"Escape the room");
	}	
}