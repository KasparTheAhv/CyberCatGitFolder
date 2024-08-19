/// @desc Choose action (walk, stand, attack)
image_speed=0;
sprite_index=sSoyD;
var onlystand=false;
if instance_exists(oText) {var onlystand=true;}
if instance_exists(oTextFloat) {var onlystand=true;}

if !(onlystand)
{
	if instance_exists(oPlayerGod)
	{
		alarm[5]=1;
		exit;
	} else {
		if (distance_to_point(myspawnx,myspawny)>1400)
		{
			if (self.x<myspawnx)
			{
				hsp=2;
			} else {
				hsp=-2;
			}
			sprite_index=sSoyR;image_speed=1;image_xscale=0.75*sign(hsp); alarm[6]=irandom_range(20,90);
			exit;
		}
	
	}
	
	
	var playernear=false;
	if instance_exists(oPlayer) {playernear=oPlayer;} else if instance_exists(oPlayerAttack) {playernear=oPlayerAttack;}
	
	if (playernear!=false) // start choosing once know if player is near
	{
		var hownear=distance_to_object(playernear);
		if (hownear<125) {sprite_index=sSoyR;image_speed=1;if (playernear.x<self.x) {self.hsp=2;image_xscale=0.75;}else{self.hsp=-2;image_xscale=-0.75;} alarm[0]=25; exit; } // escape
		if (hownear<250) {alarm[2]=1;exit;} // attack
	}
	var walk=choose(true,false);
} else {
	var walk=false;
}
	// walk randomly or stand
	
	
	
	if (walk) {sprite_index=sSoyR;image_speed=1;hsp=choose(1,-1);image_xscale=0.75*sign(hsp); alarm[0]=irandom_range(20,90);}
	else
	{hsp=0;image_xscale=choose(0.75,-0.75);image_speed=0;alarm[0]=irandom_range(20,90); }
