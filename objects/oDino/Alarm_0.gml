/// @desc state changer
var target=oFollowPlayer;
if instance_exists(oPlayer){target = oPlayer; }
if instance_exists(oPlayerAttack){target = oPlayerAttack; }




// go into charge
if !(ChargeCooldown) && (point_distance(0,target.y,0,y)<30)
{
	ChargeCooldown=true; alarm[7]=300; alarm[9]=1;
	if (self.x<target.x) {hsp=7;} else {hsp=-7;}
	image_xscale=sign(hsp)*scale;
	sprite_index=sDinoR; image_speed=2;
	current_state=dinostates.charge;
	exit;
}

// jump
if !(JumpCooldown) && (atplayer)
{
	atplayer=false;
	ChargeCooldown=false;
	hsp=0;sprite_index=sDinoA;image_index=0;image_speed=0;
	JumpCooldown=true; alarm[8]=300; count=218; alarm[3]=1;
	current_state=dinostates.jump;
	vsp=-22;
	play_sound(snDinoJump,false);
	exit;
}



// explore
	current_state=dinostates.explore;
	sprite_index=sDinoR; image_speed=1;
	if (self.x<target.x) {hsp=3;} else {hsp=-3;}
	image_xscale=sign(hsp)*scale;
	exploredist=round(point_distance(x,0,target.x,0)/3);
	alarm[2]=exploredist;
//