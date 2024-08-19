/// @desc Choose action (walk, stand, attack
if instance_exists(oPlayerGod)
{
	if (walk)
	{
if (oPlayerGod.x<self.x) {self.hsp=-MOVSPEED;image_xscale=-1;}else{self.hsp=MOVSPEED;image_xscale=1;}  
lengther=2000;
MOVSPEED=2;
image_speed=1;
alarm[0]=10;
exit;
} else {
image_speed=1;
sprite_index=sSnakeIdle;
	}
}

if instance_exists(oFollowPlayer) {
var  playernear=oFollowPlayer;
		if instance_exists(oPlayer)
		{
		playernear=oPlayer;
			if (point_distance(oPlayer.x,0,self.x,0)<=210) 
			{
			lengther=2000;	
			MOVSPEED=1;
			} else {
				if (lengther==2000){MOVSPEED=2;}
			}
		}
	}
	
if instance_exists(oPlayerFall) {lengther=210;}




if !(move)
{
if (playernear==oFollowPlayer) // start choosing once know if player is near
{
	var hownear=distance_to_object(oFollowPlayer);
	var howne2= point_distance(0,y,0,oFollowPlayer.y);
	
	if (howne2<22)
	{
		if (hownear<32) && (hsp!=0) {if (playernear==oFollowPlayer) {alarm[0]=-1;alarm[4]=-1;sprite_index=sSnakeAttack;image_index=1;attack=true;exit;}} else {
		}
	if (hownear<=lengther) {	sprite_index=sSnakeMove;image_speed=1;if (playernear.x<self.x) {self.hsp=-MOVSPEED;image_xscale=-1;}else{self.hsp=MOVSPEED;image_xscale=1;} alarm[0]=5; exit; }}
	 // chase
}
if (playernear==oPlayer) // start choosing once know if player is near
{
	var hownear=distance_to_object(oPlayer);
	var howne2= point_distance(0,y,0,oPlayer.y);
	if (howne2<22)
	{
		if (hownear<32) && (hsp!=0) {if (playernear==oPlayer) {alarm[0]=-1;alarm[4]=-1;sprite_index=sSnakeAttack;image_index=0;attack=true;exit;}} else {
	}
	if (hownear<=lengther) {	sprite_index=sSnakeMove;image_speed=1;if (playernear.x<self.x) {self.hsp=-MOVSPEED;image_xscale=-1;}else{self.hsp=MOVSPEED;image_xscale=1;} alarm[0]=5; exit; }}// chase
}
}

	// walk randomly or stand
if !(canidle) {if (hsp==0) {sprite_index=sSnakeMove;image_speed=1;hsp=choose(-MOVSPEED,MOVSPEED);}alarm[0]=irandom_range(5,10);}
if  (canidle) && (hownear>120) && (lengther==210) {canidle=false; alarm[8]=irandom_range(200,500);sprite_index=sSnakeIdle;hsp=0;image_xscale=choose(1,-1);image_speed=1;alarm[0]=irandom_range(60,120);}
