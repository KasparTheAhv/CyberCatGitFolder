/// @desc Control Menu

if (global.loading<=4) {
	if (global.loading<=1) // waiting for results
	{
	image_angle+=6;
	}
	if (global.loading==2) // slot opened and data just got retrieved
	{
	image_angle=0;
	clocolor=c_aqua;
	if (alpha>0) {alpha-=0.01;}
		if (alarm_get(5)>0) {alarm[5]=1;}
	}
	if (global.loading==3) // google not connected / a sync no response
	{
	image_angle+=6;
	clocolor=c_red;
	if (alpha>0) {alpha-=0.01;}
		if (alarm_get(5)>0) {alarm[5]=1;}
	}
	if (global.loading==4) // cloud already retrieved once
	{
	image_angle=0;
	clocolor=c_lime;
	if (alpha>0) {alpha-=0.01;}
		if (alarm_get(5)>0) {alarm[5]=1;}
	}
}
	if (global.loading==5) // google connected / a sync no response
	{
	image_angle+=6;
	clocolor=c_orange;
	if (alpha>0) {alpha-=0.01;}
	if (alarm_get(5)>0) {alarm[5]=1;}
	}

if (fadealpha<1) {fadealpha+=0.01;}
if (xx<-2782)
{
xx=0;
with(oDummy) {x=algusx;}
tilemap_x(tmap,xx);
tilemap_x(tmap2,xx);
tilemap_x(tmap3,xx);
tilemap_x(tmap4,xx);		
tilemap_x(tmap5,xx);	
}
with(oDummy) {x-=2;}
xx-=2;
tilemap_x(tmap,xx);
tilemap_x(tmap2,xx);
tilemap_x(tmap3,xx);
tilemap_x(tmap4,xx);
tilemap_x(tmap5,xx);	
// Item  select
if (verX < 50) {
	var kiirus = 0.025*point_distance(verX,0,50,0);
verX += 1 + kiirus;
}
menu_x += (menu_x_target - menu_x) / menu_speed;
if (global.loading<2) {exit;}
//keyboard control
if (menu_control)
{
	var mouse_x_gui=device_mouse_x(0);
	var mouse_y_gui=device_mouse_y(0);
	if (mouse_y_gui<menu_y) && (mouse_y_gui>menu_top) && (mouse_x_gui > menu_x_target-180)
	{
		
		
		
		if (mouse_check_button_pressed(mb_left)) 
		{
			var whuut= (menu_y - mouse_y_gui) div (menu_itemheight * 1.75);
			menu_cursor =whuut;	
			menu_committed = menu_cursor;					
			colorlock=true;
			menu_x_target = view_width+500;
	

		menu_control = false;
		audio_play_sound(snShoot,5,false);
			
		}
	}
}

if (menulock) {exit;}




if (menu_x > view_width+150) && (menu_committed!=-1)
{
	if (global.isAndroid)
	{
		switch (menu_committed)
		{
			case 2: default: SlideTransition(TRANS_MODE.GOTO,RoomLvl); menulock=true;  break;
			case 1: SlideTransition(TRANS_MODE.GOTO,RoomStats); menulock=true; break;
			case 0: SlideTransition(TRANS_MODE.GOTO,RoomCredits); menulock=true; break;
		}
	} else {
		switch (menu_committed)
		{
			case 3: default: SlideTransition(TRANS_MODE.GOTO,RoomLvl); menulock=true;  break;
			case 2: SlideTransition(TRANS_MODE.GOTO,RoomStats); menulock=true; break;
			case 1: SlideTransition(TRANS_MODE.GOTO,RoomCredits); menulock=true; break;
			case 0: game_end();
		}
		
	}
}


