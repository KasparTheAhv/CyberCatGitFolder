/// @desc


if (sign(image_xscale)==1)
{
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