/// @desc destination
if instance_exists(oPlayer) {var target=oPlayer;} else {var target=oFollowPlayer;}
if (point_distance(x,y,target.x,target.y)<triggerdist) && !(cooldown)
{
if 	(tilemap_get_at_pixel(tilemap,target.x,target.y)!=1)
	{
		destX=target.x+irandom_range(-10,10);
		destY=target.y+irandom_range(-10,10);
		cooldown=true;
		alarm[1]=irandom_range(100,400);
		if (destX>self.x) {direction=0;} else {direction=180;}
		flytospot=true;
		speeder=true;
		alarm[2]=1;
		exit;
	}
} 

var ra_dir = choose(45,90,135,225,270,315);
var ra_dist = irandom_range(200,600);
destX=x+lengthdir_x(ra_dist,ra_dir);
destY=y+lengthdir_y(ra_dist,ra_dir);
if (destX<0) or (destX>room_width) {alarm[0]=1;exit;}
if (destY<0) or (destY>room_height){alarm[0]=1;exit;}
// check if proper place
if 	(tilemap_get_at_pixel(tilemap,destX,destY)!=1)
	{
if (destX>self.x) {direction=0;} else {direction=180;}
flytospot=true;
speeder=true;
	} else {alarm[0]=1;}
