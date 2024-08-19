/// @desc
if (room==Room20)
{
seconds=200;
textscale=3*global.GUI;
textX=display_get_gui_width()*0.55;
textY=display_get_gui_height()*0.07;
alarm[0]=60;
}

if (room==Room21)
{
seconds=15;
textscale=3*global.GUI;
textX=display_get_gui_width()*0.55;
textY=display_get_gui_height()*0.07;
}
sec=string(seconds);
textscale="[scale,"+string(textscale)+"]";
textwhole=textscale+"[fOrbitronBigOut][fa_center][fa_middle]";

