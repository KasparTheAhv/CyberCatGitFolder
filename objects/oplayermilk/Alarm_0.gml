
if (sign(image_xscale)==1)
{
if (dir<410)
{dir+=3;alarm[0]=1;} else {animate=true;alarm[3]=40;alarm[2]=50;}


}
else
{
if (dir>310)
{
dir-=3;
	
alarm[0]=1;
} else {animate=true;alarm[3]=40;alarm[2]=50;}
if (animate==true)
{
	dir-=2;
}
	
}