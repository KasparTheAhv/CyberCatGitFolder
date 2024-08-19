/// @desc
if (appear)
{
	if (currentY<maxY)	
	{
		currentY+=5;
		midY+=5;
	} else {if !(blocker) {alarm[0]=240; blocker=true;} }
} else {

	if (currentY>startY)	
	{
		currentY-=5;
		midY-=5;
	} else {instance_destroy();}
}