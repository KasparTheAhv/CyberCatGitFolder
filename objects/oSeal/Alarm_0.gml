/// @desc Choose action (walk, stand, attack)

if instance_exists(oPlayerGod)
{
hsp=0;
sprite_index=sSealB;
image_speed=1;
alarm[3]=1;
alarm[0]=5;
exit;
} else {
image_speed=1;
sprite_index=sSealAFK;
}




var playernear=false;
var penquinnear=false;
nearest=false;
if instance_exists(oFollowPlayer) { playernear=oFollowPlayer;}
if instance_exists(oPenquin) {penquinnear=instance_nearest(x,y,oPenquin);}
if (playernear!=false) && (penquinnear!=false)
{
	if ((distance_to_point(penquinnear.x,self.y))<=(distance_to_point(playernear.x,self.y))) 
{nearest=penquinnear;} else {nearest=playernear;}
}

if (nearest!=false) // start choosing once know if player is near
{
	var hownear=distance_to_object(nearest);
	if (hownear<4) && (nearest==oFollowPlayer) {
		sprite_index=sSealR;image_speed=1;hsp=choose(1,-1);image_xscale=2*sign(hsp);alarm[0]=-1; alarm[0]=irandom_range(120,150);
		exit;}
	if (hownear<4) && (nearest!=oFollowPlayer) {myvictim=nearest;image_speed=1.25;sprite_index=sSealD;image_index=0;attack=true;exit;}
	if (hownear<180) {sprite_index=sSealR;image_speed=1;if (nearest.x<self.x) {self.hsp=-1;image_xscale=-2;}else{self.hsp=1;image_xscale=2;} alarm[0]=10; exit; } // chase
}
	// walk randomly or stand
	var walk=choose(true,false);
	if (walk) {sprite_index=sSealR;image_speed=1;hsp=choose(1,-1);image_xscale=2*sign(hsp); alarm[0]=irandom_range(40,100);}
	else
	{hsp=0;image_xscale=choose(2,-2);image_speed=0;alarm[0]=irandom_range(20,90); }
