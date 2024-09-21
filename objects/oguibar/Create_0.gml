viewposx=0;
viewposy=0;
global.drawTasks=true;
if (global.recMode)
{
arrowCol=c_aqua;	
} else {
arrowCol=c_white;	
}
barscale=global.GUI;
joonista=true;
HpBarSca=1+(2*barscale);
CnBarSca=1+(2*barscale);
cn=0;
red_cn=0;
hp=90;
red_hp=90;
scr_setup_cool_healthbar(90,9,270*HpBarSca,80);
scr_setup_cool_cnbar(150,15,200*CnBarSca,50);
oGodZoom=false;
gW=global.gameWidth;
gH=global.gameHeight;
varvi=false;
shaportisjust=0;
depth=-1;
// HP BAR
xx=gW*0.05;
yy=gH*0.05;
heightdif=round(40+(70*barscale));
// CN BAR
xx2=gW*0.05;
yy2=yy+heightdif;
// TASKBAR
xx3=gW*0.06;
yyy2=yy+heightdif+(heightdif*1.2);
rectx1=xx;
recty1=yy+heightdif+heightdif;
rectx2=0;
recty2=yyy2+(160+(150*global.GUI*1));
ascale=global.GUI*2*0.8;
layer_id = layer_background_get_id("Background");
layer_id2 = layer_background_get_id("Backgrounds");
dye=1;
dye2=0;
color2=merge_colour(c_white,c_aqua,1);
color = merge_color(c_white,c_black,1);
layer_background_blend(layer_id,color);
guiW=display_get_gui_width()+1;
guiH=display_get_gui_height()+1;


// Camera Setup
cam = view_camera[0];
camera_set_view_size(cam,global.idealW,global.idealH);

cam_default_w = global.idealW;
cam_default_h = global.idealH;

follow = oFollowPlayer;
xTo = xstart;
yTo = ystart;
// Border
defborderX=camera_get_view_border_x(view_camera[0]);
defborderY=camera_get_view_border_y(view_camera[0]);
// Zooming
zoomLevel = 1;
temp_cam_w = cam_default_w;
temp_cam_h = cam_default_h;
alcam=false;
joonistatasks=true; if (room=Room0) {joonistatasks=false;}
// Room Task List
tasks=3;
task1=" ";task2="";task3="   ";
if (room==Room1Tester){tasks=1;task1="- Test room"; }
if (room==Room0){tasks=3;task1="- Pick up key";task2="";task3="";}
if (room==Room1){tasks=2;task1="- Cross the bridge";task2="- Defeat tutorial rat";}
if (room==Room2){tasks=2;task1="- Collect 6 catnip";task2="- Destroy bird base";}
if (room==Room3){tasks=2;task1="- Get electrocuted";task2="- Destroy squirrel base";}
if (room==Room4){tasks=1;task1="- Read the note";}
if (room==Room5){tasks=3;task1="- Read the note and\nreach the rooms end";task2="";task3="";}
if (room==Room6){tasks=1;task1="- Survive the invasion";}
if (room==Room7){tasks=3;task1="- Destroy bird bases";task2="- Destroy squirrel base";task3="- Put the dog back to sleep";}
if (room==Room8){tasks=3;task1="- Kill huge grasshopper";task2="- Destroy bird base";task3="- Terminate all rats";}
if (room==Room9){tasks=2;task1="- Find the owner";task2="";}
if (room==Room10){tasks=1;task1="- Reach the rooms end";}
if (room==Room11){tasks=1;task1="- Make Thor go missing";}
if (room==Room12){tasks=3;task1="- Explore the lab";task2="";task3="";}
if (room==Room13){tasks=2;task1="- Find the jungle";task2="";}
if (room==Room14){tasks=3;task1="- Explore the jungle";task2="";task3="";}
if (room==Room15){tasks=3;task1="- Leave jungle";task2="";task3="";}
if (room==Room16){tasks=3;task1="- Explore the desert";task2="";task3="";}
if (room==Room17){tasks=3;task1="- Enter the pyramid";task2="";task3="";}
if (room==Room18){tasks=3;task1="- Explore the woods";task2="";task3="";}
if (room==Room19){tasks=2;task1="- Cruise the ship";task2="";}
if (room==Room20){tasks=3;task1="- Climb the tallest\nbuilding and jump on\nthe plane in time";task2="";task3="";}
if (room==Room21){tasks=1;task1="- Survive the flight";}
if (room==Room22){tasks=2;task1="- Explore the forest";}
if (room==Room23){tasks=2;task1="- Drink all milk cups";task2="- Reach basement";}
if (room==Room24){tasks=2;task1="- Explore the cave";task2="";}
if (room==Room25){tasks=2;task1="- Escape the cave";task2="";}
if (room==Room26){tasks=3;task1="- Cross the lake";task2="";task3="";}
if (room==Room27){tasks=3;task1="- Exit sewer";task2="";task3="";}
if (room==Room28){tasks=3;task1="- Explore farm";task2="";task3="";}
if (room==Room29){tasks=3;task1="- Explore forest";task2="";task3="";}
if (room==Room30){tasks=3;task1="- Pass the forest";task2="";task3="";}
if (room==Room31){tasks=3;task1="- Explore";task2="";task3="";}
alpha=0;
//SCRIBBLE
alphatext=0;
textcolor="[#FFFFFF]";
task1col=textcolor;
task2col=textcolor;
task3col=textcolor;
scale=0.5+(0.5*global.GUI);
textalpha="[alpha,"+string(alpha)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
draw_set_font(fOrbitron);
str1=string_width(task1)*scale;
str2=string_width(task2)*scale;
str3=string_width(task3)*scale;
taskalpha=0.8*global.AL;		

task0scri=string(textalpha)+string(textscale)+"[fa_center][fa_left]"+string(textcolor)+"Tasks:";
task1scri=string(textalpha)+string(textscale)+"[fa_center][fa_left]"+string(task1col)+"\n"+string(task1);
task2scri=string(textalpha)+string(textscale)+"[fa_center][fa_left]"+string(task2col)+"\n\n"+string(task2);
task3scri=string(textalpha)+string(textscale)+"[fa_center][fa_left]"+string(task3col)+"\n\n\n"+string(task3);




if (str1>str2) 
{
	if (str1>str3)
	{
	rectx2=xx3+str1+50+50*global.GUI;
	rectoScaleX=(rectx2-rectx1)/64;
	rectoScaleY=(recty2-recty1)/64;
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
	exit;
	}
}
