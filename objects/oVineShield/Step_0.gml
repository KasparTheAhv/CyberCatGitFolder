/// @desc 
if (start==true)
{
	if (madeachild==false)
	{
	if (image_xscale<1)	{image_xscale+=0.4;} else {madeachild=true; alarm[2]=1;} // ala2 makes child
	}
} else {
	if (deleteme==true)
	{
	if (image_xscale>0)	{image_xscale-=0.6;} else { alarm[1]=1;} // ala1 signals child	and destroys self
	}
} 