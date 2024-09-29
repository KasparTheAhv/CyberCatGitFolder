/// @desc
if (working)
{
if (yy>targety)	{yy-=15;} else {yy=targety; if !(keyboardlock) {keyboard=1;keyboardlock=true;}}
rectyy=yy;
}

if (keyboard==1)
{
if (keyboardy>keytargety) {keyboardy-=15;} else {alarm[3]=1;keyboard=2;keyboardy=keytargety;playable=true;}
}

if (playable) 
{
	key0=false;keyupcol=c_white;
	key1=false;keydowncol=c_white;
	key2=false;keyentercol=c_white;
	key3=false;keybackcol=c_white;
	
	if device_mouse_check_button(0,mb_any)
	{
	var mox1=device_mouse_x(0);
	var moy1=device_mouse_y(0);
	} else {var mox1=0;var moy1=0;}
	
	if device_mouse_check_button(1,mb_any)
	{
	var mox2=device_mouse_x(1);
	var moy2=device_mouse_y(1);
	} else {var mox2=0;var moy2=0;}
	
	if point_in_rectangle(mox1,moy1,keyx1-brad,keyboardy-pisuty-pisuy-brad,keyx1+brad,keyboardy-pisuty-pisuy+brad)
		{key0=true;keyupcol=c_gray;}
	if point_in_rectangle(mox2,moy2,keyx1-brad,keyboardy-pisuty-pisuy-brad,keyx1+brad,keyboardy-pisuty-pisuy+brad)
		{key0=true;keyupcol=c_gray;}
		
	if point_in_rectangle(mox1,moy1,keyx1-brad,keyboardy-brad,keyx1+brad,keyboardy+brad)
		{key1=true;keydowncol=c_gray;}
	if point_in_rectangle(mox2,moy2,keyx1-brad,keyboardy-brad,keyx1+brad,keyboardy+brad)
		{key1=true;keydowncol=c_gray;}
		
	if point_in_rectangle(mox1,moy1,keyx2-brad,keyboardy-brad,keyx2+brad,keyboardy+brad)
		{key2=true;keyentercol=c_gray;} 
	if point_in_rectangle(mox2,moy2,keyx2-brad,keyboardy-brad,keyx2+brad,keyboardy+brad)
		{key2=true;keyentercol=c_gray;} 
		
	if point_in_rectangle(mox1,moy1,keyx2-brad,keyboardy-pisuty-pisuy-brad,keyx2+brad,brad+keyboardy-pisuty-pisuy)
		{key3=true;keybackcol=c_gray;alarm[2]=1;}
	if point_in_rectangle(mox2,moy2,keyx2-brad,keyboardy-pisuty-pisuy-brad,keyx2+brad,brad+keyboardy-pisuty-pisuy)
		{key3=true;keybackcol=c_gray;alarm[2]=1;}
	
}

if (menuOn)
{
	mouse=mouse_check_button(mb_any);
	if (point_in_rectangle(mouse_x,mouse_y,xx-brad+(pisuy*0.5),yy-brad+(pisuy*0.5),xx+brad+(pisuy*0.5),yy+brad+(pisuy*0.5))) && (mouse) {alphadown=true;}
	if (menualpha<1) && (alphadown!=true) {menualpha+=0.02;}
} 
menualpha=clamp(menualpha,0,1);

if (alphadown)
{
	if (menualpha>0) {menualpha-=0.04;} else {menualpha=0;alphadown=false;menuOn=false; alarm[4]=10;}
}
if (drawreward)
{
	if (rewardalpha<1) {rewardalpha+=0.04;} 
}

if (gamestarted)
{	
	if (instance_exists(oCyberCat))
	{
	firingdelay=firingdelay-1;
	if (key0==true) {if (oCyberCat.y>yy-reymod+20) {oCyberCat.y-=4;} };//keyup
	if (key1==true) {if (oCyberCat.y<yy+reymod2-26) {oCyberCat.y+=4;} };//keydown
	if (key2==true) {
			if (firingdelay<0)
			{
			firingdelay=10;
			play_sound(snShoot,false);
				with (instance_create_layer(oCyberCat.x+5,oCyberCat.y-5,"BefEdge",oBulletGame))
				{
					image_xscale=1.5;
					image_yscale=1.5;
					alarm[0]=140;
					speed=5;
					direction=0;
					image_angle=0;
				}
			}
		}
	}
}
///// mangu vali
//if (keyboard==2)
//{
//draw_rectangle(xx-rexmod,,xx+rexmod,yy+reymod2,true);
//}