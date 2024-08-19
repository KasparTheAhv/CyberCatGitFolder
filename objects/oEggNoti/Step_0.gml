/// @desc
if (stage==0) {exit;}


if (scastage==0)
{
if (scachanger<1.2)	{scachanger+=0.05;} else {scastage=1;}
} else {
if (scachanger>1)	{scachanger-=0.01;}
}
scale=scachanger+(0.5*global.GUI);
textscale="[scale,"+string(scale)+"]";


if (stage<3) {if (image_alpha<1) {image_alpha+=0.04;textalpha="[alpha,"+string(image_alpha)+"]";} } else {
	
	self.x+=4;
	if (image_alpha>0) {image_alpha-=0.02;textalpha="[alpha,"+string(image_alpha)+"]";}else {instance_destroy();}

	}
if (stage==1)
{
if (self.x<middlex)
	{
	x+=3;	
	} else {stage=2;alarm[1]=60;}
}