/// @desc Choose action (walk, stand, attack)
image_speed=0;
sprite_index=sThur;
var playernear=false;
if instance_exists(oPlayer) {playernear=oPlayer;}
if instance_exists(oPlayerAttack) {playernear=oPlayerAttack;}

if (playernear!=false) // start choosing once know if player is near
{
	var hownear=distance_to_object(playernear);
	if (hownear<90) {alarm[2]=1;exit;} // attack
}
	// walk randomly or stand
	var walk=choose(true,false);
	if (walk) {sprite_index=sThurR;image_speed=1;hsp=choose(1,-1);image_xscale=2*sign(hsp); alarm[0]=irandom_range(20,30);}
	else
	{hsp=0;image_xscale=choose(2,-2);image_speed=0;alarm[0]=irandom_range(20,30); }
