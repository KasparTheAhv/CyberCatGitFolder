/// @desc jumpatk
if instance_exists(oPlayer) && (vsp<1)
{
	var temahsp=oPlayer.hsp*40;
	var calc=choose(irandom_range(-100,-25),irandom_range(25,100));
	target_x=oPlayer.x+(temahsp)+calc;
	if (target_x<0) {target_x=20;}
	if (target_x>rW) {target_x=rW-20;}
	jump=true;
	jumps+=1;
	image_index=1;
	if (image_xscale>=5) && !(instance_exists(oPlayerFall)) {blocker=2;}
}