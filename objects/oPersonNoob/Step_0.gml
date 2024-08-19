/// @desc


if (sign(image_xscale)==1)
{
	extra=0;
	if (petting)
	{
		if (swayleft)
		{
		if (sway<35) {sway+=2;} else {swayleft=false;}		
		} else {
		if (sway>15) {sway-=2;} else {swayleft=true;}
		}
	} else {sway=0;}
} else {
	extra=270;
		if (petting)
	{
		if (swayleft)
		{
		if (sway>15) {sway-=2;} else {swayleft=false;}		
		} else {
		if (sway<35) {sway+=2;} else {swayleft=true;}
		}
	} else {sway=0;}
	
	
}