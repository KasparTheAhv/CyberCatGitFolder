if (current_state==wolfkidstates.chase)
{
	

	
sprite_index=sWolfR;	
image_speed=1;	
// vali keda chaseda
var who= oFollowPlayer;
if instance_exists(oPlayer) {var who= oPlayer;}
if instance_exists(oPlayerAttack) {var who= oPlayerAttack;}	


// vali suund kuhu chaseda
if (who.x<self.x) {hsp=choose(-2,-3,-1); image_xscale=0.75*sign(hsp);} else {hsp=2;image_xscale=0.75*sign(hsp);}

if (point_distance(0,y,0,who.y) < 40) && (point_distance(x,0,who.x,0)<150)
{
	if (canatk) && (landed)
	{
	alarm[9]=1; hsp=0; current_state=wolfkidstates.attack; canatk=false;  exit;
	}
}


 // vali kas ronida üles
 if (point_distance(x,0,who.x,0)<90)
 {
	 if ((who.y+30)<self.y) && (landed) {
		 current_state=wolfkidstates.climb;
		 canatk=false; alarm[5]=60;
		 landed=false;
	hsp=hsp*0.5; 
	vsp=-6;
	 }
 }

alarm[1]=irandom_range(20,35);
}