
if (phase!=0) {
	if (image_angle>90) && (image_angle<270)
{
	image_yscale=-0.7;
	image_xscale=0.7;
	
} else {
	image_yscale=0.7;
	image_xscale=0.7;
}
	
	self.image_angle=direction;
	
		if (visible) && (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys, x, y,oRoomController.part7,irandom_range(5,25));
		}
	
	}

if !(foreverchase)
{
//horis collision (ground)
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=hsp*-1;
	image_xscale=image_xscale*-1;
	if (allowlandsn) {alarm[10]=1;allowdrop=false;allowlandsn=false;sprite_index=sDogR;image_speed=1;play_sound(snLanding,false); }
} 

//vertical collision (ground)
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);landed=true;jumping=false;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
	if (allowlandsn) {alarm[10]=1;allowdrop=false;allowlandsn=false;sprite_index=sDogR;image_speed=1;play_sound(snLanding,false); }
}
}
//
if (phase==1)
{	
	if instance_exists(target)
	{	
		if (distance_to_object(target)>130)
		{
		self.image_angle=direction;
		move_towards_point(target.x,target.y,8);	
		} else {phase=3;if (locker2) {locker2=false;alarm[10]=40;}}
	} else {alarm[10]=1;}
}



