if (CurrentY<SecondCornerY)
{
CurrentY+=1*image_yscale;
alarm[1]=1;
} else {
	spark=false;
	alarm[0]=90;
	exit;
}