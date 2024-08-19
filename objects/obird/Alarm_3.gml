/// @desc move towards path and start using it
var xx=path_get_x(path,pathstartloc);
var yy=path_get_y(path,pathstartloc);
if (point_distance(x,y,xx,yy)>1+flyspd*speedmod)
{
move_towards_point(xx,yy,flyspd*speedmod);
direction=point_direction(x,y,xx,yy);
} else {path_start(path,flyspd*speedmod,path_action_continue,true);
	 path_position=pathstartloc;
	exit;}

alarm[3]=1;