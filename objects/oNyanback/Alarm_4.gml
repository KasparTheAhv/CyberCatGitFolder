/// @desc'

if (working)
{
if (yy>targety)	{yy-=15;} else {yy=targety; if !(keyboardlock) {keyboard=1;keyboardlock=true;}}
rectyy=yy;
}

if (keyboard==1)
{
if (keyboardy>keytargety) {keyboardy-=15;} else {alarm[3]=1;keyboard=2;keyboardy=keytargety;playable=true;}
}
mouse=mouse_check_button(mb_any);
if (playable) 
{

if point_in_rectangle(mouse_x,mouse_y,keyx1-brad,keyboardy-pisuty-pisuy-brad,keyx1+brad,keyboardy-pisuty-pisuy+brad) && (mouse)
	{key0=true;keyupcol=c_gray;} else {key0=false;keyupcol=c_white;}

if point_in_rectangle(mouse_x,mouse_y,keyx1-brad,keyboardy-brad,keyx1+brad,keyboardy+brad) && (mouse)
	{key1=true;keydowncol=c_gray;} else {key1=false;keydowncol=c_white;}

if point_in_rectangle(mouse_x,mouse_y,keyx2-brad,keyboardy-brad,keyx2+brad,keyboardy+brad) && (mouse)
	{key2=true;keyentercol=c_gray;} else {key2=false;keyentercol=c_white;}

if point_in_rectangle(mouse_x,mouse_y,keyx2-brad,keyboardy-pisuty-pisuy-brad,keyx2+brad,brad+keyboardy-pisuty-pisuy) && (mouse)
	{key3=true;keybackcol=c_gray;alarm[2]=1;} else {key3=false;keybackcol=c_white;}
}

if (menuOn)
{
	
	if (point_in_rectangle(mouse_x,mouse_y,xx-brad+(pisuy*0.5),yy-brad+(pisuy*0.5),xx+brad+(pisuy*0.5),yy+brad+(pisuy*0.5))) && (mouse) {alphadown=true;}
	if (menualpha<1) && (alphadown!=true) {menualpha+=0.02;}
} 
menualpha=clamp(menualpha,0,1);

if (alphadown)
{
	if (menualpha>0) {menualpha-=0.04;} else {menualpha=0;alphadown=false;menuOn=false; alarm[4]=10;}
}






