///@desc nippy mover
if instance_exists(oNippy) 
{
	swiper=Wave(0,13,1,0,0);
	with(oNippy) {y=other.swiper+algney;}
	alarm[0]=1;
} else {exit;}