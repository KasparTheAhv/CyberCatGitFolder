/// @desc
if (throwing)
{
image_angle+=4;	
} else {image_angle+=22;exit;}

if (throwstage==1)
{
if (xmod<40)	// 40 //y 105
	{
	xmod+=1.5;
	ymod-=3.9375;
	} else { throwstage=2;}
}

if (throwstage==2)
{
if (xmod<58)	// 18 //y 105
	{
	xmod+=2;
	ymod+=3.32;
	} else {  throwstage=3;}
}

if (throwstage==3)
{
	picindex=1;
if (ymod<35)	// 18 //y 105
	{
		if (modchanger<3) {modchanger+=0.1;}
	ymod+=modchanger;
	} else { throwstage=4;}
}

if (throwstage==4)
{
if (xmod>0)	// 18 //y 105
	{
	xmod-=1.2;
	} else { 
throwing=false;
picindex=0;
alarm[1]=irandom_range(120,220);
xmod=0;ymod=0;x=startX;y=startY;modchanger=0.5;}
}


self.x=startX+xmod;
self.y=startY+ymod;