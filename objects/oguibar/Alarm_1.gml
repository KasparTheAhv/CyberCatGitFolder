/// @desc resize task box
draw_set_font(fOrbitron);
str1=string_width(task1)*scale;
str2=string_width(task2)*scale;
str3=string_width(task3)*scale;

longest=max(str1,str2,str3);

if (longest==str1)
{
	rectx2=xx3+str1+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
}

if (longest==str2)
{
	rectx2=xx3+str2+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
}

if (longest==str3)
{
	rectx2=xx3+str3+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
}

taskalpha=0.8*global.AL;