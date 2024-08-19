/// @desc Jump
// You can write your code in this editor
target_y=noone;
for (var i = 0; i <= 10; i++)
{
	var extra=32*i;
	if (tilemap_get_at_pixel(tilemap,x+(48*sign(lasthsp)),bbox_bottom-3-extra)==0) 
	{
	target_y=bbox_bottom-3-extra;
	break;
	}	
}

if !instance_exists(oText) {
if (target_y==noone) {jump=false;alarm[4]=1;exit;}

target_x=x+(32*sign(lasthsp));
distance = point_distance(x, y, target_x, target_y);
jumper=true;
jumping=true;
sprite_index=sThurA;
image_speed=0;
image_index=0;


} else {jump=false;alarm[0]=1;}



