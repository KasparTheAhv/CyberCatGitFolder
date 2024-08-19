/// @desc
if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<190) && (cur_state!=bunstates.escape)
{
 	cur_state=bunstates.escape;
	image_index=0;
	image_speed=1;
	image_xscale=0.75;
	hsp=sign(image_xscale)*3;
	alarm[0]=600;
}


if (cur_state==bunstates.walk)
{

	if (image_index<=1) {hspamp=0;}
	if (image_index=1)&&(image_index<5) {hspamp=1;}
	if (image_index==5) {hspamp=0.5;}
	if (image_index>5) {hspamp=0.2;}
	
	
	if (tilemap_get_at_pixel(tilemap,x+(hsp*15),y)!=0)
	{
	image_xscale=image_xscale*-1;
	hsp=sign(image_xscale);
	}
	
	hspreal=hsp*hspamp;
	self.x+=hspreal;
	
}

if (cur_state==bunstates.escape)
{

	if (image_index<=1) {hspamp=0;}
	if (image_index=1)&&(image_index<5) {hspamp=1.3;}
	if (image_index==5) {hspamp=0.7;}
	if (image_index>5) {hspamp=0.3;}
	
	
	hspreal=hsp*hspamp;
	self.x+=hspreal;
	
}