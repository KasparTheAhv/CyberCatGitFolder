/// @desc resize task box
draw_set_font(fOrbitron);
str1=string_width(task1)*scale;
str2=string_width(task2)*scale;
str3=string_width(task3)*scale;

if (str1>str2) 
{
	if (str1>str3)
	{
	rectx2=xx3+str1+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
	taskalpha=0.8*global.AL;	
	exit;
	}
}

if (str2>str1) 
{
	if (str2>str3)
	{
	rectx2=xx3+str2+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
	taskalpha=0.8*global.AL;		
	exit;
	}
}

if (str3>str2) 
{
	if (str3>str1)
	{
	rectx2=xx3+str3+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
	taskalpha=0.8*global.AL;	
	exit;
	}
}