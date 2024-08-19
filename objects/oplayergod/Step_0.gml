// movement and collision
var bbox_side;

if (global.isAndroid)
{
var xaxis=vstick_get_xaxis(1);
var yaxis=vstick_get_yaxis(1);
} else {
	key_down= 0;
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_down = keyboard_check(ord("S"));
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(ord("W")); 
//CALC MOVEMENT
var xaxis = key_right - key_left;	
var yaxis = key_down - key_jump;		
}

if (godparticle)
{
	if (global.GFX1==1)
	{	
		part_particles_create(oRoomController.part_sys, x+20, y+22,oRoomController.part8,irandom_range(2,5));
		part_particles_create(oRoomController.part_sys, x, y+22,oRoomController.part8,irandom_range(2,5));
		part_particles_create(oRoomController.part_sys, x-20, y+22,oRoomController.part8,irandom_range(2,5));		
	}
}
// players direction && speed
if instance_exists(oVStick)
{
	hsp = round(xaxis*4*slower); 
	vsp = round(yaxis*3.5*slower); 	
}

//horistontal collision (ground)
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;
}
x += floor(hsp);
//vertical collision (ground)
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
} 
y += floor(vsp);

