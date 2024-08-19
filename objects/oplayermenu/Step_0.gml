/// @desc
if (movegod)
{
	
	if (godInd<maxframes-1)
	{
	godInd+=1;	
	} else {
	godInd=0;	
	}
	
if (xx<900)	{xx+=4;} else {movegod=false;xx=-100;}
}