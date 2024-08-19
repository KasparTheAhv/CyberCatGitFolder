/// @desc
if (image_index==2)
{
	if (extraUp)
	{
	 if (extrasca<1.15) {extrasca+=0.01;} else {extraUp=false;}	
	} else {
	 if (extrasca>0.85) {extrasca-=0.01;} else {extraUp=true;}		
	}
}