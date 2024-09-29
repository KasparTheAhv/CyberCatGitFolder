/// @desc
draw_set_circle_precision(64);
allowstep=false;

if (room==Room6)
{
seconds=40;
textscale=3*global.GUI;
textX=display_get_gui_width()*0.55;
textY=display_get_gui_height()*0.07;
}

if (room==Room20)
{
seconds=200;
textscale=3*global.GUI;
textX=display_get_gui_width()*0.55;
textY=display_get_gui_height()*0.07;
allowstep=true;
}

if (room==Room21)
{
seconds=15;
textscale=3*global.GUI;
textX=display_get_gui_width()*0.55;
textY=display_get_gui_height()*0.07;
}

color="[#FFFFFF]";
textscale="[scale,"+string(0.75)+"]";

guix=global.gameWidth*0.5;
guiy=global.gameHeight*0.06;
pieseconds=seconds*60;
piestartseconds=pieseconds;

// new second count
seconds=floor(pieseconds/60);