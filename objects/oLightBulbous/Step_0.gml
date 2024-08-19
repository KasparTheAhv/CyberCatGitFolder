/// @desc

if (stare)
{
	if (point_distance(x,y,who.x,who.y)<170)
	{
		var dir = point_direction(x,y,who.x,who.y);
		eye1x=STAeye1x+lengthdir_x(1,dir);
		eye1y=STAeye1y+lengthdir_y(1,dir);
		eye2x=STAeye2x+lengthdir_x(1,dir);
		eye2y=STAeye2y+lengthdir_y(1,dir);
	} else {
		eye1x=STAeye1x;
		eye1y=STAeye1y;
		eye2x=STAeye2x;
		eye2y=STAeye2y;
	}


} else { // look at other lamp

var dir = point_direction(x,y,oLightbulb.x,oLightbulb.y);
		eye1x=STAeye1x+lengthdir_x(1,dir);
		eye1y=STAeye1y+lengthdir_y(1,dir);
		eye2x=STAeye2x+lengthdir_x(1,dir);
		eye2y=STAeye2y+lengthdir_y(1,dir);


	
}