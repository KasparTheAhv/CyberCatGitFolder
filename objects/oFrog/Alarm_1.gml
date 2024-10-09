/// @desc atk
if instance_exists(oPlayer) && (vsp<1)
{
	play_sound(snFrog,false);
	var temahsp=oPlayer.hsp*40;
	var temavsp=oPlayer.vsp*10;
	var calc=choose(irandom_range(-20,-5),irandom_range(5,20));
	target_x=oPlayer.x+(temahsp)+calc;
	target_y=oPlayer.y+(temavsp);
	distance = point_distance(x, y, target_x, target_y);
	jump=true;
	image_index=1;
	if (image_xscale>=5) && !(instance_exists(oPlayerFall)) {blocker=2;}
}