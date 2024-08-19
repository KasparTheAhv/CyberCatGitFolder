/// @desc ACTIVITY CONTROL

if (current_state==wolfstates.chase)
{
	
	if (howllock==0) && (landed) {hsp=0; current_state=wolfstates.howl; alarm[10]=1; exit;}
	
	
sprite_index=sWolfR;	
image_speed=1;	
// vali keda chaseda
var who= oFollowPlayer;
if instance_exists(oPlayer) {var who= oPlayer;}
if instance_exists(oPlayerAttack) {var who= oPlayerAttack;}	


// vali suund kuhu chaseda
if (who.x<self.x) {hsp=-2; image_xscale=1*sign(hsp);} else {hsp=2;image_xscale=1*sign(hsp);}

if (point_distance(0,y,0,who.y) < 40) && (point_distance(x,0,who.x,0)<150)
{
	if (canatk) && (landed)
	{
	alarm[9]=1; hsp=0; current_state=wolfstates.attack; canatk=false;  exit;
	}
}


 // vali kas ronida üles
 if (point_distance(x,0,who.x,0)<90)
 {
	 if ((who.y+30)<self.y) && (landed) {
		 current_state=wolfstates.climb;
		 canatk=false; alarm[5]=60;
		 landed=false;
	hsp=hsp*0.5; 
	vsp=-5;
	 }
 }

alarm[1]=20;
}