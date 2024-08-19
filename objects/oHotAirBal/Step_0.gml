// if the object is visible
if (visible)
{
	// Start moving it's x cordinate to left every step
	x-=1.5;
	
	// Change objects y cordinate according to i*0.2
	if (goUp) 
	{
	 if (i<15) {i+=0.5; y=defY+(i*0.2);} else {goUp=false;} 	
	} else {
	 if (i>-15) {i-=0.5; y=defY+(i*0.2);} else {goUp=true;}		
	}
}


