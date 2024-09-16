///@desc Cyport
// CAM SWAP DEVELOPER MODE ONLY
if (global.camSwap)
{
	if (global.camLooking==false)
	{	
		var xx = device_mouse_x(whatdevice),
		var yy =  device_mouse_y(whatdevice);
		var whotoattack=instance_nearest(xx,yy,all)	;
		
	
		
		if point_distance(whotoattack.x,whotoattack.y, xx,yy) < 48 
		{
		oFollowPlayer.target=whotoattack;		
		global.camLooking=true;
		global.camLookin=whotoattack;
		}
		
	} else {	
		var xx = device_mouse_x(whatdevice),
		var yy =  device_mouse_y(whatdevice);
		
		if instance_exists(global.camLookin)
		{
			if point_distance(global.camLookin.x,global.camLookin.y, xx,yy) < 48 
			{
				global.camLooking=false;
				if instance_exists(oPlayer)
				{
				oFollowPlayer.target=oPlayer;
				}
			}	
		} else {
				global.camLookin=noone;
				global.camLooking=false;
				if instance_exists(oPlayer)
				{
				oFollowPlayer.target=oPlayer;
				}
		}
			
			
	}	
exit;	
}



//check if pressed near joystick
var sticks=0;
with(oVStick) {
	if (stick_id==1) {var stick1xx=self.xx; var stick1yy=self.yy; var stick1rad=150*(0.5+global.JS1S);sticks+=1;} 
	if (stick_id==2) {var stick2xx=self.xx; var stick2yy=self.yy; var stick2rad=125*(0.5+global.JS2S);sticks+=1;} 
}
//
var mox = device_mouse_x_to_gui(whatdevice);
var moy = device_mouse_y_to_gui(whatdevice);

// when only 1 stick and attack key 
if (sticks>=1) {
	var stick2rad=125*(0.5+global.JS2S);
	var stick2rad=120*(0.5+global.JS2S);
	var stick3rad=90*(0.5+global.JS2S);
	if (point_distance(mox,moy,stick1xx,stick1yy)<stick1rad) { exit;} // movement
	if (point_distance(mox,moy,global.JS2X,global.JS2Y)<stick2rad) { exit;}  // atl
	if (global.jumpkey==1)
	{
	if (point_distance(mox,moy,global.JS3X,global.JS3Y)<stick3rad) { exit;} // jump
	}
}
if (sticks==2) {
	
	if (point_distance(mox,moy,stick1xx,stick1yy)<stick1rad) { exit;} 
	if (point_distance(mox,moy,stick2xx,stick2yy)<stick2rad) { exit;}
}

// Get touched objects ID 
var roomname=room_get_name(room);
var str=string_delete(roomname,1,4);
var amount=real(str);
if (amount<9) {exit;}
if (keyheld) {exit;}
if (instance_exists(oThurSpark)) {exit;}
if (gonnatele) {exit;}
var yes=false;
var xx = device_mouse_x(whatdevice),
    yy =  device_mouse_y(whatdevice);
	var cantp=true;
var whotoattack=instance_nearest(xx,yy,all)
with (whotoattack)
    if point_distance(x,y, xx,yy) < 48 {
    if (object_index==oSquir) {yes=true;} 
	if (object_index==oRat) {yes=true;  } 	
	if (object_index==oSnake) {yes=true;  } 
	if (object_index==oMonke) {yes=true;  } 	
	if (object_index==oFrog) {yes=true; } 	
	if (object_index==oBird) {yes=true; } 
	if (object_index==oPenquin) {yes=true; } 
	if (object_index==oLocIndi) {yes=true; } 
	if (object_index==oSeal) {yes=true; } 
	if (object_index==oThur) {yes=true; }
	if (object_index==oElGato) {yes=true; } 
	if (object_index==oBirdBoss) {yes=true; } 
	if (object_index==oBat) {yes=true; } 
	if (object_index==oSoySauce) {yes=true; } 
	if (object_index==oWolfKid) {yes=true; } 
	if (object_index==oTPDUMMY) {yes=true; } 
    }
// Check if it's a valid target to teleport attack to
	if !(yes) {exit;} else {
	if (whotoattack.object_index==oLocIndi) {with(whotoattack) if (cyportable!=true) {cantp=false;} }
	if !(cantp) {exit;}
	
	
	// If it is, check to see if the player is in a state where it can attack and if there isn't already
	// an attack in process (non-existence of oPlayerCyport)
	if !instance_exists(oPlayerCyport) && (canatk)
	{ 
		if (oGUIBAR.cn>=25)	{oGUIBAR.cn-=25;gonnatele=true;} else {exit;}
		with (instance_create_layer(x,y-2,"Characters",oPlayerCyport))
		{
		mytarget=whotoattack;
		mytargetX=whotoattack.x;
		sprite_index=global.sPlayerD;
		superplatform=other.superplatform;
		landed=false;
		jumping=true;
		if (mytargetX>self.x) {hsp=2;} else {hsp=-2;}
		vsp=-5;
		lastSide=other.lastSide;
		walksp=other.walksp;
		prevhsp=other.hsp;
		image_xscale=sign(hsp)*0.75;
		with(oFollowPlayer) {target=oPlayerCyport;}
		}
		instance_destroy(); // destroy oPlayer cause oPlayerCyport has been created
	}
	}