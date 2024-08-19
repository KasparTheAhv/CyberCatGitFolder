/// @desc
if (point_distance(x,y,targetx,targety)>speeder)
{
	move_towards_point(targetx,targety,speeder);
} else {
	play_sound(snCoin,false);
	instance_destroy();	
}