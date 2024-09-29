spd=2;
times=1;
fade=false;
letters = 0;
text = "This is a text\nSecond line";
length = string_length(text);
text_current = "";

timer=120;
extraheight=50;
border = 10;
onetimer=true;
oki=0;
target=noone;
who=noone;
scaler=global.scaler;
whasound=irandom_range(0,500);
alarm[0]=1;
rW=room_width;
rH=room_height;


//SCRIBBLE
color="[#FFFFFF]";
texterscale=0.5;
if instance_exists(oGUIBAR)
{
	texterscale=oGUIBAR.zoomLevel*0.5;
}
h = string_height_scribble(text_current)*texterscale*0.65;
w = string_width_scribble(text_current)*texterscale*0.65;
textscale="[scale,"+string(texterscale*0.65)+"]";



